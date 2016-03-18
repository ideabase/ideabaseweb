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
	       'maxUploadFileSize' => 33554432,
	       'overridePhpSessionLocation' => false
	),
	'ideabase.web' => array(
	    'devMode' => true,
	)
);
