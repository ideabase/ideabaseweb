<?php

$vendorDir = dirname(__DIR__);
$rootDir = dirname(dirname(__DIR__));

return array (
  'dolphiq/sitemap' => 
  array (
    'class' => 'dolphiq\\sitemap\\Sitemap',
    'basePath' => $vendorDir . '/dolphiq/sitemap/src',
    'handle' => 'sitemap',
    'aliases' => 
    array (
      '@dolphiq/sitemap' => $vendorDir . '/dolphiq/sitemap/src',
    ),
    'name' => 'XML Sitemap',
    'version' => '1.0.9',
    'schemaVersion' => '1.0.2',
    'description' => 'Craft 3 plugin that provides an easy way to provide and manage a XML sitemap for search engines like Google and Bing',
    'developer' => 'Dolphiq',
    'developerUrl' => 'https://dolphiq.nl/',
    'documentationUrl' => 'https://github.com/Dolphiq/craft3-plugin-sitemap/blob/master/README.md',
    'changelogUrl' => 'https://github.com/Dolphiq/craft3-plugin-sitemap/blob/master/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => false,
    'components' => 
    array (
      'sitemapService' => 'dolphiq\\sitemap\\services\\SitemapService',
    ),
  ),
  'craftcms/redactor' => 
  array (
    'class' => 'craft\\redactor\\Plugin',
    'basePath' => $vendorDir . '/craftcms/redactor/src',
    'handle' => 'redactor',
    'aliases' => 
    array (
      '@craft/redactor' => $vendorDir . '/craftcms/redactor/src',
    ),
    'name' => 'Redactor',
    'version' => '2.3.3.2',
    'description' => 'Edit rich text content in Craft CMS using Redactor by Imperavi.',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/redactor/blob/v2/README.md',
  ),
  'mikestecker/craft-videoembedder' => 
  array (
    'class' => 'mikestecker\\videoembedder\\VideoEmbedder',
    'basePath' => $vendorDir . '/mikestecker/craft-videoembedder/src',
    'handle' => 'video-embedder',
    'aliases' => 
    array (
      '@mikestecker/videoembedder' => $vendorDir . '/mikestecker/craft-videoembedder/src',
    ),
    'name' => 'Video Embedder',
    'version' => '1.1.3',
    'schemaVersion' => '1.0.0',
    'description' => 'Craft plugin to generate an embed URL from a YouTube or Vimeo URL.',
    'developer' => 'Mike Stecker',
    'developerUrl' => 'http://github.com/mikestecker',
    'documentationUrl' => 'https://github.com/mikestecker/craft-videoembedder/blob/v1/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/mikestecker/craft-videoembedder/v1/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
  'craftcms/contact-form' => 
  array (
    'class' => 'craft\\contactform\\Plugin',
    'basePath' => $vendorDir . '/craftcms/contact-form/src',
    'handle' => 'contact-form',
    'aliases' => 
    array (
      '@craft/contactform' => $vendorDir . '/craftcms/contact-form/src',
    ),
    'name' => 'Contact Form',
    'version' => '2.2.5',
    'description' => 'Add a simple contact form to your Craft CMS site',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/contact-form/blob/v2/README.md',
    'components' => 
    array (
      'mailer' => 'craft\\contactform\\Mailer',
    ),
  ),
  'nystudio107/craft-seomatic' => 
  array (
    'class' => 'nystudio107\\seomatic\\Seomatic',
    'basePath' => $vendorDir . '/nystudio107/craft-seomatic/src',
    'handle' => 'seomatic',
    'aliases' => 
    array (
      '@nystudio107/seomatic' => $vendorDir . '/nystudio107/craft-seomatic/src',
    ),
    'name' => 'SEOmatic',
    'version' => '3.2.11',
    'description' => 'SEOmatic facilitates modern SEO best practices & implementation for Craft CMS 3. It is a turnkey SEO system that is comprehensive, powerful, and flexible.',
    'developer' => 'nystudio107',
    'developerUrl' => 'https://nystudio107.com',
    'documentationUrl' => 'https://nystudio107.com/plugins/seomatic/documentation',
    'changelogUrl' => 'https://raw.githubusercontent.com/nystudio107/craft-seomatic/v3/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => true,
    'components' => 
    array (
      'frontendTemplates' => 'nystudio107\\seomatic\\services\\FrontendTemplates',
      'helper' => 'nystudio107\\seomatic\\services\\Helper',
      'jsonLd' => 'nystudio107\\seomatic\\services\\JsonLd',
      'link' => 'nystudio107\\seomatic\\services\\Link',
      'metaBundles' => 'nystudio107\\seomatic\\services\\MetaBundles',
      'metaContainers' => 'nystudio107\\seomatic\\services\\MetaContainers',
      'seoElements' => 'nystudio107\\seomatic\\services\\SeoElements',
      'script' => 'nystudio107\\seomatic\\services\\Script',
      'sitemaps' => 'nystudio107\\seomatic\\services\\Sitemaps',
      'tag' => 'nystudio107\\seomatic\\services\\Tag',
      'title' => 'nystudio107\\seomatic\\services\\Title',
    ),
  ),
  'craftcms/aws-s3' => 
  array (
    'class' => 'craft\\awss3\\Plugin',
    'basePath' => $vendorDir . '/craftcms/aws-s3/src',
    'handle' => 'aws-s3',
    'aliases' => 
    array (
      '@craft/awss3' => $vendorDir . '/craftcms/aws-s3/src',
    ),
    'name' => 'Amazon S3',
    'version' => '1.2.5',
    'description' => 'Amazon S3 integration for Craft CMS',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/aws-s3/blob/master/README.md',
  ),
  'rias/craft-contact-form-extensions' => 
  array (
    'class' => 'rias\\contactformextensions\\ContactFormExtensions',
    'basePath' => $vendorDir . '/rias/craft-contact-form-extensions/src',
    'handle' => 'contact-form-extensions',
    'aliases' => 
    array (
      '@rias/contactformextensions' => $vendorDir . '/rias/craft-contact-form-extensions/src',
    ),
    'name' => 'Contact Form Extensions',
    'version' => '1.1.7',
    'schemaVersion' => '1.0.0',
    'description' => 'Adds extensions to the Craft CMS contact form plugin.',
    'developer' => 'Rias',
    'developerUrl' => 'https://rias.be',
    'documentationUrl' => 'https://github.com/riasvdv/craft-contact-form-extensions/blob/master/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/riasvdv/craft-contact-form-extensions/master/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => true,
    'components' => 
    array (
      'contactFormExtensionsService' => 'rias\\contactformextensions\\services\\ContactFormExtensionsService',
    ),
  ),
);
