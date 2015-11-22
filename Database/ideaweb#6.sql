-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2015 at 12:58 PM
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
(92, 2, 4, 'IdeaBase_Logo_StackedOutlineColor.jpg', 'image', 4167, 4167, 630987, '2015-10-02 14:41:19', '2015-10-02 14:41:19', '2015-10-02 14:41:19', '1eb3214d-3467-445e-8107-fc73daa2f940'),
(93, 2, 4, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', 'image', 804, 356, 494705, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '2015-10-02 14:55:02', '09705c95-7ebd-47ed-92f0-ae316149a907'),
(94, 2, 4, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', 'image', 386, 314, 151291, '2015-10-02 22:23:54', '2015-10-02 22:23:54', '2015-10-02 22:23:54', '25aabe0c-c6ea-4aea-8f43-0f2afe5c2ca9'),
(103, 1, 1, 'ReillyHawkins.jpg', 'image', 225, 300, 8547, '2015-10-05 22:47:11', '2015-10-05 22:47:11', '2015-10-05 22:47:24', '793962d9-55a5-4732-9f06-f0a0a1ef49ac'),
(104, 1, 1, 'HeadshotImage.jpeg', 'image', 229, 220, 5247, '2015-10-05 23:04:44', '2015-10-05 23:04:44', '2015-10-05 23:04:44', 'd38c6bf5-ee59-4b4b-8c81-cb69bb5db9ca'),
(106, 1, 1, 'Another-Headshot.jpeg', 'image', 183, 275, 5918, '2015-10-05 23:05:27', '2015-10-05 23:05:27', '2015-10-05 23:05:27', 'd6b84674-1fe6-4b49-9c91-5f92bfdfeb82'),
(110, 1, 1, 'web-design.jpg', 'image', 2860, 1719, 1137719, '2015-10-06 15:02:55', '2015-10-06 15:02:55', '2015-10-06 15:02:55', '29148b90-6308-4547-a40a-c1d679b7ed50'),
(111, 1, 1, 'ideabasephoto-1500x683.jpg', 'image', 1500, 683, 231899, '2015-10-06 15:09:40', '2015-10-06 15:09:41', '2015-10-06 15:09:41', 'f0f4d24a-6d71-4b86-be66-f00428f27e92'),
(112, 1, 1, 'download-1.jpeg', 'image', 315, 160, 10096, '2015-10-06 15:25:26', '2015-10-06 15:25:26', '2015-10-06 15:25:26', '185bee11-8b6a-4e3c-96af-6f2e251f5778'),
(113, 1, 1, 'download-2.jpeg', 'image', 275, 183, 6545, '2015-10-06 15:25:40', '2015-10-06 15:25:40', '2015-10-06 15:25:40', '1d2513c4-66af-4544-91ec-f9b71220ee0e'),
(114, 1, 1, 'download.jpeg', 'image', 344, 146, 5963, '2015-10-06 15:25:55', '2015-10-06 15:25:55', '2015-10-06 15:25:55', '6b2e5ac4-e3b5-4fd9-969f-34b94e66537c'),
(115, 1, 1, 'Program-Project-Management.jpg', 'image', 692, 692, 48646, '2015-10-14 23:51:53', '2015-10-14 23:51:53', '2015-10-14 23:51:53', 'f20d2e8d-da6d-481a-b038-2200c85f064f'),
(116, 1, 1, 'projectmanagement.jpg', 'image', 600, 430, 61050, '2015-10-14 23:52:08', '2015-10-14 23:52:08', '2015-10-14 23:52:08', '997b0d66-f2c0-42a6-a79d-f906f4ea17f4'),
(133, 1, 1, 'BrendanBennett-350x500_1.jpg', 'image', 350, 500, 43198, '2015-11-05 15:52:14', '2015-11-05 15:52:14', '2015-11-05 15:52:14', '59968c90-1fee-4e5e-80eb-b1c84851ee2b'),
(134, 1, 1, 'CHRIS-EDIT-350x500_1.jpg', 'image', 350, 500, 50429, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '2015-11-05 15:52:15', '60abc1a8-366e-4874-9773-0602ec44e0f7'),
(135, 1, 1, 'Dowling_1.jpg', 'image', 350, 500, 27641, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '2015-11-05 15:52:15', 'cf53919f-f54f-4332-83da-ef1916cae727'),
(136, 1, 1, 'John-Headshot-350x500_1.jpg', 'image', 350, 500, 54575, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '2015-11-05 15:52:16', '4c72f809-a704-4598-8f55-1efa287615db'),
(137, 1, 1, 'MarioFasolo-350x500_1.jpg', 'image', 350, 500, 46498, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '2015-11-05 15:52:16', '4ee1727f-3fdd-46c7-9616-430efb2885a3'),
(138, 1, 1, 'NicoCiani-350x500_1.jpg', 'image', 350, 500, 26147, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '2015-11-05 15:52:16', 'c7e86312-e158-4b27-a361-dbe34e64b9e0'),
(139, 1, 1, 'QuintinSteele-350x500_1.jpg', 'image', 350, 500, 49054, '2015-11-05 15:52:17', '2015-11-05 15:52:17', '2015-11-05 15:52:17', '3276360d-eda9-4cad-b28a-c0239386fcf9'),
(140, 1, 1, 'Rachel1-350x500_1.jpg', 'image', 350, 500, 49183, '2015-11-05 15:52:17', '2015-11-05 15:52:17', '2015-11-05 15:52:17', '23cedbdd-6acc-4823-a846-657967e3a525'),
(141, 1, 1, 'ReillyHawkins1-350x500_1.jpg', 'image', 350, 500, 46743, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '2015-11-05 15:52:18', '0000a9d7-d798-47bc-a67b-4eddfe8efaeb'),
(142, 1, 1, 'Victoria1-350x500_1.jpg', 'image', 350, 500, 35300, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '2015-11-05 15:52:18', 'bf7accc5-b60d-4568-a943-b3a12acc18e7'),
(145, 2, 4, 'ideabaselogo.svg', 'image', 1000, 270, 6650, '2015-11-05 16:05:25', '2015-11-05 16:05:28', '2015-11-05 16:05:28', '1e53c2ac-6890-4ff4-bb47-9f513d6ae515');

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
(1, 'Images', 'images', 'Local', '{"path":"images\\/headshots\\/","url":"http:\\/\\/localhost\\/prod\\/images\\/headshots\\/"}', 1, 80, '2015-09-18 14:08:55', '2015-11-05 16:02:40', 'de3fe392-445b-4778-9367-8ccf281ef8e8'),
(2, 'Other Images', 'otherImages', 'Local', '{"path":"images\\/","url":"http:\\/\\/localhost\\/prod\\/images\\/"}', 2, 63, '2015-10-02 14:32:53', '2015-10-30 15:08:28', '621e7c51-7bbd-4dc0-a6ee-6d9f507ced5d');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 71, NULL, NULL, '_thumb', 1, 0, 1, '2015-09-25 13:43:11', '2015-09-25 13:43:11', '2015-10-22 17:56:15', '83c880d5-9d5c-40db-aa92-0e692c08ea82'),
(7, 93, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-02 14:55:22', '2015-10-02 14:55:22', '2015-10-02 14:55:22', '726a4014-4eac-44e7-847a-c9650ae6b375'),
(8, 92, 'IdeaBase_Logo_StackedOutlineColor.jpg', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:24', '2a57f336-a540-4fed-8d38-2d0206edfa41'),
(9, 93, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:22', '644247a9-f54e-48d4-b6b1-82350fe809bd'),
(10, 94, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', NULL, '_thumb', 2, 1, 0, '2015-10-02 22:37:22', '2015-10-02 22:37:22', '2015-10-02 22:37:22', 'bb8ae67e-80a6-4c3f-921c-01b0e250977d'),
(11, 94, 'Screen-Shot-2015-10-02-at-6.23.17-PM.png', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-02 22:39:59', '2015-10-02 22:39:59', '2015-10-02 22:39:59', 'b917536d-807c-46c0-ab70-44020981289a'),
(12, 92, 'IdeaBase_Logo_StackedOutlineColor.jpg', NULL, '_aboutImageTransform', 2, 1, 0, '2015-10-04 23:30:08', '2015-10-04 23:30:08', '2015-10-04 23:30:10', 'e08b8824-d900-4275-9e0e-b9462f679fe7'),
(13, 103, 'ReillyHawkins.jpg', NULL, '_thumb', 1, 1, 0, '2015-10-05 22:49:16', '2015-10-05 22:49:16', '2015-10-05 22:49:16', 'daa7ad13-7543-4a32-b68f-7705de79737d'),
(14, 103, 'ReillyHawkins.jpg', NULL, '_aboutImageTransform', 1, 1, 0, '2015-10-05 22:50:45', '2015-10-05 22:50:45', '2015-10-05 22:50:45', 'bce41691-6e76-4397-b1dd-408230d3ae11'),
(15, 104, 'HeadshotImage.jpeg', NULL, '_thumb', 1, 1, 0, '2015-10-05 23:09:41', '2015-10-05 23:09:41', '2015-10-05 23:09:42', '1fa0f30b-e347-4afb-9bd0-f7205755fe08'),
(16, 106, 'Another-Headshot.jpeg', NULL, '_thumb', 1, 1, 0, '2015-10-05 23:09:41', '2015-10-05 23:09:41', '2015-10-05 23:09:42', '5fe5d225-1bfe-4189-81f8-479c7109fdb7'),
(17, 104, 'HeadshotImage.jpeg', NULL, '_aboutImageTransform', 1, 1, 0, '2015-10-05 23:09:56', '2015-10-05 23:09:56', '2015-10-05 23:09:56', '568bb86e-e62f-4b5b-b55c-dbd6add791b5'),
(18, 106, 'Another-Headshot.jpeg', NULL, '_aboutImageTransform', 1, 1, 0, '2015-10-05 23:09:56', '2015-10-05 23:09:56', '2015-10-05 23:09:57', 'e81ae361-050c-43fb-9a54-4e3a3b0258d5'),
(19, 103, 'ReillyHawkins.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-10-05 23:17:57', '2015-10-05 23:17:57', '2015-10-05 23:17:57', 'a8af786d-b138-4343-84ac-81e207a5c918'),
(20, 104, 'HeadshotImage.jpeg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-10-05 23:17:57', '2015-10-05 23:17:57', '2015-10-05 23:17:57', '381eaeb4-8b63-4b02-bee9-8bbc9cb68554'),
(21, 106, 'Another-Headshot.jpeg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-10-05 23:17:57', '2015-10-05 23:17:57', '2015-10-05 23:17:57', 'b82aefa3-2d2b-42b0-9511-d609bbe9b058'),
(22, 110, 'web-design.jpg', NULL, '_thumb', 1, 1, 0, '2015-10-06 15:03:19', '2015-10-06 15:03:19', '2015-10-06 15:03:20', '25889087-9413-469e-b76c-9202d60b8c13'),
(23, 111, 'ideabasephoto-1500x683.jpg', NULL, '_thumb', 1, 1, 0, '2015-10-06 15:10:26', '2015-10-06 15:10:26', '2015-10-06 15:10:27', 'a21e9124-88c1-49e1-9ddb-42d1b24a104f'),
(24, 111, 'ideabasephoto-1500x683.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-06 15:16:06', '2015-10-06 15:16:06', '2015-10-06 15:16:07', '4f8ba11a-2969-446e-b6cb-782cc34951b5'),
(25, 110, 'web-design.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-06 15:16:24', '2015-10-06 15:16:24', '2015-10-06 15:16:25', '78293cce-cbcf-4ce9-88e3-efd4a210150b'),
(26, 115, 'Program-Project-Management.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-14 23:54:11', '2015-10-14 23:54:11', '2015-10-14 23:54:11', '5fe2b823-236c-4f5d-b826-191d0d74a4ee'),
(27, 116, 'projectmanagement.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-14 23:54:11', '2015-10-14 23:54:11', '2015-10-14 23:54:11', '5ae090e3-5a69-40ec-8c97-86c295901efe'),
(28, 114, 'download.jpeg', NULL, '_thumb', 1, 1, 0, '2015-10-16 15:09:21', '2015-10-16 15:09:21', '2015-10-16 15:09:22', 'e29309cb-21d1-4e93-8a76-00b87eb8ae00'),
(29, 112, 'download-1.jpeg', NULL, '_thumb', 1, 1, 0, '2015-10-16 15:09:21', '2015-10-16 15:09:21', '2015-10-16 15:09:22', '3bb1dc77-04fe-4305-a8a5-cfd734251ada'),
(30, 113, 'download-2.jpeg', NULL, '_thumb', 1, 1, 0, '2015-10-16 15:09:21', '2015-10-16 15:09:21', '2015-10-16 15:09:22', '92ddabd0-12af-41f5-9e67-6a2d15e656cd'),
(31, 115, 'Program-Project-Management.jpg', NULL, '_thumb', 1, 1, 0, '2015-10-16 15:09:21', '2015-10-16 15:09:21', '2015-10-16 15:09:22', 'a1172bfc-706a-4248-8804-f522e8b03dd6'),
(32, 116, 'projectmanagement.jpg', NULL, '_thumb', 1, 1, 0, '2015-10-16 15:09:21', '2015-10-16 15:09:21', '2015-10-16 15:09:22', '44d5aaeb-cfa2-481d-b6e9-90bd061e7311'),
(33, 106, 'Another-Headshot.jpeg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-22 18:02:11', '2015-10-22 18:02:11', '2015-10-22 18:02:11', 'a09b6094-8ec7-407f-a4a1-fd74d7e3a068'),
(34, 103, 'ReillyHawkins.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-10-22 18:02:17', '2015-10-22 18:02:17', '2015-10-22 18:02:17', 'bcb4f92e-4686-4edf-9e45-2ff52d0d7c05'),
(35, 93, 'Screen-Shot-2015-10-02-at-10.53.43-AM.png', NULL, '_featuredImageTop', 2, 1, 0, '2015-10-23 15:46:09', '2015-10-23 15:46:09', '2015-10-23 15:46:10', 'e864a3f1-f0de-446c-aaf6-5922ef2094cd'),
(36, 135, 'Dowling_1.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-11-05 15:52:57', '2015-11-05 15:52:57', '2015-11-05 15:52:58', 'dd1e02f3-7a87-4b1c-85c7-5d7810a64dc7'),
(37, 135, 'Dowling_1.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-11-05 15:58:04', '2015-11-05 15:58:04', '2015-11-05 15:58:04', '58c3752b-354b-4662-b06b-76ca63af547f'),
(38, 141, 'ReillyHawkins1-350x500_1.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-11-05 16:14:40', '2015-11-05 16:14:40', '2015-11-05 16:14:41', '7cc72164-cdc2-44bc-8ffd-c0be3c5e07ec'),
(39, 134, 'CHRIS-EDIT-350x500_1.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-11-05 16:14:58', '2015-11-05 16:14:58', '2015-11-05 16:14:58', 'ec8bc979-ed1f-436d-8e93-65c87d2cab21'),
(40, 134, 'CHRIS-EDIT-350x500_1.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-11-05 16:19:21', '2015-11-05 16:19:21', '2015-11-05 16:19:22', '569626a0-8f7c-4932-857c-5bfd70df0197'),
(41, 139, 'QuintinSteele-350x500_1.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-11-05 16:19:21', '2015-11-05 16:19:21', '2015-11-05 16:19:22', '73105196-96a1-4d1b-93fc-feab6f7d9bdc'),
(42, 141, 'ReillyHawkins1-350x500_1.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-11-05 16:19:21', '2015-11-05 16:19:21', '2015-11-05 16:19:22', '1a0e8e81-1444-4cd0-8a0c-7b657d6e4c08'),
(43, 142, 'Victoria1-350x500_1.jpg', NULL, '_featuredImageTop', 1, 1, 0, '2015-11-05 22:26:30', '2015-11-05 22:26:30', '2015-11-05 22:26:31', '0083ccd8-40b8-4874-97d5-ca078aab2826'),
(44, 142, 'Victoria1-350x500_1.jpg', NULL, '_meetTheTeamHeadshot', 1, 1, 0, '2015-11-06 14:24:34', '2015-11-06 14:24:34', '2015-11-06 14:24:35', '8776a0da-abdc-4078-aeab-73477b8b93bf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Thumb', 'thumb', 'crop', 'center-center', 500, 350, NULL, NULL, '2015-09-25 13:43:03', '2015-09-25 13:43:03', '2015-09-25 13:43:03', '78ff8498-df60-4a6b-82ec-5710d253bd6a'),
(2, 'About Image Transform', 'aboutImageTransform', 'fit', 'center-center', 175, 350, NULL, NULL, '2015-10-02 14:54:34', '2015-10-02 14:50:26', '2015-10-02 14:54:34', 'ac120356-d977-4533-8112-5e82023d44c2'),
(3, 'Meet The Team Headshot', 'meetTheTeamHeadshot', 'fit', 'center-center', 125, 125, NULL, NULL, '2015-10-05 23:17:45', '2015-10-05 23:17:45', '2015-10-05 23:17:45', 'f52b00d5-12fb-49cd-bed1-10b97c04a599'),
(4, 'Featured Image Top', 'featuredImageTop', 'fit', 'center-center', 250, 600, NULL, NULL, '2015-10-06 15:15:47', '2015-10-06 15:15:47', '2015-10-06 15:15:47', '97d0fa2e-b5d1-4bd8-b926-fd375b22845c');

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
(5, 1, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '4959e819-ed21-43f8-82f9-b6a9179ac9db'),
(6, 1, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'e04e04c2-51eb-4988-bd47-6d9bb4a473fa'),
(7, 1, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'c99bdcc1-5bac-47f5-848f-d26aafeae74e'),
(8, 1, '2015-09-18 13:29:09', '2015-09-18 13:29:09', 'd0967b2d-9098-4f66-91e5-db6272c5aee9'),
(122, 5, '2015-10-30 14:05:26', '2015-10-30 14:05:26', 'baedc9db-b1b9-4e8f-b8af-91eaeb46b4c1'),
(123, 5, '2015-10-30 14:05:39', '2015-10-30 14:05:46', '7536f044-837d-4f3b-bc31-6dc57ce77f6f');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `hasUrls`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 13, 'Staff Hierarchy', 'staffHierarchy', 1, '', '2015-09-18 13:26:54', '2015-09-18 13:26:54', '5b30bff9-dc0a-43ba-8708-0bd5f0054e4b'),
(5, 6, 60, 'Case Study or Blog', 'caseStudyOrBlog', 1, '', '2015-10-30 14:05:08', '2015-10-30 14:05:08', '35beac86-ba19-45c6-88f5-9e031294731c');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

INSERT INTO `craft_categorygroups_i18n` (`id`, `groupId`, `locale`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 'staff-hierarchy/{slug}', '{parent.uri}/{slug}', '2015-09-18 13:26:54', '2015-09-18 13:26:54', 'de640107-19fe-40b9-bfe9-d787786c2807'),
(5, 5, 'en_us', 'case-study-or-blog/{slug}', '{parent.uri}/{slug}', '2015-10-30 14:05:08', '2015-10-30 14:05:08', '538904fe-ce09-4638-98bf-169cf2b75eec');

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
  `field_profileOfficePhoneNumber` text COLLATE utf8_unicode_ci,
  `field_profileBiographyDescription` text COLLATE utf8_unicode_ci,
  `field_profileFunFact` text COLLATE utf8_unicode_ci,
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
  `field_callToAction` text COLLATE utf8_unicode_ci,
  `field_footerAddress` text COLLATE utf8_unicode_ci,
  `field_phoneNumber` int(10) unsigned DEFAULT '0',
  `field_faxNumber` int(10) unsigned DEFAULT '0',
  `field_footerEmail` text COLLATE utf8_unicode_ci,
  `field_mainTagline` text COLLATE utf8_unicode_ci,
  `field_homepageAboutText` text COLLATE utf8_unicode_ci,
  `field_staffIndexHeader` text COLLATE utf8_unicode_ci,
  `field_staffIndexDescription` text COLLATE utf8_unicode_ci,
  `field_workForIdeabaseTitle` text COLLATE utf8_unicode_ci,
  `field_workForIdeabaseDescription` text COLLATE utf8_unicode_ci,
  `field_processHeader` text COLLATE utf8_unicode_ci,
  `field_linkToProjects` text COLLATE utf8_unicode_ci,
  `field_caseStudyContent` text COLLATE utf8_unicode_ci,
  `field_basicContent` text COLLATE utf8_unicode_ci,
  `field_qualityHeadline` text COLLATE utf8_unicode_ci,
  `field_qualityDescription` text COLLATE utf8_unicode_ci,
  `field_workForIdeabaseLink` text COLLATE utf8_unicode_ci,
  `field_designHeadline` text COLLATE utf8_unicode_ci,
  `field_projectsHeadline` text COLLATE utf8_unicode_ci,
  `field_projectsDescription` text COLLATE utf8_unicode_ci,
  `field_projectHeadline` text COLLATE utf8_unicode_ci,
  `field_projectsSubDescription` text COLLATE utf8_unicode_ci,
  `field_caseStudyHeadline` text COLLATE utf8_unicode_ci,
  `field_caseStudySubDescription` text COLLATE utf8_unicode_ci,
  `field_classroomExperienceHeadline` text COLLATE utf8_unicode_ci,
  `field_classroomExperienceDescription` text COLLATE utf8_unicode_ci,
  `field_collegeDegree` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=148 ;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_profileJobTitle`, `field_profileContactEmail`, `field_profileOfficePhoneNumber`, `field_profileBiographyDescription`, `field_profileFunFact`, `field_projectDescription`, `field_blogContent`, `field_awardTitle`, `field_awardDateAwarded`, `field_awardWinningProject`, `field_winningProjectUrl`, `field_testimonialNameOfQuoter`, `field_testimonialQuote`, `field_dateOfQuote`, `field_serviceTitle`, `field_serviceDescription`, `field_clientTitle`, `field_primaryContact`, `field_callToAction`, `field_footerAddress`, `field_phoneNumber`, `field_faxNumber`, `field_footerEmail`, `field_mainTagline`, `field_homepageAboutText`, `field_staffIndexHeader`, `field_staffIndexDescription`, `field_workForIdeabaseTitle`, `field_workForIdeabaseDescription`, `field_processHeader`, `field_linkToProjects`, `field_caseStudyContent`, `field_basicContent`, `field_qualityHeadline`, `field_qualityDescription`, `field_workForIdeabaseLink`, `field_designHeadline`, `field_projectsHeadline`, `field_projectsDescription`, `field_projectHeadline`, `field_projectsSubDescription`, `field_caseStudyHeadline`, `field_caseStudySubDescription`, `field_classroomExperienceHeadline`, `field_classroomExperienceDescription`, `field_collegeDegree`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:02:10', '2015-09-29 14:14:21', 'c9efc88a-0ef4-42e8-a874-420814e978a8'),
(2, 2, 'en_us', 'IdeaBase Kent New Website', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'Research-based, student-powered design solutions.', '<p>We’re a Kent State student-powered design agency located in downtown Kent, OH. Our student employees represent a variety of backgrounds and disciplines, united in their passion for creating meaningful designs to support our clients’ design initiatives. </p><p><br>At IdeaBase, we’re determined to deliver quality design solutions while equipping our student team with lasting experiential learning opportunities.<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Our design process is tailored to you.', 'Tried-and-True', '<p>Our processes deliver results. No matter the industry or design challenge, our past work speaks for itself.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:02:12', '2015-11-05 16:38:59', '406291b4-9b84-4bf9-93dd-31388cc7e591'),
(3, 3, 'en_us', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</p><!--pagebreak--><p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p><p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'd0ed3828-b61a-4440-aaca-51f55e6f6762'),
(5, 5, 'en_us', 'Leadership', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '1d19a514-7f8f-4701-8e4f-aec93b354143'),
(6, 6, 'en_us', 'Student', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'aeb4d309-fd34-4400-b76b-08666ac20618'),
(7, 7, 'en_us', 'Professional Advisory Board', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'ac6c7632-739f-4c37-ab14-0911cdd90035'),
(8, 8, 'en_us', 'Faculty Advisory Board', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 13:29:09', '2015-09-18 13:29:09', 'b59c92f0-c32a-4ea5-88f3-9072dc7c828c'),
(67, 67, 'en_us', 'Reilly Hawkins', NULL, 'Web Programmer', 'rhawkins@ideabasekent.com', '440.221.9193', '<p>This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. </p><p><br></p><p>This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. <br></p>', 'I legally had my name changed in Kindergarten. It used to be Andrew Quaid Hawkins, however there were 4 other “Andrews” in my class so my mom wanted it to be more unique. Changed to Reilly William Hawkins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 14:03:06', '2015-11-05 16:13:49', '2dcc7681-41ac-4879-a0d2-d885574ce6f9'),
(71, 71, 'en_us', 'Screen-Shot-2015-09-16-at-8.18.14-AM', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-18 14:20:35', '2015-09-18 14:20:35', 'f010c7f4-c646-4b6b-a9c2-587325882ee2'),
(73, 73, 'en_us', 'this is a title', NULL, NULL, NULL, '0', NULL, NULL, NULL, ';oasidfjaso;ifj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 13:27:28', '2015-10-30 15:28:22', '0688f53f-a08f-4f61-8bb6-285289f400ff'),
(74, 74, 'en_us', 'project title', NULL, NULL, NULL, '0', NULL, NULL, 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '21168dd3-1995-4ae9-970d-4cf6c4d942a3'),
(75, 75, 'en_us', 'This is an award', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '', '2015-09-08 00:00:00', 'test ', 'http://www.google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 14:33:18', '2015-11-06 15:45:44', '72e44865-5437-4ce2-954f-58951415978e'),
(77, 77, 'en_us', 'This is a new client', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 14:36:49', '2015-09-22 14:36:49', '80572a89-0b06-4a5d-960c-5bd86103eb83'),
(78, 78, 'en_us', 'this is a testimonial', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 14:37:27', '2015-11-06 15:46:55', 'afe029d3-5e79-4b71-bed7-c910bfc5e3d2'),
(79, 79, 'en_us', 'Another news post', '<p>this is another news post</p>', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-22 14:37:54', '2015-09-22 14:37:54', '62d5f5cf-5e68-41bd-abc7-0cfc2cd16ed0'),
(80, 80, 'en_us', 'This is a test blog title', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'This is the blog content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-23 00:27:55', '2015-10-30 15:28:22', '15b59b22-a157-4186-88cc-2a21b3963351'),
(81, 81, 'en_us', 'ADDY AWARD', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'ADDY AWARD', '2015-09-08 00:00:00', '', 'http://www.google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-23 00:37:27', '2015-11-06 15:33:45', 'a787eb6a-8098-44f0-b1cf-1fd8f52f6e0d'),
(87, 87, 'en_us', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-29 14:15:13', '2015-09-29 14:15:27', '29608ba5-35c3-4ec9-a72e-85a4bc27737d'),
(89, 89, 'en_us', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-29 14:19:07', '2015-11-05 16:05:31', 'a3e92c54-56b8-469e-afa5-87dc32d799a6'),
(90, 90, 'en_us', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This is a call to action', '123 Example Street Kent, OH 44240', 123456, 123457, 'rhawkins@ideabasekent.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-29 14:19:11', '2015-10-23 15:50:20', '2b55ea27-2a40-4f98-bcde-68e8a652d03d'),
(92, 92, 'en_us', 'IdeaBase Logo', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 14:41:19', '2015-10-04 23:29:47', '38cfc99e-e39b-4548-aace-187a9dd7d12e'),
(93, 93, 'en_us', 'Screen-Shot-2015-10-02-at-10.53.43-AM', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '8ae8f3e0-d0d0-4de1-b80b-c79270dcd9a0'),
(94, 94, 'en_us', 'Footer-Map', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '8ff649da-14e1-4224-973f-439e56411985'),
(95, 95, 'en_us', 'Service 1', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'This is service 1', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 22:53:33', '2015-10-06 15:25:31', 'c64674d9-be94-4315-87ec-b38d43a3312c'),
(96, 96, 'en_us', 'Service 2', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Service 2', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 22:53:48', '2015-10-06 15:25:44', '40b2a538-7c2d-4108-8545-01285ce4bead'),
(97, 97, 'en_us', 'Service 3', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'This is service 3', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-02 22:53:59', '2015-10-06 15:25:58', '20fc2604-60f2-47d9-a043-75d1b1d48a62'),
(98, 98, 'en_us', 'Project Title 1', NULL, NULL, NULL, '0', NULL, NULL, 'This is Project 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'e4f5841c-dad8-4e7c-83e7-231033460904'),
(99, 99, 'en_us', 'Project Title 2', NULL, NULL, NULL, '0', NULL, NULL, 'This is Project 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-04 23:17:35', '2015-11-05 15:40:31', 'cd881295-79af-432f-a3ac-424f9a1be8cb'),
(101, 101, 'en_us', 'Project 3', NULL, NULL, NULL, '0', NULL, NULL, 'This is a description of project 3. This is a description of project 3. This is a description of project 3. This is a description of project 3. This is a description of project 3.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-04 23:17:59', '2015-10-14 23:52:49', '28470dca-4648-4a01-bf95-a90a14c6dc3f'),
(103, 103, 'en_us', 'Hawkins Reilly', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-05 22:47:11', '2015-10-05 22:47:32', '1742472e-8bc2-49de-a57e-e8b18d0459b9'),
(104, 104, 'en_us', 'HeadshotImage', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-05 23:04:44', '2015-10-05 23:04:44', '368c2dfb-5a8f-48f0-8f62-461eb4cd1449'),
(106, 106, 'en_us', 'Another-Headshot', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-05 23:05:27', '2015-10-05 23:05:27', '43885332-6d95-4c98-be2a-c3f4b1fcdd2a'),
(108, 108, 'en_us', 'Staff Profile Index', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Our students are passionate about design.', 'Our student employees come from backgrounds of all shapes and sizes, bringing with them a fresh and versatile approach that inspires our designs. With backgrounds in Visual Communication Design, Public Relations, User Experience, Advertising, Computer Information Systmes, Digital Sciences, Marketing and Communications, our diverse team members have one thing in common, they''re passionate about design.', 'Work for IdeaBase', 'We empower our student employees to imagine, create and deliver quality designs whil gaining real-world experience on client-facing projects. Our studen employees get to put their design skills to the test, build their resumes and jumpstart their careers.', NULL, NULL, NULL, NULL, 'Committed to quality.', '<p>We’re committed to delivering quality work to our clients. That’s why our student employees work under the guidance of our professional staff from Kent State’s College of Communication of Information and a professional advisory board. Our student employees interact directly with clients, developing proposals, managing projects and handling all stages of design production.</p>', '<p>Learn more about <a href="http://www.google.com">working for IdeaBase.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 14:08:01', '2015-11-05 14:39:36', '2678f2c6-9572-4609-b1de-6434f12b3901'),
(109, 109, 'en_us', 'Process Index', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Our design process is tailored to you.', 'This is a Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 14:37:07', '2015-10-23 14:25:09', '72d8ae98-81e1-446a-b75f-f17b51ddaf18'),
(110, 110, 'en_us', 'web-design', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 15:02:55', '2015-10-06 15:02:55', '490af9f6-ffd0-4ff3-aaab-92e308f0658b'),
(111, 111, 'en_us', 'ideabasephoto-1500x683', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 15:09:40', '2015-10-06 15:09:40', 'd65294ea-8ca6-4741-83e0-a09a73bf9d59'),
(112, 112, 'en_us', 'download-1', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 15:25:26', '2015-10-06 15:25:26', '1c0319ac-55c6-4c80-b984-5c4d4054a38f'),
(113, 113, 'en_us', 'download-2', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 15:25:40', '2015-10-06 15:25:40', '22fccd40-e2b0-4f9d-92f6-0513d718471f'),
(114, 114, 'en_us', 'download', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-06 15:25:55', '2015-10-06 15:25:55', 'cfe6a0fd-3177-4280-92b9-05eab7adca2e'),
(115, 115, 'en_us', 'Program-Project-Management', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-14 23:51:53', '2015-10-14 23:51:53', 'bcaa1bb8-1cb6-4072-96b6-08e42c823023'),
(116, 116, 'en_us', 'projectmanagement', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-14 23:52:08', '2015-10-14 23:52:08', 'a29d3b8f-8f14-41a5-b118-6abbee091929'),
(119, 119, 'en_us', 'Kristin Dowling', NULL, 'Business Development Manager', 'kdowling@ideabasekent.com', '330.672.7366', '<p>Kristin is the Business Development Manager for IdeaBase (formerly The Tannery). She is responsible for building client relationships in order to provide high quality experiential learning opportunities for our students.</p><p>She previously served as an Entrepreneur-in-Residence for the Center for Entrepreneurship and Business Innovation in the Kent State University College of Business. Her experience prior to coming to Kent State University was as Regional Operations Manager for Kinko’s Inc. (now known as FedEx Office).</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-22 17:54:18', '2015-11-05 15:52:54', '58c7308e-b356-41df-84bf-46893aab490e'),
(120, 120, 'en_us', 'Christopher Hallahan', NULL, 'User Experience Designer', 'challahan@ideabasekent.com', '330.672.3031', '<p>Chris is a full-time user experience designer for<a href="http://ideabasekent.com/"> <u>IdeaBase</u></a> and<a href="http://www.kent.edu/cci"> <u>Kent State University’s College of Communication and Information</u></a>. He manages research and interactive/web projects at IdeaBase, and works one-on-one with IdeaBase students to teach them web design, user experience and content management techniques.</p><p>His passions include responsive web design, usability, information architecture and content management system design (especially WordPress).  In addition to his work at IdeaBase, he teaches courses in Digital Sciences and Responsive Web Design.</p><br>He is a graduate of Kent State, with a bachelor’s degree in Electronic Media and master’s degree in User Experience Design. He lives in Kent, OH.', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-22 17:54:56', '2015-11-05 16:20:03', 'fee80180-381d-42c9-8d2e-af3c2bf31c72'),
(122, 122, 'en_us', 'Case Study', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 14:05:25', '2015-10-30 14:05:25', '416edb83-f923-4dc0-b8d6-259f4d578fa2'),
(123, 123, 'en_us', 'Blog', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 14:05:39', '2015-10-30 14:05:46', '640bf505-b058-4be6-a410-45a107c5424e'),
(125, 125, 'en_us', 'This is a test blog', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'asdfasdfasf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 14:14:18', '2015-10-30 15:28:22', '4fe56abb-628a-48db-8030-9c891264bbf8'),
(126, 126, 'en_us', 'this is a test case study', NULL, NULL, NULL, '0', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 14:14:32', '2015-10-30 15:28:22', 'e6f4656c-152b-4bef-a69f-566cb0c72d08'),
(127, 127, 'en_us', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 15:17:55', '2015-11-03 17:10:04', 'acd8b892-a741-4940-b85f-c1f5229943bb'),
(128, 128, 'en_us', 'This is a test case study', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This is test content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-30 15:29:18', '2015-10-30 15:31:56', '26312ca9-8636-4006-905f-34f8b38002cf'),
(129, 131, 'en_us', 'Being a Creative: Rachel Kozy', NULL, NULL, NULL, '0', NULL, NULL, NULL, '<p>Hi! My name is Rachel Kozy and I am a senior Visual Communication Design major. I actually just started working as a designer at IdeaBase a couple months ago, but I will be here for the rest of the year! Even when I was a freshman in VCD, I had always heard about Glyphix and IdeaBase, but I never knew if I’d get the opportunity to work here. When I became a junior though, I started noticing all the work IdeaBase was putting out, and it made me really interested in being a part of it!</p><p>Before IdeaBase, I had interned at MTV in New York City and Go Media in Cleveland. I’ve also worked as a designer for Kent State University Libraries and I’m currently working as the Art Director for Brainchild and the president of Kent’s collegiate chapter of AIGA.</p><p>Working at IdeaBase is seriously the best. I love working here. It has such a great environment and I get to collaborate with the friendliest, nicest people, do work that I’m passionate about, and get paid!</p><p>I chose to major in Visual Communication Design because I was really interested in creating things while in high school. I’ve always loved scrapbooking and working on the computer, so graphic design just seemed like the perfect fit. And luckily, it has been! There hasn’t been one day that has passed where I’ve regretted choosing this as my major, and I’m looking forward to continuing my career doing something I love.</p><p>The hardest part of my major is probably just making sure not to get burnt out. It’s easy to be overly ambitious and want to work on everything all the time, but that eventually wears you down and you stop looking forward to it. It’s important to take breaks and find other interests, that way you can always look forward to designing rather than it being a chore.</p><p>When I’m not busy with work or design, you can probably find me playing video games. I grew up with a brother who constantly played, so I’ve developed a habit of it too. My favorite genre is JRPGS, and my favorite games specifically are Persona 4 and the Tales series.</p><p>After I graduate, I’m not entirely sure where I’ll end up, but I’d love to find a position at a design firm or advertising agency! I really want to work with a lot of different clients and brands and I think that’s my best bet for that kind of work.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:00:59', '2015-11-05 15:00:59', 'eb8ad4f2-59c5-46e5-8675-3e5a3d13a916'),
(130, 132, 'en_us', 'Event Planning 101: Victoria Ripepi', NULL, NULL, NULL, '0', NULL, NULL, NULL, '<p>Hello, my name is Victoria Ripepi. I am an Interpersonal Communications major who is currently on my 5th year victory lap, but I am set to graduate in May 2016. I am the new event coordinator at IdeaBase.</p><p>As long as I can remember, event planning has been an interest of mine. The first event I planned was in 3rd grade when my teacher asked me to help with a parent-teacher-open house. As a 3rd grader, I basically thought I was the coolest person in the world… even though all I really did was set out some flyers, cookies, and juice. But I have enjoyed event planning ever since!</p><p>I think I enjoy event planning because I am so organized, I like to fix problems, I work best under pressure, and I like the exciting/nervous feeling you get on the day of the event. A lot of times when I say I want to go into event planning after I graduate people automatically think I mean weddings, but that is not the case. I want to do open houses, launch parties, special-event parties and so on.</p><p>Before working at IdeaBase, I interned in the Spring of 2015 for an awesome company called Rebecca Adele PR & Events. I learned so much about myself and event planning there. One major thing I learned was that I didn’t want to go into PR after I graduate (the other career path I considered) and event planning is really what I love and have a passion for.</p><p>The owner, Becki, puts on over 10 art shows called the Avant-Garde Art & Craft Shows all throughout Northeast Ohio. There were over 100 vendors at each event and I helped personally put on 4 shows. I also helped in the launch of a new show line called Bump to Bows- A Mommy Boutique Show.</p><p>When it comes to IdeaBase, I actually heard about the agency through one of the managers, Kristin, who is a longtime-family friend. When she told me about IdeaBase it immediately sparked my interest, and when the opportunity for an event coordinator came up, I jumped at it. I really enjoy working here and have already learned so much! IdeaBase is such a fun, encouraging, and helpful work environment. Being new here, whenever I have a question or concern, they immediately do whatever possible to help me. I have also learned so much about what it means working at a design agency and how talented my co-workers are!</p><p>As for my personal life, in my free time you can probably find me outside (if it’s nice out), at a mall because I have a deep love for clothes and fashion or hanging out with my two cats. I travel at any opportunity I can; I hope to travel to all 50 states one day!</p><p>After graduation I hope to get a job out of state. I am Cleveland born and raised and Ohio will always be home, but I know I need to get out of here and explore more than just my bubble that is Ohio. I like to push myself to always try new things and take opportunities that push me outside my comfort zone because that’ll only make my comfort zone that much bigger.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:05:05', '2015-11-05 22:27:27', '61e594fe-41c0-4c20-b28d-b276db539c73'),
(131, 133, 'en_us', 'BrendanBennett-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:14', '2015-11-05 15:52:14', 'f8c1de73-1df1-4956-b9f5-c730dbe86382'),
(132, 134, 'en_us', 'CHRIS-EDIT-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '446bb53e-f861-4c0e-9842-220facfa8d08'),
(133, 135, 'en_us', 'Dowling 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:15', '2015-11-05 15:52:15', 'a801b228-467e-4d61-b323-cd88546a7eb3'),
(134, 136, 'en_us', 'John-Headshot-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '62c705bd-b9f2-4c6c-8145-bffdd0cd7451'),
(135, 137, 'en_us', 'MarioFasolo-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '4dfa0721-3cb7-404d-b687-d60821858878'),
(136, 138, 'en_us', 'NicoCiani-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '46fe17b0-5439-4744-bc1c-0a593dc1033c'),
(137, 139, 'en_us', 'QuintinSteele-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:17', '2015-11-05 15:52:17', 'dbac366b-bbb0-43aa-b0db-30ae67feb2ba'),
(138, 140, 'en_us', 'Rachel1-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:17', '2015-11-05 15:52:17', 'cceebfe1-fb3d-46d9-9281-8a2b07f1ef8c'),
(139, 141, 'en_us', 'ReillyHawkins1-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '2b396b0d-b298-4adf-a0cf-c0270eee5c69'),
(140, 142, 'en_us', 'Victoria1-350x500 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '7710e837-85a0-4b66-8524-d85f379c0a37'),
(143, 145, 'en_us', 'ideabaselogo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 16:05:27', '2015-11-05 16:05:28', 'e8b1f29a-cf8f-4587-9002-369a3a381602'),
(144, 146, 'en_us', 'Quintin Steele', NULL, 'IdeaBase Creative Director', 'qsteele@ideabasekent.com', '330.672.7300', '<p>This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.This is Quintin''s biography.</p>', 'This is Quintin''s fun fact.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 16:19:13', '2015-11-05 16:19:13', '445cf356-5468-4878-b928-e1e6240f7a80'),
(145, 147, 'en_us', 'Victoria Ripepi', NULL, 'Event Coordinator', 'vripepi@ideabasekent.com', 'N/A', '<p>This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. This is Victoria''s biography. </p>', 'I own 64 pairs of shoes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-05 22:26:26', '2015-11-05 22:26:26', 'aec52619-67d6-4070-80d9-349d48911189'),
(146, 148, 'en_us', 'Projects Homepage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tried-and-true', '<p>Our award-winning process delivers quality design solutions that transform our clients'' products.</p>', 'How we''re making a difference.', '<p>We make a positive impact on your design, and our student designers.</p>', 'Helping our students succeed.', '<p>At IdeaBase, we want our student employees to succeed. Thats''s why we partner with Glyphix to teach the next generation through studio experiences. Our students develop and exercise project-based skills in marketing, design, research and more. Additionally, our Responsive Web Design class ensures the next generation of designers and developers understand how to create highly functional and usable websites.</p><p><br></p><p>Learn about our transformative classroom experiences.</p>', NULL, '2015-11-06 14:19:01', '2015-11-06 14:34:28', 'e5562858-4fff-475b-9085-3dafe2c3b224'),
(147, 149, 'en_us', 'Larrie King', NULL, 'Creative Director, Glyphix', 'lking@ideabasekent.com', '330.672.7300', '<p>This is Larrie''s test bio.</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-10 17:15:08', '2015-11-10 17:15:08', '479ba4e9-f020-4ebf-9a4d-7e735bddc811');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=150 ;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2015-09-18 13:02:10', '2015-09-29 14:14:21', '25f020c6-ec8f-4c84-935c-9d5b009c9e28'),
(2, 'Entry', 1, 0, '2015-09-18 13:02:12', '2015-11-05 16:38:59', 'd1cdeaaa-042d-4354-9788-e294620ce809'),
(3, 'Entry', 1, 0, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '8ae99cd4-a3e5-4a29-abdd-8bdc19626d4b'),
(5, 'Category', 1, 0, '2015-09-18 13:28:28', '2015-09-18 13:28:28', 'b0c46c32-e9e2-4d76-81e9-a608083cd27e'),
(6, 'Category', 1, 0, '2015-09-18 13:28:41', '2015-09-18 13:28:41', 'd4aced96-ba21-46e1-aed1-ca878dc3f59d'),
(7, 'Category', 1, 0, '2015-09-18 13:28:57', '2015-09-18 13:28:57', 'f423bc11-d46d-4649-94c3-f79fc74897ac'),
(8, 'Category', 1, 0, '2015-09-18 13:29:09', '2015-09-18 13:29:09', '7863fe49-a589-4c62-80be-a921ef34278c'),
(67, 'Entry', 1, 0, '2015-09-18 14:03:06', '2015-11-05 16:13:49', '6ebe177d-e7af-4733-b7a0-703eff2a3c07'),
(71, 'Asset', 1, 0, '2015-09-18 14:20:35', '2015-09-18 14:20:35', '3f0bfdf7-b30d-4caf-8bf8-8360198af138'),
(73, 'Entry', 1, 0, '2015-09-22 13:27:28', '2015-10-30 15:28:22', '91cf94e5-8851-4483-bb3b-8b2726bdf56a'),
(74, 'Entry', 1, 0, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '0e9b94de-c9b0-4271-a494-a13cbd3777aa'),
(75, 'Entry', 1, 0, '2015-09-22 14:33:18', '2015-11-06 15:45:44', 'f5e7d894-64ff-402e-8b4b-8004a1b19c53'),
(77, 'Entry', 1, 0, '2015-09-22 14:36:49', '2015-09-22 14:36:49', 'a023045f-bdfd-4140-bb83-8616fe628815'),
(78, 'Entry', 1, 0, '2015-09-22 14:37:27', '2015-11-06 15:46:55', '305309d1-fd10-4cf1-92e3-a49307a6af05'),
(79, 'Entry', 1, 0, '2015-09-22 14:37:54', '2015-09-22 14:37:54', 'c68f9438-9a09-452d-aa1c-9c58d6490e0b'),
(80, 'Entry', 1, 0, '2015-09-23 00:27:55', '2015-10-30 15:28:22', 'c268c322-f652-4fee-89e0-ddd5bda047f2'),
(81, 'Entry', 1, 0, '2015-09-23 00:37:27', '2015-11-06 15:33:45', 'ef13a0c5-132a-455b-ab41-207bad1c22f6'),
(87, 'User', 1, 0, '2015-09-29 14:15:13', '2015-09-29 14:15:27', '68aa4508-508f-4ffa-b718-ff24f1734c5f'),
(89, 'GlobalSet', 1, 0, '2015-09-29 14:19:07', '2015-11-05 16:05:31', '04db2fb2-4ddd-49f8-93ed-27cea448bf04'),
(90, 'GlobalSet', 1, 0, '2015-09-29 14:19:11', '2015-10-23 15:50:20', '02184d34-0a71-454a-9a1e-0776a294ea58'),
(92, 'Asset', 1, 0, '2015-10-02 14:41:19', '2015-10-04 23:29:47', '0cf5ecd2-0be5-4697-b335-f53f72299df9'),
(93, 'Asset', 1, 0, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '58bd2c72-b8d3-4360-826c-c00bfb66175c'),
(94, 'Asset', 1, 0, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '2ce533b5-8c80-4fb1-8bf6-89e84e510e4d'),
(95, 'Entry', 1, 0, '2015-10-02 22:53:33', '2015-10-06 15:25:31', 'bef3d145-aaa8-420d-8ad2-ed976e6a2f26'),
(96, 'Entry', 1, 0, '2015-10-02 22:53:48', '2015-10-06 15:25:44', 'a496f5f8-2f13-4481-86a9-a48c2650e7f3'),
(97, 'Entry', 1, 0, '2015-10-02 22:53:59', '2015-10-06 15:25:58', '9b42dd9e-0aaf-402b-a66a-e1fb3144b2f6'),
(98, 'Entry', 1, 0, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'e7454785-19bd-41cc-acb8-a1dc035b0c25'),
(99, 'Entry', 1, 0, '2015-10-04 23:17:35', '2015-11-05 15:40:31', '671ebce1-1710-407b-bb4f-67f8dc60dc0f'),
(101, 'Entry', 1, 0, '2015-10-04 23:17:59', '2015-10-14 23:52:49', 'ebb0b3ff-2e5e-4f5f-afbe-e44072095998'),
(103, 'Asset', 1, 0, '2015-10-05 22:47:11', '2015-10-05 22:47:32', '40a544b1-e8f4-4f82-9fae-be136a19abeb'),
(104, 'Asset', 1, 0, '2015-10-05 23:04:44', '2015-10-05 23:04:44', '5668ccd7-5297-4995-b306-35fbf5a2dd3b'),
(106, 'Asset', 1, 0, '2015-10-05 23:05:27', '2015-10-05 23:05:27', '29c00181-028e-47d4-a5ab-239771f39e05'),
(108, 'Entry', 1, 0, '2015-10-06 14:08:01', '2015-11-05 14:39:36', '1f3414eb-0de2-49c5-b88b-6bae566ee8aa'),
(109, 'Entry', 1, 0, '2015-10-06 14:37:07', '2015-10-23 14:25:09', '60efea53-9fdd-4342-a3d3-d25e33abfde1'),
(110, 'Asset', 1, 0, '2015-10-06 15:02:55', '2015-10-06 15:02:55', '2d238dd7-9916-46a2-8fcd-2e826462012b'),
(111, 'Asset', 1, 0, '2015-10-06 15:09:40', '2015-10-06 15:09:40', 'f180fc5b-1073-451b-953a-7c11b3dd2de9'),
(112, 'Asset', 1, 0, '2015-10-06 15:25:26', '2015-10-06 15:25:26', '3aa52173-eb6f-4c6d-b376-2b1937802295'),
(113, 'Asset', 1, 0, '2015-10-06 15:25:40', '2015-10-06 15:25:40', '91bde8b1-1fac-46b9-ba3e-cc0affa2b308'),
(114, 'Asset', 1, 0, '2015-10-06 15:25:55', '2015-10-06 15:25:55', '3f28a7f8-66c6-4d67-9c08-1b342f416fc9'),
(115, 'Asset', 1, 0, '2015-10-14 23:51:53', '2015-10-14 23:51:53', 'e519d9c3-8afd-45ae-809a-6d54917b5203'),
(116, 'Asset', 1, 0, '2015-10-14 23:52:08', '2015-10-14 23:52:08', '11d564e2-99f5-4432-9d10-9040b24914dc'),
(119, 'Entry', 1, 0, '2015-10-22 17:54:18', '2015-11-05 15:52:54', '728c760d-e799-4244-b02f-faed7a553599'),
(120, 'Entry', 1, 0, '2015-10-22 17:54:56', '2015-11-05 16:20:03', '14175b5e-09dd-4abf-bc3e-d026504bebd2'),
(122, 'Category', 1, 0, '2015-10-30 14:05:25', '2015-10-30 14:05:25', '9667e14f-31ca-4218-b05f-5a868d4d2a13'),
(123, 'Category', 1, 0, '2015-10-30 14:05:39', '2015-10-30 14:05:46', '2a3aa843-5a03-4adb-98f7-5942591ebf9c'),
(125, 'Entry', 1, 0, '2015-10-30 14:14:18', '2015-10-30 15:28:22', 'dfc544f6-e2c4-42bc-ba56-030a7b972410'),
(126, 'Entry', 1, 0, '2015-10-30 14:14:32', '2015-10-30 15:28:22', '2d949d50-be04-4ed9-b96a-94de2771300a'),
(127, 'GlobalSet', 1, 0, '2015-10-30 15:17:55', '2015-11-03 17:10:04', 'f1d7861e-3eb8-41aa-bc61-b19ee7db3d0e'),
(128, 'Entry', 1, 0, '2015-10-30 15:29:18', '2015-10-30 15:31:56', '625b5546-71c6-427f-a1c9-cb2b31baba9e'),
(129, 'MatrixBlock', 1, 0, '2015-10-30 15:46:46', '2015-10-30 16:25:13', '6835d748-e967-4b96-b703-12407827b9ee'),
(130, 'MatrixBlock', 1, 0, '2015-10-30 16:07:20', '2015-10-30 16:25:13', '842ee174-96d2-410d-a358-f18fc0bcbe92'),
(131, 'Entry', 1, 0, '2015-11-05 15:00:59', '2015-11-05 15:00:59', '81edc464-60b1-473b-89bf-846088678ad2'),
(132, 'Entry', 1, 0, '2015-11-05 15:05:05', '2015-11-05 22:27:27', '0ad50dec-6113-4522-b6c4-e8887a615837'),
(133, 'Asset', 1, 0, '2015-11-05 15:52:14', '2015-11-05 15:52:14', 'b80f58ca-4a31-4907-ae26-f1f351f3ca8a'),
(134, 'Asset', 1, 0, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '548c773a-8601-42bc-bce4-b31a38c47741'),
(135, 'Asset', 1, 0, '2015-11-05 15:52:15', '2015-11-05 15:52:15', 'a020a68e-9f22-46fc-aaa3-6e78c1af508f'),
(136, 'Asset', 1, 0, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '4a563b66-f5dc-4625-94e5-d618820e2c34'),
(137, 'Asset', 1, 0, '2015-11-05 15:52:16', '2015-11-05 15:52:16', 'fb512118-5a37-496e-8176-5d40f838d95c'),
(138, 'Asset', 1, 0, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '38263025-c348-49b3-bb86-cf3ac8070eb5'),
(139, 'Asset', 1, 0, '2015-11-05 15:52:17', '2015-11-05 15:52:17', '68520469-2849-467b-90d3-d8828e68e375'),
(140, 'Asset', 1, 0, '2015-11-05 15:52:17', '2015-11-05 15:52:17', '352aefa4-fa7d-4684-b665-567f10ca65fc'),
(141, 'Asset', 1, 0, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '1cb8bb40-97a4-4ff3-836f-395f4f225337'),
(142, 'Asset', 1, 0, '2015-11-05 15:52:18', '2015-11-05 15:52:18', '2fd6b44a-94e9-425a-b152-da5740ecf5a9'),
(145, 'Asset', 1, 0, '2015-11-05 16:05:27', '2015-11-05 16:05:28', 'd61171ac-8970-4090-b32d-6d69cfd94610'),
(146, 'Entry', 1, 0, '2015-11-05 16:19:13', '2015-11-05 16:19:13', '0d07423c-77af-42b2-ae07-aa00c0894bea'),
(147, 'Entry', 1, 0, '2015-11-05 22:26:26', '2015-11-05 22:26:26', '38e4f462-3207-4c6c-b755-4efe80480102'),
(148, 'Entry', 1, 0, '2015-11-06 14:19:01', '2015-11-06 14:34:28', '85b3cbd9-010c-45d3-9609-70c55e2f3354'),
(149, 'Entry', 1, 0, '2015-11-10 17:15:08', '2015-11-10 17:15:08', '47ee2895-f97e-43c6-8ae0-4a8468e5b685');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=150 ;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2015-09-18 13:02:10', '2015-09-29 14:14:21', '1a2ad04d-d965-4e6d-b3b1-4b95cef9c769'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2015-09-18 13:02:12', '2015-11-05 16:38:59', '0fc82978-0fb9-49cd-b5e0-08700b8a4834'),
(3, 3, 'en_us', 'we-just-installed-craft', 'news/2015/we-just-installed-craft', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'c5ad9361-0601-4913-947f-b695bd4f86c4'),
(5, 5, 'en_us', 'leadership', 'staff-hierarchy/role/leadership', 1, '2015-09-18 13:28:28', '2015-10-22 17:30:07', 'eb248124-6eec-4b23-a94f-939afef7de76'),
(6, 6, 'en_us', 'student', 'staff-hierarchy/role/student', 1, '2015-09-18 13:28:41', '2015-10-22 17:30:05', 'd72d2a3f-963b-4083-a115-4052fa7d4ce9'),
(7, 7, 'en_us', 'professional-advisory-board', 'staff-hierarchy/professional-advisory-board', 1, '2015-09-18 13:28:57', '2015-10-22 17:56:21', '0284f457-b3ab-494f-9e79-d39e8f7418c2'),
(8, 8, 'en_us', 'faculty-advisory-board', 'staff-hierarchy/faculty-advisory-board', 1, '2015-09-18 13:29:09', '2015-10-22 17:56:24', '5f5e758c-89be-4642-90b0-e669381f2f32'),
(67, 67, 'en_us', 'reilly-hawkins', 'people-profile/reilly-hawkins', 1, '2015-09-18 14:03:06', '2015-11-05 16:13:49', '1b638009-824f-4889-8f3d-7a0c37ca6293'),
(71, 71, 'en_us', 'screen-shot-2015-09-16-at-8-18-14-am', NULL, 1, '2015-09-18 14:20:35', '2015-09-18 14:20:35', 'a3440ff2-1772-43c4-9e3f-64a37405f67e'),
(73, 73, 'en_us', 'this-is-a-title', 'blog-post/2015/this-is-a-title', 1, '2015-09-22 13:27:28', '2015-10-30 15:28:22', 'e68b226c-d9a5-4558-971f-5a938381c118'),
(74, 74, 'en_us', 'project-title', 'projects/2015/project-title', 1, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '28bd035d-681f-49f9-ad7d-748814f0bab3'),
(75, 75, 'en_us', 'this-is-an-award', 'awards/this-is-an-award', 1, '2015-09-22 14:33:18', '2015-11-06 15:45:44', '664e5852-d23f-4770-abc0-efc0dcd3175b'),
(77, 77, 'en_us', 'this-is-a-new-client', 'clients/this-is-a-new-client', 1, '2015-09-22 14:36:50', '2015-09-22 14:36:50', '8d8c0f65-d61d-4d07-b435-5d04ddafaf8b'),
(78, 78, 'en_us', 'this-is-a-testimonial', 'testimonials/this-is-a-testimonial', 1, '2015-09-22 14:37:27', '2015-11-06 15:46:55', 'bfb16428-eb56-489c-b0cb-f35636c62f1c'),
(79, 79, 'en_us', 'another-news-post', 'news/2015/another-news-post', 1, '2015-09-22 14:37:55', '2015-09-22 14:37:55', '0b35e89a-fa1d-4523-99a3-5ec7b6ab3666'),
(80, 80, 'en_us', 'this-is-a-test-blog-title', 'blog-post/2015/this-is-a-test-blog-title', 1, '2015-09-23 00:27:55', '2015-10-30 15:28:22', 'adc29ec2-ba39-4dc1-99f3-809627a03469'),
(81, 81, 'en_us', 'award-title', 'awards/award-title', 1, '2015-09-23 00:37:27', '2015-11-06 15:33:45', 'e5a29455-5436-49ca-8839-fdd3cfb469b9'),
(87, 87, 'en_us', '', NULL, 1, '2015-09-29 14:15:13', '2015-09-29 14:15:27', 'd595f18b-1c1d-47af-b8f6-ba8b19060346'),
(89, 89, 'en_us', '', NULL, 1, '2015-09-29 14:19:07', '2015-11-05 16:05:31', '83a16a0f-1c22-4341-b78f-9fe90b5e0333'),
(90, 90, 'en_us', '', NULL, 1, '2015-09-29 14:19:11', '2015-10-23 15:50:20', '268fd5bb-cf45-4591-8fe6-aa0609301434'),
(92, 92, 'en_us', 'ideabase-logo-stackedoutlinecolor', NULL, 1, '2015-10-02 14:41:19', '2015-10-04 23:29:47', 'e3c73043-d502-4301-8f2b-ecaf4b773f37'),
(93, 93, 'en_us', 'screen-shot-2015-10-02-at-10-53-43-am', NULL, 1, '2015-10-02 14:55:02', '2015-10-02 14:55:02', '0714246b-9b08-4295-9754-d257e5c77b53'),
(94, 94, 'en_us', 'screen-shot-2015-10-02-at-6-23-17-pm', NULL, 1, '2015-10-02 22:23:54', '2015-10-02 22:38:20', '7a764916-3824-4421-840b-90c86078d930'),
(95, 95, 'en_us', 'service-1', 'services/service-1', 1, '2015-10-02 22:53:33', '2015-10-06 15:25:31', '01ee2761-62f7-417a-9619-464426722a88'),
(96, 96, 'en_us', 'service-2', 'services/service-2', 1, '2015-10-02 22:53:48', '2015-10-06 15:25:44', '715cae82-877c-4e2c-8510-157f9dab4aee'),
(97, 97, 'en_us', 'service-3', 'services/service-3', 1, '2015-10-02 22:53:59', '2015-10-06 15:25:58', '0ae0261b-821f-45a0-9bf8-ecf154a1c1a0'),
(98, 98, 'en_us', 'project-title-1', 'projects/2015/project-title-1', 1, '2015-10-04 23:17:22', '2015-10-04 23:17:22', 'b5e5fe51-f7f2-440f-9b16-16d956894a4b'),
(99, 99, 'en_us', 'project-title-2', 'projects/2015/project-title-2', 1, '2015-10-04 23:17:35', '2015-11-05 15:40:31', 'f48c9455-ae49-4c7d-b439-6b433c9aaaca'),
(101, 101, 'en_us', 'project-3', 'projects/2015/project-3', 1, '2015-10-04 23:17:59', '2015-10-14 23:52:49', '1a1deba4-45c8-41ed-a12a-c90ccc40a989'),
(103, 103, 'en_us', 'hawkins-reilly', NULL, 1, '2015-10-05 22:47:11', '2015-10-05 22:47:32', '91f340f0-9e89-4692-ac98-8c9c6eade459'),
(104, 104, 'en_us', 'headshotimage', NULL, 1, '2015-10-05 23:04:44', '2015-10-05 23:04:44', '0c159c7b-e62f-4109-a37a-7bee9f9fd372'),
(106, 106, 'en_us', 'another-headshot', NULL, 1, '2015-10-05 23:05:27', '2015-10-05 23:05:27', '947f6447-5853-4ff2-853b-8ea5fb3dff51'),
(108, 108, 'en_us', 'staff-profile-index', 'people', 1, '2015-10-06 14:08:01', '2015-11-05 14:39:36', '867467ee-ab49-4831-b5f1-f22199344aaf'),
(109, 109, 'en_us', 'process-index', 'process', 1, '2015-10-06 14:37:07', '2015-10-23 14:25:09', '3a2519b0-1901-4b82-b530-6f9844023b6d'),
(110, 110, 'en_us', 'web-design', NULL, 1, '2015-10-06 15:02:55', '2015-10-06 15:02:55', '3a0f861f-ba0c-43bd-9fa5-538bc5762904'),
(111, 111, 'en_us', 'ideabasephoto-1500x683', NULL, 1, '2015-10-06 15:09:41', '2015-10-06 15:09:41', 'dfd53011-9094-477e-9c20-ccc09d2bf6dc'),
(112, 112, 'en_us', 'download-1', NULL, 1, '2015-10-06 15:25:26', '2015-10-06 15:25:26', '5d84576d-9388-49df-853d-39d04b1d78aa'),
(113, 113, 'en_us', 'download-2', NULL, 1, '2015-10-06 15:25:40', '2015-10-06 15:25:40', '8041dfb4-8464-43ed-8d98-10ff3f5e697b'),
(114, 114, 'en_us', 'download', NULL, 1, '2015-10-06 15:25:55', '2015-10-06 15:25:55', '692019a5-50c8-400d-aab3-24bbd895a86d'),
(115, 115, 'en_us', 'program-project-management', NULL, 1, '2015-10-14 23:51:53', '2015-10-14 23:51:53', 'f0d95b73-a66e-47d3-9fcc-37f1b18beecf'),
(116, 116, 'en_us', 'projectmanagement', NULL, 1, '2015-10-14 23:52:08', '2015-10-14 23:52:08', '41e170d3-aaba-4f34-9603-e011d4d749bc'),
(119, 119, 'en_us', 'kristin-dowling', 'people-profile/kristin-dowling', 1, '2015-10-22 17:54:18', '2015-11-05 15:52:54', '0b32d9c5-644f-4ab3-8122-a58fd8d52b76'),
(120, 120, 'en_us', 'christopher-hallahan', 'people-profile/christopher-hallahan', 1, '2015-10-22 17:54:56', '2015-11-05 16:20:03', '51d64cd0-40fb-4396-9de7-1afa3516032d'),
(122, 122, 'en_us', 'case-study', 'case-study-or-blog/type/case-study', 1, '2015-10-30 14:05:26', '2015-10-30 14:06:08', 'c6f2551a-5f5d-4762-ab99-3af79eb0abab'),
(123, 123, 'en_us', 'blog', 'case-study-or-blog/type/blog', 1, '2015-10-30 14:05:39', '2015-10-30 14:06:06', '8b772d80-755f-499e-bc54-282e1dbff8ea'),
(125, 125, 'en_us', 'this-is-a-test-blog', 'blog-post/2015/this-is-a-test-blog', 1, '2015-10-30 14:14:18', '2015-10-30 15:28:22', '8492da68-a128-4745-973d-694e8ceb2e36'),
(126, 126, 'en_us', 'this-is-a-test-case-study', 'blog-post/2015/this-is-a-test-case-study', 1, '2015-10-30 14:14:32', '2015-10-30 15:28:22', 'cc45e3f6-c6b4-441f-9a7e-831416bc20be'),
(127, 127, 'en_us', '', NULL, 1, '2015-10-30 15:17:55', '2015-11-03 17:10:04', '308abe3c-ca47-41f1-915a-fa07dfcf8c61'),
(128, 128, 'en_us', 'this-is-a-test-case-study', 'case-study/this-is-a-test-case-study', 1, '2015-10-30 15:29:18', '2015-10-30 15:31:56', '61667d5e-41cf-462c-8e20-b759a54b02fa'),
(129, 129, 'en_us', '', NULL, 1, '2015-10-30 15:46:46', '2015-10-30 16:25:13', '86687ce3-0179-43e1-ae5d-dcab16a8feee'),
(130, 130, 'en_us', '', NULL, 1, '2015-10-30 16:07:20', '2015-10-30 16:25:13', '19762f48-dd6d-492f-a22a-5fb0ec313c82'),
(131, 131, 'en_us', 'being-a-creative-rachel-kozy', 'blog-post/2015/being-a-creative-rachel-kozy', 1, '2015-11-05 15:00:59', '2015-11-05 15:00:59', '86449da7-82f8-42b7-9422-1e1c7ea31712'),
(132, 132, 'en_us', 'event-planning-101-victoria-ripepi', 'blog-post/2015/event-planning-101-victoria-ripepi', 1, '2015-11-05 15:05:05', '2015-11-05 22:27:27', '1cdc30d0-5549-4c98-ae6b-ff22b5b45784'),
(133, 133, 'en_us', 'brendanbennett-350x500-1', NULL, 1, '2015-11-05 15:52:14', '2015-11-05 15:52:14', 'dd9c0f3a-6627-4fe6-b8ab-76935a1ef7eb'),
(134, 134, 'en_us', 'chris-edit-350x500-1', NULL, 1, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '60059216-9857-45f4-8f52-47394fea985d'),
(135, 135, 'en_us', 'dowling-1', NULL, 1, '2015-11-05 15:52:15', '2015-11-05 15:52:15', '1b4f6e88-d48d-43ea-aac0-8559a38e6acf'),
(136, 136, 'en_us', 'john-headshot-350x500-1', NULL, 1, '2015-11-05 15:52:16', '2015-11-05 15:52:16', '3fdc86d3-d4b4-4193-ab49-5ce7aa4740af'),
(137, 137, 'en_us', 'mariofasolo-350x500-1', NULL, 1, '2015-11-05 15:52:16', '2015-11-05 15:52:16', 'e1993673-da51-49f1-9c47-c6ed09067bc7'),
(138, 138, 'en_us', 'nicociani-350x500-1', NULL, 1, '2015-11-05 15:52:16', '2015-11-05 15:52:16', 'c597ce11-d74e-4d45-9539-63d4bd24c1d8'),
(139, 139, 'en_us', 'quintinsteele-350x500-1', NULL, 1, '2015-11-05 15:52:17', '2015-11-05 15:52:17', '4a12cf0b-28c8-43de-ae8b-70f463261df9'),
(140, 140, 'en_us', 'rachel1-350x500-1', NULL, 1, '2015-11-05 15:52:17', '2015-11-05 15:52:17', 'c70f25c7-c301-4637-be05-a4048649dd5e'),
(141, 141, 'en_us', 'reillyhawkins1-350x500-1', NULL, 1, '2015-11-05 15:52:18', '2015-11-05 15:52:18', 'b4880ceb-ce79-43a1-8dd1-4266b899e130'),
(142, 142, 'en_us', 'victoria1-350x500-1', NULL, 1, '2015-11-05 15:52:18', '2015-11-05 15:52:18', 'da730f71-8170-4c44-8824-02e5f37bf24a'),
(145, 145, 'en_us', 'ideabaselogo', NULL, 1, '2015-11-05 16:05:28', '2015-11-05 16:05:28', '8563e74f-8711-48a5-9ab1-6cef3c321028'),
(146, 146, 'en_us', 'quintin-steele', 'people-profile/quintin-steele', 1, '2015-11-05 16:19:13', '2015-11-05 16:19:13', 'ac838b52-68c7-4595-8292-6101a51d2e87'),
(147, 147, 'en_us', 'victoria-ripepi', 'people-profile/victoria-ripepi', 1, '2015-11-05 22:26:26', '2015-11-05 22:26:27', 'e22de1e9-3797-4536-b948-aae1de89613f'),
(148, 148, 'en_us', 'projects-homepage', 'projects', 1, '2015-11-06 14:19:01', '2015-11-06 14:34:28', '0396fffc-8d69-471d-8cc4-3cc358fee5e4'),
(149, 149, 'en_us', 'larrie-king', 'people-profile/larrie-king', 1, '2015-11-10 17:15:08', '2015-11-10 17:15:08', '48bf7d3a-52fe-4394-ad84-ca59f0e01c0a');

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
(2, 1, NULL, NULL, '2015-09-18 13:02:12', NULL, '2015-09-18 13:02:12', '2015-11-05 16:38:59', 'a6b2cb1a-38c6-46c9-849f-99663f94db27'),
(3, 2, 2, 1, '2015-09-18 13:02:13', NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'b1d4fe6d-00d8-482d-b74c-6158a39c49ac'),
(67, 3, 3, 1, '2015-09-18 14:03:00', NULL, '2015-09-18 14:03:06', '2015-11-05 16:13:49', '71544981-94cb-4422-8212-df60964280eb'),
(73, 5, 5, 1, '2015-09-22 13:27:00', NULL, '2015-09-22 13:27:28', '2015-09-22 13:29:50', '8c94c6e2-3232-4f2c-a383-b2584ec3e0a3'),
(74, 4, 4, 1, '2015-09-22 14:28:05', NULL, '2015-09-22 14:28:05', '2015-09-22 14:28:05', '2e74846a-e183-4d46-8ddf-3e45f3622faa'),
(75, 6, 6, 1, '2015-09-22 14:33:00', NULL, '2015-09-22 14:33:18', '2015-11-06 15:45:44', 'ba860779-cd31-4379-b3b7-a5949046dcdd'),
(77, 8, 8, 1, '2015-09-22 14:36:49', NULL, '2015-09-22 14:36:50', '2015-09-22 14:36:50', '31b3cfa2-4e9a-4776-995b-af1bddafae01'),
(78, 7, 7, 1, '2015-09-22 14:37:00', NULL, '2015-09-22 14:37:27', '2015-11-06 15:46:55', 'e5122278-d783-4d7b-89a8-aa475997e3b6'),
(79, 2, 2, 1, '2015-09-22 14:37:54', NULL, '2015-09-22 14:37:55', '2015-09-22 14:37:55', '87494fab-2980-460a-96f0-dce11d36ccc1'),
(80, 5, 5, 1, '2015-09-23 00:27:55', NULL, '2015-09-23 00:27:55', '2015-09-23 00:27:55', '39a65b83-edbc-40a3-b471-e48fd9cd5d50'),
(81, 6, 6, 1, '2015-09-23 00:37:00', NULL, '2015-09-23 00:37:27', '2015-11-06 15:33:46', 'df064588-193d-4e3f-bab3-a748b45796ab'),
(95, 10, 10, 87, '2015-10-02 22:53:00', NULL, '2015-10-02 22:53:33', '2015-10-06 15:25:31', 'da92120b-6879-4d94-b3ec-7c7964bc213c'),
(96, 10, 10, 87, '2015-10-02 22:53:00', NULL, '2015-10-02 22:53:48', '2015-10-06 15:25:44', '64fae9fd-12d3-4dcf-bb42-ca204705a51c'),
(97, 10, 10, 87, '2015-10-02 22:53:00', NULL, '2015-10-02 22:53:59', '2015-10-06 15:25:58', '17e3e69a-a530-4fee-b648-28723eb197ff'),
(98, 4, 4, 87, '2015-10-04 23:17:22', NULL, '2015-10-04 23:17:22', '2015-10-04 23:17:22', '8d70268c-6919-4803-bf52-e3fcdf4aed10'),
(99, 4, 4, 87, '2015-10-04 23:17:00', NULL, '2015-10-04 23:17:35', '2015-11-05 15:40:31', 'a9b49292-4167-41ba-9f6a-3e9996ee63de'),
(101, 4, 4, 87, '2015-10-04 23:17:00', NULL, '2015-10-04 23:17:59', '2015-10-14 23:52:49', 'a8977f0d-b979-4120-a906-4917d536bb31'),
(108, 11, 11, NULL, '2015-10-23 14:23:48', NULL, '2015-10-06 14:08:01', '2015-11-05 14:39:36', 'cfaeaa6c-9a64-479c-9c51-e5db39ac0afd'),
(109, 12, 12, NULL, '2015-10-23 14:25:09', NULL, '2015-10-06 14:37:07', '2015-10-23 14:25:09', 'dcb8bcf5-951a-4ddc-adb1-2ec23851346e'),
(119, 3, 3, 87, '2015-10-22 17:54:00', NULL, '2015-10-22 17:54:18', '2015-11-05 15:52:54', '23485fe6-b102-4629-b3ae-819b951fe1ad'),
(120, 3, 3, 87, '2015-10-22 17:54:00', NULL, '2015-10-22 17:54:56', '2015-11-05 16:20:03', 'fcf063fb-72c7-404f-aed8-f15831ab0491'),
(125, 5, 5, 87, '2015-10-30 14:14:18', NULL, '2015-10-30 14:14:18', '2015-10-30 14:14:18', '3a5830ca-fafb-4c1f-8ff1-249bec41bede'),
(126, 5, 5, 87, '2015-10-30 14:14:32', NULL, '2015-10-30 14:14:32', '2015-10-30 14:14:32', '28d5098d-9e12-4919-bc3a-23fc0ae96185'),
(128, 13, 13, 87, '2015-10-30 15:29:00', NULL, '2015-10-30 15:29:18', '2015-10-30 15:31:24', '1b9c5cb1-e1db-454a-bc22-9f2686e0c251'),
(131, 5, 5, 87, '2015-11-05 15:00:59', NULL, '2015-11-05 15:01:00', '2015-11-05 15:01:00', 'b6b8f5ce-7a68-4481-85bf-a37b160d7585'),
(132, 5, 5, 87, '2015-11-05 15:05:00', NULL, '2015-11-05 15:05:05', '2015-11-05 22:27:27', '261bad56-b77c-4459-8187-d1a7fcb24092'),
(146, 3, 3, 87, '2015-11-05 16:19:13', NULL, '2015-11-05 16:19:13', '2015-11-05 16:19:13', '3adff49e-a75e-4239-8ed7-48f6117b94a8'),
(147, 3, 3, 87, '2015-11-05 22:26:26', NULL, '2015-11-05 22:26:26', '2015-11-05 22:26:26', 'de37eecc-b184-45f0-a98f-33677eed4cb2'),
(148, 15, 15, NULL, '2015-11-06 14:34:28', NULL, '2015-11-06 14:19:01', '2015-11-06 14:34:28', '4bca9b7c-4db6-426f-9bad-2ced1b32e4b7'),
(149, 3, 3, 87, '2015-11-10 17:15:08', NULL, '2015-11-10 17:15:08', '2015-11-10 17:15:08', '1f3ff58b-13d6-44aa-984b-2d126fdcf846');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 82, 'Homepage', 'homepage', 1, 'Title', NULL, NULL, '2015-09-18 13:02:12', '2015-11-05 16:36:30', '7a6604a3-7d8c-43b2-b7da-55b8b3ff8830'),
(2, 2, 5, 'News', 'news', 1, 'Title', NULL, NULL, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '47223a67-7a86-412e-820e-9da9f8441c12'),
(3, 3, 87, 'Staff Profile', 'staffProfile', 1, 'Title', NULL, NULL, '2015-09-18 13:12:21', '2015-11-10 17:18:25', '954eb0f7-59bf-42e7-a964-14b8f943ca8a'),
(4, 4, 79, 'Projects', 'ideabaseProjects', 1, 'Title', NULL, NULL, '2015-09-18 13:12:40', '2015-11-05 15:40:18', '923d67d9-a529-4494-aba1-9efa6ba2caa5'),
(5, 5, 78, 'Blog Post', 'blogPost', 1, 'Title', NULL, NULL, '2015-09-18 13:13:03', '2015-11-05 15:31:21', '594d8ccf-66ab-4280-b18c-2a1ce9b3edbd'),
(6, 6, 85, 'Awards', 'ideabaseAwards', 1, 'Title', NULL, NULL, '2015-09-18 13:13:17', '2015-11-06 15:06:10', 'e320fa3a-a259-47bc-98e4-963f619269b2'),
(7, 7, 86, 'Testimonials', 'testimonials', 1, 'Title', NULL, NULL, '2015-09-18 13:13:27', '2015-11-06 15:06:30', '7973efb4-076f-42c8-a3c6-7b0e276fe724'),
(8, 8, 20, 'Clients', 'clients', 1, 'Title', NULL, NULL, '2015-09-18 13:13:40', '2015-09-18 14:01:18', '9bf6368c-82ea-49d8-94ca-667f3b4704f3'),
(10, 10, 58, 'Services', 'services', 1, 'Title', NULL, NULL, '2015-10-02 22:46:16', '2015-10-06 15:24:28', '900264af-6821-40bb-af8d-4a8b68d42b73'),
(11, 11, 76, 'Staff Profile Index', 'staffProfileIndex', 0, NULL, '{section.name|raw}', NULL, '2015-10-06 14:08:01', '2015-11-05 14:22:16', 'e76f01cc-a0fc-43b5-bca6-80527641b94c'),
(12, 12, 56, 'Process Index', 'processIndex', 0, NULL, '{section.name|raw}', NULL, '2015-10-06 14:37:07', '2015-10-06 14:41:04', '665d0b6e-13d3-410f-9a42-cfe6a39ec1d4'),
(13, 13, 67, 'Case Study', 'caseStudy', 1, 'Title', NULL, NULL, '2015-10-30 15:28:15', '2015-10-30 15:31:05', '224602ec-36ab-4897-8621-ca2e9d1dd75a'),
(14, 14, 75, 'Basic Pages', 'basicPages', 1, 'Title', NULL, NULL, '2015-11-03 17:20:01', '2015-11-03 17:23:03', 'd6620d67-a4ec-4a52-bfed-e685a70d3fdd'),
(15, 15, 84, 'Projects Homepage', 'projectsHomepage', 0, NULL, '{section.name|raw}', NULL, '2015-11-06 14:19:01', '2015-11-06 14:24:13', '556e124c-da8f-47bc-961d-af78d4698077');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=80 ;

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
(30, 67, 3, 87, 'en_us', 6, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["4","6"],"3":"Web Programmer","5":"1234","27":["103"]}}', '2015-10-05 23:01:35', '2015-10-05 23:01:35', '49f9b219-e6cd-47ee-bfb1-e28800ace157'),
(33, 108, 11, 87, 'en_us', 1, NULL, '{"typeId":"11","authorId":null,"title":"Staff Profile Index","slug":"staff-profile-index","postDate":1444140481,"expiryDate":null,"enabled":1,"fields":[]}', '2015-10-06 14:08:01', '2015-10-06 14:08:01', 'c3fe3301-1132-4c45-879c-698345fac09e'),
(34, 108, 11, 87, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Staff Profile Index","slug":"staff-profile-index","postDate":1444140481,"expiryDate":null,"enabled":1,"fields":{"39":"This is a Description","38":"This is a Header","41":"Work For Ideabase Description","40":"Work for ideabase title"}}', '2015-10-06 14:14:52', '2015-10-06 14:14:52', '46174e35-dd51-4b7c-b340-53b2b6232745'),
(35, 109, 12, 87, 'en_us', 1, NULL, '{"typeId":"12","authorId":null,"title":"Process Index","slug":"process-index","postDate":1444142227,"expiryDate":null,"enabled":1,"fields":[]}', '2015-10-06 14:37:07', '2015-10-06 14:37:07', 'e0407ead-0de3-46dc-9113-d3a657313771'),
(36, 109, 12, 87, 'en_us', 2, '', '{"typeId":"12","authorId":null,"title":"Process Index","slug":"process-index","postDate":1444142546,"expiryDate":null,"enabled":1,"fields":{"44":"This is a Link","43":"","42":"Our design process is tailored to you."}}', '2015-10-06 14:57:10', '2015-10-06 14:57:10', 'c139d94a-18b7-460e-acf4-92484c8bc8bc'),
(37, 109, 12, 87, 'en_us', 3, '', '{"typeId":"12","authorId":null,"title":"Process Index","slug":"process-index","postDate":1444142546,"expiryDate":null,"enabled":1,"fields":{"44":"This is a Link","43":["110"],"42":"Our design process is tailored to you."}}', '2015-10-06 15:03:17', '2015-10-06 15:03:17', '96425e00-7b2c-4499-aa50-35fd0c2b9455'),
(38, 108, 11, 87, 'en_us', 3, '', '{"typeId":"11","authorId":null,"title":"Staff Profile Index","slug":"staff-profile-index","postDate":1444141013,"expiryDate":null,"enabled":1,"fields":{"39":"This is a Description","38":"This is a Header","45":["111"],"41":"Work For Ideabase Description","40":"Work for ideabase title"}}', '2015-10-06 15:09:44', '2015-10-06 15:09:44', '95cbd619-3c03-43ce-aebf-377342371c98'),
(39, 95, 10, 87, 'en_us', 2, '', '{"typeId":"10","authorId":"87","title":"Service 1","slug":"service-1","postDate":1443826380,"expiryDate":null,"enabled":1,"fields":{"21":"This is service 1","47":["112"],"20":""}}', '2015-10-06 15:25:31', '2015-10-06 15:25:31', 'b2fb8986-2def-4fab-854b-fbf462ea2292'),
(40, 96, 10, 87, 'en_us', 2, '', '{"typeId":"10","authorId":"87","title":"Service 2","slug":"service-2","postDate":1443826380,"expiryDate":null,"enabled":1,"fields":{"21":"Service 2","47":["113"],"20":""}}', '2015-10-06 15:25:44', '2015-10-06 15:25:44', 'a84537f5-ab01-43a4-87d2-b8e127ddad09'),
(41, 97, 10, 87, 'en_us', 2, '', '{"typeId":"10","authorId":"87","title":"Service 3","slug":"service-3","postDate":1443826380,"expiryDate":null,"enabled":1,"fields":{"21":"This is service 3","47":["114"],"20":""}}', '2015-10-06 15:25:58', '2015-10-06 15:25:58', 'ae8793eb-e4bc-435b-ad72-6b1438526e53'),
(42, 101, 4, 87, 'en_us', 2, '', '{"typeId":"4","authorId":"87","title":"Project 3","slug":"project-3","postDate":1444000620,"expiryDate":null,"enabled":1,"fields":{"9":"This is project 3","46":["115"],"48":["116"],"8":""}}', '2015-10-14 23:52:12', '2015-10-14 23:52:12', '484e2871-b9bf-4dca-a2cc-9bdf07a64c58'),
(43, 101, 4, 87, 'en_us', 3, '', '{"typeId":"4","authorId":"87","title":"Project 3","slug":"project-3","postDate":1444000620,"expiryDate":null,"enabled":1,"fields":{"9":"This is a description of project 3. This is a description of project 3. This is a description of project 3. This is a description of project 3. This is a description of project 3.","46":["115"],"48":["116"],"8":""}}', '2015-10-14 23:52:49', '2015-10-14 23:52:49', 'd90052ce-855c-48ac-bf77-d8e28b92abc0'),
(44, 67, 3, 87, 'en_us', 7, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["6"],"3":"Web Programmer","5":"1234","27":["103"]}}', '2015-10-16 15:08:58', '2015-10-16 15:08:58', '346d580c-bbdb-417b-bca1-fa0cc5918383'),
(46, 67, 3, 87, 'en_us', 8, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"This is a test bio","4":"rhawkins@ideabasekent.com","7":"test fun fact","26":["6"],"3":"Web Programmer","5":"1234","27":["103"]}}', '2015-10-22 17:53:20', '2015-10-22 17:53:20', 'b4e73e6b-cb9b-4a66-87d3-c3ae3a0a65c4'),
(48, 119, 3, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Kristin Dowling","slug":"kristin-dowling","postDate":1445536458,"expiryDate":null,"enabled":1,"fields":{"6":"","4":"","7":"","26":["5"],"3":"","5":"0","27":""}}', '2015-10-22 17:54:18', '2015-10-22 17:54:18', 'cf969d6f-bb4e-4e0f-9999-ffcfc8e3d3d4'),
(49, 120, 3, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Christopher Hallahan","slug":"christopher-hallahan","postDate":1445536496,"expiryDate":null,"enabled":1,"fields":{"6":"","4":"","7":"","26":["8"],"3":"","5":"0","27":""}}', '2015-10-22 17:54:57', '2015-10-22 17:54:57', '127a8968-c95b-4e63-8b4e-dea41e8bf20a'),
(51, 125, 5, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"This is a test blog","slug":"this-is-a-test-blog","postDate":1446214458,"expiryDate":null,"enabled":1,"fields":{"11":"asdfasdfasf","49":["124","123"]}}', '2015-10-30 14:14:18', '2015-10-30 14:14:18', '12ec100d-8939-4a99-bcaf-fa7b2276f278'),
(52, 126, 5, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"this is a test case study","slug":"this-is-a-test-case-study","postDate":1446214472,"expiryDate":null,"enabled":1,"fields":{"11":"","49":["124","122"]}}', '2015-10-30 14:14:32', '2015-10-30 14:14:32', 'e9c6e5a1-90c5-48fb-915e-b42bbb60005d'),
(53, 128, 13, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"This is a test case study","slug":"this-is-a-test-case-study","postDate":1446218958,"expiryDate":null,"enabled":1,"fields":[]}', '2015-10-30 15:29:18', '2015-10-30 15:29:18', 'ec737f93-1e0f-4d88-af96-2bd0e3f18db2'),
(54, 128, 13, 87, 'en_us', 2, '', '{"typeId":"13","authorId":"87","title":"This is a test case study","slug":"this-is-a-test-case-study","postDate":1446218940,"expiryDate":null,"enabled":1,"fields":{"50":"This is test content"}}', '2015-10-30 15:31:24', '2015-10-30 15:31:24', 'f63506a3-c891-49f5-aea3-519c98137693'),
(55, 108, 11, 87, 'en_us', 4, '', '{"typeId":"11","authorId":null,"title":"Staff Profile Index","slug":"staff-profile-index","postDate":1445610228,"expiryDate":null,"enabled":1,"fields":{"39":"Our student employees come from backgrounds of all shapes and sizes, bringing with them a fresh and versatile approach that inspires our designs. With backgrounds in Visual Communication Design, Public Relations, User Experience, Advertising, Computer Information Systmes, Digital Sciences, Marketing and Communications, our diverse team members have one thing in common, they''re passionate about design.","38":"Our students are passionate about design.","45":["111"],"41":"We empower our student employees to imagine, create and deliver quality designs whil gaining real-world experience on client-facing projects. Our studen employees get to put their design skills to the test, build their resumes and jumpstart their careers.","40":"Work for IdeaBase"}}', '2015-11-05 14:17:48', '2015-11-05 14:17:48', 'f17e4c24-2584-40ac-a243-f8e5bb0943a8'),
(56, 108, 11, 87, 'en_us', 5, '', '{"typeId":"11","authorId":null,"title":"Staff Profile Index","slug":"staff-profile-index","postDate":1445610228,"expiryDate":null,"enabled":1,"fields":{"39":"Our student employees come from backgrounds of all shapes and sizes, bringing with them a fresh and versatile approach that inspires our designs. With backgrounds in Visual Communication Design, Public Relations, User Experience, Advertising, Computer Information Systmes, Digital Sciences, Marketing and Communications, our diverse team members have one thing in common, they''re passionate about design.","38":"Our students are passionate about design.","45":["111"],"57":"<p>We\\u2019re committed to delivering quality work to our clients. That\\u2019s why our student employees work under the guidance of our professional staff from Kent State\\u2019s College of Communication of Information and a professional advisory board. Our student employees interact directly with clients, developing proposals, managing projects and handling all stages of design production.<\\/p>","56":"Committed to quality.","41":"We empower our student employees to imagine, create and deliver quality designs whil gaining real-world experience on client-facing projects. Our studen employees get to put their design skills to the test, build their resumes and jumpstart their careers.","58":"<p>Learn more about <a href=\\"http:\\/\\/www.google.com\\">working for IdeaBase.<\\/a><\\/p>","40":"Work for IdeaBase"}}', '2015-11-05 14:39:36', '2015-11-05 14:39:36', 'e0ca60f6-9b7d-438c-aecb-71c1f4448fcf'),
(57, 131, 5, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Being a Creative: Rachel Kozy","slug":"being-a-creative-rachel-kozy","postDate":1446735659,"expiryDate":null,"enabled":1,"fields":{"59":"Rachel Kozy","11":"<p>Hi! My name is Rachel Kozy and I am a senior Visual Communication Design major. I actually just started working as a designer at IdeaBase a couple months ago, but I will be here for the rest of the year! Even when I was a freshman in VCD, I had always heard about Glyphix and IdeaBase, but I never knew if I\\u2019d get the opportunity to work here. When I became a junior though, I started noticing all the work IdeaBase was putting out, and it made me really interested in being a part of it!<\\/p><p>Before IdeaBase, I had interned at MTV in New York City and Go Media in Cleveland. I\\u2019ve also worked as a designer for Kent State University Libraries and I\\u2019m currently working as the Art Director for Brainchild and the president of Kent\\u2019s collegiate chapter of AIGA.<\\/p><p>Working at IdeaBase is seriously the best. I love working here. It has such a great environment and I get to collaborate with the friendliest, nicest people, do work that I\\u2019m passionate about, and get paid!<\\/p><p>I chose to major in Visual Communication Design because I was really interested in creating things while in high school. I\\u2019ve always loved scrapbooking and working on the computer, so graphic design just seemed like the perfect fit. And luckily, it has been! There hasn\\u2019t been one day that has passed where I\\u2019ve regretted choosing this as my major, and I\\u2019m looking forward to continuing my career doing something I love.<\\/p><p>The hardest part of my major is probably just making sure not to get burnt out. It\\u2019s easy to be overly ambitious and want to work on everything all the time, but that eventually wears you down and you stop looking forward to it. It\\u2019s important to take breaks and find other interests, that way you can always look forward to designing rather than it being a chore.<\\/p><p>When I\\u2019m not busy with work or design, you can probably find me playing video games. I grew up with a brother who constantly played, so I\\u2019ve developed a habit of it too. My favorite genre is JRPGS, and my favorite games specifically are Persona 4 and the Tales series.<\\/p><p>After I graduate, I\\u2019m not entirely sure where I\\u2019ll end up, but I\\u2019d love to find a position at a design firm or advertising agency! I really want to work with a lot of different clients and brands and I think that\\u2019s my best bet for that kind of work.<\\/p>","49":""}}', '2015-11-05 15:01:00', '2015-11-05 15:01:00', '79bcc9f7-fab9-4e60-b4cf-b80714b506ee'),
(58, 132, 5, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Event Planning 101: Victoria Ripepi","slug":"event-planning-101-victoria-ripepi","postDate":1446735905,"expiryDate":null,"enabled":1,"fields":{"59":"Victoria Ripepi","11":"<p>Hello, my name is Victoria Ripepi. I am an Interpersonal Communications major who is currently on my 5th year victory lap, but I am set to graduate in May 2016. I am the new event coordinator at IdeaBase.<\\/p><p>As long as I can remember, event planning has been an interest of mine. The first event I planned was in 3rd grade when my teacher asked me to help with a parent-teacher-open house. As a 3rd grader, I basically thought I was the coolest person in the world\\u2026 even though all I really did was set out some flyers, cookies, and juice. But I have enjoyed event planning ever since!<\\/p><p>I think I enjoy event planning because I am so organized, I like to fix problems, I work best under pressure, and I like the exciting\\/nervous feeling you get on the day of the event. A lot of times when I say I want to go into event planning after I graduate people automatically think I mean weddings, but that is not the case. I want to do open houses, launch parties, special-event parties and so on.<\\/p><p>Before working at IdeaBase, I interned in the Spring of 2015 for an awesome company called Rebecca Adele PR & Events. I learned so much about myself and event planning there. One major thing I learned was that I didn\\u2019t want to go into PR after I graduate (the other career path I considered) and event planning is really what I love and have a passion for.<\\/p><p>The owner, Becki, puts on over 10 art shows called the Avant-Garde Art & Craft Shows all throughout Northeast Ohio. There were over 100 vendors at each event and I helped personally put on 4 shows. I also helped in the launch of a new show line called Bump to Bows- A Mommy Boutique Show.<\\/p><p>When it comes to IdeaBase, I actually heard about the agency through one of the managers, Kristin, who is a longtime-family friend. When she told me about IdeaBase it immediately sparked my interest, and when the opportunity for an event coordinator came up, I jumped at it. I really enjoy working here and have already learned so much! IdeaBase is such a fun, encouraging, and helpful work environment. Being new here, whenever I have a question or concern, they immediately do whatever possible to help me. I have also learned so much about what it means working at a design agency and how talented my co-workers are!<\\/p><p>As for my personal life, in my free time you can probably find me outside (if it\\u2019s nice out), at a mall because I have a deep love for clothes and fashion or hanging out with my two cats. I travel at any opportunity I can; I hope to travel to all 50 states one day!<\\/p><p>After graduation I hope to get a job out of state. I am Cleveland born and raised and Ohio will always be home, but I know I need to get out of here and explore more than just my bubble that is Ohio. I like to push myself to always try new things and take opportunities that push me outside my comfort zone because that\\u2019ll only make my comfort zone that much bigger.<\\/p>","49":""}}', '2015-11-05 15:05:05', '2015-11-05 15:05:05', '0cd5517e-3573-4c3e-9404-ffd8199ae436'),
(59, 132, 5, 87, 'en_us', 2, '', '{"typeId":"5","authorId":"87","title":"Event Planning 101: Victoria Ripepi","slug":"event-planning-101-victoria-ripepi","postDate":1446735900,"expiryDate":null,"enabled":1,"fields":{"60":["67"],"11":"<p>Hello, my name is Victoria Ripepi. I am an Interpersonal Communications major who is currently on my 5th year victory lap, but I am set to graduate in May 2016. I am the new event coordinator at IdeaBase.<\\/p><p>As long as I can remember, event planning has been an interest of mine. The first event I planned was in 3rd grade when my teacher asked me to help with a parent-teacher-open house. As a 3rd grader, I basically thought I was the coolest person in the world\\u2026 even though all I really did was set out some flyers, cookies, and juice. But I have enjoyed event planning ever since!<\\/p><p>I think I enjoy event planning because I am so organized, I like to fix problems, I work best under pressure, and I like the exciting\\/nervous feeling you get on the day of the event. A lot of times when I say I want to go into event planning after I graduate people automatically think I mean weddings, but that is not the case. I want to do open houses, launch parties, special-event parties and so on.<\\/p><p>Before working at IdeaBase, I interned in the Spring of 2015 for an awesome company called Rebecca Adele PR & Events. I learned so much about myself and event planning there. One major thing I learned was that I didn\\u2019t want to go into PR after I graduate (the other career path I considered) and event planning is really what I love and have a passion for.<\\/p><p>The owner, Becki, puts on over 10 art shows called the Avant-Garde Art & Craft Shows all throughout Northeast Ohio. There were over 100 vendors at each event and I helped personally put on 4 shows. I also helped in the launch of a new show line called Bump to Bows- A Mommy Boutique Show.<\\/p><p>When it comes to IdeaBase, I actually heard about the agency through one of the managers, Kristin, who is a longtime-family friend. When she told me about IdeaBase it immediately sparked my interest, and when the opportunity for an event coordinator came up, I jumped at it. I really enjoy working here and have already learned so much! IdeaBase is such a fun, encouraging, and helpful work environment. Being new here, whenever I have a question or concern, they immediately do whatever possible to help me. I have also learned so much about what it means working at a design agency and how talented my co-workers are!<\\/p><p>As for my personal life, in my free time you can probably find me outside (if it\\u2019s nice out), at a mall because I have a deep love for clothes and fashion or hanging out with my two cats. I travel at any opportunity I can; I hope to travel to all 50 states one day!<\\/p><p>After graduation I hope to get a job out of state. I am Cleveland born and raised and Ohio will always be home, but I know I need to get out of here and explore more than just my bubble that is Ohio. I like to push myself to always try new things and take opportunities that push me outside my comfort zone because that\\u2019ll only make my comfort zone that much bigger.<\\/p>","49":""}}', '2015-11-05 15:33:44', '2015-11-05 15:33:44', 'b983cf54-916d-4221-b7d9-ab436b26ddf4'),
(60, 99, 4, 87, 'en_us', 2, '', '{"typeId":"4","authorId":"87","title":"Project Title 2","slug":"project-title-2","postDate":1444000620,"expiryDate":null,"enabled":1,"fields":{"61":["67"],"9":"This is Project 2","46":"","48":""}}', '2015-11-05 15:40:31', '2015-11-05 15:40:31', '32211f08-f0c6-4064-9a19-820d8cfd33a1'),
(61, 119, 3, 87, 'en_us', 2, '', '{"typeId":"3","authorId":"87","title":"Kristin Dowling","slug":"kristin-dowling","postDate":1445536440,"expiryDate":null,"enabled":1,"fields":{"6":"<p>Kristin is the Business Development Manager for IdeaBase (formerly The Tannery). She is responsible for building client relationships in order to provide high quality experiential learning opportunities for our students.<\\/p>\\r\\n<p>She previously served as an Entrepreneur-in-Residence for the Center for Entrepreneurship and Business Innovation in the Kent State University College of Business. Her experience prior to coming to Kent State University was as Regional Operations Manager for Kinko\\u2019s Inc. (now known as FedEx Office).<\\/p>","4":"kdowling@ideabasekent.com","7":"","26":["5"],"3":"Business Development Manager","5":"330.672.7366","27":""}}', '2015-11-05 15:47:08', '2015-11-05 15:47:08', '638ad314-d269-4f86-bd7a-7cfb963e1eeb'),
(62, 119, 3, 87, 'en_us', 3, '', '{"typeId":"3","authorId":"87","title":"Kristin Dowling","slug":"kristin-dowling","postDate":1445536440,"expiryDate":null,"enabled":1,"fields":{"6":"<p>Kristin is the Business Development Manager for IdeaBase (formerly The Tannery). She is responsible for building client relationships in order to provide high quality experiential learning opportunities for our students.<\\/p><p>She previously served as an Entrepreneur-in-Residence for the Center for Entrepreneurship and Business Innovation in the Kent State University College of Business. Her experience prior to coming to Kent State University was as Regional Operations Manager for Kinko\\u2019s Inc. (now known as FedEx Office).<\\/p>","4":"kdowling@ideabasekent.com","7":"","26":["5"],"3":"Business Development Manager","5":"330.672.7366","27":""}}', '2015-11-05 15:51:18', '2015-11-05 15:51:18', '62bddc49-81bd-473b-8a56-ed87ff64b458'),
(63, 119, 3, 87, 'en_us', 4, '', '{"typeId":"3","authorId":"87","title":"Kristin Dowling","slug":"kristin-dowling","postDate":1445536440,"expiryDate":null,"enabled":1,"fields":{"6":"<p>Kristin is the Business Development Manager for IdeaBase (formerly The Tannery). She is responsible for building client relationships in order to provide high quality experiential learning opportunities for our students.<\\/p><p>She previously served as an Entrepreneur-in-Residence for the Center for Entrepreneurship and Business Innovation in the Kent State University College of Business. Her experience prior to coming to Kent State University was as Regional Operations Manager for Kinko\\u2019s Inc. (now known as FedEx Office).<\\/p>","4":"kdowling@ideabasekent.com","7":"","26":["5"],"3":"Business Development Manager","5":"330.672.7366","27":["135"]}}', '2015-11-05 15:52:54', '2015-11-05 15:52:54', 'eb1fe89f-1208-49f8-b46f-a273cf9fba0e'),
(64, 67, 3, 87, 'en_us', 9, '', '{"typeId":"3","authorId":"1","title":"Reilly Hawkins","slug":"reilly-hawkins","postDate":1442584980,"expiryDate":null,"enabled":1,"fields":{"6":"<p>This is a test biography for Reilly Hawkins. This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\"><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p><p><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><br><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p><p><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\"><span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\">This is a test biography for Reilly Hawkins. <span class=\\"redactor-invisible-space\\"><\\/span><\\/span><\\/span><\\/span><br><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>","4":"rhawkins@ideabasekent.com","7":"I legally had my name changed in Kindergarten. It used to be Andrew Quaid Hawkins, however there were 4 other \\u201cAndrews\\u201d in my class so my mom wanted it to be more unique. Changed to Reilly William Hawkins.","26":["6"],"3":"Web Programmer","5":"440.221.9193","27":["141"]}}', '2015-11-05 16:13:49', '2015-11-05 16:13:49', '7f428b60-9751-4b11-a84c-3454229cb6bd'),
(65, 120, 3, 87, 'en_us', 2, '', '{"typeId":"3","authorId":"87","title":"Christopher Hallahan","slug":"christopher-hallahan","postDate":1445536440,"expiryDate":null,"enabled":1,"fields":{"6":"<p>Chris is a full-time user experience designer for<a href=\\"http:\\/\\/ideabasekent.com\\/\\"> <u>IdeaBase<\\/u><\\/a> and<a href=\\"http:\\/\\/www.kent.edu\\/cci\\"> <u>Kent State University\\u2019s College of Communication and Information<\\/u><\\/a>. He manages research and interactive\\/web projects at IdeaBase, and works one-on-one with IdeaBase students to teach them web design, user experience and content management techniques.<\\/p>\\r\\n<p>His passions include responsive web design, usability, information architecture and content management system design (especially WordPress).  In addition to his work at IdeaBase, he teaches courses in Digital Sciences and Responsive Web Design.<\\/p><br>He is a graduate of Kent State, with a bachelor\\u2019s degree in Electronic Media and master\\u2019s degree in User Experience Design. He lives in Kent, OH.","4":"challahan@ideabasekent.com","7":"","26":["8"],"3":"User Experience Designer","5":"330.672.3031","27":["134"]}}', '2015-11-05 16:14:37', '2015-11-05 16:14:37', '351780e1-dc9b-4313-acec-f4a8922fddf1'),
(66, 146, 3, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Quintin Steele","slug":"quintin-steele","postDate":1446740353,"expiryDate":null,"enabled":1,"fields":{"6":"<p>This is Quintin''s biography.This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\">This is Quintin''s biography.<span class=\\"redactor-invisible-space\\"><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>","4":"qsteele@ideabasekent.com","7":"This is Quintin''s fun fact.","26":["5"],"3":"IdeaBase Creative Director","5":"330.672.7300","27":["139"]}}', '2015-11-05 16:19:13', '2015-11-05 16:19:13', '7f46bf2f-a757-4b44-beb0-106e99d683c0'),
(67, 120, 3, 87, 'en_us', 3, '', '{"typeId":"3","authorId":"87","title":"Christopher Hallahan","slug":"christopher-hallahan","postDate":1445536440,"expiryDate":null,"enabled":1,"fields":{"6":"<p>Chris is a full-time user experience designer for<a href=\\"http:\\/\\/ideabasekent.com\\/\\"> <u>IdeaBase<\\/u><\\/a> and<a href=\\"http:\\/\\/www.kent.edu\\/cci\\"> <u>Kent State University\\u2019s College of Communication and Information<\\/u><\\/a>. He manages research and interactive\\/web projects at IdeaBase, and works one-on-one with IdeaBase students to teach them web design, user experience and content management techniques.<\\/p><p>His passions include responsive web design, usability, information architecture and content management system design (especially WordPress).  In addition to his work at IdeaBase, he teaches courses in Digital Sciences and Responsive Web Design.<\\/p><br>He is a graduate of Kent State, with a bachelor\\u2019s degree in Electronic Media and master\\u2019s degree in User Experience Design. He lives in Kent, OH.","4":"challahan@ideabasekent.com","7":"","26":["5"],"3":"User Experience Designer","5":"330.672.3031","27":["134"]}}', '2015-11-05 16:20:03', '2015-11-05 16:20:03', '347aefa2-8029-4b91-81d8-1fe4adff59d3'),
(68, 2, 1, 87, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"IdeaBase Kent New Website","slug":"homepage","postDate":1442581332,"expiryDate":null,"enabled":1,"fields":{"37":["93"],"36":"<p>We\\u2019re a Kent State student-powered design agency located in downtown Kent, OH. Our student employees represent a variety of backgrounds and disciplines, united in their passion for creating meaningful designs to support our clients\\u2019 design initiatives. <\\/p><p><br>At IdeaBase, we\\u2019re determined to deliver quality design solutions while equipping our student team with lasting experiential learning opportunities.<br><\\/p>","66":"Our design process is tailored to you.","35":"Research-based, student-powered design solutions.","68":"<p>Our processes deliver results. No matter the industry or design challenge, our past work speaks for itself.<\\/p>","67":"Tried-and-True"}}', '2015-11-05 16:38:59', '2015-11-05 16:38:59', '7b35ff52-78a1-4cf5-91d7-75fbdaa95bce'),
(69, 147, 3, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Victoria Ripepi","slug":"victoria-ripepi","postDate":1446762386,"expiryDate":null,"enabled":1,"fields":{"6":"<p>This is Victoria''s biography. This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\">This is Victoria''s biography. <span class=\\"redactor-invisible-space\\"><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>","4":"vripepi@ideabasekent.com","7":"I own 64 pairs of shoes.","26":["6"],"3":"Event Coordinator","5":"N\\/A","27":["142"]}}', '2015-11-05 22:26:27', '2015-11-05 22:26:27', '24ca48c5-6676-468b-bbb5-d0b49de2f396'),
(70, 132, 5, 87, 'en_us', 3, '', '{"typeId":"5","authorId":"87","title":"Event Planning 101: Victoria Ripepi","slug":"event-planning-101-victoria-ripepi","postDate":1446735900,"expiryDate":null,"enabled":1,"fields":{"60":"","11":"<p>Hello, my name is Victoria Ripepi. I am an Interpersonal Communications major who is currently on my 5th year victory lap, but I am set to graduate in May 2016. I am the new event coordinator at IdeaBase.<\\/p><p>As long as I can remember, event planning has been an interest of mine. The first event I planned was in 3rd grade when my teacher asked me to help with a parent-teacher-open house. As a 3rd grader, I basically thought I was the coolest person in the world\\u2026 even though all I really did was set out some flyers, cookies, and juice. But I have enjoyed event planning ever since!<\\/p><p>I think I enjoy event planning because I am so organized, I like to fix problems, I work best under pressure, and I like the exciting\\/nervous feeling you get on the day of the event. A lot of times when I say I want to go into event planning after I graduate people automatically think I mean weddings, but that is not the case. I want to do open houses, launch parties, special-event parties and so on.<\\/p><p>Before working at IdeaBase, I interned in the Spring of 2015 for an awesome company called Rebecca Adele PR & Events. I learned so much about myself and event planning there. One major thing I learned was that I didn\\u2019t want to go into PR after I graduate (the other career path I considered) and event planning is really what I love and have a passion for.<\\/p><p>The owner, Becki, puts on over 10 art shows called the Avant-Garde Art & Craft Shows all throughout Northeast Ohio. There were over 100 vendors at each event and I helped personally put on 4 shows. I also helped in the launch of a new show line called Bump to Bows- A Mommy Boutique Show.<\\/p><p>When it comes to IdeaBase, I actually heard about the agency through one of the managers, Kristin, who is a longtime-family friend. When she told me about IdeaBase it immediately sparked my interest, and when the opportunity for an event coordinator came up, I jumped at it. I really enjoy working here and have already learned so much! IdeaBase is such a fun, encouraging, and helpful work environment. Being new here, whenever I have a question or concern, they immediately do whatever possible to help me. I have also learned so much about what it means working at a design agency and how talented my co-workers are!<\\/p><p>As for my personal life, in my free time you can probably find me outside (if it\\u2019s nice out), at a mall because I have a deep love for clothes and fashion or hanging out with my two cats. I travel at any opportunity I can; I hope to travel to all 50 states one day!<\\/p><p>After graduation I hope to get a job out of state. I am Cleveland born and raised and Ohio will always be home, but I know I need to get out of here and explore more than just my bubble that is Ohio. I like to push myself to always try new things and take opportunities that push me outside my comfort zone because that\\u2019ll only make my comfort zone that much bigger.<\\/p>","49":""}}', '2015-11-05 22:27:27', '2015-11-05 22:27:27', '74e9bc66-7587-427a-a829-bf3720c98827'),
(71, 148, 15, 87, 'en_us', 1, NULL, '{"typeId":"15","authorId":null,"title":"Projects Homepage","slug":"projects-homepage","postDate":1446819541,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-06 14:19:01', '2015-11-06 14:19:01', 'e16df361-cf8c-4673-aede-73fba3dc7a2d'),
(72, 148, 15, 87, 'en_us', 2, '', '{"typeId":"15","authorId":null,"title":"Projects Homepage","slug":"projects-homepage","postDate":1446819866,"expiryDate":null,"enabled":1,"fields":{"71":"How we''re making a difference.","72":"<p>We make a positive impact on your design, and our student designers.<\\/p>","74":"<p>At IdeaBase, we want our student employees to succeed. Thats''s why we partner with Glyphix to teach the next generation through studio experiences. Our students develop and exercise project-based skills in marketing, design, research and more. Additionally, our Responsive Web Design class ensures the next generation of designers and developers understand how to create highly functional and usable websites.<\\/p><p><br><\\/p><p>Learn about our transformative classroom experiences.<\\/p>","73":"Helping our students succeed.","69":"Tried-and-true","70":"<p>Our award-winning process delivers quality design solutions that transform our clients'' products.<\\/p>"}}', '2015-11-06 14:27:52', '2015-11-06 14:27:52', '5159fe4f-d274-4473-98a2-03b62fe1a3c4'),
(73, 81, 6, 87, 'en_us', 2, '', '{"typeId":"6","authorId":"1","title":"ADDY AWARD","slug":"award-title","postDate":1442968620,"expiryDate":null,"enabled":1,"fields":{"75":["98"],"15":"","14":{"date":"9\\/8\\/2015"},"13":"","16":"http:\\/\\/www.google.com"}}', '2015-11-06 15:06:53', '2015-11-06 15:06:53', '079087dd-284b-4188-9727-3e3286cf2502'),
(74, 81, 6, 87, 'en_us', 3, '', '{"typeId":"6","authorId":"1","title":"ADDY AWARD","slug":"award-title","postDate":1442968620,"expiryDate":null,"enabled":1,"fields":{"75":["98"],"15":"","14":{"date":"9\\/8\\/2015"},"13":"ADDY AWARD","16":"http:\\/\\/www.google.com"}}', '2015-11-06 15:23:56', '2015-11-06 15:23:56', '02bd20b4-dd84-488d-9ac4-4d75bfcf24f1'),
(75, 81, 6, 87, 'en_us', 4, '', '{"typeId":"6","authorId":"1","title":"ADDY AWARD","slug":"award-title","postDate":1442968620,"expiryDate":null,"enabled":1,"fields":{"75":["98"],"15":"","14":{"date":"9\\/8\\/2015"},"13":"ADDY AWARD","16":"http:\\/\\/www.google.com"}}', '2015-11-06 15:23:57', '2015-11-06 15:23:57', '88411d6f-4ffc-40f4-9fb6-0348c9bd3c7b'),
(76, 81, 6, 87, 'en_us', 5, '', '{"typeId":"6","authorId":"1","title":"ADDY AWARD","slug":"award-title","postDate":1442968620,"expiryDate":null,"enabled":1,"fields":{"75":["99"],"15":"","14":{"date":"9\\/8\\/2015"},"13":"ADDY AWARD","16":"http:\\/\\/www.google.com"}}', '2015-11-06 15:33:46', '2015-11-06 15:33:46', '88dd105e-5251-4a57-b0ea-cc924b7fdea3'),
(77, 75, 6, 87, 'en_us', 3, '', '{"typeId":"6","authorId":"1","title":"This is an award","slug":"this-is-an-award","postDate":1442932380,"expiryDate":null,"enabled":1,"fields":{"75":["98"],"15":"test ","14":{"date":"9\\/8\\/2015"},"13":"","16":"http:\\/\\/www.google.com"}}', '2015-11-06 15:45:44', '2015-11-06 15:45:44', 'c19b32ea-01f4-411e-9b63-00116a144acd'),
(78, 78, 7, 87, 'en_us', 2, '', '{"typeId":"7","authorId":"1","title":"this is a testimonial","slug":"this-is-a-testimonial","postDate":1442932620,"expiryDate":null,"enabled":1,"fields":{"19":{"date":""},"17":"","76":["98"],"18":""}}', '2015-11-06 15:46:55', '2015-11-06 15:46:55', 'a70d1084-e945-4eb2-9ffe-f437afae21d4'),
(79, 149, 3, 87, 'en_us', 1, '', '{"typeId":null,"authorId":"87","title":"Larrie King","slug":"larrie-king","postDate":1447175708,"expiryDate":null,"enabled":1,"fields":{"6":"<p>This is Larrie''s test bio.<\\/p>","4":"lking@ideabasekent.com","7":"","26":["5"],"3":"Creative Director, Glyphix","5":"330.672.7300","27":""}}', '2015-11-10 17:15:08', '2015-11-10 17:15:08', '6db22c73-43a8-4989-981d-ca2a7bbe2c9e');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2015-09-18 13:02:12', '2015-09-18 13:02:12', '57ce97e4-e837-42d8-a203-66d9e42b89b0'),
(2, 'Staff Profile', '2015-09-18 13:16:04', '2015-09-18 13:16:04', 'ee6b13a7-3ac7-464b-8b7a-26d7ba4bb7df'),
(3, 'Projects', '2015-09-18 13:17:56', '2015-09-18 13:17:56', '530aed3b-0162-4498-a621-2aadbbb6d404'),
(4, 'Blog Post', '2015-09-18 13:18:34', '2015-10-30 15:29:51', '5bf3e2a8-0004-424d-9ae5-1b8421680225'),
(5, 'Awards', '2015-09-18 13:20:24', '2015-09-18 13:20:24', 'e2ae3b9f-6686-4406-809a-4b9ee79ec93d'),
(6, 'Testimonial', '2015-09-18 13:21:39', '2015-09-18 13:21:39', 'b5f43a93-be6b-4b38-9706-4fb8a31ee561'),
(7, 'Services', '2015-09-18 13:22:56', '2015-09-18 13:22:56', '09d4e99d-0425-449b-934a-c81c9df60932'),
(8, 'Clients', '2015-09-18 13:25:07', '2015-09-18 13:25:07', 'f81c278e-1c08-43f8-ac03-47b136725fa8'),
(10, 'Header', '2015-09-29 14:58:06', '2015-09-29 14:58:06', '2a713a00-4b52-4311-85a3-8bad1e7d0047'),
(11, 'Footer', '2015-09-29 14:59:04', '2015-09-29 14:59:04', 'fb4cd045-d137-45b0-99d6-b1ca8804a96c'),
(12, 'Homepage', '2015-09-29 15:08:45', '2015-09-29 15:08:45', 'd17852e1-7469-44af-a541-c5fa10baabce'),
(13, 'Staff Profile Index', '2015-10-06 14:08:23', '2015-10-06 14:08:23', '7c146ebe-2e64-4b72-9f92-ccebe64744a8'),
(14, 'Process Index', '2015-10-06 14:37:38', '2015-10-06 14:37:38', 'ce0db148-c92e-46fd-a5f0-c31ab63a684a'),
(15, 'Case Study', '2015-10-30 15:29:42', '2015-10-30 15:29:42', '6235705b-37fe-479c-8e70-9ab58c35a895'),
(16, 'Social Media', '2015-10-30 15:38:22', '2015-10-30 15:38:22', '9c49af92-c7fe-4dad-9695-e4fae501173b'),
(17, 'Basic Page', '2015-11-03 17:22:21', '2015-11-03 17:22:21', 'a4479868-a021-4dc8-b352-217ebcc51275'),
(18, 'Projects Homepage', '2015-11-06 14:19:34', '2015-11-06 14:19:34', 'a92a1fae-a156-4c98-acf5-d03623968087');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=141 ;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 2, 1, 1, 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '90cd67b0-c75a-4d5e-9589-81e85c22a97d'),
(3, 5, 2, 2, 0, 2, '2015-09-18 13:02:13', '2015-09-18 13:02:13', '801144c5-5224-404a-89a9-4e8784982551'),
(12, 20, 6, 22, 0, 1, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '821bd6aa-b31e-4945-8fb2-4ed122e52a08'),
(13, 20, 6, 23, 0, 2, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '9a1e7c37-0daa-4b15-bd31-80ce7f1a2e20'),
(50, 49, 15, 28, 0, 1, '2015-10-02 14:57:36', '2015-10-02 14:57:36', 'ff6ed4e1-5e97-4113-80f3-8ee0e6da1be9'),
(51, 50, 16, 30, 0, 1, '2015-10-02 14:58:11', '2015-10-02 14:58:11', 'fc921815-5930-4040-892e-5d696c672ce7'),
(52, 50, 16, 29, 0, 2, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '625fbadb-211e-4b4b-a1bd-368561be5916'),
(53, 50, 16, 34, 0, 3, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '0a79b4ef-6799-4b45-ab0f-1a76d81dbada'),
(54, 50, 16, 33, 0, 4, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '81f68aaa-e125-403e-a9e6-1b4c30cb6a0c'),
(55, 50, 16, 31, 0, 5, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '49988eb4-09b9-43bf-86c4-ae1bf9995130'),
(56, 50, 16, 32, 0, 6, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '54556b71-2d9f-4571-8981-d0c0be142fbe'),
(63, 56, 19, 44, 0, 1, '2015-10-06 14:41:04', '2015-10-06 14:41:04', '92541e0f-bd2d-451e-94bd-5c4e9d38e077'),
(64, 56, 19, 43, 0, 2, '2015-10-06 14:41:04', '2015-10-06 14:41:04', '3790e978-4055-4a2a-8c91-6acfdd30a6fb'),
(65, 56, 19, 42, 0, 3, '2015-10-06 14:41:04', '2015-10-06 14:41:04', 'adf707ed-b4da-4536-924b-b0f236c955df'),
(71, 58, 21, 20, 0, 1, '2015-10-06 15:24:28', '2015-10-06 15:24:28', '666f0b1b-1213-413f-a289-0ed77f4d6773'),
(72, 58, 21, 21, 0, 2, '2015-10-06 15:24:28', '2015-10-06 15:24:28', '40131860-f60d-4146-8ebc-cc2c867faa71'),
(73, 58, 21, 47, 0, 3, '2015-10-06 15:24:28', '2015-10-06 15:24:28', '83395947-d377-42be-8c58-e5dca13d31cf'),
(80, 67, 24, 50, 0, 1, '2015-10-30 15:31:05', '2015-10-30 15:31:05', '810f0d58-8d5a-4838-b485-b071f2d32c43'),
(86, 72, 29, 52, 0, 1, '2015-10-30 16:15:21', '2015-10-30 16:15:21', '61c2081b-8b27-48dc-8141-c5c1c5fa8347'),
(87, 72, 29, 54, 0, 2, '2015-10-30 16:15:21', '2015-10-30 16:15:21', 'c064ae0d-86a1-4da9-bebb-2f9cb48f9c80'),
(88, 73, 30, 51, 0, 1, '2015-11-03 17:10:04', '2015-11-03 17:10:04', '7b7ff697-25c3-4834-b89b-46cba9dcb089'),
(89, 75, 31, 55, 0, 1, '2015-11-03 17:23:03', '2015-11-03 17:23:03', '6445ab60-0bbc-40a0-a3af-0744d7acdcac'),
(90, 76, 32, 38, 0, 1, '2015-11-05 14:22:16', '2015-11-05 14:22:16', '8f0522e8-ff54-4fc6-8ff3-c28945eb9638'),
(91, 76, 32, 39, 0, 2, '2015-11-05 14:22:16', '2015-11-05 14:22:16', '204e43e0-f50d-47f9-a4dc-7ad6411497dc'),
(92, 76, 32, 56, 0, 3, '2015-11-05 14:22:16', '2015-11-05 14:22:16', '549a86ec-c141-4598-a119-d9b33d488a02'),
(93, 76, 32, 57, 0, 4, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'c2c32334-d503-4e00-abe8-fb1c5ca5d029'),
(94, 76, 32, 45, 0, 5, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'bad6fedf-2b6c-47ec-b160-da51c3413cca'),
(95, 76, 32, 40, 0, 6, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'af94cc84-08bf-449e-8035-85c04ef03f1a'),
(96, 76, 32, 41, 0, 7, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'caa525b4-c497-4bbc-b903-48b7d72d2cee'),
(97, 76, 32, 58, 0, 8, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'b8661281-6404-49dd-b49f-bb2a55e3c554'),
(101, 78, 34, 11, 0, 1, '2015-11-05 15:31:21', '2015-11-05 15:31:21', 'd646aa15-26a3-47b4-87fe-26bef158e2fe'),
(103, 78, 34, 60, 0, 3, '2015-11-05 15:31:21', '2015-11-05 15:31:21', 'afa2c02b-5244-4c6f-96e4-50112b4380ad'),
(104, 78, 34, 49, 0, 4, '2015-11-05 15:31:21', '2015-11-05 15:31:21', '06e2e946-8d2f-4611-b9c2-c6b1dc24bb69'),
(105, 79, 35, 46, 0, 1, '2015-11-05 15:40:18', '2015-11-05 15:40:18', '1496ab52-9ad0-4b31-9520-962181227c1e'),
(106, 79, 35, 61, 0, 2, '2015-11-05 15:40:18', '2015-11-05 15:40:18', '3355b0fe-dc57-4e74-8ed6-6de7d2056070'),
(107, 79, 35, 9, 0, 3, '2015-11-05 15:40:18', '2015-11-05 15:40:18', '63febf42-5d46-4da9-a754-b31217769dad'),
(108, 79, 35, 48, 0, 4, '2015-11-05 15:40:18', '2015-11-05 15:40:18', '8c99b03e-16b8-4088-9d6e-d50a1e4e0dd6'),
(109, 81, 36, 63, 0, 1, '2015-11-05 16:32:04', '2015-11-05 16:32:04', 'ed9d7d87-10fd-479b-acb2-094474e88049'),
(110, 81, 36, 64, 0, 2, '2015-11-05 16:32:04', '2015-11-05 16:32:04', '50a10c4c-7032-49ac-a72f-55314a4649da'),
(111, 81, 36, 65, 0, 3, '2015-11-05 16:32:04', '2015-11-05 16:32:04', '470168af-22a6-4af9-8aff-6ca64b60a324'),
(112, 82, 37, 37, 0, 1, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'b1a02e86-e04e-483a-8d7c-927dbf434693'),
(113, 82, 37, 36, 0, 2, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'bd1b4042-b955-44f5-ad4a-b2f04dfaf620'),
(114, 82, 37, 35, 0, 3, '2015-11-05 16:36:30', '2015-11-05 16:36:30', '32661e20-0f3b-4148-9b77-a895629e4a34'),
(115, 82, 37, 66, 0, 4, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'a068e119-cb27-45f0-aec2-3eeb37482884'),
(116, 82, 37, 67, 0, 5, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'ff8b7ec6-7552-48f3-adea-8146919abd32'),
(117, 82, 37, 68, 0, 6, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'd0f5c174-f044-420b-89e0-f878d91ea63f'),
(118, 84, 38, 69, 0, 1, '2015-11-06 14:24:13', '2015-11-06 14:24:13', '3caf8b6c-0009-4243-b5b4-afe390d504ef'),
(119, 84, 38, 70, 0, 2, '2015-11-06 14:24:13', '2015-11-06 14:24:13', 'd3144c39-ea30-4cd7-bee9-73ba83801375'),
(120, 84, 38, 71, 0, 3, '2015-11-06 14:24:13', '2015-11-06 14:24:13', 'd2ffe646-4fbb-4410-832d-177391810d52'),
(121, 84, 38, 72, 0, 4, '2015-11-06 14:24:13', '2015-11-06 14:24:13', '12eabef9-1ea1-4add-a084-0f8f53ef9bdb'),
(122, 84, 38, 73, 0, 5, '2015-11-06 14:24:13', '2015-11-06 14:24:13', '4dfc78be-0575-4f77-93e0-1e60d47d41de'),
(123, 84, 38, 74, 0, 6, '2015-11-06 14:24:13', '2015-11-06 14:24:13', 'b34286ea-137b-402e-ba69-cfd49b3e7a9c'),
(124, 85, 39, 15, 0, 1, '2015-11-06 15:06:10', '2015-11-06 15:06:10', 'abe5ac40-ec54-4f64-b9b8-202ff78f0735'),
(125, 85, 39, 14, 0, 2, '2015-11-06 15:06:10', '2015-11-06 15:06:10', '3592daf6-8274-4da4-9f3f-39c6e519c748'),
(126, 85, 39, 13, 0, 3, '2015-11-06 15:06:10', '2015-11-06 15:06:10', '6629d9d1-2d93-4af5-a6b4-b9f45d96d899'),
(127, 85, 39, 16, 0, 4, '2015-11-06 15:06:10', '2015-11-06 15:06:10', '272f0066-6679-40ff-8022-3c19677b0c5d'),
(128, 85, 39, 75, 0, 5, '2015-11-06 15:06:10', '2015-11-06 15:06:10', '5cef5416-bce8-4dd5-8d90-227c8bc7e32a'),
(129, 86, 40, 19, 0, 1, '2015-11-06 15:06:30', '2015-11-06 15:06:30', '755b0526-5adf-409a-a395-eaed903c42f7'),
(130, 86, 40, 17, 0, 2, '2015-11-06 15:06:30', '2015-11-06 15:06:30', '4844d1d7-262a-4255-b059-fbd239b13d12'),
(131, 86, 40, 18, 0, 3, '2015-11-06 15:06:30', '2015-11-06 15:06:30', 'a2a811ca-cb83-4ef3-9bef-b6bc0cfe21ec'),
(132, 86, 40, 76, 0, 4, '2015-11-06 15:06:30', '2015-11-06 15:06:30', '2d0f0667-e1b5-4c02-a8f3-13eb25ae3fa4'),
(133, 87, 41, 27, 0, 1, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '6a86b94f-4838-4599-a5bf-5cf2becdf97a'),
(134, 87, 41, 6, 0, 2, '2015-11-10 17:18:25', '2015-11-10 17:18:25', 'b019f3e3-baa9-471b-adca-96e51b37e556'),
(135, 87, 41, 4, 0, 3, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '8189456f-410b-4c3f-8302-95bc2d94b0fd'),
(136, 87, 41, 7, 0, 4, '2015-11-10 17:18:25', '2015-11-10 17:18:25', 'd5da3e53-0454-49db-8dc5-4cf3f0d924df'),
(137, 87, 41, 26, 0, 5, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '35d100bf-458d-4c56-90b5-c91c670ae537'),
(138, 87, 41, 3, 0, 6, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '97104886-6f31-4cd5-ab65-927617da9d18'),
(139, 87, 41, 77, 0, 7, '2015-11-10 17:18:25', '2015-11-10 17:18:25', 'f396a10d-c04a-4799-ac24-4a52739f8ade'),
(140, 87, 41, 5, 0, 8, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '2c2adb3e-0256-4e53-928d-6d27ee6a33e0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'e28c218b-e99f-4146-9335-9121ca397ff4'),
(5, 'Entry', '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'da15daa6-ac64-4ebd-8413-0edfd64d2100'),
(13, 'Category', '2015-09-18 13:26:54', '2015-09-18 13:26:54', '9ffa17d5-bd8d-41f3-beee-24b19b1bd454'),
(19, 'Entry', '2015-09-18 14:01:05', '2015-09-18 14:01:05', '67a18141-8942-43cb-9a62-f768577279d2'),
(20, 'Entry', '2015-09-18 14:01:18', '2015-09-18 14:01:18', 'ef745081-c0bb-4e1d-bd6e-7cc565d8ba5e'),
(38, 'Asset', '2015-09-25 13:10:45', '2015-09-25 13:10:45', 'fdf5099d-ca20-4ccc-9c1d-94c857513180'),
(49, 'GlobalSet', '2015-10-02 14:57:36', '2015-10-02 14:57:36', '14e3726e-9ab2-4b44-847d-461ecf5e92f7'),
(50, 'GlobalSet', '2015-10-02 14:58:11', '2015-10-02 14:58:11', '3612941a-8d8a-4526-8777-ea5a9b5b8bc7'),
(56, 'Entry', '2015-10-06 14:41:04', '2015-10-06 14:41:04', 'b914888e-9cf3-434f-a972-9e2d4057468b'),
(58, 'Entry', '2015-10-06 15:24:28', '2015-10-06 15:24:28', '7e0c40c7-30fa-4802-9f27-43d60214f3f3'),
(60, 'Category', '2015-10-30 14:05:08', '2015-10-30 14:05:08', 'c1a00b2e-e864-473f-a7e8-e1813553aa31'),
(63, 'Asset', '2015-10-30 15:08:28', '2015-10-30 15:08:28', 'c2c57a19-6db0-4a6d-97be-e785f79d10ad'),
(67, 'Entry', '2015-10-30 15:31:05', '2015-10-30 15:31:05', '1e857f08-f18c-41c5-a69c-59944aea495d'),
(72, 'MatrixBlock', '2015-10-30 16:15:21', '2015-10-30 16:15:21', '6c32601d-bae8-4aff-bf40-0bb0736c07ac'),
(73, 'GlobalSet', '2015-11-03 17:10:04', '2015-11-03 17:10:04', 'fd72e9e5-bfb0-45d3-88ca-c78f846954e1'),
(75, 'Entry', '2015-11-03 17:23:03', '2015-11-03 17:23:03', '8f9ce12d-282a-4c05-a79c-3e7fe7609dd0'),
(76, 'Entry', '2015-11-05 14:22:16', '2015-11-05 14:22:16', '3d0f40ef-64b1-4d19-bb1b-544a9add4eec'),
(78, 'Entry', '2015-11-05 15:31:21', '2015-11-05 15:31:21', '32fd517f-bf53-413e-af9e-22d1a6703b6a'),
(79, 'Entry', '2015-11-05 15:40:18', '2015-11-05 15:40:18', '10daa617-c8a1-4177-9869-d4105c9af201'),
(80, 'Asset', '2015-11-05 16:02:40', '2015-11-05 16:02:40', 'e7b3d2ee-768e-4349-9ef5-97b7adfe32db'),
(81, 'MatrixBlock', '2015-11-05 16:32:04', '2015-11-05 16:32:04', 'fd0b3cdb-75e7-436e-93ae-7079ce593fda'),
(82, 'Entry', '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'be75eb11-f99c-4acb-a944-526a41b1b564'),
(84, 'Entry', '2015-11-06 14:24:13', '2015-11-06 14:24:13', 'fa4c6cb6-79c4-4e13-96f5-29832e6b7869'),
(85, 'Entry', '2015-11-06 15:06:10', '2015-11-06 15:06:10', '21f47a8f-776d-443f-bc57-54939ef8e2d0'),
(86, 'Entry', '2015-11-06 15:06:30', '2015-11-06 15:06:30', '82808cb6-30aa-43bf-a3f1-506f2c6fe574'),
(87, 'Entry', '2015-11-10 17:18:25', '2015-11-10 17:18:25', 'b28555b6-f3c0-4eac-9257-2d445c2263ed');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 'Content', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'aa3b88a5-3a3e-4741-9f70-42bf377b9882'),
(5, 19, 'Case Study', 1, '2015-09-18 14:01:05', '2015-09-18 14:01:05', '539e92ae-a514-45fd-87b3-aa01a98f928b'),
(6, 20, 'Clients', 1, '2015-09-18 14:01:18', '2015-09-18 14:01:18', '115adbd0-9a8a-4d3f-bb72-fd43e72d1c00'),
(15, 49, 'Content', 1, '2015-10-02 14:57:36', '2015-10-02 14:57:36', 'f97ef83f-09b5-4a21-935f-9d7b4fbd1b86'),
(16, 50, 'Content', 1, '2015-10-02 14:58:11', '2015-10-02 14:58:11', '626e4d87-eae5-48c6-867b-042a720c66d7'),
(19, 56, 'Process Index', 1, '2015-10-06 14:41:04', '2015-10-06 14:41:04', '53b792ec-c3c3-4e17-8754-ab8cc9b1dd4b'),
(21, 58, 'Services', 1, '2015-10-06 15:24:28', '2015-10-06 15:24:28', '5646aabc-95e0-40ed-b46c-42ec56306322'),
(24, 67, 'Case Study', 1, '2015-10-30 15:31:05', '2015-10-30 15:31:05', '7099920f-721d-47c7-89c8-39d881717866'),
(29, 72, 'Content', 1, '2015-10-30 16:15:21', '2015-10-30 16:15:21', '8b0c1498-f558-462e-8b04-007b570c45b9'),
(30, 73, 'Content', 1, '2015-11-03 17:10:04', '2015-11-03 17:10:04', '8041294f-cbee-4ade-9fd4-ff5df6cdd22e'),
(31, 75, 'Basic Page', 1, '2015-11-03 17:23:03', '2015-11-03 17:23:03', '706f3651-a903-45dd-86ff-0b81486d3c25'),
(32, 76, 'Staff Profile Index', 1, '2015-11-05 14:22:16', '2015-11-05 14:22:16', 'f8c17ef1-7476-4f2d-a51d-7b78d9a6f83e'),
(34, 78, 'Blog Post', 1, '2015-11-05 15:31:21', '2015-11-05 15:31:21', 'dce96e6d-0b35-4efd-a2a8-b76f46747949'),
(35, 79, 'Projects', 1, '2015-11-05 15:40:18', '2015-11-05 15:40:18', '045deb23-c8e6-478f-8e3e-94941d6e7f6e'),
(36, 81, 'Content', 1, '2015-11-05 16:32:04', '2015-11-05 16:32:04', 'a0aab2c4-1e67-4d5b-930f-d3744825318c'),
(37, 82, 'Homepage', 1, '2015-11-05 16:36:30', '2015-11-05 16:36:30', 'eba46dd5-a9e9-4683-b11f-c6580add4118'),
(38, 84, 'Projects Homepage', 1, '2015-11-06 14:24:13', '2015-11-06 14:24:13', '2c5e0ec3-bbde-4fe3-96ad-558ead2f334a'),
(39, 85, 'Awards', 1, '2015-11-06 15:06:10', '2015-11-06 15:06:10', '0cd5baef-ec49-4927-afff-2d26e22add3f'),
(40, 86, 'Testimonial', 1, '2015-11-06 15:06:30', '2015-11-06 15:06:30', '8fe9d772-c2fb-4d64-9ee8-c76ead957a57'),
(41, 87, 'Staff Profile', 1, '2015-11-10 17:18:25', '2015-11-10 17:18:25', '646b596c-97ee-4cbe-a61f-8caac368b4d0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=78 ;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2015-09-18 13:02:12', '2015-09-18 13:02:12', '9e89bf8c-72a5-450b-ba75-8824989298d8'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'd770ad6e-aa7c-40bf-839c-739506217a0a'),
(3, 2, 'Job Title', 'profileJobTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:16:23', '2015-09-18 13:16:23', '777a824e-dad6-4ebd-822f-7cc5adb212ec'),
(4, 2, 'Contact Email', 'profileContactEmail', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:16:47', '2015-09-18 13:16:47', 'c74e9c92-c453-4ed4-9455-1f2328df37f5'),
(5, 2, 'Office Phone Number', 'profileOfficePhoneNumber', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:17:09', '2015-11-05 15:45:22', 'b90c909d-247c-495c-a677-26262f9d5e81'),
(6, 2, 'Biography / Description', 'profileBiographyDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-09-18 13:17:28', '2015-11-05 15:17:43', '18985c0c-136f-49e0-a0d0-ae4a7c508a77'),
(7, 2, 'Fun Fact', 'profileFunFact', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:17:41', '2015-09-18 13:17:41', 'c935afb7-57ba-45ff-a42a-d7fd1088ef0d'),
(9, 3, 'Description', 'projectDescription', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:18:24', '2015-09-18 13:18:24', '84427372-3369-480a-9edf-b715c370a552'),
(11, 4, 'Content', 'blogContent', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-09-18 13:18:58', '2015-11-05 15:00:25', 'df83f4ee-31d1-436f-ba1c-8bfa22253443'),
(13, 5, 'Title', 'awardTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:20:35', '2015-09-18 13:20:35', 'e5540779-9383-4e7c-bbd4-dc7d58502bc1'),
(14, 5, 'Date Awarded', 'awardDateAwarded', 'global', '', 0, 'Date', '{"minuteIncrement":"30","showDate":1,"showTime":0}', '2015-09-18 13:20:52', '2015-09-18 13:20:52', '0dfb5f0e-6796-4863-90a2-2f1edc6d7e15'),
(15, 5, 'Award Winning Project', 'awardWinningProject', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:21:07', '2015-09-18 13:21:07', 'faecfde3-91cf-4d8b-b928-411bd2d2e6d0'),
(16, 5, 'Winning Project URL', 'winningProjectUrl', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:21:30', '2015-09-18 13:21:30', '5d9c9acd-7274-4da5-876c-50ad83f4e149'),
(17, 6, 'Name of Quoter', 'testimonialNameOfQuoter', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:22:21', '2015-09-18 13:22:21', '02b7e16f-8d88-45f6-9a43-bca9acbacccf'),
(18, 6, 'Quote', 'testimonialQuote', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-09-18 13:22:32', '2015-11-06 14:54:21', 'e8bc7759-20ac-44f1-8554-f1de8c6eeb2a'),
(19, 6, 'Date of Quote', 'dateOfQuote', 'global', '', 0, 'Date', '{"minuteIncrement":"30","showDate":1,"showTime":0}', '2015-09-18 13:22:42', '2015-09-18 13:22:42', 'fd5c4806-58f8-471e-8624-6128fac0bcab'),
(20, 7, 'Service Title', 'serviceTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:23:07', '2015-09-18 13:23:07', '350533e2-2dfe-4b62-acfd-71408f3585d1'),
(21, 7, 'Service Description', 'serviceDescription', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:23:15', '2015-09-18 13:23:15', 'a84384d8-1861-4fbb-b713-e84f7576cbab'),
(22, 8, 'Client Title', 'clientTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:25:20', '2015-09-18 13:25:20', '3fad47b0-e0a0-40dc-a4a6-c611ae2c9edc'),
(23, 8, 'Primary Contact', 'primaryContact', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-09-18 13:25:30', '2015-09-18 13:25:30', '9b3d49b0-758e-46af-b381-0f5efafdd550'),
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
(36, 12, 'About Text', 'homepageAboutText', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-10-02 14:30:58', '2015-11-05 16:37:40', '22b956ea-f932-4f04-b494-c3d93ccb6fc3'),
(37, 12, 'About Image', 'aboutImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:4"],"defaultUploadLocationSource":"2","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image","pdf"],"limit":"","selectionLabel":"Add an asset"}', '2015-10-02 14:34:00', '2015-10-02 14:34:00', '87791f52-c30f-4200-a3d1-2e1ed4c36907'),
(38, 13, 'Header', 'staffIndexHeader', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-06 14:08:59', '2015-10-06 14:08:59', 'd527f734-3a48-469f-8fad-dc9b8a76bba1'),
(39, 13, 'Description', 'staffIndexDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-10-06 14:09:23', '2015-11-05 15:11:05', '33d40fad-ec9f-4d53-bb3b-6e6e372860f6'),
(40, 13, 'Work for IdeaBase Title', 'workForIdeabaseTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-06 14:09:50', '2015-10-06 14:09:50', 'f32cbc68-d356-4681-a857-908d103214a3'),
(41, 13, 'Work For IdeaBase Description', 'workForIdeabaseDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-10-06 14:10:00', '2015-11-05 15:11:17', 'b75d9265-620c-4ddd-b4d3-a2d605f56932'),
(42, 14, 'Process Header', 'processHeader', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-06 14:39:41', '2015-10-06 14:39:41', '7c14a7b7-1848-4554-913b-a6e60a2497f9'),
(43, 14, 'Process Featured Image', 'processFeaturedImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-10-06 14:40:18', '2015-10-06 14:40:18', 'ad9c7cb8-1969-42df-9fc4-8d0c81367ff7'),
(44, 14, 'Link to Projects', 'linkToProjects', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-06 14:40:38', '2015-10-06 14:40:38', '2f268800-4a11-40db-8cf7-e6780365730d'),
(45, 13, 'People Featured Image', 'peopleFeaturedImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-10-06 15:07:45', '2015-10-06 15:07:45', 'b5fe9c8e-9f87-41ad-b441-18c21604eb57'),
(46, 3, 'Project Picture', 'projectPicture', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-10-06 15:20:57', '2015-10-06 15:20:57', 'c32a916c-db65-4ef7-b59f-9e551998ebf6'),
(47, 7, 'Service Image', 'serviceImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-10-06 15:22:57', '2015-10-06 15:22:57', 'c84e7548-0720-470f-b9ab-2e541c26b35d'),
(48, 3, 'Project Picture 2', 'projectPicture2', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-10-14 23:48:18', '2015-10-14 23:48:18', 'cb28c554-66c5-49de-8410-30755469ccf3'),
(49, 4, 'Type of Post', 'typeOfPost', 'global', '', 0, 'Categories', '{"source":"group:5","limit":"","selectionLabel":"Add a category"}', '2015-10-30 14:08:39', '2015-10-30 14:08:39', '79add35b-ad3e-4802-ae20-ad585ebf118b'),
(50, 15, 'Content', 'caseStudyContent', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-10-30 15:30:17', '2015-10-30 15:30:17', 'bdcc1bcb-eb39-4f77-94ba-6fc700f34d61'),
(51, 16, 'Social Media Repeater', 'socialMediaRepeater', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2015-10-30 15:44:24', '2015-10-30 16:15:21', 'cea0a4d2-f693-45f8-bf17-b034d8755e79'),
(52, NULL, 'Social Media Name', 'socialMediaName', 'matrixBlockType:1', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-10-30 15:44:24', '2015-10-30 16:15:21', '25541a7a-de57-41b4-826e-133ff82d3929'),
(54, NULL, 'Social Media Link', 'socialMediaLink', 'matrixBlockType:1', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-10-30 15:46:29', '2015-10-30 16:15:21', '49558202-71e3-4d78-b27c-b3fe3c09067c'),
(55, 17, 'Content', 'basicContent', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-03 17:22:35', '2015-11-03 17:22:35', '8cb4bbdf-7564-4e09-bb2a-c844d565e590'),
(56, 13, 'Quality Headline', 'qualityHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-05 14:20:28', '2015-11-05 14:20:28', 'ce2657f0-a57a-45ea-a9cf-5767591e57d4'),
(57, 13, 'Quality Description', 'qualityDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-05 14:20:55', '2015-11-05 14:20:55', 'a7589219-de85-455b-a1ca-bd73283f3845'),
(58, 13, 'Work for IdeaBase Link', 'workForIdeabaseLink', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-05 14:21:13', '2015-11-05 14:21:13', '9960c434-0714-4541-bd49-df640c83008c'),
(60, 4, 'Author', 'blogAuthor', 'global', '', 0, 'Entries', '{"sources":["section:3"],"limit":"","selectionLabel":"Add an author"}', '2015-11-05 15:31:06', '2015-11-05 15:32:55', 'a2f07513-71fe-4dba-863c-e2c9df99fa3a'),
(61, 3, 'Contributor', 'contributor', 'global', '', 0, 'Entries', '{"sources":["section:3"],"limit":"","selectionLabel":"Add a project contributor"}', '2015-11-05 15:39:51', '2015-11-05 15:39:51', '6af11e5f-9254-4466-8697-e83d10ff4345'),
(62, 12, 'Homepage Matrix', 'homepageMatrix', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2015-11-05 16:32:04', '2015-11-05 16:32:04', '8141b5b5-f670-4a6f-be20-3f5ec213762e'),
(63, NULL, 'Process Name', 'processName', 'matrixBlockType:2', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-05 16:32:04', '2015-11-05 16:32:04', '493acf19-7b93-4a3b-9835-129c1e54e6d3'),
(64, NULL, 'Process Description', 'processDescription', 'matrixBlockType:2', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-05 16:32:04', '2015-11-05 16:32:04', '336fca8c-147c-4d54-a6d1-1c9fce4a4b49'),
(65, NULL, 'Process Image', 'processImage', 'matrixBlockType:2', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","selectionLabel":"Add an asset"}', '2015-11-05 16:32:04', '2015-11-05 16:32:04', 'ef13491a-ede7-4486-9e6b-d4789d171691'),
(66, 12, 'Design Headline', 'designHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-05 16:34:59', '2015-11-05 16:34:59', 'ea03222d-61e7-4ec0-9795-214df574b21f'),
(67, 12, 'Projects Headline', 'projectsHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-05 16:35:14', '2015-11-05 16:35:14', '5d5d1fff-bed1-4cd4-8abb-7b2d48b4f633'),
(68, 12, 'Projects Description', 'projectsDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-05 16:35:35', '2015-11-05 16:35:35', 'afe760ba-d00f-46ae-8e04-60f3a9ba37be'),
(69, 18, 'Project Headline', 'projectHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-06 14:19:49', '2015-11-06 14:19:49', 'dcf6b1da-2b70-4fbe-8dda-8e9fba272aa6'),
(70, 18, 'Projects Description', 'projectsSubDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-06 14:22:12', '2015-11-06 14:22:12', '425438f4-c90f-4ba3-8bf2-9d803c55ca9a'),
(71, 18, 'Case Study Headline', 'caseStudyHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-06 14:22:41', '2015-11-06 14:22:41', '2f184eeb-a0ab-4916-a650-a0f472ace4b5'),
(72, 18, 'Case Study Subdescription', 'caseStudySubDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-06 14:23:00', '2015-11-06 14:23:00', 'c8db0d5a-ade1-49a1-9328-0ebcd978e0cb'),
(73, 18, 'Classroom Experience Headline', 'classroomExperienceHeadline', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-06 14:23:13', '2015-11-06 14:23:13', '66592b50-aa97-4ae9-9c18-93a5ad37f4a8'),
(74, 18, 'Classroom Experience Description', 'classroomExperienceDescription', 'global', '', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-06 14:23:34', '2015-11-06 14:23:34', '1d832235-0cec-44d1-bd70-be091c176d9b'),
(75, 5, 'Award Association', 'awardAssociation', 'global', '', 0, 'Entries', '{"sources":["section:4"],"limit":"","selectionLabel":"Add an entry"}', '2015-11-06 14:53:38', '2015-11-06 14:53:38', '2bb32fc9-a273-4fd1-b6b3-683409e0af52'),
(76, 6, 'Project Association', 'projectAssociation', 'global', '', 0, 'Entries', '{"sources":["section:4"],"limit":"","selectionLabel":"Add an entry"}', '2015-11-06 14:54:03', '2015-11-06 14:54:03', '7ed33864-6a3b-4e52-aa16-49aec9157f25'),
(77, 2, 'College Degree', 'collegeDegree', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-10 17:17:53', '2015-11-10 17:17:53', '65fa560c-cabb-47d2-b67b-f5b75b9aa392');

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
(90, 'Footer', 'footer', 50, '2015-09-29 14:19:11', '2015-10-02 14:58:11', 'ab566658-6a28-424d-907e-7991a4ea5e75'),
(127, 'Social Media', 'socMedia', 73, '2015-10-30 15:17:55', '2015-11-03 17:10:04', '93caef91-2fca-40cf-ace6-c352de3e641c');

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
(1, '2.4', 2702, '2.4.0', '2015-10-28 22:36:17', 2, 'IdeaBase Website', 'http://localhost/prod', 'UTC', 1, 0, 'stable', '2015-09-18 13:02:07', '2015-11-05 16:04:51', '32522f96-e602-4fd0-b6e3-2d9325bf35cd');

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

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(129, 127, 51, 1, 1, NULL, '2015-10-30 15:46:46', '2015-10-30 16:25:13', '4a56da03-464a-425a-8a18-d6f71e508020'),
(130, 127, 51, 1, 2, NULL, '2015-10-30 16:07:20', '2015-10-30 16:25:13', '889ec973-8693-4299-bcee-b97a8ea28885');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 51, 72, 'Name', 'socialName', 1, '2015-10-30 15:44:24', '2015-10-30 16:15:21', '5e99a9c7-6233-4475-8fde-152b6e422ee6'),
(2, 62, 81, 'Home Processes', 'homeProcesses', 1, '2015-11-05 16:32:04', '2015-11-05 16:32:04', 'c9433e6f-a06a-4d51-b539-3cb4ce026879');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_homepagematrix`
--

CREATE TABLE `craft_matrixcontent_homepagematrix` (
`id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_homeProcesses_processName` text COLLATE utf8_unicode_ci,
  `field_homeProcesses_processDescription` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_socialmediarepeater`
--

CREATE TABLE `craft_matrixcontent_socialmediarepeater` (
`id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_socialName_socialMediaName` text COLLATE utf8_unicode_ci,
  `field_socialLink_socialMediaLink` text COLLATE utf8_unicode_ci,
  `field_socialName_socialMediaLink` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_matrixcontent_socialmediarepeater`
--

INSERT INTO `craft_matrixcontent_socialmediarepeater` (`id`, `elementId`, `locale`, `field_socialName_socialMediaName`, `field_socialLink_socialMediaLink`, `field_socialName_socialMediaLink`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 129, 'en_us', '<p>Twitter</p>', NULL, '<p><a href="http://www.twitter.com">http://www.twitter.com</a></p>', '2015-10-30 15:46:46', '2015-10-30 16:25:13', '4adefb19-b732-4afb-b993-4711a85a7c96'),
(2, 130, 'en_us', '<p>Instagram</p>', NULL, '<p><a href="http://www.instagram.com">http://www.instagram.com</a></p>', '2015-10-30 16:07:20', '2015-10-30 16:25:13', '863a29f9-0fe2-4d4a-8f50-1ce9b4dd66fa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ContactForm', '1.4', 1, '{"toEmail":"rhawkins@ideabasekent.com","prependSender":"On behalf of","prependSubject":"","allowAttachments":"","honeypotField":""}', '2015-10-27 15:27:49', '2015-10-27 15:27:49', '2015-10-27 15:28:52', '18d7ee8a-6ed3-4dca-83b5-99d094976ddb');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(27, 43, 109, NULL, 110, 1, '2015-10-06 15:03:17', '2015-10-06 15:03:17', '007f46ad-0a63-462c-90f1-08a2955d628f'),
(29, 47, 95, NULL, 112, 1, '2015-10-06 15:25:31', '2015-10-06 15:25:31', 'b30ef259-d572-4a06-a24c-3bf7bb8bb299'),
(30, 47, 96, NULL, 113, 1, '2015-10-06 15:25:44', '2015-10-06 15:25:44', 'fdaf18bc-7e78-4b1b-a883-034ff9219d93'),
(31, 47, 97, NULL, 114, 1, '2015-10-06 15:25:58', '2015-10-06 15:25:58', '601e1478-8765-4207-8863-d1e32a9be24e'),
(34, 46, 101, NULL, 115, 1, '2015-10-14 23:52:49', '2015-10-14 23:52:49', 'f68a719f-406b-4838-abbd-62a80c82a889'),
(35, 48, 101, NULL, 116, 1, '2015-10-14 23:52:49', '2015-10-14 23:52:49', '85b6e2be-686e-44dd-9df2-4a4d2588bf74'),
(57, 34, 90, NULL, 94, 1, '2015-10-23 15:50:20', '2015-10-23 15:50:20', '9640e7a7-4993-4b9b-9fd6-46104ba6fca0'),
(59, 49, 125, NULL, 123, 2, '2015-10-30 14:14:18', '2015-10-30 14:14:18', '9ed63e2a-64be-4836-919c-dec4d1b11993'),
(61, 49, 126, NULL, 122, 2, '2015-10-30 14:14:32', '2015-10-30 14:14:32', '8746b64c-7d7c-4ae2-b77a-9a46b4161d9e'),
(63, 45, 108, NULL, 111, 1, '2015-11-05 14:39:36', '2015-11-05 14:39:36', '825b4201-18ee-4521-8739-322ea5d022e0'),
(65, 61, 99, NULL, 67, 1, '2015-11-05 15:40:31', '2015-11-05 15:40:31', 'd0655fcc-4585-427f-b4cb-0cc829504058'),
(68, 26, 119, NULL, 5, 1, '2015-11-05 15:52:54', '2015-11-05 15:52:54', 'a6589631-d2d4-476c-a462-072718d62ca6'),
(69, 27, 119, NULL, 135, 1, '2015-11-05 15:52:54', '2015-11-05 15:52:54', '72f47c85-04aa-4b4e-93d0-ea06a996d651'),
(70, 28, 89, NULL, 145, 1, '2015-11-05 16:05:31', '2015-11-05 16:05:31', 'd6479459-8ec3-4b02-aa14-a8fcb09fee91'),
(71, 26, 67, NULL, 6, 1, '2015-11-05 16:13:49', '2015-11-05 16:13:49', 'e02c43cb-4f91-4c51-8b72-c23e8d5c0be4'),
(72, 27, 67, NULL, 141, 1, '2015-11-05 16:13:49', '2015-11-05 16:13:49', 'e07dcacb-2c06-4416-802d-69791275f134'),
(75, 26, 146, NULL, 5, 1, '2015-11-05 16:19:13', '2015-11-05 16:19:13', '25c25aea-623e-4ff5-9e40-c61d5c4be28c'),
(76, 27, 146, NULL, 139, 1, '2015-11-05 16:19:13', '2015-11-05 16:19:13', 'd178aa57-0138-4cfc-8aac-e7e9eb7733e2'),
(77, 26, 120, NULL, 5, 1, '2015-11-05 16:20:03', '2015-11-05 16:20:03', '21d24b51-9c17-4a8c-b9f1-de61e8a587ae'),
(78, 27, 120, NULL, 134, 1, '2015-11-05 16:20:03', '2015-11-05 16:20:03', '621b3e96-a4b5-4a5b-90a8-cca64ddb666a'),
(79, 37, 2, NULL, 93, 1, '2015-11-05 16:38:59', '2015-11-05 16:38:59', '8dfc0a87-7b01-481b-b7cd-928fa09f0ffc'),
(80, 26, 147, NULL, 6, 1, '2015-11-05 22:26:26', '2015-11-05 22:26:26', 'aa4f5029-1de3-4abd-9e20-594cb298a5df'),
(81, 27, 147, NULL, 142, 1, '2015-11-05 22:26:26', '2015-11-05 22:26:26', '4d2f7cb7-998e-4aa3-81fe-25f2f87f5890'),
(85, 75, 81, NULL, 99, 1, '2015-11-06 15:33:45', '2015-11-06 15:33:45', '68fe36be-dee9-4d18-9fd3-0378cc48f692'),
(86, 75, 75, NULL, 98, 1, '2015-11-06 15:45:44', '2015-11-06 15:45:44', '8fa0938d-e114-4ccd-ba65-5047aaf0d9fd'),
(87, 76, 78, NULL, 98, 1, '2015-11-06 15:46:55', '2015-11-06 15:46:55', 'c9dc3b42-1fd2-48e3-a155-d4fc5d91bba8'),
(88, 26, 149, NULL, 5, 1, '2015-11-10 17:15:08', '2015-11-10 17:15:08', 'ab370439-5bb2-4c65-996e-4a86f098dcbf');

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
(119, 'slug', 0, 'en_us', ' kristin dowling '),
(5, 'slug', 0, 'en_us', ' leadership '),
(5, 'title', 0, 'en_us', ' leadership '),
(6, 'slug', 0, 'en_us', ' student '),
(6, 'title', 0, 'en_us', ' student '),
(7, 'slug', 0, 'en_us', ' professional advisory board '),
(7, 'title', 0, 'en_us', ' professional advisory board '),
(8, 'slug', 0, 'en_us', ' faculty advisory board '),
(8, 'title', 0, 'en_us', ' faculty advisory board '),
(130, 'slug', 0, 'en_us', ''),
(130, 'field', 54, 'en_us', ' http www instagram com '),
(130, 'field', 52, 'en_us', ' instagram '),
(129, 'slug', 0, 'en_us', ''),
(129, 'field', 54, 'en_us', ' http www twitter com '),
(129, 'field', 52, 'en_us', ' twitter '),
(127, 'field', 51, 'en_us', ' http www twitter com twitter http www instagram com instagram '),
(128, 'field', 50, 'en_us', ' this is test content '),
(128, 'title', 0, 'en_us', ' this is a test case study '),
(128, 'slug', 0, 'en_us', ' this is a test case study '),
(126, 'title', 0, 'en_us', ' this is a test case study '),
(126, 'slug', 0, 'en_us', ' this is a test case study '),
(126, 'field', 49, 'en_us', ' case study '),
(126, 'field', 11, 'en_us', ''),
(127, 'slug', 0, 'en_us', ''),
(123, 'title', 0, 'en_us', ' blog '),
(123, 'slug', 0, 'en_us', ' blog '),
(122, 'title', 0, 'en_us', ' case study '),
(122, 'slug', 0, 'en_us', ' case study '),
(2, 'field', 35, 'en_us', ' research based student powered design solutions '),
(131, 'field', 11, 'en_us', ' hi my name is rachel kozy and i am a senior visual communication design major i actually just started working as a designer at ideabase a couple months ago but i will be here for the rest of the year even when i was a freshman in vcd i had always heard about glyphix and ideabase but i never knew if i d get the opportunity to work here when i became a junior though i started noticing all the work ideabase was putting out and it made me really interested in being a part of it before ideabase i had interned at mtv in new york city and go media in cleveland i ve also worked as a designer for kent state university libraries and i m currently working as the art director for brainchild and the president of kent s collegiate chapter of aiga working at ideabase is seriously the best i love working here it has such a great environment and i get to collaborate with the friendliest nicest people do work that i m passionate about and get paid i chose to major in visual communication design because i was really interested in creating things while in high school i ve always loved scrapbooking and working on the computer so graphic design just seemed like the perfect fit and luckily it has been there hasn t been one day that has passed where i ve regretted choosing this as my major and i m looking forward to continuing my career doing something i love the hardest part of my major is probably just making sure not to get burnt out it s easy to be overly ambitious and want to work on everything all the time but that eventually wears you down and you stop looking forward to it it s important to take breaks and find other interests that way you can always look forward to designing rather than it being a chore when i m not busy with work or design you can probably find me playing video games i grew up with a brother who constantly played so i ve developed a habit of it too my favorite genre is jrpgs and my favorite games specifically are persona 4 and the tales series after i graduate i m not entirely sure where i ll end up but i d love to find a position at a design firm or advertising agency i really want to work with a lot of different clients and brands and i think that s my best bet for that kind of work '),
(108, 'field', 58, 'en_us', ' learn more about working for ideabase '),
(108, 'field', 57, 'en_us', ' we re committed to delivering quality work to our clients that s why our student employees work under the guidance of our professional staff from kent state s college of communication of information and a professional advisory board our student employees interact directly with clients developing proposals managing projects and handling all stages of design production '),
(108, 'field', 56, 'en_us', ' committed to quality '),
(67, 'field', 6, 'en_us', ' this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins this is a test biography for reilly hawkins '),
(67, 'field', 4, 'en_us', ' rhawkins ideabasekent com '),
(67, 'field', 7, 'en_us', ' i legally had my name changed in kindergarten it used to be andrew quaid hawkins however there were 4 other andrews in my class so my mom wanted it to be more unique changed to reilly william hawkins '),
(67, 'field', 26, 'en_us', ' student '),
(67, 'field', 3, 'en_us', ' web programmer '),
(67, 'field', 5, 'en_us', ' 440 221 9193 '),
(67, 'slug', 0, 'en_us', ' reilly hawkins '),
(67, 'title', 0, 'en_us', ' reilly hawkins '),
(133, 'kind', 0, 'en_us', ' image '),
(133, 'slug', 0, 'en_us', ''),
(133, 'title', 0, 'en_us', ' brendanbennett 350x500 1 '),
(133, 'extension', 0, 'en_us', ' jpg '),
(133, 'filename', 0, 'en_us', ' brendanbennett 350x500_1 jpg '),
(71, 'filename', 0, 'en_us', ' screen shot 2015 09 16 at 8 18 14 am png '),
(71, 'extension', 0, 'en_us', ' png '),
(71, 'kind', 0, 'en_us', ' image '),
(71, 'slug', 0, 'en_us', ''),
(71, 'title', 0, 'en_us', ' screen shot 2015 09 16 at 8 18 14 am '),
(67, 'field', 27, 'en_us', ' reillyhawkins1 350x500 1 '),
(104, 'slug', 0, 'en_us', ''),
(104, 'title', 0, 'en_us', ' headshotimage '),
(104, 'kind', 0, 'en_us', ' image '),
(104, 'filename', 0, 'en_us', ' headshotimage jpeg '),
(104, 'extension', 0, 'en_us', ' jpeg '),
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
(125, 'title', 0, 'en_us', ' this is a test blog '),
(125, 'slug', 0, 'en_us', ' this is a test blog '),
(125, 'field', 49, 'en_us', ' blog '),
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
(81, 'field', 15, 'en_us', ''),
(81, 'field', 14, 'en_us', ' 2015 09 08 '),
(81, 'field', 13, 'en_us', ' addy award '),
(81, 'field', 16, 'en_us', ' http www google com '),
(81, 'slug', 0, 'en_us', ' award title '),
(81, 'title', 0, 'en_us', ' addy award '),
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
(2, 'field', 36, 'en_us', ' we re a kent state student powered design agency located in downtown kent oh our student employees represent a variety of backgrounds and disciplines united in their passion for creating meaningful designs to support our clients design initiatives at ideabase we re determined to deliver quality design solutions while equipping our student team with lasting experiential learning opportunities '),
(93, 'filename', 0, 'en_us', ' screen shot 2015 10 02 at 10 53 43 am png '),
(93, 'extension', 0, 'en_us', ' png '),
(93, 'kind', 0, 'en_us', ' image '),
(93, 'slug', 0, 'en_us', ''),
(93, 'title', 0, 'en_us', ' screen shot 2015 10 02 at 10 53 43 am '),
(89, 'field', 28, 'en_us', ' ideabaselogo '),
(90, 'field', 30, 'en_us', ' 123 example street kent oh 44240 '),
(90, 'field', 29, 'en_us', ' this is a call to action '),
(90, 'field', 34, 'en_us', ' footer map '),
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
(101, 'field', 9, 'en_us', ' this is a description of project 3 this is a description of project 3 this is a description of project 3 this is a description of project 3 this is a description of project 3 '),
(101, 'title', 0, 'en_us', ' project 3 '),
(125, 'field', 11, 'en_us', ' asdfasdfasf '),
(80, 'field', 49, 'en_us', ''),
(73, 'field', 49, 'en_us', ''),
(103, 'filename', 0, 'en_us', ' reillyhawkins jpg '),
(103, 'extension', 0, 'en_us', ' jpg '),
(103, 'kind', 0, 'en_us', ' image '),
(103, 'slug', 0, 'en_us', ' hawkins reilly '),
(103, 'title', 0, 'en_us', ' hawkins reilly '),
(106, 'filename', 0, 'en_us', ' another headshot jpeg '),
(106, 'extension', 0, 'en_us', ' jpeg '),
(106, 'kind', 0, 'en_us', ' image '),
(106, 'slug', 0, 'en_us', ''),
(106, 'title', 0, 'en_us', ' another headshot '),
(108, 'slug', 0, 'en_us', ' staff profile index '),
(108, 'title', 0, 'en_us', ' staff profile index '),
(108, 'field', 39, 'en_us', ' our student employees come from backgrounds of all shapes and sizes bringing with them a fresh and versatile approach that inspires our designs with backgrounds in visual communication design public relations user experience advertising computer information systmes digital sciences marketing and communications our diverse team members have one thing in common they re passionate about design '),
(108, 'field', 38, 'en_us', ' our students are passionate about design '),
(108, 'field', 41, 'en_us', ' we empower our student employees to imagine create and deliver quality designs whil gaining real world experience on client facing projects our studen employees get to put their design skills to the test build their resumes and jumpstart their careers '),
(108, 'field', 40, 'en_us', ' work for ideabase '),
(109, 'slug', 0, 'en_us', ' process index '),
(109, 'title', 0, 'en_us', ' process index '),
(109, 'field', 44, 'en_us', ' this is a link '),
(109, 'field', 43, 'en_us', ' web design '),
(109, 'field', 42, 'en_us', ' our design process is tailored to you '),
(110, 'filename', 0, 'en_us', ' web design jpg '),
(110, 'extension', 0, 'en_us', ' jpg '),
(110, 'kind', 0, 'en_us', ' image '),
(110, 'slug', 0, 'en_us', ''),
(110, 'title', 0, 'en_us', ' web design '),
(111, 'filename', 0, 'en_us', ' ideabasephoto 1500x683 jpg '),
(111, 'extension', 0, 'en_us', ' jpg '),
(111, 'kind', 0, 'en_us', ' image '),
(111, 'slug', 0, 'en_us', ''),
(111, 'title', 0, 'en_us', ' ideabasephoto 1500x683 '),
(108, 'field', 45, 'en_us', ' ideabasephoto 1500x683 '),
(112, 'filename', 0, 'en_us', ' download 1 jpeg '),
(112, 'extension', 0, 'en_us', ' jpeg '),
(112, 'kind', 0, 'en_us', ' image '),
(112, 'slug', 0, 'en_us', ''),
(112, 'title', 0, 'en_us', ' download 1 '),
(95, 'field', 47, 'en_us', ' download 1 '),
(113, 'filename', 0, 'en_us', ' download 2 jpeg '),
(113, 'extension', 0, 'en_us', ' jpeg '),
(113, 'kind', 0, 'en_us', ' image '),
(113, 'slug', 0, 'en_us', ''),
(113, 'title', 0, 'en_us', ' download 2 '),
(96, 'field', 47, 'en_us', ' download 2 '),
(114, 'filename', 0, 'en_us', ' download jpeg '),
(114, 'extension', 0, 'en_us', ' jpeg '),
(114, 'kind', 0, 'en_us', ' image '),
(114, 'slug', 0, 'en_us', ''),
(114, 'title', 0, 'en_us', ' download '),
(97, 'field', 47, 'en_us', ' download '),
(115, 'filename', 0, 'en_us', ' program project management jpg '),
(115, 'extension', 0, 'en_us', ' jpg '),
(115, 'kind', 0, 'en_us', ' image '),
(115, 'slug', 0, 'en_us', ''),
(115, 'title', 0, 'en_us', ' program project management '),
(116, 'filename', 0, 'en_us', ' projectmanagement jpg '),
(116, 'extension', 0, 'en_us', ' jpg '),
(116, 'kind', 0, 'en_us', ' image '),
(116, 'slug', 0, 'en_us', ''),
(116, 'title', 0, 'en_us', ' projectmanagement '),
(101, 'field', 46, 'en_us', ' program project management '),
(101, 'field', 48, 'en_us', ' projectmanagement '),
(119, 'field', 5, 'en_us', ' 330 672 7366 '),
(119, 'field', 3, 'en_us', ' business development manager '),
(119, 'field', 26, 'en_us', ' leadership '),
(119, 'field', 27, 'en_us', ' dowling 1 '),
(119, 'field', 7, 'en_us', ''),
(119, 'field', 4, 'en_us', ' kdowling ideabasekent com '),
(119, 'field', 6, 'en_us', ' kristin is the business development manager for ideabase formerly the tannery she is responsible for building client relationships in order to provide high quality experiential learning opportunities for our students she previously served as an entrepreneur in residence for the center for entrepreneurship and business innovation in the kent state university college of business her experience prior to coming to kent state university was as regional operations manager for kinko s inc now known as fedex office '),
(119, 'title', 0, 'en_us', ' kristin dowling '),
(120, 'field', 6, 'en_us', ' chris is a full time user experience designer for ideabase and kent state university s college of communication and information he manages research and interactive web projects at ideabase and works one on one with ideabase students to teach them web design user experience and content management techniques his passions include responsive web design usability information architecture and content management system design especially wordpress in addition to his work at ideabase he teaches courses in digital sciences and responsive web design he is a graduate of kent state with a bachelor s degree in electronic media and master s degree in user experience design he lives in kent oh '),
(120, 'field', 4, 'en_us', ' challahan ideabasekent com '),
(120, 'field', 7, 'en_us', ''),
(120, 'field', 26, 'en_us', ' leadership '),
(120, 'field', 3, 'en_us', ' user experience designer '),
(120, 'field', 5, 'en_us', ' 330 672 3031 '),
(120, 'field', 27, 'en_us', ' chris edit 350x500 1 '),
(120, 'slug', 0, 'en_us', ' christopher hallahan '),
(120, 'title', 0, 'en_us', ' christopher hallahan '),
(131, 'field', 59, 'en_us', ' rachel kozy '),
(131, 'field', 49, 'en_us', ''),
(131, 'slug', 0, 'en_us', ' being a creative rachel kozy '),
(131, 'title', 0, 'en_us', ' being a creative rachel kozy '),
(132, 'field', 11, 'en_us', ' hello my name is victoria ripepi i am an interpersonal communications major who is currently on my 5th year victory lap but i am set to graduate in may 2016 i am the new event coordinator at ideabase as long as i can remember event planning has been an interest of mine the first event i planned was in 3rd grade when my teacher asked me to help with a parent teacher open house as a 3rd grader i basically thought i was the coolest person in the world even though all i really did was set out some flyers cookies and juice but i have enjoyed event planning ever since i think i enjoy event planning because i am so organized i like to fix problems i work best under pressure and i like the exciting nervous feeling you get on the day of the event a lot of times when i say i want to go into event planning after i graduate people automatically think i mean weddings but that is not the case i want to do open houses launch parties special event parties and so on before working at ideabase i interned in the spring of 2015 for an awesome company called rebecca adele pr events i learned so much about myself and event planning there one major thing i learned was that i didn t want to go into pr after i graduate the other career path i considered and event planning is really what i love and have a passion for the owner becki puts on over 10 art shows called the avant garde art craft shows all throughout northeast ohio there were over 100 vendors at each event and i helped personally put on 4 shows i also helped in the launch of a new show line called bump to bows a mommy boutique show when it comes to ideabase i actually heard about the agency through one of the managers kristin who is a longtime family friend when she told me about ideabase it immediately sparked my interest and when the opportunity for an event coordinator came up i jumped at it i really enjoy working here and have already learned so much ideabase is such a fun encouraging and helpful work environment being new here whenever i have a question or concern they immediately do whatever possible to help me i have also learned so much about what it means working at a design agency and how talented my co workers are as for my personal life in my free time you can probably find me outside if it s nice out at a mall because i have a deep love for clothes and fashion or hanging out with my two cats i travel at any opportunity i can i hope to travel to all 50 states one day after graduation i hope to get a job out of state i am cleveland born and raised and ohio will always be home but i know i need to get out of here and explore more than just my bubble that is ohio i like to push myself to always try new things and take opportunities that push me outside my comfort zone because that ll only make my comfort zone that much bigger '),
(132, 'field', 59, 'en_us', ' victoria ripepi '),
(132, 'field', 49, 'en_us', ''),
(132, 'slug', 0, 'en_us', ' event planning 101 victoria ripepi '),
(132, 'title', 0, 'en_us', ' event planning 101 victoria ripepi '),
(132, 'field', 60, 'en_us', ''),
(99, 'field', 46, 'en_us', ''),
(99, 'field', 61, 'en_us', ' reilly hawkins '),
(99, 'field', 48, 'en_us', ''),
(134, 'filename', 0, 'en_us', ' chris edit 350x500_1 jpg '),
(134, 'extension', 0, 'en_us', ' jpg '),
(134, 'kind', 0, 'en_us', ' image '),
(134, 'slug', 0, 'en_us', ''),
(134, 'title', 0, 'en_us', ' chris edit 350x500 1 '),
(135, 'filename', 0, 'en_us', ' dowling_1 jpg '),
(135, 'extension', 0, 'en_us', ' jpg '),
(135, 'kind', 0, 'en_us', ' image '),
(135, 'slug', 0, 'en_us', ''),
(135, 'title', 0, 'en_us', ' dowling 1 '),
(136, 'filename', 0, 'en_us', ' john headshot 350x500_1 jpg '),
(136, 'extension', 0, 'en_us', ' jpg '),
(136, 'kind', 0, 'en_us', ' image '),
(136, 'slug', 0, 'en_us', ''),
(136, 'title', 0, 'en_us', ' john headshot 350x500 1 '),
(137, 'filename', 0, 'en_us', ' mariofasolo 350x500_1 jpg '),
(137, 'extension', 0, 'en_us', ' jpg '),
(137, 'kind', 0, 'en_us', ' image '),
(137, 'slug', 0, 'en_us', ''),
(137, 'title', 0, 'en_us', ' mariofasolo 350x500 1 '),
(138, 'filename', 0, 'en_us', ' nicociani 350x500_1 jpg '),
(138, 'extension', 0, 'en_us', ' jpg '),
(138, 'kind', 0, 'en_us', ' image '),
(138, 'slug', 0, 'en_us', ''),
(138, 'title', 0, 'en_us', ' nicociani 350x500 1 '),
(139, 'filename', 0, 'en_us', ' quintinsteele 350x500_1 jpg '),
(139, 'extension', 0, 'en_us', ' jpg '),
(139, 'kind', 0, 'en_us', ' image '),
(139, 'slug', 0, 'en_us', ''),
(139, 'title', 0, 'en_us', ' quintinsteele 350x500 1 '),
(140, 'filename', 0, 'en_us', ' rachel1 350x500_1 jpg '),
(140, 'extension', 0, 'en_us', ' jpg '),
(140, 'kind', 0, 'en_us', ' image '),
(140, 'slug', 0, 'en_us', ''),
(140, 'title', 0, 'en_us', ' rachel1 350x500 1 '),
(141, 'filename', 0, 'en_us', ' reillyhawkins1 350x500_1 jpg '),
(141, 'extension', 0, 'en_us', ' jpg '),
(141, 'kind', 0, 'en_us', ' image '),
(141, 'slug', 0, 'en_us', ''),
(141, 'title', 0, 'en_us', ' reillyhawkins1 350x500 1 '),
(142, 'filename', 0, 'en_us', ' victoria1 350x500_1 jpg '),
(142, 'extension', 0, 'en_us', ' jpg '),
(142, 'kind', 0, 'en_us', ' image '),
(142, 'slug', 0, 'en_us', ''),
(142, 'title', 0, 'en_us', ' victoria1 350x500 1 '),
(145, 'filename', 0, 'en_us', ' ideabaselogo svg '),
(145, 'extension', 0, 'en_us', ' svg '),
(145, 'kind', 0, 'en_us', ' image '),
(145, 'slug', 0, 'en_us', ' ideabaselogo '),
(145, 'title', 0, 'en_us', ' ideabaselogo '),
(146, 'field', 6, 'en_us', ' this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography this is quintin s biography '),
(146, 'field', 4, 'en_us', ' qsteele ideabasekent com '),
(146, 'field', 7, 'en_us', ' this is quintin s fun fact '),
(146, 'field', 26, 'en_us', ' leadership '),
(146, 'field', 3, 'en_us', ' ideabase creative director '),
(146, 'field', 5, 'en_us', ' 330 672 7300 '),
(146, 'field', 27, 'en_us', ' quintinsteele 350x500 1 '),
(146, 'slug', 0, 'en_us', ' quintin steele '),
(146, 'title', 0, 'en_us', ' quintin steele '),
(2, 'field', 66, 'en_us', ' our design process is tailored to you '),
(2, 'field', 67, 'en_us', ' tried and true '),
(2, 'field', 68, 'en_us', ' our processes deliver results no matter the industry or design challenge our past work speaks for itself '),
(147, 'field', 6, 'en_us', ' this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography this is victoria s biography '),
(147, 'field', 4, 'en_us', ' vripepi ideabasekent com '),
(147, 'field', 7, 'en_us', ' i own 64 pairs of shoes '),
(147, 'field', 26, 'en_us', ' student '),
(147, 'field', 3, 'en_us', ' event coordinator '),
(147, 'field', 5, 'en_us', ' n a '),
(147, 'field', 27, 'en_us', ' victoria1 350x500 1 '),
(147, 'slug', 0, 'en_us', ' victoria ripepi '),
(147, 'title', 0, 'en_us', ' victoria ripepi '),
(148, 'slug', 0, 'en_us', ' projects homepage '),
(148, 'title', 0, 'en_us', ' projects homepage '),
(148, 'field', 69, 'en_us', ' tried and true '),
(148, 'field', 70, 'en_us', ' our award winning process delivers quality design solutions that transform our clients products '),
(148, 'field', 71, 'en_us', ' how we re making a difference '),
(148, 'field', 72, 'en_us', ' we make a positive impact on your design and our student designers '),
(148, 'field', 73, 'en_us', ' helping our students succeed '),
(148, 'field', 74, 'en_us', ' at ideabase we want our student employees to succeed thats s why we partner with glyphix to teach the next generation through studio experiences our students develop and exercise project based skills in marketing design research and more additionally our responsive web design class ensures the next generation of designers and developers understand how to create highly functional and usable websites learn about our transformative classroom experiences '),
(81, 'field', 75, 'en_us', ' project title 2 '),
(75, 'field', 75, 'en_us', ' project title 1 '),
(78, 'field', 76, 'en_us', ' project title 1 '),
(149, 'field', 6, 'en_us', ' this is larrie s test bio '),
(149, 'field', 4, 'en_us', ' lking ideabasekent com '),
(149, 'field', 7, 'en_us', ''),
(149, 'field', 26, 'en_us', ' leadership '),
(149, 'field', 3, 'en_us', ' creative director glyphix '),
(149, 'field', 5, 'en_us', ' 330 672 7300 '),
(149, 'field', 27, 'en_us', ''),
(149, 'slug', 0, 'en_us', ' larrie king '),
(149, 'title', 0, 'en_us', ' larrie king ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2015-09-18 13:02:12', '2015-09-18 13:02:12', 'fd54f482-b429-4837-9d1a-536971debb0d'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2015-09-18 13:02:13', '2015-09-18 13:02:13', 'b3974c94-241f-4fde-bfc6-c09238349965'),
(3, 1, 'People Profile', 'People', 'structure', 1, 'staffprofiles/_entry', 1, '2015-09-18 13:12:21', '2015-09-22 13:45:33', '92108388-8ac6-45ff-a877-a41386c6294c'),
(4, NULL, 'Projects', 'ideabaseProjects', 'channel', 1, 'projects/_entry', 1, '2015-09-18 13:12:40', '2015-09-18 13:14:18', '5f5dff3b-17e4-4771-8abe-e6f505319f18'),
(5, NULL, 'Blog Post', 'blogPost', 'channel', 1, 'blogs/_entry', 1, '2015-09-18 13:13:03', '2015-10-30 15:28:21', 'bfd6556e-dbc2-481d-be30-91cb9ef0beea'),
(6, NULL, 'Awards', 'ideabaseAwards', 'channel', 1, 'awards/_entry', 1, '2015-09-18 13:13:17', '2015-09-18 13:13:17', 'ab35bd74-3b2d-4a67-a9af-720b7b7090b7'),
(7, NULL, 'Testimonials', 'testimonials', 'channel', 1, 'testimonials/_entry', 1, '2015-09-18 13:13:27', '2015-09-18 13:13:27', 'e86c6393-e343-4c7c-b6f8-11c7fbb9bfd9'),
(8, NULL, 'Clients', 'clients', 'channel', 1, 'clients/_entry', 1, '2015-09-18 13:13:40', '2015-09-18 13:13:40', '9ef87945-6823-4589-acf4-57360d62145e'),
(10, NULL, 'Services', 'services', 'channel', 1, 'services/_entry', 1, '2015-10-02 22:46:16', '2015-10-02 22:46:16', '7e398e88-a693-4369-932f-aaae8af3aa63'),
(11, NULL, 'Staff Profile Index', 'staffPeople', 'single', 1, '/staffprofiles/index.html', 1, '2015-10-06 14:08:01', '2015-10-23 14:23:48', 'e9ae4152-ae08-479d-af66-4cc4d7423790'),
(12, NULL, 'Process Index', 'processIndex', 'single', 1, '/services/index.html', 1, '2015-10-06 14:37:07', '2015-10-23 14:25:09', '6e0274ea-f4b9-4560-9d8e-623ffc56ada2'),
(13, NULL, 'Case Study', 'caseStudy', 'channel', 1, 'casestudies/_entry', 1, '2015-10-30 15:28:15', '2015-10-30 15:31:55', '124afb43-5279-497c-aed9-a2da0270109d'),
(14, NULL, 'Basic Pages', 'basicPages', 'channel', 1, 'basic-pages/_entry', 1, '2015-11-03 17:20:01', '2015-11-03 17:20:01', 'c24c0a92-3aca-4f0f-804d-2d9bd5dcafde'),
(15, NULL, 'Projects Homepage', 'projectsHomepage', 'single', 1, '/projects/index.html', 1, '2015-11-06 14:19:01', '2015-11-06 14:34:28', 'f98718e7-4394-493f-9eca-6b63554bf5d1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

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
(10, 10, 'en_us', 0, 'services/{slug}', NULL, '2015-10-02 22:46:16', '2015-10-02 22:46:16', '95e2f8c2-ffaa-4032-b61c-b961519cc56d'),
(11, 11, 'en_us', 0, 'people', NULL, '2015-10-06 14:08:01', '2015-10-23 14:23:48', '12185c1e-d70d-4847-8886-0e2b011f4e19'),
(12, 12, 'en_us', 0, 'process', NULL, '2015-10-06 14:37:07', '2015-10-23 14:25:09', '0e779556-9723-4ef7-8627-1b25994667fe'),
(13, 13, 'en_us', 0, 'case-study/{slug}', NULL, '2015-10-30 15:28:15', '2015-10-30 15:28:15', '2c0464a7-f149-444d-b09a-4d8e59f6cbe6'),
(14, 14, 'en_us', 0, 'basic-pages/{slug}', NULL, '2015-11-03 17:20:01', '2015-11-03 17:20:01', '34f3a5c3-9ce3-4a0d-83d8-128aeede326c'),
(15, 15, 'en_us', 0, 'projects', NULL, '2015-11-06 14:19:01', '2015-11-06 14:34:28', '2bdf2c57-1be6-4346-af4f-a9636d157077');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

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
(11, 87, 'bcb09aeb6155cd256e16358536f6963afc26bc8eczozMjoiM2lfcnJUZWh3R3lYemk3OUp5Q2ZhUXpNajhuTFZkdFQiOw==', '2015-10-04 22:23:39', '2015-10-04 22:23:39', '996779b5-78c5-4289-b17a-d60b92c9e4d5'),
(12, 87, '770e1076474aa345b285583c58ef62429aa674cbczozMjoiVGVXaHlGRmxUU0QwRn5iajJod0xDaFBRR09+ZDIxZ3oiOw==', '2015-10-05 22:46:38', '2015-10-05 22:46:38', 'a74d43f4-654d-488c-a717-fae8744a69ea'),
(13, 87, 'f79ed4015fb6e74903b4c87059c89cb82aaac2f8czozMjoiaVBzVWZuejBMYzdHZEhmREc0R0xaWTBoWDI3ZEROOF8iOw==', '2015-10-06 14:03:54', '2015-10-06 14:03:54', '0f01ad71-c85c-4634-843d-47bb150a68b4'),
(14, 87, 'b770947b9b22ff86aca0fe3840d02e1243633759czozMjoiNzBvbWVaT2kzVVpTTHQzY2Q2dWV6fnh3QlFfQUo4SVoiOw==', '2015-10-06 14:03:57', '2015-10-06 14:03:57', '52031b6d-7ee0-4f90-b0aa-31d73472e20c'),
(15, 87, 'f245705646ec074ace50fb7db9f6a7005c2dabf1czozMjoidWl0YnJ6eDJwdmVibE4xRlJxTVJqUjJrbGwxZmptVE8iOw==', '2015-10-08 22:41:21', '2015-10-08 22:41:21', '5221ff67-6460-4c99-8de3-7834b7aeea71'),
(16, 87, '5891be178610f138663e4ed29aaea9e2db4ffd73czozMjoiUDhBZjBTTlRUfjNncGN4bjZfMmYyUVRMWjBVZER1SVciOw==', '2015-10-14 00:41:16', '2015-10-14 00:41:16', 'f7d355a2-f736-4884-b6cc-85c337ee559c'),
(17, 87, 'ddcd738b3d8e953fa3be509006765483d14f69f4czozMjoiSk4zUlV5OUxPa0ZQQ3I5dVRxQnBPZG1NMFBFYlhKUmMiOw==', '2015-10-14 23:45:17', '2015-10-14 23:45:17', 'd1ad2bc0-bf19-4d91-bf17-c7f61f11b485'),
(18, 87, '46f7b35b656a904d571a6dfe796fb99eebe1312aczozMjoiaXV4MDBRVkdLVDliblZxYTNSdTg0UjV3VlRFMFZQeUsiOw==', '2015-10-16 13:45:52', '2015-10-16 13:45:52', '7b0498be-dba5-45b5-97e6-931a0972c08f'),
(19, 87, 'ec5fa35c9642867bdaa068724284ed754ad487e3czozMjoiRjQxcExsaTd2Q2hjTlNsWHIybWhWOWdRaEdwbXozM0wiOw==', '2015-10-22 01:40:31', '2015-10-22 01:40:31', '17828695-e71b-4708-bd21-6c223082dc88'),
(20, 87, '5d61e87ca3420c179b09b9054a65fb4ac79f6ee9czozMjoiVXUzN0RJSkxWeXkxd3V1YkxSTWVVbWozbG8zRkZjcjAiOw==', '2015-10-22 16:40:24', '2015-10-22 16:40:24', 'c5cc6c49-f02b-441b-964c-e94601045a25'),
(21, 87, 'b13d1a3d58d51837a957d7d5adfb4f907e8b4f6aczozMjoicFdYNGd1b3lINGZSTFBIc1NvM1JZUk1Efkl4dlRtWk8iOw==', '2015-10-23 14:09:49', '2015-10-23 14:09:49', '46dcb683-661f-4df0-868e-301b466bbe81'),
(22, 87, '69fbee8446a0ac20821b36cb5deeef7798cb87b9czozMjoiUGlZdEFhZmZ+bmVtMUhfdHB2Y2xYaV9fT0ZFZ2YwSHQiOw==', '2015-10-27 14:30:54', '2015-10-27 14:30:54', '4ba125f2-23cc-43a0-98b8-534fc41ee64f'),
(23, 87, '043effe3e2b2d7b0d37b986cdad0624291601cd3czozMjoiY3UxRnZKa3Y4Z3lwQXdNaTNkMjBGcWg0VmRlUDBHTnAiOw==', '2015-10-30 14:02:09', '2015-10-30 14:02:09', '7a27d05b-f186-428e-a367-cdeac38711ee'),
(24, 87, 'b41d128b8f1c9f92c33b02a2e3c8b75764d2438bczozMjoicFdxdGs1SmVSN1ZpbzR1bkR3RTFTNE5VVmdpMGVXY3AiOw==', '2015-11-03 16:27:06', '2015-11-03 16:27:06', 'be7857e9-34fe-4d99-8e36-dad41d26c195'),
(26, 87, 'e74ef3d5e412cd54e59349f65a5ff2151ab7ea06czozMjoielhhQ0JqYVdGbEdPR1Y4b0lJX0Q4Z2syT3dEb3N4MjAiOw==', '2015-11-05 16:08:00', '2015-11-05 16:08:00', '65666e9f-d4ff-494c-847b-bfb6fc9af665'),
(27, 87, 'b71aac814c2d9a66b0ad4ea3486c46897b1b092bczozMjoiYmUzWHdwdGxUVWlneWM0MUNNb0haN3U1bno4cTNYRHoiOw==', '2015-11-05 22:22:17', '2015-11-05 22:22:17', 'ac383ef3-780f-46f1-9580-208588b062f8'),
(28, 87, '0bce3483ab20b6df74d518091e86495274218945czozMjoidXphQVhPV0QxZ0ZnMGVxdjhHS2h4bHQ4MWhPN25GakciOw==', '2015-11-06 14:17:45', '2015-11-06 14:17:45', 'ec6604c0-88f5-4764-89b2-97b6abc6e2f7'),
(29, 87, '10e4442791a0c97e07a94b99705d84377fa1c675czozMjoiV0dsaUhMMkxsanBOM2FDOGJFUmNjMEhsS29yRm9uQUQiOw==', '2015-11-10 17:04:48', '2015-11-10 17:04:48', 'a8f57c95-5880-42ea-9a98-75e3225e1a8a');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=83 ;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, NULL, 1, 1, 10, 0, '2015-09-18 13:27:24', '2015-09-18 13:27:24', 'e11ddc46-f575-4a90-9e09-c1a5ab0b9681'),
(3, 2, 5, 1, 6, 7, 1, '2015-09-18 13:28:28', '2015-09-18 13:28:28', '26551d84-5695-4afd-9d78-6152f532147e'),
(4, 2, 6, 1, 8, 9, 1, '2015-09-18 13:28:41', '2015-09-18 13:28:41', '097becb1-5dcf-46c8-b83c-cbee3d25f811'),
(5, 2, 7, 1, 2, 3, 1, '2015-09-18 13:28:57', '2015-09-18 13:28:57', '26b158d8-6902-43e6-9256-5edc50d12dd3'),
(6, 2, 8, 1, 4, 5, 1, '2015-09-18 13:29:09', '2015-09-18 13:29:09', '4617b739-4a06-4424-a6da-9f26e694e153'),
(7, 4, NULL, 7, 1, 2, 0, '2015-09-18 13:33:56', '2015-09-18 13:33:56', '80c0c0b2-0892-4144-93a5-ff789a99d348'),
(34, 3, NULL, 34, 1, 2, 0, '2015-09-18 13:41:52', '2015-09-18 13:41:52', '23d4f1b0-4433-48cd-8d99-402f40b68123'),
(53, 5, NULL, 53, 1, 2, 0, '2015-09-18 13:48:12', '2015-09-18 13:48:12', '644eab15-be37-4707-9cfe-5053401f7cf7'),
(68, 1, NULL, 68, 1, 14, 0, '2015-09-18 14:03:06', '2015-09-18 14:03:06', '546da008-bb22-4fac-b2d4-67a1f97e267b'),
(69, 1, 67, 68, 2, 3, 1, '2015-09-18 14:03:06', '2015-09-18 14:03:06', 'b028ecb9-c07b-4459-9403-dd167f4037e1'),
(74, 1, 119, 68, 4, 5, 1, '2015-10-22 17:54:18', '2015-10-22 17:54:18', '3a9d992a-cbb4-4cf4-a548-d71cfef4ac23'),
(75, 1, 120, 68, 6, 7, 1, '2015-10-22 17:54:56', '2015-10-22 17:54:56', '873fb394-ba1a-4c98-b57f-f80122fc61fb'),
(77, 6, NULL, 77, 1, 6, 0, '2015-10-30 14:05:26', '2015-10-30 14:05:26', 'ee92bc24-dd62-4651-804d-d1e60ec6a69f'),
(78, 6, 122, 77, 4, 5, 1, '2015-10-30 14:05:26', '2015-10-30 14:05:26', '81bd170d-e56f-4bdd-b697-60e212d1f8c3'),
(79, 6, 123, 77, 2, 3, 1, '2015-10-30 14:05:39', '2015-10-30 14:05:39', '71c3e62f-e3b3-47f8-a4a4-8f7bb48d1e64'),
(80, 1, 146, 68, 8, 9, 1, '2015-11-05 16:19:13', '2015-11-05 16:19:13', 'b88d15ca-2555-45f9-8054-ad2fad4f1b57'),
(81, 1, 147, 68, 10, 11, 1, '2015-11-05 22:26:27', '2015-11-05 22:26:27', '981c0a80-7677-4b52-af1b-2b7b4ddb385a'),
(82, 1, 149, 68, 12, 13, 1, '2015-11-10 17:15:08', '2015-11-10 17:15:08', '5d4b7f16-2d8f-41db-98f3-5f66d509fb48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '2015-09-18 13:15:00', '2015-09-22 13:45:33', 'cc4fa47c-9588-4fb2-969e-027f062e8713'),
(2, NULL, '2015-09-18 13:26:54', '2015-09-18 13:26:54', 'ad6fe85f-0c1c-4c0a-b364-c773173b9eb7'),
(3, NULL, '2015-09-18 13:29:38', '2015-09-18 13:29:38', '2b1f651a-4be3-4706-8917-f47ab0cbd4e6'),
(4, NULL, '2015-09-18 13:33:23', '2015-09-18 13:33:23', '7d764c02-efd8-47c1-a689-878df936357a'),
(5, NULL, '2015-09-18 13:48:04', '2015-09-18 13:48:04', '87b2a38b-605a-47c5-aeb2-08ed88567984'),
(6, NULL, '2015-10-30 14:05:08', '2015-10-30 14:05:08', 'e99ca462-0704-4dce-9d35-6621ab8bc1b0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
(87, 'rhawkins', NULL, 'Reilly', 'Hawkins', 'rhawkins@ideabasekent.com', '$2y$13$GyqyJfZ9mWUpMnrDkcJmN.UJq6.ZbJWJrfk/cTsRPkekTzK.9lkFW', NULL, 0, 1, 0, 0, 0, 0, 0, '2015-11-10 17:04:48', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-09-29 14:17:39', '2015-09-29 14:15:13', '2015-11-10 17:04:48', 'be638d1f-994c-4b21-97bf-c952a0bb1556');

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
-- Indexes for table `craft_matrixcontent_homepagematrix`
--
ALTER TABLE `craft_matrixcontent_homepagematrix`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_matrixcontent_homepagematrix_elementId_locale_unq_idx` (`elementId`,`locale`), ADD KEY `craft_matrixcontent_homepagematrix_locale_fk` (`locale`);

--
-- Indexes for table `craft_matrixcontent_socialmediarepeater`
--
ALTER TABLE `craft_matrixcontent_socialmediarepeater`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `craft_matrixcontent_socialmediarepeater_elementId_locale_unq_idx` (`elementId`,`locale`), ADD KEY `craft_matrixcontent_socialmediarepeater_locale_fk` (`locale`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_matrixcontent_homepagematrix`
--
ALTER TABLE `craft_matrixcontent_homepagematrix`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_matrixcontent_socialmediarepeater`
--
ALTER TABLE `craft_matrixcontent_socialmediarepeater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `craft_matrixcontent_homepagematrix`
--
ALTER TABLE `craft_matrixcontent_homepagematrix`
ADD CONSTRAINT `craft_matrixcontent_homepagematrix_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixcontent_homepagematrix_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixcontent_socialmediarepeater`
--
ALTER TABLE `craft_matrixcontent_socialmediarepeater`
ADD CONSTRAINT `craft_matrixcontent_socialmediarepeater_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `craft_matrixcontent_socialmediarepeater_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

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
