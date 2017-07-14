<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(
  '*' => array(
	       'extraAllowedFileExtensions' => 'eps',
         'siteUrl' => 'https://www.ideabasekent.com',
         'enableCsrfProtection' => true,
         'omitScriptNameInUrls' => true,
         'cpTrigger' => 'admin',
	       'maxUploadFileSize' => 33554432,
	       'overridePhpSessionLocation' => false,
         'environmentVariables' => array(
          'basePath' => '',
          'baseUrl'  => 'https://www.ideabasekent.com'
        )
	),
	'ideabase.web' => array(
	    'devMode' => true,
      'siteUrl' => 'http://ideabase.web',
      'environmentVariables' => array(
       'basePath' => '',
       'baseUrl'  => 'http://ideabase.web'
     )
	)
);
