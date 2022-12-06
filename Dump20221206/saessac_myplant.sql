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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'd88e1d1d-7075-11ed-9d58-42010ab20002:1-443232';

--
-- Table structure for table `myplant`
--

DROP TABLE IF EXISTS `myplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `myplant` (
  `myplant_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nickname` varchar(10) NOT NULL,
  `species` varchar(45) NOT NULL,
  `sun_condition` float DEFAULT NULL,
  `wind_condition` float DEFAULT NULL,
  `water_condition` float DEFAULT NULL,
  `latest_water_date` date NOT NULL,
  `water_cycle` int NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `planted_region` varchar(80) NOT NULL DEFAULT 'Gumi-si, Gyeongsangbuk-do',
  `icon` varchar(45) NOT NULL DEFAULT '04n',
  `rec_str` varchar(45) NOT NULL DEFAULT '해가 쨍쨍해요',
  `list_order` int NOT NULL,
  PRIMARY KEY (`myplant_id`),
  KEY `fk_MyPlant_User1_idx` (`user_id`),
  CONSTRAINT `fk_MyPlant_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myplant`
--

LOCK TABLES `myplant` WRITE;
/*!40000 ALTER TABLE `myplant` DISABLE KEYS */;
INSERT INTO `myplant` VALUES (6,4,'민식이','은행목',5,5,5,'2022-11-17',3,'https://www.purdamarket.com/upload/files/files1614591891784/T1614826964943.jpg',1,'seoul','01d','-3.0ºC\n해가 쨍쨍하니 창가로 옮겨주세요',2),(7,4,'겸식이!!','네펜데스',2.4,2.2,5,'2022-11-29',1,'https://i.pinimg.com/originals/a7/88/5d/a7885de98415177211449879be3bd960.png',1,'seoul','01d','-3.0ºC\n해가 쨍쨍해요',0),(42,4,'가지가지','가지',2,1,1,'2022-11-22',3,'http://www.seehint.com/catalog/2012/2012_08/aubergine_-_eggplant.jpg',1,'seoul','01d','-3.0ºC\n해가 쨍쨍해요',3),(68,4,'test','tt',3,3,3,'2022-11-28',3,'no-img',0,'seoul','01d','-3.0ºC\n해가 쨍쨍해요',1),(72,4,'몬스몬스ㄱ','몬스테라',2,2,2,'2022-11-19',10,'http://www.nongsaro.go.kr/cms_contents/301/16449_MF_ATTACH_01.jpg',1,'seoul','01d','-3.0ºC\n해가 쨍쨍해요',0),(79,1,'낭콩이','강낭콩',3,3,3,'2022-12-03',7,'https://dbscthumb-phinf.pstatic.net/3041_000_1/20140520153056874_0VI78PYKK.jpg/TC43_31_650.jpg?type=m4500_4500_fst_n&wm=Y',1,'Gumi-si, Gyeongsangbuk-do','01d','4.0ºC\n해가 쨍쨍해요',2),(80,4,'목이','행운목',2,1,0,'2022-12-02',2,'http://www.nongsaro.go.kr/cms_contents/301/12983_MF_ATTACH_01.jpg',1,'Gumi-si, Gyeongsangbuk-do','01d','4.0ºC\n해가 쨍쨍해요',0),(81,1,'군고구마냠냠','고구마',5,2,1,'2022-11-21',11,'https://dbscthumb-phinf.pstatic.net/3041_000_1/20140520153002185_YTB6BH1J7.jpg/TC123_1.jpg?type=m4500_4500_fst_n&wm=Y',1,'Gumi-si, Gyeongsangbuk-do','01d','3.0ºC\n해가 쨍쨍하니 창가로 옮겨주세요',1),(100,4,'고굼스','고구마',1,1,0,'2022-12-04',0,'https://dbscthumb-phinf.pstatic.net/3041_000_1/20140520153002185_YTB6BH1J7.jpg/TC123_1.jpg?type=m4500_4500_fst_n&wm=Y',1,'Gumi-si, Gyeongsangbuk-do','04n','0.0ºC\n구름이 몽글몽글',0),(103,1,'배고니','베고니아',2,1,2,'2022-12-05',2,'https://dbscthumb-phinf.pstatic.net/3041_000_1/20140520153659868_8BV8EBCKU.jpg/2010051121240554.jpg?type=m4500_4500_fst_n&wm=Y',1,'Gumi-si, Gyeongsangbuk-do','03d','5.0ºC\n구름이 몽글몽글',3),(104,4,'nickname','species',2,2,2,'2022-12-05',1,'img-url',1,'Gumi-si, Gyeongsangbuk-do','03d','4.0ºC\n구름이 몽글몽글',0),(108,1,'개운하니','개운죽',3,3,0,'2022-12-06',3,'http://www.nongsaro.go.kr/cms_contents/301/12954_MF_ATTACH_01.jpg',1,'Gumi-si, Gyeongsangbuk-do','01d','1.0ºC\n해가 쨍쨍해요',0);
/*!40000 ALTER TABLE `myplant` ENABLE KEYS */;
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

-- Dump completed on 2022-12-06 15:42:42
