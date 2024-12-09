-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: facilities
-- ------------------------------------------------------
-- Server version	8.0.37

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
INSERT INTO `booking_model_seq` VALUES (1);
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
INSERT INTO `booking_seq` VALUES (1);
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
INSERT INTO `cabin_request_model_seq` VALUES (1);
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
INSERT INTO `cabin_request_seq` VALUES (1);
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
INSERT INTO `office_id` VALUES ('Indore','BTC','Yash Office'),('INDORE','CIT','Crystal IT Park'),('Indore','YIT','YASH IT PARK');
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
  `cabin_name` varchar(255) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  CONSTRAINT `reservation_chk_1` CHECK ((`status` between 0 and 4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
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
INSERT INTO `reservation_seq` VALUES (1);
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
INSERT INTO `user` VALUES ('manager@yash.com','9111164844','Yash Manager','YIT','$2a$10$rQFDUzBXV85K3FE.cJTbiOUZB/5bLXWa6tRu4cH4S8QOoFHUEwSLq','manager','ACTIVE'),('superadmin@yash.com','9111164844','Yash Admin','YIT','$2a$10$rQFDUzBXV85K3FE.cJTbiOUZB/5bLXWa6tRu4cH4S8QOoFHUEwSLq','super_admin','ACTIVE'),('user@yash.com','9111164844','Yash User','YIT','$2a$10$rQFDUzBXV85K3FE.cJTbiOUZB/5bLXWa6tRu4cH4S8QOoFHUEwSLq','user','ACTIVE');
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

-- Dump completed on 2024-12-09 18:46:41
