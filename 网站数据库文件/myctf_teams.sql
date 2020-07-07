-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: 49.233.168.44    Database: myctf
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `score` int(11) NOT NULL,
  `web_score` int(11) NOT NULL,
  `pwn_score` int(11) NOT NULL,
  `reverse_score` int(11) NOT NULL,
  `misc_score` int(11) NOT NULL,
  `crypto_score` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `web_times` int(11) NOT NULL,
  `pwn_times` int(11) NOT NULL,
  `reverse_times` int(11) NOT NULL,
  `misc_times` int(11) NOT NULL,
  `crypto_times` int(11) NOT NULL,
  `total_times` int(11) NOT NULL,
  `first_blood_times` int(11) NOT NULL,
  `second_blood_times` int(11) NOT NULL,
  `third_blood_times` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `leader_name` varchar(200) NOT NULL,
  `member_count` int(11) NOT NULL,
  PRIMARY KEY (`number`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (6,'ws_team',4000,3000,1000,0,0,0,1,3,1,0,0,0,3,4,0,0,'2019-12-12','ws',1),(7,'test_team',1260,1260,0,0,0,0,2,2,0,0,0,0,1,0,1,1,'2019-12-19','test',1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 19:16:58
