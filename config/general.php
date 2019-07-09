<?php

return [
  // Global settings
  '*' => [
    'defaultWeekStartDay' => 0,
    'enableCsrfProtection' => false,
    'extraAllowedFileExtensions' => 'eps',
    'omitScriptNameInUrls' => true,
    'cpTrigger' => 'admin',
    'loginPath' => 'admin/login',
    'maxUploadFileSize' => 33554432,
    'overridePhpSessionLocation' => false,
    'securityKey' => getenv('SECURITY_KEY'),
    'aliases' => [
      'basePath' => '',
      'baseUrl' => '',
    ],
  ],

  // Dev environment settings
  'dev' => [
    'siteUrl' => 'http://ideabase.web',
    'devMode' => true,
    'aliases' => [
      'basePath' => '',
      'baseUrl' => 'http://ideabase.web',
    ],
  ],

  // Staging environment settings
  'staging' => [
    'siteUrl' => null,
  ],

  // Production environment settings
  'production' => [
    'siteUrl' => 'https://www.ideabasekent.com',
    'aliases' => [
      'basePath' => '',
      'baseUrl' => 'https://www.ideabasekent.com',
    ],
  ],
];
