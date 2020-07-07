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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `time` date DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `contents` varchar(500) DEFAULT NULL,
  `is_dealt` tinyint(1) NOT NULL,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'system','系统','ws','2019-12-11','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(2,'system','系统','tmp1','2019-12-11','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(3,'manager','tmp1','ws','2019-12-11','管理员消息','123456',0),(4,'system','系统','ws','2019-12-11','创建战队','尊敬的ws：\n    恭喜你成功创建了战队！您的战队名为：ws_team \n赶快通知你的队友加入吧！',0),(5,'team_apply','tmp1','ws','2019-12-12','战队申请','用户：tmp1 申请加入您的战队，请确认是否同意。',1),(6,'team_agree','ws','tmp1','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(7,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp1 您可在战队信息界面查看他的个人信息。',0),(8,'system','系统','tmp2','2019-12-11','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(10,'team_agree','ws','tmp2','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(11,'system','系统','tmp1','2019-12-12','战队加入新成员','尊敬的tmp1：\n    您的战队：ws_team 新增了一位新成员：tmp2 您可在战队信息界面查看他的个人信息。',0),(12,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp2 您可在战队信息界面查看他的个人信息。',0),(13,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您的队长ws解散了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(14,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您的队长ws解散了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(15,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您的队长ws解散了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(16,'system','系统','ws','2019-12-12','创建战队','尊敬的ws：\n    恭喜你成功创建了战队！您的战队名为：ws_team \n赶快通知你的队友加入吧！',0),(17,'team_apply','tmp1','ws','2019-12-12','战队申请','用户：tmp1 申请加入您的战队，请确认是否同意。',1),(18,'system','系统','tmp2','2019-12-12','创建战队','尊敬的tmp2：\n    恭喜你成功创建了战队！您的战队名为：tmp2_team \n赶快通知你的队友加入吧！',0),(19,'team_agree','ws','tmp1','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(20,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp1 您可在战队信息界面查看他的个人信息。',0),(21,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您的队长ws解散了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(22,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您的队长ws解散了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(23,'team_apply','ws','tmp2','2019-12-12','战队申请','用户：ws 申请加入您的战队，请确认是否同意。',1),(24,'system','系统','tmp2','2019-12-12','战队加入新成员','尊敬的tmp2：\n    您的战队：tmp2_team 新增了一位新成员：ws 您可在战队信息界面查看他的个人信息。',0),(25,'team_agree','tmp2','ws','2019-12-12','成功加入战队','战队：tmp2_team 的队长：tmp2 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(26,'system','系统','tmp2','2019-12-12','战队解散','尊敬的tmp2：\n    您的队长tmp2解散了您的战队：tmp2_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(27,'system','系统','ws','2019-12-12','战队解散','尊敬的tmp2：\n    您的队长tmp2解散了您的战队：tmp2_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(28,'system','系统','ws','2019-12-12','创建战队','尊敬的ws：\n    恭喜你成功创建了战队！您的战队名为：ws_team \n赶快通知你的队友加入吧！',0),(29,'team_apply','tmp1','ws','2019-12-12','战队申请','用户：tmp1 申请加入您的战队，请确认是否同意。',1),(30,'team_agree','ws','tmp1','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(31,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp1 您可在战队信息界面查看他的个人信息。',0),(32,'system','系统','tmp1','2019-12-12','战队退出','尊敬的tmp1：\n    您退出了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(33,'system','系统','ws','2019-12-12','战队成员退出','尊敬的ws：\n    您的战队：ws_team 有一位成员退出，他的用户名是：tmp1您可以查看您的战队信息，查看您的战队变化。',0),(35,'team_agree','ws','tmp2','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(36,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp2 您可在战队信息界面查看他的个人信息。',0),(37,'team_agree','ws','tmp2','2019-12-12','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(38,'system','系统','ws','2019-12-12','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：tmp2 您可在战队信息界面查看他的个人信息。',0),(39,'team_apply','tmp1','ws','2019-12-12','战队申请','用户：tmp1 申请加入您的战队，请确认是否同意。',0),(40,'system','系统','tmp1','2019-12-12','创建战队','尊敬的tmp1：\n    恭喜你成功创建了战队！您的战队名为：team1 \n赶快通知你的队友加入吧！',0),(41,'system','系统','xiaoxiaorenwu','2019-12-12','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(42,'system','系统','tmp2','2019-12-12','战队退出','尊敬的tmp2：\n    您退出了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(43,'system','系统','ws','2019-12-12','战队成员退出','尊敬的ws：\n    您的战队：ws_team 有一位成员退出，他的用户名是：tmp2您可以查看您的战队信息，查看您的战队变化。',0),(44,'system','系统','ws','2019-12-12','战队解散','尊敬的ws：\n    您退出了您的战队：ws_team  由于战队中没有其他成员，战队已经解散。您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(45,'system','系统','tmp4','2019-12-12','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(46,'team_apply','tmp4','tmp1','2019-12-12','战队申请','用户：tmp4 申请加入您的战队，请确认是否同意。',1),(47,'system','系统','ws','2019-12-12','创建战队','尊敬的ws：\n    恭喜你成功创建了战队！您的战队名为：ws_team \n赶快通知你的队友加入吧！',0),(48,'system','系统','tmp1','2019-12-12','战队加入新成员','尊敬的tmp1：\n    您的战队：team1 新增了一位新成员：tmp4 您可在战队信息界面查看他的个人信息。',0),(49,'team_agree','tmp1','tmp4','2019-12-12','成功加入战队','战队：team1 的队长：tmp1 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(50,'system','系统','tmp1','2019-12-12','战队成员退出','尊敬的tmp1：\n    您的战队：team1 有一位成员退出，他的用户名是：tmp4您可以查看您的战队信息，查看您的战队变化。',0),(51,'system','系统','tmp4','2019-12-12','战队退出','尊敬的tmp4：\n    您退出了您的战队：team1您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(52,'system','系统','19级','2019-12-16','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(53,'team_apply','tmp2','tmp1','2019-12-19','战队申请','用户：tmp2 申请加入您的战队，请确认是否同意。',1),(54,'team_agree','tmp1','tmp2','2019-12-19','成功加入战队','战队：team1 的队长：tmp1 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(55,'system','系统','tmp1','2019-12-19','战队加入新成员','尊敬的tmp1：\n    您的战队：team1 新增了一位新成员：tmp2 您可在战队信息界面查看他的个人信息。',0),(56,'system','系统','test','2019-12-19','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0),(57,'team_apply','test','ws','2019-12-19','战队申请','用户：test 申请加入您的战队，请确认是否同意。',1),(58,'system','系统','ws','2019-12-19','战队加入新成员','尊敬的ws：\n    您的战队：ws_team 新增了一位新成员：test 您可在战队信息界面查看他的个人信息。',0),(59,'team_agree','ws','test','2019-12-19','成功加入战队','战队：ws_team 的队长：ws 同意了你的战队申请！您可以点击右上方查看自己的战队信息',0),(60,'system','系统','ws','2019-12-19','战队成员退出','尊敬的ws：\n    您的战队：ws_team 有一位成员退出，他的用户名是：test您可以查看您的战队信息，查看您的战队变化。',0),(61,'system','系统','test','2019-12-19','战队退出','尊敬的test：\n    您退出了您的战队：ws_team您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(62,'team_apply','test','ws','2019-12-19','战队申请','用户：test 申请加入您的战队，请确认是否同意。',0),(63,'system','系统','test','2019-12-19','创建战队','尊敬的test：\n    恭喜你成功创建了战队！您的战队名为：test_team \n赶快通知你的队友加入吧！',0),(64,'system','系统','tmp1','2019-12-19','退出战队','尊敬的tmp1：\n    您退出了您的战队：team1 战队队长的身份已经交给：tmp2 您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(65,'system','系统','tmp2','2019-12-19','退出战队','尊敬的tmp2：\n    您的队长：tmp1 退出了战队：team1 由于您的战队贡献度最大，战队队长的身份已经自动交给了您。快去管理您的战队吧。',0),(66,'system','系统','tmp2','2019-12-19','战队解散','尊敬的tmp2：\n    您退出了您的战队：team1  由于战队中没有其他成员，战队已经解散。您可以点击team导航栏，创建新的战队或者加入其他战队！',0),(67,'manager','tmp1','ws','2019-12-19','管理员消息','hh',0),(68,'manager','ws','tmp1','2019-12-19','管理员消息','你作弊了',0),(69,'system','系统','test1','2019-12-22','Welcome','尊敬的用户，恭喜你注册成功！在这里开始你的CTF之旅吧！',0);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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
