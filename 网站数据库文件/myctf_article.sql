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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `create_time` date DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  `seo_link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_article_create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'web-1','# aaa\r\n\r\n## bb\r\n\r\n### ccc\r\n\r\n[abcd](https://www.cnblogs.com/anpengapple/p/8372958.html)\r\n\r\n\r\n# 这是展示样例\r\n\r\n- 123\r\n- 456\r\n	- 234\r\n		- 345\r\n\r\n\r\n\r\n','<pre><code>#include&lt;stdio.h&gt;\n\nint main()\n{\n    int i,j,k;\n    printf(\"\\n\");\n    for(i=1;i&lt;5;i++) { // 以下为三重循环\n        for(j=1;j&lt;5;j++) {\n            for (k=1;k&lt;5;k++) { // 确保i、j、k三位互不相同\n                if (i!=k&amp;&amp;i!=j&amp;&amp;j!=k) { \n                    printf(\"%d,%d,%d\\n\",i,j,k);\n                }\n            }\n        }\n    }\n}\n</code></pre>','2019-12-11','ws',2,NULL),(2,'web-4','test\r\n代码：\r\n    #include<stdio.h>\r\n     \r\n    int main()\r\n    {\r\n        int i,j,k;\r\n        printf(\"\\n\");\r\n        for(i=1;i<5;i++) { // 以下为三重循环\r\n            for(j=1;j<5;j++) {\r\n                for (k=1;k<5;k++) { // 确保i、j、k三位互不相同\r\n                    if (i!=k&&i!=j&&j!=k) { \r\n                        printf(\"%d,%d,%d\\n\",i,j,k);\r\n                    }\r\n                }\r\n            }\r\n        }\r\n    }','<p>test\n代码：\n    #include</p>\n<pre><code>int main()\n{\n    int i,j,k;\n    printf(\"\\n\");\n    for(i=1;i&lt;5;i++) { // 以下为三重循环\n        for(j=1;j&lt;5;j++) {\n            for (k=1;k&lt;5;k++) { // 确保i、j、k三位互不相同\n                if (i!=k&amp;&amp;i!=j&amp;&amp;j!=k) { \n                    printf(\"%d,%d,%d\\n\",i,j,k);\n                }\n            }\n        }\n    }\n}\n</code></pre>','2019-12-19','ws',13,NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
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
