<?php
/**
 * SEOmatic plugin for Craft CMS 3.x
 *
 * @link      https://nystudio107.com/
 * @copyright Copyright (c) 2017 nystudio107
 * @license   https://nystudio107.com/license
 */

namespace nystudio107\seomatic\fields;

use craft\base\PreviewableFieldInterface;
use craft\web\assets\cp\CpAsset;
use nystudio107\seomatic\Seomatic;
use nystudio107\seomatic\assetbundles\seomatic\SeomaticAsset;
use nystudio107\seomatic\helpers\ArrayHelper;
use nystudio107\seomatic\helpers\Config as ConfigHelper;
use nystudio107\seomatic\helpers\Field as FieldHelper;
use nystudio107\seomatic\helpers\ImageTransform as ImageTransformHelper;
use nystudio107\seomatic\helpers\Migration as MigrationHelper;
use nystudio107\seomatic\helpers\PullField as PullFieldHelper;
use nystudio107\seomatic\models\MetaBundle;

use Craft;
use craft\base\Element;
use craft\base\ElementInterface;
use craft\base\Field;
use craft\elements\Asset;
use craft\helpers\Json;
use craft\helpers\StringHelper;

use nystudio107\seomatic\services\MetaContainers;
use yii\base\InvalidConfigException;
use yii\caching\TagDependency;
use yii\db\Schema;
use yii\web\NotFoundHttpException;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class SeoSettings extends Field implements PreviewableFieldInterface
{
    // Constants
    // =========================================================================

    const CACHE_KEY = 'seomatic_fieldmeta_';

    // Public Properties
    // =========================================================================

    /**
     * @var string
     */
    public $elementDisplayPreviewType = 'google';

    /**
     * @var bool
     */
    public $generalTabEnabled = true;

    /**
     * @var array
     */
    public $generalEnabledFields = [
        'seoTitle',
        'seoDescription',
        'seoImage',
    ];

    /**
     * @var bool
     */
    public $twitterTabEnabled = false;

    /**
     * @var array
     */
    public $twitterEnabledFields = [];

    /**
     * @var bool
     */
    public $facebookTabEnabled = false;

    /**
     * @var array
     */
    public $facebookEnabledFields = [];

    /**
     * @var bool
     */
    public $sitemapTabEnabled = false;

    /**
     * @var array
     */
    public $sitemapEnabledFields = [];

    // Static Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public static function displayName(): string
    {
        return Craft::t('seomatic', 'SEO Settings');
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
            [
                [
                    'elementDisplayPreviewType',
                ],
                'string',
            ],
            [
                [
                    'generalTabEnabled',
                    'twitterTabEnabled',
                    'facebookTabEnabled',
                    'sitemapTabEnabled',
                ],
                'boolean',
            ],
            [
                [
                    'generalEnabledFields',
                    'twitterEnabledFields',
                    'facebookEnabledFields',
                    'sitemapEnabledFields',
                ],
                'each', 'rule' => ['string']],

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
        $config = [];
        // Handle incoming values potentially being JSON, an array, or an object
        if (!empty($value)) {
            if (\is_string($value)) {
                // Decode any html entities
                $value = html_entity_decode($value, ENT_NOQUOTES, 'UTF-8');
                $config = Json::decodeIfJson($value);
            }
            if (\is_array($value)) {
                $config = $value;
            }
            if (\is_object($value) && $value instanceof MetaBundle) {
                $config = $value->toArray();
            }
        } else {
            /** @var null|Element $element */
            $config = MigrationHelper::configFromSeomaticMeta(
                $element,
                MigrationHelper::FIELD_MIGRATION_CONTEXT
            );
        }
        // If the config isn't empty, do some processing on the values
        if (!empty($config)) {
            $elementName = '';
            /** @var Element $element */
            if ($element !== null) {
                try {
                    $reflector = new \ReflectionClass($element);
                } catch (\ReflectionException $e) {
                    $reflector = null;
                    Craft::error($e->getMessage(), __METHOD__);
                }
                if ($reflector) {
                    $elementName = strtolower($reflector->getShortName());
                }
            }
            // Handle the pull fields
            if (!empty($config['metaGlobalVars']) && !empty($config['metaBundleSettings'])) {
                PullFieldHelper::parseTextSources(
                    $elementName,
                    $config['metaGlobalVars'],
                    $config['metaBundleSettings']
                );
                PullFieldHelper::parseImageSources(
                    $elementName,
                    $config['metaGlobalVars'],
                    $config['metaBundleSettings'],
                    null
                );
            }
            // Handle the mainEntityOfPage
            $mainEntity = '';
            if (\in_array('mainEntityOfPage', $this->generalEnabledFields, false) &&
                !empty($config['metaBundleSettings'])) {
                $mainEntity = PullFieldHelper::getSpecificEntityType($config['metaBundleSettings']);
            }
            if (!empty($config['metaGlobalVars'])) {
                $config['metaGlobalVars']['mainEntityOfPage'] = $mainEntity;
            }
        }
        // Create a new meta bundle with propagated defaults
        $metaBundleDefaults = ArrayHelper::merge(
            ConfigHelper::getConfigFromFile('fieldmeta/Bundle'),
            $config
        );

        return MetaBundle::create($metaBundleDefaults);
    }

    /**
     * @inheritdoc
     */
    public function serializeValue($value, ElementInterface $element = null)
    {
        $value = parent::serializeValue($value, $element);
        if (!Craft::$app->getDb()->getSupportsMb4()) {
            if (\is_string($value)) {
                // Encode any 4-byte UTF-8 characters.
                $value = StringHelper::encodeMb4($value);
            }
            if (\is_array($value)) {
                array_walk_recursive($value, function (&$arrayValue, &$arrayKey) {
                    if ($arrayValue !== null && \is_string($arrayValue)) {
                        $arrayValue = StringHelper::encodeMb4($arrayValue);
                    }
                });
            }
        }

        return $value;
    }

    /**
     * @inheritdoc
     */
    public function getSettingsHtml()
    {
        $variables = [];
        // JS/CSS modules
        try {
            Seomatic::$view->registerAssetBundle(SeomaticAsset::class);
            $this->registerCssModules([
                'styles.css',
            ]);
            $this->registerJsModules([
                'vendors~seomatic-meta.js',
                'seomatic-meta.js',
                'seomatic.js',
            ]);
        } catch (InvalidConfigException $e) {
            Craft::error($e->getMessage(), __METHOD__);
        }
        // Asset bundle
        try {
            Seomatic::$view->registerAssetBundle(SeomaticAsset::class);
        } catch (InvalidConfigException $e) {
            Craft::error($e->getMessage(), __METHOD__);
        }
        $variables['baseAssetsUrl'] = Craft::$app->assetManager->getPublishedUrl(
            '@nystudio107/seomatic/assetbundles/seomatic/dist',
            true
        );
        $variables['field'] = $this;

        // Render the settings template
        return Craft::$app->getView()->renderTemplate(
            'seomatic/_components/fields/SeoSettings_settings',
            $variables
        );
    }

    /**
     * @inheritdoc
     */
    public function getInputHtml($value, ElementInterface $element = null): string
    {
        $variables = [];
        // JS/CSS modules
        try {
            Seomatic::$view->registerAssetBundle(SeomaticAsset::class);
            $this->registerCssModules([
                'styles.css',
            ]);
            $this->registerJsModules([
                'vendors~seomatic-meta.js',
                'seomatic-meta.js',
                'seomatic.js',
            ]);
        } catch (InvalidConfigException $e) {
            Craft::error($e->getMessage(), __METHOD__);
        }
        // Asset bundle
        $variables['baseAssetsUrl'] = Craft::$app->assetManager->getPublishedUrl(
            '@nystudio107/seomatic/assetbundles/seomatic/dist',
            true
        );
        // Basic variables
        $variables['name'] = $this->handle;
        $variables['value'] = $value;
        $variables['field'] = $this;
        $variables['currentSourceBundleType'] = 'entry';

        // Get our id and namespace
        $id = Craft::$app->getView()->formatInputId($this->handle);
        $nameSpacedId = Craft::$app->getView()->namespaceInputId($id);
        $variables['id'] = $id;
        $variables['nameSpacedId'] = $nameSpacedId;
        // Pull field sources
        if ($element !== null) {
            /** @var Element $element */
            $this->setContentFieldSourceVariables($element, 'Entry', $variables);
        }

        /** @var MetaBundle $value */
        $variables['elementType'] = Asset::class;
        $variables['seoImageElements'] = ImageTransformHelper::assetElementsFromIds(
            $value->metaBundleSettings->seoImageIds,
            null
        );
        $variables['twitterImageElements'] = ImageTransformHelper::assetElementsFromIds(
            $value->metaBundleSettings->twitterImageIds,
            null
        );
        $variables['ogImageElements'] = ImageTransformHelper::assetElementsFromIds(
            $value->metaBundleSettings->ogImageIds,
            null
        );

        // Render the input template
        return Craft::$app->getView()->renderTemplate(
            'seomatic/_components/fields/SeoSettings_input',
            $variables
        );
    }

    /**
     * @inheritdoc
     */
    public function getTableAttributeHtml($value, ElementInterface $element): string
    {
        $html = '';
        /** @var Element $element */
        if ($element !== null && $element->uri !== null) {
            $siteId = $element->siteId;
            $uri = $element->uri;
            $cacheKey = self::CACHE_KEY.$uri.$siteId.$this->elementDisplayPreviewType;
            $dependency = new TagDependency([
                'tags' => [
                    MetaContainers::GLOBAL_METACONTAINER_CACHE_TAG,
                    MetaContainers::METACONTAINER_CACHE_TAG.$uri.$siteId,
                ],
            ]);
            $cache = Craft::$app->getCache();
            $cacheDuration = null;
            $html = $cache->getOrSet(
                $this::CACHE_KEY.$cacheKey,
                function () use ($uri, $siteId, $element) {
                    Seomatic::$plugin->metaContainers->previewMetaContainers($uri, $siteId, true);
                    $variables = [
                        'previewTypes' => [
                            $this->elementDisplayPreviewType ?? ''
                        ],
                        'previewElementId' => $element->id,
                    ];
                    // Render our preview table template
                    if (Seomatic::$matchedElement) {
                        return Craft::$app->getView()->renderTemplate(
                            'seomatic/_includes/table-preview.twig',
                            $variables
                        );
                    }

                    return '';
                },
                $cacheDuration,
                $dependency
            );
        }

        // Render the input template
        return $html;
    }

    // Protected Methods
    // =========================================================================

    /**
     * @param Element $element
     * @param string  $groupName
     * @param array   $variables
     */
    protected function setContentFieldSourceVariables(
        Element $element,
        string $groupName,
        array &$variables
    ) {
        $variables['textFieldSources'] = array_merge(
            ['entryGroup' => ['optgroup' => $groupName.' Fields'], 'title' => 'Title'],
            FieldHelper::fieldsOfTypeFromElement(
                $element,
                FieldHelper::TEXT_FIELD_CLASS_KEY,
                false
            )
        );
        $variables['assetFieldSources'] = array_merge(
            ['entryGroup' => ['optgroup' => $groupName.' Fields']],
            FieldHelper::fieldsOfTypeFromElement(
                $element,
                FieldHelper::ASSET_FIELD_CLASS_KEY,
                false
            )
        );
        $variables['assetVolumeTextFieldSources'] = array_merge(
            ['entryGroup' => ['optgroup' => 'Asset Volume Fields'], 'title' => 'Title'],
            FieldHelper::fieldsOfTypeFromAssetVolumes(
                FieldHelper::TEXT_FIELD_CLASS_KEY,
                false
            )
        );
        $variables['userFieldSources'] = array_merge(
            ['entryGroup' => ['optgroup' => 'User Fields']],
            FieldHelper::fieldsOfTypeFromUsers(
                FieldHelper::TEXT_FIELD_CLASS_KEY,
                false
            )
        );
    }

    /**
     * Register CSS modules so they can be run through webpack-dev-server
     *
     * @param array $modules
     */
    protected function registerCssModules(array $modules)
    {
        foreach ($modules as $moduleName) {
            try {
                $module = Seomatic::$seomaticVariable->manifest->getModuleUri($moduleName);
            } catch (NotFoundHttpException $e) {
                Craft::error($e->getMessage(), __METHOD__);
                $module = null;
            }
            if ($module) {
                Seomatic::$view->registerCssFile($module, [
                    'depends' => CpAsset::class,
                ]);
            }
        }
    }

    /**
     * Register JavaScript modules so they can be run through webpack-dev-server
     *
     * @param array $modules
     */
    protected function registerJsModules(array $modules)
    {
        foreach ($modules as $moduleName) {
            try {
                $module = Seomatic::$seomaticVariable->manifest->getModuleUri($moduleName);
            } catch (NotFoundHttpException $e) {
                Craft::error($e->getMessage(), __METHOD__);
                $module = null;
            }
            if ($module) {
                Seomatic::$view->registerJsFile($module, [
                    'depends' => CpAsset::class,
                ]);
            }
        }
    }
}
