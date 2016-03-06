<?php
namespace Craft;

class SproutInvisibleCaptchaService extends BaseApplicationComponent
{
	const METHOD_FULL = 1;
	const METHOD_TIME = 2;
	const METHOD_ORIGIN = 3;
	const METHOD_HONEYPOT = 4;
	const METHOD_DUPLICATE = 5;
	const METHOD_JAVASCRIPT = 6;

	const METHOD_FULL_STRING = 'FULL';
	const METHOD_TIME_STRING = 'TIME';
	const METHOD_ORIGIN_STRING = 'ORIGIN';
	const METHOD_HONEYPOT_STRING = 'HONEYPOT';
	const METHOD_DUPLICATE_STRING = 'DUPLICATE';
	const METHOD_JAVASCRIPT_STRING = 'JAVASCRIPT';

	protected $methodMap = array(
		self::METHOD_FULL => self::METHOD_FULL_STRING,
		self::METHOD_TIME => self::METHOD_TIME_STRING,
		self::METHOD_ORIGIN => self::METHOD_ORIGIN_STRING,
		self::METHOD_HONEYPOT => self::METHOD_HONEYPOT_STRING,
		self::METHOD_DUPLICATE => self::METHOD_DUPLICATE_STRING,
		self::METHOD_JAVASCRIPT => self::METHOD_JAVASCRIPT_STRING
	);

	// Used to record failed submissions when logging is enabled
	public $originMethodFailed = 0;
	public $honeypotMethodFailed = 0;
	public $timeMethodFailed = 0;
	public $duplicateMethodFailed = 0;
	public $javascriptMethodFailed = 0;

	protected $settings;

	public function __construct()
	{
		// Make it easier to access our settings
		$this->settings = craft()->plugins->getPlugin('sproutInvisibleCaptcha')->getSettings();
	}

	/**
	 * getProtection()
	 * This method will generate the fields for the spam guard during a GET request
	 *
	 * @see 	The $methodMap above for the valid values to use as a $method argument
	 *
	 * @param  string $method The type of protection to implement (may use pipe delimited)
	 * @return string The hidden fields we need for GET requests
	 */
	public function getProtection($config = array())
	{
		if (is_array($config) && array_key_exists('method', $config) && !empty($config['method']))
		{
			$method = $config['method'];
		}
		else
		{
			$method = $this->getSavedMethod();
		}

		$output  = '';
		$method  = strtoupper(trim($method));

		if ($method === 'NONE')
		{
			return false;
		}

		// Optimize for full protection
		if (is_string($method) && $method == self::METHOD_FULL_STRING)
		{
			$output .= $this->getFullProtection();
			$output .= $this->getMethodField($method);
		}
		else
		{
			// Handle pipe delimited methods
			if (is_string($method))
			{
				if (stripos($method, '|') !== false)
				{
					$method = array_map('trim', explode('|', $method));
				}
				else
				{
					$method = strtoupper($method);

					if (empty($method) || !in_array($method, $this->getMethodMap()))
					{
						$method = self::METHOD_FULL_STRING;
					}
				}
			}

			// Optimize for single method
			if (is_string($method) && strlen($method))
			{
				$output .= $this->getServiceProtection($method);
				$output .= $this->getMethodField($method);
			}
			else
			{
				// if it was already an array or converted to one
				if (in_array(self::METHOD_FULL_STRING, $method))
				{
					$output .= $this->getFullProtection();
					$methods = self::METHOD_FULL_STRING;
				}
				else
				{
					foreach ($method as $m)
					{
						$output .= $this->getServiceProtection($m);
					}
				}

				// Create the input field with pipe delimited method
				$output .= $this->getMethodField($method);
			}
		}

		return $this->safeOutput($output);
	}

	/**
	 * Return protection markup to be injected into the form
	 *
	 * @param string $method
	 * @return string
	 */
	private function getServiceProtection($method)
	{
		$file = 'SproutInvisibleCaptcha_' . ucfirst(strtolower($method)) . 'MethodService.php';

		if (!file_exists(dirname(__FILE__) . '/' . $file))
		{
			return ''; // nothing to return
		}

		$service = 'sproutInvisibleCaptcha_' . lcfirst(strtolower($method)) . 'Method';

		return craft()->$service->getProtection();
	}

	/**
	 * verifySubmission()
	 *
	 * This method will run the validation method assigned to __METHOD
	 * The goal is to use checks to determine whether the submission is spammy or not
	 *
	 * @return void
	 */
	public function verifySubmission($returnResult = false)
	{
		// Only do this on the front-end
		if (craft()->request->isCpRequest())
		{
			return true;
		}

		// 1. Get the request instance (aliasing)
		$req = craft()->request;

		// 2. Ignore if not a POST request
		if (!$req->getPost())
		{
			return $this->rejectSubmission($returnResult);
		}

		// Pipe delimited list: 1|2|3|4
		$method = $req->getPost('__METHOD');

		if (!$method)
		{
			return true;
		}

		// Array of methods: array('full') | array('time', 'origin', 'honeypot', 'duplicate', 'javscript')
		$method = $this->getValidationMethods($method);

		// 4. No __METHOD no validation
		if($method)
		{
			if ($this->spammySubmission($method) == True)
			{
				return $this->rejectSubmission($returnResult);
			}
		}

		return $this->approveSubmission($returnResult);
	}

	public function methodOptionFields($config = array())
	{
		$output = '';
		$config = array_merge($this->getSavedOptions(), is_array($config) ? $config : array());

		if (is_array($config) && count($config)) {
			unset($config['method']);
			foreach ($config as $option => $value) {
				$output .= $this->createField($option, $value);
			}
		}
		return $output;
	}

	protected function createField($name, $value, $type = 'hidden')
	{
		return sprintf('<input type="%s" id="%s" name="%s" value="%s" />', $type, $name, $name, $value);
	}

	//-------------------------------------------------------------------------------
	// @=CONSUMER METHOD (DYNAMIC METHOD CALL)
	//--------------------------------------------------------------------------------

	protected function spammySubmission($methods = array())
	{
		$fail = false;

		if (is_array($methods) && count($methods))
		{
			foreach ($methods as $method)
			{
				if ($method == 'FULL')
				{
					if($this->verifyFullSubmission()==true)
						return false;//this means they all pass the spam tests
					else
						return true; //this means at least one test failed and its spam!
				}

				$file = 'SproutInvisibleCaptcha_' . ucfirst(strtolower($method)) . 'MethodService.php';

				if (!file_exists(dirname(__FILE__) . '/' . $file))
				{
					continue;
				}

				$service = 'sproutInvisibleCaptcha_' . lcfirst(strtolower($method)) . 'Method';

				if (!craft()->$service->verifySubmission())
				{
					$fail = true; //return true because it failed the test, its SPAM!
				}
			}
		}

		return $fail;
	}

	//-------------------------------------------------------------------------------
	// @=VALIDATION
	//-------------------------------------------------------------------------------

	public function verifyFullSubmission()
	{
		// Fixed issue to log all methods
		$response = true;
		$response *= craft()->sproutInvisibleCaptcha_originMethod->verifySubmission();
		$response *= craft()->sproutInvisibleCaptcha_duplicateMethod->verifySubmission();
		$response *= craft()->sproutInvisibleCaptcha_javascriptMethod->verifySubmission();
		$response *= craft()->sproutInvisibleCaptcha_honeypotMethod->verifySubmission();
		$response *= craft()->sproutInvisibleCaptcha_timeMethod->verifySubmission();

		return $response;
	}

	//-------------------------------------------------------------------------------
	// @=HELPER METHODS (POST)
	//--------------------------------------------------------------------------------

	public function getValidationMethods($methodString = self::METHOD_FULL)
	{
		$methods   = array();
		$methodMap = $this->getMethodMap();

		if (is_string($methodString))
		{
			if (stripos($methodString, '|') !== false)
			{
				$methodsUsed = array_map('trim', explode('|', $methodString)); // 1|2|3|4
			}
			else
			{
				$methodsUsed = array(
					$methodString
				);
			}
		}
		else
		{
			$methodsUsed = $methodString;
		}

		foreach ($methodsUsed as $methodKey)
		{
			if ($methodKey <= 0 || $methodKey > count($methodMap))
			{
				throw new \Exception('Please ensure you are using validation methods properly @ ' . __METHOD__);
			}

			if ($methodKey == self::METHOD_FULL)
			{
				return array(
					self::METHOD_FULL_STRING
				);
			}

			if (array_key_exists($methodKey, $methodMap))
			{
				$methods[] = $methodMap[$methodKey];
			}
		}

		// Be cautious
		if (count($methods) <= 0) {
			return array(
				self::METHOD_FULL
			);
		}

		return $methods;
	}

	/**
	 * Reject the submission
	 *
	 * @return [type] [description]
	 */
	protected function rejectSubmission($returnResult = false)
	{
		// Log failed submissions if enabled
		if ($this->settings->logFailedSubmissions)
		{
			// Log our rejected submission so we can see what's being blocked
			$invisibleCaptchaRecord = new SproutInvisibleCaptcha_LogRecord();

			$invisibleCaptchaRecord->postData               = json_encode($_POST);
			$invisibleCaptchaRecord->ipAddress              = $_SERVER["REMOTE_ADDR"];
			$invisibleCaptchaRecord->originMethodFailed     = $this->originMethodFailed;
			$invisibleCaptchaRecord->duplicateMethodFailed  = $this->duplicateMethodFailed;
			$invisibleCaptchaRecord->honeypotMethodFailed   = $this->honeypotMethodFailed;
			$invisibleCaptchaRecord->timeMethodFailed       = $this->timeMethodFailed;
			$invisibleCaptchaRecord->javascriptMethodFailed = $this->javascriptMethodFailed;

 			// Let's assume this works.  If not, carry on.
 			// No need to disrupt the user experience
			$invisibleCaptchaRecord->save();
		}

		//------------------------------------------------------------

		if ($returnResult)
		{
			return false;
		}

		// See if we should redirect to a different URL on failure
		// otherwise, fallback to Craft redirect
		if ($url = craft()->request->getPost('redirectOnFailure'))
		{
			craft()->request->redirect($url);
		}
		else
		{
			// NOTE: this code was taken from the redirectToPostedUrl() function
			// in the BaseController since we can't access it in the service layer.
			$url = craft()->request->getPost('redirect');

			if ($url === null)
			{
				$url = craft()->request->getPath();
			}

			craft()->request->redirect($url);
		}

		// Make sure we don't let anything through
		return false;
	}

	protected function approveSubmission($returnResult = false)
	{
		// nothing for us to do if everything checks out
		if ($returnResult)
		{
			return true;
		}

		$redirectUrl = craft()->request->getPost('onSuccessRedirect');

		if (!empty($redirectUrl))
		{
			craft()->request->redirect($redirectUrl);
		}

		return true;
	}

	//--------------------------------------------------------------------------------

	public function getFullProtection()
	{
		return craft()->sproutInvisibleCaptcha_timeMethod->getProtection() .
		craft()->sproutInvisibleCaptcha_originMethod->getProtection() .
		craft()->sproutInvisibleCaptcha_honeypotMethod->getProtection() .
		craft()->sproutInvisibleCaptcha_duplicateMethod->getProtection() .
		craft()->sproutInvisibleCaptcha_javascriptMethod->getProtection();
	}

	//-------------------------------------------------------------------------------
	// @=FIELD GENERATORS
	//--------------------------------------------------------------------------------

	public function getMethodField($methodName = self::METHOD_FULL_STRING)
	{
		$method = $this->getMethodIds($methodName);

		return sprintf('<input type="hidden" id="__METHOD" name="__METHOD" value="%s" />', $method);
	}


	//-------------------------------------------------------------------------------
	// @=HELPER METHODS
	//--------------------------------------------------------------------------------

	public function getMethodMap()
	{
		return $this->methodMap;
	}

	//--------------------------------------------------------------------------------

	public function getMethodName($methodId)
	{
		$methodId  = (int) $methodId;
		$methodMap = $this->getMethodMap();

		foreach ($methodMap as $id => $name)
		{
			if ($methodId == $id)
			{
				return $name;
			}
		}

		return false;
	}

	//--------------------------------------------------------------------------------

	public function getMethodId($methodName)
	{
		$methodMap  = $this->getMethodMap();
		$methodName = strtoupper($methodName);

		foreach ($methodMap as $id => $name)
		{
			if ($methodName == $name)
			{
				return $id;
			}
		}

		return false;
	}

	//--------------------------------------------------------------------------------

	public function getMethodIds($methodName = self::METHOD_FULL_STRING)
	{
		$methods = array();

		if (is_array($methodName))
		{
			foreach ($methodName as $name)
			{
				if (in_array(strtoupper($name), $this->getMethodMap()))
				{
					$methods[] = $this->getMethodId($name);
				}
			}

			$method = implode('|', $methods);
		}
		else
		{
			$method = $this->getMethodId($methodName);
		}

		// Keep output on __METHOD relevant
		if (in_array(self::METHOD_FULL, $methods))
		{
			$method = self::METHOD_FULL;
		}

		// return a string so we can standardize our variable.
		// When the method value is submitted from a front-end form
		// it is a string, when we call this method directly, it is a integer
		// We should probably improve on this!
		return (string)$method;
	}

	//--------------------------------------------------------------------------------

	public function getMethodTranslation($method = '', $prepend = 'get', $append = 'Protection')
	{
		if (!empty($method))
		{
			return $prepend . ucfirst(strtolower(trim($method))) . $append;
		}

		return false;
	}

	//--------------------------------------------------------------------------------

	public function getSavedMethod()
	{
		return $this->settings->captchaMethod;
	}

	public function getSavedOptions()
	{
		return $this->settings->methodOptions;
	}

	//--------------------------------------------------------------------------------

	public function isMethodSet($methodName)
	{
		$methodString = empty($this->settings->captchaMethod) ? '' : $this->settings->captchaMethod;
		$methodArray  = explode('|', $methodString);

		return (in_array($methodName, $methodArray) || $methodString == 'full');
	}

	//--------------------------------------------------------------------------------

	public function getMethodOption($option)
	{
		if (empty($option) || !is_string($option))
		{
			return false;
		}

		if (array_key_exists($option, $this->settings->methodOptions))
		{
			return $this->settings->methodOptions[$option];
		}
		else
		{
			return false;
		}
	}

	//--------------------------------------------------------------------------------

	public function hasMethodOption($option)
	{
		if (empty($option) || !is_string($option))
		{
			return false;
		}

		return array_key_exists($option, $this->settings->methodOptions);
	}

	/*
	 * safeOutput()
	 *
	 * Marks html content as safe for output within templates
	 *
	 * @param string $content The content to mark as safe
	 * @param string $charset The (optional) charset to use
	 */
	public function safeOutput($content, $charset = null)
	{
		if (is_null($charset))
		{
			$charset = craft()->templates->getTwig()->getCharset();
		}

		return new \Twig_Markup($content, (string) $charset);
	}

}
