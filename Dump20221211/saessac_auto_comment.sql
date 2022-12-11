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
-- Table structure for table `auto_comment`
--

DROP TABLE IF EXISTS `auto_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auto_comment` (
  `auto_comment_id` bigint NOT NULL AUTO_INCREMENT,
  `link` varchar(500) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `question_id` bigint NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`auto_comment_id`),
  KEY `auto_question_idx` (`question_id`),
  CONSTRAINT `auto_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_comment`
--

LOCK TABLES `auto_comment` WRITE;
/*!40000 ALTER TABLE `auto_comment` DISABLE KEYS */;
INSERT INTO `auto_comment` VALUES (17,'https://kin.naver.com/qna/detail.naver?d1id=11&dirId=111607&docId=432373396','다육식물 반점 생겼어요 저렇게 반점 생겼는뎅⋯','#다육 #이름',601,'성미인 입니다 다육식물은 커피컵에 키우는 것은 별로 추천하지 않습니다 이유는 다육식물은 관수를 하게 되면 흙속에 수분이 1~3일안에 모두 건조되는 것이 좋기 때문입니다  또한 식물⋯','22/12/06 06:44:11'),(18,'https://kin.naver.com/qna/detail.naver?d1id=11&dirId=111607&docId=431777413','벤자민 잎에 갈색 반점이 생겨요 잎이 새로 ⋯','#고무나무 #벤자민고무나무 #반점',602,'공기가 잘 통하는곳인지 잘 봐보세요. 모든 식물은 통풍에 극도로 예민합니다. 공기가 잘 통하게 해주세요.. 벤자민 고무나무 잎 ( 벤자민 잎 ) 1. 잎이 노랗게 변하며 떨어질 경⋯','22/12/06 07:51:17'),(19,'https://kin.naver.com/qna/detail.naver?d1id=8&dirId=8080104&docId=408288809','몬스테라 왜이럴까요 몬스테라를 선물로 받아서⋯','#몬스테라',608,'몬스테라는 16도~20도 정도의 온도에서 가장 잘 자라는 열대성 식물입니다. 한겨울 너무 추운 베란다에서는 잎이 냉해를 입을 수 있으니 따뜻한 곳에서 키우시기 바랍니다. 잎의 증상⋯','22/12/08 06:45:48');
/*!40000 ALTER TABLE `auto_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 15:31:05
