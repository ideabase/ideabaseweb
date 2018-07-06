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

namespace nystudio107\seomatic\models\metatag;

use nystudio107\seomatic\Seomatic;
use nystudio107\seomatic\helpers\MetaValue as MetaValueHelper;
use nystudio107\seomatic\models\MetaTag;

use Stringy\Stringy;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class OgTitleTag extends MetaTag
{
    // Constants
    // =========================================================================

    const ITEM_TYPE = 'OgTitleTag';

    // Static Methods
    // =========================================================================

    // Public Properties
    // =========================================================================

    /**
     * @var string
     */
    public $siteName;

    /**
     * @var string
     */
    public $siteNamePosition;

    /**
     * @var string
     */
    public $separatorChar;

    // Public Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        $rules = parent::rules();
        $rules = array_merge($rules, [
            // Title tags have a special length
            [['content'], 'string', 'length' => [40, Seomatic::$settings->maxTitleLength], 'on' => ['warning']],
        ]);

        return $rules;
    }

    /**
     * @inheritdoc
     */
    public function fields()
    {
        $fields = parent::fields();
        switch ($this->scenario) {
            case 'render':
                $fields = array_diff_key(
                    $fields,
                    array_flip([
                        'siteName',
                        'siteNamePosition',
                        'separatorChar',
                    ])
                );
                break;
        }

        return $fields;
    }

    /**
     * @inheritdoc
     */
    public function prepForRender(&$data): bool
    {
        $shouldRender = parent::prepForRender($data);
        if ($shouldRender) {
            // handle the site name
            $position = MetaValueHelper::parseString($this->siteNamePosition);
            switch ($position) {
                case 'before':
                    $prefix = MetaValueHelper::parseString($this->siteName)
                        . ' '
                        . MetaValueHelper::parseString($this->separatorChar)
                        . ' ';
                    $suffix = '';
                    break;
                case 'after':
                    $prefix = '';
                    $suffix = ' '
                        . MetaValueHelper::parseString($this->separatorChar)
                        . ' '
                        . MetaValueHelper::parseString($this->siteName);
                    break;
                default:
                    $prefix = '';
                    $suffix = '';
                    break;
            }
            $lengthAdjust = mb_strlen($prefix.$suffix);
            // Truncate the og:title tag content
            $data['content'] = (string)Stringy::create($data['content'])->safeTruncate(
                Seomatic::$settings->maxTitleLength - $lengthAdjust,
                '…'
            );
            $data['content'] = $prefix.$data['content'].$suffix;
        }

        return $shouldRender;
    }
}
