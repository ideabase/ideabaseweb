<?php
/**
 * SEOmatic plugin for Craft CMS 3.x
 *
 * A turnkey SEO implementation for Craft CMS that is comprehensive, powerful,
 * and flexible
 *
 * @link      https://nystudio107.com
 * @copyright Copyright (c) 2017 nystudio107
 */

namespace nystudio107\seomatic\models;

use nystudio107\seomatic\Seomatic;
use nystudio107\seomatic\base\MetaContainer;

use Craft;
use yii\caching\TagDependency;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class MetaTagContainer extends MetaContainer
{
    // Constants
    // =========================================================================

    const CONTAINER_TYPE = 'MetaTagContainer';

    // Public Properties
    // =========================================================================

    /**
     * The data in this container
     *
     * @var MetaTag[] $data
     */
    public $data = [];

    // Public Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public function includeMetaData($dependency)
    {
        Craft::beginProfile('MetaTagContainer::includeMetaData', __METHOD__);
        $uniqueKey = $this->handle.$dependency->tags[3];
        $cache = Craft::$app->getCache();
        if ($this->clearCache) {
            TagDependency::invalidate($cache, $dependency->tags[3]);
        }
        $tagData = $cache->getOrSet(
            $this::CONTAINER_TYPE.$uniqueKey,
            function () use ($uniqueKey) {
                Craft::info(
                    $this::CONTAINER_TYPE.' cache miss: '.$uniqueKey,
                    __METHOD__
                );
                $tagData = [];
                if ($this->prepForInclusion()) {
                    /** @var $metaTagModel MetaTag */
                    foreach ($this->data as $metaTagModel) {
                        if ($metaTagModel->include) {
                            $configs = $metaTagModel->tagAttributesArray();
                            foreach ($configs as $config) {
                                if ($metaTagModel->prepForRender($config)) {
                                    $tagData[] = $config;
                                    // If `devMode` is enabled, validate the Meta Tag and output any model errors
                                    if (Seomatic::$devMode) {
                                        $scenario = [];
                                        $scenario['default'] = 'error';
                                        $scenario['warning'] = 'warning';
                                        $metaTagModel->debugMetaItem(
                                            'Tag attribute: ',
                                            $scenario
                                        );
                                    }
                                }
                            }
                        }
                    }
                }

                return $tagData;
            },
            Seomatic::$cacheDuration,
            $dependency
        );
        // Register the tags
        foreach ($tagData as $config) {
            Seomatic::$view->registerMetaTag($config);
        }
        Craft::endProfile('MetaTagContainer::includeMetaData', __METHOD__);
    }

    /**
     * @inheritdoc
     */
    public function normalizeContainerData()
    {
        parent::normalizeContainerData();

        foreach ($this->data as $key => $config) {
            $config['key'] = $key;
            $this->data[$key] = MetaTag::create($key, $config);
        }
    }
}
