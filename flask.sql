-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2016 at 06:15 PM
-- Server version: 5.5.44
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `dateCreated`, `isActive`) VALUES
(1, 'admin', '$2y$10$9CYjllcZdh3qPfvSBwz42eESPxICFR6uvJ/EQwa/pxuWBWTqFqmPq', 'lxsoki@gmail.com', 'Default', 'Account', '2010-03-15 01:05:43', '1'),
(2, 'gabi', 'admin', '', '', '', '2016-05-13 19:02:55', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
`id` int(11) unsigned NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminId` int(11) unsigned NOT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `ip`, `adminId`, `referer`, `userAgent`, `dateLogin`) VALUES
(1, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-16 13:18:11'),
(2, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-16 14:17:44'),
(3, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-19 13:09:00'),
(4, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-19 15:12:56'),
(5, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-20 12:31:27'),
(6, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-20 14:31:29'),
(7, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-20 15:33:00'),
(8, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-22 12:35:02'),
(9, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', '2015-10-22 13:48:29'),
(10, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-10 15:13:41'),
(11, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-10 16:18:38'),
(12, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-11 12:10:44'),
(13, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-13 16:53:32'),
(14, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-13 17:07:36'),
(15, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-17 16:11:11'),
(16, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-11-23 14:45:35'),
(17, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', '2015-12-07 14:54:29'),
(18, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', '2016-02-26 14:26:01'),
(19, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-05-04 12:18:20'),
(20, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-05-04 13:56:26'),
(21, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-05-05 10:22:30'),
(22, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-05-06 15:37:07'),
(23, '127.0.0.1', 1, 'http://localhost/DotKernel/admin/admin/login', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-05-06 16:28:14'),
(24, '79.117.60.239', 1, 'http://flask.djg.ro/admin/admin/login', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-21 16:37:58'),
(25, '89.34.170.83', 1, 'http://flask.djg.ro/admin/admin/login', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-18 17:14:48'),
(26, '127.0.0.1', 1, 'http://localhost/flask//admin/admin/login', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-19 14:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`id` int(11) unsigned NOT NULL,
  `hash` varchar(25) NOT NULL,
  `name` varchar(300) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `type` varchar(200) NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `shareOptions` int(11) unsigned DEFAULT NULL,
  `dateUploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) unsigned NOT NULL,
  `key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEditable` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('radio','option','textarea') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textarea',
  `possibleValues` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `key`, `value`, `title`, `comment`, `isEditable`, `type`, `possibleValues`) VALUES
(1, 'siteEmail', 'soki.alx@gmail.com', 'Site Email Address', 'The email address that recieves all contact emails from the site.\r\nAlso used as Sender Email for ''forgot password''.', '1', 'textarea', ''),
(2, 'devEmails', 'soki.alx@gmail.com', 'Developer Emails', 'developer emails, for debug purpose, separated by comma', '1', 'textarea', ''),
(3, 'timeFormatShort', '%d %b %Y', 'Short Date/Time Format.', '%d - day of the month as a decimal number (range 01 to 31) %b - abbreviated month name according to the current locale %B - full month name according to the current locale %m - month as a decimal number (range 01 to 12) %y - year as a decimal number without a century (range 00 to 99) %Y - year as a decimal number including the century', '1', 'option', '%d %b %Y;%d %B %Y;%d %B %y;%d %m %Y;%d %m %y;%B %d, %Y;%b %d, %Y'),
(4, 'timeFormatLong', '%b %d, %Y, %H:%M', 'Long Date/Time Format.', 'Date/time format, including hours, minutes and seconds', '1', 'option', '%d %b %Y, %H:%M;%d %B %Y, %H:%M;%d %B %y, %H:%M;%d %m %Y, %H:%M;%d %m %y, %H:%M;%B %d, %Y, %H:%M;%b %d, %Y, %H:%M'),
(7, 'resultsPerPage', '5', 'Default results per page', 'How many records will be on every page, if is not specified otherwise by a specific configuration value', '1', 'option', '5;10;20;30;40;50'),
(8, 'whoisUrl', 'http://whois.domaintools.com', '', 'Whois lookup and Domain name search', '0', 'textarea', ''),
(9, 'paginationStep', '3', 'Pagination Step', 'The maximum number of pages that are shown on either side of the current page in the pagination header.', '1', 'option', '3;4;5;6;7;8;9;10'),
(10, 'freeFileExpiry', '24', 'Timp Expirare fisier', 'Durata de disponibilitate a fişierelor încărcate cu cont gratuit (în ore)', '1', 'option', '24;48;72;96;120');

-- --------------------------------------------------------

--
-- Table structure for table `statisticvisit`
--

CREATE TABLE IF NOT EXISTS `statisticvisit` (
`id` int(11) unsigned NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proxyIp` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accept` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptLanguage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptEncoding` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptCharset` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cacheControl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xWapProfile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xForwardedFor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xForwardedHost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xForwardedServer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateHit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `statisticvisit`
--

INSERT INTO `statisticvisit` (`id`, `ip`, `proxyIp`, `carrier`, `country`, `accept`, `acceptLanguage`, `acceptEncoding`, `acceptCharset`, `userAgent`, `cacheControl`, `cookie`, `xWapProfile`, `xForwardedFor`, `xForwardedHost`, `xForwardedServer`, `referer`, `dateHit`) VALUES
(1, '213.233.84.139', '213.233.84.139', 'unknown', 'Romania', 'text/html, application/xhtml+xml, image/jxr, */*', 'en-US,ro-RO;q=0.8,ro;q=0.6,en-GB;q=0.4,en;q=0.2', 'gzip, deflate', '', 'Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Microsoft; Lumia 640 LTE) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586', 'max-age=259200', '', '', '', '', '', '', '2016-05-30 09:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `statisticvisitmobile`
--

CREATE TABLE IF NOT EXISTS `statisticvisitmobile` (
`id` int(11) unsigned NOT NULL,
  `visitId` int(11) unsigned NOT NULL,
  `fallBack` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browserName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browserVersion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deviceOs` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deviceOsVersion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenWidth` int(6) NOT NULL,
  `screenHeight` int(6) NOT NULL,
  `isTablet` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isMobile` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isSmartphone` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isIphone` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isAndroid` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isBlackberry` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isSymbian` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isWindowsMobile` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `statisticvisitmobile`
--

INSERT INTO `statisticvisitmobile` (`id`, `visitId`, `fallBack`, `brandName`, `modelName`, `browserName`, `browserVersion`, `deviceOs`, `deviceOsVersion`, `screenWidth`, `screenHeight`, `isTablet`, `isMobile`, `isSmartphone`, `isIphone`, `isAndroid`, `isBlackberry`, `isSymbian`, `isWindowsMobile`) VALUES
(1, 1, '', '', '', '', '', '', '', 0, 0, '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `dateCreated`, `isActive`) VALUES
(5, 'test', '$2y$10$37Clxxf50zKYrxjwRdHmIegw0WFU.wWbKXM7LzS4brQ32tsSnTrly', 'test@user.com', '', '', '2016-06-19 14:54:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
`id` int(11) unsigned NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) unsigned NOT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `ip`, `country`, `userId`, `referer`, `userAgent`, `dateLogin`) VALUES
(1, '79.117.60.239', 'Romania', 4, 'http://flask.djg.ro/user/login', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-21 16:39:14'),
(2, '127.0.0.1', 'NA', 5, 'http://localhost/flask//user/login', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-19 14:54:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
 ADD PRIMARY KEY (`id`), ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hash` (`hash`), ADD KEY `userId` (`userId`,`shareOptions`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `statisticvisit`
--
ALTER TABLE `statisticvisit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statisticvisitmobile`
--
ALTER TABLE `statisticvisitmobile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `visitId` (`visitId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
 ADD PRIMARY KEY (`id`), ADD KEY `adminId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `statisticvisit`
--
ALTER TABLE `statisticvisit`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `statisticvisitmobile`
--
ALTER TABLE `statisticvisitmobile`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
