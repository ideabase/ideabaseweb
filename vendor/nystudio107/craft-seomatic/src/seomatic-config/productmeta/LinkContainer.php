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

use nystudio107\seomatic\helpers\Dependency;
use nystudio107\seomatic\models\MetaLinkContainer;
use nystudio107\seomatic\services\Link as LinkService;

/**
 * @author    nystudio107
 * @package   Seomatic
 * @since     3.0.0
 */

return [
    MetaLinkContainer::CONTAINER_TYPE.LinkService::GENERAL_HANDLE => [
        'name'         => 'General',
        'description'  => 'Link Tags',
        'handle'       => LinkService::GENERAL_HANDLE,
        'class'        => (string)MetaLinkContainer::class,
        'include'      => true,
        'dependencies' => [
        ],
        'data'         => [
        ],
    ],
];
