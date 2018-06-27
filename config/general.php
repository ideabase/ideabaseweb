<?php

return [
    // Global settings
    '*' => [
        'siteUrl' => 'https://www.ideabasekent.com',
        'defaultWeekStartDay' => 0,
        'enableCsrfProtection' => true,
        'extraAllowedFileExtensions' => 'eps',
        'omitScriptNameInUrls' => true,
        'cpTrigger' => 'admin',
        'maxUploadFileSize' => 33554432,
        'overridePhpSessionLocation' => false,
        'securityKey' => getenv('SECURITY_KEY'),
        'aliases' => [
          'basePath' => '',
          'baseUrl' =>
          'https://www.ideabasekent.com',
        ],
    ],

    // Dev environment settings
    'dev' => [
        'siteUrl' => 'http://ideabase.web',
        'devMode' => true,
        'alises' => [
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
        'siteUrl' => null,
    ],
];
