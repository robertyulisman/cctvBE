-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2020 at 06:11 AM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CCTVSecurityMAXDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `alarmSchedules`
--

CREATE TABLE IF NOT EXISTS `alarmSchedules` (
  `id` int(11) NOT NULL,
  `CCTVId` int(11) DEFAULT NULL,
  `isOn` tinyint(1) DEFAULT NULL,
  `listHour` varchar(120) DEFAULT NULL,
  `listDay` varchar(20) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alarmSchedules`
--

INSERT INTO `alarmSchedules` (`id`, `CCTVId`, `isOn`, `listHour`, `listDay`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 0, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-01 13:30:01', '2020-05-15 01:14:52'),
(2, 3, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-02 15:21:23', '2020-05-16 21:24:01'),
(3, 2, 0, '0,1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-02 15:24:51', '2020-05-16 06:50:18'),
(4, 7, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-01 13:30:01', '2020-05-20 08:26:48'),
(5, 8, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-02 15:21:23', '2020-05-06 07:15:15'),
(6, 9, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-02 15:24:51', '2020-05-06 07:15:10'),
(7, 10, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-06 17:06:35', '2020-05-09 09:54:25'),
(8, 18, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-15 01:45:37', '2020-05-20 08:26:55'),
(9, 11, 1, '22', '5', 0, '2020-05-15 15:40:59', '2020-05-15 15:40:59'),
(10, 6, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-16 04:51:43', '2020-05-16 04:51:43'),
(11, 19, 1, '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23', '0,1,2,3,4,5,6', 0, '2020-05-16 06:31:53', '2020-05-20 08:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `cameraCCTVs`
--

CREATE TABLE IF NOT EXISTS `cameraCCTVs` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `securityCode` varchar(100) NOT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `eventRecording` enum('images','videos') DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cameraCCTVs`
--

INSERT INTO `cameraCCTVs` (`id`, `userId`, `name`, `securityCode`, `resolution`, `eventRecording`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 3, 'CamParkir IP lgs', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-17 19:29:51'),
(2, 3, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-17 20:25:10'),
(3, 3, 'CamParkirZMLaptop', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-17 19:29:24'),
(4, 1, 'Camera kos Aisya', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-03 20:08:22'),
(5, 1, 'Ccamera Aisyah lt3', '', NULL, NULL, 0, '2020-05-27 00:00:00', '2020-05-03 20:09:12'),
(6, 3, 'cam dlink via zm', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-17 19:29:33'),
(7, 4, 'DVR Ch2 via ZM', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-20 10:59:17'),
(8, 1, 'CamParkir via DVR via ZM', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-13 09:34:07'),
(9, 2, 'CamParkir via ZM lcl', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-15 01:30:10'),
(10, 2, 'DVR Ch2', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-15 08:22:05'),
(11, 2, 'DVR Ch12', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-19 05:09:41'),
(12, 3, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-13 09:37:49'),
(13, 3, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-13 09:37:54'),
(14, 3, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-13 09:37:57'),
(15, 3, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(16, 3, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(17, 3, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(18, 4, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(19, 4, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(20, 4, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(21, 4, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(22, 5, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(23, 5, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(24, 5, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(25, 5, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(26, 6, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(27, 6, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(28, 6, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(29, 6, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(30, 7, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(31, 7, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(32, 7, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(33, 7, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(34, 7, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(35, 7, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(36, 7, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(37, 8, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(38, 8, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(39, 8, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(40, 9, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(41, 9, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(42, 9, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:00:23'),
(43, 10, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 05:54:57'),
(44, 11, 'Camera Depan', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:18'),
(45, 12, 'Camera Toko', '', NULL, NULL, 0, '2020-04-30 00:00:00', '2020-05-01 22:26:26'),
(46, 12, 'cameran depan', '', NULL, NULL, 0, '2020-05-27 00:00:00', '2020-05-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `CCTVNotifications`
--

CREATE TABLE IF NOT EXISTS `CCTVNotifications` (
  `id` int(11) NOT NULL,
  `CCTVId` int(11) DEFAULT NULL,
  `sourcePath` text NOT NULL,
  `lastImage` varchar(250) NOT NULL,
  `objectDetected` varchar(50) NOT NULL,
  `ipServer` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CCTVNotifications`
--

INSERT INTO `CCTVNotifications` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1069, 9, '/var/www/html/alarmhistory/cam_9_20200518110244', 'http://w3.airnetmax.net:5004/source-notif/image/1069?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-19 11:52:06', '2020-05-19 11:52:06'),
(1070, 9, '/var/www/html/alarmhistory/cam_9_20200518110244', 'http://w3.airnetmax.net:5004/source-notif/image/1070?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-19 11:53:00', '2020-05-19 11:53:00'),
(1071, 9, '/var/www/html/alarmhistory/cam_9_20200518110244', 'http://w3.airnetmax.net:5004/source-notif/image/1071?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-19 11:54:07', '2020-05-19 11:54:13'),
(1072, 9, '/var/www/html/alarmhistory/cam_9_20200518110244', 'http://w3.airnetmax.net:5004/source-notif/image/1072?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-19 11:54:34', '2020-05-19 20:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `CCTVNotificationsArchieve`
--

CREATE TABLE IF NOT EXISTS `CCTVNotificationsArchieve` (
  `id` int(11) NOT NULL,
  `CCTVId` int(11) DEFAULT NULL,
  `sourcePath` text NOT NULL,
  `lastImage` varchar(250) NOT NULL,
  `objectDetected` varchar(50) NOT NULL,
  `ipServer` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CCTVNotificationsArchieve`
--

INSERT INTO `CCTVNotificationsArchieve` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/1?name=20200512135346_00003-capture.jpg', 'Person', '36.90.83.44', 2, 0, '2020-05-12 08:57:03', '2020-05-12 09:02:40'),
(2, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/2?name=20200512135346_00003-capture.jpg', 'Person', '36.90.83.44', 2, 0, '2020-05-12 09:00:49', '2020-05-12 09:06:56'),
(3, 7, '/var/www/html/alarmhistory/cam_7_20200512165249/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/3?name=20200512164433_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:53:06', '2020-05-12 22:38:57'),
(4, 9, '/var/www/html/alarmhistory/cam_9_20200512165423/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/4?name=20200512165352_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:54:31', '2020-05-12 15:51:35'),
(5, 9, '/var/www/html/alarmhistory/cam_9_20200512165434/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/5?name=20200512165352_00011-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:54:47', '2020-05-12 15:51:35'),
(6, 9, '/var/www/html/alarmhistory/cam_9_20200512165451/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/6?name=20200512165352_00020-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:54:58', '2020-05-12 15:51:35'),
(7, 9, '/var/www/html/alarmhistory/cam_9_20200512165501/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/7?name=20200512165352_00029-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:55:08', '2020-05-12 15:51:35'),
(8, 9, '/var/www/html/alarmhistory/cam_9_20200512165511/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/8?name=20200512165352_00036-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:55:18', '2020-05-12 15:51:35'),
(9, 9, '/var/www/html/alarmhistory/cam_9_20200512165521/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/9?name=20200512165352_00043-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:55:29', '2020-05-12 15:51:35'),
(10, 9, '/var/www/html/alarmhistory/cam_9_20200512165532/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/10?name=20200512165352_00052-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:55:40', '2020-05-12 15:51:35'),
(11, 1, '/var/www/html/alarmhistory/cam_1_20200512165432', 'http://w3.airnetmax.net:5004/source-notif/image/11?name=10.0.16.122_01_20200512165353342_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 09:55:40', '2020-05-12 22:38:57'),
(12, 1, '/var/www/html/alarmhistory/cam_1_20200512165432/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/12?name=10.0.16.122_01_20200512165353342_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 09:56:11', '2020-05-12 22:38:57'),
(13, 9, '/var/www/html/alarmhistory/cam_9_20200512165544/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/13?name=20200512165352_00060-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:56:16', '2020-05-12 15:51:35'),
(14, 9, '/var/www/html/alarmhistory/cam_9_20200512165630/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/14?name=20200512165558_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:56:37', '2020-05-12 15:51:35'),
(15, 9, '/var/www/html/alarmhistory/cam_9_20200512165639/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/15?name=20200512165558_00009-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:56:46', '2020-05-12 15:51:35'),
(16, 9, '/var/www/html/alarmhistory/cam_9_20200512165648/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/16?name=20200512165558_00016-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:56:55', '2020-05-12 15:51:35'),
(17, 9, '/var/www/html/alarmhistory/cam_9_20200512165657/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/17?name=20200512165558_00023-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:57:04', '2020-05-12 15:51:35'),
(18, 9, '/var/www/html/alarmhistory/cam_9_20200512165706/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/18?name=20200512165558_00029-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:57:13', '2020-05-12 15:51:35'),
(19, 9, '/var/www/html/alarmhistory/cam_9_20200512165715/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/19?name=20200512165558_00038-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:57:28', '2020-05-12 15:51:35'),
(20, 9, '/var/www/html/alarmhistory/cam_9_20200512165732/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/20?name=20200512165558_00051-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:57:39', '2020-05-12 15:51:35'),
(21, 9, '/var/www/html/alarmhistory/cam_9_20200512165741/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/21?name=20200512165558_00060-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:57:48', '2020-05-12 15:51:35'),
(22, 9, '/var/www/html/alarmhistory/cam_9_20200512165751', 'http://w3.airnetmax.net:5004/source-notif/image/22?name=20200512165558_00067-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:58:07', '2020-05-12 15:51:35'),
(23, 9, '/var/www/html/alarmhistory/cam_9_20200512165751/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/23?name=20200512165558_00071-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 09:58:34', '2020-05-12 15:51:35'),
(24, 9, '/var/www/html/alarmhistory/cam_9_20200512170937', 'http://w3.airnetmax.net:5004/source-notif/image/24?name=20200512170907_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 10:09:45', '2020-05-12 15:51:35'),
(25, 9, '/var/www/html/alarmhistory/cam_9_20200512170937', 'http://w3.airnetmax.net:5004/source-notif/image/25?name=20200512170907_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 10:10:33', '2020-05-12 15:51:35'),
(26, 9, '/var/www/html/alarmhistory/cam_9_20200512170937', 'http://w3.airnetmax.net:5004/source-notif/image/26?name=20200512170907_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 10:10:38', '2020-05-12 15:51:35'),
(27, 1, '/var/www/html/alarmhistory/cam_1_20200512171302', 'http://w3.airnetmax.net:5004/source-notif/image/27?name=10.0.16.122_01_20200512171254897_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:13:09', '2020-05-12 22:38:57'),
(28, 1, '/var/www/html/alarmhistory/cam_1_20200512171322', 'http://w3.airnetmax.net:5004/source-notif/image/28?name=10.0.16.122_01_20200512171318577_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:13:28', '2020-05-12 22:38:57'),
(29, 1, '/var/www/html/alarmhistory/cam_1_20200512171340', 'http://w3.airnetmax.net:5004/source-notif/image/29?name=10.0.16.122_01_20200512171337864_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:13:46', '2020-05-12 22:38:57'),
(30, 1, '/var/www/html/alarmhistory/cam_1_20200512171525', 'http://w3.airnetmax.net:5004/source-notif/image/30?name=10.0.16.122_01_20200512171428603_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:15:32', '2020-05-12 22:38:57'),
(31, 1, '/var/www/html/alarmhistory/cam_1_20200512171542', 'http://w3.airnetmax.net:5004/source-notif/image/31?name=10.0.16.122_01_20200512171538989_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:15:49', '2020-05-12 22:38:57'),
(32, 1, '/var/www/html/alarmhistory/cam_1_20200512171613', 'http://w3.airnetmax.net:5004/source-notif/image/32?name=10.0.16.122_01_20200512171559960_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:16:20', '2020-05-12 22:38:57'),
(33, 1, '/var/www/html/alarmhistory/cam_1_20200512171638', 'http://w3.airnetmax.net:5004/source-notif/image/33?name=10.0.16.122_01_20200512171629089_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:16:44', '2020-05-12 22:38:57'),
(34, 1, '/var/www/html/alarmhistory/cam_1_20200512173701', 'http://w3.airnetmax.net:5004/source-notif/image/34?name=10.0.16.122_01_20200512173654358_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:08', '2020-05-12 22:38:57'),
(35, 1, '/var/www/html/alarmhistory/cam_1_20200512173710', 'http://w3.airnetmax.net:5004/source-notif/image/35?name=10.0.16.122_01_20200512173708691_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:16', '2020-05-12 22:38:57'),
(36, 1, '/var/www/html/alarmhistory/cam_1_20200512173718', 'http://w3.airnetmax.net:5004/source-notif/image/36?name=10.0.16.122_01_20200512173714348_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:24', '2020-05-12 22:38:57'),
(37, 1, '/var/www/html/alarmhistory/cam_1_20200512173729', 'http://w3.airnetmax.net:5004/source-notif/image/37?name=10.0.16.122_01_20200512173725260_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:35', '2020-05-12 22:38:57'),
(38, 1, '/var/www/html/alarmhistory/cam_1_20200512173739', 'http://w3.airnetmax.net:5004/source-notif/image/38?name=10.0.16.122_01_20200512173733822_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:46', '2020-05-12 22:38:57'),
(39, 1, '/var/www/html/alarmhistory/cam_1_20200512173748', 'http://w3.airnetmax.net:5004/source-notif/image/39?name=10.0.16.122_01_20200512173745190_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:37:54', '2020-05-12 22:38:57'),
(40, 1, '/var/www/html/alarmhistory/cam_1_20200512173801', 'http://w3.airnetmax.net:5004/source-notif/image/40?name=10.0.16.122_01_20200512173759162_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 10:38:08', '2020-05-12 22:38:57'),
(41, 1, '/var/www/html/alarmhistory/cam_1_20200512180810', 'http://w3.airnetmax.net:5004/source-notif/image/41?name=10.0.16.122_01_20200512180748767_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:08:17', '2020-05-12 22:38:57'),
(42, 1, '/var/www/html/alarmhistory/cam_1_20200512180825', 'http://w3.airnetmax.net:5004/source-notif/image/42?name=10.0.16.122_01_20200512180820504_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:08:32', '2020-05-12 22:38:57'),
(43, 1, '/var/www/html/alarmhistory/cam_1_20200512180833', 'http://w3.airnetmax.net:5004/source-notif/image/43?name=10.0.16.122_01_20200512180831145_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:08:39', '2020-05-12 22:38:57'),
(44, 1, '/var/www/html/alarmhistory/cam_1_20200512180847', 'http://w3.airnetmax.net:5004/source-notif/image/44?name=10.0.16.122_01_20200512180842779_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:08:53', '2020-05-12 22:38:57'),
(45, 1, '/var/www/html/alarmhistory/cam_1_20200512180901', 'http://w3.airnetmax.net:5004/source-notif/image/45?name=10.0.16.122_01_20200512180856100_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:09:08', '2020-05-12 22:38:57'),
(46, 1, '/var/www/html/alarmhistory/cam_1_20200512180910', 'http://w3.airnetmax.net:5004/source-notif/image/46?name=10.0.16.122_01_20200512180906331_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:09:16', '2020-05-12 22:38:57'),
(47, 1, '/var/www/html/alarmhistory/cam_1_20200512180917', 'http://w3.airnetmax.net:5004/source-notif/image/47?name=10.0.16.122_01_20200512180916012_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:09:23', '2020-05-12 22:38:57'),
(48, 1, '/var/www/html/alarmhistory/cam_1_20200512182907', 'http://w3.airnetmax.net:5004/source-notif/image/48?name=10.0.16.122_01_20200512182903988_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:29:14', '2020-05-12 22:38:57'),
(49, 1, '/var/www/html/alarmhistory/cam_1_20200512182907', 'http://w3.airnetmax.net:5004/source-notif/image/49?name=10.0.16.122_01_20200512182903988_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:29:26', '2020-05-12 22:38:57'),
(50, 1, '/var/www/html/alarmhistory/cam_1_20200512182907', 'http://w3.airnetmax.net:5004/source-notif/image/50?name=10.0.16.122_01_20200512182903988_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:29:44', '2020-05-12 22:38:57'),
(51, 1, '/var/www/html/alarmhistory/cam_1_20200512182959', 'http://w3.airnetmax.net:5004/source-notif/image/51?name=10.0.16.122_01_20200512182945824_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:30:06', '2020-05-12 22:38:57'),
(52, 1, '/var/www/html/alarmhistory/cam_1_20200512183015', 'http://w3.airnetmax.net:5004/source-notif/image/52?name=10.0.16.122_01_20200512183008503_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:30:17', '2020-05-12 22:38:57'),
(53, 1, '/var/www/html/alarmhistory/cam_1_20200512183037', 'http://w3.airnetmax.net:5004/source-notif/image/53?name=10.0.16.122_01_20200512183036146_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:30:39', '2020-05-12 22:38:57'),
(54, 1, '/var/www/html/alarmhistory/cam_1_20200512183053', 'http://w3.airnetmax.net:5004/source-notif/image/54?name=10.0.16.122_01_20200512183048143_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:30:59', '2020-05-12 22:38:57'),
(55, 1, '/var/www/html/alarmhistory/cam_1_20200512184025', 'http://w3.airnetmax.net:5004/source-notif/image/55?name=10.0.16.122_01_20200512184021994_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:40:32', '2020-05-12 22:38:57'),
(56, 1, '/var/www/html/alarmhistory/cam_1_20200512184033', 'http://w3.airnetmax.net:5004/source-notif/image/56?name=10.0.16.122_01_20200512184029860_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:40:39', '2020-05-12 22:38:57'),
(57, 1, '/var/www/html/alarmhistory/cam_1_20200512184111', 'http://w3.airnetmax.net:5004/source-notif/image/57?name=10.0.16.122_01_20200512184058986_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:41:18', '2020-05-12 22:38:57'),
(58, 1, '/var/www/html/alarmhistory/cam_1_20200512184145', 'http://w3.airnetmax.net:5004/source-notif/image/58?name=10.0.16.122_01_20200512184136375_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:41:52', '2020-05-12 22:38:57'),
(59, 1, '/var/www/html/alarmhistory/cam_1_20200512184235', 'http://w3.airnetmax.net:5004/source-notif/image/59?name=10.0.16.122_01_20200512184234701_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:42:41', '2020-05-12 22:38:57'),
(60, 1, '/var/www/html/alarmhistory/cam_1_20200512184235', 'http://w3.airnetmax.net:5004/source-notif/image/60?name=10.0.16.122_01_20200512184234701_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:42:53', '2020-05-12 22:38:57'),
(61, 1, '/var/www/html/alarmhistory/cam_1_20200512184235', 'http://w3.airnetmax.net:5004/source-notif/image/61?name=10.0.16.122_01_20200512184234701_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:43:11', '2020-05-12 22:38:57'),
(62, 1, '/var/www/html/alarmhistory/cam_1_20200512184353', 'http://w3.airnetmax.net:5004/source-notif/image/62?name=10.0.16.122_01_20200512184352095_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:43:59', '2020-05-12 22:38:57'),
(63, 1, '/var/www/html/alarmhistory/cam_1_20200512184353', 'http://w3.airnetmax.net:5004/source-notif/image/63?name=10.0.16.122_01_20200512184352095_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:44:11', '2020-05-12 22:38:57'),
(64, 1, '/var/www/html/alarmhistory/cam_1_20200512184353', 'http://w3.airnetmax.net:5004/source-notif/image/64?name=10.0.16.122_01_20200512184352095_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:44:40', '2020-05-12 22:38:57'),
(65, 1, '/var/www/html/alarmhistory/cam_1_20200512184353', 'http://w3.airnetmax.net:5004/source-notif/image/65?name=10.0.16.122_01_20200512184352095_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:44:50', '2020-05-12 22:38:57'),
(66, 1, '/var/www/html/alarmhistory/cam_1_20200512184749', 'http://w3.airnetmax.net:5004/source-notif/image/66?name=10.0.16.122_01_20200512184746993_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:47:56', '2020-05-12 22:38:57'),
(67, 1, '/var/www/html/alarmhistory/cam_1_20200512184749', 'http://w3.airnetmax.net:5004/source-notif/image/67?name=10.0.16.122_01_20200512184746993_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:48:08', '2020-05-12 22:38:57'),
(68, 1, '/var/www/html/alarmhistory/cam_1_20200512184749', 'http://w3.airnetmax.net:5004/source-notif/image/68?name=10.0.16.122_01_20200512184746993_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:48:38', '2020-05-12 22:38:57'),
(69, 1, '/var/www/html/alarmhistory/cam_1_20200512184749', 'http://w3.airnetmax.net:5004/source-notif/image/69?name=10.0.16.122_01_20200512184746993_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:48:47', '2020-05-12 22:38:57'),
(70, 1, '/var/www/html/alarmhistory/cam_1_20200512185657', 'http://w3.airnetmax.net:5004/source-notif/image/70?name=10.0.16.122_01_20200512185648757_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:03', '2020-05-12 22:38:57'),
(71, 1, '/var/www/html/alarmhistory/cam_1_20200512185705', 'http://w3.airnetmax.net:5004/source-notif/image/71?name=10.0.16.122_01_20200512185702379_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:11', '2020-05-12 22:38:57'),
(72, 1, '/var/www/html/alarmhistory/cam_1_20200512185721', 'http://w3.airnetmax.net:5004/source-notif/image/72?name=10.0.16.122_01_20200512185717376_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:27', '2020-05-12 22:38:57'),
(73, 1, '/var/www/html/alarmhistory/cam_1_20200512185728', 'http://w3.airnetmax.net:5004/source-notif/image/73?name=10.0.16.122_01_20200512185726181_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:34', '2020-05-12 22:38:57'),
(74, 1, '/var/www/html/alarmhistory/cam_1_20200512185736', 'http://w3.airnetmax.net:5004/source-notif/image/74?name=10.0.16.122_01_20200512185732587_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:42', '2020-05-12 22:38:57'),
(75, 1, '/var/www/html/alarmhistory/cam_1_20200512185736', 'http://w3.airnetmax.net:5004/source-notif/image/75?name=10.0.16.122_01_20200512185732587_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 11:57:53', '2020-05-12 22:38:57'),
(76, 9, '/var/www/html/alarmhistory/cam_9_20200512191103', 'http://w3.airnetmax.net:5004/source-notif/image/76?name=20200512191044_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-12 12:11:18', '2020-05-12 17:03:45'),
(77, 9, '/var/www/html/alarmhistory/cam_9_20200512191103', 'http://w3.airnetmax.net:5004/source-notif/image/77?name=20200512191044_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 12:12:02', '2020-05-12 15:51:35'),
(78, 9, '/var/www/html/alarmhistory/cam_9_20200512191103', 'http://w3.airnetmax.net:5004/source-notif/image/78?name=20200512191044_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 12:12:07', '2020-05-12 15:51:35'),
(79, 1, '/var/www/html/alarmhistory/cam_1_20200512191847', 'http://w3.airnetmax.net:5004/source-notif/image/79?name=10.0.16.122_01_20200512191842077_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:18:54', '2020-05-12 22:38:57'),
(80, 1, '/var/www/html/alarmhistory/cam_1_20200512191847', 'http://w3.airnetmax.net:5004/source-notif/image/80?name=10.0.16.122_01_20200512191842077_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:19:06', '2020-05-12 22:38:57'),
(81, 1, '/var/www/html/alarmhistory/cam_1_20200512191847', 'http://w3.airnetmax.net:5004/source-notif/image/81?name=10.0.16.122_01_20200512191842077_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:19:30', '2020-05-12 22:38:57'),
(82, 1, '/var/www/html/alarmhistory/cam_1_20200512191847', 'http://w3.airnetmax.net:5004/source-notif/image/82?name=10.0.16.122_01_20200512191842077_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:19:45', '2020-05-12 22:38:57'),
(83, 1, '/var/www/html/alarmhistory/cam_1_20200512192541', 'http://w3.airnetmax.net:5004/source-notif/image/83?name=10.0.16.122_01_20200512192537139_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:25:48', '2020-05-12 22:38:57'),
(84, 1, '/var/www/html/alarmhistory/cam_1_20200512192541', 'http://w3.airnetmax.net:5004/source-notif/image/84?name=10.0.16.122_01_20200512192537139_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:26:00', '2020-05-12 22:38:57'),
(85, 1, '/var/www/html/alarmhistory/cam_1_20200512192541', 'http://w3.airnetmax.net:5004/source-notif/image/85?name=10.0.16.122_01_20200512192537139_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:26:31', '2020-05-12 22:38:57'),
(86, 1, '/var/www/html/alarmhistory/cam_1_20200512192541', 'http://w3.airnetmax.net:5004/source-notif/image/86?name=10.0.16.122_01_20200512192537139_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 12:26:40', '2020-05-12 22:38:57'),
(87, 1, '/var/www/html/alarmhistory/cam_1_20200512202549', 'http://w3.airnetmax.net:5004/source-notif/image/87?name=10.0.16.122_01_20200512202540483_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:25:56', '2020-05-12 22:38:57'),
(88, 1, '/var/www/html/alarmhistory/cam_1_20200512202559', 'http://w3.airnetmax.net:5004/source-notif/image/88?name=10.0.16.122_01_20200512202557251_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:26:05', '2020-05-12 22:38:57'),
(89, 1, '/var/www/html/alarmhistory/cam_1_20200512202608', 'http://w3.airnetmax.net:5004/source-notif/image/89?name=10.0.16.122_01_20200512202605123_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:26:15', '2020-05-12 22:38:57'),
(90, 1, '/var/www/html/alarmhistory/cam_1_20200512202608', 'http://w3.airnetmax.net:5004/source-notif/image/90?name=10.0.16.122_01_20200512202605123_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:26:27', '2020-05-12 22:38:57'),
(91, 1, '/var/www/html/alarmhistory/cam_1_20200512202608', 'http://w3.airnetmax.net:5004/source-notif/image/91?name=10.0.16.122_01_20200512202605123_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:26:58', '2020-05-12 22:38:57'),
(92, 1, '/var/www/html/alarmhistory/cam_1_20200512202759', 'http://w3.airnetmax.net:5004/source-notif/image/92?name=10.0.16.122_01_20200512202755894_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:28:06', '2020-05-12 22:38:57'),
(93, 1, '/var/www/html/alarmhistory/cam_1_20200512202759', 'http://w3.airnetmax.net:5004/source-notif/image/93?name=10.0.16.122_01_20200512202755894_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:28:24', '2020-05-12 22:38:57'),
(94, 1, '/var/www/html/alarmhistory/cam_1_20200512202759', 'http://w3.airnetmax.net:5004/source-notif/image/94?name=10.0.16.122_01_20200512202755894_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:28:54', '2020-05-12 22:38:57'),
(95, 1, '/var/www/html/alarmhistory/cam_1_20200512204749', 'http://w3.airnetmax.net:5004/source-notif/image/95?name=10.0.16.122_01_20200512204745976_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:47:56', '2020-05-12 22:38:57'),
(96, 1, '/var/www/html/alarmhistory/cam_1_20200512204749', 'http://w3.airnetmax.net:5004/source-notif/image/96?name=10.0.16.122_01_20200512204745976_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:48:09', '2020-05-12 22:38:57'),
(97, 1, '/var/www/html/alarmhistory/cam_1_20200512204749', 'http://w3.airnetmax.net:5004/source-notif/image/97?name=10.0.16.122_01_20200512204745976_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:48:46', '2020-05-12 22:38:57'),
(98, 1, '/var/www/html/alarmhistory/cam_1_20200512204749', 'http://w3.airnetmax.net:5004/source-notif/image/98?name=10.0.16.122_01_20200512204745976_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 13:48:50', '2020-05-12 22:38:57'),
(99, 1, '/var/www/html/alarmhistory/cam_1_20200512210527', 'http://w3.airnetmax.net:5004/source-notif/image/99?name=10.0.16.122_01_20200512210525202_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 14:05:35', '2020-05-12 22:38:57'),
(100, 1, '/var/www/html/alarmhistory/cam_1_20200512210527', 'http://w3.airnetmax.net:5004/source-notif/image/100?name=10.0.16.122_01_20200512210525202_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 14:05:59', '2020-05-12 22:38:57'),
(1, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/1?name=20200512135346_00003-capture.jpg', 'Person', '36.90.83.44', 2, 0, '2020-05-12 08:57:03', '2020-05-12 09:02:40'),
(371, 7, '/var/www/html/alarmhistory/cam_7_20200513053457', 'http://w3.airnetmax.net:5004/source-notif/image/371?name=20200513053423_00012-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:57', '2020-05-12 22:38:57'),
(372, 7, '/var/www/html/alarmhistory/cam_7_20200513053458', 'http://w3.airnetmax.net:5004/source-notif/image/372?name=20200513053423_00014-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:58', '2020-05-12 22:38:57'),
(373, 7, '/var/www/html/alarmhistory/cam_7_20200513053459', 'http://w3.airnetmax.net:5004/source-notif/image/373?name=20200513053423_00015-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:59', '2020-05-12 22:38:57'),
(374, 7, '/var/www/html/alarmhistory/cam_7_20200513053500', 'http://w3.airnetmax.net:5004/source-notif/image/374?name=20200513053423_00017-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:01', '2020-05-12 22:38:57'),
(653, 9, '/var/www/html/alarmhistory/cam_9_20200514160840/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514160840/objectdetected/20200514160741_00076-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:08:40', '2020-05-14 09:18:10'),
(375, 7, '/var/www/html/alarmhistory/cam_7_20200513053502', 'http://w3.airnetmax.net:5004/source-notif/image/375?name=20200513053423_00018-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:02', '2020-05-12 22:38:57'),
(376, 7, '/var/www/html/alarmhistory/cam_7_20200513053503', 'http://w3.airnetmax.net:5004/source-notif/image/376?name=20200513053423_00019-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:03', '2020-05-12 22:38:57'),
(654, 9, '/var/www/html/alarmhistory/cam_9_20200514160928/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514160928/objectdetected/20200514160911_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:09:28', '2020-05-14 09:18:10'),
(377, 7, '/var/www/html/alarmhistory/cam_7_20200513053504', 'http://w3.airnetmax.net:5004/source-notif/image/377?name=20200513053423_00020-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:04', '2020-05-12 22:38:57'),
(655, 9, '/var/www/html/alarmhistory/cam_9_20200514161132/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514161132/objectdetected/20200514161113_00035-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:11:32', '2020-05-14 09:18:10'),
(226, 7, '/var/www/html/alarmhistory/cam_7_20200512233419', 'http://w3.airnetmax.net:5004/source-notif/image/226?name=20200512233405_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:34:33', '2020-05-12 22:38:57'),
(460, 2, '/var/www/html/alarmhistory/cam_2_20200513075355', 'http://w3.airnetmax.net:5004/source-notif/image/460?name=DCS-930LB2020051307535404.jpg', 'Person', '1', 1, 0, '2020-05-13 00:54:45', '2020-05-13 01:22:15'),
(265, 1, '/var/www/html/alarmhistory/cam_1_20200513004914', 'http://w3.airnetmax.net:5004/source-notif/image/265?name=10.0.16.122_01_20200513004909464_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:49:21', '2020-05-12 22:38:57'),
(225, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/225?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.83.44', 2, 0, '2020-05-12 16:32:09', '2020-05-12 17:18:32'),
(266, 1, '/var/www/html/alarmhistory/cam_1_20200513004922', 'http://w3.airnetmax.net:5004/source-notif/image/266?name=10.0.16.122_01_20200513004920705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:49:28', '2020-05-12 22:38:57'),
(227, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/227?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.83.44', 1, 0, '2020-05-12 16:34:33', '2020-05-12 16:35:38'),
(229, 7, '/var/www/html/alarmhistory/cam_7_20200512233419', 'http://w3.airnetmax.net:5004/source-notif/image/229?name=20200512233405_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:35:17', '2020-05-12 22:38:57'),
(461, 2, '/var/www/html/alarmhistory/cam_2_20200513080137', 'http://w3.airnetmax.net:5004/source-notif/image/461?name=DCS-930LB2020051308013605.jpg', 'Person', '1', 1, 0, '2020-05-13 01:02:27', '2020-05-13 01:22:15'),
(267, 1, '/var/www/html/alarmhistory/cam_1_20200513004922', 'http://w3.airnetmax.net:5004/source-notif/image/267?name=10.0.16.122_01_20200513004920705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:49:39', '2020-05-12 22:38:57'),
(230, 7, '/var/www/html/alarmhistory/cam_7_20200512233419', 'http://w3.airnetmax.net:5004/source-notif/image/230?name=20200512233405_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:35:21', '2020-05-12 22:38:57'),
(228, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/228?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.83.44', 1, 0, '2020-05-12 16:34:38', '2020-05-12 16:35:45'),
(268, 1, '/var/www/html/alarmhistory/cam_1_20200513004922', 'http://w3.airnetmax.net:5004/source-notif/image/268?name=10.0.16.122_01_20200513004920705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:50:02', '2020-05-12 22:38:57'),
(231, 7, '/var/www/html/alarmhistory/cam_7_20200512233525', 'http://w3.airnetmax.net:5004/source-notif/image/231?name=20200512233405_00050-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:35:37', '2020-05-12 22:38:57'),
(462, 2, '/var/www/html/alarmhistory/cam_2_20200513081012', 'http://w3.airnetmax.net:5004/source-notif/image/462?name=DCS-930LB2020051308101102.jpg', 'Person', '1', 1, 0, '2020-05-13 01:11:35', '2020-05-13 01:22:16'),
(232, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/232?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.83.44', 2, 0, '2020-05-12 16:40:07', '2020-05-12 17:03:15'),
(269, 1, '/var/www/html/alarmhistory/cam_1_20200513004922', 'http://w3.airnetmax.net:5004/source-notif/image/269?name=10.0.16.122_01_20200513004920705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:50:15', '2020-05-12 22:38:57'),
(234, 7, '/var/www/html/alarmhistory/cam_7_20200512235020', 'http://w3.airnetmax.net:5004/source-notif/image/234?name=20200512234958_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:50:28', '2020-05-12 22:38:57'),
(233, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/233?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.83.44', 2, 0, '2020-05-12 16:40:24', '2020-05-12 16:41:54'),
(270, 1, '/var/www/html/alarmhistory/cam_1_20200513005346', 'http://w3.airnetmax.net:5004/source-notif/image/270?name=10.0.16.122_01_20200513005344705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:53:53', '2020-05-12 22:38:57'),
(493, 2, '/var/www/html/alarmhistory/cam_2_20200513092042', 'http://w3.airnetmax.net:5004/source-notif/image/493?name=DCS-930LB2020051309204101.jpg', 'Person', '1', 2, 0, '2020-05-13 02:21:32', '2020-05-13 02:22:47'),
(235, 7, '/var/www/html/alarmhistory/cam_7_20200512235020', 'http://w3.airnetmax.net:5004/source-notif/image/235?name=20200512234958_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:51:19', '2020-05-12 22:38:57'),
(274, 9, '/var/www/html/alarmhistory/cam_9_20200513010041', 'http://w3.airnetmax.net:5004/source-notif/image/274?name=20200513010025_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 18:00:56', '2020-05-12 18:00:59'),
(271, 1, '/var/www/html/alarmhistory/cam_1_20200513005346', 'http://w3.airnetmax.net:5004/source-notif/image/271?name=10.0.16.122_01_20200513005344705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:54:05', '2020-05-12 22:38:57'),
(236, 7, '/var/www/html/alarmhistory/cam_7_20200512235020', 'http://w3.airnetmax.net:5004/source-notif/image/236?name=20200512234958_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:51:24', '2020-05-12 22:38:57'),
(494, 2, '/var/www/html/alarmhistory/cam_2_20200513092335', 'http://w3.airnetmax.net:5004/source-notif/image/494?name=DCS-930LB2020051309233402.jpg', 'Person', '1', 1, 0, '2020-05-13 02:24:25', '2020-05-13 02:24:26'),
(272, 1, '/var/www/html/alarmhistory/cam_1_20200513005346', 'http://w3.airnetmax.net:5004/source-notif/image/272?name=10.0.16.122_01_20200513005344705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:54:28', '2020-05-12 22:38:57'),
(237, 7, '/var/www/html/alarmhistory/cam_7_20200512235130', 'http://w3.airnetmax.net:5004/source-notif/image/237?name=20200512234958_00059-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:51:58', '2020-05-12 22:38:57'),
(277, 9, '/var/www/html/alarmhistory/cam_9_20200513010041', 'http://w3.airnetmax.net:5004/source-notif/image/277?name=20200513010025_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-12 18:03:07', '2020-05-12 18:59:30'),
(496, 2, '/var/www/html/alarmhistory/cam_2_20200513095154', 'http://w3.airnetmax.net:5004/source-notif/image/496?name=DCS-930LB2020051309515304.jpg', 'Person', '1', 2, 0, '2020-05-13 02:52:16', '2020-05-13 02:52:23'),
(273, 1, '/var/www/html/alarmhistory/cam_1_20200513005346', 'http://w3.airnetmax.net:5004/source-notif/image/273?name=10.0.16.122_01_20200513005344705_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 17:54:42', '2020-05-12 22:38:57'),
(278, 9, '/var/www/html/alarmhistory/cam_9_20200513010041', 'http://w3.airnetmax.net:5004/source-notif/image/278?name=20200513010025_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-12 18:03:21', '2020-05-12 18:04:38'),
(238, 7, '/var/www/html/alarmhistory/cam_7_20200512235130', 'http://w3.airnetmax.net:5004/source-notif/image/238?name=20200512234958_00059-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:52:21', '2020-05-12 22:38:57'),
(275, 1, '/var/www/html/alarmhistory/cam_1_20200513010111', 'http://w3.airnetmax.net:5004/source-notif/image/275?name=10.0.16.122_01_20200513010053092_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:01:44', '2020-05-12 22:38:57'),
(279, 9, '/var/www/html/alarmhistory/cam_9_20200513010334', 'http://w3.airnetmax.net:5004/source-notif/image/279?name=20200513010141_00069-capture.jpg', 'Person', '1', 2, 0, '2020-05-12 18:04:27', '2020-05-12 18:06:41'),
(497, 2, '/var/www/html/alarmhistory/cam_2_20200513095345', 'http://w3.airnetmax.net:5004/source-notif/image/497?name=DCS-930LB2020051309534401.jpg', 'Person', '1', 2, 0, '2020-05-13 02:54:07', '2020-05-13 02:54:36'),
(239, 7, '/var/www/html/alarmhistory/cam_7_20200512235711', 'http://w3.airnetmax.net:5004/source-notif/image/239?name=20200512235649_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:57:25', '2020-05-12 22:38:57'),
(276, 1, '/var/www/html/alarmhistory/cam_1_20200513010111', 'http://w3.airnetmax.net:5004/source-notif/image/276?name=10.0.16.122_01_20200513010053092_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:02:05', '2020-05-12 22:38:57'),
(498, 2, '/var/www/html/alarmhistory/cam_2_20200513103315', 'http://w3.airnetmax.net:5004/source-notif/image/498?name=DCS-930LB2020051310331401.jpg', 'Person', '1', 2, 0, '2020-05-13 03:33:37', '2020-05-13 03:33:46'),
(298, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/298?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.82.170', 1, 0, '2020-05-12 18:56:58', '2020-05-12 18:56:59'),
(240, 7, '/var/www/html/alarmhistory/cam_7_20200512235711', 'http://w3.airnetmax.net:5004/source-notif/image/240?name=20200512235649_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:58:08', '2020-05-12 22:38:57'),
(280, 1, '/var/www/html/alarmhistory/cam_1_20200513010111', 'http://w3.airnetmax.net:5004/source-notif/image/280?name=10.0.16.122_01_20200513010053092_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:04:27', '2020-05-12 22:38:57'),
(299, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/299?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.82.170', 1, 0, '2020-05-12 18:57:07', '2020-05-12 18:57:08'),
(561, 2, '/var/www/html/alarmhistory/cam_2_20200513221800', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200513221800/DCS-930LB2020051322175902.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-13 15:18:00', '2020-05-13 15:40:50'),
(241, 7, '/var/www/html/alarmhistory/cam_7_20200512235711', 'http://w3.airnetmax.net:5004/source-notif/image/241?name=20200512235649_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:58:12', '2020-05-12 22:38:57'),
(281, 1, '/var/www/html/alarmhistory/cam_1_20200513010111', 'http://w3.airnetmax.net:5004/source-notif/image/281?name=10.0.16.122_01_20200513010053092_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:04:48', '2020-05-12 22:38:57'),
(300, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/300?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.82.170', 1, 0, '2020-05-12 18:58:16', '2020-05-12 18:58:30'),
(563, 2, '/var/www/html/alarmhistory/cam_2_20200513222433', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200513222433/DCS-930LB2020051322243204.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:24:33', '2020-05-13 22:01:48'),
(242, 7, '/var/www/html/alarmhistory/cam_7_20200512235818', 'http://w3.airnetmax.net:5004/source-notif/image/242?name=20200512235649_00052-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 16:58:28', '2020-05-12 22:38:57'),
(282, 1, '/var/www/html/alarmhistory/cam_1_20200513013609', 'http://w3.airnetmax.net:5004/source-notif/image/282?name=10.0.16.122_01_20200513013602540_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:36:16', '2020-05-12 22:38:57'),
(301, 9, '/var/www/html/alarmhistory/cam_9_20200512135441/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/301?name=20200512135346_00003-capture.jpg', 'Motion', '36.90.82.170', 1, 0, '2020-05-12 18:58:18', '2020-05-12 18:58:34'),
(603, 2, '/var/www/html/alarmhistory/cam_2_20200514064730', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514064730/DCS-930LB2020051406472901.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 23:47:30', '2020-05-14 00:11:48'),
(243, 7, '/var/www/html/alarmhistory/cam_7_20200513000550', 'http://w3.airnetmax.net:5004/source-notif/image/243?name=20200513000528_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:05:58', '2020-05-12 22:38:57'),
(441, 9, '/var/www/html/alarmhistory/cam_9_20200513062054', 'http://w3.airnetmax.net:5004/source-notif/image/441?name=20200513062014_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:20:55', '2020-05-12 23:20:55'),
(283, 1, '/var/www/html/alarmhistory/cam_1_20200513013609', 'http://w3.airnetmax.net:5004/source-notif/image/283?name=10.0.16.122_01_20200513013602540_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:36:28', '2020-05-12 22:38:57'),
(284, 1, '/var/www/html/alarmhistory/cam_1_20200513013609', 'http://w3.airnetmax.net:5004/source-notif/image/284?name=10.0.16.122_01_20200513013602540_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:36:56', '2020-05-12 22:38:57'),
(244, 7, '/var/www/html/alarmhistory/cam_7_20200513000550', 'http://w3.airnetmax.net:5004/source-notif/image/244?name=20200513000528_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:06:49', '2020-05-12 22:38:57'),
(604, 2, '/var/www/html/alarmhistory/cam_2_20200514070839', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514070839/DCS-930LB2020051407083805.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:08:39', '2020-05-14 00:11:48'),
(443, 9, '/var/www/html/alarmhistory/cam_9_20200513062105', 'http://w3.airnetmax.net:5004/source-notif/image/443?name=20200513062014_00041-capture.jpg', 'Person', '1', 2, 0, '2020-05-12 23:21:05', '2020-05-12 23:21:07'),
(285, 1, '/var/www/html/alarmhistory/cam_1_20200513013609', 'http://w3.airnetmax.net:5004/source-notif/image/285?name=10.0.16.122_01_20200513013602540_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:37:05', '2020-05-12 22:38:57'),
(245, 7, '/var/www/html/alarmhistory/cam_7_20200513000550', 'http://w3.airnetmax.net:5004/source-notif/image/245?name=20200513000528_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:06:53', '2020-05-12 22:38:57'),
(444, 9, '/var/www/html/alarmhistory/cam_9_20200513062108', 'http://w3.airnetmax.net:5004/source-notif/image/444?name=20200513062014_00044-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:09', '2020-05-12 23:21:10'),
(286, 1, '/var/www/html/alarmhistory/cam_1_20200513013900', 'http://w3.airnetmax.net:5004/source-notif/image/286?name=10.0.16.122_01_20200513013858372_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:39:07', '2020-05-12 22:38:57'),
(246, 7, '/var/www/html/alarmhistory/cam_7_20200513000940', 'http://w3.airnetmax.net:5004/source-notif/image/246?name=20200513000919_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:09:48', '2020-05-12 22:38:57'),
(445, 9, '/var/www/html/alarmhistory/cam_9_20200513062112', 'http://w3.airnetmax.net:5004/source-notif/image/445?name=20200513062014_00046-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:13', '2020-05-12 23:21:13'),
(446, 9, '/var/www/html/alarmhistory/cam_9_20200513062115', 'http://w3.airnetmax.net:5004/source-notif/image/446?name=20200513062014_00049-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:16', '2020-05-12 23:21:16'),
(287, 1, '/var/www/html/alarmhistory/cam_1_20200513013900', 'http://w3.airnetmax.net:5004/source-notif/image/287?name=10.0.16.122_01_20200513013858372_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:39:20', '2020-05-12 22:38:57'),
(605, 2, '/var/www/html/alarmhistory/cam_2_20200514071021', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514071021/DCS-930LB2020051407102101.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:10:21', '2020-05-14 00:11:51'),
(247, 7, '/var/www/html/alarmhistory/cam_7_20200513000940', 'http://w3.airnetmax.net:5004/source-notif/image/247?name=20200513000919_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:10:35', '2020-05-12 22:38:57'),
(447, 9, '/var/www/html/alarmhistory/cam_9_20200513062118', 'http://w3.airnetmax.net:5004/source-notif/image/447?name=20200513062014_00051-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:19', '2020-05-12 23:21:19'),
(288, 1, '/var/www/html/alarmhistory/cam_1_20200513013900', 'http://w3.airnetmax.net:5004/source-notif/image/288?name=10.0.16.122_01_20200513013858372_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:39:48', '2020-05-12 22:38:57'),
(606, 2, '/var/www/html/alarmhistory/cam_2_20200514071219', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514071219/DCS-930LB2020051407121803.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:12:19', '2020-05-14 02:46:21'),
(248, 7, '/var/www/html/alarmhistory/cam_7_20200513000940', 'http://w3.airnetmax.net:5004/source-notif/image/248?name=20200513000919_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:10:39', '2020-05-12 22:38:57'),
(448, 9, '/var/www/html/alarmhistory/cam_9_20200513062120', 'http://w3.airnetmax.net:5004/source-notif/image/448?name=20200513062014_00053-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:21', '2020-05-12 23:21:21'),
(289, 1, '/var/www/html/alarmhistory/cam_1_20200513013900', 'http://w3.airnetmax.net:5004/source-notif/image/289?name=10.0.16.122_01_20200513013858372_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:39:56', '2020-05-12 22:38:57'),
(249, 7, '/var/www/html/alarmhistory/cam_7_20200513001043', 'http://w3.airnetmax.net:5004/source-notif/image/249?name=20200513000919_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:11:05', '2020-05-12 22:38:57'),
(449, 9, '/var/www/html/alarmhistory/cam_9_20200513062123', 'http://w3.airnetmax.net:5004/source-notif/image/449?name=20200513062014_00055-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:24', '2020-05-12 23:21:24'),
(290, 1, '/var/www/html/alarmhistory/cam_1_20200513014325', 'http://w3.airnetmax.net:5004/source-notif/image/290?name=10.0.16.122_01_20200513014324582_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:43:32', '2020-05-12 22:38:57'),
(250, 7, '/var/www/html/alarmhistory/cam_7_20200513001043', 'http://w3.airnetmax.net:5004/source-notif/image/250?name=20200513000919_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:11:33', '2020-05-12 22:38:57'),
(291, 1, '/var/www/html/alarmhistory/cam_1_20200513014325', 'http://w3.airnetmax.net:5004/source-notif/image/291?name=10.0.16.122_01_20200513014324582_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:43:43', '2020-05-12 22:38:57'),
(251, 7, '/var/www/html/alarmhistory/cam_7_20200513001043', 'http://w3.airnetmax.net:5004/source-notif/image/251?name=20200513000919_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:11:36', '2020-05-12 22:38:57'),
(450, 9, '/var/www/html/alarmhistory/cam_9_20200513062126', 'http://w3.airnetmax.net:5004/source-notif/image/450?name=20200513062014_00057-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:26', '2020-05-12 23:21:27'),
(607, 2, '/var/www/html/alarmhistory/cam_2_20200514071755', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514071755/DCS-930LB2020051407175403.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:17:55', '2020-05-14 02:46:21'),
(252, 7, '/var/www/html/alarmhistory/cam_7_20200513001140', 'http://w3.airnetmax.net:5004/source-notif/image/252?name=20200513001103_00020-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:11:57', '2020-05-12 22:38:57'),
(292, 1, '/var/www/html/alarmhistory/cam_1_20200513014325', 'http://w3.airnetmax.net:5004/source-notif/image/292?name=10.0.16.122_01_20200513014324582_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:44:06', '2020-05-12 22:38:57'),
(451, 9, '/var/www/html/alarmhistory/cam_9_20200513062128', 'http://w3.airnetmax.net:5004/source-notif/image/451?name=20200513062014_00059-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:28', '2020-05-12 23:21:28'),
(293, 1, '/var/www/html/alarmhistory/cam_1_20200513014325', 'http://w3.airnetmax.net:5004/source-notif/image/293?name=10.0.16.122_01_20200513014324582_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:44:21', '2020-05-12 22:38:57'),
(253, 7, '/var/www/html/alarmhistory/cam_7_20200513001140', 'http://w3.airnetmax.net:5004/source-notif/image/253?name=20200513001103_00020-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:12:31', '2020-05-12 22:38:57'),
(608, 2, '/var/www/html/alarmhistory/cam_2_20200514072008', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514072008/DCS-930LB2020051407200705.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:20:08', '2020-05-14 02:46:21'),
(452, 9, '/var/www/html/alarmhistory/cam_9_20200513062130', 'http://w3.airnetmax.net:5004/source-notif/image/452?name=20200513062014_00061-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:31', '2020-05-12 23:21:31'),
(294, 1, '/var/www/html/alarmhistory/cam_1_20200513014610', 'http://w3.airnetmax.net:5004/source-notif/image/294?name=10.0.16.122_01_20200513014608292_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:46:16', '2020-05-12 22:38:57'),
(453, 9, '/var/www/html/alarmhistory/cam_9_20200513062133', 'http://w3.airnetmax.net:5004/source-notif/image/453?name=20200513062014_00063-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:33', '2020-05-12 23:21:34'),
(254, 7, '/var/www/html/alarmhistory/cam_7_20200513001140', 'http://w3.airnetmax.net:5004/source-notif/image/254?name=20200513001103_00020-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:12:34', '2020-05-12 22:38:57'),
(609, 2, '/var/www/html/alarmhistory/cam_2_20200514072213', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514072213/DCS-930LB2020051407221201.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:22:13', '2020-05-14 02:46:21'),
(295, 1, '/var/www/html/alarmhistory/cam_1_20200513014610', 'http://w3.airnetmax.net:5004/source-notif/image/295?name=10.0.16.122_01_20200513014608292_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:46:29', '2020-05-12 22:38:57'),
(255, 7, '/var/www/html/alarmhistory/cam_7_20200513001257', 'http://w3.airnetmax.net:5004/source-notif/image/255?name=20200513001234_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:13:11', '2020-05-12 22:38:57'),
(454, 9, '/var/www/html/alarmhistory/cam_9_20200513062136', 'http://w3.airnetmax.net:5004/source-notif/image/454?name=20200513062014_00065-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:36', '2020-05-12 23:21:36'),
(610, 2, '/var/www/html/alarmhistory/cam_2_20200514073040', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514073040/DCS-930LB2020051407303901.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:30:40', '2020-05-14 02:46:21'),
(296, 1, '/var/www/html/alarmhistory/cam_1_20200513014610', 'http://w3.airnetmax.net:5004/source-notif/image/296?name=10.0.16.122_01_20200513014608292_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:46:51', '2020-05-12 22:38:57'),
(455, 9, '/var/www/html/alarmhistory/cam_9_20200513062138', 'http://w3.airnetmax.net:5004/source-notif/image/455?name=20200513062014_00067-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:21:38', '2020-05-12 23:21:38'),
(297, 1, '/var/www/html/alarmhistory/cam_1_20200513014610', 'http://w3.airnetmax.net:5004/source-notif/image/297?name=10.0.16.122_01_20200513014608292_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 18:47:06', '2020-05-12 22:38:57'),
(256, 7, '/var/www/html/alarmhistory/cam_7_20200513001257', 'http://w3.airnetmax.net:5004/source-notif/image/256?name=20200513001234_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:13:54', '2020-05-12 22:38:57'),
(459, 9, '/var/www/html/alarmhistory/cam_9_20200513071208', 'http://w3.airnetmax.net:5004/source-notif/image/459?name=20200513071153_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 00:13:23', '2020-05-13 00:13:23'),
(611, 2, '/var/www/html/alarmhistory/cam_2_20200514074711', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514074711/DCS-930LB2020051407471001.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:47:11', '2020-05-14 02:46:21');
INSERT INTO `CCTVNotificationsArchieve` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(312, 1, '/var/www/html/alarmhistory/cam_1_20200513024650', 'http://w3.airnetmax.net:5004/source-notif/image/312?name=10.0.16.122_01_20200513024647646_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 19:46:56', '2020-05-12 22:38:57'),
(257, 7, '/var/www/html/alarmhistory/cam_7_20200513001257', 'http://w3.airnetmax.net:5004/source-notif/image/257?name=20200513001234_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:13:59', '2020-05-12 22:38:57'),
(313, 1, '/var/www/html/alarmhistory/cam_1_20200513024650', 'http://w3.airnetmax.net:5004/source-notif/image/313?name=10.0.16.122_01_20200513024647646_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 19:47:13', '2020-05-12 22:38:57'),
(314, 1, '/var/www/html/alarmhistory/cam_1_20200513024650', 'http://w3.airnetmax.net:5004/source-notif/image/314?name=10.0.16.122_01_20200513024647646_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 19:47:44', '2020-05-12 22:38:57'),
(612, 2, '/var/www/html/alarmhistory/cam_2_20200514075904', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514075904/DCS-930LB2020051407590303.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 00:59:04', '2020-05-14 02:46:21'),
(465, 9, '/var/www/html/alarmhistory/cam_9_20200513081247', 'http://w3.airnetmax.net:5004/source-notif/image/465?name=20200513080742_00127-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 01:18:13', '2020-05-13 01:56:26'),
(258, 7, '/var/www/html/alarmhistory/cam_7_20200513001404', 'http://w3.airnetmax.net:5004/source-notif/image/258?name=20200513001234_00058-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:14:30', '2020-05-12 22:38:57'),
(406, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/406?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:49:44', '2020-05-12 22:56:53'),
(259, 7, '/var/www/html/alarmhistory/cam_7_20200513001404', 'http://w3.airnetmax.net:5004/source-notif/image/259?name=20200513001234_00058-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:14:51', '2020-05-12 22:38:57'),
(613, 2, '/var/www/html/alarmhistory/cam_2_20200514080230', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514080230/DCS-930LB2020051408022903.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 01:02:30', '2020-05-14 02:46:21'),
(407, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/407?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:50:09', '2020-05-12 22:56:53'),
(260, 7, '/var/www/html/alarmhistory/cam_7_20200513003320', 'http://w3.airnetmax.net:5004/source-notif/image/260?name=20200513003259_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:33:28', '2020-05-12 22:38:57'),
(408, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/408?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:50:34', '2020-05-12 22:56:53'),
(261, 7, '/var/www/html/alarmhistory/cam_7_20200513003320', 'http://w3.airnetmax.net:5004/source-notif/image/261?name=20200513003259_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:34:15', '2020-05-12 22:38:57'),
(614, 2, '/var/www/html/alarmhistory/cam_2_20200514080541', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514080541/DCS-930LB2020051408054001.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 01:05:41', '2020-05-14 02:46:21'),
(409, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/409?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:50:59', '2020-05-12 22:56:53'),
(262, 7, '/var/www/html/alarmhistory/cam_7_20200513003320', 'http://w3.airnetmax.net:5004/source-notif/image/262?name=20200513003259_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:34:19', '2020-05-12 22:38:57'),
(616, 2, '/var/www/html/alarmhistory/cam_2_20200514080932', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514080932/DCS-930LB2020051408093103.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 01:09:32', '2020-05-14 02:46:21'),
(467, 9, '/var/www/html/alarmhistory/cam_9_20200513082158', 'http://w3.airnetmax.net:5004/source-notif/image/467?name=20200513081802_00002-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 01:27:38', '2020-05-13 01:56:26'),
(410, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/410?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:51:25', '2020-05-12 22:56:53'),
(263, 7, '/var/www/html/alarmhistory/cam_7_20200513003423', 'http://w3.airnetmax.net:5004/source-notif/image/263?name=20200513003259_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:34:29', '2020-05-12 22:38:57'),
(617, 2, '/var/www/html/alarmhistory/cam_2_20200514081217', 'http://w3.airnetmax.net:5004/source-notif/image/617?name=DCS-930LB2020051408121604.jpg', 'Person', '1', 1, 0, '2020-05-14 01:12:40', '2020-05-14 01:12:42'),
(411, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/411?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:51:50', '2020-05-12 22:56:53'),
(264, 7, '/var/www/html/alarmhistory/cam_7_20200513003423', 'http://w3.airnetmax.net:5004/source-notif/image/264?name=20200513003259_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 17:34:50', '2020-05-12 22:38:57'),
(302, 7, '/var/www/html/alarmhistory/cam_7_20200513020043', 'http://w3.airnetmax.net:5004/source-notif/image/302?name=20200513020021_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:00:58', '2020-05-12 22:38:57'),
(412, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/412?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:52:15', '2020-05-12 22:56:53'),
(622, 2, '/var/www/html/alarmhistory/cam_2_20200514094040', 'http://w3.airnetmax.net:5004/source-notif/image/622?name=DCS-930LB2020051409404001.jpg', 'Person', '1', 1, 0, '2020-05-14 02:41:30', '2020-05-14 02:46:21'),
(469, 9, '/var/www/html/alarmhistory/cam_9_20200513082802', 'http://w3.airnetmax.net:5004/source-notif/image/469?name=20200513082540_00137-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 01:33:27', '2020-05-13 01:56:26'),
(413, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/413?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:52:40', '2020-05-12 22:56:53'),
(303, 7, '/var/www/html/alarmhistory/cam_7_20200513020043', 'http://w3.airnetmax.net:5004/source-notif/image/303?name=20200513020021_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:01:46', '2020-05-12 22:38:57'),
(414, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/414?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:53:05', '2020-05-12 22:56:53'),
(623, 2, '/var/www/html/alarmhistory/cam_2_20200514094349', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514094349/DCS-930LB2020051409434901.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 02:43:49', '2020-05-14 02:46:21'),
(304, 7, '/var/www/html/alarmhistory/cam_7_20200513020043', 'http://w3.airnetmax.net:5004/source-notif/image/304?name=20200513020021_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:01:51', '2020-05-12 22:38:57'),
(415, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/415?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:53:30', '2020-05-12 22:56:53'),
(416, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/416?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:53:55', '2020-05-12 22:56:53'),
(305, 7, '/var/www/html/alarmhistory/cam_7_20200513020157', 'http://w3.airnetmax.net:5004/source-notif/image/305?name=20200513020021_00062-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:02:13', '2020-05-12 22:38:57'),
(624, 2, '/var/www/html/alarmhistory/cam_2_20200514094729', 'http://w3.airnetmax.net:5004/source-notif/image/624?name=DCS-930LB2020051409472804.jpg', 'Person', '1', 2, 0, '2020-05-14 02:47:52', '2020-05-14 02:47:59'),
(417, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/417?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:54:20', '2020-05-12 22:56:53'),
(470, 9, '/var/www/html/alarmhistory/cam_9_20200513083422', 'http://w3.airnetmax.net:5004/source-notif/image/470?name=20200513083406_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 01:37:03', '2020-05-13 01:56:26'),
(306, 7, '/var/www/html/alarmhistory/cam_7_20200513023923', 'http://w3.airnetmax.net:5004/source-notif/image/306?name=20200513023911_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:39:37', '2020-05-12 22:38:57'),
(418, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/418?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:54:45', '2020-05-12 22:56:53'),
(625, 2, '/var/www/html/alarmhistory/cam_2_20200514094824', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200514094824/DCS-930LB2020051409482301.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 02:48:24', '2020-05-14 09:49:46'),
(307, 7, '/var/www/html/alarmhistory/cam_7_20200513023923', 'http://w3.airnetmax.net:5004/source-notif/image/307?name=20200513023911_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:40:20', '2020-05-12 22:38:57'),
(419, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/419?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:55:10', '2020-05-12 22:56:53'),
(473, 9, '/var/www/html/alarmhistory/cam_9_20200513084229', 'http://w3.airnetmax.net:5004/source-notif/image/473?name=20200513084203_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 01:46:27', '2020-05-13 01:59:56'),
(626, 2, '/var/www/html/alarmhistory/cam_2_20200514095145', 'http://w3.airnetmax.net:5004/source-notif/image/626?name=DCS-930LB2020051409514501.jpg', 'Person', '1', 1, 0, '2020-05-14 02:52:06', '2020-05-14 07:02:31'),
(308, 7, '/var/www/html/alarmhistory/cam_7_20200513023923', 'http://w3.airnetmax.net:5004/source-notif/image/308?name=20200513023911_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:40:24', '2020-05-12 22:38:57'),
(420, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/420?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:55:35', '2020-05-12 22:56:53'),
(627, 2, '/var/www/html/alarmhistory/cam_2_20200514095320', 'http://w3.airnetmax.net:5004/source-notif/image/627?name=DCS-930LB2020051409531904.jpg', 'Person', '1', 2, 0, '2020-05-14 02:53:55', '2020-05-14 03:09:44'),
(309, 7, '/var/www/html/alarmhistory/cam_7_20200513024036', 'http://w3.airnetmax.net:5004/source-notif/image/309?name=20200513024024_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:40:43', '2020-05-12 22:38:57'),
(421, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/421?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:56:00', '2020-05-12 22:56:53'),
(479, 9, '/var/www/html/alarmhistory/cam_9_20200513085056/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/479?name=20200513085031_00005-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 01:52:02', '2020-05-13 02:01:39'),
(422, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/422?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:56:25', '2020-05-12 22:56:53'),
(628, 2, '/var/www/html/alarmhistory/cam_2_20200514095644', 'http://w3.airnetmax.net:5004/source-notif/image/628?name=DCS-930LB2020051409564303.jpg', 'Person', '1', 2, 0, '2020-05-14 02:57:04', '2020-05-14 02:57:04'),
(310, 7, '/var/www/html/alarmhistory/cam_7_20200513024036', 'http://w3.airnetmax.net:5004/source-notif/image/310?name=20200513024024_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:41:36', '2020-05-12 22:38:57'),
(642, 2, '/var/www/html/alarmhistory/cam_2_20200514141400', 'http://w3.airnetmax.net:5004/source-notif/image/642?name=DCS-930LB2020051414140001.jpg', 'Person', '1', 2, 0, '2020-05-14 07:14:21', '2020-05-14 08:45:06'),
(423, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/423?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:56:50', '2020-05-12 22:56:58'),
(311, 7, '/var/www/html/alarmhistory/cam_7_20200513024036', 'http://w3.airnetmax.net:5004/source-notif/image/311?name=20200513024024_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 19:41:40', '2020-05-12 22:38:57'),
(424, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/424?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 22:57:16', '2020-05-12 22:57:19'),
(315, 7, '/var/www/html/alarmhistory/cam_7_20200513030153', 'http://w3.airnetmax.net:5004/source-notif/image/315?name=20200513030131_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:02:01', '2020-05-12 22:38:57'),
(643, 2, '/var/www/html/alarmhistory/cam_2_20200514141714', 'http://w3.airnetmax.net:5004/source-notif/image/643?name=DCS-930LB2020051414171401.jpg', 'Person', '1', 1, 0, '2020-05-14 07:17:35', '2020-05-14 14:23:24'),
(481, 9, '/var/www/html/alarmhistory/cam_9_20200513085721', 'http://w3.airnetmax.net:5004/source-notif/image/481?name=20200513085705_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 02:00:01', '2020-05-13 02:56:08'),
(425, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/425?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:57:41', '2020-05-12 22:57:41'),
(644, 2, '/var/www/html/alarmhistory/cam_2_20200514142633', 'http://w3.airnetmax.net:5004/source-notif/image/644?name=DCS-930LB2020051414260904.jpg', 'Person', '1', 2, 0, '2020-05-14 07:26:46', '2020-05-14 08:44:49'),
(316, 7, '/var/www/html/alarmhistory/cam_7_20200513030153', 'http://w3.airnetmax.net:5004/source-notif/image/316?name=20200513030131_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:02:48', '2020-05-12 22:38:57'),
(426, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/426?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 22:58:06', '2020-05-12 22:58:08'),
(427, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/427?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 22:58:31', '2020-05-12 22:58:34'),
(317, 7, '/var/www/html/alarmhistory/cam_7_20200513030153', 'http://w3.airnetmax.net:5004/source-notif/image/317?name=20200513030131_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:02:52', '2020-05-12 22:38:57'),
(483, 9, '/var/www/html/alarmhistory/cam_9_20200513090134/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/483?name=20200513090118_00028-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 02:02:10', '2020-05-13 02:02:12'),
(708, 2, '/var/www/html/alarmhistory/cam_2_20200514212619', 'http://w3.airnetmax.net:5004/source-notif/image/708?name=DCS-930LB2020051421261803.jpg', 'Person', '1', 1, 0, '2020-05-14 14:26:57', '2020-05-14 14:32:36'),
(318, 7, '/var/www/html/alarmhistory/cam_7_20200513030938', 'http://w3.airnetmax.net:5004/source-notif/image/318?name=20200513030926_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:09:53', '2020-05-12 22:38:57'),
(428, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/428?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:58:56', '2020-05-12 22:58:56'),
(429, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/429?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:59:21', '2020-05-12 22:59:21'),
(319, 7, '/var/www/html/alarmhistory/cam_7_20200513030938', 'http://w3.airnetmax.net:5004/source-notif/image/319?name=20200513030926_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:10:35', '2020-05-12 22:38:57'),
(758, 2, '/var/www/html/alarmhistory/cam_2_20200515061245', 'http://w3.airnetmax.net:5004/source-notif/image/758?name=DCS-930LB2020051506124501.jpg', 'Person', '1', 2, 0, '2020-05-14 23:13:12', '2020-05-14 23:43:45'),
(430, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/430?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 22:59:46', '2020-05-12 22:59:46'),
(320, 7, '/var/www/html/alarmhistory/cam_7_20200513030938', 'http://w3.airnetmax.net:5004/source-notif/image/320?name=20200513030926_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:10:38', '2020-05-12 22:38:57'),
(762, 2, '/var/www/html/alarmhistory/cam_2_20200515065321', 'http://w3.airnetmax.net:5004/source-notif/image/762?name=DCS-930LB2020051506532004.jpg', 'Person', '1', 2, 0, '2020-05-14 23:53:21', '2020-05-14 23:53:30'),
(431, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/431?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:00:11', '2020-05-12 23:00:11'),
(321, 7, '/var/www/html/alarmhistory/cam_7_20200513031043', 'http://w3.airnetmax.net:5004/source-notif/image/321?name=20200513030926_00050-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:11:00', '2020-05-12 22:38:57'),
(432, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/432?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:00:36', '2020-05-12 23:00:36'),
(763, 2, '/var/www/html/alarmhistory/cam_2_20200515065321', 'http://w3.airnetmax.net/alarmhistory/cam_2_20200515065321/DCS-930LB2020051506532004.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 23:53:21', '2020-05-15 00:57:30'),
(322, 7, '/var/www/html/alarmhistory/cam_7_20200513032015', 'http://w3.airnetmax.net:5004/source-notif/image/322?name=20200513032003_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:20:22', '2020-05-12 22:38:57'),
(433, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/433?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:01:01', '2020-05-12 23:01:02'),
(489, 9, '/var/www/html/alarmhistory/cam_9_20200513091240/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/489?name=20200513091154_00030-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 02:13:26', '2020-05-13 02:13:42'),
(434, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/434?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:01:26', '2020-05-12 23:01:27'),
(766, 2, '/var/www/html/alarmhistory/cam_2_20200515071503', 'http://w3.airnetmax.net:5004/source-notif/image/766?name=DCS-930LB2020051507150302.jpg', 'ipServer=', '1', 2, 0, '2020-05-15 00:15:04', '2020-05-15 00:59:21'),
(435, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/435?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 23:01:51', '2020-05-12 23:01:54'),
(323, 7, '/var/www/html/alarmhistory/cam_7_20200513032015', 'http://w3.airnetmax.net:5004/source-notif/image/323?name=20200513032003_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:21:10', '2020-05-12 22:38:57'),
(436, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/436?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 23:02:16', '2020-05-12 23:02:19'),
(324, 7, '/var/www/html/alarmhistory/cam_7_20200513032015', 'http://w3.airnetmax.net:5004/source-notif/image/324?name=20200513032003_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:21:14', '2020-05-12 22:38:57'),
(325, 7, '/var/www/html/alarmhistory/cam_7_20200513032414', 'http://w3.airnetmax.net:5004/source-notif/image/325?name=20200513032352_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:24:22', '2020-05-12 22:38:57'),
(437, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/437?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:02:41', '2020-05-12 23:02:42'),
(438, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/438?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:03:06', '2020-05-12 23:03:07'),
(499, 9, '/var/www/html/alarmhistory/cam_9_20200513110055/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/499?name=20200513110029_00026-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 04:01:21', '2020-05-13 04:01:34'),
(326, 7, '/var/www/html/alarmhistory/cam_7_20200513032414', 'http://w3.airnetmax.net:5004/source-notif/image/326?name=20200513032352_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:25:08', '2020-05-12 22:38:57'),
(767, 2, '/var/www/html/alarmhistory/cam_2_20200515072047', 'http://w3.airnetmax.net:5004/source-notif/image/767?name=DCS-930LB2020051507204604.jpg', 'Motion', '1', 2, 0, '2020-05-15 00:20:47', '2020-05-15 01:00:17'),
(439, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/439?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:03:32', '2020-05-12 23:03:32'),
(327, 7, '/var/www/html/alarmhistory/cam_7_20200513032414', 'http://w3.airnetmax.net:5004/source-notif/image/327?name=20200513032352_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:25:12', '2020-05-12 22:38:57'),
(440, 1, '/var/www/html/alarmhistory/cam_1_20200513054329', 'http://w3.airnetmax.net:5004/source-notif/image/440?name=10.0.16.122_01_20200513054324417_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-12 23:03:57', '2020-05-12 23:03:57'),
(779, 2, '/var/www/html/alarmhistory/cam_2_20200515090203', 'http://w3.airnetmax.net:5004/source-notif/image/779?name=DCS-930LB2020051509020203.jpg', 'Motion', '1', 2, 0, '2020-05-15 02:02:03', '2020-05-15 02:02:03'),
(328, 7, '/var/www/html/alarmhistory/cam_7_20200513032648', 'http://w3.airnetmax.net:5004/source-notif/image/328?name=20200513032352_00043-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:26:55', '2020-05-12 22:38:57'),
(500, 9, '/var/www/html/alarmhistory/cam_9_20200513111538', 'http://w3.airnetmax.net:5004/source-notif/image/500?name=20200513111407_00002-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 04:15:48', '2020-05-13 08:12:58'),
(456, 1, '/var/www/html/alarmhistory/cam_1_20200513065359', 'http://w3.airnetmax.net:5004/source-notif/image/456?name=10.0.16.122_01_20200513064912230_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-12 23:54:25', '2020-05-12 23:54:30'),
(780, 2, '/var/www/html/alarmhistory/cam_2_20200515091225', 'http://w3.airnetmax.net:5004/source-notif/image/780?name=DCS-930LB2020051509122402.jpg', 'Motion', '1', 2, 0, '2020-05-15 02:12:25', '2020-05-15 02:12:25'),
(329, 7, '/var/www/html/alarmhistory/cam_7_20200513032648', 'http://w3.airnetmax.net:5004/source-notif/image/329?name=20200513032352_00043-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:27:40', '2020-05-12 22:38:57'),
(501, 9, '/var/www/html/alarmhistory/cam_9_20200513112314/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/501?name=20200513111407_00028-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 04:23:40', '2020-05-13 08:12:58'),
(457, 1, '/var/www/html/alarmhistory/cam_1_20200513070802', 'http://w3.airnetmax.net:5004/source-notif/image/457?name=10.0.16.122_01_20200513070732974_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 00:09:17', '2020-05-13 00:09:17'),
(330, 7, '/var/www/html/alarmhistory/cam_7_20200513032648', 'http://w3.airnetmax.net:5004/source-notif/image/330?name=20200513032352_00043-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:27:42', '2020-05-12 22:38:57'),
(458, 1, '/var/www/html/alarmhistory/cam_1_20200513071157', 'http://w3.airnetmax.net:5004/source-notif/image/458?name=10.0.16.122_01_20200513071139139_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 00:13:12', '2020-05-13 00:13:13'),
(503, 9, '/var/www/html/alarmhistory/cam_9_20200513122745', 'http://w3.airnetmax.net:5004/source-notif/image/503?name=20200513122727_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 05:29:20', '2020-05-13 08:12:58'),
(331, 7, '/var/www/html/alarmhistory/cam_7_20200513033625', 'http://w3.airnetmax.net:5004/source-notif/image/331?name=20200513033603_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:36:33', '2020-05-12 22:38:57'),
(464, 1, '/var/www/html/alarmhistory/cam_1_20200513081247/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/464?name=10.0.16.122_01_20200513080306300_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:15:46', '2020-05-13 01:56:26'),
(504, 9, '/var/www/html/alarmhistory/cam_9_20200513122921', 'http://w3.airnetmax.net:5004/source-notif/image/504?name=20200513122903_00004-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 05:30:44', '2020-05-13 08:12:58'),
(466, 1, '/var/www/html/alarmhistory/cam_1_20200513082158', 'http://w3.airnetmax.net:5004/source-notif/image/466?name=10.0.16.122_01_20200513082055147_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:24:39', '2020-05-13 01:56:26'),
(332, 7, '/var/www/html/alarmhistory/cam_7_20200513033625', 'http://w3.airnetmax.net:5004/source-notif/image/332?name=20200513033603_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:37:24', '2020-05-12 22:38:57'),
(505, 9, '/var/www/html/alarmhistory/cam_9_20200513123049', 'http://w3.airnetmax.net:5004/source-notif/image/505?name=20200513123033_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 05:32:54', '2020-05-13 08:12:58'),
(468, 1, '/var/www/html/alarmhistory/cam_1_20200513082531', 'http://w3.airnetmax.net:5004/source-notif/image/468?name=10.0.16.122_01_20200513082522929_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:31:18', '2020-05-13 01:56:26'),
(333, 7, '/var/www/html/alarmhistory/cam_7_20200513033625', 'http://w3.airnetmax.net:5004/source-notif/image/333?name=20200513033603_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:37:28', '2020-05-12 22:38:57'),
(471, 1, '/var/www/html/alarmhistory/cam_1_20200513083336', 'http://w3.airnetmax.net:5004/source-notif/image/471?name=10.0.16.122_01_20200513083313832_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:37:35', '2020-05-13 01:56:26'),
(334, 7, '/var/www/html/alarmhistory/cam_7_20200513033751', 'http://w3.airnetmax.net:5004/source-notif/image/334?name=20200513033729_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:37:58', '2020-05-12 22:38:57'),
(506, 9, '/var/www/html/alarmhistory/cam_9_20200513125429/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/506?name=20200513125413_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 05:55:05', '2020-05-13 08:12:58'),
(472, 1, '/var/www/html/alarmhistory/cam_1_20200513083753', 'http://w3.airnetmax.net:5004/source-notif/image/472?name=10.0.16.122_01_20200513083748624_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:40:00', '2020-05-13 01:56:26'),
(335, 7, '/var/www/html/alarmhistory/cam_7_20200513033751', 'http://w3.airnetmax.net:5004/source-notif/image/335?name=20200513033729_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:38:48', '2020-05-12 22:38:57'),
(474, 1, '/var/www/html/alarmhistory/cam_1_20200513084227', 'http://w3.airnetmax.net:5004/source-notif/image/474?name=10.0.16.122_01_20200513084140802_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:47:33', '2020-05-13 01:56:26'),
(336, 7, '/var/www/html/alarmhistory/cam_7_20200513033751', 'http://w3.airnetmax.net:5004/source-notif/image/336?name=20200513033729_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:38:52', '2020-05-12 22:38:57'),
(507, 9, '/var/www/html/alarmhistory/cam_9_20200513125621', 'http://w3.airnetmax.net:5004/source-notif/image/507?name=20200513125601_00004-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 05:57:45', '2020-05-13 08:12:58'),
(475, 1, '/var/www/html/alarmhistory/cam_1_20200513084746', 'http://w3.airnetmax.net:5004/source-notif/image/475?name=10.0.16.122_01_20200513084738759_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:48:11', '2020-05-13 01:56:26'),
(337, 7, '/var/www/html/alarmhistory/cam_7_20200513033905', 'http://w3.airnetmax.net:5004/source-notif/image/337?name=20200513033852_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:39:12', '2020-05-12 22:38:57'),
(476, 1, '/var/www/html/alarmhistory/cam_1_20200513084813', 'http://w3.airnetmax.net:5004/source-notif/image/476?name=10.0.16.122_01_20200513084807051_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:48:39', '2020-05-13 01:56:26'),
(508, 9, '/var/www/html/alarmhistory/cam_9_20200513125749', 'http://w3.airnetmax.net:5004/source-notif/image/508?name=20200513125733_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 05:59:02', '2020-05-13 07:29:15'),
(338, 7, '/var/www/html/alarmhistory/cam_7_20200513033905', 'http://w3.airnetmax.net:5004/source-notif/image/338?name=20200513033852_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:39:55', '2020-05-12 22:38:57'),
(477, 1, '/var/www/html/alarmhistory/cam_1_20200513084848', 'http://w3.airnetmax.net:5004/source-notif/image/477?name=10.0.16.122_01_20200513084836010_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 01:50:22', '2020-05-13 01:56:26'),
(339, 7, '/var/www/html/alarmhistory/cam_7_20200513033905', 'http://w3.airnetmax.net:5004/source-notif/image/339?name=20200513033852_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:40:05', '2020-05-12 22:38:57'),
(478, 1, '/var/www/html/alarmhistory/cam_1_20200513085107/obejectiondetected', 'http://w3.airnetmax.net:5004/source-notif/image/478?name=10.0.16.122_01_20200513085043471_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 01:51:46', '2020-05-13 01:58:59'),
(509, 9, '/var/www/html/alarmhistory/cam_9_20200513130245', 'http://w3.airnetmax.net:5004/source-notif/image/509?name=20200513130219_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 06:05:22', '2020-05-13 08:12:58'),
(340, 7, '/var/www/html/alarmhistory/cam_7_20200513033905', 'http://w3.airnetmax.net:5004/source-notif/image/340?name=20200513033852_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:40:08', '2020-05-12 22:38:57'),
(480, 1, '/var/www/html/alarmhistory/cam_1_20200513085724', 'http://w3.airnetmax.net:5004/source-notif/image/480?name=10.0.16.122_01_20200513085706503_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 01:58:39', '2020-05-13 01:58:48'),
(341, 7, '/var/www/html/alarmhistory/cam_7_20200513034013', 'http://w3.airnetmax.net:5004/source-notif/image/341?name=20200513033852_00052-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:40:19', '2020-05-12 22:38:57'),
(512, 9, '/var/www/html/alarmhistory/cam_9_20200513150633/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/512?name=20200513150557_00028-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:07:09', '2020-05-13 08:12:58'),
(482, 1, '/var/www/html/alarmhistory/cam_1_20200513085947', 'http://w3.airnetmax.net:5004/source-notif/image/482?name=10.0.16.122_01_20200513085938859_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 02:01:02', '2020-05-13 02:01:07'),
(342, 7, '/var/www/html/alarmhistory/cam_7_20200513034655', 'http://w3.airnetmax.net:5004/source-notif/image/342?name=20200513034633_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:47:03', '2020-05-12 22:38:57'),
(484, 1, '/var/www/html/alarmhistory/cam_1_20200513090127', 'http://w3.airnetmax.net:5004/source-notif/image/484?name=10.0.16.122_01_20200513090118533_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:03:07', '2020-05-13 02:03:08'),
(343, 7, '/var/www/html/alarmhistory/cam_7_20200513034655', 'http://w3.airnetmax.net:5004/source-notif/image/343?name=20200513034633_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:47:50', '2020-05-12 22:38:57'),
(485, 1, '/var/www/html/alarmhistory/cam_1_20200513090319', 'http://w3.airnetmax.net:5004/source-notif/image/485?name=10.0.16.122_01_20200513090310333_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:04:09', '2020-05-13 02:04:09'),
(513, 9, '/var/www/html/alarmhistory/cam_9_20200513151138', 'http://w3.airnetmax.net:5004/source-notif/image/513?name=20200513151111_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:12:24', '2020-05-13 08:12:59'),
(486, 1, '/var/www/html/alarmhistory/cam_1_20200513090452', 'http://w3.airnetmax.net:5004/source-notif/image/486?name=10.0.16.122_01_20200513090411630_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:05:17', '2020-05-13 02:05:18'),
(344, 7, '/var/www/html/alarmhistory/cam_7_20200513034655', 'http://w3.airnetmax.net:5004/source-notif/image/344?name=20200513034633_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:47:54', '2020-05-12 22:38:57'),
(345, 7, '/var/www/html/alarmhistory/cam_7_20200513034759', 'http://w3.airnetmax.net:5004/source-notif/image/345?name=20200513034633_00053-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:48:04', '2020-05-12 22:38:57'),
(514, 9, '/var/www/html/alarmhistory/cam_9_20200513151230/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/514?name=20200513151111_00053-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 08:13:05', '2020-05-13 08:13:30'),
(487, 1, '/var/www/html/alarmhistory/cam_1_20200513090725', 'http://w3.airnetmax.net:5004/source-notif/image/487?name=10.0.16.122_01_20200513090623435_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:07:50', '2020-05-13 02:07:51'),
(488, 1, '/var/www/html/alarmhistory/cam_1_20200513090925', 'http://w3.airnetmax.net:5004/source-notif/image/488?name=10.0.16.122_01_20200513090919114_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:11:06', '2020-05-13 02:11:06'),
(346, 7, '/var/www/html/alarmhistory/cam_7_20200513035937', 'http://w3.airnetmax.net:5004/source-notif/image/346?name=20200513035914_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 20:59:51', '2020-05-12 22:38:57'),
(490, 1, '/var/www/html/alarmhistory/cam_1_20200513091214', 'http://w3.airnetmax.net:5004/source-notif/image/490?name=10.0.16.122_01_20200513091158810_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 02:14:44', '2020-05-13 02:14:50'),
(521, 9, '/var/www/html/alarmhistory/cam_9_20200513160245/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/521?name=20200513160229_00029-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 09:03:31', '2020-05-13 09:03:31'),
(347, 7, '/var/www/html/alarmhistory/cam_7_20200513035937', 'http://w3.airnetmax.net:5004/source-notif/image/347?name=20200513035914_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:00:34', '2020-05-12 22:38:57'),
(491, 1, '/var/www/html/alarmhistory/cam_1_20200513091452', 'http://w3.airnetmax.net:5004/source-notif/image/491?name=10.0.16.122_01_20200513091446323_MOTION_DETECTION.jpg', 'Person', '1', 1, 0, '2020-05-13 02:15:17', '2020-05-13 02:15:18'),
(348, 7, '/var/www/html/alarmhistory/cam_7_20200513035937', 'http://w3.airnetmax.net:5004/source-notif/image/348?name=20200513035914_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:00:38', '2020-05-12 22:38:57'),
(492, 1, '/var/www/html/alarmhistory/cam_1_20200513091522', 'http://w3.airnetmax.net:5004/source-notif/image/492?name=10.0.16.122_01_20200513091514587_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 02:16:12', '2020-05-13 02:16:26'),
(522, 9, '/var/www/html/alarmhistory/cam_9_20200513160417/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/522?name=20200513160401_00028-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:04:58', '2020-05-13 09:05:03'),
(349, 7, '/var/www/html/alarmhistory/cam_7_20200513040230', 'http://w3.airnetmax.net:5004/source-notif/image/349?name=20200513040218_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:02:44', '2020-05-12 22:38:57'),
(495, 1, '/var/www/html/alarmhistory/cam_1_20200513092639', 'http://w3.airnetmax.net:5004/source-notif/image/495?name=10.0.16.122_01_20200513091923176_MOTION_DETECTION.jpg', 'Person', '1', 2, 0, '2020-05-13 02:27:04', '2020-05-13 02:27:07'),
(523, 9, '/var/www/html/alarmhistory/cam_9_20200513160553/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/523?name=20200513160534_00025-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:06:20', '2020-05-13 09:06:24'),
(350, 7, '/var/www/html/alarmhistory/cam_7_20200513040230', 'http://w3.airnetmax.net:5004/source-notif/image/350?name=20200513040218_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:03:29', '2020-05-12 22:38:57'),
(351, 7, '/var/www/html/alarmhistory/cam_7_20200513040230', 'http://w3.airnetmax.net:5004/source-notif/image/351?name=20200513040218_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:03:32', '2020-05-12 22:38:57'),
(524, 9, '/var/www/html/alarmhistory/cam_9_20200513160707/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/524?name=20200513160651_00025-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 09:07:33', '2020-05-13 09:07:33'),
(352, 7, '/var/www/html/alarmhistory/cam_7_20200513040450', 'http://w3.airnetmax.net:5004/source-notif/image/352?name=20200513040429_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:04:58', '2020-05-12 22:38:57'),
(525, 9, '/var/www/html/alarmhistory/cam_9_20200513160806', 'http://w3.airnetmax.net:5004/source-notif/image/525?name=20200513160748_00003-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 09:08:26', '2020-05-13 09:09:33'),
(353, 7, '/var/www/html/alarmhistory/cam_7_20200513040450', 'http://w3.airnetmax.net:5004/source-notif/image/353?name=20200513040429_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:05:47', '2020-05-12 22:38:57'),
(526, 9, '/var/www/html/alarmhistory/cam_9_20200513160840/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/526?name=20200513160748_00039-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:09:06', '2020-05-13 09:38:43'),
(354, 7, '/var/www/html/alarmhistory/cam_7_20200513040450', 'http://w3.airnetmax.net:5004/source-notif/image/354?name=20200513040429_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:05:50', '2020-05-12 22:38:57'),
(355, 7, '/var/www/html/alarmhistory/cam_7_20200513040555', 'http://w3.airnetmax.net:5004/source-notif/image/355?name=20200513040429_00051-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:06:06', '2020-05-12 22:38:57'),
(527, 9, '/var/www/html/alarmhistory/cam_9_20200513163819', 'http://w3.airnetmax.net:5004/source-notif/image/527?name=20200513163752_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 09:40:19', '2020-05-13 09:46:46'),
(356, 7, '/var/www/html/alarmhistory/cam_7_20200513041010', 'http://w3.airnetmax.net:5004/source-notif/image/356?name=20200513040948_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:10:18', '2020-05-12 22:38:57'),
(357, 7, '/var/www/html/alarmhistory/cam_7_20200513041010', 'http://w3.airnetmax.net:5004/source-notif/image/357?name=20200513040948_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:11:08', '2020-05-12 22:38:57'),
(528, 9, '/var/www/html/alarmhistory/cam_9_20200513164020/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/528?name=20200513164003_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 09:40:46', '2020-05-13 09:46:46'),
(358, 7, '/var/www/html/alarmhistory/cam_7_20200513041010', 'http://w3.airnetmax.net:5004/source-notif/image/358?name=20200513040948_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:11:12', '2020-05-12 22:38:57'),
(359, 7, '/var/www/html/alarmhistory/cam_7_20200513045625', 'http://w3.airnetmax.net:5004/source-notif/image/359?name=20200513045557_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:56:33', '2020-05-12 22:38:57'),
(360, 7, '/var/www/html/alarmhistory/cam_7_20200513045625', 'http://w3.airnetmax.net:5004/source-notif/image/360?name=20200513045557_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:57:22', '2020-05-12 22:38:57'),
(529, 9, '/var/www/html/alarmhistory/cam_9_20200513164734/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/529?name=20200513164717_00026-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:48:09', '2020-05-13 09:48:32'),
(361, 7, '/var/www/html/alarmhistory/cam_7_20200513045625', 'http://w3.airnetmax.net:5004/source-notif/image/361?name=20200513045557_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:57:26', '2020-05-12 22:38:57'),
(530, 9, '/var/www/html/alarmhistory/cam_9_20200513164846/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/530?name=20200513164830_00025-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:49:17', '2020-05-13 09:49:47'),
(362, 7, '/var/www/html/alarmhistory/cam_7_20200513045732', 'http://w3.airnetmax.net:5004/source-notif/image/362?name=20200513045557_00053-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 21:57:37', '2020-05-12 22:38:57'),
(363, 7, '/var/www/html/alarmhistory/cam_7_20200513053446', 'http://w3.airnetmax.net:5004/source-notif/image/363?name=20200513053423_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:46', '2020-05-12 22:38:57'),
(364, 7, '/var/www/html/alarmhistory/cam_7_20200513053447', 'http://w3.airnetmax.net:5004/source-notif/image/364?name=20200513053423_00003-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:47', '2020-05-12 22:38:57'),
(365, 7, '/var/www/html/alarmhistory/cam_7_20200513053449', 'http://w3.airnetmax.net:5004/source-notif/image/365?name=20200513053423_00004-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:49', '2020-05-12 22:38:57'),
(531, 9, '/var/www/html/alarmhistory/cam_9_20200513165121', 'http://w3.airnetmax.net:5004/source-notif/image/531?name=20200513165106_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:52:40', '2020-05-13 10:38:20'),
(366, 7, '/var/www/html/alarmhistory/cam_7_20200513053450', 'http://w3.airnetmax.net:5004/source-notif/image/366?name=20200513053423_00005-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:50', '2020-05-12 22:38:57'),
(367, 7, '/var/www/html/alarmhistory/cam_7_20200513053451', 'http://w3.airnetmax.net:5004/source-notif/image/367?name=20200513053423_00007-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:52', '2020-05-12 22:38:57'),
(532, 9, '/var/www/html/alarmhistory/cam_9_20200513165242/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/532?name=20200513165226_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:53:08', '2020-05-13 10:31:21'),
(368, 7, '/var/www/html/alarmhistory/cam_7_20200513053453', 'http://w3.airnetmax.net:5004/source-notif/image/368?name=20200513053423_00009-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:53', '2020-05-12 22:38:57'),
(533, 9, '/var/www/html/alarmhistory/cam_9_20200513165753/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/533?name=20200513165728_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 09:58:19', '2020-05-13 09:59:44'),
(369, 7, '/var/www/html/alarmhistory/cam_7_20200513053454', 'http://w3.airnetmax.net:5004/source-notif/image/369?name=20200513053423_00010-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:54', '2020-05-12 22:38:57'),
(536, 9, '/var/www/html/alarmhistory/cam_9_20200513170330', 'http://w3.airnetmax.net:5004/source-notif/image/536?name=20200513170304_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 10:05:22', '2020-05-13 10:22:07'),
(537, 9, '/var/www/html/alarmhistory/cam_9_20200513170525', 'http://w3.airnetmax.net:5004/source-notif/image/537?name=20200513170509_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 10:07:16', '2020-05-13 10:16:33'),
(538, 9, '/var/www/html/alarmhistory/cam_9_20200513173030', 'http://w3.airnetmax.net:5004/source-notif/image/538?name=20200513173011_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 10:31:29', '2020-05-13 10:31:36'),
(539, 9, '/var/www/html/alarmhistory/cam_9_20200513173130/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/539?name=20200513173112_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:31:57', '2020-05-13 10:31:59'),
(540, 9, '/var/www/html/alarmhistory/cam_9_20200513173522', 'http://w3.airnetmax.net:5004/source-notif/image/540?name=20200513173505_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:36:31', '2020-05-13 10:36:32'),
(541, 9, '/var/www/html/alarmhistory/cam_9_20200513173633/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/541?name=20200513173615_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:36:58', '2020-05-13 10:36:59'),
(542, 9, '/var/www/html/alarmhistory/cam_9_20200513174156', 'http://w3.airnetmax.net:5004/source-notif/image/542?name=20200513174131_00010-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:43:04', '2020-05-13 10:43:05'),
(554, 9, '/var/www/html/alarmhistory/cam_9_20200513190859', 'http://w3.airnetmax.net:5004/source-notif/image/554?name=20200513190832_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 12:12:02', '2020-05-13 12:47:39'),
(555, 9, '/var/www/html/alarmhistory/cam_9_20200513201601', 'http://w3.airnetmax.net:5004/source-notif/image/555?name=20200513201535_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 13:18:12', '2020-05-13 13:18:29'),
(556, 9, '/var/www/html/alarmhistory/cam_9_20200513204007/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/556?name=20200513203950_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 13:40:53', '2020-05-13 14:46:06'),
(557, 9, '/var/www/html/alarmhistory/cam_9_20200513204140', 'http://w3.airnetmax.net:5004/source-notif/image/557?name=20200513204125_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 13:43:21', '2020-05-13 13:44:15'),
(558, 9, '/var/www/html/alarmhistory/cam_9_20200513212712/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/558?name=20200513212645_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 14:27:48', '2020-05-13 14:46:06'),
(559, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/559?name=20200513212925_00006-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 14:32:09', '2020-05-13 14:46:06'),
(560, 9, '/var/www/html/alarmhistory/cam_9_20200513214039', 'http://w3.airnetmax.net:5004/source-notif/image/560?name=20200513213959_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 14:44:37', '2020-05-13 14:46:06'),
(595, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/595?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 2, 0, '2020-05-13 22:07:50', '2020-05-13 22:08:42'),
(596, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/596?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 1, 0, '2020-05-13 22:14:37', '2020-05-13 22:17:03'),
(597, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/597?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 1, 0, '2020-05-13 22:14:50', '2020-05-13 22:17:07'),
(598, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/598?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 2, 0, '2020-05-13 22:20:41', '2020-05-13 22:20:44'),
(599, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/599?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 2, 0, '2020-05-13 22:27:15', '2020-05-13 22:27:18'),
(601, 9, '/var/www/html/alarmhistory/cam_9_20200513212946', 'http://w3.airnetmax.net:5004/source-notif/image/601?name=20200513212925_00006-capture.jpg', 'Person', '103.10.58.46', 2, 0, '2020-05-13 22:39:02', '2020-05-14 00:11:48'),
(615, 9, '/var/www/html/alarmhistory/cam_9_20200514080919/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514080919/objectdetected/20200514080714_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 01:09:20', '2020-05-14 02:46:21'),
(618, 9, '/var/www/html/alarmhistory/cam_9_20200514092540', 'http://w3.airnetmax.net:5004/source-notif/image/618?name=20200514092525_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 02:27:53', '2020-05-14 02:46:21'),
(619, 9, '/var/www/html/alarmhistory/cam_9_20200514092819', 'http://w3.airnetmax.net:5004/source-notif/image/619?name=20200514092739_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 02:37:24', '2020-05-14 02:46:21'),
(621, 9, '/var/www/html/alarmhistory/cam_9_20200514093725/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514093725/objectdetected/20200514093652_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 02:37:25', '2020-05-14 02:46:21'),
(632, 9, '/var/www/html/alarmhistory/cam_9_20200514114405', 'http://w3.airnetmax.net:5004/source-notif/image/632?name=20200514114338_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 04:46:43', '2020-05-14 07:02:31');
INSERT INTO `CCTVNotificationsArchieve` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(634, 9, '/var/www/html/alarmhistory/cam_9_20200514130144', 'http://w3.airnetmax.net:5004/source-notif/image/634?name=20200514130126_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 06:03:12', '2020-05-14 07:02:31'),
(635, 9, '/var/www/html/alarmhistory/cam_9_20200514130325/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514130325/objectdetected/20200514130257_00036-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 06:03:25', '2020-05-14 07:02:31'),
(636, 9, '/var/www/html/alarmhistory/cam_9_20200514130624/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/636?name=20200514130257_00253-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 06:07:00', '2020-05-14 07:02:31'),
(637, 9, '/var/www/html/alarmhistory/cam_9_20200514130947/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/637?name=20200514130931_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 06:10:24', '2020-05-14 07:02:31'),
(639, 9, '/var/www/html/alarmhistory/cam_9_20200514135257/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/639?name=20200514135219_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 06:53:52', '2020-05-14 07:02:31'),
(640, 9, '/var/www/html/alarmhistory/cam_9_20200514135843', 'http://w3.airnetmax.net:5004/source-notif/image/640?name=20200514135219_00194-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 07:02:10', '2020-05-14 07:02:32'),
(641, 9, '/var/www/html/alarmhistory/cam_9_20200514140211', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514140211/20200514135922_00183-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 07:02:11', '2020-05-14 09:01:35'),
(645, 9, '/var/www/html/alarmhistory/cam_9_20200514143600', 'http://w3.airnetmax.net:5004/source-notif/image/645?name=20200514143544_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 07:39:58', '2020-05-14 08:44:57'),
(647, 9, '/var/www/html/alarmhistory/cam_9_20200514155446', 'http://w3.airnetmax.net:5004/source-notif/image/647?name=20200514155430_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 08:55:55', '2020-05-14 09:01:35'),
(648, 9, '/var/www/html/alarmhistory/cam_9_20200514155826', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514155826/20200514155810_00001-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 08:58:26', '2020-05-14 09:14:43'),
(649, 9, '/var/www/html/alarmhistory/cam_9_20200514160008', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514160008/20200514155948_00003-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:00:08', '2020-05-14 09:04:00'),
(650, 9, '/var/www/html/alarmhistory/cam_9_20200514160315', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514160315/20200514160147_00102-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 09:03:15', '2020-05-14 09:04:14'),
(797, 2, '/var/www/html/alarmhistory/cam_2_20200516010720', 'http://w3.airnetmax.net:5004/source-notif/image/797?name=DCS-930LB2020051601071904.jpg', 'Motion', '1', 1, 0, '2020-05-15 18:07:20', '2020-05-15 19:08:47'),
(370, 7, '/var/www/html/alarmhistory/cam_7_20200513053455', 'http://w3.airnetmax.net:5004/source-notif/image/370?name=20200513053423_00011-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:34:55', '2020-05-12 22:38:57'),
(652, 9, '/var/www/html/alarmhistory/cam_9_20200514160530/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514160530/objectdetected/20200514160503_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:05:30', '2020-05-14 09:18:10'),
(378, 7, '/var/www/html/alarmhistory/cam_7_20200513053506', 'http://w3.airnetmax.net:5004/source-notif/image/378?name=20200513053423_00021-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:06', '2020-05-12 22:38:57'),
(798, 2, '/var/www/html/alarmhistory/cam_2_20200516011626', 'http://w3.airnetmax.net:5004/source-notif/image/798?name=DCS-930LB2020051601162601.jpg', 'Motion', '1', 1, 0, '2020-05-15 18:16:26', '2020-05-15 19:08:47'),
(379, 7, '/var/www/html/alarmhistory/cam_7_20200513053507', 'http://w3.airnetmax.net:5004/source-notif/image/379?name=20200513053423_00023-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:07', '2020-05-12 22:38:57'),
(380, 7, '/var/www/html/alarmhistory/cam_7_20200513053509', 'http://w3.airnetmax.net:5004/source-notif/image/380?name=20200513053423_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:09', '2020-05-12 22:38:57'),
(799, 2, '/var/www/html/alarmhistory/cam_2_20200516012302', 'http://w3.airnetmax.net:5004/source-notif/image/799?name=DCS-930LB2020051601230105.jpg', 'Motion', '1', 1, 0, '2020-05-15 18:23:02', '2020-05-15 19:08:47'),
(656, 9, '/var/www/html/alarmhistory/cam_9_20200514161247/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514161247/objectdetected/20200514161228_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:12:47', '2020-05-14 09:18:10'),
(381, 7, '/var/www/html/alarmhistory/cam_7_20200513053510', 'http://w3.airnetmax.net:5004/source-notif/image/381?name=20200513053423_00025-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:10', '2020-05-12 22:38:57'),
(800, 2, '/var/www/html/alarmhistory/cam_2_20200516012302', 'http://w3.airnetmax.net:5004/source-notif/image/800?name=DCS-930LB2020051601230105.jpg', 'Person', '1', 2, 0, '2020-05-15 18:23:29', '2020-05-15 19:17:07'),
(382, 7, '/var/www/html/alarmhistory/cam_7_20200513053511', 'http://w3.airnetmax.net:5004/source-notif/image/382?name=20200513053423_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:12', '2020-05-12 22:38:57'),
(383, 7, '/var/www/html/alarmhistory/cam_7_20200513053513', 'http://w3.airnetmax.net:5004/source-notif/image/383?name=20200513053423_00027-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:13', '2020-05-12 22:38:57'),
(808, 2, '/var/www/html/alarmhistory/cam_2_20200516033359', 'http://w3.airnetmax.net:5004/source-notif/image/808?name=DCS-930LB2020051603335802.jpg', 'Motion', '1', 1, 0, '2020-05-15 20:33:59', '2020-05-15 20:36:37'),
(657, 9, '/var/www/html/alarmhistory/cam_9_20200514161820/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/657?name=20200514161754_00034-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 09:18:57', '2020-05-14 09:19:00'),
(384, 7, '/var/www/html/alarmhistory/cam_7_20200513053515', 'http://w3.airnetmax.net:5004/source-notif/image/384?name=20200513053423_00028-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:15', '2020-05-12 22:38:57'),
(385, 7, '/var/www/html/alarmhistory/cam_7_20200513053516', 'http://w3.airnetmax.net:5004/source-notif/image/385?name=20200513053423_00029-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:17', '2020-05-12 22:38:57'),
(386, 7, '/var/www/html/alarmhistory/cam_7_20200513053518', 'http://w3.airnetmax.net:5004/source-notif/image/386?name=20200513053423_00030-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:18', '2020-05-12 22:38:57'),
(387, 7, '/var/www/html/alarmhistory/cam_7_20200513053519', 'http://w3.airnetmax.net:5004/source-notif/image/387?name=20200513053423_00031-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:19', '2020-05-12 22:38:57'),
(658, 9, '/var/www/html/alarmhistory/cam_9_20200514162004/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514162004/objectdetected/20200514161944_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 09:20:04', '2020-05-14 09:32:03'),
(809, 2, '/var/www/html/alarmhistory/cam_2_20200516033359', 'http://w3.airnetmax.net:5004/source-notif/image/809?name=DCS-930LB2020051603335802.jpg', 'Person', '1', 2, 0, '2020-05-15 20:34:57', '2020-05-15 20:38:38'),
(388, 7, '/var/www/html/alarmhistory/cam_7_20200513053520', 'http://w3.airnetmax.net:5004/source-notif/image/388?name=20200513053423_00033-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:20', '2020-05-12 22:38:57'),
(811, 2, '/var/www/html/alarmhistory/cam_2_20200516034559', 'http://w3.airnetmax.net:5004/source-notif/image/811?name=DCS-930LB2020051603455804.jpg', 'Motion', '1', 2, 0, '2020-05-15 20:45:59', '2020-05-15 20:47:58'),
(389, 7, '/var/www/html/alarmhistory/cam_7_20200513053521', 'http://w3.airnetmax.net:5004/source-notif/image/389?name=20200513053423_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:21', '2020-05-12 22:38:57'),
(390, 7, '/var/www/html/alarmhistory/cam_7_20200513053523', 'http://w3.airnetmax.net:5004/source-notif/image/390?name=20200513053423_00035-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:23', '2020-05-12 22:38:57'),
(661, 9, '/var/www/html/alarmhistory/cam_9_20200514164208/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/661?name=20200514164142_00034-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 09:42:44', '2020-05-14 09:43:00'),
(391, 7, '/var/www/html/alarmhistory/cam_7_20200513053524', 'http://w3.airnetmax.net:5004/source-notif/image/391?name=20200513053423_00036-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:24', '2020-05-12 22:38:57'),
(392, 7, '/var/www/html/alarmhistory/cam_7_20200513053525', 'http://w3.airnetmax.net:5004/source-notif/image/392?name=20200513053423_00037-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:26', '2020-05-12 22:38:57'),
(393, 7, '/var/www/html/alarmhistory/cam_7_20200513053527', 'http://w3.airnetmax.net:5004/source-notif/image/393?name=20200513053423_00038-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:27', '2020-05-12 22:38:57'),
(394, 7, '/var/www/html/alarmhistory/cam_7_20200513053528', 'http://w3.airnetmax.net:5004/source-notif/image/394?name=20200513053423_00040-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:28', '2020-05-12 22:38:57'),
(395, 7, '/var/www/html/alarmhistory/cam_7_20200513053530', 'http://w3.airnetmax.net:5004/source-notif/image/395?name=20200513053423_00041-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:30', '2020-05-12 22:38:57'),
(662, 9, '/var/www/html/alarmhistory/cam_9_20200514170915/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/662?name=20200514170849_00034-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 10:09:51', '2020-05-14 10:09:55'),
(396, 7, '/var/www/html/alarmhistory/cam_7_20200513053530', 'http://w3.airnetmax.net:5004/source-notif/image/396?name=20200513053423_00041-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:30', '2020-05-12 22:38:57'),
(397, 7, '/var/www/html/alarmhistory/cam_7_20200513053531', 'http://w3.airnetmax.net:5004/source-notif/image/397?name=20200513053423_00043-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:31', '2020-05-12 22:38:57'),
(398, 7, '/var/www/html/alarmhistory/cam_7_20200513053532', 'http://w3.airnetmax.net:5004/source-notif/image/398?name=20200513053423_00044-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:32', '2020-05-12 22:38:57'),
(663, 9, '/var/www/html/alarmhistory/cam_9_20200514171038/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514171038/objectdetected/20200514171022_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 10:10:38', '2020-05-14 11:54:12'),
(399, 7, '/var/www/html/alarmhistory/cam_7_20200513053534', 'http://w3.airnetmax.net:5004/source-notif/image/399?name=20200513053423_00045-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:34', '2020-05-12 22:38:57'),
(400, 7, '/var/www/html/alarmhistory/cam_7_20200513053535', 'http://w3.airnetmax.net:5004/source-notif/image/400?name=20200513053423_00047-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:35', '2020-05-12 22:38:57'),
(401, 7, '/var/www/html/alarmhistory/cam_7_20200513053536', 'http://w3.airnetmax.net:5004/source-notif/image/401?name=20200513053423_00048-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:37', '2020-05-12 22:38:57'),
(664, 9, '/var/www/html/alarmhistory/cam_9_20200514171223/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514171223/objectdetected/20200514171207_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 10:12:23', '2020-05-14 11:54:12'),
(402, 7, '/var/www/html/alarmhistory/cam_7_20200513053538', 'http://w3.airnetmax.net:5004/source-notif/image/402?name=20200513053423_00049-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:38', '2020-05-12 22:38:57'),
(403, 7, '/var/www/html/alarmhistory/cam_7_20200513053539', 'http://w3.airnetmax.net:5004/source-notif/image/403?name=20200513053423_00050-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:40', '2020-05-12 22:38:57'),
(404, 7, '/var/www/html/alarmhistory/cam_7_20200513053541', 'http://w3.airnetmax.net:5004/source-notif/image/404?name=20200513053423_00052-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:41', '2020-05-12 22:38:57'),
(405, 7, '/var/www/html/alarmhistory/cam_7_20200513053541', 'http://w3.airnetmax.net:5004/source-notif/image/405?name=20200513053423_00052-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 22:35:41', '2020-05-12 22:38:57'),
(665, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200514171405/20200514171349_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 10:14:05', '2020-05-14 11:54:12'),
(442, 7, '/var/www/html/alarmhistory/cam_7_20200513062054', 'http://w3.airnetmax.net:5004/source-notif/image/442?name=20200513060229_00057-capture.jpg', 'Person', '1', 1, 0, '2020-05-12 23:20:55', '2020-05-12 23:20:56'),
(666, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/666?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 10:39:08', '2020-05-14 10:39:09'),
(463, 7, '/var/www/html/alarmhistory/cam_7_20200513081247', 'http://w3.airnetmax.net:5004/source-notif/image/463?name=20200513080342_00056-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 01:15:50', '2020-05-13 01:56:26'),
(667, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/667?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 11:33:14', '2020-05-14 11:33:15'),
(668, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/668?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 11:34:09', '2020-05-14 11:34:10'),
(502, 7, '/var/www/html/alarmhistory/cam_7_20200513113257/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/502?name=20200513113235_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 04:33:32', '2020-05-13 08:12:58'),
(669, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/669?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 11:37:34', '2020-05-14 11:37:37'),
(670, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/670?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 11:38:33', '2020-05-14 11:38:34'),
(510, 7, '/var/www/html/alarmhistory/cam_7_20200513135413/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/510?name=20200513135348_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 06:54:49', '2020-05-13 08:12:58'),
(671, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/671?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 11:44:13', '2020-05-14 11:56:42'),
(673, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/673?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 11:53:36', '2020-05-14 11:54:13'),
(511, 7, '/var/www/html/alarmhistory/cam_7_20200513135522/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/511?name=20200513135509_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 06:55:57', '2020-05-13 08:12:58'),
(674, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/674?name=20200514171349_00001-capture.jpg', 'Person', '103.10.58.46', 1, 0, '2020-05-14 11:54:55', '2020-05-14 11:54:56'),
(515, 7, '/var/www/html/alarmhistory/cam_7_20200513151658/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/515?name=20200513151637_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:17:54', '2020-05-13 08:17:54'),
(676, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/676?name=20200514171349_00001-capture.jpg', 'Person', '103.10.58.46', 1, 0, '2020-05-14 11:57:55', '2020-05-14 11:57:56'),
(678, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/678?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 11:59:52', '2020-05-14 11:59:52'),
(685, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/685?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 12:42:59', '2020-05-14 12:43:52'),
(516, 7, '/var/www/html/alarmhistory/cam_7_20200513151837/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/516?name=20200513151824_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:19:12', '2020-05-13 08:19:13'),
(687, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/687?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 12:45:55', '2020-05-14 12:47:02'),
(517, 7, '/var/www/html/alarmhistory/cam_7_20200513152458/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/517?name=20200513151824_00064-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:25:49', '2020-05-13 08:25:49'),
(689, 9, '/var/www/html/alarmhistory/cam_9_20200514195127/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/689?name=20200514195101_00034-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 12:52:00', '2020-05-14 12:52:07'),
(518, 7, '/var/www/html/alarmhistory/cam_7_20200513153331/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/518?name=20200513153309_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:34:07', '2020-05-13 08:34:08'),
(691, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/691?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 12:58:51', '2020-05-14 12:58:52'),
(692, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/692?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 12:59:07', '2020-05-14 12:59:08'),
(519, 7, '/var/www/html/alarmhistory/cam_7_20200513154455/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/519?name=20200513154443_00026-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 08:45:30', '2020-05-13 08:45:31'),
(698, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/698?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 13:16:54', '2020-05-14 13:16:55'),
(700, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/700?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 13:19:00', '2020-05-14 13:19:12'),
(520, 7, '/var/www/html/alarmhistory/cam_7_20200513155922/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/520?name=20200513155900_00025-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 08:59:57', '2020-05-13 09:00:01'),
(702, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/702?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 13:19:25', '2020-05-14 13:20:46'),
(534, 7, '/var/www/html/alarmhistory/cam_7_20200513170050/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/534?name=20200513170028_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 10:01:25', '2020-05-13 10:04:22'),
(710, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/710?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 14:32:28', '2020-05-14 14:32:36'),
(711, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/711?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-14 14:34:13', '2020-05-14 14:34:14'),
(712, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/712?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 14:34:45', '2020-05-14 14:35:20'),
(713, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/713?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 14:36:53', '2020-05-14 14:59:35'),
(715, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/715?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 14:37:25', '2020-05-14 14:41:14'),
(535, 7, '/var/www/html/alarmhistory/cam_7_20200513170240/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/535?name=20200513170226_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 10:03:15', '2020-05-13 10:04:13'),
(755, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/755?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 22:43:48', '2020-05-14 22:43:57'),
(756, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/756?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-14 22:44:10', '2020-05-14 22:44:15'),
(543, 7, '/var/www/html/alarmhistory/cam_7_20200513174530', 'http://w3.airnetmax.net:5004/source-notif/image/543?name=20200513174508_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:46:49', '2020-05-13 10:46:50'),
(759, 9, '/var/www/html/alarmhistory/cam_9_20200515062200/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/759?name=20200515062134_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 23:22:22', '2020-05-14 23:23:29'),
(544, 7, '/var/www/html/alarmhistory/cam_7_20200513175739', 'http://w3.airnetmax.net:5004/source-notif/image/544?name=20200513175718_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 10:58:37', '2020-05-13 10:58:37'),
(545, 7, '/var/www/html/alarmhistory/cam_7_20200513180157', 'http://w3.airnetmax.net:5004/source-notif/image/545?name=20200513180135_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:02:54', '2020-05-13 11:02:55'),
(764, 9, '/var/www/html/alarmhistory/cam_9_20200515065830/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515065830/objectdetected/20200515065804_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 23:58:30', '2020-05-15 07:05:08'),
(546, 7, '/var/www/html/alarmhistory/cam_7_20200513181503', 'http://w3.airnetmax.net:5004/source-notif/image/546?name=20200513181441_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:16:10', '2020-05-13 11:16:11'),
(547, 7, '/var/www/html/alarmhistory/cam_7_20200513181725', 'http://w3.airnetmax.net:5004/source-notif/image/547?name=20200513181714_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:18:23', '2020-05-13 11:18:24'),
(765, 9, '/var/www/html/alarmhistory/cam_9_20200515071149/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515071149/objectdetected/20200515071134_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 00:11:49', '2020-05-15 07:12:11'),
(548, 7, '/var/www/html/alarmhistory/cam_7_20200513181837', 'http://w3.airnetmax.net:5004/source-notif/image/548?name=20200513181826_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:19:34', '2020-05-13 11:19:35'),
(768, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/768?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 01:03:30', '2020-05-15 01:03:33'),
(549, 7, '/var/www/html/alarmhistory/cam_7_20200513182106', 'http://w3.airnetmax.net:5004/source-notif/image/549?name=20200513182044_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 11:22:03', '2020-05-13 11:22:12'),
(769, 9, '/var/www/html/alarmhistory/cam_9_20200515080959/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515080959/objectdetected/20200515080941_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 01:09:59', '2020-05-15 01:14:12'),
(550, 7, '/var/www/html/alarmhistory/cam_7_20200513182204', 'http://w3.airnetmax.net:5004/source-notif/image/550?name=20200513182150_00003-capture.jpg', 'Person', '1', 2, 0, '2020-05-13 11:23:01', '2020-05-13 11:23:10'),
(770, 9, '/var/www/html/alarmhistory/cam_9_20200515081514/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515081514/objectdetected/20200515081457_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 01:15:14', '2020-05-15 08:15:37'),
(551, 7, '/var/www/html/alarmhistory/cam_7_20200513182304', 'http://w3.airnetmax.net:5004/source-notif/image/551?name=20200513182252_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:24:02', '2020-05-13 13:04:48'),
(771, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/771?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 01:19:51', '2020-05-15 01:19:51'),
(552, 7, '/var/www/html/alarmhistory/cam_7_20200513182403', 'http://w3.airnetmax.net:5004/source-notif/image/552?name=20200513182351_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:25:00', '2020-05-13 13:04:48'),
(772, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/772?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 01:20:01', '2020-05-15 01:20:02'),
(553, 7, '/var/www/html/alarmhistory/cam_7_20200513182655', 'http://w3.airnetmax.net:5004/source-notif/image/553?name=20200513182634_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-13 11:28:55', '2020-05-13 13:04:48'),
(773, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/773?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 01:27:52', '2020-05-15 01:27:52'),
(774, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/774?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 01:28:16', '2020-05-15 01:28:17'),
(775, 9, '/var/www/html/alarmhistory/cam_9_20200515084604', 'http://w3.airnetmax.net:5004/source-notif/image/775?name=20200515084538_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 01:46:04', '2020-05-15 01:46:09'),
(562, 7, '/var/www/html/alarmhistory/cam_7_20200513222418', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513222418/20200513222304_00051-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:24:18', '2020-05-13 22:01:48'),
(564, 7, '/var/www/html/alarmhistory/cam_7_20200513222649', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513222649/20200513222637_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:26:49', '2020-05-13 22:01:48'),
(776, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/776?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 01:50:31', '2020-05-15 01:50:58'),
(777, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/777?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 01:56:16', '2020-05-15 02:00:15'),
(778, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/778?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 01:59:14', '2020-05-15 09:13:47'),
(565, 7, '/var/www/html/alarmhistory/cam_7_20200513222909', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513222909/20200513222854_00004-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:29:09', '2020-05-13 22:01:48'),
(781, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/781?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 02:56:55', '2020-05-15 02:57:13'),
(782, 9, '/var/www/html/alarmhistory/cam_9_20200515100341/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515100341/objectdetected/20200515100326_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 03:03:41', '2020-05-15 03:06:04'),
(566, 7, '/var/www/html/alarmhistory/cam_7_20200513223330', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513223330/20200513223318_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:33:30', '2020-05-13 22:01:48'),
(783, 9, '/var/www/html/alarmhistory/cam_9_20200515110002', 'http://w3.airnetmax.net:5004/source-notif/image/783?name=20200515105933_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 04:00:02', '2020-05-15 06:11:51'),
(567, 7, '/var/www/html/alarmhistory/cam_7_20200513224859', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513224859/20200513224848_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:48:59', '2020-05-13 22:01:48'),
(568, 7, '/var/www/html/alarmhistory/cam_7_20200513225216', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513225216/20200513225204_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:52:16', '2020-05-13 22:01:48'),
(785, 9, '/var/www/html/alarmhistory/cam_9_20200515121330', 'http://w3.airnetmax.net:5004/source-notif/image/785?name=20200515121314_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 05:13:30', '2020-05-15 06:11:51'),
(569, 7, '/var/www/html/alarmhistory/cam_7_20200513225504', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513225504/20200513225453_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:55:04', '2020-05-13 22:01:48'),
(787, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/787?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 06:11:31', '2020-05-15 06:11:51'),
(570, 7, '/var/www/html/alarmhistory/cam_7_20200513225714', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513225714/20200513225701_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 15:57:14', '2020-05-13 22:01:48'),
(788, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/788?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 06:29:31', '2020-05-15 06:34:12'),
(789, 9, '/var/www/html/alarmhistory/cam_9_20200515133909/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200515133909/objectdetected/20200515133842_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 06:39:09', '2020-05-15 08:48:14'),
(571, 7, '/var/www/html/alarmhistory/cam_7_20200513231349', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513231349/20200513231326_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 16:13:49', '2020-05-13 22:01:48'),
(572, 7, '/var/www/html/alarmhistory/cam_7_20200513231618', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513231618/20200513231557_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 16:16:18', '2020-05-13 22:01:48'),
(790, 9, '/var/www/html/alarmhistory/cam_9_20200515142241', 'http://w3.airnetmax.net:5004/source-notif/image/790?name=20200515142225_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 07:22:41', '2020-05-15 08:47:49'),
(573, 7, '/var/www/html/alarmhistory/cam_7_20200513232617', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513232617/20200513232551_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 16:26:17', '2020-05-13 22:01:48'),
(791, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/791?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 07:32:19', '2020-05-15 07:32:20'),
(574, 7, '/var/www/html/alarmhistory/cam_7_20200513233304', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513233304/20200513233252_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 16:33:04', '2020-05-13 22:01:48'),
(793, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/793?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 2, 0, '2020-05-15 08:47:18', '2020-05-15 08:47:40'),
(794, 9, '/var/www/html/alarmhistory/cam_9_20200514171405', 'http://w3.airnetmax.net:5004/source-notif/image/794?name=20200514171349_00001-capture.jpg', 'Motion', '103.10.58.46', 1, 0, '2020-05-15 09:13:02', '2020-05-15 09:13:46'),
(795, 9, '/var/www/html/alarmhistory/cam_9_20200515214725', 'http://w3.airnetmax.net:5004/source-notif/image/795?name=20200515214714_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 14:47:25', '2020-05-15 15:35:43'),
(575, 7, '/var/www/html/alarmhistory/cam_7_20200513233831', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200513233831/20200513233808_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 16:38:31', '2020-05-13 22:01:48'),
(576, 7, '/var/www/html/alarmhistory/cam_7_20200514003146', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514003146/20200514003129_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 17:31:46', '2020-05-13 22:01:48'),
(816, 9, '/var/www/html/alarmhistory/cam_9_20200516055939', 'http://w3.airnetmax.net:5004/source-notif/image/816?name=20200516055917_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 22:59:39', '2020-05-16 03:38:19'),
(577, 7, '/var/www/html/alarmhistory/cam_7_20200514003327', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514003327/20200514003305_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 17:33:27', '2020-05-13 22:01:48'),
(817, 9, '/var/www/html/alarmhistory/cam_9_20200516092603/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200516092603/objectdetected/20200516092540_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-16 02:26:03', '2020-05-16 03:00:07'),
(578, 7, '/var/www/html/alarmhistory/cam_7_20200514003955', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514003955/20200514003933_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 17:39:55', '2020-05-13 22:01:48'),
(579, 7, '/var/www/html/alarmhistory/cam_7_20200514010219', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514010219/20200514010207_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 18:02:19', '2020-05-13 22:01:48'),
(818, 9, '/var/www/html/alarmhistory/cam_9_20200516093117/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200516093117/objectdetected/20200516093056_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 02:31:17', '2020-05-16 03:37:17'),
(580, 7, '/var/www/html/alarmhistory/cam_7_20200514011015', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514011015/20200514010952_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 18:10:15', '2020-05-13 22:01:48'),
(581, 7, '/var/www/html/alarmhistory/cam_7_20200514014203', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514014203/20200514014147_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 18:42:03', '2020-05-13 22:01:48'),
(582, 7, '/var/www/html/alarmhistory/cam_7_20200514021907', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514021907/20200514021855_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 19:19:07', '2020-05-13 22:01:48'),
(583, 7, '/var/www/html/alarmhistory/cam_7_20200514022122', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514022122/20200514022059_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 19:21:22', '2020-05-13 22:01:48'),
(584, 7, '/var/www/html/alarmhistory/cam_7_20200514023206', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514023206/20200514023154_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 19:32:06', '2020-05-13 22:01:48'),
(585, 7, '/var/www/html/alarmhistory/cam_7_20200514025641', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514025641/20200514025619_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 19:56:41', '2020-05-13 22:01:48'),
(586, 7, '/var/www/html/alarmhistory/cam_7_20200514030211', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514030211/20200514030149_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:02:11', '2020-05-13 22:01:48'),
(587, 7, '/var/www/html/alarmhistory/cam_7_20200514030335', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514030335/20200514030149_00034-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:03:35', '2020-05-13 22:01:48'),
(588, 7, '/var/www/html/alarmhistory/cam_7_20200514030410', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514030410/20200514030149_00047-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:04:10', '2020-05-13 22:01:48'),
(589, 7, '/var/www/html/alarmhistory/cam_7_20200514030542', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514030542/20200514030531_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:05:42', '2020-05-13 22:01:48'),
(590, 7, '/var/www/html/alarmhistory/cam_7_20200514030657', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514030657/20200514030645_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:06:57', '2020-05-13 22:01:48'),
(591, 7, '/var/www/html/alarmhistory/cam_7_20200514031131', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514031131/20200514031110_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:11:31', '2020-05-13 22:01:48'),
(592, 7, '/var/www/html/alarmhistory/cam_7_20200514032826', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514032826/20200514032815_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 20:28:26', '2020-05-13 22:01:48'),
(593, 7, '/var/www/html/alarmhistory/cam_7_20200514050004', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514050004/20200514045952_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 22:00:04', '2020-05-13 22:01:49'),
(594, 7, '/var/www/html/alarmhistory/cam_7_20200514050159', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514050159/20200514050147_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 22:01:59', '2020-05-13 22:08:42'),
(600, 7, '/var/www/html/alarmhistory/cam_7_20200514052652', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514052652/20200514052625_00001-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-13 22:26:52', '2020-05-14 01:28:40'),
(602, 7, '/var/www/html/alarmhistory/cam_7_20200514055706', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514055706/20200514055654_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-13 22:57:06', '2020-05-14 00:11:48'),
(620, 7, '/var/www/html/alarmhistory/cam_7_20200514093725/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/620?name=20200514093208_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 02:37:31', '2020-05-14 02:46:21'),
(629, 7, '/var/www/html/alarmhistory/cam_7_20200514101601/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/629?name=20200514101538_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 03:16:47', '2020-05-14 07:02:31'),
(630, 7, '/var/www/html/alarmhistory/cam_7_20200514101947/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/630?name=20200514101924_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 03:20:33', '2020-05-14 07:02:31'),
(631, 7, '/var/www/html/alarmhistory/cam_7_20200514111231/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/631?name=20200514111206_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 04:13:07', '2020-05-14 07:02:31'),
(633, 7, '/var/www/html/alarmhistory/cam_7_20200514115849/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/633?name=20200514115827_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 04:59:25', '2020-05-14 07:02:31'),
(638, 7, '/var/www/html/alarmhistory/cam_7_20200514132203/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/638?name=20200514132151_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 06:22:48', '2020-05-14 07:02:31'),
(646, 7, '/var/www/html/alarmhistory/cam_7_20200514153504/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/646?name=20200514153442_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 08:35:50', '2020-05-14 09:01:35'),
(651, 7, '/var/www/html/alarmhistory/cam_7_20200514160405/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/651?name=20200514160353_00034-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 09:04:41', '2020-05-14 09:18:10'),
(659, 7, '/var/www/html/alarmhistory/cam_7_20200514163119/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/659?name=20200514163054_00034-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 09:31:56', '2020-05-14 09:34:38'),
(660, 7, '/var/www/html/alarmhistory/cam_7_20200514163248/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514163248/objectdetected/20200514163226_00034-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 09:32:48', '2020-05-14 09:34:25'),
(672, 7, '/var/www/html/alarmhistory/cam_7_20200514185123', 'http://w3.airnetmax.net:5004/source-notif/image/672?name=20200514185035_00046-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 11:53:24', '2020-05-14 11:54:13'),
(675, 7, '/var/www/html/alarmhistory/cam_7_20200514185458', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514185458/20200514185437_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 11:54:58', '2020-05-14 12:43:52'),
(677, 7, '/var/www/html/alarmhistory/cam_7_20200514185659', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514185659/20200514185643_00004-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 11:56:59', '2020-05-14 12:43:52'),
(905, 9, '/var/www/html/alarmhistory/cam_9_20200517054701', 'http://w3.airnetmax.net:5004/source-notif/image/905?name=20200517053928_00990-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 22:47:01', '2020-05-17 00:12:15'),
(911, 9, '/var/www/html/alarmhistory/cam_9_20200517073149/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/911?name=20200517073125_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-17 00:31:50', '2020-05-17 07:40:02'),
(912, 9, '/var/www/html/alarmhistory/cam_9_20200517074157/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/912?name=20200517074136_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-17 00:41:57', '2020-05-17 07:43:02'),
(913, 9, '/var/www/html/alarmhistory/cam_9_20200517075827', 'http://w3.airnetmax.net:5004/source-notif/image/913?name=20200517074136_00116-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 00:58:27', '2020-05-17 08:00:18'),
(914, 9, '/var/www/html/alarmhistory/cam_9_20200517082943', 'http://w3.airnetmax.net:5004/source-notif/image/914?name=20200517082920_00148-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 01:29:43', '2020-05-17 08:29:53'),
(915, 9, '/var/www/html/alarmhistory/cam_9_20200517083757', 'http://w3.airnetmax.net:5004/source-notif/image/915?name=20200517083730_00159-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 01:37:57', '2020-05-17 08:38:07'),
(916, 9, '/var/www/html/alarmhistory/cam_9_20200517090550/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/916?name=cam_2_20200517090548_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 02:05:50', '2020-05-17 09:07:36'),
(917, 9, '/var/www/html/alarmhistory/cam_9_20200517091214', 'http://w3.airnetmax.net:5004/source-notif/image/917?name=cam_9_20200517091212_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 02:12:14', '2020-05-17 09:13:54'),
(918, 9, '/var/www/html/alarmhistory/cam_9_20200517092753', 'http://w3.airnetmax.net:5004/source-notif/image/918?name=cam_9_20200517092752_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 02:27:53', '2020-05-17 09:29:34'),
(919, 9, '/var/www/html/alarmhistory/cam_9_20200517100320/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/919?name=cam_9_20200517100313_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-17 03:03:20', '2020-05-17 03:06:40'),
(920, 9, '/var/www/html/alarmhistory/cam_9_20200517101829', 'http://w3.airnetmax.net:5004/source-notif/image/920?name=cam_9_20200517101827_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 03:18:30', '2020-05-17 04:22:39'),
(921, 9, '/var/www/html/alarmhistory/cam_9_20200517102447', 'http://w3.airnetmax.net:5004/source-notif/image/921?name=cam_9_20200517102442_00007-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 03:24:47', '2020-05-17 10:26:50'),
(922, 9, '/var/www/html/alarmhistory/cam_9_20200517103012/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/922?name=cam_9_20200517103010_00025-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 03:30:12', '2020-05-17 10:32:00'),
(923, 9, '/var/www/html/alarmhistory/cam_9_20200517104339', 'http://w3.airnetmax.net:5004/source-notif/image/923?name=cam_9_20200517104338_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 03:43:40', '2020-05-17 03:59:39'),
(924, 9, '/var/www/html/alarmhistory/cam_9_20200517105331', 'http://w3.airnetmax.net:5004/source-notif/image/924?name=cam_9_20200517105329_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 03:53:31', '2020-05-17 10:55:22'),
(925, 9, '/var/www/html/alarmhistory/cam_9_20200517112237', 'http://w3.airnetmax.net:5004/source-notif/image/925?name=cam_9_20200517112233_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 04:22:37', '2020-05-17 11:24:18'),
(926, 9, '/var/www/html/alarmhistory/cam_9_20200517112830', 'http://w3.airnetmax.net:5004/source-notif/image/926?name=cam_9_20200517112827_00003-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 04:28:30', '2020-05-17 04:40:24'),
(927, 9, '/var/www/html/alarmhistory/cam_9_20200517155849', 'http://w3.airnetmax.net:5004/source-notif/image/927?name=cam_9_20200517155726_00143-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 08:58:49', '2020-05-17 16:01:52'),
(928, 9, '/var/www/html/alarmhistory/cam_9_20200517160350', 'http://w3.airnetmax.net:5004/source-notif/image/928?name=cam_9_20200517160234_00133-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:03:50', '2020-05-17 16:04:10'),
(929, 9, '/var/www/html/alarmhistory/cam_9_20200517160933', 'http://w3.airnetmax.net:5004/source-notif/image/929?name=cam_9_20200517160930_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:09:33', '2020-05-17 16:11:04'),
(930, 9, '/var/www/html/alarmhistory/cam_9_20200517161441/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/930?name=cam_9_20200517161439_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 09:14:41', '2020-05-17 16:16:49'),
(931, 9, '/var/www/html/alarmhistory/cam_9_20200517161942', 'http://w3.airnetmax.net:5004/source-notif/image/931?name=cam_9_20200517161836_00133-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:19:42', '2020-05-17 16:20:02'),
(932, 9, '/var/www/html/alarmhistory/cam_9_20200517162442', 'http://w3.airnetmax.net:5004/source-notif/image/932?name=cam_9_20200517162428_00026-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:24:43', '2020-05-17 16:26:04'),
(933, 9, '/var/www/html/alarmhistory/cam_9_20200517162944/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/933?name=cam_9_20200517162908_00100-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 09:29:44', '2020-05-17 16:31:55'),
(934, 9, '/var/www/html/alarmhistory/cam_9_20200517163444', 'http://w3.airnetmax.net:5004/source-notif/image/934?name=cam_9_20200517163335_00147-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:34:45', '2020-05-17 16:35:05'),
(935, 9, '/var/www/html/alarmhistory/cam_9_20200517163956', 'http://w3.airnetmax.net:5004/source-notif/image/935?name=cam_9_20200517163823_00166-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:39:56', '2020-05-17 16:41:57'),
(936, 9, '/var/www/html/alarmhistory/cam_9_20200517164508', 'http://w3.airnetmax.net:5004/source-notif/image/936?name=cam_9_20200517164506_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:45:08', '2020-05-17 16:47:19'),
(937, 9, '/var/www/html/alarmhistory/cam_9_20200517165016', 'http://w3.airnetmax.net:5004/source-notif/image/937?name=cam_9_20200517164923_00086-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:50:16', '2020-05-17 16:52:28'),
(938, 9, '/var/www/html/alarmhistory/cam_9_20200517165517', 'http://w3.airnetmax.net:5004/source-notif/image/938?name=cam_9_20200517165438_00071-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 09:55:17', '2020-05-17 16:57:29'),
(939, 9, '/var/www/html/alarmhistory/cam_9_20200517170018', 'http://w3.airnetmax.net:5004/source-notif/image/939?name=cam_9_20200517165941_00050-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 10:00:18', '2020-05-17 17:02:41'),
(940, 9, '/var/www/html/alarmhistory/cam_9_20200517170519/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/940?name=cam_9_20200517170441_00100-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 10:05:20', '2020-05-17 17:06:24'),
(941, 9, '/var/www/html/alarmhistory/cam_9_20200517171021', 'http://w3.airnetmax.net:5004/source-notif/image/941?name=cam_9_20200517170944_00073-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 10:10:21', '2020-05-17 17:12:24'),
(942, 9, '/var/www/html/alarmhistory/cam_9_20200517171521', 'http://w3.airnetmax.net:5004/source-notif/image/942?name=cam_9_20200517171343_00184-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 10:15:22', '2020-05-17 17:17:44'),
(943, 9, '/var/www/html/alarmhistory/cam_9_20200517172024', 'http://w3.airnetmax.net:5004/source-notif/image/943?name=cam_9_20200517171925_00122-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 10:20:24', '2020-05-17 17:21:02');
INSERT INTO `CCTVNotificationsArchieve` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(944, 9, '/var/www/html/alarmhistory/cam_9_20200517172525', 'http://w3.airnetmax.net:5004/source-notif/image/944?name=cam_9_20200517172521_00004-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 10:25:25', '2020-05-17 11:59:42'),
(945, 9, '/var/www/html/alarmhistory/cam_9_20200517173025', 'http://w3.airnetmax.net:5004/source-notif/image/945?name=cam_9_20200517172923_00103-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 10:30:26', '2020-05-17 12:37:52'),
(946, 9, '/var/www/html/alarmhistory/cam_9_20200517173854', 'http://w3.airnetmax.net:5004/source-notif/image/946?name=cam_9_20200517173852_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 10:38:54', '2020-05-17 17:40:36'),
(947, 9, '/var/www/html/alarmhistory/cam_9_20200517174615', 'http://w3.airnetmax.net:5004/source-notif/image/947?name=cam_9_20200517174612_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 10:46:15', '2020-05-17 12:30:57'),
(948, 9, '/var/www/html/alarmhistory/cam_9_20200517175331', 'http://w3.airnetmax.net:5004/source-notif/image/948?name=cam_9_20200517175328_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 10:53:31', '2020-05-17 17:55:13'),
(694, 7, '/var/www/html/alarmhistory/cam_7_20200514200121', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514200121/20200514200107_00001-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 13:01:21', '2020-05-14 13:03:45'),
(695, 7, '/var/www/html/alarmhistory/cam_7_20200514200506', 'http://w3.airnetmax.net:5004/source-notif/image/695?name=20200514200444_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 13:07:35', '2020-05-14 13:18:22'),
(696, 7, '/var/www/html/alarmhistory/cam_7_20200514201112', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514201112/20200514201050_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:11:12', '2020-05-14 13:18:22'),
(697, 7, '/var/www/html/alarmhistory/cam_7_20200514201244', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514201244/20200514201222_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:12:44', '2020-05-14 13:18:22'),
(699, 7, '/var/www/html/alarmhistory/cam_7_20200514201545', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514201545/20200514201523_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:15:45', '2020-05-14 13:18:23'),
(701, 7, '/var/www/html/alarmhistory/cam_7_20200514201757', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514201757/20200514201744_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:17:57', '2020-05-14 13:34:01'),
(703, 7, '/var/www/html/alarmhistory/cam_7_20200514202109', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514202109/20200514202048_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:21:09', '2020-05-14 13:34:01'),
(704, 7, '/var/www/html/alarmhistory/cam_7_20200514202251', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514202251/20200514202238_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:22:51', '2020-05-14 13:34:01'),
(705, 7, '/var/www/html/alarmhistory/cam_7_20200514202604', 'http://w3.airnetmax.net:5004/source-notif/image/705?name=20200514202552_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 13:28:36', '2020-05-14 13:34:01'),
(706, 7, '/var/www/html/alarmhistory/cam_7_20200514203028', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514203028/20200514203016_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:30:28', '2020-05-14 13:34:05'),
(707, 7, '/var/www/html/alarmhistory/cam_7_20200514203306', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514203306/20200514203244_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 13:33:06', '2020-05-14 14:32:36'),
(709, 7, '/var/www/html/alarmhistory/cam_7_20200514212656', 'http://w3.airnetmax.net:5004/source-notif/image/709?name=20200514212644_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 14:27:53', '2020-05-14 14:32:36'),
(714, 7, '/var/www/html/alarmhistory/cam_7_20200514213510', 'http://w3.airnetmax.net:5004/source-notif/image/714?name=20200514213448_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 14:37:18', '2020-05-14 14:39:43'),
(716, 7, '/var/www/html/alarmhistory/cam_7_20200514213735', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514213735/20200514213722_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 14:37:35', '2020-05-14 14:39:45'),
(717, 7, '/var/www/html/alarmhistory/cam_7_20200514213900', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514213900/20200514213848_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 14:39:00', '2020-05-14 14:41:19'),
(718, 7, '/var/www/html/alarmhistory/cam_7_20200514214042', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514214042/20200514214020_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 14:40:42', '2020-05-14 22:42:33'),
(719, 7, '/var/www/html/alarmhistory/cam_7_20200514214913', 'http://w3.airnetmax.net:5004/source-notif/image/719?name=20200514214850_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 14:51:11', '2020-05-14 14:59:28'),
(720, 7, '/var/www/html/alarmhistory/cam_7_20200514215931', 'http://w3.airnetmax.net:5004/source-notif/image/720?name=20200514215909_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:00:39', '2020-05-14 15:00:39'),
(721, 7, '/var/www/html/alarmhistory/cam_7_20200514220335', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514220335/20200514220313_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 15:03:35', '2020-05-14 22:42:33'),
(722, 7, '/var/www/html/alarmhistory/cam_7_20200514220857', 'http://w3.airnetmax.net:5004/source-notif/image/722?name=20200514220834_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:10:04', '2020-05-14 15:10:04'),
(723, 7, '/var/www/html/alarmhistory/cam_7_20200514221128', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514221128/20200514221116_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 15:11:28', '2020-05-14 22:42:33'),
(724, 7, '/var/www/html/alarmhistory/cam_7_20200514221939', 'http://w3.airnetmax.net:5004/source-notif/image/724?name=20200514221927_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:20:46', '2020-05-14 15:20:46'),
(725, 7, '/var/www/html/alarmhistory/cam_7_20200514222832', 'http://w3.airnetmax.net:5004/source-notif/image/725?name=20200514222810_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:29:30', '2020-05-14 15:29:30'),
(726, 7, '/var/www/html/alarmhistory/cam_7_20200514223950', 'http://w3.airnetmax.net:5004/source-notif/image/726?name=20200514223938_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:40:57', '2020-05-14 15:40:57'),
(727, 7, '/var/www/html/alarmhistory/cam_7_20200514224818', 'http://w3.airnetmax.net:5004/source-notif/image/727?name=20200514224756_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:49:26', '2020-05-14 15:49:26'),
(728, 7, '/var/www/html/alarmhistory/cam_7_20200514225326', 'http://w3.airnetmax.net:5004/source-notif/image/728?name=20200514225304_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 15:54:33', '2020-05-14 15:54:33'),
(729, 7, '/var/www/html/alarmhistory/cam_7_20200514230152', 'http://w3.airnetmax.net:5004/source-notif/image/729?name=20200514230130_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:02:49', '2020-05-14 16:02:49'),
(730, 7, '/var/www/html/alarmhistory/cam_7_20200514231027', 'http://w3.airnetmax.net:5004/source-notif/image/730?name=20200514231014_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:11:35', '2020-05-14 16:11:35'),
(731, 7, '/var/www/html/alarmhistory/cam_7_20200514231933', 'http://w3.airnetmax.net:5004/source-notif/image/731?name=20200514231911_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:20:51', '2020-05-14 16:20:51'),
(732, 7, '/var/www/html/alarmhistory/cam_7_20200514234045', 'http://w3.airnetmax.net:5004/source-notif/image/732?name=20200514234033_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:41:42', '2020-05-14 16:41:42'),
(733, 7, '/var/www/html/alarmhistory/cam_7_20200514234806', 'http://w3.airnetmax.net:5004/source-notif/image/733?name=20200514234754_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:49:04', '2020-05-14 16:49:04'),
(734, 7, '/var/www/html/alarmhistory/cam_7_20200514235428', 'http://w3.airnetmax.net:5004/source-notif/image/734?name=20200514235413_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 16:55:26', '2020-05-14 16:55:26'),
(735, 7, '/var/www/html/alarmhistory/cam_7_20200514235952', 'http://w3.airnetmax.net:5004/source-notif/image/735?name=20200514235928_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 17:00:59', '2020-05-14 22:42:33'),
(736, 7, '/var/www/html/alarmhistory/cam_7_20200515000817', 'http://w3.airnetmax.net:5004/source-notif/image/736?name=20200515000755_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 17:09:25', '2020-05-14 22:42:33'),
(737, 7, '/var/www/html/alarmhistory/cam_7_20200515001252', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515001252/20200515001240_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 17:12:52', '2020-05-14 22:42:33'),
(738, 7, '/var/www/html/alarmhistory/cam_7_20200515001713', 'http://w3.airnetmax.net:5004/source-notif/image/738?name=20200515001651_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 17:18:11', '2020-05-14 22:42:33'),
(739, 7, '/var/www/html/alarmhistory/cam_7_20200515003627', 'http://w3.airnetmax.net:5004/source-notif/image/739?name=20200515003615_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 17:37:24', '2020-05-14 22:42:33'),
(740, 7, '/var/www/html/alarmhistory/cam_7_20200515010415', 'http://w3.airnetmax.net:5004/source-notif/image/740?name=20200515010349_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 18:05:12', '2020-05-14 22:42:33'),
(741, 7, '/var/www/html/alarmhistory/cam_7_20200515011525', 'http://w3.airnetmax.net:5004/source-notif/image/741?name=20200515011513_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 18:16:23', '2020-05-14 22:42:33'),
(742, 7, '/var/www/html/alarmhistory/cam_7_20200515013020', 'http://w3.airnetmax.net:5004/source-notif/image/742?name=20200515012957_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 18:31:18', '2020-05-14 22:42:33'),
(743, 7, '/var/www/html/alarmhistory/cam_7_20200515014614', 'http://w3.airnetmax.net:5004/source-notif/image/743?name=20200515014602_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 18:47:12', '2020-05-14 22:42:33'),
(744, 7, '/var/www/html/alarmhistory/cam_7_20200515022333', 'http://w3.airnetmax.net:5004/source-notif/image/744?name=20200515022317_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 19:24:32', '2020-05-14 22:42:33'),
(745, 7, '/var/www/html/alarmhistory/cam_7_20200515023854', 'http://w3.airnetmax.net:5004/source-notif/image/745?name=20200515023831_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 19:39:52', '2020-05-14 22:42:33'),
(746, 7, '/var/www/html/alarmhistory/cam_7_20200515025643', 'http://w3.airnetmax.net:5004/source-notif/image/746?name=20200515025632_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 19:57:41', '2020-05-14 22:42:33'),
(747, 7, '/var/www/html/alarmhistory/cam_7_20200515031855', 'http://w3.airnetmax.net:5004/source-notif/image/747?name=20200515031843_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 20:21:35', '2020-05-14 22:42:33'),
(748, 7, '/var/www/html/alarmhistory/cam_7_20200515032436', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515032436/20200515032422_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 20:24:36', '2020-05-14 22:42:33'),
(749, 7, '/var/www/html/alarmhistory/cam_7_20200515032835', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515032835/20200515032822_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 20:28:35', '2020-05-14 22:42:33'),
(750, 7, '/var/www/html/alarmhistory/cam_7_20200515033613', 'http://w3.airnetmax.net:5004/source-notif/image/750?name=20200515033551_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 20:37:11', '2020-05-14 22:42:33'),
(751, 7, '/var/www/html/alarmhistory/cam_7_20200515034008', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515034008/20200515033956_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 20:40:08', '2020-05-14 22:42:33'),
(752, 7, '/var/www/html/alarmhistory/cam_7_20200515034242', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515034242/20200515034219_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 20:42:42', '2020-05-14 22:42:33'),
(753, 7, '/var/www/html/alarmhistory/cam_7_20200515035959', 'http://w3.airnetmax.net:5004/source-notif/image/753?name=20200515035947_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 21:01:06', '2020-05-14 22:42:33'),
(754, 7, '/var/www/html/alarmhistory/cam_7_20200515041651', 'http://w3.airnetmax.net:5004/source-notif/image/754?name=20200515041638_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 21:17:49', '2020-05-14 22:42:34'),
(757, 7, '/var/www/html/alarmhistory/cam_7_20200515055845', 'http://w3.airnetmax.net:5004/source-notif/image/757?name=20200515055822_00001-capture.jpg', 'Person', '1', 2, 0, '2020-05-14 22:59:43', '2020-05-14 23:00:00'),
(784, 7, '/var/www/html/alarmhistory/cam_7_20200515113053/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515113053/objectdetected/20200515113031_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 04:30:53', '2020-05-15 11:31:16'),
(786, 7, '/var/www/html/alarmhistory/cam_7_20200515123727/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515123727/objectdetected/20200515123715_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 05:37:27', '2020-05-15 12:37:49'),
(792, 7, '/var/www/html/alarmhistory/cam_7_20200515152935/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200515152935/objectdetected/20200515152913_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-15 08:29:35', '2020-05-15 15:29:58'),
(796, 7, '/var/www/html/alarmhistory/cam_7_20200515220256', 'http://w3.airnetmax.net:5004/source-notif/image/796?name=20200515220245_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 15:02:56', '2020-05-15 15:02:56'),
(801, 7, '/var/www/html/alarmhistory/cam_7_20200516023229', 'http://w3.airnetmax.net:5004/source-notif/image/801?name=20200516023205_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 19:32:29', '2020-05-16 06:11:47'),
(802, 7, '/var/www/html/alarmhistory/cam_7_20200516023229', 'http://w3.airnetmax.net:5004/source-notif/image/802?name=20200516023205_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-15 19:34:08', '2020-05-16 06:11:47'),
(803, 7, '/var/www/html/alarmhistory/cam_7_20200516031315', 'http://w3.airnetmax.net:5004/source-notif/image/803?name=20200516031253_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 20:13:15', '2020-05-16 06:11:47'),
(804, 7, '/var/www/html/alarmhistory/cam_7_20200516031315', 'http://w3.airnetmax.net:5004/source-notif/image/804?name=20200516031253_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-15 20:15:04', '2020-05-16 06:11:47'),
(805, 7, '/var/www/html/alarmhistory/cam_7_20200516031809', 'http://w3.airnetmax.net:5004/source-notif/image/805?name=20200516031747_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-15 20:19:48', '2020-05-16 06:11:47'),
(806, 7, '/var/www/html/alarmhistory/cam_7_20200516032903', 'http://w3.airnetmax.net:5004/source-notif/image/806?name=20200516032842_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 20:29:04', '2020-05-16 06:11:47'),
(807, 7, '/var/www/html/alarmhistory/cam_7_20200516032903', 'http://w3.airnetmax.net:5004/source-notif/image/807?name=20200516032842_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-15 20:30:52', '2020-05-16 06:11:47'),
(810, 7, '/var/www/html/alarmhistory/cam_7_20200516033446', 'http://w3.airnetmax.net:5004/source-notif/image/810?name=20200516033424_00002-capture.jpg', 'Person', '1', 1, 0, '2020-05-15 20:36:27', '2020-05-16 06:11:47'),
(812, 7, '/var/www/html/alarmhistory/cam_7_20200516034653', 'http://w3.airnetmax.net:5004/source-notif/image/812?name=20200516034632_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 20:46:53', '2020-05-16 06:11:47'),
(813, 7, '/var/www/html/alarmhistory/cam_7_20200516035640', 'http://w3.airnetmax.net:5004/source-notif/image/813?name=20200516035619_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 20:56:40', '2020-05-16 06:11:47'),
(814, 7, '/var/www/html/alarmhistory/cam_7_20200516042243', 'http://w3.airnetmax.net:5004/source-notif/image/814?name=20200516042221_00002-capture.jpg', 'Motion', '1', 1, 0, '2020-05-15 21:22:43', '2020-05-16 06:11:47'),
(815, 7, '/var/www/html/alarmhistory/cam_7_20200516055527', 'http://w3.airnetmax.net:5004/source-notif/image/815?name=20200516055502_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-15 22:55:27', '2020-05-16 06:13:41'),
(828, 7, '/var/www/html/alarmhistory/cam_7_20200516124139', 'http://w3.airnetmax.net:5004/source-notif/image/828?name=20200516121736_00213-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 05:41:39', '2020-05-16 05:41:39'),
(840, 7, '/var/www/html/alarmhistory/cam_7_20200516134102/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/840?name=20200516134040_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 06:41:02', '2020-05-16 13:41:24'),
(844, 7, '/var/www/html/alarmhistory/cam_7_20200516134912/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/844?name=20200516134850_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 06:49:13', '2020-05-16 13:49:35'),
(856, 7, '/var/www/html/alarmhistory/cam_7_20200516143950/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/856?name=20200516143927_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 07:39:50', '2020-05-16 14:40:14'),
(874, 7, '/var/www/html/alarmhistory/cam_7_20200516154503', 'http://w3.airnetmax.net:5004/source-notif/image/874?name=20200516154442_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 08:45:03', '2020-05-16 08:45:03'),
(881, 7, '/var/www/html/alarmhistory/cam_7_20200516160734/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/881?name=20200516160712_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 09:07:35', '2020-05-16 16:07:57'),
(950, 7, '/var/www/html/alarmhistory/cam_7_20200517210435', 'http://w3.airnetmax.net:5004/source-notif/image/950?name=cam_7_20200517210432_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:04:35', '2020-05-17 21:06:38'),
(952, 7, '/var/www/html/alarmhistory/cam_7_20200517210936', 'http://w3.airnetmax.net:5004/source-notif/image/952?name=cam_7_20200517210843_00114-capture.jpg', 'Motion (progress', '1', 2, 0, '2020-05-17 14:09:36', '2020-05-17 14:09:36'),
(819, 9, '/var/www/html/alarmhistory/cam_9_20200516103817/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/819?name=20200516103753_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 03:38:17', '2020-05-16 03:56:22'),
(826, 6, '/var/www/html/alarmhistory/cam_6_20200516115144', 'http://w3.airnetmax.net:5004/source-notif/image/826?name=20200516114818_00413-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 04:51:44', '2020-05-16 04:51:47'),
(829, 2, '/var/www/html/alarmhistory/cam_2_20200516125149', 'http://w3.airnetmax.net:5004/source-notif/image/829?name=DCS-930LB2020051612514803.jpg', 'Motion', '1', 2, 0, '2020-05-16 05:51:49', '2020-05-16 05:53:53'),
(679, 7, '/var/www/html/alarmhistory/cam_7_20200514190456', 'http://w3.airnetmax.net:5004/source-notif/image/679?name=20200514190435_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 12:06:14', '2020-05-14 12:43:52'),
(680, 7, '/var/www/html/alarmhistory/cam_7_20200514191024', 'http://w3.airnetmax.net:5004/source-notif/image/680?name=20200514191003_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 12:11:33', '2020-05-14 12:43:52'),
(830, 2, '/var/www/html/alarmhistory/cam_2_20200516125717', 'http://w3.airnetmax.net:5004/source-notif/image/830?name=DCS-930LB2020051612571701.jpg', 'Motion', '1', 2, 0, '2020-05-16 05:57:17', '2020-05-16 05:57:21'),
(681, 7, '/var/www/html/alarmhistory/cam_7_20200514191326', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514191326/20200514191303_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 12:13:26', '2020-05-14 12:43:52'),
(827, 6, '/var/www/html/alarmhistory/cam_6_20200516124139', 'http://w3.airnetmax.net:5004/source-notif/image/827?name=20200516123750_00045-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 05:41:39', '2020-05-16 05:43:13'),
(682, 7, '/var/www/html/alarmhistory/cam_7_20200514191710', 'http://w3.airnetmax.net:5004/source-notif/image/682?name=20200514191648_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 12:19:15', '2020-05-14 12:43:52'),
(820, 9, '/var/www/html/alarmhistory/cam_9_20200516105305', 'http://w3.airnetmax.net:5004/source-notif/image/820?name=20200516105245_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 03:53:05', '2020-05-16 03:55:31'),
(683, 7, '/var/www/html/alarmhistory/cam_7_20200514191959', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514191959/20200514191937_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 12:19:59', '2020-05-14 12:43:52'),
(831, 2, '/var/www/html/alarmhistory/cam_2_20200516130302', 'http://w3.airnetmax.net:5004/source-notif/image/831?name=DCS-930LB2020051613030102.jpg', 'Motion', '1', 2, 0, '2020-05-16 06:03:02', '2020-05-16 06:07:23'),
(821, 9, '/var/www/html/alarmhistory/cam_9_20200516110305/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/821?name=20200516110244_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 04:03:05', '2020-05-16 04:12:59'),
(684, 7, '/var/www/html/alarmhistory/cam_7_20200514194150', 'http://w3.airnetmax.net:5004/source-notif/image/684?name=20200514194138_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 12:42:48', '2020-05-14 12:43:52'),
(832, 2, '/var/www/html/alarmhistory/cam_2_20200516131237', 'http://w3.airnetmax.net:5004/source-notif/image/832?name=DCS-930LB2020051613123701.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:12:37', '2020-05-16 06:12:38'),
(686, 7, '/var/www/html/alarmhistory/cam_7_20200514194334', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514194334/20200514194312_00001-capture.jpg', 'person', 'w3.airnetmax.net', 2, 0, '2020-05-14 12:43:34', '2020-05-14 12:46:38'),
(834, 2, '/var/www/html/alarmhistory/cam_2_20200516131811', 'http://w3.airnetmax.net:5004/source-notif/image/834?name=DCS-930LB2020051613181102.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:18:11', '2020-05-16 06:18:12'),
(823, 9, '/var/www/html/alarmhistory/cam_9_20200516112046/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200516112046/objectdetected/20200516112025_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-16 04:20:46', '2020-05-16 11:21:09'),
(688, 7, '/var/www/html/alarmhistory/cam_7_20200514194757', 'http://w3.airnetmax.net:5004/source-notif/image/688?name=20200514194733_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 12:48:55', '2020-05-14 12:52:08'),
(836, 6, '/var/www/html/alarmhistory/cam_6_20200516132623', 'http://w3.airnetmax.net:5004/source-notif/image/836?name=20200516132547_00011-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:26:23', '2020-05-16 06:26:24'),
(835, 2, '/var/www/html/alarmhistory/cam_2_20200516132439', 'http://w3.airnetmax.net:5004/source-notif/image/835?name=DCS-930LB2020051613243901.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:24:40', '2020-05-16 06:24:40'),
(690, 7, '/var/www/html/alarmhistory/cam_7_20200514195255', 'http://w3.airnetmax.net/alarmhistory/cam_7_20200514195255/20200514195233_00001-capture.jpg', 'person', 'w3.airnetmax.net', 1, 0, '2020-05-14 12:52:55', '2020-05-14 13:03:24'),
(838, 6, '/var/www/html/alarmhistory/cam_6_20200516133801/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/838?name=20200516133700_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-16 06:38:01', '2020-05-16 13:38:06'),
(824, 9, '/var/www/html/alarmhistory/cam_9_20200516113431/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200516113431/objectdetected/20200516113404_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 04:34:32', '2020-05-16 04:38:50'),
(693, 7, '/var/www/html/alarmhistory/cam_7_20200514195911', 'http://w3.airnetmax.net:5004/source-notif/image/693?name=20200514195859_00001-capture.jpg', 'Person', '1', 1, 0, '2020-05-14 13:01:20', '2020-05-14 13:03:24'),
(842, 6, '/var/www/html/alarmhistory/cam_6_20200516134733', 'http://w3.airnetmax.net:5004/source-notif/image/842?name=20200516134712_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 06:47:33', '2020-05-16 06:48:08'),
(837, 2, '/var/www/html/alarmhistory/cam_2_20200516133056/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/837?name=DCS-930LB2020051613264601.jpg', 'Person', '1', 1, 0, '2020-05-16 06:30:56', '2020-05-16 13:34:41'),
(849, 6, '/var/www/html/alarmhistory/cam_6_20200516141432', 'http://w3.airnetmax.net:5004/source-notif/image/849?name=20200516141411_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:14:32', '2020-05-16 07:20:12'),
(825, 9, '/var/www/html/alarmhistory/cam_9_20200516114850/objectdetected', 'http://w3.airnetmax.net/alarmhistory/cam_9_20200516114850/objectdetected/20200516113718_00102-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 04:48:51', '2020-05-16 04:49:04'),
(855, 6, '/var/www/html/alarmhistory/cam_6_20200516143928', 'http://w3.airnetmax.net:5004/source-notif/image/855?name=20200516143907_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:39:28', '2020-05-16 07:39:30'),
(862, 6, '/var/www/html/alarmhistory/cam_6_20200516150914', 'http://w3.airnetmax.net:5004/source-notif/image/862?name=20200516150853_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:09:14', '2020-05-16 08:41:07'),
(865, 6, '/var/www/html/alarmhistory/cam_6_20200516152135', 'http://w3.airnetmax.net:5004/source-notif/image/865?name=20200516152115_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:21:36', '2020-05-16 08:41:07'),
(833, 9, '/var/www/html/alarmhistory/cam_9_20200516131802', 'http://w3.airnetmax.net:5004/source-notif/image/833?name=20200516131740_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 06:18:02', '2020-05-17 13:26:22'),
(868, 6, '/var/www/html/alarmhistory/cam_6_20200516153124', 'http://w3.airnetmax.net:5004/source-notif/image/868?name=20200516153102_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:31:24', '2020-05-16 08:41:07'),
(870, 6, '/var/www/html/alarmhistory/cam_6_20200516153753', 'http://w3.airnetmax.net:5004/source-notif/image/870?name=20200516153733_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 08:37:53', '2020-05-16 08:41:57'),
(839, 2, '/var/www/html/alarmhistory/cam_2_20200516133801', 'http://w3.airnetmax.net:5004/source-notif/image/839?name=DCS-930LB2020051613380101.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:38:01', '2020-05-16 06:38:02'),
(873, 6, '/var/www/html/alarmhistory/cam_6_20200516154421/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/873?name=20200516154350_00024-capture.jpg', 'Person', '1', 1, 0, '2020-05-16 08:44:21', '2020-05-16 15:44:44'),
(872, 9, '/var/www/html/alarmhistory/cam_9_20200516154353/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/872?name=20200516154332_00024-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 08:43:53', '2020-05-16 15:44:16'),
(876, 6, '/var/www/html/alarmhistory/cam_6_20200516154953', 'http://w3.airnetmax.net:5004/source-notif/image/876?name=20200516154937_00009-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:49:53', '2020-05-16 09:16:21'),
(888, 9, '/var/www/html/alarmhistory/cam_9_20200516163454/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/888?name=20200516163433_00025-capture.jpg', 'Person', '1', 2, 0, '2020-05-16 09:34:55', '2020-05-16 09:39:16'),
(841, 2, '/var/www/html/alarmhistory/cam_2_20200516134309', 'http://w3.airnetmax.net:5004/source-notif/image/841?name=DCS-930LB2020051613430901.jpg', 'Motion', '1', 2, 0, '2020-05-16 06:43:09', '2020-05-16 06:43:19'),
(880, 6, '/var/www/html/alarmhistory/cam_6_20200516160716', 'http://w3.airnetmax.net:5004/source-notif/image/880?name=20200516160652_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:07:17', '2020-05-16 09:16:21'),
(883, 6, '/var/www/html/alarmhistory/cam_6_20200516161455', 'http://w3.airnetmax.net:5004/source-notif/image/883?name=20200516161338_00085-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:14:56', '2020-05-16 09:16:23'),
(843, 2, '/var/www/html/alarmhistory/cam_2_20200516134906', 'http://w3.airnetmax.net:5004/source-notif/image/843?name=DCS-930LB2020051613490602.jpg', 'Motion', '1', 2, 0, '2020-05-16 06:49:06', '2020-05-16 06:49:10'),
(891, 6, '/var/www/html/alarmhistory/cam_6_20200516164822', 'http://w3.airnetmax.net:5004/source-notif/image/891?name=20200516164617_00050-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 09:48:22', '2020-05-16 09:48:25'),
(893, 6, '/var/www/html/alarmhistory/cam_6_20200516171007', 'http://w3.airnetmax.net:5004/source-notif/image/893?name=20200516170010_00045-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 10:10:07', '2020-05-16 10:10:23'),
(845, 2, '/var/www/html/alarmhistory/cam_2_20200516135457', 'http://w3.airnetmax.net:5004/source-notif/image/845?name=DCS-930LB2020051613545504.jpg', 'Motion', '1', 1, 0, '2020-05-16 06:54:57', '2020-05-16 07:20:12'),
(846, 2, '/var/www/html/alarmhistory/cam_2_20200516140034', 'http://w3.airnetmax.net:5004/source-notif/image/846?name=DCS-930LB2020051614003403.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:00:34', '2020-05-16 07:20:12'),
(847, 2, '/var/www/html/alarmhistory/cam_2_20200516140606', 'http://w3.airnetmax.net:5004/source-notif/image/847?name=DCS-930LB2020051614060505.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:06:06', '2020-05-16 07:20:12'),
(848, 2, '/var/www/html/alarmhistory/cam_2_20200516141144', 'http://w3.airnetmax.net:5004/source-notif/image/848?name=DCS-930LB2020051614114402.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:11:44', '2020-05-16 07:20:12'),
(850, 2, '/var/www/html/alarmhistory/cam_2_20200516141651', 'http://w3.airnetmax.net:5004/source-notif/image/850?name=DCS-930LB2020051614165102.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:16:51', '2020-05-16 07:20:14'),
(851, 2, '/var/www/html/alarmhistory/cam_2_20200516142228', 'http://w3.airnetmax.net:5004/source-notif/image/851?name=DCS-930LB2020051614222802.jpg', 'Motion', '1', 2, 0, '2020-05-16 07:22:29', '2020-05-17 12:32:21'),
(852, 2, '/var/www/html/alarmhistory/cam_2_20200516142808', 'http://w3.airnetmax.net:5004/source-notif/image/852?name=DCS-930LB2020051614280802.jpg', 'Motion', '1', 2, 0, '2020-05-16 07:28:08', '2020-05-17 12:33:44'),
(853, 2, '/var/www/html/alarmhistory/cam_2_20200516143345', 'http://w3.airnetmax.net:5004/source-notif/image/853?name=DCS-930LB2020051614334501.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:33:45', '2020-05-16 07:39:45'),
(854, 2, '/var/www/html/alarmhistory/cam_2_20200516143921', 'http://w3.airnetmax.net:5004/source-notif/image/854?name=DCS-930LB2020051614392103.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:39:22', '2020-05-16 07:39:47'),
(857, 2, '/var/www/html/alarmhistory/cam_2_20200516144514', 'http://w3.airnetmax.net:5004/source-notif/image/857?name=DCS-930LB2020051614451402.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:45:14', '2020-05-16 08:41:07'),
(858, 2, '/var/www/html/alarmhistory/cam_2_20200516145051', 'http://w3.airnetmax.net:5004/source-notif/image/858?name=DCS-930LB2020051614505103.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:50:51', '2020-05-16 08:41:07'),
(859, 2, '/var/www/html/alarmhistory/cam_2_20200516145628', 'http://w3.airnetmax.net:5004/source-notif/image/859?name=DCS-930LB2020051614562704.jpg', 'Motion', '1', 1, 0, '2020-05-16 07:56:28', '2020-05-16 08:41:07'),
(860, 2, '/var/www/html/alarmhistory/cam_2_20200516150205', 'http://w3.airnetmax.net:5004/source-notif/image/860?name=DCS-930LB2020051615020501.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:02:05', '2020-05-16 08:41:07'),
(861, 2, '/var/www/html/alarmhistory/cam_2_20200516150742', 'http://w3.airnetmax.net:5004/source-notif/image/861?name=DCS-930LB2020051615074202.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:07:43', '2020-05-16 08:41:07'),
(863, 2, '/var/www/html/alarmhistory/cam_2_20200516151412', 'http://w3.airnetmax.net:5004/source-notif/image/863?name=DCS-930LB2020051615141102.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:14:12', '2020-05-16 08:41:07'),
(864, 2, '/var/www/html/alarmhistory/cam_2_20200516151957', 'http://w3.airnetmax.net:5004/source-notif/image/864?name=DCS-930LB2020051615195702.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:19:57', '2020-05-16 08:41:07'),
(866, 2, '/var/www/html/alarmhistory/cam_2_20200516152535', 'http://w3.airnetmax.net:5004/source-notif/image/866?name=DCS-930LB2020051615253501.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:25:35', '2020-05-16 08:41:07'),
(867, 2, '/var/www/html/alarmhistory/cam_2_20200516153111', 'http://w3.airnetmax.net:5004/source-notif/image/867?name=DCS-930LB2020051615311004.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:31:11', '2020-05-16 08:41:07'),
(869, 2, '/var/www/html/alarmhistory/cam_2_20200516153647', 'http://w3.airnetmax.net:5004/source-notif/image/869?name=DCS-930LB2020051615364703.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:36:47', '2020-05-16 08:41:07'),
(871, 2, '/var/www/html/alarmhistory/cam_2_20200516154231', 'http://w3.airnetmax.net:5004/source-notif/image/871?name=DCS-930LB2020051615423004.jpg', 'Motion', '1', 2, 0, '2020-05-16 08:42:31', '2020-05-16 21:30:23'),
(875, 2, '/var/www/html/alarmhistory/cam_2_20200516154816/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/875?name=DCS-930LB2020051615480801.jpg', 'Person', '1', 1, 0, '2020-05-16 08:48:16', '2020-05-16 09:16:21'),
(877, 2, '/var/www/html/alarmhistory/cam_2_20200516155352', 'http://w3.airnetmax.net:5004/source-notif/image/877?name=DCS-930LB2020051615535104.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:53:52', '2020-05-16 09:16:21'),
(878, 2, '/var/www/html/alarmhistory/cam_2_20200516155944', 'http://w3.airnetmax.net:5004/source-notif/image/878?name=DCS-930LB2020051615594402.jpg', 'Motion', '1', 1, 0, '2020-05-16 08:59:44', '2020-05-16 09:16:21'),
(879, 2, '/var/www/html/alarmhistory/cam_2_20200516160527', 'http://w3.airnetmax.net:5004/source-notif/image/879?name=DCS-930LB2020051616052703.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:05:27', '2020-05-16 09:16:21'),
(882, 2, '/var/www/html/alarmhistory/cam_2_20200516161112/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/882?name=DCS-930LB2020051616110205.jpg', 'Person', '1', 1, 0, '2020-05-16 09:11:12', '2020-05-16 09:16:21'),
(884, 2, '/var/www/html/alarmhistory/cam_2_20200516161630', 'http://w3.airnetmax.net:5004/source-notif/image/884?name=DCS-930LB2020051616162902.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:16:30', '2020-05-16 09:22:05'),
(885, 2, '/var/www/html/alarmhistory/cam_2_20200516162217', 'http://w3.airnetmax.net:5004/source-notif/image/885?name=DCS-930LB2020051616221701.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:22:17', '2020-05-16 09:29:18'),
(886, 2, '/var/www/html/alarmhistory/cam_2_20200516162751', 'http://w3.airnetmax.net:5004/source-notif/image/886?name=DCS-930LB2020051616275005.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:27:51', '2020-05-16 09:29:18'),
(887, 2, '/var/www/html/alarmhistory/cam_2_20200516163330', 'http://w3.airnetmax.net:5004/source-notif/image/887?name=DCS-930LB2020051616332904.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:33:30', '2020-05-16 09:35:17'),
(889, 2, '/var/www/html/alarmhistory/cam_2_20200516163908', 'http://w3.airnetmax.net:5004/source-notif/image/889?name=DCS-930LB2020051616390801.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:39:08', '2020-05-16 09:54:25'),
(890, 2, '/var/www/html/alarmhistory/cam_2_20200516164822', 'http://w3.airnetmax.net:5004/source-notif/image/890?name=DCS-930LB2020051616482202.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:48:22', '2020-05-16 09:54:25'),
(892, 2, '/var/www/html/alarmhistory/cam_2_20200516165413', 'http://w3.airnetmax.net:5004/source-notif/image/892?name=DCS-930LB2020051616541204.jpg', 'Motion', '1', 1, 0, '2020-05-16 09:54:13', '2020-05-16 09:54:27'),
(894, 2, '/var/www/html/alarmhistory/cam_2_20200516171007', 'http://w3.airnetmax.net:5004/source-notif/image/894?name=DCS-930LB2020051617100005.jpg', 'Motion', '1', 2, 0, '2020-05-16 10:10:07', '2020-05-16 10:23:31'),
(895, 2, '/var/www/html/alarmhistory/cam_2_20200516211615', 'http://w3.airnetmax.net:5004/source-notif/image/895?name=DCS-930LB2020051621161403.jpg', 'Motion', '1', 2, 0, '2020-05-16 14:16:15', '2020-05-16 14:18:57'),
(953, 7, '/var/www/html/alarmhistory/cam_7_20200517212035', 'http://w3.airnetmax.net:5004/source-notif/image/953?name=cam_7_20200517211839_00219-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:20:35', '2020-05-17 21:21:08'),
(896, 3, '/var/www/html/alarmhistory/cam_3_20200517043022', 'http://w3.airnetmax.net:5004/source-notif/image/896?name=20200517042901_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-16 21:30:22', '2020-05-16 21:30:23'),
(903, 9, '/var/www/html/alarmhistory/cam_9_20200517053944', 'http://w3.airnetmax.net:5004/source-notif/image/903?name=20200517053928_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 22:39:44', '2020-05-16 22:39:49'),
(904, 2, '/var/www/html/alarmhistory/cam_2_20200517054257', 'http://w3.airnetmax.net:5004/source-notif/image/904?name=DCS-930LB2020051705425603.jpg', 'Motion', '1', 1, 0, '2020-05-16 22:42:57', '2020-05-16 23:14:21'),
(897, 3, '/var/www/html/alarmhistory/cam_3_20200517043636', 'http://w3.airnetmax.net:5004/source-notif/image/897?name=20200517042901_00432-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 21:36:36', '2020-05-16 21:36:43'),
(906, 2, '/var/www/html/alarmhistory/cam_2_20200517054821', 'http://w3.airnetmax.net:5004/source-notif/image/906?name=DCS-930LB2020051705482005.jpg', 'Motion', '1', 1, 0, '2020-05-16 22:48:21', '2020-05-16 23:14:21'),
(949, 9, '/var/www/html/alarmhistory/cam_9_20200517205128', 'http://w3.airnetmax.net:5004/source-notif/image/949?name=cam_9_20200517205127_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 13:51:28', '2020-05-17 14:04:55'),
(898, 3, '/var/www/html/alarmhistory/cam_3_20200517044509', 'http://w3.airnetmax.net:5004/source-notif/image/898?name=20200517042901_00866-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 21:45:09', '2020-05-17 05:13:59'),
(951, 9, '/var/www/html/alarmhistory/cam_9_20200517210459', 'http://w3.airnetmax.net:5004/source-notif/image/951?name=cam_9_20200517210458_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:04:59', '2020-05-17 14:12:51'),
(954, 7, '/var/www/html/alarmhistory/cam_7_20200517212703', 'http://w3.airnetmax.net:5004/source-notif/image/954?name=cam_7_20200517212702_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:27:03', '2020-05-17 21:29:04'),
(907, 2, '/var/www/html/alarmhistory/cam_2_20200517055351', 'http://w3.airnetmax.net:5004/source-notif/image/907?name=DCS-930LB2020051705535102.jpg', 'Motion', '1', 1, 0, '2020-05-16 22:53:51', '2020-05-16 23:14:21'),
(899, 3, '/var/www/html/alarmhistory/cam_3_20200517050154', 'http://w3.airnetmax.net:5004/source-notif/image/899?name=20200517042901_00910-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 22:01:54', '2020-05-16 22:02:00'),
(955, 9, '/var/www/html/alarmhistory/cam_9_20200517213217', 'http://w3.airnetmax.net:5004/source-notif/image/955?name=cam_9_20200517213215_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:32:17', '2020-05-17 14:35:09'),
(957, 9, '/var/www/html/alarmhistory/cam_9_20200517213718/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/957?name=cam_9_20200517213235_00573-capture.jpg', 'Person', '1', 2, 0, '2020-05-17 14:37:19', '2020-05-17 14:44:49'),
(908, 2, '/var/www/html/alarmhistory/cam_2_20200517055944', 'http://w3.airnetmax.net:5004/source-notif/image/908?name=DCS-930LB2020051705594401.jpg', 'Motion', '1', 2, 0, '2020-05-16 22:59:44', '2020-05-17 00:31:50'),
(956, 7, '/var/www/html/alarmhistory/cam_7_20200517213221', 'http://w3.airnetmax.net:5004/source-notif/image/956?name=cam_7_20200517213221_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:32:21', '2020-05-17 21:34:25'),
(902, 3, '/var/www/html/alarmhistory/cam_3_20200517053109', 'http://w3.airnetmax.net:5004/source-notif/image/902?name=20200517042901_02273-capture.jpg', 'Motion', '1', 2, 0, '2020-05-16 22:31:09', '2020-05-16 22:36:11'),
(958, 7, '/var/www/html/alarmhistory/cam_7_20200517213722', 'http://w3.airnetmax.net:5004/source-notif/image/958?name=cam_7_20200517213547_00175-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:37:22', '2020-05-17 21:39:35'),
(909, 2, '/var/www/html/alarmhistory/cam_2_20200517061503', 'http://w3.airnetmax.net:5004/source-notif/image/909?name=DCS-930LB2020051706150302.jpg', 'Motion', '1', 2, 0, '2020-05-16 23:15:03', '2020-05-16 23:23:43'),
(961, 9, '/var/www/html/alarmhistory/cam_9_20200517215535', 'http://w3.airnetmax.net:5004/source-notif/image/961?name=cam_9_20200517215534_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:55:35', '2020-05-17 21:57:34'),
(959, 7, '/var/www/html/alarmhistory/cam_7_20200517214223', 'http://w3.airnetmax.net:5004/source-notif/image/959?name=cam_7_20200517214221_00003-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:42:23', '2020-05-17 21:44:25'),
(963, 9, '/var/www/html/alarmhistory/cam_9_20200517220036', 'http://w3.airnetmax.net:5004/source-notif/image/963?name=cam_9_20200517215534_00571-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:00:37', '2020-05-17 15:02:57'),
(960, 7, '/var/www/html/alarmhistory/cam_7_20200517215301', 'http://w3.airnetmax.net:5004/source-notif/image/960?name=cam_7_20200517215257_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:53:01', '2020-05-17 21:55:03'),
(965, 9, '/var/www/html/alarmhistory/cam_9_20200517220538', 'http://w3.airnetmax.net:5004/source-notif/image/965?name=cam_9_20200517215534_01238-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:05:38', '2020-05-17 22:06:59'),
(962, 7, '/var/www/html/alarmhistory/cam_7_20200517215801', 'http://w3.airnetmax.net:5004/source-notif/image/962?name=cam_7_20200517215613_00202-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 14:58:02', '2020-05-17 21:58:22'),
(967, 9, '/var/www/html/alarmhistory/cam_9_20200517221039', 'http://w3.airnetmax.net:5004/source-notif/image/967?name=cam_9_20200517215534_01888-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:10:39', '2020-05-17 22:11:40'),
(964, 7, '/var/www/html/alarmhistory/cam_7_20200517220303', 'http://w3.airnetmax.net:5004/source-notif/image/964?name=cam_7_20200517220147_00143-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:03:03', '2020-05-17 22:03:54'),
(968, 9, '/var/www/html/alarmhistory/cam_9_20200517221540', 'http://w3.airnetmax.net:5004/source-notif/image/968?name=cam_9_20200517215534_02560-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 15:15:41', '2020-05-17 15:31:34'),
(966, 7, '/var/www/html/alarmhistory/cam_7_20200517220913', 'http://w3.airnetmax.net:5004/source-notif/image/966?name=cam_7_20200517220912_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:09:13', '2020-05-17 22:10:25'),
(969, 9, '/var/www/html/alarmhistory/cam_9_20200517222042', 'http://w3.airnetmax.net:5004/source-notif/image/969?name=cam_9_20200517215534_03260-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:20:42', '2020-05-17 15:32:27'),
(971, 7, '/var/www/html/alarmhistory/cam_7_20200517222947', 'http://w3.airnetmax.net:5004/source-notif/image/971?name=cam_7_20200517222946_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:29:47', '2020-05-17 22:31:01'),
(970, 9, '/var/www/html/alarmhistory/cam_9_20200517222544', 'http://w3.airnetmax.net:5004/source-notif/image/970?name=cam_9_20200517215534_03956-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:25:44', '2020-05-17 15:31:48'),
(973, 7, '/var/www/html/alarmhistory/cam_7_20200517225147', 'http://w3.airnetmax.net:5004/source-notif/image/973?name=cam_7_20200517225147_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:51:47', '2020-05-17 22:52:58'),
(974, 7, '/var/www/html/alarmhistory/cam_7_20200517225648', 'http://w3.airnetmax.net:5004/source-notif/image/974?name=cam_7_20200517225540_00161-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 15:56:48', '2020-05-17 22:57:27'),
(972, 9, '/var/www/html/alarmhistory/cam_9_20200517223045', 'http://w3.airnetmax.net:5004/source-notif/image/972?name=cam_9_20200517215534_04598-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 15:30:46', '2020-05-17 22:31:47'),
(975, 7, '/var/www/html/alarmhistory/cam_7_20200517230552', 'http://w3.airnetmax.net:5004/source-notif/image/975?name=cam_7_20200517230551_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 16:05:52', '2020-05-17 23:07:03'),
(978, 9, '/var/www/html/alarmhistory/cam_9_20200517234113', 'http://w3.airnetmax.net:5004/source-notif/image/978?name=cam_9_20200517234112_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 16:41:13', '2020-05-17 20:00:01'),
(976, 7, '/var/www/html/alarmhistory/cam_7_20200517231601', 'http://w3.airnetmax.net:5004/source-notif/image/976?name=cam_7_20200517231600_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 16:16:01', '2020-05-17 23:17:12'),
(977, 7, '/var/www/html/alarmhistory/cam_7_20200517233759', 'http://w3.airnetmax.net:5004/source-notif/image/977?name=cam_7_20200517233757_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 16:37:59', '2020-05-17 23:39:10'),
(910, 2, '/var/www/html/alarmhistory/cam_2_20200517062219', 'http://w3.airnetmax.net:5004/source-notif/image/910?name=DCS-930LB2020051706181804.jpg', 'Motion', '1', 2, 0, '2020-05-16 23:22:20', '2020-05-16 23:23:09'),
(979, 7, '/var/www/html/alarmhistory/cam_7_20200517234300', 'http://w3.airnetmax.net:5004/source-notif/image/979?name=cam_7_20200517234152_00130-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 16:43:00', '2020-05-17 23:43:50'),
(980, 7, '/var/www/html/alarmhistory/cam_7_20200517234820', 'http://w3.airnetmax.net:5004/source-notif/image/980?name=cam_7_20200517234818_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 16:48:20', '2020-05-17 23:49:30'),
(981, 7, '/var/www/html/alarmhistory/cam_7_20200518001640', 'http://w3.airnetmax.net:5004/source-notif/image/981?name=cam_7_20200518001636_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 17:16:40', '2020-05-17 20:00:01'),
(982, 7, '/var/www/html/alarmhistory/cam_7_20200518002141', 'http://w3.airnetmax.net:5004/source-notif/image/982?name=cam_7_20200518001957_00208-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 17:21:41', '2020-05-17 20:00:01'),
(983, 7, '/var/www/html/alarmhistory/cam_7_20200518004722', 'http://w3.airnetmax.net:5004/source-notif/image/983?name=cam_7_20200518004721_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 17:47:23', '2020-05-17 20:00:01'),
(984, 7, '/var/www/html/alarmhistory/cam_7_20200518015645', 'http://w3.airnetmax.net:5004/source-notif/image/984?name=cam_7_20200518015642_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 18:56:45', '2020-05-17 20:00:01'),
(985, 7, '/var/www/html/alarmhistory/cam_7_20200518020615', 'http://w3.airnetmax.net:5004/source-notif/image/985?name=cam_7_20200518020614_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 19:06:15', '2020-05-17 20:00:01'),
(986, 7, '/var/www/html/alarmhistory/cam_7_20200518022353', 'http://w3.airnetmax.net:5004/source-notif/image/986?name=cam_7_20200518022352_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 19:23:53', '2020-05-17 20:00:01'),
(989, 9, '/var/www/html/alarmhistory/cam_9_20200518025810', 'http://w3.airnetmax.net:5004/source-notif/image/989?name=cam_9_20200518025807_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 19:58:10', '2020-05-17 20:00:11'),
(987, 7, '/var/www/html/alarmhistory/cam_7_20200518024023', 'http://w3.airnetmax.net:5004/source-notif/image/987?name=cam_7_20200518022352_00088-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 19:40:23', '2020-05-17 20:05:12'),
(990, 9, '/var/www/html/alarmhistory/cam_9_20200518030311', 'http://w3.airnetmax.net:5004/source-notif/image/990?name=cam_9_20200518025807_00660-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:03:11', '2020-05-17 20:05:29'),
(988, 7, '/var/www/html/alarmhistory/cam_7_20200518024937', 'http://w3.airnetmax.net:5004/source-notif/image/988?name=cam_7_20200518024936_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 19:49:37', '2020-05-17 20:00:48'),
(992, 9, '/var/www/html/alarmhistory/cam_9_20200518030812', 'http://w3.airnetmax.net:5004/source-notif/image/992?name=cam_9_20200518025807_01325-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:08:12', '2020-05-17 20:14:08'),
(991, 7, '/var/www/html/alarmhistory/cam_7_20200518030316', 'http://w3.airnetmax.net:5004/source-notif/image/991?name=cam_7_20200518030315_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:03:16', '2020-05-17 20:12:44'),
(994, 9, '/var/www/html/alarmhistory/cam_9_20200518031313/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/994?name=cam_9_20200518031030_00404-capture.jpg', 'Person', '1', 2, 0, '2020-05-17 20:13:13', '2020-05-18 03:14:08'),
(993, 7, '/var/www/html/alarmhistory/cam_7_20200518030939', 'http://w3.airnetmax.net:5004/source-notif/image/993?name=cam_7_20200518030938_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:09:39', '2020-05-17 20:12:39'),
(997, 7, '/var/www/html/alarmhistory/cam_7_20200518032751', 'http://w3.airnetmax.net:5004/source-notif/image/997?name=cam_7_20200518031135_00079-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 20:27:51', '2020-05-18 03:28:52'),
(995, 9, '/var/www/html/alarmhistory/cam_9_20200518031814', 'http://w3.airnetmax.net:5004/source-notif/image/995?name=cam_9_20200518031030_01090-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:18:14', '2020-05-17 21:46:44'),
(996, 9, '/var/www/html/alarmhistory/cam_9_20200518032314', 'http://w3.airnetmax.net:5004/source-notif/image/996?name=cam_9_20200518031030_01779-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:23:15', '2020-05-17 21:58:26'),
(998, 7, '/var/www/html/alarmhistory/cam_7_20200518033252', 'http://w3.airnetmax.net:5004/source-notif/image/998?name=cam_7_20200518033229_00055-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:32:52', '2020-05-17 20:35:08'),
(1003, 9, '/var/www/html/alarmhistory/cam_9_20200518053241', 'http://w3.airnetmax.net:5004/source-notif/image/1003?name=cam_9_20200518053236_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:32:41', '2020-05-17 22:51:14');
INSERT INTO `CCTVNotificationsArchieve` (`id`, `CCTVId`, `sourcePath`, `lastImage`, `objectDetected`, `ipServer`, `status`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(999, 7, '/var/www/html/alarmhistory/cam_7_20200518033958', 'http://w3.airnetmax.net:5004/source-notif/image/999?name=cam_7_20200518033957_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 20:39:58', '2020-05-18 03:41:11'),
(1004, 9, '/var/www/html/alarmhistory/cam_9_20200518053743', 'http://w3.airnetmax.net:5004/source-notif/image/1004?name=cam_9_20200518053252_00637-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:37:43', '2020-05-17 22:51:14'),
(1000, 7, '/var/www/html/alarmhistory/cam_7_20200518034459', 'http://w3.airnetmax.net:5004/source-notif/image/1000?name=cam_7_20200518034430_00043-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 20:44:59', '2020-05-18 03:46:01'),
(1006, 9, '/var/www/html/alarmhistory/cam_9_20200518054244', 'http://w3.airnetmax.net:5004/source-notif/image/1006?name=cam_9_20200518053252_01303-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:42:44', '2020-05-17 22:51:14'),
(1001, 7, '/var/www/html/alarmhistory/cam_7_20200518040121', 'http://w3.airnetmax.net:5004/source-notif/image/1001?name=cam_7_20200518040117_00002-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 21:01:21', '2020-05-17 21:47:38'),
(1007, 9, '/var/www/html/alarmhistory/cam_9_20200518054746', 'http://w3.airnetmax.net:5004/source-notif/image/1007?name=cam_9_20200518053252_01975-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:47:46', '2020-05-17 22:51:15'),
(1002, 7, '/var/www/html/alarmhistory/cam_7_20200518041953', 'http://w3.airnetmax.net:5004/source-notif/image/1002?name=cam_7_20200518041952_00001-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 21:19:53', '2020-05-17 21:43:30'),
(1008, 9, '/var/www/html/alarmhistory/cam_9_20200518055247', 'http://w3.airnetmax.net:5004/source-notif/image/1008?name=cam_9_20200518053252_02670-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:52:47', '2020-05-18 05:53:48'),
(1005, 7, '/var/www/html/alarmhistory/cam_7_20200518054208', 'http://w3.airnetmax.net:5004/source-notif/image/1005?name=cam_7_20200518054207_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 22:42:08', '2020-05-18 01:07:17'),
(1009, 9, '/var/www/html/alarmhistory/cam_9_20200518055748', 'http://w3.airnetmax.net:5004/source-notif/image/1009?name=cam_9_20200518053252_03349-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 22:57:48', '2020-05-18 00:12:19'),
(1011, 7, '/var/www/html/alarmhistory/cam_7_20200518060346', 'http://w3.airnetmax.net:5004/source-notif/image/1011?name=cam_7_20200518060345_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-17 23:03:46', '2020-05-18 01:05:46'),
(1010, 9, '/var/www/html/alarmhistory/cam_9_20200518060249', 'http://w3.airnetmax.net:5004/source-notif/image/1010?name=cam_9_20200518053252_04057-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:02:49', '2020-05-18 00:12:19'),
(1012, 9, '/var/www/html/alarmhistory/cam_9_20200518060750', 'http://w3.airnetmax.net:5004/source-notif/image/1012?name=cam_9_20200518053252_04706-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:07:50', '2020-05-18 00:12:19'),
(1013, 9, '/var/www/html/alarmhistory/cam_9_20200518061251', 'http://w3.airnetmax.net:5004/source-notif/image/1013?name=cam_9_20200518053252_05424-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:12:51', '2020-05-18 00:12:19'),
(1014, 9, '/var/www/html/alarmhistory/cam_9_20200518061752', 'http://w3.airnetmax.net:5004/source-notif/image/1014?name=cam_9_20200518053252_06125-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:17:52', '2020-05-18 00:12:19'),
(1015, 9, '/var/www/html/alarmhistory/cam_9_20200518062254', 'http://w3.airnetmax.net:5004/source-notif/image/1015?name=cam_9_20200518053252_06836-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:22:54', '2020-05-18 00:12:19'),
(1016, 9, '/var/www/html/alarmhistory/cam_9_20200518062754', 'http://w3.airnetmax.net:5004/source-notif/image/1016?name=cam_9_20200518053252_07518-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:27:55', '2020-05-18 00:12:19'),
(1017, 9, '/var/www/html/alarmhistory/cam_9_20200518063257', 'http://w3.airnetmax.net:5004/source-notif/image/1017?name=cam_9_20200518053252_08198-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:32:57', '2020-05-18 00:12:19'),
(1018, 9, '/var/www/html/alarmhistory/cam_9_20200518063758', 'http://w3.airnetmax.net:5004/source-notif/image/1018?name=cam_9_20200518053252_08870-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:37:58', '2020-05-18 00:12:19'),
(1019, 9, '/var/www/html/alarmhistory/cam_9_20200518064259', 'http://w3.airnetmax.net:5004/source-notif/image/1019?name=cam_9_20200518064156_00137-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:42:59', '2020-05-18 00:12:19'),
(1020, 9, '/var/www/html/alarmhistory/cam_9_20200518064800', 'http://w3.airnetmax.net:5004/source-notif/image/1020?name=cam_9_20200518064156_00813-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:48:00', '2020-05-18 00:12:19'),
(1021, 9, '/var/www/html/alarmhistory/cam_9_20200518065301/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1021?name=cam_9_20200518064156_01496-capture.jpg', 'Person', '1', 1, 0, '2020-05-17 23:53:01', '2020-05-18 00:12:19'),
(1022, 9, '/var/www/html/alarmhistory/cam_9_20200518065802', 'http://w3.airnetmax.net:5004/source-notif/image/1022?name=cam_9_20200518064156_02123-capture.jpg', 'Motion', '1', 1, 0, '2020-05-17 23:58:02', '2020-05-18 00:12:19'),
(1023, 9, '/var/www/html/alarmhistory/cam_9_20200518070303', 'http://w3.airnetmax.net:5004/source-notif/image/1023?name=cam_9_20200518064156_02793-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:03:03', '2020-05-18 00:12:19'),
(1024, 9, '/var/www/html/alarmhistory/cam_9_20200518070804', 'http://w3.airnetmax.net:5004/source-notif/image/1024?name=cam_9_20200518064156_03450-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 00:08:04', '2020-05-18 00:13:03'),
(1025, 9, '/var/www/html/alarmhistory/cam_9_20200518071305', 'http://w3.airnetmax.net:5004/source-notif/image/1025?name=cam_9_20200518064156_04083-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 00:13:06', '2020-05-18 07:14:07'),
(1026, 9, '/var/www/html/alarmhistory/cam_9_20200518071808', 'http://w3.airnetmax.net:5004/source-notif/image/1026?name=cam_9_20200518064156_04747-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 00:18:08', '2020-05-18 07:19:09'),
(1027, 9, '/var/www/html/alarmhistory/cam_9_20200518072309/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1027?name=cam_9_20200518064156_05435-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 00:23:09', '2020-05-18 07:24:15'),
(1028, 9, '/var/www/html/alarmhistory/cam_9_20200518072810', 'http://w3.airnetmax.net:5004/source-notif/image/1028?name=cam_9_20200518064156_06082-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:28:10', '2020-05-18 07:29:12'),
(1029, 9, '/var/www/html/alarmhistory/cam_9_20200518073311', 'http://w3.airnetmax.net:5004/source-notif/image/1029?name=cam_9_20200518064156_06739-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:33:11', '2020-05-18 07:34:12'),
(1030, 9, '/var/www/html/alarmhistory/cam_9_20200518073812', 'http://w3.airnetmax.net:5004/source-notif/image/1030?name=cam_9_20200518064156_07402-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:38:12', '2020-05-18 07:39:13'),
(1031, 9, '/var/www/html/alarmhistory/cam_9_20200518074314', 'http://w3.airnetmax.net:5004/source-notif/image/1031?name=cam_9_20200518064156_08068-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:43:14', '2020-05-18 07:44:15'),
(1032, 9, '/var/www/html/alarmhistory/cam_9_20200518074815', 'http://w3.airnetmax.net:5004/source-notif/image/1032?name=cam_9_20200518064156_08727-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 00:48:15', '2020-05-18 07:49:16'),
(1033, 9, '/var/www/html/alarmhistory/cam_9_20200518075316/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1033?name=cam_9_20200518064156_09356-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 00:53:16', '2020-05-18 07:54:22'),
(1034, 9, '/var/www/html/alarmhistory/cam_9_20200518075835', 'http://w3.airnetmax.net:5004/source-notif/image/1034?name=cam_9_20200518075831_00001-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 00:58:35', '2020-05-18 01:23:02'),
(1035, 9, '/var/www/html/alarmhistory/cam_9_20200518080336', 'http://w3.airnetmax.net:5004/source-notif/image/1035?name=cam_9_20200518075831_00662-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:03:36', '2020-05-18 08:04:38'),
(1036, 9, '/var/www/html/alarmhistory/cam_9_20200518080837', 'http://w3.airnetmax.net:5004/source-notif/image/1036?name=cam_9_20200518075831_01302-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:08:37', '2020-05-18 08:09:48'),
(1037, 9, '/var/www/html/alarmhistory/cam_9_20200518081338', 'http://w3.airnetmax.net:5004/source-notif/image/1037?name=cam_9_20200518075831_01944-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:13:38', '2020-05-18 08:14:40'),
(1038, 9, '/var/www/html/alarmhistory/cam_9_20200518081839', 'http://w3.airnetmax.net:5004/source-notif/image/1038?name=cam_9_20200518075831_02594-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:18:39', '2020-05-18 08:19:40'),
(1039, 9, '/var/www/html/alarmhistory/cam_9_20200518082341', 'http://w3.airnetmax.net:5004/source-notif/image/1039?name=cam_9_20200518075831_03262-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:23:41', '2020-05-18 08:24:42'),
(1040, 9, '/var/www/html/alarmhistory/cam_9_20200518082842', 'http://w3.airnetmax.net:5004/source-notif/image/1040?name=cam_9_20200518075831_03936-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:28:42', '2020-05-18 08:29:43'),
(1041, 9, '/var/www/html/alarmhistory/cam_9_20200518083343/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1041?name=cam_9_20200518075831_04618-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 01:33:43', '2020-05-18 08:34:48'),
(1042, 9, '/var/www/html/alarmhistory/cam_9_20200518083844', 'http://w3.airnetmax.net:5004/source-notif/image/1042?name=cam_9_20200518075831_05266-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:38:44', '2020-05-18 08:39:44'),
(1043, 9, '/var/www/html/alarmhistory/cam_9_20200518084345', 'http://w3.airnetmax.net:5004/source-notif/image/1043?name=cam_9_20200518075831_05889-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:43:45', '2020-05-18 08:44:46'),
(1044, 9, '/var/www/html/alarmhistory/cam_9_20200518084846', 'http://w3.airnetmax.net:5004/source-notif/image/1044?name=cam_9_20200518075831_06555-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:48:46', '2020-05-18 08:49:46'),
(1045, 9, '/var/www/html/alarmhistory/cam_9_20200518085347', 'http://w3.airnetmax.net:5004/source-notif/image/1045?name=cam_9_20200518075831_07202-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 01:53:47', '2020-05-18 08:54:47'),
(1046, 9, '/var/www/html/alarmhistory/cam_9_20200518085848', 'http://w3.airnetmax.net:5004/source-notif/image/1046?name=cam_9_20200518075831_07865-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 01:58:48', '2020-05-18 02:21:04'),
(1047, 9, '/var/www/html/alarmhistory/cam_9_20200518090349', 'http://w3.airnetmax.net:5004/source-notif/image/1047?name=cam_9_20200518075831_08510-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:03:49', '2020-05-18 09:04:50'),
(1048, 9, '/var/www/html/alarmhistory/cam_9_20200518090850', 'http://w3.airnetmax.net:5004/source-notif/image/1048?name=cam_9_20200518075831_09167-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:08:50', '2020-05-18 09:09:50'),
(1049, 9, '/var/www/html/alarmhistory/cam_9_20200518091351', 'http://w3.airnetmax.net:5004/source-notif/image/1049?name=cam_9_20200518075831_09796-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:13:51', '2020-05-18 09:15:01'),
(1050, 9, '/var/www/html/alarmhistory/cam_9_20200518091853', 'http://w3.airnetmax.net:5004/source-notif/image/1050?name=cam_9_20200518091603_00334-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:18:53', '2020-05-18 09:20:03'),
(1051, 9, '/var/www/html/alarmhistory/cam_9_20200518092354', 'http://w3.airnetmax.net:5004/source-notif/image/1051?name=cam_9_20200518091603_00963-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:23:54', '2020-05-18 09:25:05'),
(1052, 9, '/var/www/html/alarmhistory/cam_9_20200518092855', 'http://w3.airnetmax.net:5004/source-notif/image/1052?name=cam_9_20200518091603_01594-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 02:28:55', '2020-05-18 09:30:05'),
(1053, 9, '/var/www/html/alarmhistory/cam_9_20200518093356', 'http://w3.airnetmax.net:5004/source-notif/image/1053?name=cam_9_20200518091603_02213-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:33:56', '2020-05-18 09:34:56'),
(1054, 9, '/var/www/html/alarmhistory/cam_9_20200518093857', 'http://w3.airnetmax.net:5004/source-notif/image/1054?name=cam_9_20200518091603_02851-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 02:38:57', '2020-05-18 09:39:57'),
(1055, 9, '/var/www/html/alarmhistory/cam_9_20200518094358/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1055?name=cam_9_20200518091603_03473-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 02:43:58', '2020-05-18 09:45:06'),
(1056, 9, '/var/www/html/alarmhistory/cam_9_20200518094859/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1056?name=cam_9_20200518091603_04112-capture.jpg', 'Person', '1', 2, 0, '2020-05-18 02:48:59', '2020-05-18 09:50:04'),
(1057, 9, '/var/www/html/alarmhistory/cam_9_20200518095400/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1057?name=cam_9_20200518091603_04729-capture.jpg', 'Person', '1', 2, 0, '2020-05-18 02:54:00', '2020-05-18 09:55:06'),
(1058, 9, '/var/www/html/alarmhistory/cam_9_20200518095901/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1058?name=cam_9_20200518091603_05342-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 02:59:02', '2020-05-18 10:00:17'),
(1059, 9, '/var/www/html/alarmhistory/cam_9_20200518100403/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1059?name=cam_9_20200518091603_05921-capture.jpg', 'Person', '1', 2, 0, '2020-05-18 03:04:03', '2020-05-18 10:05:08'),
(1060, 9, '/var/www/html/alarmhistory/cam_9_20200518100904/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1060?name=cam_9_20200518091603_06538-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 03:09:04', '2020-05-18 10:10:09'),
(1061, 9, '/var/www/html/alarmhistory/cam_9_20200518101405/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1061?name=cam_9_20200518091603_07116-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 03:14:05', '2020-05-18 10:15:13'),
(1062, 9, '/var/www/html/alarmhistory/cam_9_20200518101906/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1062?name=cam_9_20200518091603_07698-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 03:19:06', '2020-05-18 10:20:11'),
(1063, 9, '/var/www/html/alarmhistory/cam_9_20200518102407/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1063?name=cam_9_20200518091603_08248-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 03:24:07', '2020-05-18 10:25:12'),
(1064, 9, '/var/www/html/alarmhistory/cam_9_20200518102908/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1064?name=cam_9_20200518091603_08852-capture.jpg', 'Person', '1', 1, 0, '2020-05-18 03:29:08', '2020-05-18 10:30:08'),
(1065, 9, '/var/www/html/alarmhistory/cam_9_20200518103409', 'http://w3.airnetmax.net:5004/source-notif/image/1065?name=cam_9_20200518091603_09399-capture.jpg', 'Motion', '1', 1, 0, '2020-05-18 03:34:09', '2020-05-18 10:35:19'),
(1066, 9, '/var/www/html/alarmhistory/cam_9_20200518105241/objectdetected', 'http://w3.airnetmax.net:5004/source-notif/image/1066?name=cam_9_20200518091603_09762-capture.jpg', 'Person', '1', 2, 0, '2020-05-18 03:52:41', '2020-05-19 04:42:23'),
(1067, 9, '/var/www/html/alarmhistory/cam_9_20200518105741', 'http://w3.airnetmax.net:5004/source-notif/image/1067?name=cam_9_20200518105324_00558-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 03:57:42', '2020-05-18 12:23:13'),
(1068, 9, '/var/www/html/alarmhistory/cam_9_20200518110244', 'http://w3.airnetmax.net:5004/source-notif/image/1068?name=cam_9_20200518105324_01195-capture.jpg', 'Motion', '1', 2, 0, '2020-05-18 04:02:44', '2020-05-18 12:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `customerProfiles`
--

CREATE TABLE IF NOT EXISTS `customerProfiles` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `firstName` varchar(80) DEFAULT NULL,
  `lastName` varchar(80) DEFAULT NULL,
  `noHandPhone` varchar(25) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT 'others',
  `picture` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `subscribeExpired` datetime DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerProfiles`
--

INSERT INTO `customerProfiles` (`id`, `userId`, `firstName`, `lastName`, `noHandPhone`, `gender`, `picture`, `address`, `subscribeExpired`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'super', 'admin', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(2, 2, 'Son', 'Harnoh', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-05-15 01:31:27'),
(3, 3, 'user3', 'user3', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(4, 4, 'user4', 'user4', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(5, 5, 'user5', 'user5', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(6, 6, 'user6', 'user6', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(7, 7, 'user7', 'user7', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(8, 8, 'user8', 'user8', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(9, 9, 'user9', 'user9', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(10, 10, 'user10', 'user10', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(11, 11, 'user11', 'user11', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(12, 12, 'user12', 'user12', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(13, 13, 'user13', 'user13', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(14, 14, 'user14', 'user14', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(15, 15, 'user15', 'user15', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(16, 16, 'user16', 'user16', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(17, 17, 'user17', 'user17', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(18, 18, 'user18', 'user18', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(19, 19, 'user19', 'user19', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26'),
(20, 20, 'user20', 'user20', '081237669862', 'others', NULL, NULL, '2021-04-01 05:52:06', 0, '2020-04-29 05:52:06', '2020-04-30 16:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE IF NOT EXISTS `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20200415195348-create-user-roles.js'),
('20200415202834-create-users.js'),
('20200428055413-create-customer-profiles.js'),
('20200428085819-create-camera-cctv.js'),
('20200428125431-create-cctv-notifications.js'),
('20200501034643-create-alarm-schedule.js');

-- --------------------------------------------------------

--
-- Table structure for table `userRoles`
--

CREATE TABLE IF NOT EXISTS `userRoles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `codeRole` varchar(5) NOT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userRoles`
--

INSERT INTO `userRoles` (`id`, `name`, `codeRole`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'SuperAdmin', 'SA', 0, '2020-05-12 02:30:47', '2020-05-12 02:30:47'),
(2, 'Admin', 'A', 0, '2020-05-12 02:30:47', '2020-05-12 02:30:47'),
(3, 'User', 'U', 0, '2020-05-12 02:30:47', '2020-05-12 02:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `roleId` int(11) NOT NULL DEFAULT 3,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `email` varchar(100) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `roleId`, `username`, `password`, `status`, `email`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'myadmin', '$2a$10$2EPe64rYhpyn2jOxNCLiMOV8hb.naFGFCnZ/FAITv72X5C5lxnYo.', 1, 'ipangselly@gmail.com', 0, '2020-05-12 02:30:47', '2020-05-12 02:30:47'),
(2, 3, 'sonh25', '$2a$10$UZlrlZ7ODgd84EtXOWl6e.yEYeyd0PBoMg0F.llXKooMVdS6CTch6', 1, 'sonh25@gmail.com', 0, '2020-05-01 06:17:11', '2020-05-19 04:40:40'),
(3, 3, 'rafie', '$2a$10$B6roNY3Ng9JJwcWdAKFoKOi5g8gld8vpkuey7qxrrYpXYn9zvW./q', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-12 15:45:38'),
(4, 3, 'fikri', '$2a$10$B6roNY3Ng9JJwcWdAKFoKOi5g8gld8vpkuey7qxrrYpXYn9zvW./q', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-15 08:23:54'),
(5, 2, 'user5', '$2a$10$Ab9KwpgWqNrSfqRkUxQuvO3F.RmzXNIyo7sg0n4Bz/.vMApsKTN0S', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-04-29 05:52:06'),
(6, 2, 'user6', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30'),
(7, 2, 'user7', '971753b247de229158fdab65135575aa', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-03 18:54:02'),
(8, 2, 'user8', '$2a$10$Ab9KwpgWqNrSfqRkUxQuvO3F.RmzXNIyo7sg0n4Bz/.vMApsKTN0S', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-04-29 05:52:06'),
(9, 2, 'user9', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30'),
(10, 2, 'user10', '971753b247de229158fdab65135575aa', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-03 18:54:02'),
(11, 2, 'user11', '$2a$10$Ab9KwpgWqNrSfqRkUxQuvO3F.RmzXNIyo7sg0n4Bz/.vMApsKTN0S', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-04-29 05:52:06'),
(12, 2, 'user12', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30'),
(13, 2, 'user13', '971753b247de229158fdab65135575aa', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-03 18:54:02'),
(14, 2, 'user14', '$2a$10$Ab9KwpgWqNrSfqRkUxQuvO3F.RmzXNIyo7sg0n4Bz/.vMApsKTN0S', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-04-29 05:52:06'),
(15, 2, 'user15', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30'),
(16, 2, 'user16', '971753b247de229158fdab65135575aa', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-03 18:54:02'),
(17, 2, 'user17', '$2a$10$Ab9KwpgWqNrSfqRkUxQuvO3F.RmzXNIyo7sg0n4Bz/.vMApsKTN0S', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-04-29 05:52:06'),
(18, 2, 'user18', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30'),
(19, 2, 'user19', '971753b247de229158fdab65135575aa', 1, 'ipangselly@gmail.com', 0, '2020-04-29 05:52:06', '2020-05-03 18:54:02'),
(20, 2, 'user20', '971753b247de229158fdab65135575aa', 1, NULL, 0, '2020-05-01 06:17:11', '2020-05-01 06:19:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alarmSchedules`
--
ALTER TABLE `alarmSchedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CCTVId` (`CCTVId`);

--
-- Indexes for table `cameraCCTVs`
--
ALTER TABLE `cameraCCTVs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `CCTVNotifications`
--
ALTER TABLE `CCTVNotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CCTVId` (`CCTVId`);

--
-- Indexes for table `customerProfiles`
--
ALTER TABLE `customerProfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `userRoles`
--
ALTER TABLE `userRoles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `codeRole` (`codeRole`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alarmSchedules`
--
ALTER TABLE `alarmSchedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cameraCCTVs`
--
ALTER TABLE `cameraCCTVs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `CCTVNotifications`
--
ALTER TABLE `CCTVNotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1073;
--
-- AUTO_INCREMENT for table `customerProfiles`
--
ALTER TABLE `customerProfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `userRoles`
--
ALTER TABLE `userRoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alarmSchedules`
--
ALTER TABLE `alarmSchedules`
  ADD CONSTRAINT `alarmSchedules_ibfk_1` FOREIGN KEY (`CCTVId`) REFERENCES `cameraCCTVs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cameraCCTVs`
--
ALTER TABLE `cameraCCTVs`
  ADD CONSTRAINT `cameraCCTVs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `CCTVNotifications`
--
ALTER TABLE `CCTVNotifications`
  ADD CONSTRAINT `CCTVNotifications_ibfk_1` FOREIGN KEY (`CCTVId`) REFERENCES `cameraCCTVs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customerProfiles`
--
ALTER TABLE `customerProfiles`
  ADD CONSTRAINT `customerProfiles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `userRoles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
