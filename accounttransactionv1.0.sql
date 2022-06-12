-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: accounttransaction
-- ------------------------------------------------------
-- Server version	5.7.36-log

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
-- Table structure for table `accaccount`
--

DROP TABLE IF EXISTS `accaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accaccount` (
  `accUserId` varchar(200) NOT NULL,
  `accIBSN` varchar(200) NOT NULL,
  `accSurplus` int(200) DEFAULT NULL,
  `accAccountName` varchar(200) DEFAULT NULL,
  `accPass` varchar(200) DEFAULT NULL,
  `accCreateAddress` varchar(200) DEFAULT NULL,
  `accCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`accIBSN`),
  UNIQUE KEY `accIBSN_UNIQUE` (`accIBSN`),
  UNIQUE KEY `accAccountName_UNIQUE` (`accAccountName`),
  UNIQUE KEY `accPass_UNIQUE` (`accPass`),
  UNIQUE KEY `accCreateAddress_UNIQUE` (`accCreateAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accaccount`
--

LOCK TABLES `accaccount` WRITE;
/*!40000 ALTER TABLE `accaccount` DISABLE KEYS */;
INSERT INTO `accaccount` VALUES ('76799790-e869-11ec-9864-e00af6354038','CH93-0000-0000-0000-0000-0',50,'43','433','??','2022-06-10 02:59:48','???');
/*!40000 ALTER TABLE `accaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accbusiness`
--

DROP TABLE IF EXISTS `accbusiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accbusiness` (
  `busiId` varchar(200) NOT NULL,
  `busiVolume` int(11) NOT NULL,
  `busiCreAccIbsn` varchar(200) NOT NULL,
  `busiDebAccIbsn` varchar(200) NOT NULL,
  `busiDescription` varchar(200) DEFAULT NULL,
  `busiCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `busiZeroDate` datetime NOT NULL,
  `busiUserId` varchar(200) NOT NULL,
  PRIMARY KEY (`busiId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accbusiness`
--

LOCK TABLES `accbusiness` WRITE;
/*!40000 ALTER TABLE `accbusiness` DISABLE KEYS */;
INSERT INTO `accbusiness` VALUES ('021cc26e-e9a1-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-11 16:09:50','2022-06-12 00:09:50','51aa216a-e7ce-11ec-9864-e00af6354038'),('024d63dc-e926-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 01:29:26','2022-06-11 09:29:27','51aa216a-e7ce-11ec-9864-e00af6354038'),('044759ab-e97a-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','323232','2022-06-11 11:30:43','2022-06-11 19:30:44','51aa216a-e7ce-11ec-9864-e00af6354038'),('0bd0c237-ea13-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-12 05:46:07','2022-06-12 13:46:08','51aa216a-e7ce-11ec-9864-e00af6354038'),('0e7071ac-e932-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 02:55:41','2022-06-11 10:55:41','51aa216a-e7ce-11ec-9864-e00af6354038'),('12d1c134-ea21-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-12 07:26:32','2022-06-12 15:26:32','51aa216a-e7ce-11ec-9864-e00af6354038'),('13f57bae-e93f-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','22222','2022-06-11 04:28:53','2022-06-11 12:28:54','51aa216a-e7ce-11ec-9864-e00af6354038'),('1df371aa-e943-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-11 04:57:48','2022-06-11 12:57:49','51aa216a-e7ce-11ec-9864-e00af6354038'),('1fdef9aa-e86e-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','323232','2022-06-10 03:33:10','2022-06-10 11:33:11','51aa216a-e7ce-11ec-9864-e00af6354038'),('21047a56-e97a-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-11 11:31:31','2022-06-11 19:31:32','51aa216a-e7ce-11ec-9864-e00af6354038'),('2f6d2f74-ea13-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','','2022-06-12 05:47:07','2022-06-12 13:47:07','51aa216a-e7ce-11ec-9864-e00af6354038'),('2faec2dd-e892-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-10 07:51:18','2022-06-10 15:51:19','51aa216a-e7ce-11ec-9864-e00af6354038'),('39c47a9f-e948-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','','2022-06-11 05:34:22','2022-06-11 13:34:23','51aa216a-e7ce-11ec-9864-e00af6354038'),('49471af6-e97a-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-11 11:32:39','2022-06-11 19:32:39','51aa216a-e7ce-11ec-9864-e00af6354038'),('4bce02a0-e88e-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-10 07:23:28','2022-06-10 15:23:28','51aa216a-e7ce-11ec-9864-e00af6354038'),('59ce7651-e926-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','22222','2022-06-11 01:31:53','2022-06-11 09:31:54','51aa216a-e7ce-11ec-9864-e00af6354038'),('6b103546-e86d-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH93-1000-0002-0000-0000-0','dfdfd','2022-06-10 03:28:07','2022-06-10 11:28:07','51aa216a-e7ce-11ec-9864-e00af6354038'),('7ae2e6e6-e942-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 04:53:14','2022-06-11 12:53:15','51aa216a-e7ce-11ec-9864-e00af6354038'),('87489664-e944-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','','2022-06-11 05:07:54','2022-06-11 13:07:55','51aa216a-e7ce-11ec-9864-e00af6354038'),('92855abd-e892-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-10 07:54:04','2022-06-10 15:54:05','51aa216a-e7ce-11ec-9864-e00af6354038'),('95cf050f-e883-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-10 06:06:47','2022-06-10 14:06:48','51aa216a-e7ce-11ec-9864-e00af6354038'),('99222a3d-e931-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 02:52:24','2022-06-11 10:52:24','51aa216a-e7ce-11ec-9864-e00af6354038'),('9a19cb03-e941-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','323232','2022-06-11 04:46:57','2022-06-11 12:46:58','51aa216a-e7ce-11ec-9864-e00af6354038'),('9ce713e5-e933-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 03:06:49','2022-06-11 11:06:50','51aa216a-e7ce-11ec-9864-e00af6354038'),('a73c6253-e943-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-11 05:01:38','2022-06-11 13:01:39','51aa216a-e7ce-11ec-9864-e00af6354038'),('b09126b7-e944-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-11 05:09:04','2022-06-11 13:09:04','51aa216a-e7ce-11ec-9864-e00af6354038'),('b33e0515-e883-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-10 06:07:37','2022-06-10 14:07:37','51aa216a-e7ce-11ec-9864-e00af6354038'),('bbaefe31-ea11-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-12 05:36:43','2022-06-12 13:36:44','51aa216a-e7ce-11ec-9864-e00af6354038'),('bf35f7d4-e890-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-0000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-10 07:41:00','2022-06-10 15:41:01','51aa216a-e7ce-11ec-9864-e00af6354038'),('c714a38d-e979-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0002-0000-0000-0','','2022-06-11 11:29:01','2022-06-11 19:29:01','51aa216a-e7ce-11ec-9864-e00af6354038'),('ce06af3f-e9a3-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-11 16:29:51','2022-06-12 00:29:52','51aa216a-e7ce-11ec-9864-e00af6354038'),('d36f1279-e942-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','','2022-06-11 04:55:43','2022-06-11 12:55:44','51aa216a-e7ce-11ec-9864-e00af6354038'),('d7b370f4-e88d-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','dfdsfadsfadsf','2022-06-10 07:20:13','2022-06-10 15:20:13','51aa216a-e7ce-11ec-9864-e00af6354038'),('e16b9928-ea11-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','','2022-06-12 05:37:47','2022-06-12 13:37:47','51aa216a-e7ce-11ec-9864-e00af6354038'),('e8527170-e93a-11ec-9864-e00af6354038',2000,'CH93-1000-0000-0000-0000-0','CH94-0000-0000-0000-0000-0','323232','2022-06-11 03:59:02','2022-06-11 11:59:03','51aa216a-e7ce-11ec-9864-e00af6354038'),('ea571106-e92f-11ec-9864-e00af6354038',2000,'CH93-0000-0000-0000-0000-0','CH93-1000-0000-0000-0000-0','323232','2022-06-11 02:40:21','2022-06-11 10:40:22','51aa216a-e7ce-11ec-9864-e00af6354038');
/*!40000 ALTER TABLE `accbusiness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accuser`
--

DROP TABLE IF EXISTS `accuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accuser` (
  `userUserId` varchar(200) NOT NULL,
  `userUserName` varchar(200) NOT NULL,
  `userPass` varchar(45) NOT NULL,
  `userLoginTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userUserId`),
  UNIQUE KEY `userUserId_UNIQUE` (`userUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accuser`
--

LOCK TABLES `accuser` WRITE;
/*!40000 ALTER TABLE `accuser` DISABLE KEYS */;
INSERT INTO `accuser` VALUES ('0b8b788f-e86a-11ec-9864-e00af6354038','33232','3333',NULL),('1c99968d-e9a1-11ec-9864-e00af6354038','67676','7777',NULL),('51aa216a-e7ce-11ec-9864-e00af6354038','441522199909294565','annerose',NULL),('675c40de-e7cf-11ec-9864-e00af6354038','43','433',NULL),('7ff264e0-e7cf-11ec-9864-e00af6354038','AnneRose','3333',NULL),('95abb35e-e7cf-11ec-9864-e00af6354038','oppo','wewewe',NULL),('c4e9e9db-e7cf-11ec-9864-e00af6354038','56565','56565',NULL),('daf8d3ad-e7cf-11ec-9864-e00af6354038','kgako','789',NULL),('e31c6b95-e7cd-11ec-9864-e00af6354038','3220001054','32323',NULL),('e31c76d8-e7cd-11ec-9864-e00af6354038','3220001054','32323',NULL),('f2c3a5a5-e869-11ec-9864-e00af6354038','43','433',NULL);
/*!40000 ALTER TABLE `accuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 15:31:00