<?php
namespace Craft;

class SproutInvisibleCaptcha_LogModel extends BaseModel
{
	protected function defineAttributes()
	{
		return array(
			'id'										=> array(AttributeType::Number),
			'timeMethodFailed'      => array(AttributeType::Bool),
			'honeypotMethodFailed'  => array(AttributeType::Bool),
			'originMethodFailed'    => array(AttributeType::Bool),
			'duplicateMethodFailed' => array(AttributeType::Bool),
			'javascriptMethodFailed'=> array(AttributeType::Bool),
			'postData'							=> array(AttributeType::Mixed),
			'ipAddress'							=> array(AttributeType::String)
		);
	}
}
