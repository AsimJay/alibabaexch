-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_game7
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
) ENGINE=InnoDB AUTO_INCREMENT=1883 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
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
INSERT INTO `input_time` VALUES (1,'02:10:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,32,'Spend',100.00,'2024-07-05 20:52:51','Spent on 2 digit number  2'),(2,32,'Spend',100.00,'2024-07-05 20:53:09','Spent on 2 digit number  52'),(3,32,'Spend',100.00,'2024-07-05 20:54:39','Spent on 2 digit number  71'),(4,32,'Spend',100.00,'2024-07-05 20:54:49','Spent on 2 digit number  22'),(5,28,'Spend',20.00,'2024-07-07 19:57:23','Spent on 2 digit number  92'),(6,28,'Spend',20.00,'2024-07-07 19:57:23','Spent on 2 digit number  29'),(7,28,'Spend',20.00,'2024-07-07 19:57:23','Spent on 2 digit number  78'),(8,28,'Spend',20.00,'2024-07-07 19:57:23','Spent on 2 digit number  26'),(9,28,'Spend',10.00,'2024-07-07 19:57:48','Spent on 2 digit number  14'),(10,28,'Spend',10.00,'2024-07-07 19:57:58','Spent on 2 digit number  21'),(11,28,'Spend',10.00,'2024-07-07 19:58:09','Spent on 2 digit number  27'),(12,28,'Spend',10.00,'2024-07-07 19:58:19','Spent on 2 digit number  35'),(13,28,'Spend',10.00,'2024-07-07 19:58:33','Spent on 2 digit number  4'),(14,28,'Spend',10.00,'2024-07-07 19:59:06','Spent on 2 digit number  6'),(15,28,'Spend',10.00,'2024-07-07 19:59:22','Spent on 2 digit number  94'),(16,28,'Spend',10.00,'2024-07-07 19:59:34','Spent on 2 digit number  49'),(17,28,'Spend',10.00,'2024-07-07 20:00:01','Spent on 2 digit number  24'),(18,28,'Spend',5.00,'2024-07-07 20:00:12','Spent on 2 digit number  42'),(19,28,'Spend',5.00,'2024-07-07 20:00:25','Spent on 2 digit number  1'),(20,28,'Spend',5.00,'2024-07-07 20:00:49','Spent on 2 digit number  31'),(21,28,'Winner',840.00,'2024-07-07 21:31:34','Full Number Winner'),(22,32,'Spend',100.00,'2024-07-10 20:52:13','Spent on 2 digit number  93'),(23,32,'Spend',50.00,'2024-07-10 20:52:30','Spent on 2 digit number  43'),(24,32,'Spend',50.00,'2024-07-10 20:52:42','Spent on 2 digit number  62'),(25,32,'Spend',50.00,'2024-07-10 20:52:52','Spent on 2 digit number  72'),(26,32,'Spend',50.00,'2024-07-10 20:53:05','Spent on 2 digit number  27'),(27,32,'Spend',50.00,'2024-07-10 20:53:21','Spent on 2 digit number  26'),(28,32,'Spend',100.00,'2024-07-10 20:55:39','Spent on 2 digit number  22'),(29,32,'Spend',50.00,'2024-07-10 20:55:52','Spent on 2 digit number  92'),(30,32,'Spend',50.00,'2024-07-11 20:10:29','Spent on 2 digit number  44'),(31,32,'Spend',50.00,'2024-07-11 20:10:46','Spent on 2 digit number  94'),(32,32,'Spend',50.00,'2024-07-11 20:10:52','Spent on 2 digit number  99'),(33,32,'Spend',50.00,'2024-07-11 20:11:01','Spent on 2 digit number  35'),(34,32,'Spend',50.00,'2024-07-11 20:11:10','Spent on 2 digit number  53'),(35,32,'Spend',1000.00,'2024-07-11 20:12:01','Spent on first digit number  5'),(36,28,'Spend',30.00,'2024-07-27 20:45:38','Spent on 2 digit number  10'),(37,28,'Spend',20.00,'2024-07-27 20:45:49','Spent on 2 digit number  23'),(38,28,'Spend',10.00,'2024-07-27 20:46:00','Spent on 2 digit number  16'),(39,28,'Spend',10.00,'2024-07-27 20:46:10','Spent on 2 digit number  61'),(40,28,'Spend',10.00,'2024-07-27 20:46:21','Spent on 2 digit number  76'),(41,28,'Spend',10.00,'2024-07-27 20:46:33','Spent on 2 digit number  12'),(42,28,'Spend',10.00,'2024-07-27 20:46:51','Spent on 2 digit number  3'),(43,28,'Spend',10.00,'2024-07-27 20:46:58','Spent on 2 digit number  9'),(44,28,'Spend',10.00,'2024-07-27 20:47:09','Spent on 2 digit number  90'),(45,28,'Spend',15.00,'2024-07-27 20:47:20','Spent on 2 digit number  96'),(46,28,'Spend',15.00,'2024-07-27 20:47:29','Spent on 2 digit number  69'),(47,28,'Spend',10.00,'2024-07-27 20:47:39','Spent on 2 digit number  51'),(48,28,'Spend',10.00,'2024-07-27 20:47:46','Spent on 2 digit number  15'),(49,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  85'),(50,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  84'),(51,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  58'),(52,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  54'),(53,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  48'),(54,28,'Spend',5.00,'2024-07-27 20:50:09','Spent on 2 digit number  45'),(55,28,'Winner',2520.00,'2024-07-27 21:31:05','Full Number Winner'),(56,28,'Spend',10.00,'2024-07-28 20:30:10','Spent on 2 digit number  2'),(57,28,'Spend',15.00,'2024-07-28 20:30:19','Spent on 2 digit number  27'),(58,28,'Spend',15.00,'2024-07-28 20:31:06','Spent on 2 digit number  98'),(59,28,'Spend',10.00,'2024-07-28 20:31:13','Spent on 2 digit number  90'),(60,28,'Spend',10.00,'2024-07-28 20:31:33','Spent on 2 digit number  3'),(61,28,'Spend',10.00,'2024-07-28 20:31:46','Spent on 2 digit number  17'),(62,28,'Spend',10.00,'2024-07-28 20:31:53','Spent on 2 digit number  25'),(63,28,'Spend',10.00,'2024-07-28 20:32:06','Spent on 2 digit number  33'),(64,28,'Spend',10.00,'2024-07-28 20:32:14','Spent on 2 digit number  48'),(65,28,'Spend',10.00,'2024-07-28 20:32:20','Spent on 2 digit number  51'),(66,28,'Spend',10.00,'2024-07-28 20:32:24','Spent on 2 digit number  59'),(67,28,'Spend',10.00,'2024-07-28 20:32:45','Spent on 2 digit number  52'),(68,28,'Spend',10.00,'2024-07-28 20:32:59','Spent on 2 digit number  72'),(69,28,'Spend',10.00,'2024-07-28 20:33:06','Spent on 2 digit number  76'),(70,28,'Spend',10.00,'2024-07-28 20:33:11','Spent on 2 digit number  83'),(71,28,'Spend',10.00,'2024-07-28 20:33:17','Spent on 2 digit number  89'),(72,28,'Spend',10.00,'2024-07-28 20:33:26','Spent on 2 digit number  91'),(73,28,'Spend',5.00,'2024-07-28 20:33:52','Spent on 2 digit number  95'),(74,28,'Spend',5.00,'2024-07-28 20:33:59','Spent on 2 digit number  85'),(75,28,'Spend',5.00,'2024-07-28 20:34:08','Spent on 2 digit number  70'),(76,28,'Spend',5.00,'2024-07-28 20:34:14','Spent on 2 digit number  71'),(77,28,'Spend',5.00,'2024-07-28 20:34:19','Spent on 2 digit number  69'),(78,28,'Spend',5.00,'2024-07-28 20:34:24','Spent on 2 digit number  67'),(79,28,'Spend',5.00,'2024-07-28 20:34:30','Spent on 2 digit number  61'),(80,28,'Spend',5.00,'2024-07-28 20:34:42','Spent on 2 digit number  8'),(81,28,'Spend',5.00,'2024-07-28 20:34:50','Spent on 2 digit number  80'),(82,28,'Spend',5.00,'2024-07-28 20:35:38','Spent on 2 digit number  38'),(83,28,'Spend',5.00,'2024-07-28 20:36:18','Spent on 2 digit number  72'),(84,28,'Spend',5.00,'2024-07-28 20:36:25','Spent on 2 digit number  74'),(85,28,'Spend',10.00,'2024-07-30 20:18:31','Spent on 2 digit number  3'),(86,28,'Spend',10.00,'2024-07-30 20:19:07','Spent on 2 digit number  90'),(87,28,'Spend',5.00,'2024-07-30 20:19:21','Spent on 2 digit number  83'),(88,28,'Spend',15.00,'2024-07-30 20:19:43','Spent on 2 digit number  61'),(89,28,'Spend',15.00,'2024-07-30 20:20:00','Spent on 2 digit number  53'),(90,28,'Spend',5.00,'2024-07-30 20:20:09','Spent on 2 digit number  52'),(91,28,'Spend',15.00,'2024-07-30 20:20:14','Spent on 2 digit number  66'),(92,28,'Spend',5.00,'2024-07-30 20:20:43','Spent on 2 digit number  16'),(93,28,'Spend',5.00,'2024-07-30 20:20:49','Spent on 2 digit number  17'),(94,28,'Spend',10.00,'2024-07-30 20:20:59','Spent on 2 digit number  72'),(95,28,'Spend',5.00,'2024-07-30 20:21:04','Spent on 2 digit number  78'),(96,28,'Spend',5.00,'2024-07-30 20:21:10','Spent on 2 digit number  79'),(97,28,'Spend',5.00,'2024-07-30 20:21:17','Spent on 2 digit number  94'),(98,28,'Spend',5.00,'2024-07-30 20:21:23','Spent on 2 digit number  69'),(99,28,'Spend',5.00,'2024-07-30 20:21:34','Spent on 2 digit number  48'),(100,28,'Spend',5.00,'2024-07-30 20:21:40','Spent on 2 digit number  41'),(101,28,'Spend',5.00,'2024-07-30 20:21:50','Spent on 2 digit number  33'),(102,28,'Spend',5.00,'2024-07-30 20:22:11','Spent on 2 digit number  20'),(103,28,'Spend',5.00,'2024-07-30 20:22:24','Spent on 2 digit number  34'),(104,28,'Spend',5.00,'2024-07-30 20:23:07','Spent on 2 digit number  98'),(105,28,'Spend',5.00,'2024-07-30 20:23:20','Spent on 2 digit number  4'),(106,32,'Spend',100.00,'2024-08-01 20:29:43','Spent on 2 digit number  89'),(107,28,'Spend',80.00,'2024-08-02 20:32:21','Spent on 2 digit number  16'),(108,28,'Spend',80.00,'2024-08-02 20:32:32','Spent on 2 digit number  94'),(109,28,'Spend',10.00,'2024-08-02 20:32:59','Spent on 2 digit number  49'),(110,28,'Spend',10.00,'2024-08-02 20:33:15','Spent on 2 digit number  61'),(111,40,'Spend',100.00,'2024-08-02 20:34:02','Spent on 2 digit number  6'),(112,40,'Spend',100.00,'2024-08-02 20:34:13','Spent on 2 digit number  19'),(113,40,'Spend',100.00,'2024-08-02 20:34:21','Spent on 2 digit number  50'),(114,28,'Spend',30.00,'2024-08-02 20:34:23','Spent on 2 digit number  41'),(115,40,'Spend',100.00,'2024-08-02 20:34:37','Spent on 2 digit number  16'),(116,28,'Spend',10.00,'2024-08-02 20:34:48','Spent on 2 digit number  59'),(117,40,'Spend',100.00,'2024-08-02 20:34:50','Spent on 2 digit number  59'),(118,40,'Spend',100.00,'2024-08-02 20:34:55','Spent on 2 digit number  64'),(119,28,'Spend',10.00,'2024-08-02 20:34:56','Spent on 2 digit number  53'),(120,28,'Spend',10.00,'2024-08-02 20:35:05','Spent on 2 digit number  34'),(121,40,'Spend',100.00,'2024-08-02 20:35:08','Spent on 2 digit number  44'),(122,28,'Spend',10.00,'2024-08-02 20:35:14','Spent on 2 digit number  23'),(123,40,'Spend',100.00,'2024-08-02 20:35:16','Spent on 2 digit number  10'),(124,28,'Spend',10.00,'2024-08-02 20:35:22','Spent on 2 digit number  25'),(125,40,'Spend',100.00,'2024-08-02 20:35:22','Spent on 2 digit number  11'),(126,28,'Spend',10.00,'2024-08-02 20:35:29','Spent on 2 digit number  26'),(127,40,'Spend',100.00,'2024-08-02 20:35:29','Spent on 2 digit number  12'),(128,40,'Spend',100.00,'2024-08-02 20:35:40','Spent on 2 digit number  88'),(129,40,'Spend',100.00,'2024-08-02 20:36:01','Spent on 2 digit number  79'),(130,28,'Spend',15.00,'2024-08-02 20:36:06','Spent on 2 digit number  43'),(131,40,'Spend',100.00,'2024-08-02 20:36:10','Spent on 2 digit number  52'),(132,40,'Spend',100.00,'2024-08-02 20:36:20','Spent on 2 digit number  60'),(133,28,'Spend',5.00,'2024-08-02 20:36:21','Spent on 2 digit number  51'),(134,40,'Spend',100.00,'2024-08-02 20:36:29','Spent on 2 digit number  41'),(135,40,'Spend',100.00,'2024-08-02 20:36:39','Spent on 2 digit number  35'),(136,28,'Spend',10.00,'2024-08-02 20:36:46','Spent on 2 digit number  81'),(137,40,'Spend',100.00,'2024-08-02 20:36:50','Spent on 2 digit number  32'),(138,40,'Spend',100.00,'2024-08-02 20:36:57','Spent on 2 digit number  61'),(139,40,'Spend',100.00,'2024-08-02 20:37:08','Spent on 2 digit number  98'),(140,40,'Spend',100.00,'2024-08-02 20:37:14','Spent on 2 digit number  95'),(141,40,'Spend',100.00,'2024-08-02 20:37:20','Spent on 2 digit number  87'),(142,40,'Spend',200.00,'2024-08-02 20:39:56','Spent on 2 digit number  11'),(143,28,'Spend',10.00,'2024-08-02 20:46:47','Spent on 2 digit number  89'),(144,28,'Spend',10.00,'2024-08-02 20:47:00','Spent on 2 digit number  52'),(145,28,'Spend',5.00,'2024-08-02 20:47:18','Spent on 2 digit number  18'),(146,28,'Spend',5.00,'2024-08-02 20:47:28','Spent on 2 digit number  17'),(147,28,'Spend',5.00,'2024-08-02 20:47:46','Spent on 2 digit number  3'),(148,28,'Spend',5.00,'2024-08-02 20:47:50','Spent on 2 digit number  9'),(149,28,'Spend',5.00,'2024-08-02 20:47:54','Spent on 2 digit number  8'),(150,28,'Spend',5.00,'2024-08-02 20:48:06','Spent on 2 digit number  2'),(151,28,'Spend',5.00,'2024-08-02 20:48:21','Spent on 2 digit number  11'),(152,28,'Spend',5.00,'2024-08-02 20:48:31','Spent on 2 digit number  33'),(153,28,'Spend',5.00,'2024-08-02 20:48:36','Spent on 2 digit number  44'),(154,28,'Spend',5.00,'2024-08-02 20:48:43','Spent on 2 digit number  66'),(155,28,'Spend',5.00,'2024-08-02 20:48:48','Spent on 2 digit number  77'),(156,28,'Spend',5.00,'2024-08-02 20:48:54','Spent on 2 digit number  88'),(157,28,'Spend',5.00,'2024-08-02 20:48:58','Spent on 2 digit number  99'),(158,40,'Winner',8400.00,'2024-08-02 21:28:43','Full Number Winner'),(159,40,'Spend',150.00,'2024-08-03 20:15:34','Spent on 2 digit number  0'),(160,40,'Spend',200.00,'2024-08-03 20:15:52','Spent on 2 digit number  88'),(161,40,'Spend',200.00,'2024-08-03 20:16:23','Spent on 2 digit number  89'),(162,40,'Spend',150.00,'2024-08-03 20:16:33','Spent on 2 digit number  99'),(163,40,'Spend',175.00,'2024-08-03 20:16:49','Spent on 2 digit number  77'),(164,40,'Spend',150.00,'2024-08-03 20:17:07','Spent on 2 digit number  44'),(165,40,'Spend',150.00,'2024-08-03 20:17:16','Spent on 2 digit number  55'),(166,40,'Spend',150.00,'2024-08-03 20:17:35','Spent on 2 digit number  33'),(167,40,'Spend',150.00,'2024-08-03 20:17:44','Spent on 2 digit number  22'),(168,40,'Spend',150.00,'2024-08-03 20:18:04','Spent on 2 digit number  11'),(169,40,'Spend',150.00,'2024-08-03 20:18:21','Spent on 2 digit number  66'),(170,40,'Spend',50.00,'2024-08-03 20:19:16','Spent on 2 digit number  30'),(171,40,'Spend',50.00,'2024-08-03 20:19:41','Spent on 2 digit number  26'),(172,40,'Spend',50.00,'2024-08-03 20:19:58','Spent on 2 digit number  7'),(173,40,'Spend',50.00,'2024-08-03 20:20:37','Spent on 2 digit number  32'),(174,40,'Spend',50.00,'2024-08-03 20:20:59','Spent on 2 digit number  6'),(175,40,'Spend',250.00,'2024-08-04 20:30:57','Spent on 2 digit number  22'),(176,40,'Spend',250.00,'2024-08-04 20:31:07','Spent on 2 digit number  33'),(177,40,'Spend',200.00,'2024-08-04 20:31:20','Spent on 2 digit number  39'),(178,40,'Spend',200.00,'2024-08-04 20:31:32','Spent on 2 digit number  74'),(179,40,'Spend',200.00,'2024-08-04 20:31:43','Spent on 2 digit number  17'),(180,40,'Spend',200.00,'2024-08-04 20:31:50','Spent on 2 digit number  40'),(181,40,'Spend',200.00,'2024-08-04 20:32:05','Spent on 2 digit number  4'),(182,40,'Spend',200.00,'2024-08-04 20:32:13','Spent on 2 digit number  26'),(183,40,'Spend',200.00,'2024-08-04 20:32:24','Spent on 2 digit number  7'),(184,40,'Spend',200.00,'2024-08-04 20:32:33','Spent on 2 digit number  35'),(185,40,'Spend',52.00,'2024-08-04 20:32:54','Spent on 2 digit number  52'),(186,40,'Spend',200.00,'2024-08-04 20:33:03','Spent on 2 digit number  32'),(187,28,'Spend',40.00,'2024-08-05 19:29:27','Spent on 2 digit number  53'),(188,28,'Spend',15.00,'2024-08-05 19:29:39','Spent on 2 digit number  17'),(189,28,'Spend',25.00,'2024-08-05 19:29:57','Spent on 2 digit number  26'),(190,28,'Spend',10.00,'2024-08-05 19:30:14','Spent on 2 digit number  25'),(191,28,'Spend',10.00,'2024-08-05 19:30:23','Spent on 2 digit number  95'),(192,28,'Spend',10.00,'2024-08-05 19:30:32','Spent on 2 digit number  59'),(193,28,'Spend',10.00,'2024-08-05 19:30:49','Spent on 2 digit number  51'),(194,28,'Spend',10.00,'2024-08-05 19:31:05','Spent on 2 digit number  4'),(195,28,'Spend',5.00,'2024-08-05 19:31:13','Spent on 2 digit number  3'),(196,28,'Spend',5.00,'2024-08-05 19:31:21','Spent on 2 digit number  12'),(197,28,'Spend',10.00,'2024-08-05 19:31:35','Spent on 2 digit number  70'),(198,28,'Spend',10.00,'2024-08-05 19:31:42','Spent on 2 digit number  71'),(199,28,'Spend',10.00,'2024-08-05 19:31:52','Spent on 2 digit number  83'),(200,28,'Spend',5.00,'2024-08-05 19:32:10','Spent on 2 digit number  0'),(201,28,'Spend',5.00,'2024-08-05 19:32:26','Spent on 2 digit number  44'),(202,28,'Spend',5.00,'2024-08-05 19:32:31','Spent on 2 digit number  55'),(203,28,'Spend',5.00,'2024-08-05 19:32:37','Spent on 2 digit number  66'),(204,28,'Spend',5.00,'2024-08-05 19:32:43','Spent on 2 digit number  61'),(205,28,'Spend',5.00,'2024-08-05 19:32:48','Spent on 2 digit number  77'),(206,28,'Spend',5.00,'2024-08-05 19:32:54','Spent on 2 digit number  90'),(207,28,'Spend',15.00,'2024-08-05 20:26:50','Spent on 2 digit number  85'),(208,28,'Spend',5.00,'2024-08-05 20:27:02','Spent on 2 digit number  58'),(209,28,'Spend',10.00,'2024-08-05 20:27:17','Spent on 2 digit number  52'),(210,28,'Spend',5.00,'2024-08-05 20:27:31','Spent on 2 digit number  62'),(211,28,'Spend',5.00,'2024-08-05 20:27:38','Spent on 2 digit number  64'),(212,32,'Spend',50.00,'2024-08-05 20:38:52','Spent on 2 digit number  59'),(213,32,'Spend',100.00,'2024-08-05 20:38:58','Spent on 2 digit number  58'),(214,32,'Spend',100.00,'2024-08-05 20:39:10','Spent on 2 digit number  53'),(215,32,'Spend',50.00,'2024-08-05 20:39:19','Spent on 2 digit number  50'),(216,32,'Spend',50.00,'2024-08-05 20:39:43','Spent on 2 digit number  26'),(217,28,'Spend',50.00,'2024-08-19 20:41:44','Spent on 2 digit number  96'),(218,28,'Spend',15.00,'2024-08-19 20:41:54','Spent on 2 digit number  69'),(219,28,'Spend',15.00,'2024-08-19 20:42:03','Spent on 2 digit number  46'),(220,28,'Spend',50.00,'2024-08-19 20:42:13','Spent on 2 digit number  64'),(221,28,'Spend',10.00,'2024-08-19 20:42:42','Spent on 2 digit number  15'),(222,28,'Spend',10.00,'2024-08-19 20:42:53','Spent on 2 digit number  27'),(223,28,'Spend',10.00,'2024-08-19 20:43:08','Spent on 2 digit number  58'),(224,28,'Spend',5.00,'2024-08-19 20:43:35','Spent on 2 digit number  46'),(225,28,'Spend',5.00,'2024-08-19 20:43:46','Spent on 2 digit number  64'),(226,28,'Spend',5.00,'2024-08-19 20:43:55','Spent on 2 digit number  64'),(227,28,'Spend',10.00,'2024-08-19 20:44:09','Spent on 2 digit number  96'),(228,28,'Spend',5.00,'2024-08-19 20:44:18','Spent on 2 digit number  78'),(229,28,'Spend',5.00,'2024-08-19 20:45:44','Spent on 2 digit number  61'),(230,28,'Spend',5.00,'2024-08-19 20:45:53','Spent on 2 digit number  63'),(231,28,'Winner',840.00,'2024-08-19 21:30:23','Full Number Winner'),(232,28,'Spend',10.00,'2024-08-20 20:36:22','Spent on 2 digit number  2'),(233,28,'Spend',45.00,'2024-08-20 20:36:38','Spent on 2 digit number  6'),(234,28,'Spend',5.00,'2024-08-20 20:37:02','Spent on 2 digit number  9'),(235,28,'Spend',10.00,'2024-08-20 20:37:13','Spent on 2 digit number  96'),(236,28,'Spend',5.00,'2024-08-20 20:37:22','Spent on 2 digit number  90'),(237,28,'Spend',5.00,'2024-08-20 20:37:33','Spent on 2 digit number  84'),(238,28,'Spend',10.00,'2024-08-20 20:37:43','Spent on 2 digit number  78'),(239,28,'Spend',10.00,'2024-08-20 20:37:49','Spent on 2 digit number  87'),(240,28,'Spend',10.00,'2024-08-20 20:37:59','Spent on 2 digit number  74'),(241,28,'Spend',5.00,'2024-08-20 20:38:05','Spent on 2 digit number  76'),(242,28,'Spend',5.00,'2024-08-20 20:38:12','Spent on 2 digit number  79'),(243,28,'Spend',10.00,'2024-08-20 20:38:21','Spent on 2 digit number  64'),(244,28,'Spend',5.00,'2024-08-20 20:38:32','Spent on 2 digit number  68'),(245,28,'Spend',5.00,'2024-08-20 20:38:39','Spent on 2 digit number  60'),(246,28,'Spend',10.00,'2024-08-20 20:38:52','Spent on 2 digit number  85'),(247,28,'Spend',10.00,'2024-08-20 20:39:12','Spent on 2 digit number  52'),(248,28,'Spend',5.00,'2024-08-20 20:39:23','Spent on 2 digit number  51'),(249,28,'Spend',5.00,'2024-08-20 20:39:28','Spent on 2 digit number  59'),(250,28,'Spend',5.00,'2024-08-20 20:39:41','Spent on 2 digit number  43'),(251,28,'Spend',5.00,'2024-08-20 20:39:48','Spent on 2 digit number  48'),(252,28,'Spend',5.00,'2024-08-20 20:39:56','Spent on 2 digit number  42'),(253,28,'Spend',10.00,'2024-08-20 20:40:17','Spent on 2 digit number  10'),(254,28,'Spend',5.00,'2024-08-20 20:40:23','Spent on 2 digit number  14'),(255,28,'Spend',5.00,'2024-08-20 20:40:28','Spent on 2 digit number  15'),(256,28,'Spend',5.00,'2024-08-20 20:40:32','Spent on 2 digit number  19'),(257,28,'Spend',5.00,'2024-08-20 20:40:41','Spent on 2 digit number  28'),(258,28,'Spend',5.00,'2024-08-20 20:40:45','Spent on 2 digit number  29'),(259,28,'Spend',5.00,'2024-08-20 20:41:00','Spent on 2 digit number  27'),(260,28,'Spend',5.00,'2024-08-20 20:41:07','Spent on 2 digit number  23'),(261,28,'Spend',10.00,'2024-08-20 20:41:19','Spent on 2 digit number  0'),(262,28,'Spend',5.00,'2024-08-20 20:41:30','Spent on 2 digit number  33'),(263,28,'Spend',10.00,'2024-08-20 20:41:41','Spent on 2 digit number  36'),(264,28,'Spend',5.00,'2024-08-20 20:41:48','Spent on 2 digit number  38'),(265,28,'Spend',5.00,'2024-08-20 20:41:56','Spent on 2 digit number  31'),(266,28,'Spend',5.00,'2024-08-20 20:42:06','Spent on 2 digit number  13'),(267,28,'Spend',20.00,'2024-08-23 20:07:06','Spent on 2 digit number  90'),(268,28,'Spend',20.00,'2024-08-23 20:07:16','Spent on 2 digit number  20'),(269,28,'Spend',10.00,'2024-08-23 20:07:26','Spent on 2 digit number  30'),(270,28,'Spend',10.00,'2024-08-23 20:07:33','Spent on 2 digit number  40'),(271,28,'Spend',15.00,'2024-08-23 20:07:40','Spent on 2 digit number  50'),(272,28,'Spend',10.00,'2024-08-23 20:07:49','Spent on 2 digit number  60'),(273,28,'Spend',10.00,'2024-08-23 20:08:14','Spent on 2 digit number  70'),(274,28,'Spend',10.00,'2024-08-23 20:08:24','Spent on 2 digit number  80'),(275,28,'Spend',5.00,'2024-08-23 20:08:42','Spent on 2 digit number  0'),(276,28,'Spend',5.00,'2024-08-23 20:08:51','Spent on 2 digit number  10'),(277,28,'Spend',10.00,'2024-08-23 20:11:16','Spent on 2 digit number  1'),(278,28,'Spend',10.00,'2024-08-23 20:12:12','Spent on 2 digit number  61'),(279,28,'Spend',10.00,'2024-08-23 20:13:29','Spent on 2 digit number  14'),(280,28,'Spend',5.00,'2024-08-23 20:13:38','Spent on 2 digit number  15'),(281,28,'Spend',5.00,'2024-08-23 20:13:46','Spent on 2 digit number  13'),(282,28,'Spend',10.00,'2024-08-23 20:13:58','Spent on 2 digit number  92'),(283,28,'Spend',80.00,'2024-08-23 20:14:45','Spent on second digit number  8'),(284,28,'Spend',60.00,'2024-08-23 20:15:12','Spent on second digit number  0'),(285,28,'Spend',30.00,'2024-08-24 19:21:21','Spent on 2 digit number  14'),(286,28,'Spend',30.00,'2024-08-24 19:21:31','Spent on 2 digit number  41'),(287,28,'Spend',10.00,'2024-08-24 19:21:44','Spent on 2 digit number  15'),(288,28,'Spend',10.00,'2024-08-24 19:21:52','Spent on 2 digit number  51'),(289,28,'Spend',10.00,'2024-08-24 19:22:02','Spent on 2 digit number  65'),(290,28,'Spend',10.00,'2024-08-24 19:22:12','Spent on 2 digit number  92'),(291,28,'Spend',10.00,'2024-08-24 19:22:30','Spent on 2 digit number  20'),(292,28,'Spend',5.00,'2024-08-24 19:22:51','Spent on 2 digit number  13'),(293,33,'Spend',100.00,'2024-08-24 20:32:07','Spent on 2 digit number  48'),(294,28,'Spend',25.00,'2024-09-01 19:55:52','Spent on 2 digit number  34'),(295,28,'Spend',25.00,'2024-09-01 19:55:58','Spent on 2 digit number  37'),(296,28,'Spend',20.00,'2024-09-01 19:56:09','Spent on 2 digit number  62'),(297,28,'Spend',10.00,'2024-09-01 19:56:24','Spent on 2 digit number  1'),(298,28,'Spend',10.00,'2024-09-01 19:56:31','Spent on 2 digit number  10'),(299,28,'Spend',10.00,'2024-09-01 19:56:43','Spent on 2 digit number  93'),(300,28,'Spend',10.00,'2024-09-01 19:56:52','Spent on 2 digit number  77'),(301,28,'Spend',10.00,'2024-09-01 19:56:59','Spent on 2 digit number  66'),(302,28,'Spend',5.00,'2024-09-01 19:57:15','Spent on 2 digit number  26'),(303,28,'Spend',5.00,'2024-09-01 19:57:24','Spent on 2 digit number  73'),(304,28,'Spend',5.00,'2024-09-01 19:57:33','Spent on 2 digit number  43'),(305,28,'Spend',5.00,'2024-09-01 19:57:44','Spent on 2 digit number  0'),(306,28,'Spend',35.00,'2024-09-01 19:58:00','Spent on first digit number  3'),(307,28,'Spend',20.00,'2024-09-01 20:00:40','Spent on first digit number  6'),(308,28,'Spend',5.00,'2024-09-01 20:01:23','Spent on 2 digit number  60'),(309,36,'Spend',20.00,'2024-09-02 16:23:19','Spent on 2 digit number  98'),(310,36,'Spend',20.00,'2024-09-02 16:23:19','Spent on 2 digit number  85'),(311,36,'Spend',20.00,'2024-09-02 16:23:19','Spent on 2 digit number  62'),(312,36,'Spend',10.00,'2024-09-02 16:27:01','Spent on 2 digit number  83'),(313,36,'Spend',10.00,'2024-09-02 16:27:01','Spent on 2 digit number  73'),(314,36,'Spend',10.00,'2024-09-02 16:27:01','Spent on 2 digit number  60'),(315,40,'Spend',80.00,'2024-09-03 19:26:03','Spent on 2 digit number  9'),(316,40,'Spend',80.00,'2024-09-03 19:27:41','Spent on 2 digit number  90'),(317,40,'Spend',80.00,'2024-09-03 19:28:23','Spent on 2 digit number  76'),(318,40,'Spend',80.00,'2024-09-03 19:28:31','Spent on 2 digit number  67'),(319,40,'Spend',200.00,'2024-09-03 19:28:54','Spent on 2 digit number  11'),(320,40,'Spend',150.00,'2024-09-03 19:29:05','Spent on 2 digit number  28'),(321,40,'Spend',90.00,'2024-09-03 19:29:17','Spent on 2 digit number  34'),(322,40,'Spend',90.00,'2024-09-03 19:29:26','Spent on 2 digit number  45'),(323,40,'Spend',125.00,'2024-09-03 19:29:48','Spent on 2 digit number  86'),(324,40,'Spend',125.00,'2024-09-03 19:30:01','Spent on 2 digit number  88'),(325,40,'Spend',20.00,'2024-09-03 19:30:34','Spent on 2 digit number  19'),(326,40,'Spend',180.00,'2024-09-03 19:30:45','Spent on 2 digit number  91'),(327,40,'Spend',150.00,'2024-09-03 19:31:57','Spent on 2 digit number  56'),(328,40,'Spend',25.00,'2024-09-03 19:32:04','Spent on 2 digit number  66'),(329,40,'Spend',25.00,'2024-09-03 19:32:11','Spent on 2 digit number  78'),(330,28,'Spend',60.00,'2024-09-06 20:08:56','Spent on 2 digit number  22'),(331,28,'Spend',10.00,'2024-09-06 20:09:14','Spent on 2 digit number  0'),(332,28,'Spend',20.00,'2024-09-06 20:09:37','Spent on 2 digit number  66'),(333,28,'Spend',5.00,'2024-09-06 20:10:03','Spent on 2 digit number  44'),(334,28,'Spend',5.00,'2024-09-06 20:10:13','Spent on 2 digit number  77'),(335,28,'Spend',5.00,'2024-09-06 20:10:20','Spent on 2 digit number  99'),(336,28,'Spend',10.00,'2024-09-06 20:10:38','Spent on 2 digit number  93'),(337,28,'Spend',5.00,'2024-09-06 20:10:47','Spent on 2 digit number  98'),(338,28,'Spend',10.00,'2024-09-06 20:10:52','Spent on 2 digit number  91'),(339,28,'Spend',5.00,'2024-09-06 20:10:59','Spent on 2 digit number  86'),(340,28,'Spend',5.00,'2024-09-06 20:11:08','Spent on 2 digit number  78'),(341,28,'Spend',20.00,'2024-09-06 20:11:36','Spent on 2 digit number  73'),(342,28,'Spend',5.00,'2024-09-06 20:11:41','Spent on 2 digit number  79'),(343,28,'Spend',5.00,'2024-09-06 20:11:49','Spent on 2 digit number  71'),(344,28,'Spend',5.00,'2024-09-06 20:11:57','Spent on 2 digit number  62'),(345,28,'Spend',5.00,'2024-09-06 20:12:09','Spent on 2 digit number  53'),(346,28,'Spend',10.00,'2024-09-06 20:12:15','Spent on 2 digit number  52'),(347,28,'Spend',5.00,'2024-09-06 20:12:21','Spent on 2 digit number  58'),(348,28,'Spend',5.00,'2024-09-06 20:12:29','Spent on 2 digit number  48'),(349,28,'Spend',5.00,'2024-09-06 20:12:36','Spent on 2 digit number  41'),(350,28,'Spend',5.00,'2024-09-06 20:12:42','Spent on 2 digit number  47'),(351,28,'Spend',5.00,'2024-09-06 20:12:49','Spent on 2 digit number  37'),(352,28,'Spend',10.00,'2024-09-06 20:12:58','Spent on 2 digit number  31'),(353,28,'Spend',5.00,'2024-09-06 20:13:05','Spent on 2 digit number  30'),(354,28,'Spend',5.00,'2024-09-06 20:13:13','Spent on 2 digit number  26'),(355,28,'Spend',5.00,'2024-09-06 20:13:19','Spent on 2 digit number  25'),(356,28,'Spend',5.00,'2024-09-06 20:13:25','Spent on 2 digit number  21'),(357,28,'Spend',5.00,'2024-09-06 20:13:34','Spent on 2 digit number  27'),(358,28,'Spend',10.00,'2024-09-06 20:13:50','Spent on 2 digit number  5'),(359,28,'Spend',5.00,'2024-09-06 20:13:57','Spent on 2 digit number  4'),(360,28,'Spend',5.00,'2024-09-06 20:14:11','Spent on 2 digit number  15'),(361,28,'Spend',5.00,'2024-09-06 20:14:17','Spent on 2 digit number  16'),(362,28,'Spend',5.00,'2024-09-06 20:14:22','Spent on 2 digit number  14'),(363,28,'Spend',5.00,'2024-09-06 20:14:31','Spent on 2 digit number  6'),(364,28,'Spend',5.00,'2024-09-06 20:14:52','Spent on 2 digit number  65'),(365,28,'Spend',5.00,'2024-09-06 20:15:04','Spent on 2 digit number  76'),(366,28,'Spend',5.00,'2024-09-06 20:15:20','Spent on 2 digit number  68'),(367,28,'Spend',30.00,'2024-09-10 20:16:52','Spent on 2 digit number  52'),(368,28,'Spend',15.00,'2024-09-10 20:17:17','Spent on 2 digit number  58'),(369,28,'Spend',5.00,'2024-09-10 20:17:23','Spent on 2 digit number  55'),(370,28,'Spend',5.00,'2024-09-10 20:17:29','Spent on 2 digit number  59'),(371,28,'Spend',5.00,'2024-09-10 20:17:35','Spent on 2 digit number  50'),(372,28,'Spend',5.00,'2024-09-10 20:17:50','Spent on 2 digit number  0'),(373,28,'Spend',5.00,'2024-09-10 20:17:55','Spent on 2 digit number  6'),(374,28,'Spend',5.00,'2024-09-10 20:18:01','Spent on 2 digit number  4'),(375,28,'Spend',5.00,'2024-09-10 20:18:08','Spent on 2 digit number  3'),(376,28,'Spend',5.00,'2024-09-10 20:18:13','Spent on 2 digit number  5'),(377,28,'Spend',15.00,'2024-09-10 20:18:22','Spent on 2 digit number  13'),(378,28,'Spend',5.00,'2024-09-10 20:18:35','Spent on 2 digit number  14'),(379,28,'Spend',5.00,'2024-09-10 20:18:40','Spent on 2 digit number  18'),(380,28,'Spend',5.00,'2024-09-10 20:18:49','Spent on 2 digit number  15'),(381,28,'Spend',5.00,'2024-09-10 20:18:54','Spent on 2 digit number  12'),(382,28,'Spend',5.00,'2024-09-10 20:19:02','Spent on 2 digit number  26'),(383,28,'Spend',5.00,'2024-09-10 20:19:08','Spent on 2 digit number  29'),(384,28,'Spend',5.00,'2024-09-10 20:19:15','Spent on 2 digit number  25'),(385,28,'Spend',5.00,'2024-09-10 20:19:20','Spent on 2 digit number  21'),(386,28,'Spend',5.00,'2024-09-10 20:19:32','Spent on 2 digit number  38'),(387,28,'Spend',5.00,'2024-09-10 20:19:37','Spent on 2 digit number  37'),(388,28,'Spend',5.00,'2024-09-10 20:19:43','Spent on 2 digit number  33'),(389,28,'Spend',5.00,'2024-09-10 20:19:51','Spent on 2 digit number  31'),(390,28,'Spend',5.00,'2024-09-10 20:20:00','Spent on 2 digit number  40'),(391,28,'Spend',5.00,'2024-09-10 20:20:05','Spent on 2 digit number  48'),(392,28,'Spend',5.00,'2024-09-10 20:20:10','Spent on 2 digit number  47'),(393,28,'Spend',5.00,'2024-09-10 20:20:18','Spent on 2 digit number  43'),(394,28,'Spend',5.00,'2024-09-10 20:20:31','Spent on 2 digit number  63'),(395,28,'Spend',5.00,'2024-09-10 20:20:36','Spent on 2 digit number  62'),(396,28,'Spend',5.00,'2024-09-10 20:20:42','Spent on 2 digit number  60'),(397,28,'Spend',5.00,'2024-09-10 20:20:47','Spent on 2 digit number  61'),(398,28,'Spend',5.00,'2024-09-10 20:21:15','Spent on 2 digit number  94'),(399,28,'Spend',5.00,'2024-09-10 20:21:21','Spent on 2 digit number  98'),(400,28,'Spend',5.00,'2024-09-10 20:21:24','Spent on 2 digit number  99'),(401,28,'Spend',5.00,'2024-09-10 20:21:29','Spent on 2 digit number  96'),(402,28,'Spend',5.00,'2024-09-10 20:21:34','Spent on 2 digit number  91'),(403,28,'Spend',5.00,'2024-09-10 20:21:44','Spent on 2 digit number  83'),(404,28,'Spend',5.00,'2024-09-10 20:21:49','Spent on 2 digit number  82'),(405,28,'Spend',5.00,'2024-09-10 20:21:57','Spent on 2 digit number  78'),(406,28,'Spend',5.00,'2024-09-10 20:22:04','Spent on 2 digit number  72'),(407,28,'Spend',5.00,'2024-09-10 20:22:14','Spent on 2 digit number  71'),(408,28,'Spend',5.00,'2024-09-10 20:22:26','Spent on 2 digit number  77'),(409,28,'Spend',5.00,'2024-09-10 20:23:53','Spent on 2 digit number  41'),(410,28,'Spend',20.00,'2024-09-27 20:00:05','Spent on 2 digit number  4'),(411,28,'Spend',5.00,'2024-09-27 20:00:12','Spent on 2 digit number  8'),(412,28,'Spend',10.00,'2024-09-27 20:00:19','Spent on 2 digit number  8'),(413,28,'Spend',5.00,'2024-09-27 20:00:37','Spent on 2 digit number  3'),(414,28,'Spend',5.00,'2024-09-27 20:01:07','Spent on 2 digit number  24'),(415,28,'Spend',5.00,'2024-09-27 20:01:19','Spent on 2 digit number  26'),(416,28,'Spend',10.00,'2024-09-27 20:01:27','Spent on 2 digit number  34'),(417,28,'Spend',5.00,'2024-09-27 20:01:34','Spent on 2 digit number  37'),(418,28,'Spend',5.00,'2024-09-27 20:01:41','Spent on 2 digit number  33'),(419,28,'Spend',5.00,'2024-09-27 20:01:55','Spent on 2 digit number  58'),(420,28,'Spend',5.00,'2024-09-27 20:02:15','Spent on 2 digit number  69'),(421,28,'Spend',5.00,'2024-09-27 20:02:22','Spent on 2 digit number  70'),(422,28,'Spend',15.00,'2024-09-27 20:02:30','Spent on 2 digit number  71'),(423,28,'Spend',10.00,'2024-09-27 20:02:58','Spent on 2 digit number  94'),(424,28,'Spend',5.00,'2024-09-27 20:03:06','Spent on 2 digit number  99'),(425,28,'Spend',5.00,'2024-09-27 20:03:11','Spent on 2 digit number  90'),(426,28,'Spend',5.00,'2024-09-27 20:03:21','Spent on 2 digit number  82'),(427,28,'Spend',5.00,'2024-09-27 20:03:27','Spent on 2 digit number  83'),(428,28,'Spend',5.00,'2024-09-27 20:03:56','Spent on 2 digit number  76'),(429,28,'Spend',5.00,'2024-09-27 20:04:07','Spent on 2 digit number  60'),(430,28,'Spend',10.00,'2024-09-28 20:10:02','Spent on 2 digit number  61'),(431,28,'Spend',5.00,'2024-09-28 20:10:09','Spent on 2 digit number  66'),(432,28,'Spend',5.00,'2024-09-28 20:10:20','Spent on 2 digit number  60'),(433,28,'Spend',5.00,'2024-09-28 20:10:42','Spent on 2 digit number  48'),(434,28,'Spend',5.00,'2024-09-28 20:10:51','Spent on 2 digit number  58'),(435,28,'Spend',10.00,'2024-09-28 20:11:13','Spent on 2 digit number  36'),(436,28,'Spend',5.00,'2024-09-28 20:11:42','Spent on 2 digit number  5'),(437,28,'Spend',5.00,'2024-09-28 20:11:49','Spent on 2 digit number  4'),(438,28,'Spend',5.00,'2024-09-28 20:11:57','Spent on 2 digit number  3'),(439,36,'Spend',20.00,'2024-10-03 16:28:30','Spent on 2 digit number  60'),(440,36,'Spend',20.00,'2024-10-03 16:28:31','Spent on 2 digit number  60'),(441,36,'Spend',10.00,'2024-10-07 16:10:22','Spent on 2 digit number  39'),(442,36,'Spend',10.00,'2024-10-07 16:10:22','Spent on 2 digit number  89'),(443,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  29'),(444,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  32'),(445,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  38'),(446,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  82'),(447,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  28'),(448,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  30'),(449,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  20'),(450,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  80'),(451,36,'Spend',5.00,'2024-10-07 16:12:52','Spent on 2 digit number  83'),(452,28,'Spend',10.00,'2024-10-07 19:29:54','Spent on 2 digit number  4'),(453,28,'Spend',5.00,'2024-10-07 19:30:00','Spent on 2 digit number  3'),(454,28,'Spend',5.00,'2024-10-07 19:30:05','Spent on 2 digit number  6'),(455,28,'Spend',5.00,'2024-10-07 19:30:13','Spent on 2 digit number  5'),(456,28,'Spend',10.00,'2024-10-07 19:30:50','Spent on 2 digit number  29'),(457,28,'Spend',5.00,'2024-10-07 19:30:55','Spent on 2 digit number  28'),(458,28,'Spend',5.00,'2024-10-07 19:31:01','Spent on 2 digit number  21'),(459,28,'Spend',5.00,'2024-10-07 19:31:07','Spent on 2 digit number  20'),(460,28,'Spend',5.00,'2024-10-07 19:31:14','Spent on 2 digit number  24'),(461,28,'Spend',5.00,'2024-10-07 19:31:28','Spent on 2 digit number  12'),(462,28,'Spend',5.00,'2024-10-07 19:31:35','Spent on 2 digit number  15'),(463,28,'Spend',5.00,'2024-10-07 19:31:49','Spent on 2 digit number  16'),(464,28,'Spend',15.00,'2024-10-07 19:32:10','Spent on 2 digit number  43'),(465,28,'Spend',5.00,'2024-10-07 19:32:18','Spent on 2 digit number  47'),(466,28,'Spend',5.00,'2024-10-07 19:32:25','Spent on 2 digit number  42'),(467,28,'Spend',5.00,'2024-10-07 19:32:31','Spent on 2 digit number  49'),(468,28,'Spend',5.00,'2024-10-07 19:32:50','Spent on 2 digit number  52'),(469,28,'Spend',5.00,'2024-10-07 19:32:55','Spent on 2 digit number  58'),(470,28,'Spend',5.00,'2024-10-07 19:33:04','Spent on 2 digit number  53'),(471,28,'Spend',5.00,'2024-10-07 19:33:21','Spent on 2 digit number  50'),(472,28,'Spend',10.00,'2024-10-07 19:33:32','Spent on 2 digit number  67'),(473,28,'Spend',5.00,'2024-10-07 19:33:38','Spent on 2 digit number  66'),(474,28,'Spend',5.00,'2024-10-07 19:33:45','Spent on 2 digit number  62'),(475,28,'Spend',5.00,'2024-10-07 19:33:51','Spent on 2 digit number  60'),(476,28,'Spend',10.00,'2024-10-07 19:33:58','Spent on 2 digit number  71'),(477,28,'Spend',10.00,'2024-10-07 19:34:05','Spent on 2 digit number  74'),(478,28,'Spend',5.00,'2024-10-07 19:34:10','Spent on 2 digit number  78'),(479,28,'Spend',5.00,'2024-10-07 19:34:15','Spent on 2 digit number  77'),(480,28,'Spend',5.00,'2024-10-07 19:34:23','Spent on 2 digit number  70'),(481,28,'Spend',5.00,'2024-10-07 19:34:30','Spent on 2 digit number  72'),(482,28,'Spend',5.00,'2024-10-07 19:34:50','Spent on 2 digit number  94'),(483,28,'Spend',5.00,'2024-10-07 19:34:57','Spent on 2 digit number  96'),(484,28,'Spend',5.00,'2024-10-07 19:35:01','Spent on 2 digit number  99'),(485,28,'Spend',5.00,'2024-10-07 19:35:07','Spent on 2 digit number  90'),(486,28,'Spend',5.00,'2024-10-07 19:35:47','Spent on 2 digit number  82'),(487,28,'Spend',5.00,'2024-10-07 19:37:03','Spent on 2 digit number  80'),(488,28,'Spend',5.00,'2024-10-07 19:37:11','Spent on 2 digit number  85'),(489,28,'Spend',5.00,'2024-10-07 19:37:17','Spent on 2 digit number  83'),(490,28,'Spend',5.00,'2024-10-07 19:37:29','Spent on 2 digit number  18'),(491,28,'Spend',5.00,'2024-10-07 19:38:14','Spent on 2 digit number  0'),(492,28,'Spend',5.00,'2024-10-07 19:38:22','Spent on 2 digit number  22'),(493,28,'Spend',5.00,'2024-10-07 19:38:31','Spent on 2 digit number  44'),(494,28,'Spend',30.00,'2024-10-07 19:38:51','Spent on 2 digit number  27'),(495,28,'Spend',15.00,'2024-10-07 19:39:06','Spent on 2 digit number  10'),(496,28,'Spend',5.00,'2024-10-07 19:39:19','Spent on 2 digit number  63'),(497,28,'Winner',420.00,'2024-10-08 02:31:18','Full Number Winner'),(498,28,'Spend',15.00,'2024-10-21 20:16:07','Spent on 2 digit number  90'),(499,28,'Spend',10.00,'2024-10-21 20:16:15','Spent on 2 digit number  95'),(500,28,'Spend',10.00,'2024-10-21 20:16:33','Spent on 2 digit number  72'),(501,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  7'),(502,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  6'),(503,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  2'),(504,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  70'),(505,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  76'),(506,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  72'),(507,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  60'),(508,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  67'),(509,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  62'),(510,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  20'),(511,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  27'),(512,28,'Spend',5.00,'2024-10-21 20:20:20','Spent on 2 digit number  26'),(513,28,'Spend',5.00,'2024-10-21 20:20:38','Spent on 2 digit number  24'),(514,28,'Spend',5.00,'2024-10-21 20:21:09','Spent on 2 digit number  32'),(515,28,'Spend',5.00,'2024-10-21 20:21:27','Spent on 2 digit number  94'),(516,28,'Spend',5.00,'2024-10-21 20:21:37','Spent on 2 digit number  91'),(517,28,'Spend',5.00,'2024-10-21 20:21:53','Spent on 2 digit number  86'),(518,28,'Spend',5.00,'2024-10-21 20:22:04','Spent on 2 digit number  80'),(519,40,'Spend',150.00,'2024-11-11 20:42:20','Spent on 2 digit number  0'),(520,40,'Spend',150.00,'2024-11-11 20:43:45','Spent on 2 digit number  11'),(521,40,'Spend',150.00,'2024-11-11 20:43:56','Spent on 2 digit number  22'),(522,40,'Spend',150.00,'2024-11-11 20:44:10','Spent on 2 digit number  33'),(523,40,'Spend',150.00,'2024-11-11 20:44:22','Spent on 2 digit number  44'),(524,40,'Spend',150.00,'2024-11-11 20:44:30','Spent on 2 digit number  55'),(525,40,'Spend',150.00,'2024-11-11 20:44:38','Spent on 2 digit number  66'),(526,40,'Spend',150.00,'2024-11-11 20:44:51','Spent on 2 digit number  77'),(527,40,'Spend',150.00,'2024-11-11 20:44:58','Spent on 2 digit number  88'),(528,40,'Spend',150.00,'2024-11-11 20:45:06','Spent on 2 digit number  99'),(529,40,'Winner',12600.00,'2024-11-11 21:30:38','Full Number Winner'),(530,40,'Spend',1200.00,'2024-11-13 21:01:31','Spent on first digit number  0'),(531,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  23'),(532,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  23'),(533,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  12'),(534,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  54'),(535,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  87'),(536,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  56'),(537,31,'Spend',200.00,'2024-11-17 19:30:37','Spent on 2 digit number  85'),(538,31,'Spend',5.00,'2024-11-17 19:35:43','Spent on 2 digit number  1'),(539,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  90'),(540,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  9'),(541,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  18'),(542,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  81'),(543,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  27'),(544,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  72'),(545,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  54'),(546,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  45'),(547,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  36'),(548,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  63'),(549,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  30'),(550,31,'Spend',200.00,'2024-11-17 20:36:08','Spent on 2 digit number  3'),(551,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  45'),(552,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  54'),(553,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  63'),(554,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  36'),(555,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  30'),(556,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  37'),(557,31,'Spend',300.00,'2024-11-17 20:53:56','Spent on 2 digit number  79'),(558,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  48'),(559,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  49'),(560,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  94'),(561,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  45'),(562,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  54'),(563,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  30'),(564,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  3'),(565,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  85'),(566,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  34'),(567,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  43'),(568,31,'Spend',200.00,'2024-11-17 21:06:41','Spent on 2 digit number  29'),(569,40,'Spend',200.00,'2024-11-18 20:53:18','Spent on 2 digit number  34'),(570,40,'Spend',30.00,'2024-11-18 20:53:30','Spent on 2 digit number  43'),(571,40,'Spend',200.00,'2024-11-18 20:54:06','Spent on 2 digit number  47'),(572,40,'Spend',30.00,'2024-11-18 20:54:53','Spent on 2 digit number  74'),(573,40,'Spend',1000.00,'2024-11-18 21:02:34','Spent on 2 digit number  09'),(574,29,'Spend',20.00,'2024-11-19 20:45:06','Spent on 2 digit number  1'),(575,29,'Spend',40.00,'2024-11-19 20:45:22','Spent on 2 digit number  6'),(576,29,'Spend',40.00,'2024-11-19 20:45:39','Spent on 2 digit number  60'),(577,29,'Spend',50.00,'2024-11-20 20:46:54','Spent on 2 digit number  76'),(578,29,'Spend',50.00,'2024-11-20 20:47:16','Spent on 2 digit number  79'),(579,29,'Spend',250.00,'2024-11-20 20:47:45','Spent on first digit number  7'),(580,28,'Spend',40.00,'2024-11-21 20:11:32','Spent on 2 digit number  0'),(581,28,'Spend',5.00,'2024-11-21 20:11:54','Spent on 2 digit number  4'),(582,28,'Spend',5.00,'2024-11-21 20:12:01','Spent on 2 digit number  6'),(583,28,'Spend',5.00,'2024-11-21 20:12:09','Spent on 2 digit number  9'),(584,28,'Spend',5.00,'2024-11-21 20:12:29','Spent on 2 digit number  17'),(585,28,'Spend',5.00,'2024-11-21 20:12:42','Spent on 2 digit number  19'),(586,28,'Spend',5.00,'2024-11-21 20:12:58','Spent on 2 digit number  15'),(587,28,'Spend',5.00,'2024-11-21 20:13:14','Spent on 2 digit number  41'),(588,28,'Spend',5.00,'2024-11-21 20:13:23','Spent on 2 digit number  14'),(589,28,'Spend',5.00,'2024-11-21 20:13:38','Spent on 2 digit number  38'),(590,28,'Spend',5.00,'2024-11-21 20:13:51','Spent on 2 digit number  39'),(591,28,'Spend',5.00,'2024-11-21 20:14:08','Spent on 2 digit number  94'),(592,29,'Spend',25.00,'2024-11-21 20:38:25','Spent on 2 digit number  47'),(593,29,'Spend',25.00,'2024-11-21 20:38:33','Spent on 2 digit number  48'),(594,29,'Spend',50.00,'2024-11-21 20:38:56','Spent on first digit number  4'),(595,29,'Spend',300.00,'2024-11-21 20:41:05','Spent on first digit number  8'),(596,29,'Spend',30.00,'2024-11-21 20:41:46','Spent on 2 digit number  88'),(597,29,'Spend',70.00,'2024-11-21 20:42:01','Spent on 2 digit number  84'),(598,28,'Spend',10.00,'2024-11-22 20:11:29','Spent on 2 digit number  0'),(599,28,'Spend',5.00,'2024-11-22 20:11:35','Spent on 2 digit number  11'),(600,28,'Spend',5.00,'2024-11-22 20:11:40','Spent on 2 digit number  22'),(601,28,'Spend',10.00,'2024-11-22 20:11:45','Spent on 2 digit number  33'),(602,28,'Spend',10.00,'2024-11-22 20:11:51','Spent on 2 digit number  44'),(603,28,'Spend',5.00,'2024-11-22 20:11:56','Spent on 2 digit number  55'),(604,28,'Spend',5.00,'2024-11-22 20:12:01','Spent on 2 digit number  66'),(605,28,'Spend',10.00,'2024-11-22 20:12:11','Spent on 2 digit number  77'),(606,28,'Spend',5.00,'2024-11-22 20:12:35','Spent on 2 digit number  88'),(607,28,'Spend',5.00,'2024-11-22 20:12:41','Spent on 2 digit number  99'),(608,28,'Spend',10.00,'2024-11-22 20:12:55','Spent on 2 digit number  91'),(609,28,'Spend',5.00,'2024-11-22 20:13:06','Spent on 2 digit number  83'),(610,28,'Spend',5.00,'2024-11-22 20:13:14','Spent on 2 digit number  81'),(611,28,'Spend',5.00,'2024-11-22 20:13:21','Spent on 2 digit number  76'),(612,28,'Spend',5.00,'2024-11-22 20:13:29','Spent on 2 digit number  70'),(613,28,'Spend',5.00,'2024-11-22 20:13:35','Spent on 2 digit number  68'),(614,28,'Spend',5.00,'2024-11-22 20:13:41','Spent on 2 digit number  67'),(615,28,'Spend',5.00,'2024-11-22 20:13:48','Spent on 2 digit number  61'),(616,28,'Spend',10.00,'2024-11-22 20:13:56','Spent on 2 digit number  62'),(617,28,'Spend',10.00,'2024-11-22 20:14:30','Spent on 2 digit number  13'),(618,28,'Spend',5.00,'2024-11-22 20:14:41','Spent on 2 digit number  2'),(619,28,'Spend',5.00,'2024-11-22 20:14:50','Spent on 2 digit number  5'),(620,28,'Spend',10.00,'2024-11-22 20:15:07','Spent on 2 digit number  19'),(621,28,'Spend',5.00,'2024-11-22 20:15:35','Spent on 2 digit number  21'),(622,28,'Spend',10.00,'2024-11-22 20:15:41','Spent on 2 digit number  25'),(623,28,'Spend',5.00,'2024-11-22 20:15:48','Spent on 2 digit number  27'),(624,28,'Spend',5.00,'2024-11-22 20:16:02','Spent on 2 digit number  28'),(625,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  49'),(626,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  43'),(627,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  48'),(628,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  94'),(629,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  93'),(630,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  98'),(631,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  34'),(632,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  39'),(633,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  38'),(634,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  84'),(635,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  89'),(636,28,'Spend',5.00,'2024-11-22 20:17:39','Spent on 2 digit number  83'),(637,28,'Spend',50.00,'2024-11-22 20:18:31','Spent on first digit number  2');
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

-- Dump completed on 2024-11-23 17:05:27
