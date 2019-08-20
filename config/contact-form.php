<?php

$config = [];
$request = Craft::$app->request;

if (
  !$request->getIsConsoleRequest() &&
  ($toEmail = $request->getValidatedBodyParam('toEmail')) !== null
) {
  $config['toEmail'] = $toEmail;
}

return $config;
