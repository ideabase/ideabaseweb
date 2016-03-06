<?php 
namespace Craft;

interface SproutInvisibleCaptcha_MethodInterfaceService
{
	public function verifySubmission();
	
	public function getProtection();
	
	public function getField();
	
}