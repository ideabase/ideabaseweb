<?php
namespace Craft;

/**
 * The class name is the UTC timestamp in the format of mYYMMDD_HHMMSS_pluginHandle_migrationName
 */
class m150215_000001_sproutInvisibleCaptcha_removeKeysTable extends BaseMigration
{
	/**
	 * Any migration code in here is wrapped inside of a transaction.
	 *
	 * @return bool
	 */
	public function safeUp()
	{
		// REMOVE A TABLE TO THE DATABASE
		
		// The Table you wish to add. 'craft_' prefix will be added automatically.
		$tableName = 'sproutinvisiblecaptcha_keys';
		
		if ($this->dropTableIfExists($tableName))
		{
			Craft::log('Deleting the `$tableName` table.', LogLevel::Info, true);
		}
		
		return true;
	}
}