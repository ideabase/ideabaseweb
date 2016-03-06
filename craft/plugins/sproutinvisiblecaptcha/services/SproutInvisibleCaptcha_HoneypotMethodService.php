<?php
namespace Craft;

class SproutInvisibleCaptcha_HoneypotMethodService extends BaseApplicationComponent implements SproutInvisibleCaptcha_MethodInterfaceService
{

	public function verifySubmission()
	{
		// @TODO - clean up the way we access settings
		$honeypotFieldName = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotFieldName');
		$honeypotUseDatabase = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotUseDatabase');
		$honeypotRequireJavascript = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotRequireJavascript');

		if ($honeypotRequireJavascript)
		{
			$length = strlen($honeypotFieldName);

			foreach (craft()->request->getPost() as $key => $value)
			{
				if (substr($key, 0, $length) === $honeypotFieldName)
				{
					$honeypotFieldName = $key;
				}
			}
		}

		$honeypotValue = null;
		foreach($_POST as $key => $value)
		{
			// Fix issue on multiple forms on same page
			if (strpos($key, $honeypotFieldName) === 0)
			{
				$honeypotValue = $_POST[$key];
				break;
			}
		}

		// The honeypot field must be left blank
		if ( $honeypotValue )
		{
			SproutInvisibleCaptchaPlugin::log("A form submission failed the Honeypot test.", LogLevel::Info, true);

			craft()->sproutInvisibleCaptcha->honeypotMethodFailed = 1;
			return false;
		}

		return true;
	}

	public function getProtection()
	{
		return $this->getField();
	}

	public function getField()
	{
		// @TODO - clean up the way we access settings
		$honeypotFieldName = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotFieldName');
		$honeypotScreenReaderMessage = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotScreenReaderMessage');
		$honeypotRequireJavascript = craft()->sproutInvisibleCaptcha->getMethodOption('honeypotRequireJavascript');
		$formKeyDuration = craft()->sproutInvisibleCaptcha->getMethodOption('formKeyDuration');

		$dummyValue = $this->randomString();
		$honeypotKey = "";
		// Create the unique token
		$uniqueId = $honeypotFieldName.'_'.uniqid();

		$honeypot = '
<div id="'.$uniqueId.'_wrapper" style="display:none;">
<label for="'.$uniqueId.'">'.$honeypotScreenReaderMessage.'</label>
<input type="text" id="'.$uniqueId.'" name="'.$uniqueId.'" value="" />
</div>';

		return $honeypot;
	}

	/**
	 * Generate a random string
	 *
	 * http://salman-w.blogspot.com/2009/06/generate-random-strings-using-php.html
	 * @return string random
	 */
	function randomString()
	{
			$characterSetArray = array();

			$characterSetArray[] = array(
				'count' => 10,
				'characters' => 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
			);
			$characterSetArray[] = array(
				'count' => 5,
				'characters' => '0123456789'
			);

			$tempArray = array();
			foreach ($characterSetArray as $characterSet)
			{
					for ($i = 0; $i < $characterSet['count']; $i++)
					{
							$tempArray[] = $characterSet['characters'][rand(0, strlen($characterSet['characters']) - 1)];
					}
			}
			shuffle($tempArray);
			return implode('', $tempArray);
	}
}
