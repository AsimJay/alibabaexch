-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_game3
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
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biddetails`
--

LOCK TABLES `biddetails` WRITE;
/*!40000 ALTER TABLE `biddetails` DISABLE KEYS */;
INSERT INTO `biddetails` VALUES (636,28,14,5.00,'2024-11-23 16:45:03'),(637,28,12,5.00,'2024-11-23 16:45:03'),(638,28,17,5.00,'2024-11-23 16:45:03'),(639,28,19,5.00,'2024-11-23 16:45:03'),(640,28,41,5.00,'2024-11-23 16:45:03'),(641,28,42,5.00,'2024-11-23 16:45:03'),(642,28,47,5.00,'2024-11-23 16:45:03'),(643,28,49,5.00,'2024-11-23 16:45:03'),(644,28,21,5.00,'2024-11-23 16:45:03'),(645,28,24,5.00,'2024-11-23 16:45:03'),(646,28,27,5.00,'2024-11-23 16:45:03'),(647,28,29,5.00,'2024-11-23 16:45:03'),(648,28,71,5.00,'2024-11-23 16:45:03'),(649,28,74,5.00,'2024-11-23 16:45:03'),(650,28,72,5.00,'2024-11-23 16:45:03'),(651,28,79,5.00,'2024-11-23 16:45:03'),(652,28,91,5.00,'2024-11-23 16:45:03'),(653,28,94,5.00,'2024-11-23 16:45:03'),(654,28,92,5.00,'2024-11-23 16:45:03'),(655,28,97,5.00,'2024-11-23 16:45:03');
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
INSERT INTO `first_digit` VALUES (1,0,0),(2,1,30),(3,2,0),(4,3,40),(5,4,0),(6,5,30),(7,6,100),(8,7,30),(9,8,0),(10,9,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstbiddetails`
--

LOCK TABLES `firstbiddetails` WRITE;
/*!40000 ALTER TABLE `firstbiddetails` DISABLE KEYS */;
INSERT INTO `firstbiddetails` VALUES (222,28,6,100,'2024-11-23 16:43:36'),(223,28,1,30,'2024-11-23 16:43:46'),(224,28,7,30,'2024-11-23 16:44:02'),(225,28,5,30,'2024-11-23 16:44:12'),(226,28,3,40,'2024-11-23 16:44:23');
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
INSERT INTO `input_time` VALUES (1,'21:49:00');
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
INSERT INTO `luckynumber` VALUES (1,30,0);
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
INSERT INTO `number_table` VALUES (1,0,0,'2023-06-07 13:03:22'),(2,1,0,'2023-06-07 13:03:22'),(3,2,0,'2023-06-07 13:03:22'),(4,3,0,'2023-06-07 13:03:22'),(5,4,0,'2023-06-07 13:03:22'),(6,5,0,'2023-06-07 13:03:22'),(7,6,0,'2023-06-07 13:03:22'),(8,7,0,'2023-06-07 13:03:22'),(9,8,0,'2023-06-07 13:03:22'),(10,9,0,'2023-06-07 13:03:22'),(11,10,0,'2023-06-07 13:03:22'),(12,11,0,'2023-06-07 13:03:22'),(13,12,5,'2023-06-07 13:03:22'),(14,13,0,'2023-06-07 13:03:22'),(15,14,5,'2023-06-07 13:03:22'),(16,15,0,'2023-06-07 13:03:22'),(17,16,0,'2023-06-07 13:03:22'),(18,17,5,'2023-06-07 13:03:22'),(19,18,0,'2023-06-07 13:03:22'),(20,19,5,'2023-06-07 13:03:22'),(21,20,0,'2023-06-07 13:03:22'),(22,21,5,'2023-06-07 13:03:22'),(23,22,0,'2023-06-07 13:03:22'),(24,23,0,'2023-06-07 13:03:22'),(25,24,5,'2023-06-07 13:03:22'),(26,25,0,'2023-06-07 13:03:22'),(27,26,0,'2023-06-07 13:03:22'),(28,27,5,'2023-06-07 13:03:22'),(29,28,0,'2023-06-07 13:03:22'),(30,29,5,'2023-06-07 13:03:22'),(31,30,0,'2023-06-07 13:03:22'),(32,31,0,'2023-06-07 13:03:22'),(33,32,0,'2023-06-07 13:03:22'),(34,33,0,'2023-06-07 13:03:22'),(35,34,0,'2023-06-07 13:03:22'),(36,35,0,'2023-06-07 13:03:22'),(37,36,0,'2023-06-07 13:03:22'),(38,37,0,'2023-06-07 13:03:22'),(39,38,0,'2023-06-07 13:03:22'),(40,39,0,'2023-06-07 13:03:22'),(41,40,0,'2023-06-07 13:03:22'),(42,41,5,'2023-06-07 13:03:22'),(43,42,5,'2023-06-07 13:03:22'),(44,43,0,'2023-06-07 13:03:22'),(45,44,0,'2023-06-07 13:03:22'),(46,45,0,'2023-06-07 13:03:22'),(47,46,0,'2023-06-07 13:03:22'),(48,47,5,'2023-06-07 13:03:22'),(49,48,0,'2023-06-07 13:03:22'),(50,49,5,'2023-06-07 13:03:22'),(51,50,0,'2023-06-07 13:03:22'),(52,51,0,'2023-06-07 13:03:22'),(53,52,0,'2023-06-07 13:03:22'),(54,53,0,'2023-06-07 13:03:22'),(55,54,0,'2023-06-07 13:03:22'),(56,55,0,'2023-06-07 13:03:22'),(57,56,0,'2023-06-07 13:03:22'),(58,57,0,'2023-06-07 13:03:22'),(59,58,0,'2023-06-07 13:03:22'),(60,59,0,'2023-06-07 13:03:22'),(61,60,0,'2023-06-07 13:03:22'),(62,61,0,'2023-06-07 13:03:22'),(63,62,0,'2023-06-07 13:03:22'),(64,63,0,'2023-06-07 13:03:22'),(65,64,0,'2023-06-07 13:03:22'),(66,65,0,'2023-06-07 13:03:22'),(67,66,0,'2023-06-07 13:03:22'),(68,67,0,'2023-06-07 13:03:22'),(69,68,0,'2023-06-07 13:03:22'),(70,69,0,'2023-06-07 13:03:22'),(71,70,0,'2023-06-07 13:03:22'),(72,71,5,'2023-06-07 13:03:22'),(73,72,5,'2023-06-07 13:03:22'),(74,73,0,'2023-06-07 13:03:22'),(75,74,5,'2023-06-07 13:03:22'),(76,75,0,'2023-06-07 13:03:22'),(77,76,0,'2023-06-07 13:03:22'),(78,77,0,'2023-06-07 13:03:22'),(79,78,0,'2023-06-07 13:03:22'),(80,79,5,'2023-06-07 13:03:22'),(81,80,0,'2023-06-07 13:03:22'),(82,81,0,'2023-06-07 13:03:22'),(83,82,0,'2023-06-07 13:03:22'),(84,83,0,'2023-06-07 13:03:22'),(85,84,0,'2023-06-07 13:03:22'),(86,85,0,'2023-06-07 13:03:22'),(87,86,0,'2023-06-07 13:03:22'),(88,87,0,'2023-06-07 13:03:22'),(89,88,0,'2023-06-07 13:03:22'),(90,89,0,'2023-06-07 13:03:22'),(91,90,0,'2023-06-07 13:03:22'),(92,91,5,'2023-06-07 13:03:22'),(93,92,5,'2023-06-07 13:03:22'),(94,93,0,'2023-06-07 13:03:22'),(95,94,5,'2023-06-07 13:03:22'),(96,95,0,'2023-06-07 13:03:22'),(97,96,0,'2023-06-07 13:03:22'),(98,97,5,'2023-06-07 13:03:22'),(99,98,0,'2023-06-07 13:03:22'),(100,99,0,'2023-06-07 13:03:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,28,'Spend',25.00,'2024-07-07 16:15:17','Spent on 2 digit number  92'),(2,28,'Spend',25.00,'2024-07-07 16:15:28','Spent on 2 digit number  29'),(3,28,'Spend',10.00,'2024-07-07 16:16:18','Spent on 2 digit number  24'),(4,28,'Spend',10.00,'2024-07-07 16:16:25','Spent on 2 digit number  42'),(5,28,'Spend',10.00,'2024-07-07 16:16:41','Spent on 2 digit number  49'),(6,28,'Spend',10.00,'2024-07-07 16:16:59','Spent on 2 digit number  94'),(7,28,'Spend',20.00,'2024-07-07 16:18:16','Spent on first digit number  2'),(8,28,'Spend',20.00,'2024-07-07 16:18:23','Spent on first digit number  9'),(9,28,'Spend',10.00,'2024-07-07 16:18:34','Spent on 2 digit number  1'),(10,32,'Spend',100.00,'2024-07-10 16:38:35','Spent on 2 digit number  30'),(11,32,'Spend',50.00,'2024-07-10 16:38:43','Spent on 2 digit number  40'),(12,32,'Spend',100.00,'2024-07-10 16:38:54','Spent on 2 digit number  33'),(13,32,'Spend',100.00,'2024-07-10 16:39:02','Spent on 2 digit number  48'),(14,32,'Spend',150.00,'2024-07-10 16:39:26','Spent on first digit number  4'),(15,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  29'),(16,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  24'),(17,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  92'),(18,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  94'),(19,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  42'),(20,32,'Spend',30.00,'2024-07-11 16:26:47','Spent on 2 digit number  49'),(21,32,'Spend',40.00,'2024-07-11 16:27:40','Spent on 2 digit number  27'),(22,32,'Spend',40.00,'2024-07-11 16:27:49','Spent on 2 digit number  21'),(23,32,'Spend',40.00,'2024-07-11 16:27:58','Spent on 2 digit number  22'),(24,32,'Spend',50.00,'2024-07-11 16:28:22','Spent on 2 digit number  31'),(25,32,'Spend',50.00,'2024-07-11 16:28:28','Spent on 2 digit number  34'),(26,32,'Spend',50.00,'2024-07-11 16:28:34','Spent on 2 digit number  37'),(27,32,'Spend',100.00,'2024-07-11 16:28:47','Spent on 2 digit number  33'),(28,32,'Spend',200.00,'2024-07-11 16:29:09','Spent on first digit number  2'),(29,32,'Spend',250.00,'2024-07-11 16:29:17','Spent on first digit number  3'),(30,32,'Winner',1500.00,'2024-07-11 17:14:11','First Digit Winner'),(31,32,'Winner',3360.00,'2024-07-11 20:05:20','Full Number Winner'),(32,32,'Spend',150.00,'2024-07-12 16:13:13','Spent on 2 digit number  24'),(33,32,'Spend',150.00,'2024-07-12 16:13:20','Spent on 2 digit number  29'),(34,32,'Spend',50.00,'2024-07-12 16:13:44','Spent on 2 digit number  74'),(35,32,'Spend',50.00,'2024-07-12 16:13:50','Spent on 2 digit number  79'),(36,32,'Spend',100.00,'2024-07-12 16:14:10','Spent on 2 digit number  98'),(37,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  41'),(38,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  46'),(39,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  45'),(40,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  14'),(41,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  16'),(42,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  15'),(43,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  64'),(44,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  61'),(45,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  65'),(46,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  54'),(47,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  51'),(48,32,'Spend',15.00,'2024-07-12 16:16:25','Spent on 2 digit number  56'),(49,32,'Spend',50.00,'2024-07-12 16:16:54','Spent on 2 digit number  33'),(50,32,'Spend',50.00,'2024-07-12 16:17:01','Spent on 2 digit number  37'),(51,32,'Spend',50.00,'2024-07-12 16:17:08','Spent on 2 digit number  39'),(52,28,'Spend',10.00,'2024-07-28 16:24:55','Spent on 2 digit number  27'),(53,28,'Spend',10.00,'2024-07-28 16:25:03','Spent on 2 digit number  72'),(54,28,'Spend',50.00,'2024-07-28 16:44:07','Spent on first digit number  3'),(55,28,'Spend',30.00,'2024-07-28 16:44:35','Spent on first digit number  1'),(56,28,'Spend',20.00,'2024-07-28 16:45:06','Spent on first digit number  7'),(57,30,'Spend',150.00,'2024-07-29 16:13:06','Spent on first digit number  4'),(58,30,'Spend',200.00,'2024-07-29 16:13:15','Spent on first digit number  1'),(59,30,'Winner',1500.00,'2024-07-29 17:06:49','First Digit Winner'),(60,30,'Spend',200.00,'2024-07-30 16:20:28','Spent on first digit number  6'),(61,28,'Spend',40.00,'2024-07-30 16:27:55','Spent on first digit number  3'),(62,28,'Spend',25.00,'2024-07-30 16:28:12','Spent on first digit number  8'),(63,28,'Winner',300.00,'2024-07-30 18:07:52','First Digit Winner'),(64,28,'Spend',50.00,'2024-08-06 16:24:30','Spent on first digit number  5'),(65,28,'Spend',100.00,'2024-08-06 16:25:16','Spent on first digit number  7'),(66,28,'Spend',50.00,'2024-08-06 16:25:39','Spent on first digit number  9'),(67,28,'Spend',25.00,'2024-08-06 16:25:55','Spent on first digit number  0'),(68,28,'Spend',25.00,'2024-08-06 16:26:08','Spent on first digit number  6'),(69,28,'Spend',20.00,'2024-08-06 16:26:28','Spent on first digit number  7'),(70,40,'Spend',1000.00,'2024-08-08 16:42:28','Spent on first digit number  2'),(71,40,'Spend',1000.00,'2024-08-08 16:42:35','Spent on first digit number  3'),(72,40,'Winner',7500.00,'2024-08-08 17:05:21','First Digit Winner'),(73,28,'Spend',25.00,'2024-08-10 16:23:13','Spent on 2 digit number  24'),(74,28,'Spend',25.00,'2024-08-10 16:23:22','Spent on 2 digit number  42'),(75,28,'Spend',20.00,'2024-08-10 16:23:31','Spent on 2 digit number  44'),(76,28,'Spend',20.00,'2024-08-10 16:23:46','Spent on 2 digit number  62'),(77,28,'Spend',40.00,'2024-08-10 16:24:22','Spent on first digit number  4'),(78,28,'Spend',300.00,'2024-08-10 16:24:39','Spent on first digit number  2'),(79,28,'Spend',5.00,'2024-08-10 16:39:30','Spent on 2 digit number  28'),(80,28,'Spend',5.00,'2024-08-10 16:39:40','Spent on 2 digit number  21'),(81,28,'Spend',5.00,'2024-08-10 16:39:55','Spent on 2 digit number  61'),(82,28,'Spend',5.00,'2024-08-10 16:40:01','Spent on 2 digit number  60'),(83,28,'Spend',5.00,'2024-08-10 16:40:31','Spent on 2 digit number  8'),(84,28,'Spend',5.00,'2024-08-10 16:40:38','Spent on 2 digit number  3'),(85,28,'Spend',5.00,'2024-08-10 16:40:57','Spent on 2 digit number  71'),(86,28,'Spend',5.00,'2024-08-10 16:41:07','Spent on 2 digit number  78'),(87,28,'Spend',20.00,'2024-08-24 16:39:18','Spent on 2 digit number  14'),(88,28,'Spend',20.00,'2024-08-24 16:39:29','Spent on 2 digit number  41'),(89,28,'Spend',25.00,'2024-08-24 16:39:42','Spent on first digit number  4'),(90,28,'Spend',25.00,'2024-08-24 16:39:47','Spent on first digit number  1'),(91,28,'Spend',10.00,'2024-08-24 16:39:53','Spent on first digit number  6'),(92,36,'Spend',20.00,'2024-09-02 16:19:20','Spent on 2 digit number  98'),(93,36,'Spend',20.00,'2024-09-02 16:19:20','Spent on 2 digit number  85'),(94,36,'Spend',20.00,'2024-09-02 16:19:20','Spent on 2 digit number  62'),(95,36,'Spend',10.00,'2024-09-02 16:24:43','Spent on 2 digit number  73'),(96,36,'Spend',10.00,'2024-09-02 16:24:43','Spent on 2 digit number  83'),(97,36,'Spend',10.00,'2024-09-02 16:24:43','Spent on 2 digit number  60'),(98,28,'Spend',50.00,'2024-09-05 16:24:46','Spent on first digit number  5'),(99,28,'Spend',40.00,'2024-09-05 16:24:56','Spent on first digit number  1'),(100,28,'Spend',15.00,'2024-09-05 16:25:08','Spent on first digit number  0'),(101,28,'Spend',10.00,'2024-09-05 16:25:21','Spent on 2 digit number  52'),(102,28,'Spend',5.00,'2024-09-05 16:25:32','Spent on 2 digit number  53'),(103,28,'Spend',5.00,'2024-09-05 16:25:36','Spent on 2 digit number  58'),(104,28,'Spend',5.00,'2024-09-05 16:25:56','Spent on 2 digit number  59'),(105,28,'Spend',5.00,'2024-09-05 16:26:03','Spent on 2 digit number  14'),(106,28,'Spend',5.00,'2024-09-05 16:26:08','Spent on 2 digit number  18'),(107,28,'Spend',5.00,'2024-09-05 16:26:16','Spent on 2 digit number  15'),(108,28,'Spend',5.00,'2024-09-05 16:26:34','Spent on 2 digit number  4'),(109,28,'Spend',5.00,'2024-09-05 16:26:42','Spent on 2 digit number  6'),(110,28,'Spend',5.00,'2024-09-05 16:26:50','Spent on 2 digit number  3'),(111,28,'Spend',40.00,'2024-09-10 16:24:49','Spent on first digit number  7'),(112,28,'Spend',25.00,'2024-09-10 16:25:59','Spent on first digit number  3'),(113,28,'Spend',25.00,'2024-09-10 16:26:05','Spent on first digit number  1'),(114,28,'Spend',30.00,'2024-09-10 16:27:17','Spent on first digit number  6'),(115,37,'Spend',100.00,'2024-09-26 14:35:15','Spent on 2 digit number  93'),(116,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  95'),(117,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  96'),(118,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  97'),(119,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  92'),(120,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  59'),(121,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  56'),(122,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  57'),(123,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  52'),(124,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  69'),(125,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  65'),(126,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  67'),(127,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  62'),(128,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  79'),(129,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  75'),(130,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  76'),(131,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  72'),(132,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  29'),(133,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  25'),(134,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  26'),(135,37,'Spend',10.00,'2024-09-26 14:38:50','Spent on 2 digit number  27'),(136,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  23'),(137,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  25'),(138,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  27'),(139,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  29'),(140,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  32'),(141,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  35'),(142,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  37'),(143,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  39'),(144,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  52'),(145,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  53'),(146,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  57'),(147,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  59'),(148,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  72'),(149,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  73'),(150,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  75'),(151,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  79'),(152,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  92'),(153,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  93'),(154,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  95'),(155,32,'Spend',10.00,'2024-10-02 16:33:53','Spent on 2 digit number  97'),(156,36,'Spend',10.00,'2024-10-03 16:24:47','Spent on 2 digit number  60'),(157,36,'Spend',10.00,'2024-10-03 16:29:50','Spent on 2 digit number  6'),(158,36,'Spend',5.00,'2024-10-03 16:34:03','Spent on 2 digit number  20'),(159,36,'Spend',5.00,'2024-10-03 16:34:04','Spent on 2 digit number  20'),(160,36,'Spend',10.00,'2024-10-07 16:06:14','Spent on 2 digit number  39'),(161,36,'Spend',10.00,'2024-10-07 16:06:14','Spent on 2 digit number  89'),(162,36,'Spend',10.00,'2024-10-07 16:06:14','Spent on 2 digit number  39'),(163,36,'Spend',10.00,'2024-10-07 16:06:14','Spent on 2 digit number  89'),(164,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  29'),(165,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  32'),(166,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  38'),(167,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  28'),(168,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  82'),(169,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  80'),(170,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  30'),(171,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  20'),(172,36,'Spend',5.00,'2024-10-07 16:08:07','Spent on 2 digit number  83'),(173,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  29'),(174,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  32'),(175,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  38'),(176,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  28'),(177,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  82'),(178,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  80'),(179,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  30'),(180,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  20'),(181,36,'Spend',5.00,'2024-10-07 16:08:08','Spent on 2 digit number  83'),(182,28,'Spend',20.00,'2024-10-08 16:05:28','Spent on first digit number  0'),(183,28,'Spend',20.00,'2024-10-08 16:06:10','Spent on first digit number  8'),(184,30,'Spend',200.00,'2024-10-14 16:22:33','Spent on first digit number  5'),(185,30,'Spend',200.00,'2024-10-14 16:22:51','Spent on first digit number  3'),(186,30,'Spend',100.00,'2024-10-14 16:23:35','Spent on first digit number  8'),(187,28,'Spend',25.00,'2024-10-14 16:40:29','Spent on first digit number  7'),(188,28,'Spend',15.00,'2024-10-14 16:40:41','Spent on first digit number  8'),(189,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  63'),(190,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  69'),(191,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  62'),(192,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  36'),(193,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  39'),(194,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  32'),(195,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  96'),(196,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  93'),(197,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  92'),(198,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  26'),(199,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  23'),(200,28,'Spend',5.00,'2024-10-14 16:42:41','Spent on 2 digit number  29'),(201,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  63'),(202,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  69'),(203,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  62'),(204,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  36'),(205,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  39'),(206,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  32'),(207,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  96'),(208,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  93'),(209,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  92'),(210,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  26'),(211,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  23'),(212,28,'Spend',5.00,'2024-10-14 16:42:42','Spent on 2 digit number  29'),(213,41,'Spend',8950.00,'2024-11-11 16:47:19','Spent on first digit number  3'),(214,29,'Spend',50.00,'2024-11-21 16:28:26','Spent on 2 digit number  3'),(215,29,'Spend',50.00,'2024-11-21 16:28:38','Spent on 2 digit number  4'),(216,29,'Spend',100.00,'2024-11-21 16:29:01','Spent on first digit number  1'),(217,29,'Spend',400.00,'2024-11-21 16:29:20','Spent on first digit number  0'),(218,28,'Spend',170.00,'2024-11-21 16:33:42','Spent on first digit number  4'),(219,28,'Spend',150.00,'2024-11-21 16:34:04','Spent on first digit number  6'),(220,28,'Spend',50.00,'2024-11-21 16:34:27','Spent on first digit number  8'),(221,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  64'),(222,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  60'),(223,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  67'),(224,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  46'),(225,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  40'),(226,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  47'),(227,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  6'),(228,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  4'),(229,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  7'),(230,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  76'),(231,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  74'),(232,28,'Spend',5.00,'2024-11-21 16:35:38','Spent on 2 digit number  70'),(233,28,'Spend',30.00,'2024-11-21 16:36:23','Spent on first digit number  9'),(234,28,'Spend',20.00,'2024-11-21 16:36:40','Spent on first digit number  4'),(235,28,'Spend',15.00,'2024-11-21 16:36:49','Spent on first digit number  6'),(236,28,'Spend',10.00,'2024-11-21 16:37:05','Spent on first digit number  1'),(237,28,'Winner',375.00,'2024-11-21 17:10:25','First Digit Winner'),(238,30,'Spend',500.00,'2024-11-22 16:12:11','Spent on 2 digit number  1'),(239,30,'Spend',500.00,'2024-11-22 16:12:11','Spent on 2 digit number  0'),(240,28,'Spend',80.00,'2024-11-22 16:22:29','Spent on first digit number  6'),(241,28,'Spend',50.00,'2024-11-22 16:23:04','Spent on first digit number  3'),(242,28,'Spend',50.00,'2024-11-22 16:23:20','Spent on first digit number  4'),(243,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  67'),(244,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  69'),(245,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  63'),(246,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  62'),(247,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  76'),(248,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  79'),(249,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  73'),(250,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  72'),(251,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  96'),(252,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  97'),(253,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  93'),(254,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  92'),(255,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  36'),(256,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  37'),(257,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  39'),(258,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  32'),(259,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  26'),(260,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  27'),(261,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  29'),(262,28,'Spend',5.00,'2024-11-22 16:25:46','Spent on 2 digit number  23'),(263,28,'Spend',30.00,'2024-11-22 16:27:46','Spent on first digit number  8'),(264,28,'Spend',50.00,'2024-11-22 16:28:01','Spent on first digit number  2'),(265,29,'Spend',150.00,'2024-11-22 16:46:27','Spent on first digit number  9'),(266,29,'Spend',50.00,'2024-11-22 16:46:40','Spent on 2 digit number  95'),(267,28,'Winner',600.00,'2024-11-22 17:05:52','First Digit Winner'),(268,28,'Spend',100.00,'2024-11-23 16:43:36','Spent on first digit number  6'),(269,28,'Spend',30.00,'2024-11-23 16:43:46','Spent on first digit number  1'),(270,28,'Spend',30.00,'2024-11-23 16:44:02','Spent on first digit number  7'),(271,28,'Spend',30.00,'2024-11-23 16:44:12','Spent on first digit number  5'),(272,28,'Spend',40.00,'2024-11-23 16:44:23','Spent on first digit number  3'),(273,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  14'),(274,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  12'),(275,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  17'),(276,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  19'),(277,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  41'),(278,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  42'),(279,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  47'),(280,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  49'),(281,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  21'),(282,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  24'),(283,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  27'),(284,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  29'),(285,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  71'),(286,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  74'),(287,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  72'),(288,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  79'),(289,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  91'),(290,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  94'),(291,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  92'),(292,28,'Spend',5.00,'2024-11-23 16:45:03','Spent on 2 digit number  97');
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
