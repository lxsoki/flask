-- MySQL dump 10.13  Distrib 5.5.44, for Win32 (x86)
--
-- Host: localhost    Database: flask
-- ------------------------------------------------------
-- Server version	5.5.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2y$10$NxlOQTM9gtkJFKJl6FCxtuRp7l7MEK0I2JMOUM44eS4AaYeQN3jhG','team@dotkernel.com','Default','Account','2010-03-15 01:05:43','1'),(2,'gabi','admin','','','','2016-05-13 19:02:55','1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlogin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminId` int(11) unsigned NOT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `adminId` (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES (1,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-16 13:18:11'),(2,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-16 14:17:44'),(3,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-19 13:09:00'),(4,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-19 15:12:56'),(5,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-20 12:31:27'),(6,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-20 14:31:29'),(7,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-20 15:33:00'),(8,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-22 12:35:02'),(9,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','2015-10-22 13:48:29'),(10,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-10 15:13:41'),(11,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-10 16:18:38'),(12,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-11 12:10:44'),(13,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-13 16:53:32'),(14,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-13 17:07:36'),(15,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-17 16:11:11'),(16,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-11-23 14:45:35'),(17,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','2015-12-07 14:54:29'),(18,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0','2016-02-26 14:26:01'),(19,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0','2016-05-04 12:18:20'),(20,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0','2016-05-04 13:56:26'),(21,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0','2016-05-05 10:22:30'),(22,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0','2016-05-06 15:37:07'),(23,'127.0.0.1',1,'http://localhost/DotKernel/admin/admin/login','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0','2016-05-06 16:28:14'),(24,'79.117.60.239',1,'http://flask.djg.ro/admin/admin/login','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','2016-05-21 16:37:58'),(25,'89.34.170.83',1,'http://flask.djg.ro/admin/admin/login','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','2016-06-18 17:14:48');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL,
  `name` varchar(300) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `type` varchar(200) NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `shareOptions` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `userId` (`userId`,`shareOptions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEditable` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('radio','option','textarea') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textarea',
  `possibleValues` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'siteEmail','gabi@rospace.com','Site Email Address','The email address that recieves all contact emails from the site.\r\nAlso used as Sender Email for \'forgot password\'.','1','textarea',''),(2,'devEmails','gabi@rospace.com','Developer Emails','developer emails, for debug purpose, separated by comma','1','textarea',''),(3,'timeFormatShort','%d %b %Y','Short Date/Time Format.','%d - day of the month as a decimal number (range 01 to 31) %b - abbreviated month name according to the current locale %B - full month name according to the current locale %m - month as a decimal number (range 01 to 12) %y - year as a decimal number without a century (range 00 to 99) %Y - year as a decimal number including the century','1','option','%d %b %Y;%d %B %Y;%d %B %y;%d %m %Y;%d %m %y;%B %d, %Y;%b %d, %Y'),(4,'timeFormatLong','%b %d, %Y, %H:%M','Long Date/Time Format.','Date/time format, including hours, minutes and seconds','1','option','%d %b %Y, %H:%M;%d %B %Y, %H:%M;%d %B %y, %H:%M;%d %m %Y, %H:%M;%d %m %y, %H:%M;%B %d, %Y, %H:%M;%b %d, %Y, %H:%M'),(7,'resultsPerPage','5','Default results per page','How many records will be on every page, if is not specified otherwise by a specific configuration value','1','option','5;10;20;30;40;50'),(8,'whoisUrl','http://whois.domaintools.com','','Whois lookup and Domain name search','0','textarea',''),(9,'paginationStep','3','Pagination Step','The maximum number of pages that are shown on either side of the current page in the pagination header.','1','option','3;4;5;6;7;8;9;10');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statisticvisit`
--

DROP TABLE IF EXISTS `statisticvisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statisticvisit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `dateHit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statisticvisit`
--

LOCK TABLES `statisticvisit` WRITE;
/*!40000 ALTER TABLE `statisticvisit` DISABLE KEYS */;
INSERT INTO `statisticvisit` VALUES (1,'213.233.84.139','213.233.84.139','unknown','Romania','text/html, application/xhtml+xml, image/jxr, */*','en-US,ro-RO;q=0.8,ro;q=0.6,en-GB;q=0.4,en;q=0.2','gzip, deflate','','Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Microsoft; Lumia 640 LTE) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586','max-age=259200','','','','','','','2016-05-30 09:43:13');
/*!40000 ALTER TABLE `statisticvisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statisticvisitmobile`
--

DROP TABLE IF EXISTS `statisticvisitmobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statisticvisitmobile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `isWindowsMobile` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `visitId` (`visitId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statisticvisitmobile`
--

LOCK TABLES `statisticvisitmobile` WRITE;
/*!40000 ALTER TABLE `statisticvisitmobile` DISABLE KEYS */;
INSERT INTO `statisticvisitmobile` VALUES (1,1,'','','','','','','',0,0,'0','0','0','0','0','0','0','0');
/*!40000 ALTER TABLE `statisticvisitmobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'alina','$2y$10$gvBTR/GKuO/IGVF9kk.aheytt3ml4Lc82Bf4Uydhw2Z.tgE5S2Efi','alina@rospace.com','','','2015-11-17 16:11:22','1'),(2,'gabi','user','gabi@rospace.com','','','2016-05-13 19:04:13','1'),(3,'tibi','tibi','','','','2016-05-16 11:28:43','1'),(4,'flo','$2y$10$5VITB4bVTokjvNl9TV/M6uNcGFKOqla1cYVXUMnwMvZlIzcI6wQ2a','eihj@eihjy-eihj.com','sdadiwo','sdoan','2016-05-21 16:38:46','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) unsigned NOT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `adminId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogin`
--

LOCK TABLES `userlogin` WRITE;
/*!40000 ALTER TABLE `userlogin` DISABLE KEYS */;
INSERT INTO `userlogin` VALUES (1,'79.117.60.239','Romania',4,'http://flask.djg.ro/user/login','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','2016-05-21 16:39:14');
/*!40000 ALTER TABLE `userlogin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-18 20:17:55
