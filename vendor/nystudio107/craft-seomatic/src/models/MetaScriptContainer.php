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
use yii\web\View;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class MetaScriptContainer extends MetaContainer
{
    // Constants
    // =========================================================================

    const CONTAINER_TYPE = 'MetaScriptContainer';

    // Public Properties
    // =========================================================================

    /**
     * The data in this container
     *
     * @var MetaScript[] $data
     */
    public $data = [];

    /**
     * @var int
     */
    public $position = View::POS_HEAD;

    // Public Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public function includeMetaData($dependency)
    {
        Craft::beginProfile('MetaScriptContainer::includeMetaData', __METHOD__);
        $uniqueKey = $this->handle.$dependency->tags[3].$this->dataLayerHash();
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
                    /** @var $metaScriptModel MetaScript */
                    foreach ($this->data as $metaScriptModel) {
                        if ($metaScriptModel->include) {
                            $js = $metaScriptModel->render();
                            if (!empty($js)) {
                                $tagData[] = [
                                    'js' => $js,
                                    'position' => $metaScriptModel->position ?? $this->position
                                ];
                                // If `devMode` is enabled, validate the Meta Script and output any model errors
                                if (Seomatic::$devMode) {
                                    $metaScriptModel->debugMetaItem(
                                        'Script attribute: '
                                    );
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
            Seomatic::$view->registerJs(
                $config['js'],
                $config['position']
            );
        }
        Craft::endProfile('MetaScriptContainer::includeMetaData', __METHOD__);
    }

    /**
     * @inheritdoc
     */
    public function normalizeContainerData()
    {
        parent::normalizeContainerData();

        foreach ($this->data as $key => $config) {
            $config['key'] = $key;
            $this->data[$key] = MetaScript::create($config);
        }
    }

    // Protected Methods
    // =========================================================================

    protected function dataLayerHash(): string
    {
        $data = '';
        foreach ($this->data as $metaScriptModel) {
            $data .= serialize($metaScriptModel->dataLayer);
        }

        return md5($data);
    }
}
