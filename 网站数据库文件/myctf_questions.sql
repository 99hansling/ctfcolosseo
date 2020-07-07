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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `total_finish_times` int(11) NOT NULL,
  `points_now` int(11) NOT NULL,
  `hyper_link` varchar(200) DEFAULT NULL,
  `is_hinted` tinyint(1) DEFAULT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `flag` varchar(150) NOT NULL,
  `first_blood_user` varchar(200) DEFAULT NULL,
  `second_blood_user` varchar(200) DEFAULT NULL,
  `third_blood_user` varchar(200) DEFAULT NULL,
  `first_blood_team` int(11) DEFAULT NULL,
  `second_blood_team` int(11) DEFAULT NULL,
  `third_blood_team` int(11) DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `name` (`name`),
  KEY `first_blood_user` (`first_blood_user`),
  KEY `second_blood_user` (`second_blood_user`),
  KEY `third_blood_user` (`third_blood_user`),
  KEY `first_blood_team` (`first_blood_team`),
  KEY `second_blood_team` (`second_blood_team`),
  KEY `third_blood_team` (`third_blood_team`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`first_blood_user`) REFERENCES `users` (`name`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`second_blood_user`) REFERENCES `users` (`name`),
  CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`third_blood_user`) REFERENCES `users` (`name`),
  CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`first_blood_team`) REFERENCES `teams` (`number`),
  CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`second_blood_team`) REFERENCES `teams` (`number`),
  CONSTRAINT `questions_ibfk_6` FOREIGN KEY (`third_blood_team`) REFERENCES `teams` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'web-1','web','easy',3,729,'http://49.233.168.44/home_page/web_one',0,'jkbjbhhhhhhhh ','flag{We1c0m3t0Col0sseoCTFi3Ld}','ws','tmp1','test',NULL,NULL,NULL),(3,'cookie','web','easy',2,405,'http://49.233.168.44/home_page/web_two',0,'Some good thing is in the cookie, try to get it.','flag{cookie}','tmp2','test',NULL,NULL,7,NULL),(4,'魔法篮球','pwn','medium',1,900,'http://49.233.168.44/file/download/magic_basketball',0,'爱国肥宅的篮球梦  nc 49.233.168.44 10000','CTFi3ld{W3ll_Pwn_world_i3_interesting_isn_it_?}','ws',NULL,NULL,NULL,NULL,NULL),(5,'one_byte','pwn','hard',0,1000,'http://49.233.168.44/file/download/one_byte',0,'一个字节能做什么？？   nc 49.233.168.44 10002','CTFi3ld{On3_Byte_1s_powerFu1!!!!:)}',NULL,NULL,NULL,NULL,NULL,NULL),(6,'平行世界','pwn','easy',0,1000,'http://49.233.168.44/file/download/other_world',0,'我来自平行世界，大佬你呢？？  nc 49.233.168.44 10001','CTFi3ld{I_c0m3_from_BUPT!!!!!:)}',NULL,NULL,NULL,NULL,NULL,NULL),(7,'easyphp','web','easy',0,500,'http://49.233.168.44:10010',0,'一道基础的php解密','flag{tsctfj_easy_decode}',NULL,NULL,NULL,NULL,NULL,NULL),(8,'easyphp2','web','medium',0,800,'http://49.233.168.44:10011',0,'一道较基础的php题目','hitcon{theworldisnotbeautiful,becauzeofyou}',NULL,NULL,NULL,NULL,NULL,NULL),(10,'easyphp3','web','medium',0,500,'http://49.233.168.44:10012',0,'这还是一个基础的php解密。。。。','CTFi3ld{This_is_a_easy_php_encode}',NULL,NULL,NULL,NULL,NULL,NULL),(11,'easyphp4','web','easy',0,500,'http://49.233.168.44:10013',0,'没错。。。还是基础的php解密。。。','CTFi3ld{This_is_also_a_easy_php_encode....:( }',NULL,NULL,NULL,NULL,NULL,NULL),(12,'web-3','web','easy',1,900,'none',0,'212','flag{}','ws',NULL,NULL,NULL,NULL,NULL),(13,'web-4','web','medium',1,900,'None',0,'test','flag{web-4}','ws',NULL,NULL,6,NULL,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 19:16:59
