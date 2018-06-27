<?php
namespace Craft;

class SproutInvisibleCaptcha_DuplicateMethodService extends BaseApplicationComponent implements SproutInvisibleCaptcha_MethodInterfaceService
{
	public function verifySubmission()
	{		
		if(craft()->httpSession->get('invisibleCaptchaDuplicateId'))
		{	
			// If there is a valid unique token set, unset it and return true.		
			craft()->httpSession->remove('invisibleCaptchaDuplicateId');		
			return true;			
		}		 
		else
		{
			SproutInvisibleCaptchaPlugin::log("A form submission failed the Duplicate Submission test.", LogLevel::Info, true);
			
			// If there is no token set fail the method to prevent duplicate submission, log in the database, and return false
			craft()->sproutInvisibleCaptcha->duplicateMethodFailed = 1;
			return false;
		}
	}

	public function getProtection()
	{	 						
		// Create the unique token 
		$uniqueId = uniqid();

		// Create session variable
		craft()->httpSession->add('invisibleCaptchaDuplicateId', $uniqueId);

		return $this->getField();
	}

	public function getField()
	{		
	}

}
