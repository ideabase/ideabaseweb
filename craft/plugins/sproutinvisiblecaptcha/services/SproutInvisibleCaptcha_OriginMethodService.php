<?php
namespace Craft;

class SproutInvisibleCaptcha_OriginMethodService extends BaseApplicationComponent implements SproutInvisibleCaptcha_MethodInterfaceService
{
	
	public function verifySubmission()
	{
		$uahash = craft()->request->getPost('__UAHASH');
		$uahome = craft()->request->getPost('__UAHOME');

		// Run a user agent check
		if ( ! $uahash || $uahash != $this->getUaHash() ) 
		{
			SproutInvisibleCaptchaPlugin::log("A form submission failed because the the user agent did not match.", LogLevel::Info, true);

			craft()->sproutInvisibleCaptcha->originMethodFailed = 1;
			return false;
		}

		// Run originating domain check
		if ( ! $uahome || $uahome != $this->getDomainHash() ) 
		{
			SproutInvisibleCaptchaPlugin::log("A form submission failed because the domain did not match.", LogLevel::Info, true);

			craft()->sproutInvisibleCaptcha->originMethodFailed = 1;
			return false;
		}

		// Passed
		return true;

	}

	public function getProtection()
	{
		return $this->getField();
	}

	public function getField()
	{
		$output = '';
		$domain = craft()->request->getHostInfo();

		$output .= sprintf('
<input type="hidden" id="__UAHOME" name="__UAHOME" value="%s" />', $this->getDomainHash() );
		$output .= sprintf('
<input type="hidden" id="__UAHASH" name="__UAHASH" value="%s"/>', $this->getUaHash() );

		return $output;
	}

	protected function getDomainHash()
	{
		$domain = craft()->request->getHostInfo();

		return $this->getHash( $domain );
	}

	/*
	 * getUaHash()
	 *
	 * Grab the user agent string and return a hashed version of it
	 *
	 * @return string The hashed value of the user agent string
	 */
	protected function getUaHash()
	{
		return $this->getHash( craft()->request->getUserAgent() );
	}


	/**
	 * getHash()
	 *
	 * Simple string hashing to encode data (Do not use for encryption)
	 *
	 * @param  string $str The string to encode
	 * @return string The hashed value of $str (32 Chars)
	 */
	protected function getHash($str)
	{
		return md5( sha1($str) );
	}
}
