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
  `cabin_request_id` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` enum('all','approved','cancelled','hold','rejected') DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (152,1,102,'2024-12-12','2024-12-12','10:00:00.000000','17:00:00.000000','Krishna River','YIT','Meeting','approved','user@yash.com');
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
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` enum('all','approved','cancelled','hold','rejected') DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_model`
--

LOCK TABLES `booking_model` WRITE;
/*!40000 ALTER TABLE `booking_model` DISABLE KEYS */;
INSERT INTO `booking_model` VALUES (152,1,'2024-12-12',152,'10:00:00.000000','17:00:00.000000','Krishna River','YIT','Meeting','approved','user@yash.com');
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
INSERT INTO `booking_model_seq` VALUES (251);
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
INSERT INTO `booking_seq` VALUES (251);
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
  `booking_type` enum('multiple_day','single_day') DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `status` enum('Available','Booked','Not_Available','Requested','Reserved') DEFAULT NULL,
  PRIMARY KEY (`cabin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin`
--

LOCK TABLES `cabin` WRITE;
/*!40000 ALTER TABLE `cabin` DISABLE KEYS */;
INSERT INTO `cabin` VALUES (1,10,'single_day','Krishna River',NULL,'YIT','Available'),(2,10,'multiple_day','Bharamputra River',NULL,'YIT','Available'),(3,10,'single_day','Amazon River',NULL,'YIT','Available'),(52,10,'single_day','Tapi River',NULL,'YIT','Available'),(53,10,'single_day','River',NULL,'YIT','Available'),(54,10,'single_day','Pangeon Lake',NULL,'YIT','Reserved');
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
  `request_date` date DEFAULT NULL,
  `request_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `booking_valadity` enum('multiple_day','single_day') DEFAULT NULL,
  `cabin_avaiability` enum('Available','Booked','Not_Available','Requested','Reserved') DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` enum('all','approved','cancelled','hold','rejected') DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request`
--

LOCK TABLES `cabin_request` WRITE;
/*!40000 ALTER TABLE `cabin_request` DISABLE KEYS */;
INSERT INTO `cabin_request` VALUES (1,'2024-12-12','2024-12-12',102,'2024-12-12','10:00:00.000000','17:00:00.000000','single_day',NULL,'Krishna River','YIT','Meeting','approved','user@yash.com'),(52,'2024-12-12','2024-12-12',103,'2024-12-12','12:00:00.000000','17:00:00.000000','single_day',NULL,'Tapi River','YIT','HR Discussion','rejected','user@yash.com'),(2,'2024-12-31','2024-12-12',152,'2024-12-12','00:00:00.000000','23:00:00.000000','multiple_day',NULL,'Bharamputra River','YIT','Client Project development','hold','user@yash.com');
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
  `status` enum('all','approved','cancelled','hold','rejected') DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin_request_model`
--

LOCK TABLES `cabin_request_model` WRITE;
/*!40000 ALTER TABLE `cabin_request_model` DISABLE KEYS */;
INSERT INTO `cabin_request_model` VALUES (1,102,'2024-12-12',102,'10:00:00.000000','17:00:00.000000','Krishna River','YIT','Meeting','approved','user@yash.com'),(52,103,'2024-12-12',103,'12:00:00.000000','17:00:00.000000','Tapi River','YIT','HR Discussion','rejected','user@yash.com'),(2,152,'2024-12-12',152,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-13',153,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-14',154,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-15',155,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-16',156,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-17',157,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-18',158,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-19',159,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-20',160,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-21',161,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-22',162,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-23',163,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-24',164,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-25',165,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-26',166,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-27',167,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-28',168,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-29',169,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-30',170,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com'),(2,152,'2024-12-31',171,'00:00:00.000000','23:00:00.000000','Bharamputra River','YIT','Client Project development','hold','user@yash.com');
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
INSERT INTO `cabin_request_model_seq` VALUES (251);
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
INSERT INTO `cabin_request_seq` VALUES (251);
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
INSERT INTO `cabin_seq` VALUES (151);
/*!40000 ALTER TABLE `cabin_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_id`
--

DROP TABLE IF EXISTS `office_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_id` (
  `address` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_id`
--

LOCK TABLES `office_id` WRITE;
/*!40000 ALTER TABLE `office_id` DISABLE KEYS */;
INSERT INTO `office_id` VALUES ('INDOEW','BTC','YASH BTC PARK'),('INDORE','CIT','CRYSTAL IT PARK'),('SUPER CORRIDOR','YIT','YASH IT PARK');
/*!40000 ALTER TABLE `office_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `cabin_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `status` tinyint DEFAULT NULL,
  `valid_from` time(6) DEFAULT NULL,
  `valid_till` time(6) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `cabin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  CONSTRAINT `reservation_chk_1` CHECK ((`status` between 0 and 4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,2,0,'17:48:00.000000','18:00:00.000000','2024-12-05 05:30:00.000000','YIT',NULL,'Krishna River');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_seq`
--

DROP TABLE IF EXISTS `reservation_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_seq`
--

LOCK TABLES `reservation_seq` WRITE;
/*!40000 ALTER TABLE `reservation_seq` DISABLE KEYS */;
INSERT INTO `reservation_seq` VALUES (101);
/*!40000 ALTER TABLE `reservation_seq` ENABLE KEYS */;
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
  `role` enum('manager','super_admin','user') DEFAULT NULL,
  `status` enum('ACTIVE','BLOCKED','NOT_ACTIVE','PENDING') DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('manager@yash.com','9644344129','User','YIT','$2a$10$g9JZqCzs0mJKApar7b3EPuQ2MllWgddfJyA0sXiJ0pS6NvkwZ6nYK','manager','ACTIVE'),('superadmin@yash.com','9644344129','Admin','YIT','$2a$10$g9JZqCzs0mJKApar7b3EPuQ2MllWgddfJyA0sXiJ0pS6NvkwZ6nYK','super_admin','ACTIVE'),('user@yash.com','9111290557','User','YIT','$2a$10$irlqDcPG9.ilt3bJ1rp/w.bkmZWXAIq5.YtXrxcl.0duInBYmGx26','user','ACTIVE');
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

-- Dump completed on 2024-12-12 11:57:34
