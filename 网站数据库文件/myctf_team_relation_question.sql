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
-- Table structure for table `team_relation_question`
--

DROP TABLE IF EXISTS `team_relation_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_relation_question` (
  `team_number` int(11) NOT NULL,
  `question_sequence` int(11) NOT NULL,
  `team_name` varchar(200) NOT NULL,
  `question_name` varchar(50) NOT NULL,
  `question_type` varchar(50) NOT NULL,
  `this_times` int(11) NOT NULL,
  `this_points` int(11) NOT NULL,
  `is_first_blood` tinyint(1) NOT NULL,
  `is_second_blood` tinyint(1) NOT NULL,
  `is_third_blood` tinyint(1) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `contributor` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`team_number`,`question_sequence`),
  KEY `question_sequence` (`question_sequence`),
  KEY `contributor` (`contributor`),
  CONSTRAINT `team_relation_question_ibfk_1` FOREIGN KEY (`team_number`) REFERENCES `teams` (`number`),
  CONSTRAINT `team_relation_question_ibfk_2` FOREIGN KEY (`question_sequence`) REFERENCES `questions` (`sequence`),
  CONSTRAINT `team_relation_question_ibfk_3` FOREIGN KEY (`contributor`) REFERENCES `users` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_relation_question`
--

LOCK TABLES `team_relation_question` WRITE;
/*!40000 ALTER TABLE `team_relation_question` DISABLE KEYS */;
INSERT INTO `team_relation_question` VALUES (6,2,'ws_team','web-1','web',1,1000,1,0,0,0,'ws','2019-12-11'),(6,4,'ws_team','魔法篮球','pwn',1,1000,1,0,0,0,'ws','2019-12-12'),(6,12,'ws_team','web-3','web',1,1000,1,0,0,0,'ws','2019-12-12'),(6,13,'ws_team','web-4','web',1,1000,1,0,0,0,'ws','2019-12-19'),(7,2,'test_team','web-1','web',3,810,0,0,1,0,'test','2019-12-19'),(7,3,'test_team','cookie','web',2,450,0,1,0,0,'test','2019-12-19');
/*!40000 ALTER TABLE `team_relation_question` ENABLE KEYS */;
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
