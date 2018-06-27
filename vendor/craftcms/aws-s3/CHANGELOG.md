Changelog
=========

## 1.0.8 - 2018-01-02

### Added
- Amazon S3 volumes’ Base URL settings are now parsed for [aliases](http://www.yiiframework.com/doc-2.0/guide-concept-aliases.html) (e.g. `@web`).

## 1.0.7 - 2017-11-20

### Changed
- Loosened up the `league/flysystem-aws-s3-v3` version requirement.

## 1.0.6 - 2017-08-15

### Changed
- Craft 3 Beta 24 compatibility.

## 1.0.5 - 2017-07-31

### Fixed
- Fixed a bug where cache duration information was not being saved for Volumes. ([#6](https://github.com/craftcms/aws-s3/issues/6))
- Fixed a bug where it was not possible to list buckets when using newer AWS SDK versions.

## 1.0.4 - 2017-07-07

### Changed
- Craft 3 Beta 20 compatibility.

### Fixed
- Fixed a bug where invalidating a CDN path might prevent Craft from thinking the file was deleted.

## 1.0.3 - 2017-02-17

### Added
- Added AWS access token caching.

### Fixed
- Fixed a bug where the asset bundle was trying to load a non-existing CSS file.
- Fixed compatibility with Craft >= 3.0.0-beta.4.

## 1.0.2 - 2017-02-02

### Fixed
- Fixed a bug where the Edit Volume page would 404 on Craft Personal and Client editions when this plugin was installed. 

## 1.0.1 - 2017-01-31

### Fixed
- Fixed typo in “CloudFront distribution ID” label.

## 1.0.0.1 - 2017-01-31

### Fixed
- Fixed Composer installation support  

## 1.0.0 - 2017-01-31

Initial release.
