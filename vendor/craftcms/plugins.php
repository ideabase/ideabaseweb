<?php

$vendorDir = dirname(__DIR__);

return array (
  'wbrowar/adminbar' => 
  array (
    'class' => 'wbrowar\\adminbar\\AdminBar',
    'basePath' => $vendorDir . '/wbrowar/adminbar/src',
    'handle' => 'admin-bar',
    'aliases' => 
    array (
      '@wbrowar/adminbar' => $vendorDir . '/wbrowar/adminbar/src',
    ),
    'name' => 'Admin Bar',
    'version' => '3.1.6',
    'schemaVersion' => '3.1.0',
    'description' => 'Front-end shortcuts for clients logged into Craft CMS.',
    'developer' => 'Will Browar',
    'developerUrl' => 'https://wbrowar.com/plugins/adminbar',
    'documentationUrl' => 'https://github.com/wbrowar/craft-3-adminbar/blob/master/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/wbrowar/craft-3-adminbar/master/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => false,
    'components' => 
    array (
      'bar' => 'wbrowar\\adminbar\\services\\Bar',
      'editLinks' => 'wbrowar\\adminbar\\services\\EditLinks',
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
    'version' => '1.0.8',
    'description' => 'Amazon S3 integration for Craft CMS',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/aws-s3',
    'changelogUrl' => 'https://raw.githubusercontent.com/craftcms/aws-s3/master/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/craftcms/aws-s3/archive/master.zip',
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
    'version' => '2.1.0',
    'description' => 'Edit rich text content in Craft CMS using Redactor by Imperavi.',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/redactor',
    'changelogUrl' => 'https://raw.githubusercontent.com/craftcms/redactor/master/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/craftcms/redactor/archive/master.zip',
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
    'version' => '2.1.1',
    'description' => 'Add a simple contact form to your Craft CMS site',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/contact-form',
    'changelogUrl' => 'https://raw.githubusercontent.com/craftcms/contact-form/v2/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/craftcms/contact-form/archive/v2.zip',
    'components' => 
    array (
      'mailer' => 'craft\\contactform\\Mailer',
    ),
  ),
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
    'version' => '1.0.9',
    'schemaVersion' => '1.0.0',
    'description' => 'Craft plugin to generate an embed URL from a YouTube or Vimeo URL.',
    'developer' => 'Mike Stecker',
    'developerUrl' => 'http://github.com/mikestecker',
    'documentationUrl' => 'https://github.com/mikestecker/craft-videoembedder/blob/v1/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/mikestecker/craft-videoembedder/v1/CHANGELOG.md',
    'hasCpSettings' => false,
    'hasCpSection' => false,
  ),
);
