-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2015 at 09:46 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ideaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` smallint(6) unsigned DEFAULT NULL,
  `height` smallint(6) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(71, 1, 2, 'Screen-Shot-2015-09-16-at-8.18.14-AM.png', 'image', 712, 608, 117718, '2015-09-18 14:20:35', '2015-09-18 14:20:35', '2015-09-18 14:20:35', 'a5459b7e-3785-4a27-acd8-35289526c15e'),
(85, 1, 1, 'headshot.jpg', 'image', 550, 451, 69932, '2015-09-25 13:50:30', '2015-09-25 13:50:30', '2015-09-25 13:50:30', '17cda53f-875e-4fa8-8b46-ed9d3be351c3'),
(86, 1, 1, 'serious-leprechaun-by-IGNACIOLEO.jpg', 'image', 1000, 854, 752943, '2015-09-25 13:55:34', '2015-09-25 13:55:34', '2015-09-25 13:55:34', '4b4fc0fa-b20d-4b96-89e8-4d11092b4c59'),
(92, 2, 4, 'IdeaBase_Logo_StackedOutlineColor.jpg', 'image', 4167, 4167, 630987, '2015-10-02 14:41:19', '2015-10-02 14:41:19', '2015-10-02 14:41:19', '1eb3214d-3467-445e-8107-fc73daa2f940'),
(93, 2, 4, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', 'image', 804, 356, 494705, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '2015-10-02 14:55:02', '09705c95-7ebd-47ed-92f0-ae316149a907'),
(94, 2, 4, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', 'image', 386, 314, 151291, '2015-10-02 22:23:54', '2015-10-02 22:23:54', '2015-10-02 22:23:54', '25aabe0c-c6ea-4aea-8f43-0f2afe5c2ca9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
`id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2015-09-18 14:08:55', '2015-09-18 14:08:55', '852ce750-15bc-4647-8e57-94443d74a1d9'),
(2, 1, 1, 'images', 'images/', '2015-09-18 14:20:25', '2015-09-18 14:20:25', '46d18dcb-b673-407a-8e71-1501f2063871'),
(3, 2, 1, 'headshots', 'images/headshots/', '2015-09-18 14:23:48', '2015-09-18 14:23:48', '1cde0f4f-d5b6-4832-907f-d7fa5e59244c'),
(4, NULL, 2, 'Other Images', '', '2015-10-02 14:32:53', '2015-10-02 14:32:53', 'eff409f4-ab7e-45e9-bfd1-d1795d7346c8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
`id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'images', 'Local', '{"path":"images\\/headshots\\/","url":"http:\\/\\/localhost\\/images\\/headshots\\/"}', 1, 42, '2015-09-18 14:08:55', '2015-09-25 13:48:24', 'de3fe392-445b-4778-9367-8ccf281ef8e8'),
(2, 'Other Images', 'otherImages', 'Local', '{"path":"images\\/","url":"http:\\/\\/localhost\\/images\\/"}', 2, 47, '2015-10-02 14:32:53', '2015-10-02 14:32:53', '621e7c51-7bbd-4dc0-a6ee-6d9f507ced5d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
`id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 71, NULL, NULL, '_thumb', 1, 0, 1, '2015-09-25 13:43:11', '2015-09-25 13:43:11', '2015-10-02 22:37:23', '83c880d5-9d5c-40db-aa92-0e692c08ea82'),
(4, 85, 'headshot.jpg', NULL, '_thumb', 1, 1, 0, '2015-09-25 13:52:18', '2015-09-25 13:52:18', '2015-09-25 13:52:18', 'f159c1c2-c82f-42ab-96e2-d2b346e89ff7'),
(5, 86, 'serious-leprechaun-by-IGNACIOLEO.jpg', NULL, '_thumb', 1, 1, 0, '2015-09-25 13:55:45', '2015-09-25 13:55:45', '2015-09-25 13:55:46', '287aa091-27b1-4122-b3cf-bf1d56772ade'),
(7, 93, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-02 14:55:22', '2015-10-02 14:55:22', '2015-10-02 14:55:22', '726a4014-4eac-44e7-847a-c9650ae6b375'),
(8, 92, 'IdeaBase_Logo_StackedOutlineColor.jpg', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:24', '2a57f336-a540-4fed-8d38-2d0206edfa41'),
(9, 93, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:22', '644247a9-f54e-48d4-b6b1-82350fe809bd'),
(10, 94, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:22', 'bb8ae67e-80a6-4c3f-921c-01b0e250977d'),
(11, 94, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-02 22:39:59', '2015-10-02 22:39:59', '2015-10-02 22:39:59', 'b917536d-807c-46c0-ab70-44020981289a'),
(12, 92, 'IdeaBase_Logo_StackedOutlineColor.jpg', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-04 23:30:08', '2015-10-04 23:30:08', '2015-10-04 23:30:10', 'e08b8824-d900-4275-9e0e-b9462f679fe7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Thumb', 'thumb', 'crop', 'center-center', 500, 350, NULL, NULL, '2015-09-25 13:43:03', '2015-09-25 13:43:03', '2015-09-25 13:43:03', '78ff8498-df60-4a6b-82ec-5710d253bd6a'),
(2, 'About Image Transform', 'aboutImageTransform', 'fit', 'center-center', 175, 350, NULL, NULL, '2015-10-02 14:54:34', '2015-10-02 14:50:26', '2015-10-02 14:54:34', 'ac120356-d977-4533-8112-5e82023d44c2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categories`
--

INSERT INTO `craft_categories` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, '2015-09-18 13:27:24', '2015-09-18 13:27:24', '3a06daf0-2204-4c12-9920-f8efbe1645f2'),
(5, 1, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '4959e819-ed21-43f8-82f9-b6a9179ac9db'),
(6, 1, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'e04e04c2-51eb-4988-bd47-6d9bb4a473fa'),
(7, 1, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'c99bdcc1-5bac-47f5-848f-d26aafeae74e'),
(8, 1, '2015-09-18 13:29:09', '2015-09-18 13:29:09', 'd0967b2d-9098-4f66-91e5-db6272c5aee9'),
(9, 3, '2015-09-18 13:33:56', '2015-09-18 13:33:56', 'e5b87159-f4b9-46ab-bcd4-535b5faf6484'),
(10, 3, '2015-09-18 13:34:35', '2015-09-18 13:34:35', 'fe9d376c-5be7-4ac1-bfa9-f70e50e572b2'),
(11, 3, '2015-09-18 13:34:52', '2015-09-18 13:34:52', 'e17297bb-9e9b-4807-a101-3b67aaac1575'),
(12, 3, '2015-09-18 13:35:01', '2015-09-18 13:35:01', '68463ec5-2230-4cb8-b755-09a9b252c28d'),
(13, 3, '2015-09-18 13:35:08', '2015-09-18 13:35:08', 'e68142d1-88f9-40b6-a282-572e54576015'),
(14, 3, '2015-09-18 13:35:18', '2015-09-18 13:35:18', 'f61527fb-af41-4ff4-8acb-73cbbf62aa9f'),
(15, 3, '2015-09-18 13:35:31', '2015-09-18 13:35:31', '3e4787b9-1689-49b3-a4c7-3acac6245086'),
(16, 3, '2015-09-18 13:35:41', '2015-09-18 13:35:41', '65b26e1c-5ad1-4daf-987e-f498598a0b51'),
(17, 3, '2015-09-18 13:35:52', '2015-09-18 13:35:52', '48bcfec3-a0b5-43c8-80b4-2e62af6e9d52'),
(18, 3, '2015-09-18 13:36:00', '2015-09-18 13:36:00', '3a0575bd-895e-4e72-a7d0-33d2486d57d5'),
(19, 3, '2015-09-18 13:36:05', '2015-09-18 13:36:05', '5792b2eb-8d99-48f4-b306-c8bfc014f3f8'),
(20, 3, '2015-09-18 13:36:14', '2015-09-18 13:36:14', 'f177d5f8-f6f0-44df-95e7-a9544a80cb98'),
(21, 3, '2015-09-18 13:36:21', '2015-09-18 13:36:21', '7681fe64-816e-4155-b0e7-f4afe6384d94'),
(22, 3, '2015-09-18 13:36:29', '2015-09-18 13:36:29', 'c2743941-c050-42b0-9148-14a9225ca046'),
(23, 3, '2015-09-18 13:36:38', '2015-09-18 13:36:38', '68e8331e-be6d-4665-afe9-4a28bed3ea27'),
(24, 3, '2015-09-18 13:36:45', '2015-09-18 13:36:45', '2596cc2a-e66a-477d-8cb8-2ffefeca4256'),
(25, 3, '2015-09-18 13:36:52', '2015-09-18 13:36:52', '7d6648cf-15c9-4d7a-b20f-6cf6b2b3d402'),
(26, 3, '2015-09-18 13:36:58', '2015-09-18 13:36:58', 'f01c3f9b-dac0-4442-8c10-fdf210f1291a'),
(27, 3, '2015-09-18 13:37:06', '2015-09-18 13:37:06', 'bcfd9128-3dc1-40cd-aae3-f1849c77ed46'),
(28, 3, '2015-09-18 13:37:12', '2015-09-18 13:37:12', '78e0e146-0cc5-4c9b-922a-ffe6054d9166'),
(29, 3, '2015-09-18 13:37:18', '2015-09-18 13:37:18', 'b95c27b8-2c49-4ebd-9465-4bfb918304cb'),
(30, 3, '2015-09-18 13:37:24', '2015-09-18 13:37:24', 'ad7ddf39-ecf7-4dae-a43a-2708831fd0be'),
(31, 3, '2015-09-18 13:37:31', '2015-09-18 13:37:31', '91feb0f4-bc69-4754-b3b6-20a67442ccb6'),
(32, 3, '2015-09-18 13:37:36', '2015-09-18 13:37:36', '5aa0bf89-155b-4c98-b0f2-8a8901cb3bfe'),
(33, 3, '2015-09-18 13:37:45', '2015-09-18 13:37:45', '617f7dd2-2d1d-43fa-aa57-cee1758b6e09'),
(34, 3, '2015-09-18 13:37:55', '2015-09-18 13:37:55', 'a02ad2e3-2cb0-4e69-be86-65ddacc6dc2b'),
(35, 2, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '6eafd963-a072-4254-88a6-4dc356765ab7'),
(36, 2, '2015-09-18 13:42:08', '2015-09-18 13:42:40', '170e4fff-b10a-4f6c-be47-5f665da267d5'),
(37, 2, '2015-09-18 13:42:16', '2015-09-18 13:42:51', 'bfcac4d3-acfa-47e3-891e-b140efc04e75'),
(38, 2, '2015-09-18 13:43:03', '2015-09-18 13:43:03', '76c4620f-6eab-4098-93e9-c7ee30c438e3'),
(39, 2, '2015-09-18 13:43:16', '2015-09-18 13:43:16', '853c1473-c492-4263-a89e-c9f7f717fee2'),
(40, 2, '2015-09-18 13:43:40', '2015-09-18 13:43:40', '7285925d-b902-48c0-8a04-4f2b2f4bb98d'),
(41, 2, '2015-09-18 13:43:50', '2015-09-18 13:43:50', '85b05e6b-89a3-4b71-9719-364c94062427'),
(42, 2, '2015-09-18 13:44:03', '2015-09-18 13:44:03', '56bc66ee-0510-4e20-87b3-03f3f9bd9368'),
(43, 2, '2015-09-18 13:44:12', '2015-09-18 13:44:12', 'f7664245-b834-4294-a6f4-ee458f040da9'),
(44, 2, '2015-09-18 13:44:21', '2015-09-18 13:44:21', 'a3284c8d-dfd5-4063-af77-822c9dac7135'),
(45, 2, '2015-09-18 13:44:27', '2015-09-18 13:44:27', '2ef86cdc-6cc7-4289-bb2f-1c51d8e7d010'),
(46, 2, '2015-09-18 13:44:33', '2015-09-18 13:44:33', '9d17c3bc-c23a-4780-9157-4c766ad08163'),
(47, 2, '2015-09-18 13:44:42', '2015-09-18 13:44:42', '896f1832-1639-41f8-bc4c-8196e701d018'),
(48, 2, '2015-09-18 13:44:50', '2015-09-18 13:44:50', '3bd93500-846d-4123-b6a2-42618cbd2c0c'),
(49, 2, '2015-09-18 13:45:03', '2015-09-18 13:45:03', '4091fddc-e012-4599-915d-143b896a00a4'),
(50, 2, '2015-09-18 13:45:12', '2015-09-18 13:45:12', '75330d53-c707-4b0e-88c6-2df6faaf141d'),
(51, 2, '2015-09-18 13:45:24', '2015-09-18 13:45:24', '2a3cfa0d-737d-49bf-bc83-4d03ef5d552e'),
(52, 2, '2015-09-18 13:45:42', '2015-09-18 13:45:42', 'a5884d46-9dfa-4a62-8b87-f73f30663105'),
(54, 4, '2015-09-18 13:48:24', '2015-09-18 13:48:24', '748149d0-6767-4bb0-a5f6-7dbcdb536af2'),
(55, 4, '2015-09-18 13:48:30', '2015-09-18 13:48:30', '8fafb77f-8f12-49e1-9a02-70d854b1f6b6'),
(56, 4, '2015-09-18 13:48:34', '2015-09-18 13:48:34', '626ef49c-edae-41fd-bd01-74212e4c227e'),
(57, 4, '2015-09-18 13:48:42', '2015-09-18 13:48:42', 'f2f0135e-fc12-4aad-8c1a-c5cc89ba9b16'),
(58, 4, '2015-09-18 13:48:57', '2015-09-18 13:48:57', '7fe9d688-e4a7-49aa-b8d6-00ca99399ce7'),
(59, 4, '2015-09-18 13:49:05', '2015-09-18 13:49:05', '8c1046bd-b2df-4422-8e6b-ee765c3027d5'),
(60, 4, '2015-09-18 13:49:16', '2015-09-18 13:49:16', 'ad3d82ad-8fda-445a-8f89-a2b791333151'),
(61, 4, '2015-09-18 13:49:22', '2015-09-18 13:49:22', '220b100c-bb5e-467d-b067-ebdcd9806c09'),
(62, 4, '2015-09-18 13:49:30', '2015-09-18 13:49:30', '7577133d-3960-4645-bb3c-9085f34a745c'),
(63, 4, '2015-09-18 13:49:36', '2015-09-18 13:49:36', '21d2049a-0328-4ae9-a918-f2f0d5a738f8'),
(64, 4, '2015-09-18 13:49:49', '2015-09-18 13:49:49', '4ea505e7-30e5-4d51-a29f-fa3087ef9388'),
(65, 4, '2015-09-18 13:50:26', '2015-09-18 13:50:26', 'b7db6519-46ee-433d-833c-fab08b5520c2'),
(66, 4, '2015-09-18 13:50:41', '2015-09-18 13:50:41', '89a99f4a-06b6-46da-9add-598ad789bf7c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
`id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `hasUrls`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 13, 'Staff Hierarchy', 'staffHierarchy', 1, '', '2015-09-18 13:26:54', '2015-09-18 13:26:54', '5b30bff9-dc0a-43ba-8708-0bd5f0054e4b'),
(2, 3, 14, 'Project Association', 'projectAssociation', 1, '', '2015-09-18 13:29:38', '2015-09-18 13:29:38', '85ccd539-72fc-458a-a15e-c101e62c5880'),
(3, 4, 15, 'Staff Contributor', 'staffContributor', 1, '', '2015-09-18 13:33:23', '2015-09-18 13:33:23', '15794907-f4c8-4a2d-b6f8-68317e3688ff'),
(4, 5, 16, 'IdeaBase Client', 'ideabaseClient', 1, '', '2015-09-18 13:48:04', '2015-09-18 13:48:04', '519eed71-4078-453a-8392-dfb6e936126e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
`id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

INSERT INTO `craft_categorygroups_i18n` (`id`, `groupId`, `locale`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 'staff-hierarchy/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:26:54', '2015-09-18 13:26:54', 'de640107-19fe-40b9-bfe9-d787786c2807'),
(2, 2, 'en_us', 'project-association/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:29:38', '2015-09-18 13:29:38', '2a7c4efc-9d28-4f7f-80fa-8f75440848d4'),
(3, 3, 'en_us', 'staff-contributor/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:33:23', '2015-09-18 13:33:23', 'ce9e6222-8683-48e1-8f77-026222d90792'),
(4, 4, 'en_us', 'ideabase-client/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:48:04', '2015-09-18 13:48:04', '1ee1483d-2c5b-46b4-be71-95392891176d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
`id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_profileJobTitle` text COLLATE utf8_unicode_ci,
  `field_profileContactEmail` text COLLATE utf8_unicode_ci,
  `field_profileOfficePhoneNumber` int(10) unsigned DEFAULT '0',
  `field_profileBiographyDescription` text COLLATE utf8_unicode_ci,
  `field_profileFunFact` text COLLATE utf8_unicode_ci,
  `field_projectTitleOfProject` text COLLATE utf8_unicode_ci,
  `field_projectDescription` text COLLATE utf8_unicode_ci,
  `field_blogContent` text COLLATE utf8_unicode_ci,
  `field_awardTitle` text COLLATE utf8_unicode_ci,
  `field_awardDateAwarded` datetime DEFAULT NULL,
  `field_awardWinningProject` text COLLATE utf8_unicode_ci,
  `field_winningProjectUrl` text COLLATE utf8_unicode_ci,
  `field_testimonialNameOfQuoter` text COLLATE utf8_unicode_ci,
  `field_testimonialQuote` text COLLATE utf8_unicode_ci,
  `field_dateOfQuote` datetime DEFAULT NULL,
  `field_serviceTitle` text COLLATE utf8_unicode_ci,
  `field_serviceDescription` text COLLATE utf8_unicode_ci,
  `field_clientTitle` text COLLATE utf8_unicode_ci,
  `field_primaryContact` text COLLATE utf8_unicode_ci,
  `field_titleOfCaseStudy` text COLLATE utf8_unicode_ci,
  `field_caseStudyContent` text COLLATE utf8_unicode_ci,
  `field_callToAction` text COLLATE utf8_unicode_ci,
  `field_footerAddress` text COLLATE utf8_unicode_ci,
  `field_phoneNumber` int(10) unsigned DEFAULT '0',
  `field_faxNumber` int(10) unsigned DEFAULT '0',
  `field_footerEmail` text COLLATE utf8_unicode_ci,
  `field_mainTagline` text COLLATE utf8_unicode_ci,
  `field_homepageAboutText` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_profileJobTitle`, `field_profileContactEmail`, `field_profileOfficePhoneNumber`, `field_profileBiographyDescription`, `field_profileFunFact`, `field_projectTitleOfProject`, `field_projectDescription`, `field_blogContent`, `field_awardTitle`, `field_awardDateAwarded`, `field_awardWinningProject`, `field_winningProjectUrl`, `field_testimonialNameOfQuoter`, `field_testimonialQuote`, `field_dateOfQuote`, `field_serviceTitle`, `field_serviceDescription`, `field_clientTitle`, `field_primaryContact`, `field_titleOfCaseStudy`, `field_caseStudyContent`, `field_callToAction`, `field_footerAddress`, `field_phoneNumber`, `field_faxNumber`, `field_footerEmail`, `field_mainTagline`, `field_homepageAboutText`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:02:10', '2015-09-29 14:14:21', 'c9efc88a-0ef4-42e8-a874-420814e978a8'),
(2, 2, 'en_us', 'IdeaBase Kent New Website', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'This is a tagline', 'This is sample "About" text', '2015-09-18 13:02:12', '2015-10-02 14:55:17', '406291b4-9b84-4bf9-93dd-31388cc7e591'),
(3, 3, 'en_us', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</p><!--pagebreak--><p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p><p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'd0ed3828-b61a-4440-aaca-51f55e6f6762'),
(4, 4, 'en_us', 'Staff Role', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:27:24', '2015-09-18 13:27:24', 'c0110837-6f89-463c-ae28-25424b817273'),
(5, 5, 'en_us', 'Leadership', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '1d19a514-7f8f-4701-8e4f-aec93b354143'),
(6, 6, 'en_us', 'Student', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'aeb4d309-fd34-4400-b76b-08666ac20618'),
(7, 7, 'en_us', 'Professional Advisory Board', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'ac6c7632-739f-4c37-ab14-0911cdd90035'),
(8, 8, 'en_us', 'Faculty Advisory Board', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:29:09', '2015-09-18 13:29:09', 'b59c92f0-c32a-4ea5-88f3-9072dc7c828c'),
(9, 9, 'en_us', 'Staff Member', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:33:56', '2015-09-18 13:33:56', '25029a2f-e971-4390-97e6-63206f95ce55'),
(10, 10, 'en_us', 'Andrew Keller', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:34:35', '2015-09-18 13:34:35', '61773303-bff7-4943-9453-a9317d9b8e40'),
(11, 11, 'en_us', 'Audrey Lingenfelter', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:34:52', '2015-09-18 13:34:52', 'aec919a4-b6aa-4e8a-a247-592b4b4b4dc6'),
(12, 12, 'en_us', 'Brendan Bennett', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:01', '2015-09-18 13:35:01', '7eea736b-49d0-425f-bfe5-d876c30b09ef'),
(13, 13, 'en_us', 'Caitlin Smith', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:07', '2015-09-18 13:35:07', '652c9fe3-9b70-48db-bd49-23a599604d46'),
(14, 14, 'en_us', 'Callie Sullivan', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:18', '2015-09-18 13:35:18', 'efcec8cc-534f-4fa2-9e6c-6b761c41bc8e'),
(15, 15, 'en_us', 'Christopher Hallahan', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:31', '2015-09-18 13:35:31', 'de9ac2f3-5361-4271-9b22-a9d2f180b77d'),
(16, 16, 'en_us', 'Christopher Uhler', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:41', '2015-09-18 13:35:41', 'ff35915b-65ee-44f3-826f-8dcc922c1cf4'),
(17, 17, 'en_us', 'Courtney Kaminski', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:35:52', '2015-09-18 13:35:52', 'e484758b-6ee8-441c-a84a-58b03c9ab583'),
(18, 18, 'en_us', 'Grace Jacobsen', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:00', '2015-09-18 13:36:00', 'f39f16e4-34c6-4b3b-a9fc-800f25d38120'),
(19, 19, 'en_us', 'Joe Dister', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:05', '2015-09-18 13:36:05', '046f8142-95dd-47b5-80f9-4a86438cf46d'),
(20, 20, 'en_us', 'John Vrhovnik', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:14', '2015-09-18 13:36:14', '1c26983b-7f7b-4d32-9768-7af4d4d328e1'),
(21, 21, 'en_us', 'Kristin Dowling', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:21', '2015-09-18 13:36:21', 'd82d9eae-034f-4e7f-9e19-28b6e03905e4'),
(22, 22, 'en_us', 'Larrie King', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:29', '2015-09-18 13:36:29', 'ecc9088e-903e-4122-80bd-44b5d3bc950e'),
(23, 23, 'en_us', 'Mario Fasolo', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:38', '2015-09-18 13:36:38', 'c7ed2540-bcd9-4054-abaa-bb59c3e7cbb3'),
(24, 24, 'en_us', 'Martha Arbogast', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:45', '2015-09-18 13:36:45', 'b2dc1779-ae3f-45a8-bdf8-a824debb166e'),
(25, 25, 'en_us', 'Nico Ciani', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:52', '2015-09-18 13:36:52', '616b8178-401f-4d07-988c-db269aa1c473'),
(26, 26, 'en_us', 'Quintin Steele', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:36:58', '2015-09-18 13:36:58', '2ca5d30d-82b8-47a5-bff0-f85a6c765ca9'),
(27, 27, 'en_us', 'Rachel Kozy', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:06', '2015-09-18 13:37:06', 'ced703ae-ac61-40c2-a5a8-33da0ce955b4'),
(28, 28, 'en_us', 'Reilly Hawkins', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:12', '2015-09-18 13:37:12', '8ac78aed-8c0e-47e0-8b17-dfb0f4b37480'),
(29, 29, 'en_us', 'Robin Tucker', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:18', '2015-09-18 13:37:18', 'f0fe5eaa-95c4-4d3b-be06-3eff09bb0bea'),
(30, 30, 'en_us', 'Sarah Holzer', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:24', '2015-09-18 13:37:24', '6776dc2f-687a-4706-945a-d448a522bd94'),
(31, 31, 'en_us', 'Todd Thompson', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:31', '2015-09-18 13:37:31', '9d3dca73-8153-48ba-b831-5dc80df4b3db'),
(32, 32, 'en_us', 'Trang Vu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:36', '2015-09-18 13:37:36', 'a7c9d549-7743-4e6b-8a24-314f2d66d082'),
(33, 33, 'en_us', 'Trista Finch', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:45', '2015-09-18 13:37:45', 'ca079e97-40f0-488c-9fa0-3f78b338a230'),
(34, 34, 'en_us', 'Victoria Ripepi', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:37:55', '2015-09-18 13:37:55', '8338b500-d70b-4eed-afa9-8101d9a57c41'),
(35, 35, 'en_us', 'Project', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '5ebe54cf-6f4c-40d8-94dc-60544aace3b1'),
(36, 36, 'en_us', 'Luminate Templates', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:42:08', '2015-09-18 13:42:40', '1280d894-a969-40c2-a4cf-7f0e5ad59d4a'),
(37, 37, 'en_us', 'Career Expo Brand', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:42:16', '2015-09-18 13:42:51', '3a8502cf-9f9b-4e8c-b0a9-61675c6133e0'),
(38, 38, 'en_us', 'Ongoing KSU Athletics', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:43:03', '2015-09-18 13:43:03', 'a7d011f6-e215-409c-b9fa-2dad7b899ef2'),
(39, 39, 'en_us', 'CNB Anniversary Video', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:43:16', '2015-09-18 13:43:16', 'f2d7e1b4-e89b-4bee-9491-191119e95939'),
(40, 40, 'en_us', 'Athletics Annual Report Website', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:43:40', '2015-09-18 13:43:40', '09c12569-2ebe-4e29-b567-966ca293acb6'),
(41, 41, 'en_us', 'Summa Diversity Report', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:43:50', '2015-09-18 13:43:50', 'f7d857b0-ef13-46a4-a2b1-6d1ea2c6b80b'),
(42, 42, 'en_us', 'DeWeese Marketing Campaign', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:03', '2015-09-18 13:44:03', '514d5194-e2d0-4427-9f75-3db27eb92e33'),
(43, 43, 'en_us', 'NEOMED Research', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:12', '2015-09-18 13:44:12', 'ad521368-a04a-4dfd-b503-615f13121916'),
(44, 44, 'en_us', 'OCDE Video1', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:21', '2015-09-18 13:44:21', 'fc947e7a-4ef7-4279-8a02-65b5e00d076c'),
(45, 45, 'en_us', 'OCDE Video2', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:27', '2015-09-18 13:44:27', 'bcdc8253-c02a-4bfa-87b8-02d7853b96fb'),
(46, 46, 'en_us', 'Ametek Print', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:33', '2015-09-18 13:44:33', 'b21e6085-5514-43a4-bbb3-4cc92bd8ac1e'),
(47, 47, 'en_us', 'Ametek EDG', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:42', '2015-09-18 13:44:42', '6efe45b9-6319-4f26-a3e4-26bef6e5c7cf'),
(48, 48, 'en_us', 'SLIS ongoing', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:44:49', '2015-09-18 13:44:49', '51005609-2bfe-4805-bde8-5807193a93b4'),
(49, 49, 'en_us', 'Ardleigh Mineral Website', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:45:03', '2015-09-18 13:45:03', '3bf22c52-f753-4e35-8194-77539ee95746'),
(50, 50, 'en_us', 'CAEST Web update', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:45:12', '2015-09-18 13:45:12', '86588ffb-e85d-424d-85e8-3f8a7997f160'),
(51, 51, 'en_us', 'Marino EyeTracking', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:45:24', '2015-09-18 13:45:24', '387eb488-d78d-4372-9228-9e8a67cf04f2'),
(52, 52, 'en_us', 'IdeaBase Internal', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:45:42', '2015-09-18 13:45:42', '474512c0-9512-416b-b1da-1a27e23b8db9'),
(54, 54, 'en_us', 'CCI Dean''s Office', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:48:24', '2015-09-18 13:48:24', '73fd2f46-a0fc-471a-ae4a-debbfbd674a6'),
(55, 55, 'en_us', 'JMC/CCI', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:48:30', '2015-09-18 13:48:30', 'f87e4500-d23d-4fe3-b3d0-d331443a377f'),
(56, 56, 'en_us', 'COMM', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:48:34', '2015-09-18 13:48:34', 'de92f7b0-b6fb-4329-8221-cafd98ed8333'),
(57, 57, 'en_us', 'KSU Athletics', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:48:41', '2015-09-18 13:48:41', 'e3f46bd7-68f2-4c67-bd6d-3b4b2529d663'),
(58, 58, 'en_us', 'Consumers National Bank', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:48:57', '2015-09-18 13:48:57', 'a965c2aa-1a5e-410f-9754-93948c1be7e8'),
(59, 59, 'en_us', 'KSU Athletics Logo Book', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:05', '2015-09-18 13:49:05', '7a8ffc50-b675-4d9b-bc5a-5baa5d87062f'),
(60, 60, 'en_us', 'Athletics Annual Report', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:16', '2015-09-18 13:49:16', 'ec11ab16-d3ec-4223-a195-4ca45326d30a'),
(61, 61, 'en_us', 'Summa', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:22', '2015-09-18 13:49:22', 'ee63ff37-cba7-4f95-a0fa-871dc988c99f'),
(62, 62, 'en_us', 'DeWeese Health Center', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:30', '2015-09-18 13:49:30', 'cc06850a-9926-4926-a5eb-01fdc994099d'),
(63, 63, 'en_us', 'NEOMED', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:36', '2015-09-18 13:49:36', '566a474e-f741-47d9-a973-109a5a3a392c'),
(64, 64, 'en_us', 'Boathouse Marine', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:49:49', '2015-09-18 13:49:49', '14820834-0ecc-4e22-b4ac-53bfbdf92eb3'),
(65, 65, 'en_us', 'OCDE', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:50:26', '2015-09-18 13:50:26', 'd20803f2-76cf-4777-bda2-8d2d8a982685'),
(66, 66, 'en_us', 'Ametek', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 13:50:41', '2015-09-18 13:50:41', '621e6542-9a03-4b15-9e0c-d9a531599ac2'),
(67, 67, 'en_us', 'Reilly Hawkins', NULL, 'Web Programmer', 'rhawkins@ideabasekent.com', 1234, 'This is a test bio', 'test fun fact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 14:03:06', '2015-09-25 13:36:46', '2dcc7681-41ac-4879-a0d2-d885574ce6f9'),
(71, 71, 'en_us', 'Screen-Shot-2015-09-16-at-8.18.14-AM', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-18 14:20:35', '2015-09-18 14:20:35', 'f010c7f4-c646-4b6b-a9c2-587325882ee2'),
(73, 73, 'en_us', 'this is a title', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ';oasidfjaso;ifj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 13:27:28', '2015-09-22 13:59:27', '0688f53f-a08f-4f61-8bb6-285289f400ff'),
(74, 74, 'en_us', 'project title', NULL, NULL, NULL, 0, NULL, NULL, 'asdf', 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '21168dd3-1995-4ae9-970d-4cf6c4d942a3'),
(75, 75, 'en_us', 'This is an award', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '2015-09-08 00:00:00', 'test ', 'http://www.google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:33:18', '2015-09-23 00:34:07', '72e44865-5437-4ce2-954f-58951415978e'),
(76, 76, 'en_us', 'This is an example case study', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:36:33', '2015-09-22 14:36:33', '392ac61a-9a27-4823-bb7c-586c7405440a'),
(77, 77, 'en_us', 'This is a new client', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:36:49', '2015-09-22 14:36:49', '80572a89-0b06-4a5d-960c-5bd86103eb83'),
(78, 78, 'en_us', 'this is a testimonial', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:37:27', '2015-09-22 14:37:27', 'afe029d3-5e79-4b71-bed7-c910bfc5e3d2'),
(79, 79, 'en_us', 'Another news post', '<p>this is another news post</p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-22 14:37:54', '2015-09-22 14:37:54', '62d5f5cf-5e68-41bd-abc7-0cfc2cd16ed0'),
(80, 80, 'en_us', 'This is a test blog title', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'This is the blog content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-23 00:27:55', '2015-09-23 00:27:55', '15b59b22-a157-4186-88cc-2a21b3963351'),
(81, 81, 'en_us', 'Award title', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '2015-09-08 00:00:00', 'Yahoo', 'http://www.google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-23 00:37:27', '2015-09-23 00:37:27', 'a787eb6a-8098-44f0-b1cf-1fd8f52f6e0d'),
(85, 85, 'en_us', 'headshot', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-25 13:50:30', '2015-09-25 13:50:30', '9345798b-5173-41d2-8d6b-28bf9f00f3cf'),
(86, 86, 'en_us', 'serious-leprechaun-by-IGNACIOLEO', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-25 13:55:34', '2015-09-25 13:55:34', 'd64dcc54-fd02-4ee6-91ee-113c3f05d5b8'),
(87, 87, 'en_us', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-29 14:15:13', '2015-09-29 14:15:27', '29608ba5-35c3-4ec9-a72e-85a4bc27737d'),
(89, 89, 'en_us', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-09-29 14:19:07', '2015-10-04 23:25:56', 'a3e92c54-56b8-469e-afa5-87dc32d799a6'),
(90, 90, 'en_us', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This is a call to action', '123 Example Street Kent, OH 44240', 123456, 123457, 'rhawkins@ideabasekent.com', NULL, NULL, '2015-09-29 14:19:11', '2015-10-02 15:04:41', '2b55ea27-2a40-4f98-bcde-68e8a652d03d'),
(92, 92, 'en_us', 'IdeaBase Logo', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 14:41:19', '2015-10-04 23:29:47', '38cfc99e-e39b-4548-aace-187a9dd7d12e'),
(93, 93, 'en_us', 'Screen-Shot-2015-10-02-at-10.53.43-AM', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '8ae8f3e0-d0d0-4de1-b80b-c79270dcd9a0'),
(94, 94, 'en_us', 'Footer-Map', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '8ff649da-14e1-4224-973f-439e56411985'),
(95, 95, 'en_us', 'Service 1', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'This is service 1', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 22:53:33', '2015-10-02 22:53:33', 'c64674d9-be94-4315-87ec-b38d43a3312c'),
(96, 96, 'en_us', 'Service 2', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Service 2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 22:53:48', '2015-10-02 22:53:48', '40b2a538-7c2d-4108-8545-01285ce4bead'),
(97, 97, 'en_us', 'Service 3', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'This is service 3', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-02 22:53:59', '2015-10-02 22:53:59', '20fc2604-60f2-47d9-a043-75d1b1d48a62'),
(98, 98, 'en_us', 'Project Title 1', NULL, NULL, NULL, 0, NULL, NULL, '', 'This is Project 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'e4f5841c-dad8-4e7c-83e7-231033460904'),
(99, 99, 'en_us', 'Project Title 2', NULL, NULL, NULL, 0, NULL, NULL, '', 'This is Project 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-04 23:17:35', '2015-10-04 23:17:35', 'cd881295-79af-432f-a3ac-424f9a1be8cb'),
(101, 101, 'en_us', 'Project 3', NULL, NULL, NULL, 0, NULL, NULL, '', 'This is project 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-04 23:17:59', '2015-10-04 23:17:59', '28470dca-4648-4a01-bf95-a90a14c6dc3f'),
(102, 102, 'en_us', 'Example Case Study', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-10-04 23:43:15', '2015-10-04 23:43:15', '5a4fccd8-5f6d-496d-b33c-1c2131dca50a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
`id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
`id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2015-09-18 13:02:10', '2015-09-29 14:14:21', '25f020c6-ec8f-4c84-935c-9d5b009c9e28'),
(2, 'Entry', 1, 0, '2015-09-18 13:02:12', '2015-10-02 14:55:17', 'd1cdeaaa-042d-4354-9788-e294620ce809'),
(3, 'Entry', 1, 0, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '8ae99cd4-a3e5-4a29-abdd-8bdc19626d4b'),
(4, 'Category', 1, 0, '2015-09-18 13:27:24', '2015-09-18 13:27:24', 'af44b2b9-1104-4bb7-9897-0bb8e8f4b2ec'),
(5, 'Category', 1, 0, '2015-09-18 13:28:28', '2015-09-18 13:28:28', 'b0c46c32-e9e2-4d76-81e9-a608083cd27e'),
(6, 'Category', 1, 0, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'd4aced96-ba21-46e1-aed1-ca878dc3f59d'),
(7, 'Category', 1, 0, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'f423bc11-d46d-4649-94c3-f79fc74897ac'),
(8, 'Category', 1, 0, '2015-09-18 13:29:09', '2015-09-18 13:29:09', '7863fe49-a589-4c62-80be-a921ef34278c'),
(9, 'Category', 1, 0, '2015-09-18 13:33:56', '2015-09-18 13:33:56', 'de62b377-a894-4f6e-8081-34e090324a72'),
(10, 'Category', 1, 0, '2015-09-18 13:34:35', '2015-09-18 13:34:35', '1c739844-5bed-4f7c-b8ac-0eba514df0fd'),
(11, 'Category', 1, 0, '2015-09-18 13:34:52', '2015-09-18 13:34:52', '0d9c8c4c-4e78-4afc-a111-3f0c70043e22'),
(12, 'Category', 1, 0, '2015-09-18 13:35:01', '2015-09-18 13:35:01', 'acebf88c-47a7-4bca-aaa8-5c496ac4b3b8'),
(13, 'Category', 1, 0, '2015-09-18 13:35:07', '2015-09-18 13:35:07', '91e7128a-766c-4afa-a68a-c5c596cae249'),
(14, 'Category', 1, 0, '2015-09-18 13:35:18', '2015-09-18 13:35:18', '05ec5963-3a38-4ebd-920f-c67b41c4e6a3'),
(15, 'Category', 1, 0, '2015-09-18 13:35:31', '2015-09-18 13:35:31', '8abf8bb6-21a7-4aae-8955-5ae92f147d77'),
(16, 'Category', 1, 0, '2015-09-18 13:35:41', '2015-09-18 13:35:41', '22e9461b-bf86-49fd-915f-8b5aa06d14a9'),
(17, 'Category', 1, 0, '2015-09-18 13:35:52', '2015-09-18 13:35:52', '9bf6273b-c008-4f63-bb03-cbed0c88d25c'),
(18, 'Category', 1, 0, '2015-09-18 13:36:00', '2015-09-18 13:36:00', '4d28f009-3d8b-4f41-8fb2-390b4cc9f451'),
(19, 'Category', 1, 0, '2015-09-18 13:36:05', '2015-09-18 13:36:05', '39d23478-c5f6-47b5-90b0-9ff7c2b637ef'),
(20, 'Category', 1, 0, '2015-09-18 13:36:14', '2015-09-18 13:36:14', 'e57a9aeb-0058-4946-b013-7a36953579bc'),
(21, 'Category', 1, 0, '2015-09-18 13:36:21', '2015-09-18 13:36:21', 'b455bac0-722a-46df-bb04-abd37123b14c'),
(22, 'Category', 1, 0, '2015-09-18 13:36:29', '2015-09-18 13:36:29', '056e3a2b-4614-4486-9449-abe1d24eda16'),
(23, 'Category', 1, 0, '2015-09-18 13:36:38', '2015-09-18 13:36:38', '98f4a83f-f894-47c4-b768-d5ab5c647e5d'),
(24, 'Category', 1, 0, '2015-09-18 13:36:45', '2015-09-18 13:36:45', '5722afef-c3e6-43e6-9622-9af3471b23f6'),
(25, 'Category', 1, 0, '2015-09-18 13:36:52', '2015-09-18 13:36:52', '99288106-2084-4433-9771-180e974e6c96'),
(26, 'Category', 1, 0, '2015-09-18 13:36:58', '2015-09-18 13:36:58', '594a99d8-aba5-472f-abde-b8b03d1ea4df'),
(27, 'Category', 1, 0, '2015-09-18 13:37:06', '2015-09-18 13:37:06', '75988be0-22d5-42f9-a40f-8a1976a8b2f5'),
(28, 'Category', 1, 0, '2015-09-18 13:37:12', '2015-09-18 13:37:12', 'cc655d3d-81ff-4eda-b05c-87af5fb87c19'),
(29, 'Category', 1, 0, '2015-09-18 13:37:18', '2015-09-18 13:37:18', '6a726b28-4789-40c2-8fa9-b3ed8ff3a1ce'),
(30, 'Category', 1, 0, '2015-09-18 13:37:24', '2015-09-18 13:37:24', '8f436cea-93b1-4433-a6a4-50cf2b47a32b'),
(31, 'Category', 1, 0, '2015-09-18 13:37:31', '2015-09-18 13:37:31', '63634454-0c0a-4933-87a5-e464bfe2c045'),
(32, 'Category', 1, 0, '2015-09-18 13:37:36', '2015-09-18 13:37:36', '11fe40c8-8929-487b-923e-aae27b943a97'),
(33, 'Category', 1, 0, '2015-09-18 13:37:45', '2015-09-18 13:37:45', '4160b7d5-4a5a-4ed6-9e11-8d76b0a7876b'),
(34, 'Category', 1, 0, '2015-09-18 13:37:55', '2015-09-18 13:37:55', 'dc27f8ba-8e8c-40ef-afd7-3fa682f1fcc1'),
(35, 'Category', 1, 0, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '610a4dc5-fd99-45dd-8e71-a44406b9706d'),
(36, 'Category', 1, 0, '2015-09-18 13:42:08', '2015-09-18 13:42:40', 'aeacf1d3-f7cc-4841-bfb3-4e19577febca'),
(37, 'Category', 1, 0, '2015-09-18 13:42:16', '2015-09-18 13:42:50', '9f667ed1-2f4a-4bc6-9926-898ddc6f2423'),
(38, 'Category', 1, 0, '2015-09-18 13:43:03', '2015-09-18 13:43:03', '6b358060-cd87-4eef-b546-3c177ff2de4d'),
(39, 'Category', 1, 0, '2015-09-18 13:43:16', '2015-09-18 13:43:16', '9e364f1e-aae9-4128-a01e-2cef9a79db47'),
(40, 'Category', 1, 0, '2015-09-18 13:43:40', '2015-09-18 13:43:40', '56e6d436-1bca-4293-a6aa-747a625928e2'),
(41, 'Category', 1, 0, '2015-09-18 13:43:50', '2015-09-18 13:43:50', 'cde98eeb-1b37-4b8b-82f4-3f59f142f9d0'),
(42, 'Category', 1, 0, '2015-09-18 13:44:03', '2015-09-18 13:44:03', '3452f636-c665-48f5-8c33-12b673821aee'),
(43, 'Category', 1, 0, '2015-09-18 13:44:12', '2015-09-18 13:44:12', '6d14f9f4-0885-4576-a9bc-c6da193e16ec'),
(44, 'Category', 1, 0, '2015-09-18 13:44:21', '2015-09-18 13:44:21', 'a5980201-a9f0-4e2d-a984-59eeb138f8d0'),
(45, 'Category', 1, 0, '2015-09-18 13:44:27', '2015-09-18 13:44:27', 'fff597a1-61d1-4e7b-baee-a01bdcddfd89'),
(46, 'Category', 1, 0, '2015-09-18 13:44:33', '2015-09-18 13:44:33', '10e25283-ac95-4394-8e83-5ef4ecf07348'),
(47, 'Category', 1, 0, '2015-09-18 13:44:42', '2015-09-18 13:44:42', '72f61b13-95af-49fe-bee4-3d9f03b394f5'),
(48, 'Category', 1, 0, '2015-09-18 13:44:49', '2015-09-18 13:44:49', '480cb00d-21f0-4e7b-b762-17fc36019c4c'),
(49, 'Category', 1, 0, '2015-09-18 13:45:03', '2015-09-18 13:45:03', 'e0c80d36-5962-442b-8ddb-39c054174663'),
(50, 'Category', 1, 0, '2015-09-18 13:45:12', '2015-09-18 13:45:12', 'f2afdc56-46c2-4982-ad4a-7d28d0b26bbd'),
(51, 'Category', 1, 0, '2015-09-18 13:45:24', '2015-09-18 13:45:24', 'b9feaa87-29ca-4c31-98e8-a74d0c2ebda0'),
(52, 'Category', 1, 0, '2015-09-18 13:45:42', '2015-09-18 13:45:42', '3100df89-d4d1-400a-90b5-04fa313e678f'),
(54, 'Category', 1, 0, '2015-09-18 13:48:24', '2015-09-18 13:48:24', 'f07ac62e-a5c8-4f92-8ba5-b64aeae5a98c'),
(55, 'Category', 1, 0, '2015-09-18 13:48:30', '2015-09-18 13:48:30', '5395b680-987f-4e79-b1af-15ee7a328628'),
(56, 'Category', 1, 0, '2015-09-18 13:48:34', '2015-09-18 13:48:34', '2471e550-0d44-497e-a1d8-21c97c436b4b'),
(57, 'Category', 1, 0, '2015-09-18 13:48:41', '2015-09-18 13:48:41', '36587054-51a7-49a3-98f3-fe45c467b743'),
(58, 'Category', 1, 0, '2015-09-18 13:48:57', '2015-09-18 13:48:57', '1cd340d6-6df9-48f2-b102-eec1abb51d3e'),
(59, 'Category', 1, 0, '2015-09-18 13:49:05', '2015-09-18 13:49:05', '36bfdb78-b2da-4008-8b8a-266d26bb2909'),
(60, 'Category', 1, 0, '2015-09-18 13:49:16', '2015-09-18 13:49:16', 'a4a8648b-c164-49c8-a778-2f10efa1ffbe'),
(61, 'Category', 1, 0, '2015-09-18 13:49:22', '2015-09-18 13:49:22', '9bb12d01-bebb-46fd-98dd-12f3448bc9c7'),
(62, 'Category', 1, 0, '2015-09-18 13:49:30', '2015-09-18 13:49:30', 'd29aa0fb-2212-45ef-9ebf-69e6f05e2f2d'),
(63, 'Category', 1, 0, '2015-09-18 13:49:36', '2015-09-18 13:49:36', '21c0adfd-20a9-4f94-a38d-2e4b08b4de11'),
(64, 'Category', 1, 0, '2015-09-18 13:49:49', '2015-09-18 13:49:49', 'f9513738-b027-4dc1-8fce-114010c92ff0'),
(65, 'Category', 1, 0, '2015-09-18 13:50:26', '2015-09-18 13:50:26', '60d9842f-f8bd-43fd-869e-5574329c9282'),
(66, 'Category', 1, 0, '2015-09-18 13:50:41', '2015-09-18 13:50:41', '85a5d792-b71e-4bd5-a00e-40b296580be6'),
(67, 'Entry', 1, 0, '2015-09-18 14:03:06', '2015-09-25 13:36:46', '6ebe177d-e7af-4733-b7a0-703eff2a3c07'),
(71, 'Asset', 1, 0, '2015-09-18 14:20:35', '2015-09-18 14:20:35', '3f0bfdf7-b30d-4caf-8bf8-8360198af138'),
(73, 'Entry', 1, 0, '2015-09-22 13:27:28', '2015-09-22 13:59:27', '91cf94e5-8851-4483-bb3b-8b2726bdf56a'),
(74, 'Entry', 1, 0, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '0e9b94de-c9b0-4271-a494-a13cbd3777aa'),
(75, 'Entry', 1, 0, '2015-09-22 14:33:18', '2015-09-23 00:34:07', 'f5e7d894-64ff-402e-8b4b-8004a1b19c53'),
(76, 'Entry', 1, 0, '2015-09-22 14:36:33', '2015-09-22 14:36:33', 'dc8405ea-8ce8-4cea-949c-9fab62e6a718'),
(77, 'Entry', 1, 0, '2015-09-22 14:36:49', '2015-09-22 14:36:49', 'a023045f-bdfd-4140-bb83-8616fe628815'),
(78, 'Entry', 1, 0, '2015-09-22 14:37:27', '2015-09-22 14:37:27', '305309d1-fd10-4cf1-92e3-a49307a6af05'),
(79, 'Entry', 1, 0, '2015-09-22 14:37:54', '2015-09-22 14:37:54', 'c68f9438-9a09-452d-aa1c-9c58d6490e0b'),
(80, 'Entry', 1, 0, '2015-09-23 00:27:55', '2015-09-23 00:27:55', 'c268c322-f652-4fee-89e0-ddd5bda047f2'),
(81, 'Entry', 1, 0, '2015-09-23 00:37:27', '2015-09-23 00:37:27', 'ef13a0c5-132a-455b-ab41-207bad1c22f6'),
(85, 'Asset', 1, 0, '2015-09-25 13:50:30', '2015-09-25 13:50:30', '99af4529-ff57-49f9-b710-f2d94fc2e691'),
(86, 'Asset', 1, 0, '2015-09-25 13:55:34', '2015-09-25 13:55:34', '72d5c3d8-eece-422e-8437-28ce6bd99269'),
(87, 'User', 1, 0, '2015-09-29 14:15:13', '2015-09-29 14:15:27', '68aa4508-508f-4ffa-b718-ff24f1734c5f'),
(89, 'GlobalSet', 1, 0, '2015-09-29 14:19:07', '2015-10-04 23:25:56', '04db2fb2-4ddd-49f8-93ed-27cea448bf04'),
(90, 'GlobalSet', 1, 0, '2015-09-29 14:19:11', '2015-10-02 15:04:40', '02184d34-0a71-454a-9a1e-0776a294ea58'),
(92, 'Asset', 1, 0, '2015-10-02 14:41:19', '2015-10-04 23:29:47', '0cf5ecd2-0be5-4697-b335-f53f72299df9'),
(93, 'Asset', 1, 0, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '58bd2c72-b8d3-4360-826c-c00bfb66175c'),
(94, 'Asset', 1, 0, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '2ce533b5-8c80-4fb1-8bf6-89e84e510e4d'),
(95, 'Entry', 1, 0, '2015-10-02 22:53:33', '2015-10-02 22:53:33', 'bef3d145-aaa8-420d-8ad2-ed976e6a2f26'),
(96, 'Entry', 1, 0, '2015-10-02 22:53:48', '2015-10-02 22:53:48', 'a496f5f8-2f13-4481-86a9-a48c2650e7f3'),
(97, 'Entry', 1, 0, '2015-10-02 22:53:59', '2015-10-02 22:53:59', '9b42dd9e-0aaf-402b-a66a-e1fb3144b2f6'),
(98, 'Entry', 1, 0, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'e7454785-19bd-41cc-acb8-a1dc035b0c25'),
(99, 'Entry', 1, 0, '2015-10-04 23:17:35', '2015-10-04 23:17:35', '671ebce1-1710-407b-bb4f-67f8dc60dc0f'),
(101, 'Entry', 1, 0, '2015-10-04 23:17:59', '2015-10-04 23:17:59', 'ebb0b3ff-2e5e-4f5f-afbe-e44072095998'),
(102, 'Entry', 1, 0, '2015-10-04 23:43:15', '2015-10-04 23:43:15', 'e8ee4ea5-9928-4bdb-88ad-023131bc0fed');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
`id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2015-09-18 13:02:10', '2015-09-29 14:14:21', '1a2ad04d-d965-4e6d-b3b1-4b95cef9c769'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2015-09-18 13:02:12', '2015-10-02 14:55:17', '0fc82978-0fb9-49cd-b5e0-08700b8a4834'),
(3, 3, 'en_us', 'we-just-installed-craft', 'news/2015/we-just-installed-craft', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'c5ad9361-0601-4913-947f-b695bd4f86c4'),
(4, 4, 'en_us', 'staff-role', 'staff-hierarchy/staff-role', 1, '2015-09-18 13:27:24', '2015-09-18 13:27:24', '79f5760b-4ae2-4dcb-a4d3-29eca70e53d9'),
(5, 5, 'en_us', 'leadership', 'staff-hierarchy/staff-role/leadership', 1, '2015-09-18 13:28:28', '2015-09-18 13:28:28', 'eb248124-6eec-4b23-a94f-939afef7de76'),
(6, 6, 'en_us', 'student', 'staff-hierarchy/staff-role/student', 1, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'd72d2a3f-963b-4083-a115-4052fa7d4ce9'),
(7, 7, 'en_us', 'professional-advisory-board', 'staff-hierarchy/staff-role/professional-advisory-board', 1, '2015-09-18 13:28:57', '2015-09-18 13:28:57', '0284f457-b3ab-494f-9e79-d39e8f7418c2'),
(8, 8, 'en_us', 'faculty-advisory-board', 'staff-hierarchy/staff-role/faculty-advisory-board', 1, '2015-09-18 13:29:09', '2015-09-18 13:29:09', '5f5e758c-89be-4642-90b0-e669381f2f32'),
(9, 9, 'en_us', 'staff-member', 'staff-contributor/staff-member', 1, '2015-09-18 13:33:56', '2015-09-18 13:33:57', 'b1c8404b-1d30-4035-a327-ab53c73f72a8'),
(10, 10, 'en_us', 'andrew-keller', 'staff-contributor/staff-member/andrew-keller', 1, '2015-09-18 13:34:35', '2015-09-18 13:34:42', 'ed6d863c-91b1-4050-823a-64df9792a512'),
(11, 11, 'en_us', 'audrey-lingenfelter', 'staff-contributor/staff-member/audrey-lingenfelter', 1, '2015-09-18 13:34:52', '2015-09-18 13:38:05', '082efcd9-f7c0-45d1-9842-095ca81718ce'),
(12, 12, 'en_us', 'brendan-bennett', 'staff-contributor/staff-member/brendan-bennett', 1, '2015-09-18 13:35:01', '2015-09-18 13:38:07', 'cea7de6e-a934-4e66-9500-283fcbb2f5b8'),
(13, 13, 'en_us', 'caitlin-smith', 'staff-contributor/staff-member/caitlin-smith', 1, '2015-09-18 13:35:07', '2015-09-18 13:38:08', '411fb613-4bcf-4d78-a2fb-0b5f87c94a84'),
(14, 14, 'en_us', 'callie-sullivan', 'staff-contributor/staff-member/callie-sullivan', 1, '2015-09-18 13:35:18', '2015-09-18 13:38:10', '6649fe0a-1c55-4810-bee8-4ac1d750163c'),
(15, 15, 'en_us', 'christopher-hallahan', 'staff-contributor/staff-member/christopher-hallahan', 1, '2015-09-18 13:35:31', '2015-09-18 13:38:11', '515d65a0-bc58-4e1e-9b04-ae6056aa2ab9'),
(16, 16, 'en_us', 'christopher-uhler', 'staff-contributor/staff-member/christopher-uhler', 1, '2015-09-18 13:35:41', '2015-09-18 13:38:13', '78862a7e-8700-48d0-b597-198c505f4d69'),
(17, 17, 'en_us', 'courtney-kaminski', 'staff-contributor/staff-member/courtney-kaminski', 1, '2015-09-18 13:35:52', '2015-09-18 13:38:16', '4c2520ad-efe2-4aae-9360-e1cfe20d61d5'),
(18, 18, 'en_us', 'grace-jacobsen', 'staff-contributor/staff-member/grace-jacobsen', 1, '2015-09-18 13:36:00', '2015-09-18 13:38:22', '0851b918-5aae-45a0-9e3e-2019828cbb7d'),
(19, 19, 'en_us', 'joe-dister', 'staff-contributor/staff-member/joe-dister', 1, '2015-09-18 13:36:05', '2015-09-18 13:38:23', 'a54814b6-640b-41a2-818e-036784b6562a'),
(20, 20, 'en_us', 'john-vrhovnik', 'staff-contributor/staff-member/john-vrhovnik', 1, '2015-09-18 13:36:14', '2015-09-18 13:38:24', '18d5f8b5-5d59-4444-bc1b-dc4717f7bbea'),
(21, 21, 'en_us', 'kristin-dowling', 'staff-contributor/staff-member/kristin-dowling', 1, '2015-09-18 13:36:21', '2015-09-18 13:38:26', '7fbc0a35-538e-47fc-bf20-13a6c6ac28b1'),
(22, 22, 'en_us', 'larrie-king', 'staff-contributor/staff-member/larrie-king', 1, '2015-09-18 13:36:29', '2015-09-18 13:38:28', '29ecef60-f330-4142-b859-8c382122076b'),
(23, 23, 'en_us', 'mario-fasolo', 'staff-contributor/staff-member/mario-fasolo', 1, '2015-09-18 13:36:38', '2015-09-18 13:38:29', '47f2f683-0a8d-47a9-98ce-1d103786d3e2'),
(24, 24, 'en_us', 'martha-arbogast', 'staff-contributor/staff-member/martha-arbogast', 1, '2015-09-18 13:36:45', '2015-09-18 13:38:31', '94104d17-ed2e-4944-8e85-f70731dd3fef'),
(25, 25, 'en_us', 'nico-ciani', 'staff-contributor/staff-member/nico-ciani', 1, '2015-09-18 13:36:52', '2015-09-18 13:38:33', '9bcdbf7a-97ed-49c9-8633-807a729fbb42'),
(26, 26, 'en_us', 'quintin-steele', 'staff-contributor/staff-member/quintin-steele', 1, '2015-09-18 13:36:58', '2015-09-18 13:38:35', 'eb83a68d-56d6-4505-96c8-547762f3385c'),
(27, 27, 'en_us', 'rachel-kozy', 'staff-contributor/staff-member/rachel-kozy', 1, '2015-09-18 13:37:06', '2015-09-18 13:38:36', '731a0de1-d9a2-47dd-a19f-cba3312c242a'),
(28, 28, 'en_us', 'reilly-hawkins', 'staff-contributor/staff-member/reilly-hawkins', 1, '2015-09-18 13:37:12', '2015-09-18 13:38:37', '76f2c51c-75e7-41ab-a66a-ced1e053f1a6'),
(29, 29, 'en_us', 'robin-tucker', 'staff-contributor/staff-member/robin-tucker', 1, '2015-09-18 13:37:18', '2015-09-18 13:38:39', 'd36088c3-e078-4e24-88c2-f559f1f1d34e'),
(30, 30, 'en_us', 'sarah-holzer', 'staff-contributor/staff-member/sarah-holzer', 1, '2015-09-18 13:37:24', '2015-09-18 13:38:41', '7035e0ba-864e-4227-96c7-f959192dac38'),
(31, 31, 'en_us', 'todd-thompson', 'staff-contributor/staff-member/todd-thompson', 1, '2015-09-18 13:37:31', '2015-09-18 13:38:43', '47f8bad1-6d58-4f3a-b598-fcb4f0e48d8a'),
(32, 32, 'en_us', 'trang-vu', 'staff-contributor/staff-member/trang-vu', 1, '2015-09-18 13:37:36', '2015-09-18 13:38:44', 'f52b3643-1b09-4e07-bc3d-8ee7a52ebb9f'),
(33, 33, 'en_us', 'trista-finch', 'staff-contributor/staff-member/trista-finch', 1, '2015-09-18 13:37:45', '2015-09-18 13:38:46', 'bc756d06-1ba2-4b44-9627-570a40f45ea4'),
(34, 34, 'en_us', 'victoria-ripepi', 'staff-contributor/staff-member/victoria-ripepi', 1, '2015-09-18 13:37:55', '2015-09-18 13:38:49', 'b53e8a2c-7ee3-45dc-a185-c3f118f71ed7'),
(35, 35, 'en_us', 'project', 'project-association/project', 1, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '148ec21e-d3d9-42e9-af5b-fef750bb947d'),
(36, 36, 'en_us', 'cci-deans-office', 'project-association/project/cci-deans-office', 1, '2015-09-18 13:42:08', '2015-09-18 13:42:40', '79a4da17-515e-49bd-abcf-303f091a90ff'),
(37, 37, 'en_us', 'jmc-cci', 'project-association/project/jmc-cci', 1, '2015-09-18 13:42:16', '2015-09-18 13:46:04', '00553313-8900-4586-a520-680d3d6b6ced'),
(38, 38, 'en_us', 'ongoing-ksu-athletics', 'project-association/project/ongoing-ksu-athletics', 1, '2015-09-18 13:43:03', '2015-09-18 13:46:05', 'c5bb16f7-d0d6-4e10-9875-89693b6b857a'),
(39, 39, 'en_us', 'cnb-anniversary-video', 'project-association/project/cnb-anniversary-video', 1, '2015-09-18 13:43:16', '2015-09-18 13:46:07', '1a97477b-c629-45f4-8928-12fbc4d4a472'),
(40, 40, 'en_us', 'athletics-annual-report-website', 'project-association/project/athletics-annual-report-website', 1, '2015-09-18 13:43:40', '2015-09-18 13:46:09', '2264aec4-7cbb-4558-a0e1-6d6f124462dd'),
(41, 41, 'en_us', 'summa-diversity-report', 'project-association/project/summa-diversity-report', 1, '2015-09-18 13:43:50', '2015-09-18 13:46:10', '6fb2b864-9aa3-4b64-9091-fbfd1a79644f'),
(42, 42, 'en_us', 'deweese-marketing-campaign', 'project-association/project/deweese-marketing-campaign', 1, '2015-09-18 13:44:03', '2015-09-18 13:46:12', 'e194d788-3aa9-4da4-8154-826e2bafa397'),
(43, 43, 'en_us', 'neomed-research', 'project-association/project/neomed-research', 1, '2015-09-18 13:44:12', '2015-09-18 13:46:13', '16865ebe-1e85-4e45-b631-aaf5485c6cca'),
(44, 44, 'en_us', 'ocde-video1', 'project-association/project/ocde-video1', 1, '2015-09-18 13:44:21', '2015-09-18 13:46:16', 'eaec003e-2fe7-4a91-ab88-23110421b2c1'),
(45, 45, 'en_us', 'ocde-video2', 'project-association/project/ocde-video2', 1, '2015-09-18 13:44:27', '2015-09-18 13:46:18', 'a94a7db6-9904-4f43-af19-e82597ac98bd'),
(46, 46, 'en_us', 'ametek-print', 'project-association/project/ametek-print', 1, '2015-09-18 13:44:33', '2015-09-18 13:46:20', 'e4fa6804-be7f-4e76-8e6e-c7fc8110d9f9'),
(47, 47, 'en_us', 'ametek-edg', 'project-association/project/ametek-edg', 1, '2015-09-18 13:44:42', '2015-09-18 13:46:22', '2cba434e-1d4e-43e4-8a54-ca22a0eaf8ab'),
(48, 48, 'en_us', 'slis-ongoing', 'project-association/project/slis-ongoing', 1, '2015-09-18 13:44:50', '2015-09-18 13:46:24', '468318e5-356f-451e-9a0b-66b9fecb0343'),
(49, 49, 'en_us', 'ardleigh-mineral-website', 'project-association/project/ardleigh-mineral-website', 1, '2015-09-18 13:45:03', '2015-09-18 13:46:26', 'f43972d4-c4c2-4418-a84c-5806c3c2eaf6'),
(50, 50, 'en_us', 'caest-web-update', 'project-association/project/caest-web-update', 1, '2015-09-18 13:45:12', '2015-09-18 13:46:28', 'ac9821d6-a056-41c4-8e67-ab482e8167b3'),
(51, 51, 'en_us', 'marino-eyetracking', 'project-association/project/marino-eyetracking', 1, '2015-09-18 13:45:24', '2015-09-18 13:46:29', '4d9e4b25-11d9-45c9-92a2-b9717f6b6fe3'),
(52, 52, 'en_us', 'ideabase-internal', 'project-association/project/ideabase-internal', 1, '2015-09-18 13:45:42', '2015-09-18 13:46:31', '3f64dc4b-f265-4ef0-9456-6d99b57ce6bd'),
(54, 54, 'en_us', 'cci-deans-office', 'ideabase-client/cci-deans-office', 1, '2015-09-18 13:48:24', '2015-09-29 14:46:49', 'b902a6d1-e8d4-4012-9765-4580de803074'),
(55, 55, 'en_us', 'jmc-cci', 'ideabase-client/jmc-cci', 1, '2015-09-18 13:48:30', '2015-09-18 13:48:30', '25e7709d-6d9e-4b59-9c23-d88d4f19348e'),
(56, 56, 'en_us', 'comm', 'ideabase-client/comm', 1, '2015-09-18 13:48:34', '2015-09-18 13:48:34', 'fba56f00-b180-46eb-ad0b-4f79c25c0e15'),
(57, 57, 'en_us', 'ksu-athletics', 'ideabase-client/ksu-athletics', 1, '2015-09-18 13:48:42', '2015-09-18 13:48:42', '5cf85be9-c2bd-40b9-ad59-3ae414ded9e9'),
(58, 58, 'en_us', 'consumers-national-bank', 'ideabase-client/consumers-national-bank', 1, '2015-09-18 13:48:57', '2015-09-18 13:48:57', '44f5821c-713d-42ad-83a6-8c8ad87b5e96'),
(59, 59, 'en_us', 'ksu-athletics-logo-book', 'ideabase-client/ksu-athletics-logo-book', 1, '2015-09-18 13:49:05', '2015-09-18 13:49:05', 'fe572d54-3ab9-4d9b-8e3e-319704d9dcd4'),
(60, 60, 'en_us', 'athletics-annual-report', 'ideabase-client/athletics-annual-report', 1, '2015-09-18 13:49:16', '2015-09-18 13:49:16', 'fdcb5967-9ea1-46aa-9fdf-57d1b2e79b51'),
(61, 61, 'en_us', 'summa', 'ideabase-client/summa', 1, '2015-09-18 13:49:22', '2015-09-18 13:49:22', '69d0492b-f579-4d4f-ba63-7637bdfd519e'),
(62, 62, 'en_us', 'deweese-health-center', 'ideabase-client/deweese-health-center', 1, '2015-09-18 13:49:30', '2015-09-18 13:49:30', 'bbe90b28-ff0e-4ac2-b3ca-59d4a883d6fb'),
(63, 63, 'en_us', 'neomed', 'ideabase-client/neomed', 1, '2015-09-18 13:49:36', '2015-09-18 13:49:36', '1652c5f2-ac1a-4520-b702-b271c3d6def9'),
(64, 64, 'en_us', 'boathouse-marine', 'ideabase-client/boathouse-marine', 1, '2015-09-18 13:49:49', '2015-09-18 13:49:49', '2ef23cfe-04bf-4014-a2b9-c2a2f3074795'),
(65, 65, 'en_us', 'ocde', 'ideabase-client/ocde', 1, '2015-09-18 13:50:26', '2015-09-18 13:50:26', '29af957f-3149-4d3f-b588-add94eec6839'),
(66, 66, 'en_us', 'ametek', 'ideabase-client/ametek', 1, '2015-09-18 13:50:41', '2015-09-18 13:50:41', 'fc887c6d-5868-4e56-8881-e5f2f78722fa'),
(67, 67, 'en_us', 'reilly-hawkins', 'people-profile/reilly-hawkins', 1, '2015-09-18 14:03:06', '2015-09-25 13:36:46', '1b638009-824f-4889-8f3d-7a0c37ca6293'),
(71, 71, 'en_us', 'screen-shot-2015-09-16-at-8-18-14-am', NULL, 1, '2015-09-18 14:20:35', '2015-09-18 14:20:35', 'a3440ff2-1772-43c4-9e3f-64a37405f67e'),
(73, 73, 'en_us', 'this-is-a-title', 'blog-post/2015/this-is-a-title', 1, '2015-09-22 13:27:28', '2015-09-22 13:59:27', 'e68b226c-d9a5-4558-971f-5a938381c118'),
(74, 74, 'en_us', 'project-title', 'projects/2015/project-title', 1, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '28bd035d-681f-49f9-ad7d-748814f0bab3'),
(75, 75, 'en_us', 'this-is-an-award', 'awards/this-is-an-award', 1, '2015-09-22 14:33:18', '2015-09-23 00:34:07', '664e5852-d23f-4770-abc0-efc0dcd3175b'),
(76, 76, 'en_us', 'this-is-an-example-case-study', 'case-study/this-is-an-example-case-study', 1, '2015-09-22 14:36:33', '2015-09-22 14:36:33', '2b330bcc-0981-4445-9162-2a4b524cdfe8'),
(77, 77, 'en_us', 'this-is-a-new-client', 'clients/this-is-a-new-client', 1, '2015-09-22 14:36:50', '2015-09-22 14:36:50', '8d8c0f65-d61d-4d07-b435-5d04ddafaf8b'),
(78, 78, 'en_us', 'this-is-a-testimonial', 'testimonials/this-is-a-testimonial', 1, '2015-09-22 14:37:27', '2015-09-22 14:37:27', 'bfb16428-eb56-489c-b0cb-f35636c62f1c'),
(79, 79, 'en_us', 'another-news-post', 'news/2015/another-news-post', 1, '2015-09-22 14:37:55', '2015-09-22 14:37:55', '0b35e89a-fa1d-4523-99a3-5ec7b6ab3666'),
(80, 80, 'en_us', 'this-is-a-test-blog-title', 'blog-post/2015/this-is-a-test-blog-title', 1, '2015-09-23 00:27:55', '2015-09-23 00:27:55', 'adc29ec2-ba39-4dc1-99f3-809627a03469'),
(81, 81, 'en_us', 'award-title', 'awards/award-title', 1, '2015-09-23 00:37:27', '2015-09-23 00:37:27', 'e5a29455-5436-49ca-8839-fdd3cfb469b9'),
(85, 85, 'en_us', 'headshot', NULL, 1, '2015-09-25 13:50:30', '2015-09-25 13:50:30', '0ed292f8-1d28-4064-a58d-14fb035075fe'),
(86, 86, 'en_us', 'serious-leprechaun-by-ignacioleo', NULL, 1, '2015-09-25 13:55:34', '2015-09-25 13:55:34', 'cd96e005-4e9f-4c96-a1f5-849e5218dccc'),
(87, 87, 'en_us', '', NULL, 1, '2015-09-29 14:15:13', '2015-09-29 14:15:27', 'd595f18b-1c1d-47af-b8f6-ba8b19060346'),
(89, 89, 'en_us', '', NULL, 1, '2015-09-29 14:19:07', '2015-10-04 23:25:56', '83a16a0f-1c22-4341-b78f-9fe90b5e0333'),
(90, 90, 'en_us', '', NULL, 1, '2015-09-29 14:19:11', '2015-10-02 15:04:41', '268fd5bb-cf45-4591-8fe6-aa0609301434'),
(92, 92, 'en_us', 'ideabase-logo-stackedoutlinecolor', NULL, 1, '2015-10-02 14:41:19', '2015-10-04 23:29:47', 'e3c73043-d502-4301-8f2b-ecaf4b773f37'),
(93, 93, 'en_us', 'screen-shot-2015-10-02-at-10-53-43-am', NULL, 1, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '0714246b-9b08-4295-9754-d257e5c77b53'),
(94, 94, 'en_us', 'screen-shot-2015-10-02-at-6-23-17-pm', NULL, 1, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '7a764916-3824-4421-840b-90c86078d930'),
(95, 95, 'en_us', 'service-1', 'services/service-1', 1, '2015-10-02 22:53:33', '2015-10-02 22:53:33', '01ee2761-62f7-417a-9619-464426722a88'),
(96, 96, 'en_us', 'service-2', 'services/service-2', 1, '2015-10-02 22:53:48', '2015-10-02 22:53:48', '715cae82-877c-4e2c-8510-157f9dab4aee'),
(97, 97, 'en_us', 'service-3', 'services/service-3', 1, '2015-10-02 22:53:59', '2015-10-02 22:53:59', '0ae0261b-821f-45a0-9bf8-ecf154a1c1a0'),
(98, 98, 'en_us', 'project-title-1', 'projects/2015/project-title-1', 1, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'b5e5fe51-f7f2-440f-9b16-16d956894a4b'),
(99, 99, 'en_us', 'project-title-2', 'projects/2015/project-title-2', 1, '2015-10-04 23:17:35', '2015-10-04 23:17:35', 'f48c9455-ae49-4c7d-b439-6b433c9aaaca'),
(101, 101, 'en_us', 'project-3', 'projects/2015/project-3', 1, '2015-10-04 23:17:59', '2015-10-04 23:17:59', '1a1deba4-45c8-41ed-a12a-c90ccc40a989'),
(102, 102, 'en_us', 'example-case-study', 'case-study/example-case-study', 1, '2015-10-04 23:43:15', '2015-10-04 23:43:15', '35c23d65-3499-4844-a72b-06c5038f2bc2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
`id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2015-09-18 13:02:12', NULL, '2015-09-18 13:02:12', '2015-10-02 14:55:17', 'a6b2cb1a-38c6-46c9-849f-99663f94db27'),
(3, 2, 2, 1, '2015-09-18 13:02:13', NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'b1d4fe6d-00d8-482d-b74c-6158a39c49ac'),
(67, 3, 3, 1, '2015-09-18 14:03:00', NULL, '2015-09-18 14:03:06', '2015-09-25 13:36:46', '71544981-94cb-4422-8212-df60964280eb'),
(73, 5, 5, 1, '2015-09-22 13:27:00', NULL, '2015-09-22 13:27:28', '2015-09-22 13:29:50', '8c94c6e2-3232-4f2c-a383-b2584ec3e0a3'),
(74, 4, 4, 1, '2015-09-22 14:28:05', NULL, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '2e74846a-e183-4d46-8ddf-3e45f3622faa'),
(75, 6, 6, 1, '2015-09-22 14:33:00', NULL, '2015-09-22 14:33:18', '2015-09-23 00:34:07', 'ba860779-cd31-4379-b3b7-a5949046dcdd'),
(76, 9, 9, 1, '2015-09-22 14:36:33', NULL, '2015-09-22 14:36:33', '2015-09-22 14:36:33', 'df52e3c4-54ae-45e8-b5df-f22bcb021edd'),
(77, 8, 8, 1, '2015-09-22 14:36:49', NULL, '2015-09-22 14:36:50', '2015-09-22 14:36:50', '31b3cfa2-4e9a-4776-995b-af1bddafae01'),
(78, 7, 7, 1, '2015-09-22 14:37:27', NULL, '2015-09-22 14:37:27', '2015-09-22 14:37:27', 'e5122278-d783-4d7b-89a8-aa475997e3b6'),
(79, 2, 2, 1, '2015-09-22 14:37:54', NULL, '2015-09-22 14:37:55', '2015-09-22 14:37:55', '87494fab-2980-460a-96f0-dce11d36ccc1'),
(80, 5, 5, 1, '2015-09-23 00:27:55', NULL, '2015-09-23 00:27:55', '2015-09-23 00:27:55', '39a65b83-edbc-40a3-b471-e48fd9cd5d50'),
(81, 6, 6, 1, '2015-09-23 00:37:27', NULL, '2015-09-23 00:37:27', '2015-09-23 00:37:27', 'df064588-193d-4e3f-bab3-a748b45796ab'),
(95, 10, 10, 87, '2015-10-02 22:53:33', NULL, '2015-10-02 22:53:33', '2015-10-02 22:53:33', 'da92120b-6879-4d94-b3ec-7c7964bc213c'),
(96, 10, 10, 87, '2015-10-02 22:53:48', NULL, '2015-10-02 22:53:48', '2015-10-02 22:53:48', '64fae9fd-12d3-4dcf-bb42-ca204705a51c'),
(97, 10, 10, 87, '2015-10-02 22:53:59', NULL, '2015-10-02 22:53:59', '2015-10-02 22:53:59', '17e3e69a-a530-4fee-b648-28723eb197ff'),
(98, 4, 4, 87, '2015-10-04 23:17:22', NULL, '2015-10-04 23:17:22', '2015-10-04 23:17:22', '8d70268c-6919-4803-bf52-e3fcdf4aed10'),
(99, 4, 4, 87, '2015-10-04 23:17:35', NULL, '2015-10-04 23:17:35', '2015-10-04 23:17:35', 'a9b49292-4167-41ba-9f6a-3e9996ee63de'),
(101, 4, 4, 87, '2015-10-04 23:17:59', NULL, '2015-10-04 23:17:59', '2015-10-04 23:17:59', 'a8977f0d-b979-4120-a906-4917d536bb31'),
(102, 9, 9, 87, '2015-10-04 23:43:15', NULL, '2015-10-04 23:43:15', '2015-10-04 23:43:15', 'bef1cb53-afb6-488f-81fb-3aa6163039cd');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
`id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
`id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 48, 'Homepage', 'homepage', 1, 'Title', NULL, NULL, '2015-09-18 13:02:12', '2015-10-02 14:37:34', '7a6604a3-7d8c-43b2-b7da-55b8b3ff8830'),
(2, 2, 5, 'News', 'news', 1, 'Title', NULL, NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '47223a67-7a86-412e-820e-9da9f8441c12'),
(3, 3, 31, 'Staff Profile', 'staffProfile', 1, 'Title', NULL, NULL, '2015-09-18 13:12:21', '2015-09-18 14:27:00', '954eb0f7-59bf-42e7-a964-14b8f943ca8a'),
(4, 4, 22, 'Projects', 'ideabaseProjects', 1, 'Title', NULL, NULL, '2015-09-18 13:12:40', '2015-09-18 14:01:55', '923d67d9-a529-4494-aba1-9efa6ba2caa5'),
(5, 5, 18, 'Blog Post', 'blogPost', 1, 'Title', NULL, NULL, '2015-09-18 13:13:03', '2015-09-18 14:00:43', '594d8ccf-66ab-4280-b18c-2a1ce9b3edbd'),
(6, 6, 17, 'Awards', 'ideabaseAwards', 1, 'Title', NULL, NULL, '2015-09-18 13:13:17', '2015-09-18 13:58:11', 'e320fa3a-a259-47bc-98e4-963f619269b2'),
(7, 7, 23, 'Testimonials', 'testimonials', 1, 'Title', NULL, NULL, '2015-09-18 13:13:27', '2015-09-18 14:02:19', '7973efb4-076f-42c8-a3c6-7b0e276fe724'),
(8, 8, 20, 'Clients', 'clients', 1, 'Title', NULL, NULL, '2015-09-18 13:13:40', '2015-09-18 14:01:18', '9bf6368c-82ea-49d8-94ca-667f3b4704f3'),
(9, 9, 19, 'Case Study', 'caseStudy', 1, 'Title', NULL, NULL, '2015-09-18 13:13:48', '2015-09-18 14:01:05', '7a9acb86-6509-487f-b09b-1e5cde5d3a30'),
(10, 10, 52, 'Services', 'services', 1, 'Title', NULL, NULL, '2015-10-02 22:46:16', '2015-10-02 22:52:47', '900264af-6821-40bb-af8d-4a8b68d42b73');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
`id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 67, 3, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584986,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"programmer","5":"01234"}}', '2015-09-18 14:03:06', '2015-09-18 14:03:06', 'de2facca-8b63-4ade-92d8-8cd679a2622a'),
(2, 67, 3, 1, 'en_us', 2, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"programmer","5":"1234","27":["71"]}}', '2015-09-18 14:21:11', '2015-09-18 14:21:11', 'ad224823-1347-44c3-8909-93c5f39be418'),
(3, 67, 3, 1, 'en_us', 3, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"programmer","5":"1234","27":["71","72"]}}', '2015-09-18 14:27:20', '2015-09-18 14:27:20', '29c17416-45b2-4649-89d4-cccfe10b5cc4'),
(4, 73, 5, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"this is a title","slug":"this-is-a-title","postDate":1442928448,"expiryDate":null,"enabled":1,"fields":{"11":";oasidfjaso;ifj","10":"title"}}', '2015-09-22 13:27:28', '2015-09-22 13:27:28', 'd3013ec1-d014-4a7a-8e9f-1037d51cb9a7'),
(5, 73, 5, 1, 'en_us', 2, '', '{"typeId":"5","authorId":"1","title":"this is a title","slug":"this-is-a-title","postDate":1442928420,"expiryDate":null,"enabled":1,"fields":{"11":";oasidfjaso;ifj","10":"title"}}', '2015-09-22 13:29:50', '2015-09-22 13:29:50', 'd46d32a8-5571-4fe7-b7b2-66388953e6be'),
(6, 2, 1, 1, 'en_us', 1, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2015-09-22 13:47:16', '2015-09-22 13:47:16', '766812dc-a6bb-48f4-b721-c53cac3de233'),
(7, 74, 4, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"project title","slug":"project-title","postDate":1442932085,"expiryDate":null,"enabled":1,"fields":{"9":"asdf","8":"asdf"}}', '2015-09-22 14:28:05', '2015-09-22 14:28:05', '0272f764-6d65-457f-8049-824e948f5731'),
(8, 75, 6, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"This is an award","slug":"this-is-an-award","postDate":1442932398,"expiryDate":null,"enabled":1,"fields":{"15":"test ","14":{"date":"9\\/8\\/2015"},"13":"test ","16":"http:\\/\\/www.google.com"}}', '2015-09-22 14:33:18', '2015-09-22 14:33:18', '1366c4c4-cd6e-4724-a638-8de574196800'),
(9, 76, 9, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"This is an example case study","slug":"this-is-an-example-case-study","postDate":1442932593,"expiryDate":null,"enabled":1,"fields":{"25":"","24":""}}', '2015-09-22 14:36:33', '2015-09-22 14:36:33', 'eaea0d6e-d399-4093-878d-ec5c49fd3425'),
(10, 77, 8, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"This is a new client","slug":"this-is-a-new-client","postDate":1442932609,"expiryDate":null,"enabled":1,"fields":{"22":"","23":""}}', '2015-09-22 14:36:50', '2015-09-22 14:36:50', '69cc4004-8783-4870-8e1f-d17c778768e9'),
(11, 78, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"this is a testimonial","slug":"this-is-a-testimonial","postDate":1442932647,"expiryDate":null,"enabled":1,"fields":{"19":{"date":""},"17":"","18":""}}', '2015-09-22 14:37:27', '2015-09-22 14:37:27', 'cd8278da-7b84-4f51-ac7e-39588386583f'),
(12, 79, 2, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Another news post","slug":"another-news-post","postDate":1442932674,"expiryDate":null,"enabled":1,"fields":{"1":"<p>this is another news post<\\/p>","2":""}}', '2015-09-22 14:37:55', '2015-09-22 14:37:55', '1c19f54a-4651-4270-9175-7cab50e6cbe4'),
(13, 80, 5, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"This is a test blog title","slug":"this-is-a-test-blog-title","postDate":1442968075,"expiryDate":null,"enabled":1,"fields":{"11":"This is the blog content"}}', '2015-09-23 00:27:55', '2015-09-23 00:27:55', 'f3b1ae08-0c06-439c-9746-7a23e6c3ca64'),
(14, 75, 6, 1, 'en_us', 2, '', '{"typeId":"6","authorId":"1","title":"This is an award","slug":"this-is-an-award","postDate":1442932380,"expiryDate":null,"enabled":1,"fields":{"15":"test ","14":{"date":"9\\/8\\/2015"},"13":"","16":"http:\\/\\/www.google.com"}}', '2015-09-23 00:34:07', '2015-09-23 00:34:07', '11592017-9ebc-4229-bca9-f2ffa9b8107f'),
(15, 81, 6, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Award title","slug":"award-title","postDate":1442968647,"expiryDate":null,"enabled":1,"fields":{"15":"Yahoo","14":{"date":"9\\/8\\/2015"},"13":"","16":"http:\\/\\/www.google.com"}}', '2015-09-23 00:37:27', '2015-09-23 00:37:27', 'b87340f0-fb35-4a13-a183-e7affd510ca3'),
(16, 67, 3, 1, 'en_us', 4, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"Web Programmer","5":"1234","27":["83"]}}', '2015-09-25 13:19:48', '2015-09-25 13:19:48', 'f3a09396-badc-4fd5-a1ad-47aff68622be'),
(17, 67, 3, 1, 'en_us', 5, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"Web Programmer","5":"1234","27":["84"]}}', '2015-09-25 13:36:46', '2015-09-25 13:36:46', '34dbcf67-c5f4-4265-a44a-75db98239ea4'),
(18, 2, 1, 87, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"35":"This is a tagline"}}', '2015-09-29 15:12:27', '2015-09-29 15:12:27', '4fb13729-3232-4b1b-83d6-7746cf219b33'),
(19, 2, 1, 87, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"IdeaBase Kent New Website","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"35":"This is a tagline"}}', '2015-09-29 15:18:56', '2015-09-29 15:18:56', 'be8bb640-70f6-420e-b3ca-9aa4146dbc6b'),
(20, 2, 1, 87, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"IdeaBase Kent New Website","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"37":["92"],"36":"This is sample \\"About\\" text","35":"This is a tagline"}}', '2015-10-02 14:41:35', '2015-10-02 14:41:35', '92677fd1-db95-4779-842c-09de9f9d5359'),
(21, 2, 1, 87, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"IdeaBase Kent New Website","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"37":["93"],"36":"This is sample \\"About\\" text","35":"This is a tagline"}}', '2015-10-02 14:55:17', '2015-10-02 14:55:17', '346067cb-c620-4dae-b2c6-8c0526046dbd'),
(22, 95, 10, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Service 1","slug":"service-1","postDate":1443826413,"expiryDate":null,"enabled":1,"fields":{"21":"This is service 1","20":""}}', '2015-10-02 22:53:33', '2015-10-02 22:53:33', 'a9574fb6-cd75-4367-b1d0-077c7c5801f6'),
(23, 96, 10, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Service 2","slug":"service-2","postDate":1443826428,"expiryDate":null,"enabled":1,"fields":{"21":"Service 2","20":""}}', '2015-10-02 22:53:48', '2015-10-02 22:53:48', 'dd9ece5d-a425-4222-b053-dea55d417173'),
(24, 97, 10, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Service 3","slug":"service-3","postDate":1443826439,"expiryDate":null,"enabled":1,"fields":{"21":"This is service 3","20":""}}', '2015-10-02 22:53:59', '2015-10-02 22:53:59', 'aeeda297-c9a9-41ea-99c2-2e1890418297'),
(25, 98, 4, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Project Title 1","slug":"project-title-1","postDate":1444000642,"expiryDate":null,"enabled":1,"fields":{"9":"This is Project 1","8":""}}', '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'bc5abe8e-dcc7-4e75-8e46-f00e634cd557'),
(26, 99, 4, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Project Title 2","slug":"project-title-2","postDate":1444000655,"expiryDate":null,"enabled":1,"fields":{"9":"This is Project 2","8":""}}', '2015-10-04 23:17:35', '2015-10-04 23:17:35', '62f7dd8a-a8a5-453c-98c0-bd74064ed99a'),
(28, 101, 4, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Project 3","slug":"project-3","postDate":1444000679,"expiryDate":null,"enabled":1,"fields":{"9":"This is project 3","8":""}}', '2015-10-04 23:17:59', '2015-10-04 23:17:59', '6698fd5e-a329-49a8-99c8-5b0c0ec849b4'),
(29, 102, 9, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Example Case Study","slug":"example-case-study","postDate":1444002195,"expiryDate":null,"enabled":1,"fields":{"25":"","24":""}}', '2015-10-04 23:43:15', '2015-10-04 23:43:15', '0f7e4ee2-bce2-4728-9ee7-f0ba9c1b84f9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2015-09-18 13:02:12', '2015-09-18 13:02:12', '57ce97e4-e837-42d8-a203-66d9e42b89b0'),
(2, 'Staff Profile', '2015-09-18 13:16:04', '2015-09-18 13:16:04', 'ee6b13a7-3ac7-464b-8b7a-26d7ba4bb7df'),
(3, 'Projects', '2015-09-18 13:17:56', '2015-09-18 13:17:56', '530aed3b-0162-4498-a621-2aadbbb6d404'),
(4, 'Blog Post', '2015-09-18 13:18:34', '2015-09-18 13:18:34', '5bf3e2a8-0004-424d-9ae5-1b8421680225'),
(5, 'Awards', '2015-09-18 13:20:24', '2015-09-18 13:20:24', 'e2ae3b9f-6686-4406-809a-4b9ee79ec93d'),
(6, 'Testimonial', '2015-09-18 13:21:39', '2015-09-18 13:21:39', 'b5f43a93-be6b-4b38-9706-4fb8a31ee561'),
(7, 'Services', '2015-09-18 13:22:56', '2015-09-18 13:22:56', '09d4e99d-0425-449b-934a-c81c9df60932'),
(8, 'Clients', '2015-09-18 13:25:07', '2015-09-18 13:25:07', 'f81c278e-1c08-43f8-ac03-47b136725fa8'),
(9, 'Case Study', '2015-09-18 13:25:40', '2015-09-18 13:25:40', '5694e13b-fd6d-4174-a4bb-684609c4ab74'),
(10, 'Header', '2015-09-29 14:58:06', '2015-09-29 14:58:06', '2a713a00-4b52-4311-85a3-8bad1e7d0047'),
(11, 'Footer', '2015-09-29 14:59:04', '2015-09-29 14:59:04', 'fb4cd045-d137-45b0-99d6-b1ca8804a96c'),
(12, 'Homepage', '2015-09-29 15:08:45', '2015-09-29 15:08:45', 'd17852e1-7469-44af-a541-c5fa10baabce');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
`id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 2, 1, 1, 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '90cd67b0-c75a-4d5e-9589-81e85c22a97d'),
(3, 5, 2, 2, 0, 2, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '801144c5-5224-404a-89a9-4e8784982551'),
(4, 17, 3, 15, 0, 1, '2015-09-18 13:58:11', '2015-09-18 13:58:11', '9ce9b583-6fe8-4792-bf11-74f3c49cc2fb'),
(5, 17, 3, 14, 0, 2, '2015-09-18 13:58:11', '2015-09-18 13:58:11', 'd56e94a5-976e-4996-95ad-93b60e79d9ba'),
(6, 17, 3, 13, 0, 3, '2015-09-18 13:58:11', '2015-09-18 13:58:11', 'af07a093-a62b-4fb6-b5ab-fa81a9322cdb'),
(7, 17, 3, 16, 0, 4, '2015-09-18 13:58:11', '2015-09-18 13:58:11', 'c6a07d68-613c-4897-94b1-980757cb40fb'),
(8, 18, 4, 11, 0, 1, '2015-09-18 14:00:43', '2015-09-18 14:00:43', '78d6d363-37ef-4d64-ad3c-685804e7da79'),
(10, 19, 5, 25, 0, 1, '2015-09-18 14:01:05', '2015-09-18 14:01:05', 'e1b7912c-0ba7-487b-8b8b-df7b5089f159'),
(11, 19, 5, 24, 0, 2, '2015-09-18 14:01:05', '2015-09-18 14:01:05', '2595783c-a41a-4e7b-9fd1-ac29bc41f2ab'),
(12, 20, 6, 22, 0, 1, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '821bd6aa-b31e-4945-8fb2-4ed122e52a08'),
(13, 20, 6, 23, 0, 2, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '9a1e7c37-0daa-4b15-bd31-80ce7f1a2e20'),
(20, 22, 8, 9, 0, 1, '2015-09-18 14:01:55', '2015-09-18 14:01:55', '4bab53c1-fe83-40f2-a0fa-57b21421edc2'),
(21, 22, 8, 8, 0, 2, '2015-09-18 14:01:55', '2015-09-18 14:01:55', '1670754d-5a19-4a4c-a47d-5341ef13d0f3'),
(22, 23, 9, 19, 0, 1, '2015-09-18 14:02:19', '2015-09-18 14:02:19', '64dc6c68-da13-4eb0-9af7-ad9109e5e4c3'),
(23, 23, 9, 17, 0, 2, '2015-09-18 14:02:19', '2015-09-18 14:02:19', '07f0f58b-97fc-4fd8-b763-0c3cec95f652'),
(24, 23, 9, 18, 0, 3, '2015-09-18 14:02:19', '2015-09-18 14:02:19', 'b3c49a88-10dd-45b0-b351-0416369c093d'),
(39, 31, 12, 6, 0, 1, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '0f0b3af1-665b-48bd-b795-b487a36cec7d'),
(40, 31, 12, 4, 0, 2, '2015-09-18 14:27:00', '2015-09-18 14:27:00', 'e344b4ce-8f86-40da-9c37-43c1d1320b70'),
(41, 31, 12, 7, 0, 3, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '5c2729a5-6848-4447-b4eb-fe3be9058603'),
(42, 31, 12, 26, 0, 4, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '5aa84f7a-8d05-4000-8158-54768560c03e'),
(43, 31, 12, 3, 0, 5, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '2e8b4dad-810d-45c6-ace6-e3fdfcde05e2'),
(44, 31, 12, 5, 0, 6, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '4a342cdd-87ba-4e11-a261-3829bad0a97c'),
(45, 31, 12, 27, 0, 7, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '58136485-57e0-46ae-8cc9-c529cadd519c'),
(47, 48, 14, 37, 0, 1, '2015-10-02 14:37:34', '2015-10-02 14:37:34', '30e1d3f2-576a-4514-96cc-b4340c53d811'),
(48, 48, 14, 36, 0, 2, '2015-10-02 14:37:34', '2015-10-02 14:37:34', '64b95425-cf40-4129-adb4-bf3a8935c997'),
(49, 48, 14, 35, 0, 3, '2015-10-02 14:37:34', '2015-10-02 14:37:34', '0dce4dce-c1f2-4504-ae80-eff978ea0fb3'),
(50, 49, 15, 28, 0, 1, '2015-10-02 14:57:36', '2015-10-02 14:57:36', 'ff6ed4e1-5e97-4113-80f3-8ee0e6da1be9'),
(51, 50, 16, 30, 0, 1, '2015-10-02 14:58:11', '2015-10-02 14:58:11', 'fc921815-5930-4040-892e-5d696c672ce7'),
(52, 50, 16, 29, 0, 2, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '625fbadb-211e-4b4b-a1bd-368561be5916'),
(53, 50, 16, 34, 0, 3, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '0a79b4ef-6799-4b45-ab0f-1a76d81dbada'),
(54, 50, 16, 33, 0, 4, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '81f68aaa-e125-403e-a9e6-1b4c30cb6a0c'),
(55, 50, 16, 31, 0, 5, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '49988eb4-09b9-43bf-86c4-ae1bf9995130'),
(56, 50, 16, 32, 0, 6, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '54556b71-2d9f-4571-8981-d0c0be142fbe'),
(57, 52, 17, 21, 0, 1, '2015-10-02 22:52:47', '2015-10-02 22:52:47', '1aaa3ceb-0369-4387-9162-f49c6a34bae6'),
(58, 52, 17, 20, 0, 2, '2015-10-02 22:52:47', '2015-10-02 22:52:47', '297a9d1e-54e8-4c42-b78d-b5732299098a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
`id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'e28c218b-e99f-4146-9335-9121ca397ff4'),
(5, 'Entry', '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'da15daa6-ac64-4ebd-8413-0edfd64d2100'),
(13, 'Category', '2015-09-18 13:26:54', '2015-09-18 13:26:54', '9ffa17d5-bd8d-41f3-beee-24b19b1bd454'),
(14, 'Category', '2015-09-18 13:29:38', '2015-09-18 13:29:38', '79458dd6-3276-4b89-b119-da6abb5e09c0'),
(15, 'Category', '2015-09-18 13:33:23', '2015-09-18 13:33:23', '71701a3d-aa9c-429d-bdfd-72a35e57ee0b'),
(16, 'Category', '2015-09-18 13:48:04', '2015-09-18 13:48:04', 'a05de4fa-2242-4323-8b2e-4fd8126f7fc3'),
(17, 'Entry', '2015-09-18 13:58:11', '2015-09-18 13:58:11', '95f382b0-315e-4a50-b59f-86eba929218d'),
(18, 'Entry', '2015-09-18 14:00:43', '2015-09-18 14:00:43', '6956522f-42ef-4673-90fc-ef1164e17c35'),
(19, 'Entry', '2015-09-18 14:01:05', '2015-09-18 14:01:05', '67a18141-8942-43cb-9a62-f768577279d2'),
(20, 'Entry', '2015-09-18 14:01:18', '2015-09-18 14:01:18', 'ef745081-c0bb-4e1d-bd6e-7cc565d8ba5e'),
(22, 'Entry', '2015-09-18 14:01:55', '2015-09-18 14:01:55', 'ab3f7dda-b3de-4465-a848-f8dec608f537'),
(23, 'Entry', '2015-09-18 14:02:19', '2015-09-18 14:02:19', '44e80503-856a-4fa0-8cdc-a676dca6f9a6'),
(31, 'Entry', '2015-09-18 14:27:00', '2015-09-18 14:27:00', '6195e051-e935-4067-9ccc-e2d0a6ca945f'),
(38, 'Asset', '2015-09-25 13:10:45', '2015-09-25 13:10:45', 'fdf5099d-ca20-4ccc-9c1d-94c857513180'),
(42, 'Asset', '2015-09-25 13:48:24', '2015-09-25 13:48:24', 'eaeb003f-59b5-490a-9e7d-e2659661ed7d'),
(47, 'Asset', '2015-10-02 14:32:53', '2015-10-02 14:32:53', '3ea392ef-c607-466a-8c96-728524587848'),
(48, 'Entry', '2015-10-02 14:37:34', '2015-10-02 14:37:34', '6e1d7e4d-1b62-4a12-8e1e-e780cd1e700e'),
(49, 'GlobalSet', '2015-10-02 14:57:36', '2015-10-02 14:57:36', '14e3726e-9ab2-4b44-847d-461ecf5e92f7'),
(50, 'GlobalSet', '2015-10-02 14:58:11', '2015-10-02 14:58:11', '3612941a-8d8a-4526-8777-ea5a9b5b8bc7'),
(52, 'Entry', '2015-10-02 22:52:47', '2015-10-02 22:52:47', '384c7798-7729-4176-8a14-ae4099aa4b49');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
`id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 'Content', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'aa3b88a5-3a3e-4741-9f70-42bf377b9882'),
(3, 17, 'Awards', 1, '2015-09-18 13:58:11', '2015-09-18 13:58:11', '81ba020d-aa01-42a4-a051-61b660335e7d'),
(4, 18, 'Blog Post', 1, '2015-09-18 14:00:43', '2015-09-18 14:00:43', 'a8e10dae-1d68-4c0b-964f-19d091b32fd8'),
(5, 19, 'Case Study', 1, '2015-09-18 14:01:05', '2015-09-18 14:01:05', '539e92ae-a514-45fd-87b3-aa01a98f928b'),
(6, 20, 'Clients', 1, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '115adbd0-9a8a-4d3f-bb72-fd43e72d1c00'),
(8, 22, 'Projects', 1, '2015-09-18 14:01:55', '2015-09-18 14:01:55', '1c05c42a-7520-4820-97a4-c57c7c105288'),
(9, 23, 'Testimonial', 1, '2015-09-18 14:02:19', '2015-09-18 14:02:19', 'c081cae8-0a29-408c-b712-b03fe6d60081'),
(12, 31, 'Staff Profile', 1, '2015-09-18 14:27:00', '2015-09-18 14:27:00', '0b54e762-8094-4bd9-9cf5-d881ecd1b9e7'),
(14, 48, 'Homepage', 1, '2015-10-02 14:37:34', '2015-10-02 14:37:34', '6764e197-2ba2-4c3a-862f-d612a1721869'),
(15, 49, 'Content', 1, '2015-10-02 14:57:36', '2015-10-02 14:57:36', 'f97ef83f-09b5-4a21-935f-9d7b4fbd1b86'),
(16, 50, 'Content', 1, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '626e4d87-eae5-48c6-867b-042a720c66d7'),
(17, 52, 'Services', 1, '2015-10-02 22:52:47', '2015-10-02 22:52:47', '1331def1-a34f-404c-9ab6-ca860578cda6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
`id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2015-09-18 13:02:12', '2015-09-18 13:02:12', '9e89bf8c-72a5-450b-ba75-8824989298d8'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'd770ad6e-aa7c-40bf-839c-739506217a0a'),
(3, 2, 'Job Title', 'profileJobTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:16:23', '2015-09-18 13:16:23', '777a824e-dad6-4ebd-822f-7cc5adb212ec'),
(4, 2, 'Contact Email', 'profileContactEmail', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:16:47', '2015-09-18 13:16:47', 'c74e9c92-c453-4ed4-9455-1f2328df37f5'),
(5, 2, 'Office Phone Number', 'profileOfficePhoneNumber', 'global', '', 0, 'Number', '{"min":"0","max":"","decimals":"0"}', '2015-09-18 13:17:09', '2015-09-18 13:17:09', 'b90c909d-247c-495c-a677-26262f9d5e81'),
(6, 2, 'Biography / Description', 'profileBiographyDescription', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:17:28', '2015-09-18 13:17:28', '18985c0c-136f-49e0-a0d0-ae4a7c508a77'),
(7, 2, 'Fun Fact', 'profileFunFact', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:17:41', '2015-09-18 13:17:41', 'c935afb7-57ba-45ff-a42a-d7fd1088ef0d'),
(8, 3, 'Title of Project', 'projectTitleOfProject', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:18:14', '2015-09-18 13:18:14', 'd600af7f-9229-4381-8135-d878026b8d65'),
(9, 3, 'Description', 'projectDescription', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:18:24', '2015-09-18 13:18:24', '84427372-3369-480a-9edf-b715c370a552'),
(11, 4, 'Content', 'blogContent', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:18:58', '2015-09-18 13:18:58', 'df83f4ee-31d1-436f-ba1c-8bfa22253443'),
(13, 5, 'Title', 'awardTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:20:35', '2015-09-18 13:20:35', 'e5540779-9383-4e7c-bbd4-dc7d58502bc1'),
(14, 5, 'Date Awarded', 'awardDateAwarded', 'global', '', 0, 'Date', '{"minuteIncrement":"30","showDate":1,"showTime":0}', '2015-09-18 13:20:52', '2015-09-18 13:20:52', '0dfb5f0e-6796-4863-90a2-2f1edc6d7e15'),
(15, 5, 'Award Winning Project', 'awardWinningProject', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:21:07', '2015-09-18 13:21:07', 'faecfde3-91cf-4d8b-b928-411bd2d2e6d0'),
(16, 5, 'Winning Project URL', 'winningProjectUrl', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:21:30', '2015-09-18 13:21:30', '5d9c9acd-7274-4da5-876c-50ad83f4e149'),
(17, 6, 'Name of Quoter', 'testimonialNameOfQuoter', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:22:21', '2015-09-18 13:22:21', '02b7e16f-8d88-45f6-9a43-bca9acbacccf'),
(18, 6, 'Quote', 'testimonialQuote', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:22:32', '2015-09-18 13:22:32', 'e8bc7759-20ac-44f1-8554-f1de8c6eeb2a'),
(19, 6, 'Date of Quote', 'dateOfQuote', 'global', '', 0, 'Date', '{"minuteIncrement":"30","showDate":1,"showTime":0}', '2015-09-18 13:22:42', '2015-09-18 13:22:42', 'fd5c4806-58f8-471e-8624-6128fac0bcab'),
(20, 7, 'Service Title', 'serviceTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:23:07', '2015-09-18 13:23:07', '350533e2-2dfe-4b62-acfd-71408f3585d1'),
(21, 7, 'Service Description', 'serviceDescription', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:23:15', '2015-09-18 13:23:15', 'a84384d8-1861-4fbb-b713-e84f7576cbab'),
(22, 8, 'Client Title', 'clientTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:25:20', '2015-09-18 13:25:20', '3fad47b0-e0a0-40dc-a4a6-c611ae2c9edc'),
(23, 8, 'Primary Contact', 'primaryContact', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:25:30', '2015-09-18 13:25:30', '9b3d49b0-758e-46af-b381-0f5efafdd550'),
(24, 9, 'Title of Case Study', 'titleOfCaseStudy', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:25:51', '2015-09-18 13:25:51', '08b426b3-0307-42f7-86e3-cdc99ae9030a'),
(25, 9, 'Case Study Content', 'caseStudyContent', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:26:01', '2015-09-18 13:26:01', 'f74250ed-fb96-4b54-b6b0-5afbed4fca3a'),
(26, 2, 'Hierarchy', 'peopleHierarchy', 'global', '', 0, 'Categories', '{"source":"group:1","limit":"","selectionLabel":"Add a category"}', '2015-09-18 13:58:48', '2015-09-18 13:58:48', '35f49a75-c506-429e-889b-6d6cc13e4299'),
(27, 2, 'Staff Headshot', 'staffHeadshot', 'global', '', 0, 'Assets', '{"useSingleFolder":"1","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"\\/images\\/","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image","pdf"],"limit":"","selectionLabel":"Choose a bio picture"}', '2015-09-18 14:09:54', '2015-09-25 13:16:47', '7ee0ffd3-5f5b-495d-aaff-0c256d5ca16a'),
(28, 10, 'Header Logo', 'headerLogo', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"2","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-09-29 14:58:31', '2015-10-02 14:59:48', '20cf1b69-3578-4df0-be86-fdc53b63c981'),
(29, 11, 'Call To Action', 'callToAction', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-29 14:59:17', '2015-09-29 14:59:17', 'df4b8f80-05a3-4f09-bf3f-5f97a386b3f0'),
(30, 11, 'Address', 'footerAddress', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-29 14:59:37', '2015-09-29 14:59:37', 'ba1626cb-90a9-4b23-84e2-9a30fa247e9f'),
(31, 11, 'Phone Number', 'phoneNumber', 'global', '', 0, 'Number', '{"min":"0","max":"","decimals":"0"}', '2015-09-29 15:01:19', '2015-09-29 15:01:19', '70f2e2aa-ca03-4669-b260-04e2738b7f1c'),
(32, 11, 'Fax Number', 'faxNumber', 'global', '', 0, 'Number', '{"min":"0","max":"","decimals":"0"}', '2015-09-29 15:01:34', '2015-09-29 15:01:34', '9070a4b2-bb26-49b3-9b63-9a2e3321e7a4'),
(33, 11, 'Email', 'footerEmail', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-29 15:01:47', '2015-09-29 15:01:47', 'dea6a570-2974-48cd-95c7-0e09c30e8507'),
(34, 11, 'Map', 'footerMap', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-09-29 15:02:05', '2015-09-29 15:02:05', '4631333c-1c70-4016-9d7d-f7076f27f815'),
(35, 12, 'Main Tagline', 'mainTagline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-29 15:10:11', '2015-09-29 15:10:11', 'd0b4d406-4b2e-4200-ad5a-04025a89f4c0'),
(36, 12, 'About Text', 'homepageAboutText', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-02 14:30:58', '2015-10-02 14:30:58', '22b956ea-f932-4f04-b494-c3d93ccb6fc3'),
(37, 12, 'About Image', 'aboutImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:4"],"defaultUploadLocationSource":"2","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image","pdf"],"limit":"","selectionLabel":"Add an asset"}', '2015-10-02 14:34:00', '2015-10-02 14:34:00', '87791f52-c30f-4200-a3d1-2e1ed4c36907');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(89, 'Header', 'header', 49, '2015-09-29 14:19:07', '2015-10-02 14:57:36', '0724b525-53e8-443a-a8b0-280931ddccae'),
(90, 'Footer', 'footer', 50, '2015-09-29 14:19:11', '2015-10-02 14:58:11', 'ab566658-6a28-424d-907e-7991a4ea5e75');

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
`id` int(11) NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.4', 2693, '2.4.0', '2015-09-24 23:51:12', 2, 'IdeaBase Website', 'http://localhost', 'UTC', 1, 0, 'stable', '2015-09-18 13:02:07', '2015-09-29 14:12:04', '32522f96-e602-4fd0-b6e3-2d9325bf35cd');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_us', 1, '2015-09-18 13:02:07', '2015-09-18 13:02:07', '15a4d621-0c9b-4d2b-b81b-20f8cfc4005e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
`id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
`id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '6370546f-140f-4452-8d15-d0b2c9e1ac42'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'ca1b773c-11e4-4033-9b76-d8e40615c3d2'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '37b32184-3b7a-4176-9101-c5264b2fef95'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '1e9b3379-985d-453c-b0d0-18b831b96478'),
(5, NULL, 'm140829_000001_single_title_formats', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '71855e4c-d89b-4b25-955b-c956c2d63c8d'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '3b500ad1-a413-4e4d-bd04-4056956c9c39'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'd7f34ace-985e-44cd-b9ca-a933486ef2fe'),
(8, NULL, 'm141008_000001_elements_index_tune', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'cbc20501-e573-4bb3-8bcc-a9436fffd6b0'),
(9, NULL, 'm141009_000001_assets_source_handle', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'd131a352-ade1-47aa-b813-e04b3c8b1314'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '6fa27db1-3b7c-41df-9c8e-dedb05b5d56e'),
(11, NULL, 'm141030_000001_drop_structure_move_permission', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'ba5a374b-29dd-4961-9fd4-94290306ac32'),
(12, NULL, 'm141103_000001_tag_titles', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'ae3a11c9-423c-47fb-a914-56156ac21fd0'),
(13, NULL, 'm141109_000001_user_status_shuffle', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '81eec2f5-c45a-4c89-8237-5a25cd39060c'),
(14, NULL, 'm141126_000001_user_week_start_day', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '4e3588ed-4ff0-4446-92e3-1bdc74c2c3b3'),
(15, NULL, 'm150210_000001_adjust_user_photo_size', '2015-09-18 13:02:07', '2015-09-18 13:02:07', '2015-09-18 13:02:07', 'd348dc57-2e2b-4be8-9eaa-443e9e26bab7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
`id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
`id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
`id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 26, 67, NULL, 4, 1, '2015-09-25 13:36:46', '2015-09-25 13:36:46', '0744f332-7826-4d80-bad9-c57896b77be8'),
(13, 26, 67, NULL, 6, 2, '2015-09-25 13:36:46', '2015-09-25 13:36:46', '8efb41f6-d0ec-400a-8ad3-909fc889b781'),
(15, 37, 2, NULL, 93, 1, '2015-10-02 14:55:17', '2015-10-02 14:55:17', '1e692efc-f567-4e61-acd9-2f8c54317c0a'),
(17, 28, 89, NULL, 92, 1, '2015-10-04 23:25:56', '2015-10-04 23:25:56', '36e4bc2a-743f-40d9-ba88-123e1bfc2de0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE `craft_routes` (
`id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_routes`
--

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '["blog-post\\/{postDate.year}\\/{slug}"]', 'blog\\-post\\/\\{postDate\\.year\\}\\/\\{slug\\}', '/blogs/entry.html', 1, '2015-09-22 13:28:09', '2015-09-22 13:51:03', '7b48065d-ddd7-4355-b324-e1b45df8834d'),
(2, NULL, '["people-profile\\/{slug}"]', 'people\\-profile\\/\\{slug\\}', '/staffprofiles/entry.html', 2, '2015-09-22 13:34:26', '2015-09-22 13:49:35', '62cf7cfb-a545-405a-ab73-24ede2b172b4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en_us', ' ideabase '),
(1, 'firstname', 0, 'en_us', ''),
(1, 'lastname', 0, 'en_us', ''),
(1, 'fullname', 0, 'en_us', ''),
(1, 'email', 0, 'en_us', ' challahan ideabasekent com '),
(1, 'slug', 0, 'en_us', ''),
(2, 'slug', 0, 'en_us', ' homepage '),
(2, 'title', 0, 'en_us', ' ideabase kent new website '),
(2, 'field', 1, 'en_us', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon localhost will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(3, 'field', 1, 'en_us', ' craft is the cms that s powering localhost it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'en_us', ''),
(3, 'slug', 0, 'en_us', ''),
(3, 'title', 0, 'en_us', ' we just installed craft '),
(4, 'slug', 0, 'en_us', ' staff role '),
(4, 'title', 0, 'en_us', ' staff role '),
(5, 'slug', 0, 'en_us', ' leadership '),
(5, 'title', 0, 'en_us', ' leadership '),
(6, 'slug', 0, 'en_us', ' student '),
(6, 'title', 0, 'en_us', ' student '),
(7, 'slug', 0, 'en_us', ' professional advisory board '),
(7, 'title', 0, 'en_us', ' professional advisory board '),
(8, 'slug', 0, 'en_us', ' faculty advisory board '),
(8, 'title', 0, 'en_us', ' faculty advisory board '),
(9, 'slug', 0, 'en_us', ' staff member '),
(9, 'title', 0, 'en_us', ' staff member '),
(10, 'slug', 0, 'en_us', ' andrew keller '),
(10, 'title', 0, 'en_us', ' andrew keller '),
(11, 'slug', 0, 'en_us', ' audrey lingenfelter '),
(11, 'title', 0, 'en_us', ' audrey lingenfelter '),
(12, 'slug', 0, 'en_us', ' brendan bennett '),
(12, 'title', 0, 'en_us', ' brendan bennett '),
(13, 'slug', 0, 'en_us', ' caitlin smith '),
(13, 'title', 0, 'en_us', ' caitlin smith '),
(14, 'slug', 0, 'en_us', ' callie sullivan '),
(14, 'title', 0, 'en_us', ' callie sullivan '),
(15, 'slug', 0, 'en_us', ' christopher hallahan '),
(15, 'title', 0, 'en_us', ' christopher hallahan '),
(16, 'slug', 0, 'en_us', ' christopher uhler '),
(16, 'title', 0, 'en_us', ' christopher uhler '),
(17, 'slug', 0, 'en_us', ' courtney kaminski '),
(17, 'title', 0, 'en_us', ' courtney kaminski '),
(18, 'slug', 0, 'en_us', ' grace jacobsen '),
(18, 'title', 0, 'en_us', ' grace jacobsen '),
(19, 'slug', 0, 'en_us', ' joe dister '),
(19, 'title', 0, 'en_us', ' joe dister '),
(20, 'slug', 0, 'en_us', ' john vrhovnik '),
(20, 'title', 0, 'en_us', ' john vrhovnik '),
(21, 'slug', 0, 'en_us', ' kristin dowling '),
(21, 'title', 0, 'en_us', ' kristin dowling '),
(22, 'slug', 0, 'en_us', ' larrie king '),
(22, 'title', 0, 'en_us', ' larrie king '),
(23, 'slug', 0, 'en_us', ' mario fasolo '),
(23, 'title', 0, 'en_us', ' mario fasolo '),
(24, 'slug', 0, 'en_us', ' martha arbogast '),
(24, 'title', 0, 'en_us', ' martha arbogast '),
(25, 'slug', 0, 'en_us', ' nico ciani '),
(25, 'title', 0, 'en_us', ' nico ciani '),
(26, 'slug', 0, 'en_us', ' quintin steele '),
(26, 'title', 0, 'en_us', ' quintin steele '),
(27, 'slug', 0, 'en_us', ' rachel kozy '),
(27, 'title', 0, 'en_us', ' rachel kozy '),
(28, 'slug', 0, 'en_us', ' reilly hawkins '),
(28, 'title', 0, 'en_us', ' reilly hawkins '),
(29, 'slug', 0, 'en_us', ' robin tucker '),
(29, 'title', 0, 'en_us', ' robin tucker '),
(30, 'slug', 0, 'en_us', ' sarah holzer '),
(30, 'title', 0, 'en_us', ' sarah holzer '),
(31, 'slug', 0, 'en_us', ' todd thompson '),
(31, 'title', 0, 'en_us', ' todd thompson '),
(32, 'slug', 0, 'en_us', ' trang vu '),
(32, 'title', 0, 'en_us', ' trang vu '),
(33, 'slug', 0, 'en_us', ' trista finch '),
(33, 'title', 0, 'en_us', ' trista finch '),
(34, 'slug', 0, 'en_us', ' victoria ripepi '),
(34, 'title', 0, 'en_us', ' victoria ripepi '),
(35, 'slug', 0, 'en_us', ' project '),
(35, 'title', 0, 'en_us', ' project '),
(36, 'slug', 0, 'en_us', ' cci deans office '),
(36, 'title', 0, 'en_us', ' luminate templates '),
(37, 'slug', 0, 'en_us', ' jmc cci '),
(37, 'title', 0, 'en_us', ' career expo brand '),
(38, 'slug', 0, 'en_us', ' ongoing ksu athletics '),
(38, 'title', 0, 'en_us', ' ongoing ksu athletics '),
(39, 'slug', 0, 'en_us', ' cnb anniversary video '),
(39, 'title', 0, 'en_us', ' cnb anniversary video '),
(40, 'slug', 0, 'en_us', ' athletics annual report website '),
(40, 'title', 0, 'en_us', ' athletics annual report website '),
(41, 'slug', 0, 'en_us', ' summa diversity report '),
(41, 'title', 0, 'en_us', ' summa diversity report '),
(42, 'slug', 0, 'en_us', ' deweese marketing campaign '),
(42, 'title', 0, 'en_us', ' deweese marketing campaign '),
(43, 'slug', 0, 'en_us', ' neomed research '),
(43, 'title', 0, 'en_us', ' neomed research '),
(44, 'slug', 0, 'en_us', ' ocde video1 '),
(44, 'title', 0, 'en_us', ' ocde video1 '),
(45, 'slug', 0, 'en_us', ' ocde video2 '),
(45, 'title', 0, 'en_us', ' ocde video2 '),
(46, 'slug', 0, 'en_us', ' ametek print '),
(46, 'title', 0, 'en_us', ' ametek print '),
(47, 'slug', 0, 'en_us', ' ametek edg '),
(47, 'title', 0, 'en_us', ' ametek edg '),
(48, 'slug', 0, 'en_us', ' slis ongoing '),
(48, 'title', 0, 'en_us', ' slis ongoing '),
(49, 'slug', 0, 'en_us', ' ardleigh mineral website '),
(49, 'title', 0, 'en_us', ' ardleigh mineral website '),
(50, 'slug', 0, 'en_us', ' caest web update '),
(50, 'title', 0, 'en_us', ' caest web update '),
(51, 'slug', 0, 'en_us', ' marino eyetracking '),
(51, 'title', 0, 'en_us', ' marino eyetracking '),
(52, 'slug', 0, 'en_us', ' ideabase internal '),
(52, 'title', 0, 'en_us', ' ideabase internal '),
(2, 'field', 35, 'en_us', ' this is a tagline '),
(54, 'slug', 0, 'en_us', ' cci deans office '),
(54, 'title', 0, 'en_us', ' cci dean s office '),
(55, 'slug', 0, 'en_us', ' jmc cci '),
(55, 'title', 0, 'en_us', ' jmc cci '),
(56, 'slug', 0, 'en_us', ' comm '),
(56, 'title', 0, 'en_us', ' comm '),
(57, 'slug', 0, 'en_us', ' ksu athletics '),
(57, 'title', 0, 'en_us', ' ksu athletics '),
(58, 'slug', 0, 'en_us', ' consumers national bank '),
(58, 'title', 0, 'en_us', ' consumers national bank '),
(59, 'slug', 0, 'en_us', ' ksu athletics logo book '),
(59, 'title', 0, 'en_us', ' ksu athletics logo book '),
(60, 'slug', 0, 'en_us', ' athletics annual report '),
(60, 'title', 0, 'en_us', ' athletics annual report '),
(61, 'slug', 0, 'en_us', ' summa '),
(61, 'title', 0, 'en_us', ' summa '),
(62, 'slug', 0, 'en_us', ' deweese health center '),
(62, 'title', 0, 'en_us', ' deweese health center '),
(63, 'slug', 0, 'en_us', ' neomed '),
(63, 'title', 0, 'en_us', ' neomed '),
(64, 'slug', 0, 'en_us', ' boathouse marine '),
(64, 'title', 0, 'en_us', ' boathouse marine '),
(65, 'slug', 0, 'en_us', ' ocde '),
(65, 'title', 0, 'en_us', ' ocde '),
(66, 'slug', 0, 'en_us', ' ametek '),
(66, 'title', 0, 'en_us', ' ametek '),
(67, 'field', 6, 'en_us', ' this is a test bio '),
(67, 'field', 4, 'en_us', ' rhawkins ideabasekent com '),
(67, 'field', 7, 'en_us', ' test fun fact '),
(67, 'field', 26, 'en_us', ' staff role student '),
(67, 'field', 3, 'en_us', ' web programmer '),
(67, 'field', 5, 'en_us', ' 1234 '),
(67, 'slug', 0, 'en_us', ' reilly hawkins '),
(67, 'title', 0, 'en_us', ' reilly hawkins '),
(85, 'filename', 0, 'en_us', ' headshot jpg '),
(85, 'extension', 0, 'en_us', ' jpg '),
(85, 'kind', 0, 'en_us', ' image '),
(85, 'slug', 0, 'en_us', ''),
(85, 'title', 0, 'en_us', ' headshot '),
(86, 'filename', 0, 'en_us', ' serious leprechaun by ignacioleo jpg '),
(71, 'filename', 0, 'en_us', ' screen shot 2015 09 16 at 8 18 14 am png '),
(71, 'extension', 0, 'en_us', ' png '),
(71, 'kind', 0, 'en_us', ' image '),
(71, 'slug', 0, 'en_us', ''),
(71, 'title', 0, 'en_us', ' screen shot 2015 09 16 at 8 18 14 am '),
(67, 'field', 27, 'en_us', ' headshot '),
(86, 'kind', 0, 'en_us', ' image '),
(86, 'slug', 0, 'en_us', ''),
(86, 'title', 0, 'en_us', ' serious leprechaun by ignacioleo '),
(86, 'extension', 0, 'en_us', ' jpg '),
(73, 'field', 11, 'en_us', ' oasidfjaso ifj '),
(73, 'field', 10, 'en_us', ' title '),
(73, 'slug', 0, 'en_us', ' this is a title '),
(73, 'title', 0, 'en_us', ' this is a title '),
(74, 'field', 9, 'en_us', ' asdf '),
(74, 'field', 8, 'en_us', ' asdf '),
(74, 'slug', 0, 'en_us', ' project title '),
(74, 'title', 0, 'en_us', ' project title '),
(75, 'field', 15, 'en_us', ' test '),
(75, 'field', 14, 'en_us', ' 2015 09 08 '),
(75, 'field', 13, 'en_us', ''),
(75, 'field', 16, 'en_us', ' http www google com '),
(75, 'slug', 0, 'en_us', ' this is an award '),
(75, 'title', 0, 'en_us', ' this is an award '),
(76, 'field', 25, 'en_us', ''),
(76, 'field', 24, 'en_us', ''),
(76, 'slug', 0, 'en_us', ' this is an example case study '),
(76, 'title', 0, 'en_us', ' this is an example case study '),
(77, 'field', 22, 'en_us', ''),
(77, 'field', 23, 'en_us', ''),
(77, 'slug', 0, 'en_us', ' this is a new client '),
(77, 'title', 0, 'en_us', ' this is a new client '),
(78, 'field', 19, 'en_us', ''),
(78, 'field', 17, 'en_us', ''),
(78, 'field', 18, 'en_us', ''),
(78, 'slug', 0, 'en_us', ' this is a testimonial '),
(78, 'title', 0, 'en_us', ' this is a testimonial '),
(79, 'field', 1, 'en_us', ' this is another news post '),
(79, 'field', 2, 'en_us', ''),
(79, 'slug', 0, 'en_us', ' another news post '),
(79, 'title', 0, 'en_us', ' another news post '),
(80, 'field', 11, 'en_us', ' this is the blog content '),
(80, 'slug', 0, 'en_us', ' this is a test blog title '),
(80, 'title', 0, 'en_us', ' this is a test blog title '),
(81, 'field', 15, 'en_us', ' yahoo '),
(81, 'field', 14, 'en_us', ' 2015 09 08 '),
(81, 'field', 13, 'en_us', ''),
(81, 'field', 16, 'en_us', ' http www google com '),
(81, 'slug', 0, 'en_us', ' award title '),
(81, 'title', 0, 'en_us', ' award title '),
(87, 'email', 0, 'en_us', ' rhawkins ideabasekent com '),
(87, 'firstname', 0, 'en_us', ' reilly '),
(87, 'username', 0, 'en_us', ' rhawkins '),
(87, 'lastname', 0, 'en_us', ' hawkins '),
(87, 'fullname', 0, 'en_us', ' reilly hawkins '),
(87, 'slug', 0, 'en_us', ''),
(89, 'slug', 0, 'en_us', ''),
(90, 'slug', 0, 'en_us', ''),
(92, 'kind', 0, 'en_us', ' image '),
(92, 'extension', 0, 'en_us', ' jpg '),
(92, 'filename', 0, 'en_us', ' ideabase_logo_stackedoutlinecolor jpg '),
(92, 'slug', 0, 'en_us', ' ideabase logo stackedoutlinecolor '),
(92, 'title', 0, 'en_us', ' ideabase logo '),
(2, 'field', 37, 'en_us', ' screen shot 2015 10 02 at 10 53 43 am '),
(2, 'field', 36, 'en_us', ' this is sample about text '),
(93, 'filename', 0, 'en_us', ' screen shot 2015 10 02 at 10 53 43 am png '),
(93, 'extension', 0, 'en_us', ' png '),
(93, 'kind', 0, 'en_us', ' image '),
(93, 'slug', 0, 'en_us', ''),
(93, 'title', 0, 'en_us', ' screen shot 2015 10 02 at 10 53 43 am '),
(89, 'field', 28, 'en_us', ' ideabase logo stackedoutlinecolor '),
(90, 'field', 30, 'en_us', ' 123 example street kent oh 44240 '),
(90, 'field', 29, 'en_us', ' this is a call to action '),
(90, 'field', 34, 'en_us', ''),
(90, 'field', 33, 'en_us', ' rhawkins ideabasekent com '),
(90, 'field', 31, 'en_us', ' 123456 '),
(90, 'field', 32, 'en_us', ' 123457 '),
(94, 'filename', 0, 'en_us', ' screen shot 2015 10 02 at 6 23 17 pm png '),
(94, 'extension', 0, 'en_us', ' png '),
(94, 'kind', 0, 'en_us', ' image '),
(94, 'slug', 0, 'en_us', ' screen shot 2015 10 02 at 6 23 17 pm '),
(94, 'title', 0, 'en_us', ' footer map '),
(95, 'field', 21, 'en_us', ' this is service 1 '),
(95, 'field', 20, 'en_us', ''),
(95, 'slug', 0, 'en_us', ' service 1 '),
(95, 'title', 0, 'en_us', ' service 1 '),
(96, 'field', 21, 'en_us', ' service 2 '),
(96, 'field', 20, 'en_us', ''),
(96, 'slug', 0, 'en_us', ' service 2 '),
(96, 'title', 0, 'en_us', ' service 2 '),
(97, 'field', 21, 'en_us', ' this is service 3 '),
(97, 'field', 20, 'en_us', ''),
(97, 'slug', 0, 'en_us', ' service 3 '),
(97, 'title', 0, 'en_us', ' service 3 '),
(98, 'field', 9, 'en_us', ' this is project 1 '),
(98, 'field', 8, 'en_us', ''),
(98, 'slug', 0, 'en_us', ' project title 1 '),
(98, 'title', 0, 'en_us', ' project title 1 '),
(99, 'field', 9, 'en_us', ' this is project 2 '),
(99, 'field', 8, 'en_us', ''),
(99, 'slug', 0, 'en_us', ' project title 2 '),
(99, 'title', 0, 'en_us', ' project title 2 '),
(101, 'field', 8, 'en_us', ''),
(101, 'slug', 0, 'en_us', ' project 3 '),
(101, 'field', 9, 'en_us', ' this is project 3 '),
(101, 'title', 0, 'en_us', ' project 3 '),
(102, 'field', 25, 'en_us', ''),
(102, 'field', 24, 'en_us', ''),
(102, 'slug', 0, 'en_us', ' example case study '),
(102, 'title', 0, 'en_us', ' example case study ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
`id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'fd54f482-b429-4837-9d1a-536971debb0d'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'b3974c94-241f-4fde-bfc6-c09238349965'),
(3, 1, 'People Profile', 'People', 'structure', 1, 'staffprofiles/_entry', 1, '2015-09-18 13:12:21', '2015-09-22 13:45:33', '92108388-8ac6-45ff-a877-a41386c6294c'),
(4, NULL, 'Projects', 'ideabaseProjects', 'channel', 1, 'projects/_entry', 1, '2015-09-18 13:12:40', '2015-09-18 13:14:18', '5f5dff3b-17e4-4771-8abe-e6f505319f18'),
(5, NULL, 'Blog Post', 'blogPost', 'channel', 1, 'blogs/_entry', 1, '2015-09-18 13:13:03', '2015-09-22 13:59:27', 'bfd6556e-dbc2-481d-be30-91cb9ef0beea'),
(6, NULL, 'Awards', 'ideabaseAwards', 'channel', 1, 'awards/_entry', 1, '2015-09-18 13:13:17', '2015-09-18 13:13:17', 'ab35bd74-3b2d-4a67-a9af-720b7b7090b7'),
(7, NULL, 'Testimonials', 'testimonials', 'channel', 1, 'testimonials/_entry', 1, '2015-09-18 13:13:27', '2015-09-18 13:13:27', 'e86c6393-e343-4c7c-b6f8-11c7fbb9bfd9'),
(8, NULL, 'Clients', 'clients', 'channel', 1, 'clients/_entry', 1, '2015-09-18 13:13:40', '2015-09-18 13:13:40', '9ef87945-6823-4589-acf4-57360d62145e'),
(9, NULL, 'Case Study', 'caseStudy', 'channel', 1, 'casestudies/_entry', 1, '2015-09-18 13:13:48', '2015-09-22 14:26:37', 'e0a61c12-fd9f-486f-9ebb-37bbf2d602b7'),
(10, NULL, 'Services', 'services', 'channel', 1, 'services/_entry', 1, '2015-10-02 22:46:16', '2015-10-02 22:46:16', '7e398e88-a693-4369-932f-aaae8af3aa63');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
`id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 1, '__home__', NULL, '2015-09-18 13:02:12', '2015-09-18 13:02:12', '7ae25395-f357-420b-87ee-992cac000eb0'),
(2, 2, 'en_us', 1, 'news/{postDate.year}/{slug}', NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '5b477268-a7f3-4943-a147-1e4cd9c66db8'),
(3, 3, 'en_us', 0, 'people-profile/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:12:21', '2015-09-18 13:57:10', '8befe6bc-0a26-4a06-8e55-ad85c4d8de56'),
(4, 4, 'en_us', 0, 'projects/{postDate.year}/{slug}', NULL, '2015-09-18 13:12:40', '2015-09-18 13:14:18', 'd8161c6b-5ccc-4f8f-816a-136fc3f414f9'),
(5, 5, 'en_us', 0, 'blog-post/{postDate.year}/{slug}', NULL, '2015-09-18 13:13:03', '2015-09-18 13:14:03', '55f66e71-639f-462a-9808-7c4898a3eb6b'),
(6, 6, 'en_us', 0, 'awards/{slug}', NULL, '2015-09-18 13:13:17', '2015-09-18 13:13:17', 'a7d1b8f7-e72a-4207-bcec-f50ed98ae284'),
(7, 7, 'en_us', 0, 'testimonials/{slug}', NULL, '2015-09-18 13:13:27', '2015-09-18 13:13:27', 'bfbac423-7bc0-43b0-9682-bad8f4f51bf0'),
(8, 8, 'en_us', 0, 'clients/{slug}', NULL, '2015-09-18 13:13:40', '2015-09-18 13:13:40', '32a2150a-0f7c-4e9f-a1ac-7761c93ec9a8'),
(9, 9, 'en_us', 0, 'case-study/{slug}', NULL, '2015-09-18 13:13:48', '2015-09-18 13:13:48', '342869cf-2555-4700-aeb7-3db38df46abf'),
(10, 10, 'en_us', 0, 'services/{slug}', NULL, '2015-10-02 22:46:16', '2015-10-02 22:46:16', '95e2f8c2-ffaa-4032-b61c-b961519cc56d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '6035340a3ab82ce5c368e3992929de4a1456c6afczozMjoiOVE3MlVXcWlTempFUVpkeVN6RGh2bFdva0JrQmhpejciOw==', '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'd8fae58c-6437-4ca0-8cb3-5cd86d57d5f9'),
(2, 1, 'a447956357b0c65fa6113bff7523732be4681429czozMjoiZWExRGNRMjY4blpTaDdkZlBjUE1fRTFzbnBqZ1JXSUYiOw==', '2015-09-22 13:16:57', '2015-09-22 13:16:57', '69c4e836-28bc-4398-9fc4-38e585df0e2f'),
(3, 1, 'f81e4027735825fb03da77d22740f53715116ff4czozMjoibkppfnNmancwZFAycDFhOTRua2VOZ09qS1o0N0h5X0EiOw==', '2015-09-23 00:23:20', '2015-09-23 00:23:20', '9fb3d67f-095f-4d94-8045-7779235738ac'),
(4, 1, '53f7949b8a88bb3344cf7cc597fadbc3b3aa6257czozMjoiMFFkdEdHaUJfYWFmeVNFY3pjajREeGRQYm93bmFjNEIiOw==', '2015-09-24 22:00:31', '2015-09-24 22:00:31', '193f5ac1-9125-4af8-bb4a-b62b7c2426e7'),
(5, 1, '74fe4c6ab20cfc2b1c58ccb7017b06f9d5fdc5a2czozMjoicnFmTW5rNHpHQnBtWjU0Y0JlWWtaMkhZWDVKM35QZ1IiOw==', '2015-09-25 12:51:28', '2015-09-25 12:51:28', 'bbda42fc-2b9e-41d8-8a19-fedc4ff2a981'),
(6, 1, 'aa5556c683c394d53a5e258588a572db7156f371czozMjoiOUUxZk1JM35fb1RWd1kzSUpFMWxlNHlyS090elE1OG8iOw==', '2015-09-29 13:54:58', '2015-09-29 13:54:58', '8470b668-5481-4174-bef9-430ad595e4f1'),
(8, 87, 'b5aa6cda05ebaff4a2c64c38a37cf016f27a89f4czozMjoiUktuY3FMcXl+aU1zNExCWmdQcGhBSU1DUGhLdjhfTU8iOw==', '2015-09-29 14:17:48', '2015-09-29 14:17:48', 'd34e3fd4-3662-40b0-96f8-f92d8d3d4758'),
(9, 87, 'd4ced3c2fa80c9c17b989dbeb8e042be7701dbb7czozMjoiQUFfbGZ2SkxESk5iNmFyMEZtNUJtQUhzMTlsS2NCRTMiOw==', '2015-10-02 14:28:11', '2015-10-02 14:28:11', 'fa3cfee0-bcf7-4827-9167-e34b3ea37276'),
(10, 87, '5433177ca2b31d0fbdb81b7f12dae4709af11ed1czozMjoiYVZGVUpoV2Q0UEg1V05zeEQ5ZnFNV2xGR1hlcGd6bnMiOw==', '2015-10-02 22:22:13', '2015-10-02 22:22:13', 'aa208d07-bbb2-4664-87ad-710860ef5338'),
(11, 87, 'bcb09aeb6155cd256e16358536f6963afc26bc8eczozMjoiM2lfcnJUZWh3R3lYemk3OUp5Q2ZhUXpNajhuTFZkdFQiOw==', '2015-10-04 22:23:39', '2015-10-04 22:23:39', '996779b5-78c5-4289-b17a-d60b92c9e4d5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
`id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, NULL, 1, 1, 12, 0, '2015-09-18 13:27:24', '2015-09-18 13:27:24', 'e11ddc46-f575-4a90-9e09-c1a5ab0b9681'),
(2, 2, 4, 1, 2, 11, 1, '2015-09-18 13:27:24', '2015-09-18 13:27:24', '8b8f4490-fdb8-4e35-a118-0eab582b0d33'),
(3, 2, 5, 1, 3, 4, 2, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '26551d84-5695-4afd-9d78-6152f532147e'),
(4, 2, 6, 1, 5, 6, 2, '2015-09-18 13:28:41', '2015-09-18 13:28:41', '097becb1-5dcf-46c8-b83c-cbee3d25f811'),
(5, 2, 7, 1, 7, 8, 2, '2015-09-18 13:28:57', '2015-09-18 13:28:57', '26b158d8-6902-43e6-9256-5edc50d12dd3'),
(6, 2, 8, 1, 9, 10, 2, '2015-09-18 13:29:09', '2015-09-18 13:29:09', '4617b739-4a06-4424-a6da-9f26e694e153'),
(7, 4, NULL, 7, 1, 54, 0, '2015-09-18 13:33:56', '2015-09-18 13:33:56', '80c0c0b2-0892-4144-93a5-ff789a99d348'),
(8, 4, 9, 7, 2, 53, 1, '2015-09-18 13:33:56', '2015-09-18 13:33:56', 'f1cde231-1778-4665-8e93-bc5c2f3378ca'),
(9, 4, 10, 7, 3, 4, 2, '2015-09-18 13:34:35', '2015-09-18 13:34:35', 'f24c56b1-f0d5-45ce-90b1-f666fc218bd9'),
(10, 4, 11, 7, 5, 6, 2, '2015-09-18 13:34:52', '2015-09-18 13:34:52', '4dd478e9-8d3a-4ac7-b9a6-9c8b4ddcdaef'),
(11, 4, 12, 7, 7, 8, 2, '2015-09-18 13:35:01', '2015-09-18 13:35:01', 'eb0d850d-5f48-49f2-b2a4-cd94b3d734b3'),
(12, 4, 13, 7, 9, 10, 2, '2015-09-18 13:35:08', '2015-09-18 13:35:08', '3db6866f-3bf5-489a-a0f5-c8d36d053015'),
(13, 4, 14, 7, 11, 12, 2, '2015-09-18 13:35:18', '2015-09-18 13:35:18', '37453d1b-0867-4c91-a1f9-751d7178ff3c'),
(14, 4, 15, 7, 13, 14, 2, '2015-09-18 13:35:31', '2015-09-18 13:35:31', 'f36621c2-deee-4953-bc06-36974008e9e7'),
(15, 4, 16, 7, 15, 16, 2, '2015-09-18 13:35:41', '2015-09-18 13:35:41', 'd0550284-ab14-4316-a462-153b7c722ebe'),
(16, 4, 17, 7, 17, 18, 2, '2015-09-18 13:35:52', '2015-09-18 13:35:52', 'cf09cfc1-816e-45a1-af3f-ac83451f67c7'),
(17, 4, 18, 7, 19, 20, 2, '2015-09-18 13:36:00', '2015-09-18 13:36:00', '7199d779-93c4-411b-8c45-5d7bf4809eae'),
(18, 4, 19, 7, 21, 22, 2, '2015-09-18 13:36:05', '2015-09-18 13:36:05', 'e53a372a-e00e-4e03-9c20-be4cd60ce019'),
(19, 4, 20, 7, 23, 24, 2, '2015-09-18 13:36:14', '2015-09-18 13:36:14', '691c7479-ad66-4af5-bf98-b02d941c2817'),
(20, 4, 21, 7, 25, 26, 2, '2015-09-18 13:36:21', '2015-09-18 13:36:21', 'd3877c08-aab0-429c-a108-bfa3c4e39758'),
(21, 4, 22, 7, 27, 28, 2, '2015-09-18 13:36:29', '2015-09-18 13:36:29', 'b5f6a5de-4471-400b-bfe6-69380700f30f'),
(22, 4, 23, 7, 29, 30, 2, '2015-09-18 13:36:38', '2015-09-18 13:36:38', '71d45c73-2645-408d-bfad-f96ec4d1c931'),
(23, 4, 24, 7, 31, 32, 2, '2015-09-18 13:36:45', '2015-09-18 13:36:45', '551cf199-40ed-4d47-a493-4d68ed6fe595'),
(24, 4, 25, 7, 33, 34, 2, '2015-09-18 13:36:52', '2015-09-18 13:36:52', '10386693-bffd-4557-8ade-2f3f4ed7bd5b'),
(25, 4, 26, 7, 35, 36, 2, '2015-09-18 13:36:58', '2015-09-18 13:36:58', '67a19cf7-35a9-4c35-b127-6ee9f3d1e9bc'),
(26, 4, 27, 7, 37, 38, 2, '2015-09-18 13:37:06', '2015-09-18 13:37:06', '1ccdea58-346c-4772-bf68-665645cc949c'),
(27, 4, 28, 7, 39, 40, 2, '2015-09-18 13:37:12', '2015-09-18 13:37:12', '92b4b5f6-b407-4208-a752-741214a74317'),
(28, 4, 29, 7, 41, 42, 2, '2015-09-18 13:37:18', '2015-09-18 13:37:18', '40508c14-7be3-4d06-a9e7-42ff419b4ec6'),
(29, 4, 30, 7, 43, 44, 2, '2015-09-18 13:37:24', '2015-09-18 13:37:24', 'eb4529af-94d3-4804-a619-e261772a4984'),
(30, 4, 31, 7, 45, 46, 2, '2015-09-18 13:37:31', '2015-09-18 13:37:31', 'cad5eebf-7a0d-4778-941c-2f7914582d49'),
(31, 4, 32, 7, 47, 48, 2, '2015-09-18 13:37:36', '2015-09-18 13:37:36', 'd05ebc60-05f5-4946-9b76-90e16923df1b'),
(32, 4, 33, 7, 49, 50, 2, '2015-09-18 13:37:45', '2015-09-18 13:37:45', '540a22e9-7efb-467b-ae0c-8a9043af1dc7'),
(33, 4, 34, 7, 51, 52, 2, '2015-09-18 13:37:55', '2015-09-18 13:37:55', '6e9fa874-819c-48a5-bba5-c0d7a9202242'),
(34, 3, NULL, 34, 1, 38, 0, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '23d4f1b0-4433-48cd-8d99-402f40b68123'),
(35, 3, 35, 34, 2, 37, 1, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '04333bfc-6448-4003-a6a6-59aa22606ff1'),
(36, 3, 36, 34, 3, 4, 2, '2015-09-18 13:42:08', '2015-09-18 13:42:08', 'be1b0f77-c539-45c9-96f7-8ad40da7e676'),
(37, 3, 37, 34, 5, 6, 2, '2015-09-18 13:42:16', '2015-09-18 13:42:16', 'bb987494-e05a-4739-9212-b0df373e0e7d'),
(38, 3, 38, 34, 7, 8, 2, '2015-09-18 13:43:03', '2015-09-18 13:43:03', '09b4aada-ac7d-4230-b074-96e80153bce7'),
(39, 3, 39, 34, 9, 10, 2, '2015-09-18 13:43:16', '2015-09-18 13:43:16', 'f5a91480-f4e3-4def-aca6-9bd73ee22ee6'),
(40, 3, 40, 34, 11, 12, 2, '2015-09-18 13:43:40', '2015-09-18 13:43:40', '6cafe66f-64f1-47f6-b2d3-cd0e27cc0bf4'),
(41, 3, 41, 34, 13, 14, 2, '2015-09-18 13:43:50', '2015-09-18 13:43:50', 'c6ff5c55-2ec7-4723-ad7c-210cf7f9d88c'),
(42, 3, 42, 34, 15, 16, 2, '2015-09-18 13:44:03', '2015-09-18 13:44:03', 'b480e5af-a510-4cc4-a5b8-836faee1718c'),
(43, 3, 43, 34, 17, 18, 2, '2015-09-18 13:44:12', '2015-09-18 13:44:12', '72e5f863-af5d-45c0-b57a-cd4b125a72c0'),
(44, 3, 44, 34, 19, 20, 2, '2015-09-18 13:44:21', '2015-09-18 13:44:21', 'ad065937-52d3-4d13-8c74-3bbccee54ced'),
(45, 3, 45, 34, 21, 22, 2, '2015-09-18 13:44:27', '2015-09-18 13:44:27', '6e793e98-7dbf-437d-9180-1d7f3b2fa429'),
(46, 3, 46, 34, 23, 24, 2, '2015-09-18 13:44:33', '2015-09-18 13:44:33', 'bbc0f05f-74af-4051-bbcc-acf10dbed509'),
(47, 3, 47, 34, 25, 26, 2, '2015-09-18 13:44:42', '2015-09-18 13:44:42', 'abc10310-2488-40eb-b205-ac7e6d74cf03'),
(48, 3, 48, 34, 27, 28, 2, '2015-09-18 13:44:50', '2015-09-18 13:44:50', '4e6f0a75-bf04-410f-b481-e0da42ea4502'),
(49, 3, 49, 34, 29, 30, 2, '2015-09-18 13:45:03', '2015-09-18 13:45:03', '1e3af161-b658-4344-ab8c-7b19b3a59bcb'),
(50, 3, 50, 34, 31, 32, 2, '2015-09-18 13:45:12', '2015-09-18 13:45:12', '66386465-93de-48e1-a0f6-bf4f69f57796'),
(51, 3, 51, 34, 33, 34, 2, '2015-09-18 13:45:24', '2015-09-18 13:45:24', '3b5278c6-3183-414f-8502-67a7ca6df7f2'),
(52, 3, 52, 34, 35, 36, 2, '2015-09-18 13:45:42', '2015-09-18 13:45:42', '36febe60-d809-4b14-9031-9574264473e8'),
(53, 5, NULL, 53, 1, 28, 0, '2015-09-18 13:48:12', '2015-09-18 13:48:12', '644eab15-be37-4707-9cfe-5053401f7cf7'),
(55, 5, 54, 53, 2, 3, 1, '2015-09-18 13:48:24', '2015-09-18 13:48:24', '3455a844-46db-4ebe-b760-68391fce4445'),
(56, 5, 55, 53, 4, 5, 1, '2015-09-18 13:48:30', '2015-09-18 13:48:30', 'b3e0a129-e3db-41be-a43b-84587ff2c0ea'),
(57, 5, 56, 53, 6, 7, 1, '2015-09-18 13:48:34', '2015-09-18 13:48:34', 'c0e43775-8d5c-4035-b456-10924d0fc56e'),
(58, 5, 57, 53, 8, 9, 1, '2015-09-18 13:48:42', '2015-09-18 13:48:42', 'a4320c1b-2d05-4fe7-a6e2-04610846969f'),
(59, 5, 58, 53, 10, 11, 1, '2015-09-18 13:48:57', '2015-09-18 13:48:57', '884aa975-5b77-44cc-8b02-2e58d2cde4ea'),
(60, 5, 59, 53, 12, 13, 1, '2015-09-18 13:49:05', '2015-09-18 13:49:05', 'd8bde7d8-0d25-40df-91db-104e077be657'),
(61, 5, 60, 53, 14, 15, 1, '2015-09-18 13:49:16', '2015-09-18 13:49:16', '484af352-27f2-4e40-b3e6-75f6cfe393c9'),
(62, 5, 61, 53, 16, 17, 1, '2015-09-18 13:49:22', '2015-09-18 13:49:22', '41f1a20a-2890-46d2-921b-4e6da38ad0ff'),
(63, 5, 62, 53, 18, 19, 1, '2015-09-18 13:49:30', '2015-09-18 13:49:30', 'a4c11ac0-aa96-4c8b-8f19-705989d8cf97'),
(64, 5, 63, 53, 20, 21, 1, '2015-09-18 13:49:36', '2015-09-18 13:49:36', '3d6cde05-d10e-404f-a77c-66a7046a749c'),
(65, 5, 64, 53, 22, 23, 1, '2015-09-18 13:49:49', '2015-09-18 13:49:49', '01715182-3a7a-4a8b-8dd1-43756360d7b8'),
(66, 5, 65, 53, 24, 25, 1, '2015-09-18 13:50:26', '2015-09-18 13:50:26', '8f672cf7-0d2f-48d1-b151-dce571d4368d'),
(67, 5, 66, 53, 26, 27, 1, '2015-09-18 13:50:41', '2015-09-18 13:50:41', 'fdda366e-74a9-4860-83d9-ec80fd9d2940'),
(68, 1, NULL, 68, 1, 4, 0, '2015-09-18 14:03:06', '2015-09-18 14:03:06', '546da008-bb22-4fac-b2d4-67a1f97e267b'),
(69, 1, 67, 68, 2, 3, 1, '2015-09-18 14:03:06', '2015-09-18 14:03:06', 'b028ecb9-c07b-4459-9403-dd167f4037e1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
`id` int(11) NOT NULL,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '2015-09-18 13:15:00', '2015-09-22 13:45:33', 'cc4fa47c-9588-4fb2-969e-027f062e8713'),
(2, NULL, '2015-09-18 13:26:54', '2015-09-18 13:26:54', 'ad6fe85f-0c1c-4c0a-b364-c773173b9eb7'),
(3, NULL, '2015-09-18 13:29:38', '2015-09-18 13:29:38', '2b1f651a-4be3-4706-8917-f47ab0cbd4e6'),
(4, NULL, '2015-09-18 13:33:23', '2015-09-18 13:33:23', '7d764c02-efd8-47c1-a689-878df936357a'),
(5, NULL, '2015-09-18 13:48:04', '2015-09-18 13:48:04', '87b2a38b-605a-47c5-aeb2-08ed88567984');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
`id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"rhawkins@ideabasekent.com","senderName":"IdeaBase Website"}', '2015-09-18 13:02:12', '2015-09-18 13:02:12', '6d6447f2-f840-498f-b13f-a6a5972c1fe8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2015-09-18 13:02:12', '2015-09-18 13:02:12', '84cd9470-d561-4977-b614-f1686b369b26');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE `craft_tasks` (
`id` int(11) NOT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
`id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
`id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
`id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_usergroups`
--

INSERT INTO `craft_usergroups` (`id`, `name`, `handle`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Admin', 'admin', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'df5bfd41-1810-42a0-ac1f-f8be5510371a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
`id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_usergroups_users`
--

INSERT INTO `craft_usergroups_users` (`id`, `groupId`, `userId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 87, '2015-09-29 14:15:27', '2015-09-29 14:15:27', '34f0a814-30c9-4b76-ab47-33c665d79627');

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=104 ;

--
-- Dumping data for table `craft_userpermissions`
--

INSERT INTO `craft_userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'accesssitewhensystemisoff', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6eed2338-cdf2-4716-8cc4-af86d3326077'),
(2, 'accesscpwhensystemisoff', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6449e085-4ee2-4de7-a840-4e182341355d'),
(3, 'performupdates', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '33e11946-79a9-4cb3-9b12-3180d9ad95a3'),
(4, 'accesscp', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'c1e149dc-bb1e-416c-a6fb-21b513a91a94'),
(5, 'registerusers', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7ddab070-8582-4706-a9d6-df7b32cae4e4'),
(6, 'assignuserpermissions', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ab1a7fa6-ea0f-4d82-9939-bab179137f85'),
(7, 'changeuseremails', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'dad709e6-3450-4729-ad24-4994a2411a3c'),
(8, 'administrateusers', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '468034fe-7724-441e-b63a-a0dfedd12ae0'),
(9, 'editusers', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a4c5a1b8-0b5d-4455-b333-b0aa3f573129'),
(10, 'deleteusers', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '51abd8d0-4f55-4782-ba6b-c5771ff1f1f4'),
(11, 'createentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '30511d70-2e5c-44ec-9edd-fa817cd9da4f'),
(12, 'publishentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '301fa397-8513-4283-b29b-39429440dd7f'),
(13, 'deleteentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '256920b8-ed6b-4ebf-ad65-7276b2b03a89'),
(14, 'publishpeerentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ead57753-3a43-47c8-b516-62f47cc37e64'),
(15, 'deletepeerentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1b9e1088-3e84-4843-97cd-f629895ce483'),
(16, 'editpeerentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'cfb8a20e-b5a8-4564-a28c-c700e2678a59'),
(17, 'publishpeerentrydrafts:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '00be561e-4b93-4398-8c75-eee526956144'),
(18, 'deletepeerentrydrafts:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '41ed594d-962e-4817-b0f3-4d86e797feb0'),
(19, 'editpeerentrydrafts:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '83107018-88cd-4047-a6d5-0925637d4759'),
(20, 'editentries:6', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8e53943f-e0e2-423c-86ca-a0c0ca00096e'),
(21, 'createentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'dff29707-2365-414a-bcbc-6a5572582a1e'),
(22, 'publishentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a3b39dec-964f-4dae-b980-42477fc7415d'),
(23, 'deleteentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '06eff198-1381-4c1f-8251-a028c96ad288'),
(24, 'publishpeerentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b4a4d905-ce4a-4c57-857c-fcb1e53b686b'),
(25, 'deletepeerentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'faf182d0-d243-4e7f-a58f-f24249a7c6bf'),
(26, 'editpeerentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e8d4ada8-33ce-4985-bd36-b6df5c4ccc9d'),
(27, 'publishpeerentrydrafts:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '54fd481c-5379-4399-9d23-0ba9db04a4c4'),
(28, 'deletepeerentrydrafts:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a80c9da4-d21f-4780-8895-5e88805faad3'),
(29, 'editpeerentrydrafts:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a1d28978-ebcf-49bb-b1d5-e8043b49a81e'),
(30, 'editentries:5', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'aaf2e387-35d3-420b-8d66-1320445b8566'),
(31, 'createentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '204e0016-b522-4a43-b183-f469789a41ba'),
(32, 'publishentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '4934273e-cea2-4ff8-9a12-bd9b60eacb8c'),
(33, 'deleteentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3c31b413-072e-43d2-9994-25cb73384079'),
(34, 'publishpeerentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5da33657-2163-41a4-adbb-4a1b97e628c5'),
(35, 'deletepeerentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b8022673-6be8-49d7-a294-2f9ec7834a73'),
(36, 'editpeerentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '41fe8440-06fb-40f5-b9e5-3aec81ac3fb4'),
(37, 'publishpeerentrydrafts:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e484771b-1bac-4446-b0f1-99a24049e285'),
(38, 'deletepeerentrydrafts:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2e942e03-67dc-462a-a795-ee4945115d1d'),
(39, 'editpeerentrydrafts:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '750b89e6-2cb9-4269-9024-51638556cf09'),
(40, 'editentries:9', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '9772af3d-bba9-4364-933a-10275d957770'),
(41, 'createentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '11f6796a-986f-44b3-bf6e-41985969b31d'),
(42, 'publishentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1ea58d0c-cb5e-4d8d-bdd8-bd364c482fad'),
(43, 'deleteentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7860ebd6-38e1-466b-a131-8c918eba0c36'),
(44, 'publishpeerentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '48144fb9-69cc-4652-baa3-645c7c4b660a'),
(45, 'deletepeerentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '854bc91f-c030-49b1-b411-1a692446457e'),
(46, 'editpeerentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'c55c227b-165b-4013-86c4-9b8c20d6ad04'),
(47, 'publishpeerentrydrafts:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8337c3b3-1f3d-404f-9e64-0cc682350897'),
(48, 'deletepeerentrydrafts:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'cda7222b-8ae6-475a-b961-d2f573d74443'),
(49, 'editpeerentrydrafts:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '962571e7-39ca-48a8-93d4-f912b6f6c77e'),
(50, 'editentries:8', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '74697b5a-272d-4acb-90cb-d1387163a479'),
(51, 'publishentries:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3ebe7edf-cd0f-489d-9ba5-71de073889ce'),
(52, 'publishpeerentrydrafts:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '97d32faf-bba4-4c13-bf17-6a0b53c03f19'),
(53, 'deletepeerentrydrafts:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ca699680-07e3-48a6-b54b-882b2caf2b1e'),
(54, 'editpeerentrydrafts:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6594e86f-b9a8-4084-819a-c575d7f02f96'),
(55, 'editentries:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '183b735d-7dbd-4dd8-a76e-abecf0cc6127'),
(56, 'createentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '00633d37-306d-4b9f-8a1e-c069a5371b8c'),
(57, 'publishentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3bc690b9-4443-4401-804b-1b7d2e818659'),
(58, 'deleteentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f4d2e46f-d1ed-426a-965d-05a902e92b33'),
(59, 'publishpeerentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '66e2d39d-2c4e-49a0-b4da-312861b83ffa'),
(60, 'deletepeerentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b10fedd3-b11d-4bed-89ca-d28d6686f836'),
(61, 'editpeerentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '542d8963-66e3-4f67-bac9-3222598c9bb1'),
(62, 'publishpeerentrydrafts:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5024b824-9298-4a56-bf98-ce670250c8eb'),
(63, 'deletepeerentrydrafts:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ce90d6ce-5021-414b-bfa5-cb9e883bcfd3'),
(64, 'editpeerentrydrafts:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'fbb4d856-7aad-4594-b441-8c1bb41e60db'),
(65, 'editentries:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '081d8f59-8435-4077-8060-44b694c7eef5'),
(66, 'createentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f3a2ddf4-1b29-4d95-83d2-fb4aac7b2155'),
(67, 'publishentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b5f0a211-0692-400a-989c-7b3eee32daf6'),
(68, 'deleteentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f709339a-126c-4356-9c5b-3a2b6a24e76b'),
(69, 'publishpeerentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '71e75ac0-74d5-4865-bef7-1296886fd50d'),
(70, 'deletepeerentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '9d593c0c-7876-4814-b1da-f4b8afe49918'),
(71, 'editpeerentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '497a8bbc-0f32-405d-a8f7-88e646a85a49'),
(72, 'publishpeerentrydrafts:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '333cd2c5-fbb0-477e-96ba-008139268c1f'),
(73, 'deletepeerentrydrafts:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '58a7b858-563a-49b5-82f3-6028dd9c7196'),
(74, 'editpeerentrydrafts:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ca76a415-2dfc-4f8c-9477-beb83a7d351d'),
(75, 'editentries:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ad4abe37-4b1b-4220-b8ac-610dae079641'),
(76, 'createentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8775f727-996f-4913-ad32-7d7859853460'),
(77, 'publishentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5f61e3e0-d2ac-4771-ac10-c2afa19b8cb5'),
(78, 'deleteentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '55f860ae-33d6-4607-8496-8b3eec9e1d7f'),
(79, 'publishpeerentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '4eba62ff-1ce1-412b-af61-cc5fe9d79144'),
(80, 'deletepeerentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '9ae0c1ae-281f-4be6-b76d-80ea040102f7'),
(81, 'editpeerentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '54e52d52-b26d-452c-910d-07a77a1964cb'),
(82, 'publishpeerentrydrafts:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'cdfc7bd4-c029-4344-8df6-6345795a5411'),
(83, 'deletepeerentrydrafts:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '72113adb-6aff-4118-9458-2a393ae946e0'),
(84, 'editpeerentrydrafts:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '0c242513-a48e-4555-a328-bcd5b01f3ea2'),
(85, 'editentries:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5b37a246-b21d-4733-bf40-75fc3520d996'),
(86, 'createentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '16d6aa25-0fd8-442e-bef9-33c1b3f4bebf'),
(87, 'publishentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e9bced47-8e0f-46ab-a296-dec696690c89'),
(88, 'deleteentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3640422f-1b31-421e-b537-94cfd8158917'),
(89, 'publishpeerentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e5e6f950-e6c5-41ac-9608-c48b03ea8dda'),
(90, 'deletepeerentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '81ae1b1f-f78a-4802-a228-cc049d8958ad'),
(91, 'editpeerentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a60861d8-c283-45df-bf9b-e37c24d4dc86'),
(92, 'publishpeerentrydrafts:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'dee0b2a7-193d-4147-abcc-8673ea35961e'),
(93, 'deletepeerentrydrafts:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b1a761f5-83e3-4cb9-a212-d85b5bc34a5f'),
(94, 'editpeerentrydrafts:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '896b7e43-4148-4d91-953b-4f270c5db21e'),
(95, 'editentries:7', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5b7db73e-888e-423a-a282-2879ea0ead67'),
(96, 'editcategories:4', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6f5c9545-2929-48d7-b0ae-a7ef070354bd'),
(97, 'editcategories:2', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5cc03bb4-4329-42da-a2aa-9d12fda33de2'),
(98, 'editcategories:3', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1688c05c-448c-4f16-9beb-ec9c33399b5f'),
(99, 'editcategories:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e936194b-f4d0-4de6-bd2a-57abd8ab58ea'),
(100, 'uploadtoassetsource:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '73808043-323b-4c7f-9f02-274a39a79cb7'),
(101, 'createsubfoldersinassetsource:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'eaacc3f4-9576-4e26-ac0a-a3b1a07c0a51'),
(102, 'removefromassetsource:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '09e31b46-73c8-48c6-a3d4-123065c9c613'),
(103, 'viewassetsource:1', '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1946b61d-2cf0-43f4-9ec0-a8c711db80e3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
`id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=104 ;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

INSERT INTO `craft_userpermissions_usergroups` (`id`, `permissionId`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '9be9dfac-1cd6-4a20-b7da-cd540de2937e'),
(2, 2, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '85df7633-14fd-4b5d-8ead-7b9f54559dc4'),
(3, 3, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'debec496-ab49-4303-a203-0faa2a9f023c'),
(4, 4, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '920eb59d-9d60-4077-b62d-a1f02a7100a9'),
(5, 5, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7a9bd47f-1088-45dc-94d8-f3b902d9364c'),
(6, 6, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e99e56b2-3d67-4346-9830-cb03226e87cf'),
(7, 7, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2d345531-5ed2-498f-8fa8-a1329315f156'),
(8, 8, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '553ab8c5-49be-420e-aa35-88c8c65d0be1'),
(9, 9, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5c8e7f91-e618-4a9c-a56a-6d937fbbceda'),
(10, 10, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '01e5f19d-393e-4742-8b69-ceb317700d83'),
(11, 11, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'fee97634-2918-4db6-b911-886e926743a1'),
(12, 12, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '42dfa8c0-641d-4fd9-8f0f-7a6a86e72914'),
(13, 13, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '023d247f-b964-42a8-8864-633ff8ed7561'),
(14, 14, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '50a4a0ef-a1a8-4b0a-a08c-24ca8720514c'),
(15, 15, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'dc66a2b8-4a05-4c24-82c0-086c94aa8cf6'),
(16, 16, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5b6425df-c7f5-4441-a8bf-275ea451fd11'),
(17, 17, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '4930d216-914a-4523-8081-c313e700c6fa'),
(18, 18, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '04a5afcf-931a-4dad-958a-965eaebd3c58'),
(19, 19, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '90f8553f-5adc-40c6-bbaa-2d9cc6135384'),
(20, 20, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3d2c18d2-1314-4428-aac1-bf5470276591'),
(21, 21, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a3e33eb8-734e-4a86-8629-82c10585b05f'),
(22, 22, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8fd52f63-40c5-4c19-9854-ea7ccb9c3506'),
(23, 23, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'd8c140fe-98e8-475a-80d0-5209923f8c3c'),
(24, 24, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '65298f12-d9a8-4919-a7a7-fe61cf91bb44'),
(25, 25, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '4b44490c-c5e5-45c4-84bf-9c99c585e262'),
(26, 26, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'eb62c34c-7471-4ad9-b35e-eec689ec8429'),
(27, 27, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2e55a02e-fc7b-4680-b3c0-ba84d4be05fa'),
(28, 28, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ad35f602-1230-44dd-b583-efc074793589'),
(29, 29, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b1ca751c-b191-4559-a6d8-f5d3dab8e2d0'),
(30, 30, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'cde80559-5364-439e-a2dd-a4ee4bc8861b'),
(31, 31, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2ffaed52-a76e-4b8f-b4e6-9e5cf1e28354'),
(32, 32, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '070da51d-8d99-4bf1-83f6-be7300979c07'),
(33, 33, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6893e2eb-06b9-45dd-87e2-741307bf407b'),
(34, 34, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f79f3382-304a-4470-872e-7edbc2e38769'),
(35, 35, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '9d65f76a-ef32-4c8e-a8eb-ea61b1fafbe6'),
(36, 36, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '369736d2-35f6-4d4c-b2b0-b777cef00737'),
(37, 37, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b8fc2c62-8927-4461-83e6-8fe1474fd24c'),
(38, 38, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7d79c4e6-6696-4c26-ade8-24542321c669'),
(39, 39, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '38e148be-b157-4eb5-a2fb-d4ae885b026d'),
(40, 40, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b884ce0b-2839-45e9-8964-a841bb81b0f0'),
(41, 41, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3cade5e3-7d7a-42f8-b854-bf66c44f9442'),
(42, 42, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'c134a0ca-1f70-4bac-a03e-02995ef1334a'),
(43, 43, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6abe1482-5f95-410a-8c3a-9241b932e089'),
(44, 44, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2c588021-ebea-46ea-a4eb-cccc07b24669'),
(45, 45, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '713a51ce-5c22-4777-bb84-74c59a2e754e'),
(46, 46, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '71acbd96-b17e-4d07-95a4-aabd46af3341'),
(47, 47, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ca6d57d0-b230-44c1-bb30-7de72a0bf59c'),
(48, 48, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'fc83b343-1eba-4a0c-8e95-5fff2f45e5c2'),
(49, 49, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1d9c6634-db59-4706-b3ac-5b40808cda66'),
(50, 50, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'd541933d-fd9a-4e43-8749-a7cdbad8dcd8'),
(51, 51, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '22fe8952-70cc-4c13-b630-5e02b4dbf5dc'),
(52, 52, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '81d2c535-a1ce-424a-8183-428269dbbfba'),
(53, 53, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '280a2e5a-c67c-41b9-9066-5b57f5711319'),
(54, 54, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '5074a3ad-de7c-4da2-b673-f3da3c57e068'),
(55, 55, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a7ff178b-1ccc-429e-8a4e-d8aff74334b1'),
(56, 56, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '980af63c-6b2c-45b1-beec-b4b2880f421c'),
(57, 57, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '93754e24-78cd-4bd1-9574-fb742b3d5007'),
(58, 58, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '71c5e3f1-c50f-4962-95f0-6a93528a49de'),
(59, 59, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e02694b7-a825-4e47-8802-95292eddad6a'),
(60, 60, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '2a1f295f-bed4-4fdc-9cf6-7b88a1cb87ee'),
(61, 61, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'df983846-b047-43af-b82d-41debb6bce7e'),
(62, 62, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f4c6aca9-cdbc-44d1-aae6-c4fe0468f4be'),
(63, 63, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '93d01437-3c0c-45be-a0c1-f2369ce15e8e'),
(64, 64, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '87df8f3b-7a53-4dd9-aac4-9d65c5ef3f32'),
(65, 65, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a0802015-4001-47fb-aa90-e0d503095bca'),
(66, 66, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8a77c9b3-8d42-49b0-8d1c-54fb13350958'),
(67, 67, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '823d9c25-51b3-44f0-b6dc-004ccdc82c23'),
(68, 68, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1277a8ef-3367-4e2a-9d08-369fd3178287'),
(69, 69, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'd5419166-9abe-4779-b8dd-f4a8ec656d26'),
(70, 70, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'a8cae890-fb5b-4b0e-9a66-1d2f6a9dbdb5'),
(71, 71, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '28ddf100-973a-44b7-87a9-123e7455597b'),
(72, 72, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'b59db5c0-ec64-452d-9203-0f12bf0088ef'),
(73, 73, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '43208a13-f5bc-4d93-811e-9af73368b8e2'),
(74, 74, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1ccd941e-86de-4c62-ae18-d564d9805610'),
(75, 75, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f964a2e4-90d5-445f-b2f2-685455f8df14'),
(76, 76, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ba373846-b170-490d-b1e7-9eba8fd5aaff'),
(77, 77, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f336dc52-d2fe-46fc-90f6-9b1576d4e5a3'),
(78, 78, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '8f522af2-e230-4eba-9590-509cc5f4902b'),
(79, 79, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '6f438aee-dab9-4b75-9e5d-4d75a1968aa4'),
(80, 80, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '180928ad-3e2d-4d60-a90c-84f1298a0c35'),
(81, 81, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '81d6189a-9ece-4f84-bfc6-8cdc3eb770d0'),
(82, 82, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7ac9665f-5e46-4a6d-8c84-380d20e8a616'),
(83, 83, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7d1cde2b-9ea3-4f15-b91f-a9d67beee91d'),
(84, 84, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '33799a92-04fe-4a20-a920-7b8b3fd1de29'),
(85, 85, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '371652f2-7967-4a08-92e4-a226153f1146'),
(86, 86, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '4615eb98-c025-40cd-bea9-b456aa0d5503'),
(87, 87, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f399f158-36b4-41d5-81dc-8db87965b2d5'),
(88, 88, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'c03a4fbd-08c6-420b-bbee-03302a7f3dc0'),
(89, 89, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'f0870859-a3de-46bc-893f-816ca636bf0e'),
(90, 90, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1456256d-6983-4103-ae53-69fea7cf8ee6'),
(91, 91, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '33babd63-9c9a-4bf6-96a7-4e37820ccdde'),
(92, 92, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '3d0eb5a4-074f-4d6d-b2db-f277e41dad7a'),
(93, 93, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'e81c6097-f96a-4649-b70f-708c3300ab99'),
(94, 94, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7139e943-782f-45fa-85db-b84cbfb1ff97'),
(95, 95, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '79cf1ffd-00f0-47bb-9c22-d590ac7647f3'),
(96, 96, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ef574e6a-65f9-4828-9cca-6f93e80c2aa4'),
(97, 97, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '1e6fa318-f28e-424e-868e-2e960ec74ed2'),
(98, 98, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'd404deed-76b0-4ee4-b85f-7bfe573d37f0'),
(99, 99, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'ca5065d5-fac3-4a7f-80bc-b3dfa3674643'),
(100, 100, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', 'd3cb1425-249a-4f4e-b3be-df7df04f6fc6'),
(101, 101, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7ea0c972-b4d4-4233-a580-c4c26ceb36fd'),
(102, 102, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '7fba5e2d-4cfd-469a-8c52-4fb5423f53b9'),
(103, 103, 1, '2015-09-29 14:12:53', '2015-09-29 14:12:53', '72cb3d10-2257-4820-a631-2ae22e95497d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
`id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ideabase', NULL, '', '', 'challahan@ideabasekent.com', '$2y$13$ueONq56pu8QQWFki7O2Hhe2G2zkNwYxh1fMqmokaxVNR001Xt1Jz2', NULL, 0, 1, 0, 0, 0, 0, 0, '2015-09-29 13:59:01', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-09-29 14:14:21', '2015-09-18 13:02:10', '2015-09-29 14:14:21', '89045749-0471-4e13-ae5d-9900e0aa1a39'),
(87, 'rhawkins', NULL, 'Reilly', 'Hawkins', 'rhawkins@ideabasekent.com', '$2y$13$GyqyJfZ9mWUpMnrDkcJmN.UJq6.ZbJWJrfk/cTsRPkekTzK.9lkFW', NULL, 0, 1, 0, 0, 0, 0, 0, '2015-10-04 22:23:39', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-09-29 14:17:39', '2015-09-29 14:15:13', '2015-10-04 22:23:39', 'be638d1f-994c-4b21-97bf-c952a0bb1556');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, 1, '2015-09-18 13:02:15', '2015-09-18 13:02:15', '5021f1c7-43e2-4a8c-8f91-8f6aba865596'),
(2, 1, 'GetHelp', 2, NULL, 1, '2015-09-18 13:02:15', '2015-09-18 13:02:15', '6d14e4f0-dbe2-4b71-aa1f-99f18d164660'),
(3, 1, 'Updates', 3, NULL, 1, '2015-09-18 13:02:15', '2015-09-18 13:02:15', '6c9e4795-d7c1-45c5-b407-fdacfa7f9885'),
(4, 1, 'Feed', 4, '{"url":"http:\\/\\/feeds.feedburner.com\\/blogandtonic","title":"Blog & Tonic"}', 1, '2015-09-18 13:02:15', '2015-09-18 13:02:15', '73180494-f855-48eb-954b-3a535c1a82d1'),
(5, 87, 'RecentEntries', 1, NULL, 1, '2015-09-29 14:17:48', '2015-09-29 14:17:48', 'eb32d794-ee93-4ec1-a8b9-a2ebb9cdc3de'),
(6, 87, 'GetHelp', 2, NULL, 1, '2015-09-29 14:17:48', '2015-09-29 14:17:48', '68790fac-d0a4-470b-a4b3-f77c1a314194'),
(7, 87, 'Updates', 3, NULL, 1, '2015-09-29 14:17:48', '2015-09-29 14:17:48', '492b6824-d28c-4117-abab-ff90bbfd1d0a'),
(8, 87, 'Feed', 4, '{"url":"http:\\/\\/feeds.feedburner.com\\/blogandtonic","title":"Blog & Tonic"}', 1, '2015-09-29 14:17:48', '2015-09-29 14:17:48', 'b151c5bd-790f-49d2-9521-0b8768e526cc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`), ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`), ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`), ADD KEY `craft_assetfolders_parentId_fk` (`parentId`), ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`), ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`), ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`), ADD KEY `craft_categorygroups_structureId_fk` (`structureId`), ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`), ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`), ADD KEY `craft_content_title_idx` (`title`), ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_elements_type_idx` (`type`), ADD KEY `craft_elements_enabled_idx` (`enabled`), ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`), ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`), ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`), ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`), ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`), ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_entries_sectionId_idx` (`sectionId`), ADD KEY `craft_entries_typeId_idx` (`typeId`), ADD KEY `craft_entries_postDate_idx` (`postDate`), ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`), ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`), ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`), ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`), ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`), ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`), ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`), ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`), ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`), ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`), ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`), ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`), ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`), ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`), ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`), ADD KEY `craft_fields_context_idx` (`context`), ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`), ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_locales`
--
ALTER TABLE `craft_locales`
 ADD PRIMARY KEY (`locale`), ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`), ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`), ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`), ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`), ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`), ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`), ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`), ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`), ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`), ADD KEY `craft_relations_sourceId_fk` (`sourceId`), ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`), ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`), ADD KEY `craft_routes_locale_idx` (`locale`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
 ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`), ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`), ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`), ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_sessions_uid_idx` (`uid`), ADD KEY `craft_sessions_token_idx` (`token`), ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`), ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`), ADD KEY `craft_structureelements_root_idx` (`root`), ADD KEY `craft_structureelements_lft_idx` (`lft`), ADD KEY `craft_structureelements_rgt_idx` (`rgt`), ADD KEY `craft_structureelements_level_idx` (`level`), ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`), ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`), ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_tasks_root_idx` (`root`), ADD KEY `craft_tasks_lft_idx` (`lft`), ADD KEY `craft_tasks_rgt_idx` (`rgt`), ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexes for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`), ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
 ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`), ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`), ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`), ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`), ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`), ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`), ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`), ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`), ADD KEY `craft_users_verificationCode_idx` (`verificationCode`), ADD KEY `craft_users_uid_idx` (`uid`), ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
 ADD PRIMARY KEY (`id`), ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
