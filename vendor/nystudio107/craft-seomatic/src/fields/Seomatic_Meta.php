<?php
/**
 * SEOmatic plugin for Craft CMS 3.x
 *
 * @link      https://nystudio107.com/
 * @copyright Copyright (c) 2017 nystudio107
 * @license   https://nystudio107.com/license
 */

namespace nystudio107\seomatic\fields;

use Craft;
use craft\base\Field;
use craft\base\ElementInterface;
use craft\helpers\Json;

use yii\db\Schema;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class Seomatic_Meta extends Field
{
    // Public Properties
    // =========================================================================

    public $assetSources = [];
    public $seoMainEntityCategory = '';
    public $seoMainEntityOfPage = '';
    public $seoTitleSource = '';
    public $seoTitleSourceField = '';
    public $seoTitle = '';
    public $seoTitleSourceChangeable = true;
    public $seoDescriptionSource = '';
    public $seoDescriptionSourceField = '';
    public $seoDescription = '';
    public $seoDescriptionSourceChangeable = true;
    public $seoKeywordsSource = '';
    public $seoKeywordsSourceField = '';
    public $seoKeywords = '';
    public $seoKeywordsSourceChangeable = true;
    public $seoImageIdSource = '';
    public $seoImageIdSourceField = '';
    public $seoImageIdSourceChangeable = true;
    public $seoImageTransform = '';
    public $twitterCardType = '';
    public $twitterCardTypeChangeable = true;
    public $seoTwitterImageIdSource = '';
    public $seoTwitterImageIdSourceField = '';
    public $seoTwitterImageIdSourceChangeable = true;
    public $seoTwitterImageTransform = '';
    public $openGraphType = '';
    public $openGraphTypeChangeable = true;
    public $seoFacebookImageIdSource = '';
    public $seoFacebookImageIdSourceField = '';
    public $seoFacebookImageIdSourceChangeable = true;
    public $seoFacebookImageTransform = '';
    public $robots = '';
    public $robotsChangeable = true;

    // Static Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public static function displayName(): string
    {
        return Craft::t('seomatic', 'SEOmatic Meta (deprecated)');
    }

    /**
     * @inheritdoc
     */
    public static function isSelectable(): bool
    {
        return false;
    }

    // Public Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public function rules()
    {
        $rules = parent::rules();
        $rules = array_merge($rules, [
        ]);

        return $rules;
    }

    /**
     * @inheritdoc
     */
    public function getContentColumnType(): string
    {
        return Schema::TYPE_TEXT;
    }

    /**
     * @inheritdoc
     */
    public function normalizeValue($value, ElementInterface $element = null)
    {
        if (!empty($value)) {
            if (\is_string($value)) {
                $value = Json::decodeIfJson($value);
            }
        }

        return $value;
    }

    /**
     * @inheritdoc
     */
    public function getSettingsHtml()
    {
        return '<p>The SEOmatic Meta field type is deprecated in Craft 3. Use the SEO Settings field instead.</p>';
    }

    /**
     * @inheritdoc
     */
    public function getInputHtml($value, ElementInterface $element = null): string
    {
        return '';
    }
}
