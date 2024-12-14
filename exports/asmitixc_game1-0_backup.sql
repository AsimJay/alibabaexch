-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_game1-0
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
INSERT INTO `admin_control` VALUES (1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=1879 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
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
INSERT INTO `input_time` VALUES (1,'18:15:00');
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
INSERT INTO `luckynumber` VALUES (1,33,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,27,'Spend',40.00,'2024-07-04 11:28:12','Spent on 2 digit number  60'),(2,27,'Spend',40.00,'2024-07-04 11:28:17','Spent on 2 digit number  61'),(3,27,'Spend',40.00,'2024-07-04 11:28:22','Spent on 2 digit number  62'),(4,27,'Spend',40.00,'2024-07-04 11:28:27','Spent on 2 digit number  63'),(5,27,'Spend',40.00,'2024-07-04 11:28:33','Spent on 2 digit number  64'),(6,27,'Spend',40.00,'2024-07-04 11:28:38','Spent on 2 digit number  65'),(7,27,'Spend',40.00,'2024-07-04 11:28:44','Spent on 2 digit number  66'),(8,27,'Spend',40.00,'2024-07-04 11:28:52','Spent on 2 digit number  67'),(9,27,'Spend',40.00,'2024-07-04 11:28:57','Spent on 2 digit number  68'),(10,27,'Spend',40.00,'2024-07-04 11:29:04','Spent on 2 digit number  69'),(11,20,'Spend',2000.00,'2024-07-04 11:32:37','Spent on 2 digit number  12'),(12,20,'Spend',2000.00,'2024-07-04 11:33:13','Spent on 2 digit number  1'),(13,20,'Spend',2000.00,'2024-07-04 11:34:21','Spent on 2 digit number  2'),(14,20,'Spend',85.00,'2024-07-04 11:35:07','Spent on 2 digit number  12'),(15,20,'Spend',85.00,'2024-07-04 11:35:07','Spent on 2 digit number  13'),(16,20,'Spend',85.00,'2024-07-04 11:35:07','Spent on 2 digit number  14'),(17,20,'Spend',85.00,'2024-07-04 11:35:07','Spent on 2 digit number  21'),(18,20,'Spend',85.00,'2024-07-04 11:35:07','Spent on 2 digit number  23'),(19,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  24'),(20,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  31'),(21,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  32'),(22,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  34'),(23,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  41'),(24,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  42'),(25,20,'Spend',85.00,'2024-07-04 11:35:08','Spent on 2 digit number  43'),(26,27,'Spend',50.00,'2024-07-05 12:45:22','Spent on 2 digit number  50'),(27,27,'Spend',50.00,'2024-07-05 12:45:29','Spent on 2 digit number  51'),(28,27,'Spend',50.00,'2024-07-05 12:45:35','Spent on 2 digit number  52'),(29,27,'Spend',50.00,'2024-07-05 12:45:42','Spent on 2 digit number  53'),(30,27,'Spend',50.00,'2024-07-05 12:45:52','Spent on 2 digit number  54'),(31,27,'Spend',20.00,'2024-07-05 12:45:59','Spent on 2 digit number  55'),(32,27,'Spend',50.00,'2024-07-05 12:46:07','Spent on 2 digit number  56'),(33,27,'Spend',50.00,'2024-07-05 12:46:13','Spent on 2 digit number  57'),(34,27,'Spend',50.00,'2024-07-05 12:46:24','Spent on 2 digit number  58'),(35,27,'Spend',50.00,'2024-07-05 12:47:38','Spent on 2 digit number  59'),(36,27,'Spend',35.00,'2024-07-05 12:48:03','Spent on 2 digit number  5'),(37,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  23'),(38,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  27'),(39,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  28'),(40,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  29'),(41,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  32'),(42,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  37'),(43,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  38'),(44,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  39'),(45,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  72'),(46,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  73'),(47,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  78'),(48,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  79'),(49,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  82'),(50,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  83'),(51,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  87'),(52,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  89'),(53,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  92'),(54,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  93'),(55,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  97'),(56,27,'Spend',25.00,'2024-07-05 12:49:41','Spent on 2 digit number  98'),(57,33,'Spend',5.00,'2024-07-05 12:51:53','Spent on 2 digit number  11'),(58,33,'Spend',5.00,'2024-07-05 12:51:53','Spent on 2 digit number  22'),(59,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  12'),(60,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  13'),(61,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  21'),(62,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  23'),(63,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  31'),(64,33,'Spend',5.00,'2024-07-05 12:52:19','Spent on 2 digit number  32'),(65,33,'Spend',5.00,'2024-07-05 12:52:46','Spent on 2 digit number  1'),(66,33,'Spend',5.00,'2024-07-05 12:52:46','Spent on 2 digit number  2'),(67,33,'Spend',5.00,'2024-07-05 12:52:46','Spent on 2 digit number  3'),(68,33,'Spend',5.00,'2024-07-05 12:53:07','Spent on 2 digit number  1'),(69,33,'Spend',5.00,'2024-07-05 12:53:07','Spent on 2 digit number  2'),(70,33,'Spend',5.00,'2024-07-05 12:53:07','Spent on 2 digit number  3'),(71,27,'Winner',2100.00,'2024-07-05 12:59:37','Full Number Winner'),(72,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  45'),(73,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  46'),(74,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  42'),(75,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  47'),(76,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  54'),(77,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  56'),(78,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  52'),(79,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  57'),(80,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  64'),(81,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  65'),(82,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  62'),(83,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  67'),(84,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  24'),(85,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  25'),(86,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  26'),(87,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  27'),(88,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  74'),(89,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  75'),(90,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  76'),(91,27,'Spend',25.00,'2024-07-06 12:40:24','Spent on 2 digit number  72'),(92,27,'Spend',50.00,'2024-07-07 12:37:02','Spent on 2 digit number  5'),(93,27,'Spend',50.00,'2024-07-07 12:37:17','Spent on 2 digit number  50'),(94,27,'Spend',50.00,'2024-07-07 12:37:25','Spent on 2 digit number  51'),(95,27,'Spend',50.00,'2024-07-07 12:37:31','Spent on 2 digit number  52'),(96,27,'Spend',50.00,'2024-07-07 12:37:37','Spent on 2 digit number  53'),(97,27,'Spend',50.00,'2024-07-07 12:37:42','Spent on 2 digit number  54'),(98,27,'Spend',50.00,'2024-07-07 12:37:48','Spent on 2 digit number  55'),(99,27,'Spend',50.00,'2024-07-07 12:37:54','Spent on 2 digit number  56'),(100,27,'Spend',50.00,'2024-07-07 12:38:00','Spent on 2 digit number  57'),(101,27,'Spend',50.00,'2024-07-07 12:38:06','Spent on 2 digit number  58'),(102,27,'Spend',50.00,'2024-07-07 12:38:14','Spent on 2 digit number  59'),(103,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  25'),(104,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  26'),(105,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  24'),(106,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  27'),(107,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  52'),(108,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  56'),(109,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  54'),(110,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  57'),(111,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  62'),(112,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  65'),(113,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  64'),(114,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  67'),(115,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  42'),(116,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  45'),(117,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  46'),(118,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  47'),(119,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  72'),(120,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  75'),(121,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  76'),(122,27,'Spend',15.00,'2024-07-07 12:38:56','Spent on 2 digit number  74'),(123,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  64'),(124,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  65'),(125,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  62'),(126,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  63'),(127,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  46'),(128,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  45'),(129,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  42'),(130,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  43'),(131,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  56'),(132,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  54'),(133,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  52'),(134,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  53'),(135,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  26'),(136,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  24'),(137,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  25'),(138,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  23'),(139,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  36'),(140,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  34'),(141,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  35'),(142,27,'Spend',10.00,'2024-07-08 12:56:10','Spent on 2 digit number  32'),(143,37,'Spend',100.00,'2024-09-27 11:51:23','Spent on 2 digit number  56'),(144,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  37'),(145,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  35'),(146,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  36'),(147,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  32'),(148,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  73'),(149,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  75'),(150,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  76'),(151,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  72'),(152,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  53'),(153,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  57'),(154,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  56'),(155,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  52'),(156,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  63'),(157,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  67'),(158,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  65'),(159,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  62'),(160,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  23'),(161,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  27'),(162,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  25'),(163,37,'Spend',10.00,'2024-09-27 11:52:57','Spent on 2 digit number  26'),(164,37,'Spend',30.00,'2024-09-27 11:53:16','Spent on 2 digit number  61'),(165,37,'Spend',100.00,'2024-09-28 12:17:18','Spent on 2 digit number  32'),(166,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  16'),(167,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  14'),(168,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  13'),(169,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  18'),(170,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  61'),(171,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  64'),(172,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  63'),(173,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  68'),(174,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  41'),(175,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  46'),(176,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  43'),(177,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  48'),(178,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  31'),(179,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  36'),(180,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  34'),(181,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  38'),(182,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  81'),(183,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  86'),(184,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  84'),(185,37,'Spend',20.00,'2024-09-28 12:18:18','Spent on 2 digit number  83'),(186,20,'Spend',20.00,'2024-11-15 19:45:33','Spent on 2 digit number  11'),(187,20,'Spend',20.00,'2024-11-15 19:45:33','Spent on 2 digit number  12'),(188,33,'Spend',10.00,'2024-11-18 10:01:53','Spent on 2 digit number  23'),(189,33,'Spend',10.00,'2024-11-18 10:01:54','Spent on 2 digit number  65'),(190,20,'Spend',30.00,'2024-11-18 13:11:37','Spent on 2 digit number  1'),(191,31,'Spend',295.00,'2024-11-19 11:19:48','Spent on 2 digit number  30');
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
