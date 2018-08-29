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

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */

return [
    '*' => [
        'siteType'                      => 'CreativeWork',
        'siteSubType'                   => 'WebSite',
        'siteSpecificType'              => '',

        'seoTitleSource'                => 'fromCustom',
        'seoTitleField'                 => '',
        'siteNamePositionSource'        => 'fromCustom',
        'seoDescriptionSource'          => 'fromCustom',
        'seoDescriptionField'           => '',
        'seoKeywordsSource'             => 'fromCustom',
        'seoKeywordsField'              => '',
        'seoImageIds'                   => [],
        'seoImageSource'                => 'fromAsset',
        'seoImageField'                 => '',
        'seoImageTransform'             => true,
        'seoImageTransformMode'         => 'crop',
        'seoImageDescriptionSource'     => 'fromCustom',
        'seoImageDescriptionField'      => '',

        'twitterCreatorSource'          => 'sameAsSite',
        'twitterCreatorField'           => '',
        'twitterTitleSource'            => 'sameAsSeo',
        'twitterTitleField'             => '',
        'twitterSiteNamePositionSource' => 'fromCustom',
        'twitterDescriptionSource'      => 'sameAsSeo',
        'twitterDescriptionField'       => '',
        'twitterImageIds'               => [],
        'twitterImageSource'            => 'sameAsSeo',
        'twitterImageField'             => '',
        'twitterImageTransform'         => true,
        'twitterImageTransformMode'     => 'crop',
        'twitterImageDescriptionSource' => 'sameAsSeo',
        'twitterImageDescriptionField'  => '',

        'ogTitleSource'                 => 'sameAsSeo',
        'ogTitleField'                  => '',
        'ogSiteNamePositionSource'      => 'fromCustom',
        'ogDescriptionSource'           => 'sameAsSeo',
        'ogDescriptionField'            => '',
        'ogImageIds'                    => [],
        'ogImageSource'                 => 'sameAsSeo',
        'ogImageField'                  => '',
        'ogImageTransform'              => true,
        'ogImageTransformMode'          => 'crop',
        'ogImageDescriptionSource'      => 'sameAsSeo',
        'ogImageDescriptionField'       => '',
    ],
];
