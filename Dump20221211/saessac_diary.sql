-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 34.64.194.141    Database: saessac
-- ------------------------------------------------------
-- Server version	8.0.26-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diary` (
  `diary_id` bigint NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `weather` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cond` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_ori_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `myplant_id` bigint DEFAULT NULL,
  `img` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`diary_id`),
  KEY `fk_Diary_User_idx` (`user_id`),
  KEY `fk_Diary_MyPlant1_idx` (`myplant_id`),
  CONSTRAINT `fk_Diary_MyPlant` FOREIGN KEY (`myplant_id`) REFERENCES `myplant` (`myplant_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_Diary_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (58,'2022년 12월 8일 목요일','오후 12:14','오늘 몬식이한테 물도주고 바람도 쐬게 해줬다!!','','condition_good','water','wind','',1,'cYsrdcJUHAXzcOOXsDeT7zaHmdOnnSb6.jpg','58.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',125,1),(59,'2022년 12월 8일 목요일','오후 12:18','몬식아 오늘은 햇빛을 좀 보렴!','','condition_soso','sun','','',1,'hJ3yim8YzaaKX4dlRbdAXVvDy6gFDPQ0.jpg','59.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',125,1),(60,'2022년 12월 8일 목요일','오후 12:18','오늘은 몬식이 상태가 좋지않다.. 몬식아 힘을 내 ㅠㅠ','','condition_bad','','','',1,NULL,NULL,NULL,125,0),(61,'2022년 12월 8일 목요일','오후 3:31','집 보내줘요 가지가지...','sun','condition_weck','','','',1,NULL,NULL,NULL,126,0);
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 15:31:07
