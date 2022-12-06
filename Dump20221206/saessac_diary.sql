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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'd88e1d1d-7075-11ed-9d58-42010ab20002:1-443233';

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (12,'2022년 12월 2일 금요일','오후 3:03','오 대박 신기해','wind','condition_excited','wind','','',4,NULL,NULL,NULL,6,0),(40,'2022년 12월 5일 월요일','오후 6:16','군고구마 맛있당','','condition_good','water','sun','',1,'Sfn1uax9opd6zrpMZx3yYlRVZdTMia1T.jpg','40.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',81,1),(41,'2022년 12월 5일 월요일','오후 6:16','맛탕 맛있단','','condition_weck','','','',1,'Ed9zfOzVol1Ec0N6v37jfQvmeBvjnEBn.jpg','41.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',81,1),(46,'2022년 12월 5일 월요일','오후 10:48','영양제도 먹고 넌 진짜 주인 잘 만났다;','','condition_excited','soil','energy','',1,'HjiDxIHRF28m3kaweb0PWapmJZgCu6Pm.jpg','46.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',79,1),(47,'2022년 12월 5일 월요일','오후 10:48','햇빛 보니까 좋니 낭콩아','','condition_weck','soil','sun','',1,'LKgrHg55qDp8Q6sLxF5S5J3vBkjMTOum.jpg','47.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',79,1),(48,'2022년 12월 5일 월요일','오후 10:49','드뎌 강낭콩 재배 성공 !! 얄루리 ㅎㅎ','','condition_bad','pruning','soil','',1,'dWMSq1CvvpYROjt27xDVTJF2Ay07mHLs.jpg','48.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',79,1),(49,'2022년 12월 5일 월요일','오후 10:51','고구마 개마니 얻어따 개이둑 >_<','','condition_good','sun','water','',1,'eaVP96JJoLOg6nxNeOHx6VsbCsa7gEiE.jpg','49.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',81,1),(50,'2022년 12월 5일 월요일','오후 10:58','전시하기','','condition_soso','pruning','','',1,'cGL6WEuwQ074UEqDHCWuatxkxT37wQR3.jpg','50.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',108,1),(51,'2022년 12월 5일 월요일','오후 10:59','내려놓기','','condition_excited','wind','sun','',1,'bOHXyIQtHIWzLPdXBidTG4Ye7ae0gK4W.jpg','51.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',108,1),(52,'2022년 12월 5일 월요일','오후 10:59','담궈놓기','suncloud','condition_weck','energy','','',1,'VvVMlAyDjw87l10sXryKZdyJcSEN2Jnq.jpg','52.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',108,1),(53,'2022년 12월 5일 월요일','오후 11:00','무럭무럭 자라렴','','condition_good','sun','wind','water',1,'nnHIV4S8idRmXTob5u89pk1fzmD4kH9c.jpg','53.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',103,1),(54,'2022년 12월 5일 월요일','오후 11:01','예쀼다','','condition_excited','sun','energy','',1,'u5oj5jtFjPDjrUrMVtfgnKPJr0WHuxL0.jpg','54.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',103,1),(55,'2022년 12월 5일 월요일','오후 11:01','기여웡','','condition_bad','pruning','wind','',1,'YGdJlxxkT09KI2gLyAynZXeAzwSzt16t.jpg','55.jpg','/home/ec2-user/Saessak-Server/src/main/resources/userImgs/',103,1);
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 15:42:44
