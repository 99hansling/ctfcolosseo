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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `sequence` varchar(10) NOT NULL,
  `hash_password` varchar(300) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `score` int(11) NOT NULL,
  `web_score` int(11) NOT NULL,
  `pwn_score` int(11) NOT NULL,
  `reverse_score` int(11) NOT NULL,
  `misc_score` int(11) NOT NULL,
  `crypto_score` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `team_number` int(11) DEFAULT NULL,
  `team_name` varchar(200) DEFAULT NULL,
  `web_times` int(11) NOT NULL,
  `pwn_times` int(11) NOT NULL,
  `reverse_times` int(11) NOT NULL,
  `misc_times` int(11) NOT NULL,
  `crypto_times` int(11) NOT NULL,
  `total_times` int(11) NOT NULL,
  `first_blood_times` int(11) NOT NULL,
  `second_blood_times` int(11) NOT NULL,
  `third_blood_times` int(11) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `has_team` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `resetable` tinyint(1) NOT NULL,
  `is_leader` tinyint(1) NOT NULL,
  `is_member` tinyint(1) NOT NULL,
  `is_manager` tinyint(1) NOT NULL,
  `date` date DEFAULT NULL,
  `has_inform` tinyint(1) NOT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email_address` (`email_address`),
  KEY `team_number` (`team_number`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`team_number`) REFERENCES `teams` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('123456','pbkdf2:sha256:150000$bTz95NUt$8d9ae34e6caba76d34e9ba9dbac81b6725cbb42da46605cde5661f00d246a373','123',0,0,0,0,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,'123456',0,0,0,0,0,0,'2019-12-22',0),('2018213630','pbkdf2:sha256:150000$QA3kWscu$95d7b8d38a06e4ffcd65d90c2028bbb66b0e2c501ef13ece693e0f5d4cddab7e','tmp2',500,500,0,0,0,0,4,NULL,NULL,1,0,0,0,0,1,1,0,0,'2395967268@qq.com',0,1,0,0,0,0,'2019-12-12',0),('2018213640','pbkdf2:sha256:150000$KkIK6fOc$d9666a224b13e1966fa6db2a7ddf5c8996ede90a9b5ad238d810d79402b809d7','tmp1',900,900,0,0,0,0,3,NULL,NULL,1,0,0,0,0,1,0,1,0,'shuow0407@163.com',0,1,0,0,0,1,'2019-12-11',0),('2018213641','pbkdf2:sha256:150000$kyFFvFD7$03a40b7fd94ab218e6218a4898cd92bf0403d47096e2fcbf0395f9b4240b6fd0','ws',4000,3000,1000,0,0,0,1,6,'ws_team',3,1,0,0,0,4,4,0,0,'23959672681@qq.com',1,1,0,1,1,1,'2019-12-11',0),('2018213666','pbkdf2:sha256:150000$nWmodLtI$c7e68db3ff903746cb4d05937656d4ed5ab7876a704de1454004422bfbd622e3','test1',0,0,0,0,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,'sswang@bupt.edu.cn',0,1,0,0,0,0,'2019-12-22',0),('2018213701','pbkdf2:sha256:150000$DggEcYdY$f774c4a29b9580f4f6910271caa486339ec6a4138d9466f1df676d525780aa4d','xiaoxiaorenwu',0,0,0,0,0,0,7,NULL,NULL,0,0,0,0,0,0,0,0,0,'renwuxiaoxiao@126.com',0,1,0,0,0,0,'2019-12-16',0),('2018213777','pbkdf2:sha256:150000$JzUUrPfg$df40455ac1857aceacc77d119595740c9f4d01d762444772e8349ac456f2f2b6','test',1260,1260,0,0,0,0,2,7,'test_team',2,0,0,0,0,2,0,1,1,'sswang11@bupt.edu.cn',1,1,0,1,1,0,'2019-12-19',0),('2018218218','pbkdf2:sha256:150000$NA28u6de$3d58710dde74e62e7d7d280526c65a2dbc4a89775efd90dfeaa3b032d02ae6ab','wjk',0,0,0,0,0,0,8,NULL,NULL,0,0,0,0,0,0,0,0,0,'634960348@qq.com',0,0,0,0,0,0,'2019-12-14',0),('2019212484','pbkdf2:sha256:150000$hNHmYDRi$ce5bfa151f7466c0a412f36406819660cfc8caf02242a91668ad8beaf1f89ebd','sanshuiiiiii',0,0,0,0,0,0,9,NULL,NULL,0,0,0,0,0,0,0,0,0,'liuzemiao@163.com',0,0,0,0,0,0,'2019-12-16',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
