<?php
namespace Craft;

class SproutInvisibleCaptcha_JavascriptMethodService extends BaseApplicationComponent implements SproutInvisibleCaptcha_MethodInterfaceService
{
	public function verifySubmission()
	{
		$jsset = null;

		foreach($_POST as $key => $value)
		{
			// Fix issue on multiple forms on same page
			if (strpos($key, '__JSCHK') === 0)
			{
				$jsset = $_POST[$key];
				break;
			}
		}

		if(strlen($jsset) > 0)
		{
			// If there is a valid unique token set, unset it and return true.
			// This token was created and set by javascript.
			craft()->httpSession->remove('invisibleCaptchaJavascriptId');
			return true;
		}
		else
		{
			SproutInvisibleCaptchaPlugin::log("A form submission failed because the user did not have Javascript enabled.", LogLevel::Info, true);

			// If there is no token, set to fail; javascript is not present
			craft()->sproutInvisibleCaptcha->javascriptMethodFailed = 1;
			return false;
		}
	}

	public function getProtection()
	{
		// Create the unique token
		$uniqueId = uniqid();

		// Create session variable to test for javascript
		craft()->httpSession->add('invisibleCaptchaJavascriptId', $uniqueId);

		return $this->getField();
	}

	public function getField()
	{
		$jsCheck = craft()->httpSession->get('invisibleCaptchaJavascriptId');

		// Set a hidden field with no value and use javascript to set it.
		$output = '';
		$output .= sprintf('<input type="hidden" id="__JSCHK_%s" name="__JSCHK_%s" />', $jsCheck, $jsCheck);
		$output .= sprintf('<script type="text/javascript">document.getElementById("__JSCHK_%s").value = "%s";</script>', $jsCheck, $jsCheck);

		return $output;
	}

}