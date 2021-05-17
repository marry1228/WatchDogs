-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: watchdogs
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adid` varchar(20) NOT NULL,
  `ademail` varchar(20) NOT NULL,
  `adtel` varchar(20) NOT NULL,
  `adpw` varchar(20) NOT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `docid` int NOT NULL AUTO_INCREMENT,
  `doctitle` varchar(50) NOT NULL,
  `doccontent` text NOT NULL,
  `doctype` varchar(10) NOT NULL,
  `docdate` date NOT NULL,
  `docdeldate` date DEFAULT NULL,
  `user_uerid` varchar(20) DEFAULT NULL,
  `admin_adid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `fk_document_user1_idx` (`user_uerid`),
  KEY `fk_document_admin1_idx` (`admin_adid`),
  CONSTRAINT `fk_document_admin1` FOREIGN KEY (`admin_adid`) REFERENCES `admin` (`adid`),
  CONSTRAINT `fk_document_user1` FOREIGN KEY (`user_uerid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog`
--

DROP TABLE IF EXISTS `dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dog` (
  `dogid` int NOT NULL AUTO_INCREMENT,
  `dogname` varchar(45) NOT NULL,
  `dogtrainst` varchar(45) NOT NULL,
  `dogadopttst` varchar(45) NOT NULL,
  `dogdate` date NOT NULL,
  `dogadoptdate` date DEFAULT NULL,
  `dogtraincomm` text,
  `admin_adid` varchar(20) DEFAULT NULL,
  `trainer_trid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dogid`),
  KEY `fk_dog_admin1_idx` (`admin_adid`),
  KEY `fk_dog_trainer1_idx` (`trainer_trid`),
  CONSTRAINT `fk_dog_admin1` FOREIGN KEY (`admin_adid`) REFERENCES `admin` (`adid`),
  CONSTRAINT `fk_dog_trainer1` FOREIGN KEY (`trainer_trid`) REFERENCES `trainer` (`trid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog`
--

LOCK TABLES `dog` WRITE;
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likeadopt`
--

DROP TABLE IF EXISTS `likeadopt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likeadopt` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `like` tinyint DEFAULT NULL,
  `likeadopt` tinyint DEFAULT NULL,
  `user_userid` varchar(20) DEFAULT NULL,
  `dog_dogid` int DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `fk_likeadopt_user1_idx` (`user_userid`),
  KEY `fk_likeadopt_dog1_idx` (`dog_dogid`),
  CONSTRAINT `fk_likeadopt_dog1` FOREIGN KEY (`dog_dogid`) REFERENCES `dog` (`dogid`),
  CONSTRAINT `fk_likeadopt_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likeadopt`
--

LOCK TABLES `likeadopt` WRITE;
/*!40000 ALTER TABLE `likeadopt` DISABLE KEYS */;
/*!40000 ALTER TABLE `likeadopt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `trid` varchar(20) NOT NULL,
  `tremail` varchar(45) NOT NULL,
  `trtel` varchar(45) NOT NULL,
  `trname` varchar(45) NOT NULL,
  `trdate` date NOT NULL,
  `trdeldate` date DEFAULT NULL,
  `admin_adid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trid`),
  KEY `fk_trainer_admin1_idx` (`admin_adid`),
  CONSTRAINT `fk_trainer_admin1` FOREIGN KEY (`admin_adid`) REFERENCES `admin` (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` varchar(20) NOT NULL,
  `userpw` varchar(45) NOT NULL,
  `usertel` varchar(45) NOT NULL,
  `useremail` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `userdate` date NOT NULL,
  `userdeldate` date DEFAULT NULL,
  `admin_adid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `fk_user_admin1_idx` (`admin_adid`),
  CONSTRAINT `fk_user_admin1` FOREIGN KEY (`admin_adid`) REFERENCES `admin` (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16  7:06:25
