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
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plan` (
  `plan_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `date` date NOT NULL,
  `plan_type` varchar(45) NOT NULL,
  `my_plant_id_fk1` bigint NOT NULL,
  `done` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`plan_id`),
  KEY `fk_Calendar_User1_idx` (`user_id`),
  KEY `fk_Calendar_MyPlant1_idx` (`my_plant_id_fk1`),
  CONSTRAINT `fk_Calendar_MyPlant` FOREIGN KEY (`my_plant_id_fk1`) REFERENCES `myplant` (`myplant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Calendar_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,1,'2022-12-03','water',103,1),(2,1,'2022-12-05','water',103,1),(3,1,'2022-12-07','water',103,0),(4,1,'2022-12-09','water',103,0),(5,1,'2022-12-11','water',103,0),(6,1,'2022-12-13','water',103,0),(7,1,'2022-12-15','water',103,0),(8,1,'2022-12-17','water',103,0),(9,1,'2022-12-19','water',103,0),(10,1,'2022-12-21','water',103,0),(11,1,'2022-12-23','water',103,0),(12,1,'2022-12-25','water',103,0),(13,1,'2022-12-27','water',103,0),(14,1,'2022-12-29','water',103,0),(15,1,'2022-12-31','water',103,0),(16,1,'2023-01-02','water',103,0),(17,1,'2023-01-04','water',103,0),(18,4,'2022-12-04','water',104,1),(19,4,'2022-12-05','water',104,1),(20,4,'2022-12-06','water',104,0),(21,4,'2022-12-07','water',104,0),(22,4,'2022-12-08','water',104,0),(23,4,'2022-12-09','water',104,0),(24,4,'2022-12-10','water',104,0),(25,4,'2022-12-11','water',104,0),(26,4,'2022-12-12','water',104,0),(27,4,'2022-12-13','water',104,0),(28,4,'2022-12-14','water',104,0),(29,4,'2022-12-15','water',104,0),(30,4,'2022-12-16','water',104,0),(31,4,'2022-12-17','water',104,0),(32,4,'2022-12-18','water',104,0),(33,4,'2022-12-19','water',104,0),(34,4,'2022-12-20','water',104,0),(35,4,'2022-12-21','water',104,0),(36,4,'2022-12-22','water',104,0),(37,4,'2022-12-23','water',104,0),(38,4,'2022-12-24','water',104,0),(39,4,'2022-12-25','water',104,0),(40,4,'2022-12-26','water',104,0),(41,4,'2022-12-27','water',104,0),(42,4,'2022-12-28','water',104,0),(43,4,'2022-12-29','water',104,0),(44,4,'2022-12-30','water',104,0),(45,4,'2022-12-31','water',104,0),(46,4,'2023-01-01','water',104,0),(47,4,'2023-01-02','water',104,0),(48,4,'2023-01-03','water',104,0),(49,4,'2023-01-04','water',104,0),(50,4,'2023-01-05','water',104,0),(91,1,'2022-12-05','energy',79,1),(92,1,'2022-12-05','soil',79,0),(112,1,'2022-11-30','water',108,1),(113,1,'2022-12-03','water',108,0),(114,1,'2022-12-06','water',108,1),(115,1,'2022-12-09','water',108,0),(116,1,'2022-12-12','water',108,0),(117,1,'2022-12-15','water',108,0),(118,1,'2022-12-18','water',108,0),(119,1,'2022-12-21','water',108,0),(122,1,'2022-12-06','soil',108,0),(123,1,'2022-12-24','water',108,0);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
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

-- Dump completed on 2022-12-06 15:42:45
