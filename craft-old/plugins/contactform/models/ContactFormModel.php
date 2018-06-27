<?php
namespace Craft;

class ContactFormModel extends BaseModel
{
	protected function defineAttributes()
	{
		return array(
			'fromName'   => array(AttributeType::String, 'label' => 'Your Name'),
			'fromEmail'  => array(AttributeType::Email,  'required' => false, 'label' => 'Your Email'),
			'message'    => array(AttributeType::String, 'required' => false, 'label' => 'Message'),
			'subject'    => array(AttributeType::String, 'label' => 'Subject'),
			'attachment' => AttributeType::Mixed,
		);
	}
}
