-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: piotr1
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `collections_site`
--

DROP TABLE IF EXISTS `collections_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections_site` (
  `collections_siteId` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) DEFAULT NULL,
  `site_descriptiveId` varchar(455) DEFAULT NULL,
  `latitude` float(11,7) DEFAULT NULL,
  `longitude` float(11,7) DEFAULT NULL,
  `coordinate_system` varchar(45) DEFAULT 'wgs84',
  `elevation` float DEFAULT NULL,
  `habitat_characteristics` varchar(45) DEFAULT NULL,
  `site_description` varchar(455) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`collections_siteId`),
  UNIQUE KEY `siteId_UNIQUE` (`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections_site`
--

LOCK TABLES `collections_site` WRITE;
/*!40000 ALTER TABLE `collections_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_genetic_info`
--

DROP TABLE IF EXISTS `host_genetic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_genetic_info` (
  `host_genetic_infoId` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` longtext,
  PRIMARY KEY (`host_genetic_infoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_genetic_info`
--

LOCK TABLES `host_genetic_info` WRITE;
/*!40000 ALTER TABLE `host_genetic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_genetic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual`
--

DROP TABLE IF EXISTS `individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual` (
  `individualId` int(11) NOT NULL AUTO_INCREMENT,
  `individualLabel` varchar(45) DEFAULT NULL,
  `taxonomy_confidence` varchar(45) DEFAULT NULL COMMENT 'taxonomy_confidence = {''confident'',''likely''}',
  `taxonomy_level` varchar(45) DEFAULT NULL,
  `host_genetic_infoId` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `experimental_treatment` varchar(455) DEFAULT NULL,
  `host_image_link` varchar(456) DEFAULT NULL COMMENT 'sex -> controlled vocabulary {juvenile, adult, old} , host_image_link -> could use a ''mediaserver'' here',
  `physiological_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`individualId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual`
--

LOCK TABLES `individual` WRITE;
/*!40000 ALTER TABLE `individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microbiome`
--

DROP TABLE IF EXISTS `microbiome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microbiome` (
  `microbiomeId` int(11) NOT NULL AUTO_INCREMENT,
  `individualFkId` int(11) DEFAULT NULL,
  `tissue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`microbiomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microbiome`
--

LOCK TABLES `microbiome` WRITE;
/*!40000 ALTER TABLE `microbiome` DISABLE KEYS */;
/*!40000 ALTER TABLE `microbiome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microbiome_profile`
--

DROP TABLE IF EXISTS `microbiome_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microbiome_profile` (
  `microbiome_profileId` int(11) NOT NULL AUTO_INCREMENT,
  `microbiomeFkId` varchar(45) DEFAULT NULL,
  `amplicons` varchar(45) DEFAULT NULL,
  `metagenome` varchar(45) DEFAULT NULL,
  `microscopy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`microbiome_profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microbiome_profile`
--

LOCK TABLES `microbiome_profile` WRITE;
/*!40000 ALTER TABLE `microbiome_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `microbiome_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_easy`
--

DROP TABLE IF EXISTS `taxonomy_easy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_easy` (
  `taxonomy_easyId` int(11) NOT NULL,
  `taxonomy_confidence` varchar(45) DEFAULT NULL,
  `taxonomy_level` varchar(45) DEFAULT NULL,
  `taxonomy_determination` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taxonomy_easyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_easy`
--

LOCK TABLES `taxonomy_easy` WRITE;
/*!40000 ALTER TABLE `taxonomy_easy` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_easy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 14:40:27
