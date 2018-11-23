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

use nystudio107\seomatic\base\VarsModel;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */
class Settings extends VarsModel
{
    // Public Properties
    // =========================================================================

    /**
     * @var string The public-facing name of the plugin
     */
    public $pluginName = 'SEOmatic';

    /**
     * @var bool Should SEOmatic render metadata?
     */
    public $renderEnabled = true;

    /**
     * @var bool Should SEOmatic render frontend sitemaps?
     */
    public $sitemapsEnabled = true;

    /**
     * @var bool Should sitwmaps be regenerated automatically?
     */
    public $regenerateSitemapsAutomatically = true;
    /**
     * @var bool Should SEOmatic add to the http response headers?
     */
    public $headersEnabled = true;

    /**
     * @var string The server environment, either `live`, `staging`, or `local`
     */
    public $environment = 'live';

    /**
     * @var bool Should SEOmatic display the SEO Preview sidebar?
     */
    public $displayPreviewSidebar = true;

    /**
     * @var bool Should SEOmatic display the SEO Analysis sidebar?
     */
    public $displayAnalysisSidebar = true;

    /**
     * @var string If `devMode` is on, prefix the <title> with this string
     */
    public $devModeTitlePrefix = '&#x1f6a7; ';

    /**
     * @var string Prefix the Control Panel <title> with this string
     */
    public $cpTitlePrefix = '&#x2699; ';

    /**
     * @var string If `devMode` is on, prefix the Control Panel <title> with this string
     */
    public $devModeCpTitlePrefix = '&#x1f6a7;&#x2699; ';

    /**
     * @var string The separator character to use for the `<title>` tag
     */
    public $separatorChar = '|';

    /**
     * @var int The max number of characters in the `<title>` tag
     */
    public $maxTitleLength = 70;

    /**
     * @var int The max number of characters in the `<meta name="description">` tag
     */
    public $maxDescriptionLength = 155;

    /**
     * @var bool Site Groups define logically separate sites
     */
    public $siteGroupsSeparate = true;

    /**
     * @var bool Whether to dynamically include the hreflang tags
     */
    public $addHrefLang = true;

    /**
     * @var bool Should the meta generator tag and X-Powered-By header be included?
     */
    public $generatorEnabled = true;

    // Public Methods
    // =========================================================================

    /**
     * @inheritdoc
     */
    public function rules(): array
    {
        return [
            ['pluginName', 'string'],
            ['pluginName', 'default', 'value' => 'SEOmatic'],
            [
                [
                    'renderEnabled',
                    'sitemapsEnabled',
                    'regenerateSitemapsAutomatically',
                    'headersEnabled',
                    'generatorEnabled',
                    'addHrefLang',
                ],
                'boolean'],
            ['environment', 'string'],
            ['environment', 'default', 'value' => 'live'],
            ['environment', 'in', 'range' => [
                'live',
                'staging',
                'local',
            ]],
            ['displayPreviewSidebar', 'boolean'],
            ['displayAnalysisSidebar', 'boolean'],
            [['devModeTitlePrefix', 'cpTitlePrefix', 'devModeCpTitlePrefix'], 'string'],
            ['separatorChar', 'string'],
            ['separatorChar', 'default', 'value' => '|'],
            ['maxTitleLength', 'integer', 'min' => 10],
            ['maxTitleLength', 'default', 'value' => 70],
            ['maxDescriptionLength', 'integer', 'min' => 10],
            ['maxDescriptionLength', 'default', 'value' => 155],
        ];
    }
}
