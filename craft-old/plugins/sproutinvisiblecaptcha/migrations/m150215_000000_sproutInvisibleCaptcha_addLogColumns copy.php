<?php
namespace Craft;

/**
 * The class name is the UTC timestamp in the format of mYYMMDD_HHMMSS_pluginHandle_migrationName
 */
class m150215_000000_sproutInvisibleCaptcha_addLogColumns extends BaseMigration
{
	/**
	 * Any migration code in here is wrapped inside of a transaction.
	 *
	 * @return bool
	 */
	public function safeUp()
	{
		// ADD A COLUMN TO A TABLE IN THE DATABASE
		
		// The Table you wish to modify. 'craft_' prefix will be added automatically.
		$tableName = 'sproutinvisiblecaptcha_log';
		
		// The Column you wish to add
		$columnNames = array('javascriptMethodFailed', 'duplicateMethodFailed');
		
		// Add your Column after
		$afterColumn = 'originMethodFailed';
		
		if (craft()->db->tableExists($tableName))
		{
			foreach ($columnNames as $key => $columnName) 
			{
				if (($column = craft()->db->columnExists($tableName, $columnName)) == null)
				{
					Craft::log("Adding `$columnName` column to the `$tableName` table.", LogLevel::Info, true);
			
					$this->addColumnAfter($tableName, $columnName, array(AttributeType::Bool, 'required' => false, 'default' => 0), $afterColumn);
			
					Craft::log("Added `$columnName` column to the `$tableName` table.", LogLevel::Info, true);
				}
				else
				{
					Craft::log("Tried to add a `$columnName` column to the `$tableName` table, but there is already one there.", LogLevel::Warning);
				}
			}
		}
		else
		{
			Craft::log("Could not find an `$tableName` table.", LogLevel::Error);
		}
		
		return true;
	}
}