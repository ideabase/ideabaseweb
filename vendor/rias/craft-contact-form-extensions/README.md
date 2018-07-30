![Icon](./src/icon.svg)

[![Latest Version](https://img.shields.io/github/release/rias500/craft-contact-form-extensions.svg?style=flat-square)](https://github.com/rias500/craft-contact-form-extensions/releases)
[![Quality Score](https://img.shields.io/scrutinizer/g/rias500/craft-contact-form-extensions.svg?style=flat-square)](https://scrutinizer-ci.com/g/rias500/craft-contact-form-extensions)
[![StyleCI](https://styleci.io/repos/132350120/shield)](https://styleci.io/repos/132350120)
[![Total Downloads](https://img.shields.io/packagist/dt/rias/craft-contact-form-extensions.svg?style=flat-square)](https://packagist.org/packages/rias/craft-contact-form-extensions)

# Craft Contact Form Extensions

Adds extensions to the Craft CMS contact form plugin.

- Save submissions to the database and view them in the Control Panel
- Add a confirmation email that is sent to the submitting email
- Overwrite the default e-mail template
- Add an invisble reCAPTCHA

![Screenshot](resources/screenshot.png)

## Support Open Source. Buy beer.

This plugin is licensed under a MIT license, which means that it's completely free open source software, and you can use it for whatever and however you wish. If you're using it and want to support the development, buy me a beer over at Beerpay!

[![Beerpay](https://beerpay.io/Rias500/craft-contact-form-extensions/badge.svg?style=beer-square)](https://beerpay.io/Rias500/craft-contact-form-extensions)

## Requirements

This plugin requires Craft CMS 3 and the [Contact Form](https://github.com/craftcms/contact-form) plugin.

## Installation

Install this plugin through the Plugin Store or follow these instructions.

1. Open your terminal and go to your Craft project:

        cd /path/to/project

2. Then tell Composer to load the plugin:

        composer require rias/craft-contact-form-extensions

3. In the Control Panel, go to Settings → Plugins and click the “Install” button for Craft Contact Form Extensions.

## Overwriting the email templates

When you overwrite the email templates, your twig view will receive a `submission` variable which contains all the information that a default Contact Form submission contains:

- fromName
- fromEmail
- subject
- message
- attachment

## Overriding the form name
When saving submissions to the database the default form name will be "Contact". If you add a `message[formName]` hidden field you can override the form name. This can also used to create multiple form indexes in the Control Panel.

```
<input type="hidden" name="message[formName]" value="myFormName">
```

## Adding invisible reCAPTCHA

Before you set your config, remember to choose `invisible reCAPTCHA` while applying for keys.
 
![Screenshot](resources/recaptcha.jpg)

Enable reCAPTCHA in the Contact Form Extensions settings and fill in your `siteKey` and `secretKey`.

Then use the following code in your forms:

```twig
{{ craft.contactFormExtensions.recaptcha | raw }}
```

Brought to you by [Rias](https://rias.be)
