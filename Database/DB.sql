-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: facilities
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL,
  `cabin_id` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,2,'2024-12-02','2024-12-02','13:00:00.000000','17:00:00.000000','YIT','Me','mehuljain5520@gmail.com'),(2,1,'2024-12-02','2024-12-02','10:00:00.000000','17:00:00.000000','YIT','Meeting','jain10836@gmail.com');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_model`
--

DROP TABLE IF EXISTS `booking_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_model` (
  `booking_id` int NOT NULL,
  `cabin_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `sno` int NOT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_model`
--

LOCK TABLES `booking_model` WRITE;
/*!40000 ALTER TABLE `booking_model` DISABLE KEYS */;
INSERT INTO `booking_model` VALUES (1,2,'2024-12-02',1,'13:00:00.000000','17:00:00.000000','YIT','Me','mehuljain5520@gmail.com'),(2,1,'2024-12-02',2,'10:00:00.000000','17:00:00.000000','YIT','Meeting','jain10836@gmail.com');
/*!40000 ALTER TABLE `booking_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_model_seq`
--

DROP TABLE IF EXISTS `booking_model_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_model_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_model_seq`
--

LOCK TABLES `booking_model_seq` WRITE;
/*!40000 ALTER TABLE `booking_model_seq` DISABLE KEYS */;
INSERT INTO `booking_model_seq` VALUES (101);
/*!40000 ALTER TABLE `booking_model_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_seq`
--

DROP TABLE IF EXISTS `booking_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_seq`
--

LOCK TABLES `booking_seq` WRITE;
/*!40000 ALTER TABLE `booking_seq` DISABLE KEYS */;
INSERT INTO `booking_seq` VALUES (101);
/*!40000 ALTER TABLE `booking_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin`
--

DROP TABLE IF EXISTS `cabin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin` (
  `cabin_id` int NOT NULL,
  `capacity` int NOT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `status` enum('Avaliable','Booked','Not_Available','Requested') DEFAULT NULL,
  PRIMARY KEY (`cabin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin`
--

LOCK TABLES `cabin` WRITE;
/*!40000 ALTER TABLE `cabin` DISABLE KEYS */;
INSERT INTO `cabin` VALUES (1,10,'KRISHNA RIVER',NULL,'YIT',NULL),(2,5,'BHRAMPUTR RIVER',NULL,'YIT',NULL),(3,10,'RIVER',NULL,'YIT',NULL);
/*!40000 ALTER TABLE `cabin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin_request`
--

DROP TABLE IF EXISTS `cabin_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin_request` (
  `cabin_id` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `request_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `booking_valadity` enum('multiple_day','single_day') DEFAULT NULL,
  `cabin_avaiability` enum('Avaliable','Booked','Not_Available','Requested') DEFAULT NULL,
  `status` enum('all','approved','hold','rejected') DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request`
--

LOCK TABLES `cabin_request` WRITE;
/*!40000 ALTER TABLE `cabin_request` DISABLE KEYS */;
INSERT INTO `cabin_request` VALUES (2,'2024-12-21',1,'2024-12-28','00:00:00.000000','23:00:00.000000','BHRAMPUTR RIVER','YIT','Meeting','mehuljain5520@gmail.com','multiple_day',NULL,'hold'),(2,'2024-12-02',2,'2024-12-02','13:00:00.000000','17:00:00.000000','BHRAMPUTR RIVER','YIT','Me','mehuljain5520@gmail.com','single_day',NULL,'approved'),(1,'2024-12-02',52,'2024-12-02','10:00:00.000000','17:00:00.000000','KRISHNA RIVER','YIT','Meeting','jain10836@gmail.com','single_day',NULL,'approved');
/*!40000 ALTER TABLE `cabin_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin_request_model`
--

DROP TABLE IF EXISTS `cabin_request_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin_request_model` (
  `cabin_id` int NOT NULL,
  `cabin_request_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `sno` int NOT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `status` enum('all','approved','hold','rejected') DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request_model`
--

LOCK TABLES `cabin_request_model` WRITE;
/*!40000 ALTER TABLE `cabin_request_model` DISABLE KEYS */;
INSERT INTO `cabin_request_model` VALUES (1,2,'2024-12-02',1,'13:00:00.000000','17:00:00.000000','KRISHNA RIVER','YIT','Me','mehuljain5520@gmail.com','approved'),(3,52,'2024-12-02',2,'10:00:00.000000','17:00:00.000000','RIVER','YIT','Meeting','jain10836@gmail.com','approved');
/*!40000 ALTER TABLE `cabin_request_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin_request_model_seq`
--

DROP TABLE IF EXISTS `cabin_request_model_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin_request_model_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request_model_seq`
--

LOCK TABLES `cabin_request_model_seq` WRITE;
/*!40000 ALTER TABLE `cabin_request_model_seq` DISABLE KEYS */;
INSERT INTO `cabin_request_model_seq` VALUES (101);
/*!40000 ALTER TABLE `cabin_request_model_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin_request_seq`
--

DROP TABLE IF EXISTS `cabin_request_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin_request_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request_seq`
--

LOCK TABLES `cabin_request_seq` WRITE;
/*!40000 ALTER TABLE `cabin_request_seq` DISABLE KEYS */;
INSERT INTO `cabin_request_seq` VALUES (151);
/*!40000 ALTER TABLE `cabin_request_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin_seq`
--

DROP TABLE IF EXISTS `cabin_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_seq`
--

LOCK TABLES `cabin_seq` WRITE;
/*!40000 ALTER TABLE `cabin_seq` DISABLE KEYS */;
INSERT INTO `cabin_seq` VALUES (1);
/*!40000 ALTER TABLE `cabin_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email_id` varchar(255) NOT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('manager','user') DEFAULT NULL,
  `status` enum('ACTIVE','BLOCKED','NOT_ACTIVE','PENDING') DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('jain10836@gmail.com','9644344129','Mehul Jain','YIT','abc','user','ACTIVE'),('mehuljain1590@gmail.com','878','Mehul','YIT','abc','manager','ACTIVE'),('mehuljain5520@gmail.com','9787','mehul','YIT','abc','user','ACTIVE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 14:44:51
