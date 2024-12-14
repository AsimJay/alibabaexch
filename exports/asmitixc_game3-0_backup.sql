-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_game3-0
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
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
INSERT INTO `input_time` VALUES (1,'00:50:00');
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
INSERT INTO `market` VALUES (0);
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,28,'Spend',35.00,'2024-01-29 00:40:12','Spent on second digit number  3'),(2,28,'Spend',25.00,'2024-01-29 00:40:42','Spent on second digit number  2'),(3,28,'Spend',20.00,'2024-01-29 00:41:13','Spent on second digit number  1'),(4,28,'Winner',262.50,'2024-01-29 01:07:44','Second Digit Winner'),(5,27,'Spend',4300.00,'2024-01-30 00:43:17','Spent on second digit number  4'),(6,28,'Spend',25.00,'2024-02-01 00:43:44','Spent on second digit number  2'),(7,28,'Spend',20.00,'2024-02-01 00:43:52','Spent on second digit number  7'),(8,29,'Spend',300.00,'2024-02-02 00:24:46','Spent on second digit number  5'),(9,29,'Spend',200.00,'2024-02-02 00:24:55','Spent on second digit number  7'),(10,28,'Spend',40.00,'2024-02-06 00:46:34','Spent on second digit number  3'),(11,28,'Spend',35.00,'2024-02-06 00:46:54','Spent on second digit number  7'),(12,29,'Spend',300.00,'2024-02-06 00:47:17','Spent on second digit number  3'),(13,28,'Spend',20.00,'2024-02-06 00:47:22','Spent on second digit number  2'),(14,28,'Spend',10.00,'2024-02-06 00:47:39','Spent on second digit number  6'),(15,31,'Spend',13000.00,'2024-02-06 00:48:52','Spent on second digit number  0'),(16,31,'Spend',7000.00,'2024-02-06 00:49:18','Spent on second digit number  5'),(17,28,'Spend',20.00,'2024-02-06 23:59:58','Spent on second digit number  1'),(18,28,'Spend',30.00,'2024-02-07 00:00:10','Spent on second digit number  0'),(19,28,'Spend',25.00,'2024-02-07 00:00:25','Spent on second digit number  8'),(20,28,'Spend',20.00,'2024-02-07 00:01:09','Spent on second digit number  9'),(21,28,'Spend',30.00,'2024-02-07 00:01:50','Spent on second digit number  6'),(22,28,'Spend',15.00,'2024-02-07 00:02:20','Spent on second digit number  7'),(23,28,'Spend',10.00,'2024-02-07 00:03:18','Spent on second digit number  2'),(24,28,'Winner',150.00,'2024-02-07 01:07:11','Second Digit Winner'),(25,28,'Spend',20.00,'2024-02-09 00:23:38','Spent on second digit number  8'),(26,28,'Spend',25.00,'2024-02-09 00:23:50','Spent on second digit number  7'),(27,28,'Spend',20.00,'2024-02-09 00:24:04','Spent on second digit number  5'),(28,28,'Spend',20.00,'2024-02-09 00:24:33','Spent on second digit number  2'),(29,29,'Spend',200.00,'2024-02-09 00:32:29','Spent on second digit number  3'),(30,28,'Spend',35.00,'2024-02-12 00:25:39','Spent on second digit number  2'),(31,28,'Spend',30.00,'2024-02-12 00:25:52','Spent on second digit number  9'),(32,28,'Spend',30.00,'2024-02-12 00:26:44','Spent on second digit number  1'),(33,28,'Spend',35.00,'2024-02-13 00:03:20','Spent on second digit number  5'),(34,28,'Spend',20.00,'2024-02-13 00:03:41','Spent on second digit number  2'),(35,28,'Spend',20.00,'2024-02-13 00:03:56','Spent on second digit number  8'),(36,28,'Spend',15.00,'2024-02-13 00:04:17','Spent on second digit number  6'),(37,29,'Spend',200.00,'2024-02-13 00:29:25','Spent on second digit number  2'),(38,29,'Spend',100.00,'2024-02-13 00:29:35','Spent on second digit number  5'),(39,28,'Winner',150.00,'2024-02-13 01:04:51','Second Digit Winner'),(40,29,'Spend',150.00,'2024-02-14 00:18:04','Spent on second digit number  5'),(41,29,'Spend',50.00,'2024-02-14 00:18:15','Spent on second digit number  6'),(42,29,'Spend',250.00,'2024-02-18 00:50:39','Spent on second digit number  1'),(43,28,'Spend',150.00,'2024-02-20 00:03:16','Spent on second digit number  0'),(44,28,'Spend',100.00,'2024-02-20 00:03:31','Spent on second digit number  2'),(45,28,'Spend',25.00,'2024-02-20 00:04:11','Spent on second digit number  7'),(46,28,'Spend',25.00,'2024-02-20 00:05:46','Spent on second digit number  6'),(47,28,'Spend',30.00,'2024-02-21 23:58:42','Spent on second digit number  6'),(48,28,'Spend',25.00,'2024-02-21 23:58:51','Spent on second digit number  7'),(49,28,'Spend',25.00,'2024-02-21 23:59:02','Spent on second digit number  8'),(50,28,'Spend',20.00,'2024-02-21 23:59:34','Spent on second digit number  9'),(51,29,'Spend',500.00,'2024-02-24 00:33:35','Spent on second digit number  5'),(52,28,'Spend',40.00,'2024-02-25 00:15:55','Spent on second digit number  0'),(53,28,'Spend',30.00,'2024-02-25 00:16:10','Spent on second digit number  7'),(54,28,'Spend',20.00,'2024-02-25 00:16:35','Spent on second digit number  8'),(55,28,'Spend',30.00,'2024-02-25 00:16:49','Spent on second digit number  3'),(56,29,'Spend',250.00,'2024-02-25 00:33:55','Spent on second digit number  7'),(57,29,'Spend',50.00,'2024-02-25 00:34:03','Spent on second digit number  0'),(58,29,'Spend',200.00,'2024-02-25 00:34:59','Spent on second digit number  6'),(59,28,'Winner',150.00,'2024-02-25 01:05:45','Second Digit Winner'),(60,28,'Spend',70.00,'2024-02-27 00:20:50','Spent on second digit number  2'),(61,28,'Spend',20.00,'2024-02-27 00:21:49','Spent on second digit number  7'),(62,28,'Spend',20.00,'2024-02-27 00:22:00','Spent on second digit number  5'),(63,28,'Spend',20.00,'2024-02-27 00:22:17','Spent on second digit number  3'),(64,28,'Spend',30.00,'2024-02-27 00:22:25','Spent on second digit number  1'),(65,28,'Spend',35.00,'2024-02-27 00:22:53','Spent on second digit number  6'),(66,28,'Winner',225.00,'2024-02-27 01:10:07','Second Digit Winner'),(67,29,'Spend',200.00,'2024-03-05 00:44:08','Spent on second digit number  2'),(68,29,'Spend',300.00,'2024-03-07 00:41:19','Spent on second digit number  9'),(69,29,'Spend',100.00,'2024-03-10 00:17:46','Spent on second digit number  3'),(70,29,'Spend',400.00,'2024-03-10 00:17:52','Spent on second digit number  8'),(71,28,'Spend',150.00,'2024-03-11 00:28:05','Spent on second digit number  3'),(72,28,'Spend',50.00,'2024-03-11 00:28:14','Spent on second digit number  2'),(73,28,'Spend',30.00,'2024-03-11 00:28:48','Spent on second digit number  4'),(74,28,'Spend',50.00,'2024-03-11 00:29:06','Spent on second digit number  3'),(75,28,'Spend',20.00,'2024-03-11 00:29:33','Spent on second digit number  5'),(76,28,'Spend',20.00,'2024-03-11 00:29:54','Spent on second digit number  0'),(77,29,'Spend',200.00,'2024-03-13 00:08:28','Spent on second digit number  2'),(78,28,'Spend',20.00,'2024-03-13 00:39:58','Spent on second digit number  8'),(79,28,'Spend',20.00,'2024-03-13 00:40:10','Spent on second digit number  1'),(80,28,'Spend',25.00,'2024-03-13 00:40:26','Spent on second digit number  3'),(81,28,'Spend',30.00,'2024-03-13 00:40:50','Spent on second digit number  7'),(82,28,'Spend',10.00,'2024-03-13 00:41:10','Spent on second digit number  0'),(83,28,'Spend',25.00,'2024-03-14 00:11:34','Spent on second digit number  3'),(84,28,'Spend',20.00,'2024-03-14 00:12:01','Spent on second digit number  9'),(85,28,'Spend',20.00,'2024-03-14 00:12:17','Spent on second digit number  1'),(86,28,'Spend',20.00,'2024-03-14 00:12:33','Spent on second digit number  4'),(87,28,'Spend',20.00,'2024-03-14 00:12:50','Spent on second digit number  5'),(88,33,'Spend',1000.00,'2024-03-14 02:17:59','Spent on second digit number  4'),(89,33,'Spend',4000.00,'2024-03-15 01:44:15','Spent on second digit number  1'),(90,29,'Spend',400.00,'2024-03-21 00:07:34','Spent on second digit number  0'),(91,29,'Spend',100.00,'2024-03-21 00:08:25','Spent on second digit number  1'),(92,28,'Spend',50.00,'2024-03-22 00:03:08','Spent on second digit number  1'),(93,28,'Spend',50.00,'2024-03-22 00:03:13','Spent on second digit number  7'),(94,28,'Spend',30.00,'2024-03-22 00:03:44','Spent on second digit number  0'),(95,28,'Spend',20.00,'2024-03-22 00:03:52','Spent on second digit number  4'),(96,28,'Spend',40.00,'2024-03-23 00:06:23','Spent on second digit number  1'),(97,28,'Spend',20.00,'2024-03-23 00:06:42','Spent on second digit number  0'),(98,28,'Spend',20.00,'2024-03-23 00:06:53','Spent on second digit number  5'),(99,28,'Spend',20.00,'2024-03-23 00:07:10','Spent on second digit number  7'),(100,28,'Winner',150.00,'2024-03-23 01:05:36','Second Digit Winner'),(101,28,'Spend',50.00,'2024-03-29 00:09:27','Spent on second digit number  7'),(102,28,'Spend',50.00,'2024-03-29 00:09:38','Spent on second digit number  4'),(103,28,'Spend',30.00,'2024-03-29 00:09:49','Spent on second digit number  1'),(104,28,'Spend',30.00,'2024-03-29 00:10:11','Spent on second digit number  3'),(105,28,'Spend',30.00,'2024-03-29 00:10:33','Spent on second digit number  2'),(106,29,'Spend',200.00,'2024-03-29 00:11:48','Spent on second digit number  6'),(107,28,'Spend',30.00,'2024-03-30 00:16:39','Spent on second digit number  8'),(108,28,'Spend',20.00,'2024-03-30 00:17:19','Spent on second digit number  2'),(109,28,'Spend',40.00,'2024-04-03 00:23:12','Spent on second digit number  5'),(110,28,'Spend',30.00,'2024-04-03 00:23:39','Spent on second digit number  9'),(111,28,'Spend',300.00,'2024-04-03 00:28:21','Spent on second digit number  3'),(112,28,'Spend',200.00,'2024-04-03 00:28:42','Spent on second digit number  2'),(113,28,'Spend',20.00,'2024-04-03 00:30:08','Spent on second digit number  8'),(114,29,'Spend',200.00,'2024-04-04 00:24:39','Spent on second digit number  5'),(115,28,'Spend',50.00,'2024-04-05 00:36:34','Spent on second digit number  1'),(116,28,'Spend',50.00,'2024-04-05 00:36:44','Spent on second digit number  6'),(117,28,'Spend',80.00,'2024-04-05 00:37:19','Spent on second digit number  5'),(118,28,'Spend',25.00,'2024-04-05 00:37:30','Spent on second digit number  8'),(119,28,'Spend',15.00,'2024-04-05 00:41:21','Spent on second digit number  3'),(120,29,'Spend',250.00,'2024-04-05 00:44:02','Spent on second digit number  4'),(121,29,'Spend',150.00,'2024-04-05 00:44:16','Spent on second digit number  7'),(122,29,'Spend',200.00,'2024-04-06 00:17:27','Spent on second digit number  2'),(123,29,'Spend',100.00,'2024-04-08 00:23:16','Spent on second digit number  3'),(124,29,'Spend',400.00,'2024-04-08 00:23:36','Spent on second digit number  5'),(125,29,'Spend',100.00,'2024-04-09 00:26:28','Spent on second digit number  1'),(126,29,'Spend',100.00,'2024-04-09 00:26:36','Spent on second digit number  3'),(127,29,'Spend',300.00,'2024-04-09 00:26:41','Spent on second digit number  5'),(128,29,'Spend',100.00,'2024-04-10 00:19:28','Spent on second digit number  6'),(129,29,'Spend',300.00,'2024-04-10 00:19:44','Spent on second digit number  8'),(130,29,'Spend',100.00,'2024-04-10 00:19:57','Spent on second digit number  2'),(131,28,'Spend',120.00,'2024-04-17 00:02:55','Spent on second digit number  6'),(132,28,'Spend',110.00,'2024-04-17 00:03:05','Spent on second digit number  4'),(133,28,'Spend',25.00,'2024-04-17 00:03:38','Spent on second digit number  7'),(134,28,'Spend',20.00,'2024-04-17 00:03:48','Spent on second digit number  8'),(135,28,'Spend',20.00,'2024-04-17 00:04:05','Spent on second digit number  1'),(136,28,'Spend',50.00,'2024-04-18 00:25:00','Spent on second digit number  0'),(137,28,'Spend',20.00,'2024-04-18 00:25:15','Spent on second digit number  5'),(138,28,'Spend',15.00,'2024-04-18 00:25:43','Spent on second digit number  7'),(139,28,'Spend',25.00,'2024-04-19 00:37:33','Spent on second digit number  4'),(140,28,'Spend',25.00,'2024-04-19 00:37:51','Spent on second digit number  9'),(141,28,'Spend',20.00,'2024-04-19 00:38:05','Spent on second digit number  0'),(142,28,'Spend',20.00,'2024-04-19 00:38:26','Spent on second digit number  6'),(143,28,'Winner',150.00,'2024-04-19 01:06:43','Second Digit Winner'),(144,28,'Spend',40.00,'2024-04-20 00:44:58','Spent on second digit number  5'),(145,28,'Spend',20.00,'2024-04-20 00:45:24','Spent on second digit number  3'),(146,28,'Spend',30.00,'2024-04-20 00:45:55','Spent on second digit number  7'),(147,28,'Spend',20.00,'2024-04-20 00:46:03','Spent on second digit number  0'),(148,20,'Spend',5.00,'2024-04-20 18:14:23','Spent on 2 digit number  1'),(149,20,'Spend',5.00,'2024-04-20 18:14:23','Spent on 2 digit number  2'),(150,20,'Spend',5.00,'2024-04-20 18:15:08','Spent on 2 digit number  2'),(151,20,'Spend',5.00,'2024-04-20 18:15:08','Spent on 2 digit number  5'),(152,20,'Spend',5.00,'2024-04-24 16:13:14','Spent on second digit number  4'),(153,20,'Spend',5.00,'2024-04-24 16:14:11','Spent on 2 digit number  7'),(154,20,'Spend',5.00,'2024-04-24 16:14:11','Spent on 2 digit number  8'),(155,20,'Spend',5.00,'2024-04-24 16:14:11','Spent on 2 digit number  9'),(156,29,'Spend',200.00,'2024-04-26 00:31:15','Spent on second digit number  9'),(157,31,'Spend',2500.00,'2024-04-26 00:35:01','Spent on second digit number  3'),(158,33,'Spend',10.00,'2024-04-27 23:00:05','Spent on second digit number  5'),(159,28,'Spend',50.00,'2024-04-28 00:21:47','Spent on second digit number  3'),(160,28,'Spend',50.00,'2024-04-28 00:22:29','Spent on second digit number  9'),(161,29,'Spend',200.00,'2024-04-28 00:34:44','Spent on second digit number  7'),(162,33,'Spend',2500.00,'2024-04-28 00:52:39','Spent on second digit number  2'),(163,29,'Spend',200.00,'2024-04-29 00:28:12','Spent on second digit number  9'),(164,31,'Spend',3500.00,'2024-05-01 00:48:47','Spent on second digit number  5'),(165,33,'Spend',1500.00,'2024-05-01 01:01:40','Spent on 2 digit number  5'),(166,33,'Spend',1500.00,'2024-05-01 01:01:40','Spent on 2 digit number  8'),(167,33,'Spend',1500.00,'2024-05-01 01:01:40','Spent on 2 digit number  0'),(168,33,'Spend',3500.00,'2024-05-01 01:02:17','Spent on 2 digit number  5'),(169,33,'Spend',2000.00,'2024-05-01 01:02:38','Spent on 2 digit number  5'),(170,33,'Spend',2000.00,'2024-05-01 01:02:38','Spent on 2 digit number  0'),(171,36,'Spend',40.00,'2024-05-01 23:12:55','Spent on second digit number  4'),(172,36,'Spend',40.00,'2024-05-01 23:13:16','Spent on second digit number  6'),(173,29,'Spend',100.00,'2024-05-02 00:42:08','Spent on second digit number  6'),(174,29,'Spend',150.00,'2024-05-02 00:42:52','Spent on second digit number  3'),(175,33,'Spend',3000.00,'2024-05-04 01:00:45','Spent on 2 digit number  1'),(176,33,'Spend',3000.00,'2024-05-04 01:01:20','Spent on 2 digit number  3'),(177,33,'Spend',3000.00,'2024-05-04 01:01:20','Spent on 2 digit number  9'),(178,33,'Spend',10000.00,'2024-05-04 01:03:38','Spent on 2 digit number  2'),(179,33,'Spend',10000.00,'2024-05-04 01:03:38','Spent on 2 digit number  4'),(180,33,'Winner',75000.00,'2024-05-04 01:06:59','Second Digit Winner'),(181,28,'Spend',60.00,'2024-05-06 00:32:23','Spent on second digit number  2'),(182,28,'Spend',40.00,'2024-05-06 00:32:40','Spent on second digit number  8'),(183,28,'Spend',30.00,'2024-05-06 00:32:54','Spent on second digit number  6'),(184,28,'Spend',20.00,'2024-05-06 00:33:03','Spent on second digit number  3'),(185,28,'Winner',450.00,'2024-05-06 01:07:10','Second Digit Winner'),(186,28,'Spend',30.00,'2024-05-06 23:59:43','Spent on second digit number  5'),(187,28,'Spend',30.00,'2024-05-07 00:00:04','Spent on second digit number  3'),(188,28,'Spend',18.00,'2024-05-07 00:00:14','Spent on second digit number  8'),(189,28,'Spend',20.00,'2024-05-07 00:00:32','Spent on second digit number  9'),(190,28,'Winner',150.00,'2024-05-07 01:04:33','Second Digit Winner'),(191,31,'Spend',2000.00,'2024-05-11 19:45:55','Spent on second digit number  0'),(192,36,'Spend',100.00,'2024-05-13 17:14:43','Spent on 2 digit number  6'),(193,36,'Spend',50.00,'2024-05-13 17:15:35','Spent on 2 digit number  1'),(194,36,'Spend',50.00,'2024-05-14 17:29:26','Spent on 2 digit number  2'),(195,36,'Spend',50.00,'2024-05-14 17:29:26','Spent on 2 digit number  7'),(196,36,'Winner',375.00,'2024-05-14 20:09:27','Second Digit Winner'),(197,36,'Spend',200.00,'2024-05-15 17:07:17','Spent on 2 digit number  7'),(198,36,'Spend',50.00,'2024-05-15 17:09:15','Spent on 2 digit number  2'),(199,27,'Spend',100.00,'2024-05-20 17:05:20','Spent on second digit number  5'),(200,33,'Spend',2500.00,'2024-05-21 20:07:30','Spent on second digit number  8'),(201,33,'Spend',100.00,'2024-05-24 19:28:53','Spent on 2 digit number  4'),(202,33,'Spend',100.00,'2024-05-26 19:15:15','Spent on second digit number  5'),(203,33,'Spend',100.00,'2024-05-27 19:50:31','Spent on second digit number  9'),(204,27,'Spend',200.00,'2024-05-28 17:40:04','Spent on second digit number  4'),(205,35,'Spend',2000.00,'2024-05-28 19:47:41','Spent on second digit number  1'),(206,27,'Spend',5.00,'2024-06-05 18:27:43','Spent on second digit number  5'),(207,27,'Spend',100.00,'2024-06-10 19:35:14','Spent on second digit number  7'),(208,32,'Spend',170.00,'2024-06-11 19:03:31','Spent on second digit number  0'),(209,32,'Spend',2000.00,'2024-06-14 19:06:16','Spent on second digit number  0'),(210,27,'Spend',100.00,'2024-06-15 17:14:49','Spent on second digit number  0'),(211,27,'Spend',100.00,'2024-06-15 17:15:04','Spent on second digit number  7'),(212,27,'Spend',100.00,'2024-06-15 17:15:24','Spent on second digit number  8'),(213,27,'Spend',100.00,'2024-06-15 17:15:34','Spent on second digit number  9'),(214,27,'Spend',100.00,'2024-06-15 19:38:51','Spent on second digit number  6'),(215,27,'Winner',750.00,'2024-06-15 20:06:02','Second Digit Winner'),(216,32,'Spend',30.00,'2024-06-21 19:20:20','Spent on second digit number  4'),(217,32,'Spend',2000.00,'2024-06-24 19:08:24','Spent on second digit number  4'),(218,32,'Spend',500.00,'2024-07-11 19:09:59','Spent on second digit number  3'),(219,28,'Spend',50.00,'2024-07-28 19:16:28','Spent on second digit number  9'),(220,28,'Spend',30.00,'2024-07-28 19:16:44','Spent on second digit number  1'),(221,28,'Spend',20.00,'2024-07-28 19:17:08','Spent on second digit number  3'),(222,30,'Spend',200.00,'2024-07-29 19:00:40','Spent on second digit number  9'),(223,30,'Spend',95.00,'2024-07-29 19:01:22','Spent on second digit number  6'),(224,30,'Spend',200.00,'2024-07-31 19:21:41','Spent on second digit number  3'),(225,30,'Spend',200.00,'2024-07-31 19:21:50','Spent on second digit number  7'),(226,28,'Spend',30.00,'2024-08-05 19:28:03','Spent on second digit number  1'),(227,28,'Spend',30.00,'2024-08-05 19:28:19','Spent on second digit number  2'),(228,28,'Spend',20.00,'2024-08-05 19:28:27','Spent on second digit number  5'),(229,28,'Spend',20.00,'2024-08-05 19:28:36','Spent on second digit number  3'),(230,28,'Winner',150.00,'2024-08-05 20:03:38','Second Digit Winner'),(231,28,'Spend',20.00,'2024-08-06 19:08:43','Spent on second digit number  8'),(232,40,'Spend',3000.00,'2024-08-15 18:38:30','Spent on second digit number  8'),(233,28,'Spend',30.00,'2024-08-20 19:42:51','Spent on second digit number  2'),(234,28,'Spend',20.00,'2024-08-20 19:43:42','Spent on second digit number  9'),(235,28,'Spend',50.00,'2024-08-23 19:33:50','Spent on second digit number  8'),(236,28,'Spend',50.00,'2024-08-23 19:34:00','Spent on second digit number  7'),(237,28,'Spend',25.00,'2024-08-23 19:34:12','Spent on second digit number  0'),(238,28,'Spend',25.00,'2024-08-23 19:34:47','Spent on second digit number  3'),(239,28,'Spend',20.00,'2024-08-24 19:20:17','Spent on second digit number  6'),(240,28,'Spend',20.00,'2024-08-24 19:20:55','Spent on second digit number  7'),(241,28,'Spend',25.00,'2024-09-08 19:10:04','Spent on second digit number  6'),(242,28,'Spend',30.00,'2024-09-08 19:10:10','Spent on second digit number  7'),(243,28,'Spend',25.00,'2024-09-28 19:16:33','Spent on second digit number  9'),(244,28,'Spend',20.00,'2024-09-28 19:16:47','Spent on second digit number  6'),(245,28,'Spend',20.00,'2024-09-28 19:17:12','Spent on second digit number  4'),(246,32,'Spend',100.00,'2024-09-30 17:56:02','Spent on second digit number  5'),(247,32,'Spend',100.00,'2024-10-01 19:04:46','Spent on second digit number  7'),(248,28,'Spend',30.00,'2024-10-07 19:29:10','Spent on second digit number  2'),(249,28,'Spend',30.00,'2024-10-07 19:29:18','Spent on second digit number  8'),(250,28,'Spend',20.00,'2024-10-07 19:29:28','Spent on second digit number  0'),(251,28,'Winner',150.00,'2024-10-07 20:21:27','Second Digit Winner'),(252,29,'Spend',300.00,'2024-11-17 19:29:57','Spent on second digit number  8'),(253,31,'Spend',2000.00,'2024-11-17 19:37:21','Spent on second digit number  3'),(254,31,'Spend',5000.00,'2024-11-17 19:41:29','Spent on second digit number  4'),(255,31,'Spend',2000.00,'2024-11-17 19:47:50','Spent on 2 digit number  5'),(256,31,'Spend',2000.00,'2024-11-17 19:47:50','Spent on 2 digit number  8'),(257,31,'Spend',2000.00,'2024-11-17 19:47:50','Spent on 2 digit number  2'),(258,31,'Spend',5000.00,'2024-11-17 19:48:51','Spent on second digit number  4'),(259,28,'Spend',40.00,'2024-11-22 19:33:43','Spent on second digit number  6'),(260,28,'Spend',30.00,'2024-11-22 19:33:54','Spent on second digit number  7'),(261,28,'Spend',30.00,'2024-11-22 19:35:16','Spent on second digit number  8'),(262,28,'Spend',25.00,'2024-11-22 19:35:43','Spent on second digit number  0'),(263,28,'Spend',35.00,'2024-11-22 19:40:35','Spent on second digit number  1'),(264,28,'Spend',15.00,'2024-11-22 19:40:48','Spent on second digit number  5'),(265,28,'Spend',40.00,'2024-11-22 19:43:23','Spent on second digit number  4'),(266,28,'Winner',300.00,'2024-11-22 20:06:17','Second Digit Winner');
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
