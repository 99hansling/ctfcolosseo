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
-- Table structure for table `user_relation_question`
--

DROP TABLE IF EXISTS `user_relation_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_relation_question` (
  `user_sequence` varchar(10) NOT NULL,
  `question_sequence` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `question_name` varchar(50) NOT NULL,
  `question_type` varchar(50) NOT NULL,
  `this_times` int(11) NOT NULL,
  `this_points` int(11) NOT NULL,
  `is_first_blood` tinyint(1) NOT NULL,
  `is_second_blood` tinyint(1) NOT NULL,
  `is_third_blood` tinyint(1) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`user_sequence`,`question_sequence`),
  KEY `question_sequence` (`question_sequence`),
  CONSTRAINT `user_relation_question_ibfk_1` FOREIGN KEY (`user_sequence`) REFERENCES `users` (`sequence`),
  CONSTRAINT `user_relation_question_ibfk_2` FOREIGN KEY (`question_sequence`) REFERENCES `questions` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_relation_question`
--

LOCK TABLES `user_relation_question` WRITE;
/*!40000 ALTER TABLE `user_relation_question` DISABLE KEYS */;
INSERT INTO `user_relation_question` VALUES ('2018213630',3,'tmp2','cookie','web',1,500,1,0,0,0,'2019-12-19'),('2018213640',2,'tmp1','web-1','web',2,900,0,1,0,0,'2019-12-12'),('2018213641',2,'ws','web-1','web',1,1000,1,0,0,0,'2019-12-11'),('2018213641',4,'ws','魔法篮球','pwn',1,1000,1,0,0,0,'2019-12-12'),('2018213641',12,'ws','web-3','web',1,1000,1,0,0,0,'2019-12-12'),('2018213641',13,'ws','web-4','web',1,1000,1,0,0,0,'2019-12-19'),('2018213777',2,'test','web-1','web',3,810,0,0,1,0,'2019-12-19'),('2018213777',3,'test','cookie','web',2,450,0,1,0,0,'2019-12-19');
/*!40000 ALTER TABLE `user_relation_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 19:17:00
