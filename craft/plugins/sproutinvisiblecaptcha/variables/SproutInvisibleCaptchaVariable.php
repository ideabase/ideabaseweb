<?php
namespace Craft;

class SproutInvisibleCaptchaVariable
{
	public function getName()
	{
		return craft()->plugins->getPlugin('sproutInvisibleCaptcha')->getName();
	}

	public function getVersion()
	{
		return craft()->plugins->getPlugin('sproutInvisibleCaptcha')->getVersion();
	}

	/**
	 * Output our captcha options on the page
	 *
	 * @param string $methodString Captcha method
	 * @return mixed Invisible Captcha output
	 */
	public function protect( $methodString = '' )
	{
		return craft()->sproutInvisibleCaptcha->getProtection($methodString);
	}

	/**
	 * @DEPRECATED - This function has been replaced by the protect() function
	 *
	 * Output our captcha options on the page
	 *
	 * @param string $methodString Captcha method
	 * @return mixed Invisible Captcha output
	 */
	public function setCaptcha( $methodString = '' )
	{
		return craft()->sproutInvisibleCaptcha->getProtection($methodString);
	}

	public function isMethodSet( $methodName )
	{
		return craft()->sproutInvisibleCaptcha->isMethodSet($methodName);
	}

	public function getMethodOption( $option )
	{
		return craft()->sproutInvisibleCaptcha->getMethodOption($option);
	}

	public function hasMethodOption( $option )
	{
		return craft()->sproutInvisibleCaptcha->hasMethodOption($option);
	}

	public function hasSproutFormsSupport()
	{
		$settings = craft()->plugins->getPlugin('sproutinvisiblecaptcha')->getSettings();

		return $settings->sproutFormsDisplayFormTagOutput;
	}
}
