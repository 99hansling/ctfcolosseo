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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(200) NOT NULL,
  `time` date DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `contents` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'tmp1','2019-12-11','管理员消息','     hello\r\nwelcome'),(2,'ws','2019-12-12','关于战队信息的处理','1、申请战队需要队长同意后才能进入战队；\r\n2、只能申请一个战队，等待队长同意/拒绝后才隐藏/显示申请按钮；\r\n3、当用户申请战队后又创建了新的战队，则申请的战队的队长不能再处理消息，会显示“该用户已有战队”；\r\n4、当战队加入新成员，移除/退出成员时候，战队内每个人都会接收到相应的消息；\r\n5、队长退出战队，战队队长身份自动交给剩余人员中战队贡献最大的用户，并发送相关消息。'),(3,'ws','2019-12-12','notice','2121e\r\n12ee12'),(4,'ws','2019-12-16','网站的更新','修改了一些bug\r\n1、writeup：\r\n    现在是一人一题只能写一个writeup了QwQ，如果再写的话就是修改。\r\n    writeup列表显示的不是所有题目的了，而是只显示该题的writeup。\r\n2、战队\r\n    bug已经修复，应该可以正常申请战队了QwQ（有bug私信：ws）\r\n3、题目\r\n    题目链接改成在新标签页打开链接了QwQ'),(5,'ws','2019-12-19','test修改','这是修改');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 19:16:57
