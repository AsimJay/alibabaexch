-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_game3-1
-- ------------------------------------------------------
-- Server version	8.0.39-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_control`
--

DROP TABLE IF EXISTS `admin_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_control` (
  `id` int NOT NULL AUTO_INCREMENT,
  `run_function` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_control`
--

LOCK TABLES `admin_control` WRITE;
/*!40000 ALTER TABLE `admin_control` DISABLE KEYS */;
INSERT INTO `admin_control` VALUES (1,0);
/*!40000 ALTER TABLE `admin_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biddetails`
--

DROP TABLE IF EXISTS `biddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biddetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bid_number` int DEFAULT NULL,
  `bid_amount` decimal(10,2) DEFAULT NULL,
  `bid_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_User` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=940 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biddetails`
--

LOCK TABLES `biddetails` WRITE;
/*!40000 ALTER TABLE `biddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `biddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_digit`
--

DROP TABLE IF EXISTS `first_digit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `first_digit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_digit`
--

LOCK TABLES `first_digit` WRITE;
/*!40000 ALTER TABLE `first_digit` DISABLE KEYS */;
INSERT INTO `first_digit` VALUES (1,0,0),(2,1,0),(3,2,0),(4,3,0),(5,4,0),(6,5,0),(7,6,0),(8,7,0),(9,8,0),(10,9,0);
/*!40000 ALTER TABLE `first_digit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firstbiddetails`
--

DROP TABLE IF EXISTS `firstbiddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firstbiddetails` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bid_number` int DEFAULT NULL,
  `bid_amount` int DEFAULT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstbiddetails`
--

LOCK TABLES `firstbiddetails` WRITE;
/*!40000 ALTER TABLE `firstbiddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `firstbiddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `input_time`
--

DROP TABLE IF EXISTS `input_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `input_time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input_time`
--

LOCK TABLES `input_time` WRITE;
/*!40000 ALTER TABLE `input_time` DISABLE KEYS */;
INSERT INTO `input_time` VALUES (1,'19:15:00');
/*!40000 ALTER TABLE `input_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckynumber`
--

DROP TABLE IF EXISTS `luckynumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckynumber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckynumber`
--

LOCK TABLES `luckynumber` WRITE;
/*!40000 ALTER TABLE `luckynumber` DISABLE KEYS */;
INSERT INTO `luckynumber` VALUES (1,0,0);
/*!40000 ALTER TABLE `luckynumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `suspend` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (1);
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `number_table`
--

DROP TABLE IF EXISTS `number_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `number_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `number_table`
--

LOCK TABLES `number_table` WRITE;
/*!40000 ALTER TABLE `number_table` DISABLE KEYS */;
INSERT INTO `number_table` VALUES (1,0,0,'2023-06-07 13:03:22'),(2,1,0,'2023-06-07 13:03:22'),(3,2,0,'2023-06-07 13:03:22'),(4,3,0,'2023-06-07 13:03:22'),(5,4,0,'2023-06-07 13:03:22'),(6,5,0,'2023-06-07 13:03:22'),(7,6,0,'2023-06-07 13:03:22'),(8,7,0,'2023-06-07 13:03:22'),(9,8,0,'2023-06-07 13:03:22'),(10,9,0,'2023-06-07 13:03:22'),(11,10,0,'2023-06-07 13:03:22'),(12,11,0,'2023-06-07 13:03:22'),(13,12,0,'2023-06-07 13:03:22'),(14,13,0,'2023-06-07 13:03:22'),(15,14,0,'2023-06-07 13:03:22'),(16,15,0,'2023-06-07 13:03:22'),(17,16,0,'2023-06-07 13:03:22'),(18,17,0,'2023-06-07 13:03:22'),(19,18,0,'2023-06-07 13:03:22'),(20,19,0,'2023-06-07 13:03:22'),(21,20,0,'2023-06-07 13:03:22'),(22,21,0,'2023-06-07 13:03:22'),(23,22,0,'2023-06-07 13:03:22'),(24,23,0,'2023-06-07 13:03:22'),(25,24,0,'2023-06-07 13:03:22'),(26,25,0,'2023-06-07 13:03:22'),(27,26,0,'2023-06-07 13:03:22'),(28,27,0,'2023-06-07 13:03:22'),(29,28,0,'2023-06-07 13:03:22'),(30,29,0,'2023-06-07 13:03:22'),(31,30,0,'2023-06-07 13:03:22'),(32,31,0,'2023-06-07 13:03:22'),(33,32,0,'2023-06-07 13:03:22'),(34,33,0,'2023-06-07 13:03:22'),(35,34,0,'2023-06-07 13:03:22'),(36,35,0,'2023-06-07 13:03:22'),(37,36,0,'2023-06-07 13:03:22'),(38,37,0,'2023-06-07 13:03:22'),(39,38,0,'2023-06-07 13:03:22'),(40,39,0,'2023-06-07 13:03:22'),(41,40,0,'2023-06-07 13:03:22'),(42,41,0,'2023-06-07 13:03:22'),(43,42,0,'2023-06-07 13:03:22'),(44,43,0,'2023-06-07 13:03:22'),(45,44,0,'2023-06-07 13:03:22'),(46,45,0,'2023-06-07 13:03:22'),(47,46,0,'2023-06-07 13:03:22'),(48,47,0,'2023-06-07 13:03:22'),(49,48,0,'2023-06-07 13:03:22'),(50,49,0,'2023-06-07 13:03:22'),(51,50,0,'2023-06-07 13:03:22'),(52,51,0,'2023-06-07 13:03:22'),(53,52,0,'2023-06-07 13:03:22'),(54,53,0,'2023-06-07 13:03:22'),(55,54,0,'2023-06-07 13:03:22'),(56,55,0,'2023-06-07 13:03:22'),(57,56,0,'2023-06-07 13:03:22'),(58,57,0,'2023-06-07 13:03:22'),(59,58,0,'2023-06-07 13:03:22'),(60,59,0,'2023-06-07 13:03:22'),(61,60,0,'2023-06-07 13:03:22'),(62,61,0,'2023-06-07 13:03:22'),(63,62,0,'2023-06-07 13:03:22'),(64,63,0,'2023-06-07 13:03:22'),(65,64,0,'2023-06-07 13:03:22'),(66,65,0,'2023-06-07 13:03:22'),(67,66,0,'2023-06-07 13:03:22'),(68,67,0,'2023-06-07 13:03:22'),(69,68,0,'2023-06-07 13:03:22'),(70,69,0,'2023-06-07 13:03:22'),(71,70,0,'2023-06-07 13:03:22'),(72,71,0,'2023-06-07 13:03:22'),(73,72,0,'2023-06-07 13:03:22'),(74,73,0,'2023-06-07 13:03:22'),(75,74,0,'2023-06-07 13:03:22'),(76,75,0,'2023-06-07 13:03:22'),(77,76,0,'2023-06-07 13:03:22'),(78,77,0,'2023-06-07 13:03:22'),(79,78,0,'2023-06-07 13:03:22'),(80,79,0,'2023-06-07 13:03:22'),(81,80,0,'2023-06-07 13:03:22'),(82,81,0,'2023-06-07 13:03:22'),(83,82,0,'2023-06-07 13:03:22'),(84,83,0,'2023-06-07 13:03:22'),(85,84,0,'2023-06-07 13:03:22'),(86,85,0,'2023-06-07 13:03:22'),(87,86,0,'2023-06-07 13:03:22'),(88,87,0,'2023-06-07 13:03:22'),(89,88,0,'2023-06-07 13:03:22'),(90,89,0,'2023-06-07 13:03:22'),(91,90,0,'2023-06-07 13:03:22'),(92,91,0,'2023-06-07 13:03:22'),(93,92,0,'2023-06-07 13:03:22'),(94,93,0,'2023-06-07 13:03:22'),(95,94,0,'2023-06-07 13:03:22'),(96,95,0,'2023-06-07 13:03:22'),(97,96,0,'2023-06-07 13:03:22'),(98,97,0,'2023-06-07 13:03:22'),(99,98,0,'2023-06-07 13:03:22'),(100,99,0,'2023-06-07 13:03:22');
/*!40000 ALTER TABLE `number_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profit_percent`
--

DROP TABLE IF EXISTS `profit_percent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profit_percent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `digit` int NOT NULL,
  `percentage` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profit_percent`
--

LOCK TABLES `profit_percent` WRITE;
/*!40000 ALTER TABLE `profit_percent` DISABLE KEYS */;
INSERT INTO `profit_percent` VALUES (1,0,8400),(2,1,750),(3,3,750);
/*!40000 ALTER TABLE `profit_percent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_digit`
--

DROP TABLE IF EXISTS `second_digit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `second_digit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_digit`
--

LOCK TABLES `second_digit` WRITE;
/*!40000 ALTER TABLE `second_digit` DISABLE KEYS */;
INSERT INTO `second_digit` VALUES (1,0,0),(2,1,0),(3,2,0),(4,3,0),(5,4,0),(6,5,0),(7,6,0),(8,7,0),(9,8,0),(10,9,0);
/*!40000 ALTER TABLE `second_digit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondbiddetails`
--

DROP TABLE IF EXISTS `secondbiddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondbiddetails` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bid_number` int DEFAULT NULL,
  `bid_amount` int DEFAULT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondbiddetails`
--

LOCK TABLES `secondbiddetails` WRITE;
/*!40000 ALTER TABLE `secondbiddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `secondbiddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `transaction_type` varchar(10) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`transaction_id`),
  KEY `transactions_ibfk_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,27,'Spend',100.00,'2024-07-04 14:03:02','Spent on 2 digit number  70'),(2,27,'Spend',100.00,'2024-07-04 14:03:14','Spent on 2 digit number  71'),(3,27,'Spend',100.00,'2024-07-04 14:03:25','Spent on 2 digit number  72'),(4,27,'Spend',100.00,'2024-07-04 14:03:34','Spent on 2 digit number  73'),(5,27,'Spend',100.00,'2024-07-04 14:03:43','Spent on 2 digit number  74'),(6,27,'Spend',100.00,'2024-07-04 14:03:50','Spent on 2 digit number  75'),(7,27,'Spend',100.00,'2024-07-04 14:03:58','Spent on 2 digit number  76'),(8,27,'Spend',50.00,'2024-07-04 14:04:08','Spent on 2 digit number  77'),(9,27,'Spend',100.00,'2024-07-04 14:04:17','Spent on 2 digit number  78'),(10,27,'Spend',100.00,'2024-07-04 14:04:24','Spent on 2 digit number  79'),(11,27,'Spend',50.00,'2024-07-04 14:04:41','Spent on 2 digit number  7'),(12,27,'Spend',50.00,'2024-07-05 14:04:10','Spent on 2 digit number  30'),(13,27,'Spend',50.00,'2024-07-05 14:04:25','Spent on 2 digit number  31'),(14,27,'Spend',50.00,'2024-07-05 14:04:34','Spent on 2 digit number  32'),(15,27,'Spend',50.00,'2024-07-05 14:04:41','Spent on 2 digit number  33'),(16,27,'Spend',50.00,'2024-07-05 14:04:56','Spent on 2 digit number  34'),(17,27,'Spend',50.00,'2024-07-05 14:05:14','Spent on 2 digit number  35'),(18,27,'Spend',50.00,'2024-07-05 14:05:21','Spent on 2 digit number  36'),(19,27,'Spend',50.00,'2024-07-05 14:05:29','Spent on 2 digit number  37'),(20,27,'Spend',50.00,'2024-07-05 14:05:36','Spent on 2 digit number  38'),(21,27,'Spend',50.00,'2024-07-05 14:05:43','Spent on 2 digit number  39');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 17:05:25
