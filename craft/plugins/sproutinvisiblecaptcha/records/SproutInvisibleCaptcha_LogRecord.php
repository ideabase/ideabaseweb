<?php
namespace Craft;

class SproutInvisibleCaptcha_LogRecord extends BaseRecord
{
	public function getTableName()
	{
		return 'sproutinvisiblecaptcha_log';
	}

	protected function defineAttributes()
	{
		return array(
			'timeMethodFailed'      => array(AttributeType::Bool),
			'honeypotMethodFailed'  => array(AttributeType::Bool),
			'originMethodFailed'    => array(AttributeType::Bool),
			'duplicateMethodFailed' => array(AttributeType::Bool),
			'javascriptMethodFailed'=> array(AttributeType::Bool),
			'postData'              => array(AttributeType::Mixed),
			'ipAddress'             => array(AttributeType::String)
		);
	}

	/**
	 * Create a new instance of the current class. This allows us to
	 * properly unit test our service layer.
	 *
	 * @return BaseRecord
	 */
	public function create()
	{
		$class = get_class($this);
		$record = new $class();

		return $record;
	}
}
