# Craft Contact Form Extensions Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).

## 1.0.11 - 2018-09-26
### Fixed
- Confirmation email sender shoul be the system admin, thanks @Pinchcliffe

## 1.0.10 - 2018-08-21
### Fixed
- Fixed encoding errors when saving checkboxes
- Fixed issue with customizing table attributes
- Fixed display of messages with new lines
- Fixed display of badge position setting

## 1.0.9 - 2018-08-03
### Fixed
- Fixed a bug with encoding caused by the previous update

## 1.0.8 - 2018-07-31
### Fixed
- UTF8 encoding issues should now be fixed for new submissions
- The columns added by the "Upvote" plugin won't show anymore

## 1.0.7 - 2018-07-13
### Fixed
- "All submissions" can now be translated

## 1.0.6 - 2018-06-07
### Fixed
- The badge position setting now saves the correct values
- Added a note when hiding the badge you should inform users in a different way
- Fix saving checkbox and radio inputs

## 1.0.5 - 2018-06-01
### Added
- You can now add an invisible reCAPTCHA to your forms.

## 1.0.4 - 2018-05-22
### Added
- You can now change the form name by passing a `message[formName]` field in your form. This way the entries will be grouped by each form. Thanks @curtishenson

## 1.0.3 - 2018-05-14
### Fixed
- Fixed a bug where the confirmation email was not sent to the person filling out the form.

## 1.0.2 - 2018-05-10
### Fixed
- Don't show the nav item when database submissions are disabled

## 1.0.1 - 2018-05-08
### Fixed
- Fixed a bug where the submission was being passed JSON encoded to Twig

## 1.0.0 - 2018-05-06
### Added
- Initial release
