-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: asmitixc_lottery_web
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
  KEY `FK_User` (`user_id`),
  CONSTRAINT `FK_User` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biddetails`
--

LOCK TABLES `biddetails` WRITE;
/*!40000 ALTER TABLE `biddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `biddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer`
--

DROP TABLE IF EXISTS `dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer` (
  `dealerID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` int NOT NULL,
  `activation` tinyint(1) NOT NULL,
  `game1` tinyint(1) NOT NULL DEFAULT '1',
  `game1-0` tinyint NOT NULL DEFAULT '1',
  `game1-3` tinyint NOT NULL DEFAULT '1',
  `game1-4` tinyint NOT NULL DEFAULT '1',
  `game2` tinyint(1) NOT NULL DEFAULT '1',
  `game3` tinyint(1) NOT NULL DEFAULT '1',
  `game3-0` tinyint NOT NULL DEFAULT '1',
  `game3-1` tinyint NOT NULL DEFAULT '1',
  `game3-2` tinyint NOT NULL DEFAULT '1',
  `game3-3` tinyint NOT NULL DEFAULT '1',
  `game3-4` tinyint NOT NULL DEFAULT '1',
  `game4` tinyint(1) NOT NULL DEFAULT '1',
  `game4-0` tinyint NOT NULL DEFAULT '1',
  `game4-1` tinyint NOT NULL DEFAULT '1',
  `game4-2` tinyint NOT NULL DEFAULT '1',
  `game4-3` tinyint NOT NULL DEFAULT '1',
  `game4-4` tinyint NOT NULL DEFAULT '1',
  `game5` tinyint(1) NOT NULL DEFAULT '1',
  `game6` tinyint(1) NOT NULL DEFAULT '1',
  `game7` tinyint(1) NOT NULL DEFAULT '1',
  `game8` tinyint NOT NULL DEFAULT '1',
  `game8-0` tinyint NOT NULL DEFAULT '1',
  `game8-4` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`dealerID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer`
--

LOCK TABLES `dealer` WRITE;
/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` VALUES (5,'Dealer','786',8988340,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(8,'Arwani','Pak@4646',1650081,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(9,'AliBaba','46046',883550,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,0);
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_transactions`
--

DROP TABLE IF EXISTS `dealer_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `dealer_id` int DEFAULT NULL,
  `transaction_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`dealer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_transactions`
--

LOCK TABLES `dealer_transactions` WRITE;
/*!40000 ALTER TABLE `dealer_transactions` DISABLE KEYS */;
INSERT INTO `dealer_transactions` VALUES (1,8,'Deposit',2500000.00,'2024-01-28 11:20:52','Deposit to dealer account'),(2,5,'Withdraw',4579960.00,'2024-01-30 00:59:14','Withdraw from user account'),(3,5,'Deposit',100.00,'2024-02-14 18:48:14','Deposit to dealer account'),(4,5,'Deposit',10000.00,'2024-03-26 05:02:21','Deposit to dealer account'),(5,9,'Deposit',1000000.00,'2024-07-02 13:37:53','Deposit to dealer account'),(6,5,'Deposit',9999999.00,'2024-07-03 14:22:39','Deposit to dealer account'),(7,5,'Deposit',1.00,'2024-07-04 06:32:33','Deposit to dealer account'),(8,5,'Withdraw',1.00,'2024-07-04 06:32:39','Withdraw from user account'),(9,5,'Withdraw',200.00,'2024-07-05 13:24:26','Withdraw from user account'),(10,5,'Withdraw',200.00,'2024-07-05 13:26:45','Withdraw from user account'),(11,5,'Withdraw',2000.00,'2024-07-05 13:28:30','Withdraw from user account'),(12,5,'Withdraw',200.00,'2024-07-05 13:29:35','Withdraw from user account'),(13,5,'Deposit',200.00,'2024-07-05 13:29:42','Deposit to dealer account'),(14,5,'Deposit',1.00,'2024-07-05 13:59:11','Deposit to dealer account'),(15,5,'Withdraw',1.00,'2024-07-05 13:59:17','Withdraw from user account'),(16,5,'Deposit',1.00,'2024-07-14 16:52:41','Deposit to dealer account'),(17,5,'Withdraw',1.00,'2024-07-14 16:52:50','Withdraw from user account'),(18,8,'Deposit',99999999.99,'2024-09-26 12:55:30','Deposit to dealer account'),(19,8,'Withdraw',99999999.99,'2024-09-26 12:55:45','Withdraw from user account'),(20,8,'Deposit',5000000.00,'2024-11-17 22:44:05','Deposit to dealer account');
/*!40000 ALTER TABLE `dealer_transactions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  `bid_number` int NOT NULL,
  `bid_amount` int NOT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `firstbiddetails_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstbiddetails`
--

LOCK TABLES `firstbiddetails` WRITE;
/*!40000 ALTER TABLE `firstbiddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `firstbiddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funds` (
  `fId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`fId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funds`
--

LOCK TABLES `funds` WRITE;
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;
INSERT INTO `funds` VALUES (1,1,987),(2,2,300),(3,3,428),(4,4,200),(5,5,0),(6,6,0),(7,7,0),(8,8,250),(9,9,785),(10,10,20),(11,11,0),(19,13,0),(20,14,0),(21,15,0),(22,16,0),(23,17,0),(24,18,0),(25,19,0),(26,20,471330),(27,21,100),(28,22,5880),(29,23,4675),(30,24,2370),(31,24,0),(32,25,0),(33,26,0),(34,27,45),(35,28,100),(36,29,5),(37,30,11005),(38,31,0),(39,32,5),(40,33,237055),(41,34,31),(42,35,10),(43,36,0),(44,37,0),(45,38,2),(46,39,10),(47,40,133),(48,41,550),(49,42,9960);
/*!40000 ALTER TABLE `funds` ENABLE KEYS */;
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
INSERT INTO `input_time` VALUES (1,'18:00:00');
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
  `id` int NOT NULL,
  `suspend` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profit_percent`
--

LOCK TABLES `profit_percent` WRITE;
/*!40000 ALTER TABLE `profit_percent` DISABLE KEYS */;
INSERT INTO `profit_percent` VALUES (1,0,8400.85),(2,1,750),(3,3,750);
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
  `user_id` int NOT NULL,
  `bid_number` int NOT NULL,
  `bid_amount` int NOT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `secondbiddetails_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
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
  `transaction_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,20,'Withdraw',19500.00,'2024-01-28 07:16:48','Withdraw from dealer account'),(2,26,'Deposit',500.00,'2024-01-28 07:18:15','Deposit to user account'),(3,26,'Withdraw',440.00,'2024-01-28 07:19:52','Withdraw from dealer account'),(4,27,'Deposit',12000.00,'2024-01-28 11:21:29','Deposit to user account'),(5,28,'Deposit',460.00,'2024-01-28 11:50:29','Deposit to user account'),(6,30,'Deposit',2000.00,'2024-01-29 01:21:34','Deposit to user account'),(7,29,'Deposit',600.00,'2024-01-29 18:08:55','Deposit to user account'),(8,28,'Withdraw',400.00,'2024-01-29 21:38:28','Withdraw from dealer account'),(9,20,'Withdraw',4132.00,'2024-01-29 22:46:44','Withdraw from dealer account'),(10,29,'Deposit',350.00,'2024-01-29 23:29:36','Deposit to user account'),(11,29,'Deposit',600.00,'2024-01-30 23:31:43','Deposit to user account'),(12,29,'Withdraw',2500.00,'2024-01-31 00:17:42','Withdraw from dealer account'),(13,31,'Deposit',20000.00,'2024-01-31 01:36:49','Deposit to user account'),(14,31,'Withdraw',50000.00,'2024-01-31 09:20:02','Withdraw from dealer account'),(15,28,'Deposit',300.00,'2024-01-31 22:00:11','Deposit to user account'),(16,26,'Withdraw',4250.00,'2024-02-01 18:14:57','Withdraw from dealer account'),(17,28,'Deposit',250.00,'2024-02-01 19:07:14','Deposit to user account'),(18,29,'Deposit',500.00,'2024-02-02 00:21:14','Deposit to user account'),(19,31,'Withdraw',20000.00,'2024-02-02 01:40:26','Withdraw from dealer account'),(20,29,'Deposit',500.00,'2024-02-02 19:55:02','Deposit to user account'),(21,28,'Deposit',200.00,'2024-02-03 18:15:00','Deposit to user account'),(22,29,'Deposit',700.00,'2024-02-03 18:23:24','Deposit to user account'),(23,29,'Withdraw',700.00,'2024-02-03 19:19:57','Withdraw from dealer account'),(24,29,'Deposit',300.00,'2024-02-03 23:07:38','Deposit to user account'),(25,29,'Deposit',700.00,'2024-02-04 21:26:54','Deposit to user account'),(26,31,'Deposit',20000.00,'2024-02-05 00:40:27','Deposit to user account'),(27,29,'Deposit',500.00,'2024-02-05 20:19:38','Deposit to user account'),(28,29,'Deposit',500.00,'2024-02-05 20:37:48','Deposit to user account'),(29,28,'Deposit',200.00,'2024-02-05 23:37:26','Deposit to user account'),(30,29,'Deposit',300.00,'2024-02-06 00:46:52','Deposit to user account'),(31,31,'Deposit',20000.00,'2024-02-06 00:47:43','Deposit to user account'),(32,28,'Deposit',300.00,'2024-02-06 00:59:54','Deposit to user account'),(33,28,'Withdraw',250.00,'2024-02-06 12:59:26','Withdraw from dealer account'),(34,28,'Deposit',300.00,'2024-02-06 21:21:28','Deposit to user account'),(35,28,'Withdraw',300.00,'2024-02-07 16:59:48','Withdraw from dealer account'),(36,31,'Deposit',15000.00,'2024-02-08 01:45:28','Deposit to user account'),(37,29,'Deposit',250.00,'2024-02-08 20:34:03','Deposit to user account'),(38,28,'Deposit',400.00,'2024-02-08 22:01:46','Deposit to user account'),(39,29,'Deposit',250.00,'2024-02-08 23:10:58','Deposit to user account'),(40,29,'Deposit',200.00,'2024-02-09 00:31:39','Deposit to user account'),(41,31,'Deposit',20000.00,'2024-02-09 01:46:55','Deposit to user account'),(42,31,'Withdraw',80000.00,'2024-02-09 02:48:24','Withdraw from dealer account'),(43,28,'Deposit',200.00,'2024-02-09 18:10:47','Deposit to user account'),(44,28,'Deposit',500.00,'2024-02-09 23:12:08','Deposit to user account'),(45,31,'Withdraw',35000.00,'2024-02-10 00:33:09','Withdraw from dealer account'),(46,28,'Deposit',400.00,'2024-02-11 17:38:37','Deposit to user account'),(47,31,'Withdraw',50000.00,'2024-02-11 22:15:37','Withdraw from dealer account'),(48,28,'Deposit',500.00,'2024-02-12 00:13:57','Deposit to user account'),(49,29,'Deposit',300.00,'2024-02-13 00:28:21','Deposit to user account'),(50,29,'Deposit',300.00,'2024-02-13 01:30:13','Deposit to user account'),(51,29,'Deposit',200.00,'2024-02-13 18:09:58','Deposit to user account'),(52,29,'Deposit',500.00,'2024-02-13 22:55:06','Deposit to user account'),(53,29,'Deposit',1000.00,'2024-02-13 23:24:38','Deposit to user account'),(54,29,'Deposit',300.00,'2024-02-14 01:22:18','Deposit to user account'),(55,29,'Deposit',500.00,'2024-02-14 18:29:59','Deposit to user account'),(56,20,'Deposit',50.00,'2024-02-14 18:48:49','Deposit to user account'),(57,29,'Deposit',200.00,'2024-02-14 21:09:44','Deposit to user account'),(58,29,'Deposit',300.00,'2024-02-14 23:16:56','Deposit to user account'),(59,29,'Deposit',300.00,'2024-02-15 01:11:40','Deposit to user account'),(60,29,'Deposit',300.00,'2024-02-15 01:14:10','Deposit to user account'),(61,29,'Withdraw',300.00,'2024-02-15 01:14:54','Withdraw from dealer account'),(62,30,'Deposit',1000.00,'2024-02-15 01:20:03','Deposit to user account'),(63,30,'Deposit',50.00,'2024-02-15 01:22:40','Deposit to user account'),(64,30,'Deposit',5.00,'2024-02-15 01:27:31','Deposit to user account'),(65,32,'Deposit',1005.00,'2024-02-15 13:00:45','Deposit to user account'),(66,29,'Deposit',500.00,'2024-02-16 18:33:14','Deposit to user account'),(67,29,'Withdraw',500.00,'2024-02-16 19:01:31','Withdraw from dealer account'),(68,29,'Deposit',1000.00,'2024-02-16 20:11:11','Deposit to user account'),(69,29,'Deposit',590.00,'2024-02-16 20:23:45','Deposit to user account'),(70,29,'Deposit',800.00,'2024-02-16 20:23:57','Deposit to user account'),(71,31,'Deposit',15000.00,'2024-02-16 21:09:38','Deposit to user account'),(72,29,'Deposit',505.00,'2024-02-16 23:15:29','Deposit to user account'),(73,29,'Deposit',200.00,'2024-02-17 01:35:30','Deposit to user account'),(74,28,'Deposit',700.00,'2024-02-17 18:09:32','Deposit to user account'),(75,29,'Deposit',250.00,'2024-02-18 00:46:55','Deposit to user account'),(76,29,'Withdraw',250.00,'2024-02-18 00:48:42','Withdraw from dealer account'),(77,29,'Deposit',250.00,'2024-02-18 00:49:41','Deposit to user account'),(78,29,'Deposit',500.00,'2024-02-19 22:41:07','Deposit to user account'),(79,29,'Withdraw',500.00,'2024-02-19 23:13:01','Withdraw from dealer account'),(80,28,'Deposit',500.00,'2024-02-19 23:13:09','Deposit to user account'),(81,28,'Deposit',1000.00,'2024-02-21 22:32:18','Deposit to user account'),(82,29,'Deposit',300.00,'2024-02-23 21:23:03','Deposit to user account'),(83,29,'Withdraw',2000.00,'2024-02-23 22:13:51','Withdraw from dealer account'),(84,28,'Deposit',500.00,'2024-02-23 22:31:51','Deposit to user account'),(85,29,'Deposit',500.00,'2024-02-23 23:01:34','Deposit to user account'),(86,29,'Deposit',1000.00,'2024-02-25 00:11:25','Deposit to user account'),(87,29,'Withdraw',500.00,'2024-02-25 23:01:09','Withdraw from dealer account'),(88,28,'Withdraw',500.00,'2024-02-26 19:22:03','Withdraw from dealer account'),(89,32,'Deposit',1000.00,'2024-02-27 01:31:14','Deposit to user account'),(90,32,'Withdraw',2000.00,'2024-02-29 16:49:19','Withdraw from dealer account'),(91,28,'Deposit',500.00,'2024-02-29 18:18:58','Deposit to user account'),(92,29,'Deposit',350.00,'2024-03-01 01:31:20','Deposit to user account'),(93,31,'Deposit',3000.00,'2024-03-01 22:40:40','Deposit to user account'),(94,32,'Deposit',1000.00,'2024-03-03 23:23:20','Deposit to user account'),(95,29,'Deposit',200.00,'2024-03-05 00:42:52','Deposit to user account'),(96,32,'Withdraw',4000.00,'2024-03-05 14:51:30','Withdraw from dealer account'),(97,29,'Deposit',300.00,'2024-03-07 00:40:24','Deposit to user account'),(98,29,'Deposit',500.00,'2024-03-07 18:13:29','Deposit to user account'),(99,29,'Deposit',500.00,'2024-03-07 21:05:47','Deposit to user account'),(100,28,'Deposit',400.00,'2024-03-09 19:50:58','Deposit to user account'),(101,29,'Deposit',500.00,'2024-03-09 21:24:51','Deposit to user account'),(102,29,'Deposit',500.00,'2024-03-10 00:17:20','Deposit to user account'),(103,29,'Deposit',300.00,'2024-03-10 18:35:23','Deposit to user account'),(104,29,'Deposit',200.00,'2024-03-10 21:36:58','Deposit to user account'),(105,28,'Deposit',500.00,'2024-03-10 21:51:17','Deposit to user account'),(106,29,'Deposit',500.00,'2024-03-11 21:18:14','Deposit to user account'),(107,28,'Deposit',500.00,'2024-03-12 19:37:13','Deposit to user account'),(108,29,'Deposit',500.00,'2024-03-12 21:13:36','Deposit to user account'),(109,29,'Deposit',500.00,'2024-03-12 23:20:28','Deposit to user account'),(110,28,'Withdraw',2400.00,'2024-03-13 00:53:51','Withdraw from dealer account'),(111,29,'Deposit',500.00,'2024-03-13 20:29:21','Deposit to user account'),(112,29,'Deposit',300.00,'2024-03-14 01:38:23','Deposit to user account'),(113,33,'Deposit',25000.00,'2024-03-14 02:08:14','Deposit to user account'),(114,28,'Withdraw',500.00,'2024-03-14 19:49:46','Withdraw from dealer account'),(115,29,'Deposit',300.00,'2024-03-15 01:28:07','Deposit to user account'),(116,29,'Deposit',250.00,'2024-03-17 21:41:26','Deposit to user account'),(117,29,'Deposit',250.00,'2024-03-18 01:11:02','Deposit to user account'),(118,28,'Deposit',500.00,'2024-03-20 18:06:45','Deposit to user account'),(119,29,'Deposit',250.00,'2024-03-20 19:40:39','Deposit to user account'),(120,29,'Deposit',250.00,'2024-03-20 21:06:16','Deposit to user account'),(121,29,'Deposit',500.00,'2024-03-21 00:06:02','Deposit to user account'),(122,28,'Withdraw',700.00,'2024-03-21 00:06:40','Withdraw from dealer account'),(123,29,'Deposit',200.00,'2024-03-21 01:44:29','Deposit to user account'),(124,29,'Deposit',300.00,'2024-03-21 16:34:52','Deposit to user account'),(125,32,'Deposit',2000.00,'2024-03-21 17:54:14','Deposit to user account'),(126,28,'Deposit',600.00,'2024-03-21 18:15:55','Deposit to user account'),(127,29,'Deposit',200.00,'2024-03-21 19:46:17','Deposit to user account'),(128,29,'Deposit',300.00,'2024-03-21 22:49:12','Deposit to user account'),(129,29,'Deposit',300.00,'2024-03-22 01:20:15','Deposit to user account'),(130,28,'Withdraw',1000.00,'2024-03-22 15:14:09','Withdraw from dealer account'),(131,29,'Deposit',200.00,'2024-03-22 17:13:34','Deposit to user account'),(132,28,'Deposit',500.00,'2024-03-22 21:28:18','Deposit to user account'),(133,29,'Deposit',200.00,'2024-03-24 20:23:24','Deposit to user account'),(134,29,'Deposit',300.00,'2024-03-24 21:11:19','Deposit to user account'),(135,32,'Deposit',1000.00,'2024-03-24 22:24:41','Deposit to user account'),(136,29,'Deposit',300.00,'2024-03-25 21:28:17','Deposit to user account'),(137,20,'Deposit',5584.00,'2024-03-26 05:02:59','Deposit to user account'),(138,20,'Deposit',1000.00,'2024-03-26 05:03:10','Deposit to user account'),(139,29,'Deposit',250.00,'2024-03-26 18:08:34','Deposit to user account'),(140,29,'Deposit',250.00,'2024-03-26 19:30:33','Deposit to user account'),(141,29,'Deposit',250.00,'2024-03-26 22:47:32','Deposit to user account'),(142,34,'Deposit',100.00,'2024-03-27 07:54:38','Deposit to user account'),(143,28,'Deposit',500.00,'2024-03-27 17:16:28','Deposit to user account'),(144,29,'Deposit',300.00,'2024-03-27 17:35:10','Deposit to user account'),(145,29,'Deposit',250.00,'2024-03-27 20:14:38','Deposit to user account'),(146,29,'Deposit',250.00,'2024-03-28 00:29:03','Deposit to user account'),(147,20,'Withdraw',28986.00,'2024-03-28 01:07:10','Withdraw from dealer account'),(148,20,'Deposit',25.00,'2024-03-28 01:08:42','Deposit to user account'),(149,29,'Deposit',1000.00,'2024-03-28 01:56:17','Deposit to user account'),(150,20,'Deposit',5.00,'2024-03-28 11:43:39','Deposit to user account'),(151,20,'Deposit',5.00,'2024-03-28 11:45:42','Deposit to user account'),(152,20,'Deposit',10.00,'2024-03-28 11:51:34','Deposit to user account'),(153,20,'Deposit',10.00,'2024-03-28 12:04:55','Deposit to user account'),(154,20,'Deposit',10.00,'2024-03-28 12:04:59','Deposit to user account'),(155,20,'Deposit',10.00,'2024-03-28 12:18:01','Deposit to user account'),(156,20,'Deposit',75.00,'2024-03-28 12:36:18','Deposit to user account'),(157,20,'Withdraw',40.00,'2024-03-28 12:50:28','Withdraw from dealer account'),(158,20,'Deposit',40.00,'2024-03-28 12:52:21','Deposit to user account'),(159,29,'Withdraw',1000.00,'2024-03-28 17:34:44','Withdraw from dealer account'),(160,29,'Deposit',250.00,'2024-03-28 17:34:52','Deposit to user account'),(161,29,'Withdraw',4000.00,'2024-03-28 20:35:48','Withdraw from dealer account'),(162,29,'Deposit',200.00,'2024-03-29 00:08:46','Deposit to user account'),(163,20,'Deposit',50.00,'2024-03-29 04:02:42','Deposit to user account'),(164,20,'Deposit',100.00,'2024-03-29 04:06:28','Deposit to user account'),(165,20,'Deposit',1000.00,'2024-03-29 06:31:35','Deposit to user account'),(166,28,'Withdraw',1000.00,'2024-03-29 13:00:18','Withdraw from dealer account'),(167,29,'Deposit',250.00,'2024-03-29 17:51:21','Deposit to user account'),(168,29,'Deposit',250.00,'2024-03-29 23:08:10','Deposit to user account'),(169,29,'Deposit',250.00,'2024-03-30 01:41:41','Deposit to user account'),(170,20,'Deposit',30.00,'2024-03-30 15:31:48','Deposit to user account'),(171,28,'Deposit',500.00,'2024-03-30 17:28:49','Deposit to user account'),(172,29,'Deposit',200.00,'2024-03-30 17:34:21','Deposit to user account'),(173,29,'Deposit',250.00,'2024-03-30 23:24:36','Deposit to user account'),(174,29,'Deposit',250.00,'2024-03-31 01:28:22','Deposit to user account'),(175,29,'Deposit',250.00,'2024-03-31 17:36:51','Deposit to user account'),(176,29,'Deposit',250.00,'2024-03-31 23:25:27','Deposit to user account'),(177,29,'Deposit',250.00,'2024-04-01 01:43:27','Deposit to user account'),(178,29,'Deposit',250.00,'2024-04-01 17:32:53','Deposit to user account'),(179,29,'Deposit',250.00,'2024-04-01 20:23:03','Deposit to user account'),(180,29,'Deposit',250.00,'2024-04-02 01:26:41','Deposit to user account'),(181,28,'Deposit',600.00,'2024-04-02 17:38:30','Deposit to user account'),(182,29,'Deposit',500.00,'2024-04-02 21:21:15','Deposit to user account'),(183,29,'Deposit',250.00,'2024-04-02 23:26:34','Deposit to user account'),(184,28,'Deposit',500.00,'2024-04-03 00:26:04','Deposit to user account'),(185,29,'Deposit',1000.00,'2024-04-03 02:05:07','Deposit to user account'),(186,29,'Deposit',500.00,'2024-04-04 00:21:26','Deposit to user account'),(187,29,'Deposit',500.00,'2024-04-04 01:47:50','Deposit to user account'),(188,29,'Deposit',500.00,'2024-04-04 01:49:27','Deposit to user account'),(189,29,'Withdraw',2000.00,'2024-04-04 02:30:31','Withdraw from dealer account'),(190,28,'Deposit',500.00,'2024-04-05 00:27:12','Deposit to user account'),(191,29,'Deposit',300.00,'2024-04-05 00:42:19','Deposit to user account'),(192,29,'Deposit',200.00,'2024-04-05 19:53:38','Deposit to user account'),(193,29,'Deposit',300.00,'2024-04-05 23:28:09','Deposit to user account'),(194,29,'Deposit',200.00,'2024-04-06 00:17:17','Deposit to user account'),(195,28,'Deposit',500.00,'2024-04-06 00:41:51','Deposit to user account'),(196,29,'Deposit',300.00,'2024-04-06 21:42:40','Deposit to user account'),(197,29,'Withdraw',500.00,'2024-04-06 22:11:23','Withdraw from dealer account'),(198,29,'Deposit',500.00,'2024-04-06 22:31:27','Deposit to user account'),(199,28,'Deposit',500.00,'2024-04-06 22:34:59','Deposit to user account'),(200,29,'Deposit',300.00,'2024-04-07 01:45:08','Deposit to user account'),(201,29,'Withdraw',12000.00,'2024-04-07 02:35:08','Withdraw from dealer account'),(202,29,'Deposit',300.00,'2024-04-07 21:15:50','Deposit to user account'),(203,29,'Deposit',500.00,'2024-04-07 23:00:54','Deposit to user account'),(204,29,'Deposit',500.00,'2024-04-08 00:21:41','Deposit to user account'),(205,28,'Deposit',600.00,'2024-04-08 22:38:57','Deposit to user account'),(206,29,'Deposit',500.00,'2024-04-09 00:25:47','Deposit to user account'),(207,29,'Deposit',500.00,'2024-04-09 01:13:24','Deposit to user account'),(208,29,'Deposit',2000.00,'2024-04-09 01:51:27','Deposit to user account'),(209,29,'Withdraw',500.00,'2024-04-09 02:31:02','Withdraw from dealer account'),(210,29,'Deposit',500.00,'2024-04-09 20:03:17','Deposit to user account'),(211,28,'Deposit',500.00,'2024-04-09 20:30:26','Deposit to user account'),(212,29,'Deposit',500.00,'2024-04-09 23:06:22','Deposit to user account'),(213,29,'Deposit',10.00,'2024-04-10 00:12:06','Deposit to user account'),(214,20,'Deposit',30.00,'2024-04-10 00:12:42','Deposit to user account'),(215,29,'Deposit',500.00,'2024-04-10 00:16:02','Deposit to user account'),(216,29,'Deposit',300.00,'2024-04-12 18:05:30','Deposit to user account'),(217,29,'Deposit',500.00,'2024-04-12 20:10:30','Deposit to user account'),(218,29,'Deposit',300.00,'2024-04-12 21:29:32','Deposit to user account'),(219,29,'Withdraw',500.00,'2024-04-12 22:38:14','Withdraw from dealer account'),(220,29,'Deposit',250.00,'2024-04-13 01:22:10','Deposit to user account'),(221,29,'Deposit',500.00,'2024-04-13 01:27:39','Deposit to user account'),(222,29,'Deposit',500.00,'2024-04-13 22:49:44','Deposit to user account'),(223,30,'Deposit',500.00,'2024-04-14 01:06:49','Deposit to user account'),(224,29,'Deposit',250.00,'2024-04-15 01:23:34','Deposit to user account'),(225,29,'Deposit',300.00,'2024-04-16 18:15:17','Deposit to user account'),(226,28,'Deposit',500.00,'2024-04-16 23:51:25','Deposit to user account'),(227,28,'Deposit',1275.00,'2024-04-17 18:34:21','Deposit to user account'),(228,33,'Deposit',50000.00,'2024-04-17 22:00:12','Deposit to user account'),(229,29,'Deposit',500.00,'2024-04-18 21:49:37','Deposit to user account'),(230,33,'Withdraw',2000.00,'2024-04-19 06:16:23','Withdraw from dealer account'),(231,28,'Withdraw',500.00,'2024-04-19 20:02:16','Withdraw from dealer account'),(232,29,'Deposit',300.00,'2024-04-20 18:24:05','Deposit to user account'),(233,29,'Deposit',200.00,'2024-04-20 21:12:33','Deposit to user account'),(234,29,'Deposit',200.00,'2024-04-20 21:12:57','Deposit to user account'),(235,29,'Withdraw',200.00,'2024-04-21 07:07:26','Withdraw from dealer account'),(236,29,'Deposit',500.00,'2024-04-22 02:01:53','Deposit to user account'),(237,31,'Deposit',10000.00,'2024-04-22 20:15:11','Deposit to user account'),(238,29,'Deposit',500.00,'2024-04-22 21:37:05','Deposit to user account'),(239,31,'Withdraw',37000.00,'2024-04-22 22:28:18','Withdraw from dealer account'),(240,29,'Deposit',300.00,'2024-04-23 21:28:26','Deposit to user account'),(241,31,'Deposit',3000.00,'2024-04-24 06:50:14','Deposit to user account'),(242,28,'Deposit',400.00,'2024-04-24 20:25:47','Deposit to user account'),(243,31,'Deposit',3000.00,'2024-04-25 18:22:18','Deposit to user account'),(244,29,'Deposit',300.00,'2024-04-25 21:38:14','Deposit to user account'),(245,29,'Deposit',20.00,'2024-04-26 00:26:25','Deposit to user account'),(246,29,'Deposit',180.00,'2024-04-26 00:26:43','Deposit to user account'),(247,31,'Deposit',5000.00,'2024-04-27 17:55:06','Deposit to user account'),(248,29,'Deposit',300.00,'2024-04-27 18:38:53','Deposit to user account'),(249,28,'Deposit',500.00,'2024-04-27 23:13:29','Deposit to user account'),(250,29,'Deposit',500.00,'2024-04-27 23:21:40','Deposit to user account'),(251,29,'Withdraw',1000.00,'2024-04-28 00:25:12','Withdraw from dealer account'),(252,28,'Withdraw',500.00,'2024-04-28 14:30:16','Withdraw from dealer account'),(253,29,'Deposit',500.00,'2024-04-28 21:40:26','Deposit to user account'),(254,29,'Withdraw',1000.00,'2024-04-28 22:56:07','Withdraw from dealer account'),(255,29,'Withdraw',2000.00,'2024-04-29 02:41:16','Withdraw from dealer account'),(256,29,'Deposit',1000.00,'2024-04-29 21:51:45','Deposit to user account'),(257,32,'Deposit',1000.00,'2024-04-30 00:54:39','Deposit to user account'),(258,31,'Withdraw',10000.00,'2024-04-30 16:30:06','Withdraw from dealer account'),(259,32,'Deposit',1000.00,'2024-04-30 17:51:19','Deposit to user account'),(260,29,'Deposit',1200.00,'2024-04-30 18:08:55','Deposit to user account'),(261,33,'Withdraw',1700.00,'2024-04-30 20:12:33','Withdraw from dealer account'),(262,29,'Deposit',500.00,'2024-04-30 23:20:05','Deposit to user account'),(263,32,'Deposit',1000.00,'2024-05-01 02:00:00','Deposit to user account'),(264,31,'Withdraw',20000.00,'2024-05-01 10:16:19','Withdraw from dealer account'),(265,35,'Deposit',3000.00,'2024-05-01 10:22:29','Deposit to user account'),(266,36,'Deposit',1000.00,'2024-05-01 20:08:01','Deposit to user account'),(267,35,'Withdraw',9000.00,'2024-05-01 21:32:44','Withdraw from dealer account'),(268,29,'Deposit',500.00,'2024-05-02 00:39:57','Deposit to user account'),(269,32,'Deposit',1000.00,'2024-05-02 02:09:03','Deposit to user account'),(270,29,'Deposit',500.00,'2024-05-02 23:23:10','Deposit to user account'),(271,28,'Deposit',500.00,'2024-05-03 01:34:55','Deposit to user account'),(272,28,'Deposit',1000.00,'2024-05-03 01:42:50','Deposit to user account'),(273,35,'Withdraw',2000.00,'2024-05-03 09:31:25','Withdraw from dealer account'),(274,32,'Deposit',1000.00,'2024-05-03 18:05:45','Deposit to user account'),(275,35,'Withdraw',2000.00,'2024-05-03 21:17:36','Withdraw from dealer account'),(276,29,'Deposit',500.00,'2024-05-03 21:31:12','Deposit to user account'),(277,33,'Deposit',100000.00,'2024-05-04 01:02:40','Deposit to user account'),(278,32,'Deposit',1000.00,'2024-05-04 01:53:30','Deposit to user account'),(279,31,'Withdraw',25000.00,'2024-05-04 03:39:43','Withdraw from dealer account'),(280,33,'Withdraw',35000.00,'2024-05-04 10:46:07','Withdraw from dealer account'),(281,32,'Deposit',1000.00,'2024-05-04 17:55:29','Deposit to user account'),(282,35,'Withdraw',5000.00,'2024-05-04 21:02:15','Withdraw from dealer account'),(283,31,'Withdraw',30000.00,'2024-05-05 00:56:48','Withdraw from dealer account'),(284,35,'Withdraw',15000.00,'2024-05-05 01:23:40','Withdraw from dealer account'),(285,28,'Deposit',500.00,'2024-05-05 01:28:35','Deposit to user account'),(286,37,'Deposit',1000.00,'2024-05-05 18:59:25','Deposit to user account'),(287,27,'Deposit',455.00,'2024-05-06 21:08:14','Deposit to user account'),(288,27,'Deposit',1000.00,'2024-05-07 16:58:55','Deposit to user account'),(289,28,'Withdraw',2200.00,'2024-05-07 19:14:45','Withdraw from dealer account'),(290,27,'Withdraw',1000.00,'2024-05-07 21:53:40','Withdraw from dealer account'),(291,27,'Withdraw',4000.00,'2024-05-08 08:50:29','Withdraw from dealer account'),(292,27,'Deposit',1000.00,'2024-05-09 13:06:47','Deposit to user account'),(293,27,'Withdraw',1000.00,'2024-05-09 13:34:15','Withdraw from dealer account'),(294,37,'Deposit',1000.00,'2024-05-09 13:34:27','Deposit to user account'),(295,27,'Deposit',500.00,'2024-05-09 13:56:26','Deposit to user account'),(296,27,'Deposit',1000.00,'2024-05-10 09:49:25','Deposit to user account'),(297,27,'Deposit',1000.00,'2024-05-10 15:05:21','Deposit to user account'),(298,38,'Deposit',2000.00,'2024-05-11 09:57:38','Deposit to user account'),(299,27,'Deposit',1000.00,'2024-05-11 11:39:18','Deposit to user account'),(300,27,'Deposit',1000.00,'2024-05-11 13:03:49','Deposit to user account'),(301,37,'Deposit',1000.00,'2024-05-11 13:32:51','Deposit to user account'),(302,27,'Deposit',1000.00,'2024-05-11 14:13:19','Deposit to user account'),(303,27,'Withdraw',1500.00,'2024-05-12 04:10:39','Withdraw from dealer account'),(304,27,'Deposit',1000.00,'2024-05-12 14:28:34','Deposit to user account'),(305,27,'Deposit',1000.00,'2024-05-13 11:51:43','Deposit to user account'),(306,37,'Deposit',1000.00,'2024-05-13 11:52:02','Deposit to user account'),(307,38,'Deposit',1000.00,'2024-05-13 13:31:54','Deposit to user account'),(308,27,'Deposit',500.00,'2024-05-13 14:40:32','Deposit to user account'),(309,27,'Deposit',500.00,'2024-05-13 15:25:56','Deposit to user account'),(310,27,'Deposit',500.00,'2024-05-14 13:02:15','Deposit to user account'),(311,35,'Deposit',2000.00,'2024-05-14 20:49:58','Deposit to user account'),(312,35,'Deposit',3000.00,'2024-05-15 06:25:31','Deposit to user account'),(313,27,'Deposit',500.00,'2024-05-15 08:24:15','Deposit to user account'),(314,37,'Deposit',1000.00,'2024-05-15 10:52:27','Deposit to user account'),(315,27,'Deposit',500.00,'2024-05-15 13:06:18','Deposit to user account'),(316,35,'Deposit',3000.00,'2024-05-15 18:37:26','Deposit to user account'),(317,27,'Deposit',500.00,'2024-05-16 12:20:44','Deposit to user account'),(318,35,'Deposit',3000.00,'2024-05-16 17:43:09','Deposit to user account'),(319,27,'Deposit',500.00,'2024-05-17 11:49:16','Deposit to user account'),(320,27,'Deposit',1000.00,'2024-05-17 13:42:27','Deposit to user account'),(321,27,'Deposit',1000.00,'2024-05-18 12:58:22','Deposit to user account'),(322,27,'Deposit',500.00,'2024-05-18 13:44:14','Deposit to user account'),(323,28,'Deposit',500.00,'2024-05-18 14:19:23','Deposit to user account'),(324,27,'Deposit',500.00,'2024-05-18 16:06:16','Deposit to user account'),(325,27,'Deposit',500.00,'2024-05-18 16:56:15','Deposit to user account'),(326,27,'Deposit',1000.00,'2024-05-19 14:29:52','Deposit to user account'),(327,27,'Deposit',500.00,'2024-05-19 15:40:41','Deposit to user account'),(328,27,'Deposit',1000.00,'2024-05-20 12:43:29','Deposit to user account'),(329,27,'Withdraw',1000.00,'2024-05-20 14:47:09','Withdraw from dealer account'),(330,37,'Deposit',1000.00,'2024-05-20 14:47:22','Deposit to user account'),(331,27,'Deposit',1000.00,'2024-05-21 12:29:56','Deposit to user account'),(332,28,'Deposit',500.00,'2024-05-21 12:47:56','Deposit to user account'),(333,27,'Deposit',500.00,'2024-05-21 15:43:23','Deposit to user account'),(334,27,'Deposit',500.00,'2024-05-22 12:50:14','Deposit to user account'),(335,27,'Deposit',700.00,'2024-05-22 15:54:39','Deposit to user account'),(336,27,'Deposit',500.00,'2024-05-23 11:37:07','Deposit to user account'),(337,27,'Deposit',1000.00,'2024-05-23 13:28:08','Deposit to user account'),(338,37,'Deposit',1000.00,'2024-05-24 12:37:41','Deposit to user account'),(339,27,'Deposit',850.00,'2024-05-24 12:41:20','Deposit to user account'),(340,27,'Deposit',500.00,'2024-05-24 14:59:24','Deposit to user account'),(341,27,'Deposit',1000.00,'2024-05-24 15:51:58','Deposit to user account'),(342,33,'Withdraw',3670.00,'2024-05-25 08:08:26','Withdraw from dealer account'),(343,37,'Deposit',1000.00,'2024-05-25 12:10:04','Deposit to user account'),(344,27,'Deposit',1000.00,'2024-05-25 12:16:21','Deposit to user account'),(345,27,'Deposit',500.00,'2024-05-25 14:03:30','Deposit to user account'),(346,27,'Deposit',500.00,'2024-05-26 12:43:50','Deposit to user account'),(347,27,'Deposit',500.00,'2024-05-26 14:41:22','Deposit to user account'),(348,27,'Deposit',500.00,'2024-05-26 15:11:34','Deposit to user account'),(349,27,'Deposit',1000.00,'2024-05-26 15:52:52','Deposit to user account'),(350,27,'Deposit',1000.00,'2024-05-27 11:56:54','Deposit to user account'),(351,27,'Deposit',1000.00,'2024-05-28 12:09:27','Deposit to user account'),(352,27,'Withdraw',1000.00,'2024-05-28 15:26:16','Withdraw from dealer account'),(353,27,'Withdraw',4000.00,'2024-05-28 15:27:24','Withdraw from dealer account'),(354,35,'Deposit',3000.00,'2024-05-28 17:47:16','Deposit to user account'),(355,27,'Deposit',1000.00,'2024-05-28 19:30:35','Deposit to user account'),(356,35,'Withdraw',6000.00,'2024-05-29 06:19:56','Withdraw from dealer account'),(357,27,'Withdraw',10500.00,'2024-05-29 06:20:36','Withdraw from dealer account'),(358,27,'Withdraw',1000.00,'2024-05-29 15:18:31','Withdraw from dealer account'),(359,37,'Deposit',1000.00,'2024-05-29 15:18:39','Deposit to user account'),(360,35,'Withdraw',5000.00,'2024-05-29 17:10:51','Withdraw from dealer account'),(361,35,'Deposit',2000.00,'2024-05-30 13:02:18','Deposit to user account'),(362,27,'Deposit',1000.00,'2024-05-30 19:15:08','Deposit to user account'),(363,27,'Deposit',1000.00,'2024-05-31 12:20:20','Deposit to user account'),(364,27,'Deposit',1000.00,'2024-05-31 13:31:24','Deposit to user account'),(365,35,'Deposit',3000.00,'2024-05-31 14:15:38','Deposit to user account'),(366,27,'Deposit',1000.00,'2024-05-31 16:49:54','Deposit to user account'),(367,27,'Deposit',1000.00,'2024-05-31 18:58:44','Deposit to user account'),(368,27,'Deposit',3040.00,'2024-06-01 11:41:05','Deposit to user account'),(369,27,'Withdraw',3000.00,'2024-06-01 17:30:21','Withdraw from dealer account'),(370,27,'Deposit',1000.00,'2024-06-01 19:05:29','Deposit to user account'),(371,27,'Deposit',500.00,'2024-06-01 20:13:49','Deposit to user account'),(372,27,'Deposit',1000.00,'2024-06-02 12:34:06','Deposit to user account'),(373,27,'Withdraw',1000.00,'2024-06-02 12:36:42','Withdraw from dealer account'),(374,37,'Deposit',1000.00,'2024-06-02 12:36:52','Deposit to user account'),(375,27,'Deposit',500.00,'2024-06-02 13:04:26','Deposit to user account'),(376,27,'Deposit',500.00,'2024-06-02 13:34:14','Deposit to user account'),(377,27,'Deposit',1000.00,'2024-06-02 14:06:32','Deposit to user account'),(378,27,'Deposit',500.00,'2024-06-02 15:05:26','Deposit to user account'),(379,27,'Deposit',1270.00,'2024-06-02 16:06:58','Deposit to user account'),(380,27,'Withdraw',3000.00,'2024-06-02 18:18:27','Withdraw from dealer account'),(381,27,'Deposit',1000.00,'2024-06-03 12:22:54','Deposit to user account'),(382,27,'Deposit',500.00,'2024-06-03 14:13:41','Deposit to user account'),(383,27,'Deposit',500.00,'2024-06-03 17:02:07','Deposit to user account'),(384,27,'Deposit',1000.00,'2024-06-04 11:37:33','Deposit to user account'),(385,27,'Deposit',1000.00,'2024-06-04 15:18:13','Deposit to user account'),(386,35,'Deposit',6000.00,'2024-06-04 15:38:51','Deposit to user account'),(387,20,'Deposit',1000.00,'2024-06-04 16:45:47','Deposit to user account'),(388,20,'Withdraw',85.00,'2024-06-04 16:56:01','Withdraw from dealer account'),(389,20,'Deposit',50.00,'2024-06-04 17:24:45','Deposit to user account'),(390,27,'Deposit',1000.00,'2024-06-05 08:00:34','Deposit to user account'),(391,27,'Deposit',500.00,'2024-06-05 14:39:55','Deposit to user account'),(392,27,'Deposit',500.00,'2024-06-06 07:22:00','Deposit to user account'),(393,27,'Deposit',500.00,'2024-06-06 15:54:50','Deposit to user account'),(394,27,'Withdraw',1500.00,'2024-06-06 17:13:14','Withdraw from dealer account'),(395,27,'Deposit',900.00,'2024-06-06 18:59:55','Deposit to user account'),(396,27,'Deposit',500.00,'2024-06-06 19:51:29','Deposit to user account'),(397,27,'Deposit',1000.00,'2024-06-07 11:37:45','Deposit to user account'),(398,27,'Deposit',1000.00,'2024-06-07 16:01:36','Deposit to user account'),(399,27,'Deposit',480.00,'2024-06-07 18:02:11','Deposit to user account'),(400,27,'Deposit',500.00,'2024-06-08 13:51:52','Deposit to user account'),(401,27,'Withdraw',1000.00,'2024-06-08 16:39:08','Withdraw from dealer account'),(402,27,'Deposit',500.00,'2024-06-09 12:35:22','Deposit to user account'),(403,27,'Deposit',500.00,'2024-06-09 14:09:21','Deposit to user account'),(404,35,'Deposit',2000.00,'2024-06-09 15:23:46','Deposit to user account'),(405,27,'Deposit',500.00,'2024-06-09 16:03:33','Deposit to user account'),(406,27,'Deposit',500.00,'2024-06-09 17:04:19','Deposit to user account'),(407,32,'Deposit',1000.00,'2024-06-09 21:02:14','Deposit to user account'),(408,27,'Deposit',800.00,'2024-06-10 16:05:07','Deposit to user account'),(409,27,'Deposit',380.00,'2024-06-10 18:05:07','Deposit to user account'),(410,27,'Deposit',500.00,'2024-06-11 11:00:45','Deposit to user account'),(411,27,'Deposit',1000.00,'2024-06-11 13:23:58','Deposit to user account'),(412,32,'Deposit',2000.00,'2024-06-11 16:34:49','Deposit to user account'),(413,27,'Withdraw',4000.00,'2024-06-11 16:35:21','Withdraw from dealer account'),(414,27,'Deposit',1000.00,'2024-06-11 19:12:38','Deposit to user account'),(415,27,'Deposit',1000.00,'2024-06-12 11:45:06','Deposit to user account'),(416,27,'Withdraw',4000.00,'2024-06-12 13:25:14','Withdraw from dealer account'),(417,27,'Withdraw',2000.00,'2024-06-12 16:13:33','Withdraw from dealer account'),(418,32,'Deposit',2800.00,'2024-06-12 16:33:12','Deposit to user account'),(419,27,'Withdraw',1000.00,'2024-06-12 17:40:15','Withdraw from dealer account'),(420,27,'Deposit',1000.00,'2024-06-13 12:09:35','Deposit to user account'),(421,27,'Deposit',1000.00,'2024-06-13 15:37:29','Deposit to user account'),(422,27,'Deposit',1000.00,'2024-06-13 17:29:51','Deposit to user account'),(423,32,'Deposit',1000.00,'2024-06-14 11:03:13','Deposit to user account'),(424,27,'Deposit',1000.00,'2024-06-14 12:28:33','Deposit to user account'),(425,27,'Withdraw',850.00,'2024-06-14 18:47:19','Withdraw from dealer account'),(426,27,'Withdraw',3000.00,'2024-06-15 04:06:39','Withdraw from dealer account'),(427,27,'Withdraw',5000.00,'2024-06-15 04:50:56','Withdraw from dealer account'),(428,32,'Withdraw',3000.00,'2024-06-15 17:44:42','Withdraw from dealer account'),(429,27,'Deposit',1000.00,'2024-06-16 12:41:49','Deposit to user account'),(430,27,'Deposit',1000.00,'2024-06-16 13:41:38','Deposit to user account'),(431,27,'Deposit',1000.00,'2024-06-16 16:58:31','Deposit to user account'),(432,28,'Deposit',500.00,'2024-06-16 17:12:56','Deposit to user account'),(433,27,'Deposit',1000.00,'2024-06-16 17:30:49','Deposit to user account'),(434,27,'Deposit',1000.00,'2024-06-16 17:58:26','Deposit to user account'),(435,27,'Withdraw',5000.00,'2024-06-16 19:41:08','Withdraw from dealer account'),(436,27,'Deposit',1000.00,'2024-06-18 13:02:44','Deposit to user account'),(437,27,'Deposit',1000.00,'2024-06-18 16:01:44','Deposit to user account'),(438,27,'Withdraw',1000.00,'2024-06-19 08:35:02','Withdraw from dealer account'),(439,27,'Deposit',1000.00,'2024-06-19 12:47:13','Deposit to user account'),(440,27,'Deposit',1020.00,'2024-06-19 15:22:45','Deposit to user account'),(441,27,'Withdraw',2500.00,'2024-06-19 17:20:19','Withdraw from dealer account'),(442,27,'Withdraw',4000.00,'2024-06-19 17:20:25','Withdraw from dealer account'),(443,27,'Deposit',1000.00,'2024-06-20 14:18:53','Deposit to user account'),(444,27,'Deposit',1000.00,'2024-06-20 14:45:17','Deposit to user account'),(445,27,'Deposit',1000.00,'2024-06-20 15:36:46','Deposit to user account'),(446,27,'Deposit',1000.00,'2024-06-20 16:21:25','Deposit to user account'),(447,27,'Deposit',1000.00,'2024-06-21 05:20:17','Deposit to user account'),(448,27,'Withdraw',2000.00,'2024-06-21 14:42:20','Withdraw from dealer account'),(449,27,'Deposit',1000.00,'2024-06-21 15:46:05','Deposit to user account'),(450,27,'Deposit',1000.00,'2024-06-21 16:25:11','Deposit to user account'),(451,32,'Deposit',1300.00,'2024-06-21 16:41:59','Deposit to user account'),(452,35,'Deposit',1500.00,'2024-06-21 17:33:03','Deposit to user account'),(453,27,'Deposit',980.00,'2024-06-21 18:16:08','Deposit to user account'),(454,27,'Deposit',1000.00,'2024-06-21 19:06:10','Deposit to user account'),(455,35,'Withdraw',14000.00,'2024-06-21 21:32:03','Withdraw from dealer account'),(456,27,'Deposit',500.00,'2024-06-22 11:41:50','Deposit to user account'),(457,27,'Deposit',1000.00,'2024-06-22 13:13:18','Deposit to user account'),(458,27,'Deposit',500.00,'2024-06-22 14:13:23','Deposit to user account'),(459,27,'Deposit',1000.00,'2024-06-22 14:55:09','Deposit to user account'),(460,27,'Deposit',1000.00,'2024-06-22 15:26:23','Deposit to user account'),(461,27,'Deposit',550.00,'2024-06-23 12:17:35','Deposit to user account'),(462,27,'Withdraw',1000.00,'2024-06-23 14:14:35','Withdraw from dealer account'),(463,27,'Deposit',500.00,'2024-06-23 15:02:33','Deposit to user account'),(464,32,'Deposit',1000.00,'2024-06-23 15:20:21','Deposit to user account'),(465,27,'Deposit',500.00,'2024-06-23 15:20:27','Deposit to user account'),(466,27,'Deposit',540.00,'2024-06-24 12:56:01','Deposit to user account'),(467,27,'Deposit',500.00,'2024-06-24 14:59:32','Deposit to user account'),(468,32,'Deposit',1000.00,'2024-06-24 15:26:23','Deposit to user account'),(469,39,'Deposit',50.00,'2024-06-24 15:33:30','Deposit to user account'),(470,27,'Deposit',1000.00,'2024-06-24 15:55:39','Deposit to user account'),(471,32,'Deposit',1000.00,'2024-06-24 16:07:32','Deposit to user account'),(472,39,'Deposit',100.00,'2024-06-24 16:42:20','Deposit to user account'),(473,32,'Deposit',2000.00,'2024-06-24 19:08:06','Deposit to user account'),(474,27,'Deposit',1000.00,'2024-06-25 11:29:57','Deposit to user account'),(475,35,'Deposit',2000.00,'2024-06-25 12:35:09','Deposit to user account'),(476,35,'Deposit',3000.00,'2024-06-25 13:25:11','Deposit to user account'),(477,35,'Withdraw',65000.00,'2024-06-25 14:11:13','Withdraw from dealer account'),(478,27,'Deposit',500.00,'2024-06-25 14:26:10','Deposit to user account'),(479,27,'Deposit',500.00,'2024-06-26 10:11:58','Deposit to user account'),(480,27,'Deposit',680.00,'2024-06-26 13:34:20','Deposit to user account'),(481,35,'Deposit',3000.00,'2024-06-26 16:09:25','Deposit to user account'),(482,27,'Deposit',1000.00,'2024-06-26 16:59:55','Deposit to user account'),(483,35,'Deposit',7000.00,'2024-06-26 17:54:20','Deposit to user account'),(484,35,'Deposit',7000.00,'2024-06-26 17:54:30','Deposit to user account'),(485,35,'Withdraw',7000.00,'2024-06-26 17:55:04','Withdraw from dealer account'),(486,33,'Deposit',1.00,'2024-06-26 17:55:52','Deposit to user account'),(487,33,'Deposit',1.00,'2024-06-26 17:57:07','Deposit to user account'),(488,33,'Deposit',3.00,'2024-06-26 17:58:12','Deposit to user account'),(489,33,'Deposit',3.00,'2024-06-26 17:58:26','Deposit to user account'),(490,34,'Deposit',6.00,'2024-06-26 23:02:55','Deposit to user account'),(491,34,'Deposit',10.00,'2024-06-26 23:04:04','Deposit to user account'),(492,34,'Deposit',10.00,'2024-06-26 23:07:39','Deposit to user account'),(493,33,'Withdraw',1.00,'2024-06-26 23:53:50','Withdraw from dealer account'),(494,27,'Deposit',500.00,'2024-06-27 12:08:22','Deposit to user account'),(495,35,'Withdraw',38000.00,'2024-06-27 12:33:10','Withdraw from dealer account'),(496,35,'Deposit',2000.00,'2024-06-27 15:12:23','Deposit to user account'),(497,27,'Withdraw',1000.00,'2024-06-27 15:28:12','Withdraw from dealer account'),(498,27,'Deposit',1000.00,'2024-06-27 16:56:12','Deposit to user account'),(499,27,'Deposit',950.00,'2024-06-27 17:25:10','Deposit to user account'),(500,33,'Withdraw',1.00,'2024-06-28 04:03:01','Withdraw from dealer account'),(501,33,'Deposit',1.00,'2024-06-28 04:03:21','Deposit to user account'),(502,27,'Deposit',600.00,'2024-06-28 12:00:51','Deposit to user account'),(503,35,'Deposit',4000.00,'2024-06-28 15:13:30','Deposit to user account'),(504,33,'Withdraw',1.00,'2024-06-28 17:54:28','Withdraw from dealer account'),(505,27,'Deposit',500.00,'2024-06-29 14:18:20','Deposit to user account'),(506,27,'Deposit',500.00,'2024-06-29 15:07:48','Deposit to user account'),(507,27,'Deposit',500.00,'2024-06-29 15:26:31','Deposit to user account'),(508,27,'Deposit',500.00,'2024-06-29 16:15:51','Deposit to user account'),(509,27,'Deposit',1500.00,'2024-06-29 18:09:25','Deposit to user account'),(510,27,'Withdraw',2000.00,'2024-06-30 14:10:40','Withdraw from dealer account'),(511,27,'Withdraw',2000.00,'2024-07-01 14:08:45','Withdraw from dealer account'),(512,35,'Withdraw',10000.00,'2024-07-01 17:40:59','Withdraw from dealer account'),(513,27,'Withdraw',5000.00,'2024-07-02 08:12:28','Withdraw from dealer account'),(514,20,'Deposit',999999.00,'2024-07-03 14:23:03','Deposit to user account'),(515,27,'Deposit',2400.00,'2024-07-04 11:23:12','Deposit to user account'),(516,27,'Withdraw',1000.00,'2024-07-04 11:59:54','Withdraw from dealer account'),(517,27,'Deposit',1000.00,'2024-07-05 12:43:12','Deposit to user account'),(518,20,'Withdraw',200.00,'2024-07-05 13:34:03','Withdraw from dealer account'),(519,20,'Withdraw',200.00,'2024-07-05 13:35:12','Withdraw from dealer account'),(520,20,'Withdraw',20.00,'2024-07-05 13:35:23','Withdraw from dealer account'),(521,27,'Deposit',1000.00,'2024-07-05 17:23:09','Deposit to user account'),(522,32,'Deposit',400.00,'2024-07-05 20:52:06','Deposit to user account'),(523,27,'Deposit',1000.00,'2024-07-06 12:23:28','Deposit to user account'),(524,40,'Deposit',1500.00,'2024-07-06 15:06:16','Deposit to user account'),(525,27,'Deposit',515.00,'2024-07-06 17:37:20','Deposit to user account'),(526,27,'Deposit',850.00,'2024-07-07 12:36:49','Deposit to user account'),(527,28,'Deposit',500.00,'2024-07-07 16:11:34','Deposit to user account'),(528,27,'Deposit',500.00,'2024-07-07 17:17:04','Deposit to user account'),(529,27,'Deposit',500.00,'2024-07-07 17:44:14','Deposit to user account'),(530,27,'Deposit',1000.00,'2024-07-08 12:54:44','Deposit to user account'),(531,28,'Withdraw',1000.00,'2024-07-09 05:29:36','Withdraw from dealer account'),(532,38,'Deposit',1100.00,'2024-07-09 13:37:15','Deposit to user account'),(533,32,'Deposit',500.00,'2024-07-10 16:37:02','Deposit to user account'),(534,32,'Deposit',500.00,'2024-07-10 20:51:37','Deposit to user account'),(535,32,'Deposit',1000.00,'2024-07-11 16:24:55','Deposit to user account'),(536,32,'Withdraw',2500.00,'2024-07-11 22:13:51','Withdraw from dealer account'),(537,32,'Deposit',800.00,'2024-07-12 16:12:34','Deposit to user account'),(538,27,'Deposit',500.00,'2024-07-20 15:36:20','Deposit to user account'),(539,40,'Deposit',4000.00,'2024-07-24 13:05:29','Deposit to user account'),(540,40,'Withdraw',10.00,'2024-07-24 13:05:43','Withdraw from dealer account'),(541,40,'Deposit',3000.00,'2024-07-24 14:53:39','Deposit to user account'),(542,40,'Deposit',12750.00,'2024-07-24 15:58:25','Deposit to user account'),(543,40,'Withdraw',10000.00,'2024-07-24 16:51:32','Withdraw from dealer account'),(544,28,'Deposit',900.00,'2024-07-27 12:57:40','Deposit to user account'),(545,40,'Deposit',3000.00,'2024-07-28 15:37:25','Deposit to user account'),(546,30,'Deposit',350.00,'2024-07-29 13:23:56','Deposit to user account'),(547,40,'Deposit',3000.00,'2024-07-29 14:40:34','Deposit to user account'),(548,30,'Withdraw',500.00,'2024-07-29 15:08:17','Withdraw from dealer account'),(549,30,'Withdraw',2100.00,'2024-07-29 17:29:52','Withdraw from dealer account'),(550,40,'Deposit',2000.00,'2024-07-29 17:36:15','Deposit to user account'),(551,40,'Withdraw',30000.00,'2024-07-29 20:20:58','Withdraw from dealer account'),(552,28,'Withdraw',2000.00,'2024-07-30 03:58:21','Withdraw from dealer account'),(553,30,'Deposit',500.00,'2024-07-30 14:09:34','Deposit to user account'),(554,28,'Withdraw',1000.00,'2024-07-30 14:24:22','Withdraw from dealer account'),(555,30,'Deposit',200.00,'2024-07-30 17:23:43','Deposit to user account'),(556,30,'Deposit',400.00,'2024-07-31 19:21:08','Deposit to user account'),(557,30,'Deposit',500.00,'2024-08-01 14:57:46','Deposit to user account'),(558,40,'Deposit',2000.00,'2024-08-01 17:27:51','Deposit to user account'),(559,32,'Deposit',500.00,'2024-08-01 18:18:47','Deposit to user account'),(560,40,'Deposit',1500.00,'2024-08-02 13:27:45','Deposit to user account'),(561,40,'Deposit',2000.00,'2024-08-02 17:43:04','Deposit to user account'),(562,28,'Deposit',500.00,'2024-08-02 20:31:46','Deposit to user account'),(563,40,'Withdraw',6500.00,'2024-08-02 20:51:29','Withdraw from dealer account'),(564,40,'Withdraw',8500.00,'2024-08-02 21:50:39','Withdraw from dealer account'),(565,40,'Deposit',2500.00,'2024-08-03 15:20:40','Deposit to user account'),(566,40,'Deposit',2000.00,'2024-08-03 20:10:14','Deposit to user account'),(567,40,'Deposit',2000.00,'2024-08-04 15:20:27','Deposit to user account'),(568,40,'Deposit',1500.00,'2024-08-05 16:27:42','Deposit to user account'),(569,28,'Deposit',400.00,'2024-08-05 19:25:40','Deposit to user account'),(570,32,'Deposit',700.00,'2024-08-05 20:29:29','Deposit to user account'),(571,40,'Withdraw',25500.00,'2024-08-05 22:37:24','Withdraw from dealer account'),(572,30,'Deposit',350.00,'2024-08-06 12:37:36','Deposit to user account'),(573,28,'Deposit',500.00,'2024-08-06 16:22:24','Deposit to user account'),(574,30,'Deposit',500.00,'2024-08-06 18:33:58','Deposit to user account'),(575,40,'Deposit',2000.00,'2024-08-07 13:11:14','Deposit to user account'),(576,40,'Deposit',2000.00,'2024-08-07 14:46:00','Deposit to user account'),(577,40,'Deposit',2000.00,'2024-08-08 16:40:50','Deposit to user account'),(578,40,'Withdraw',8500.00,'2024-08-08 21:21:41','Withdraw from dealer account'),(579,28,'Deposit',500.00,'2024-08-10 15:58:51','Deposit to user account'),(580,40,'Deposit',3000.00,'2024-08-15 16:01:08','Deposit to user account'),(581,28,'Deposit',500.00,'2024-08-19 17:14:58','Deposit to user account'),(582,28,'Withdraw',500.00,'2024-08-20 19:47:39','Withdraw from dealer account'),(583,40,'Deposit',2000.00,'2024-08-23 15:31:43','Deposit to user account'),(584,40,'Withdraw',1500.00,'2024-08-23 16:11:59','Withdraw from dealer account'),(585,28,'Deposit',500.00,'2024-08-23 19:29:12','Deposit to user account'),(586,28,'Deposit',500.00,'2024-08-24 16:38:42','Deposit to user account'),(587,40,'Deposit',2000.00,'2024-08-27 15:00:24','Deposit to user account'),(588,40,'Deposit',1000.00,'2024-08-29 13:18:55','Deposit to user account'),(589,40,'Withdraw',8500.00,'2024-08-29 14:50:53','Withdraw from dealer account'),(590,28,'Deposit',200.00,'2024-09-01 13:31:58','Deposit to user account'),(591,28,'Deposit',500.00,'2024-09-01 18:12:32','Deposit to user account'),(592,28,'Deposit',250.00,'2024-09-01 19:02:41','Deposit to user account'),(593,36,'Deposit',1000.00,'2024-09-02 11:59:53','Deposit to user account'),(594,28,'Deposit',400.00,'2024-09-03 13:26:06','Deposit to user account'),(595,40,'Deposit',1500.00,'2024-09-03 19:23:15','Deposit to user account'),(596,28,'Deposit',300.00,'2024-09-06 20:08:03','Deposit to user account'),(597,28,'Deposit',500.00,'2024-09-08 18:23:56','Deposit to user account'),(598,28,'Deposit',300.00,'2024-09-14 18:03:58','Deposit to user account'),(599,40,'Deposit',1000.00,'2024-09-16 10:54:56','Deposit to user account'),(600,40,'Deposit',500.00,'2024-09-16 13:23:13','Deposit to user account'),(601,40,'Withdraw',3000.00,'2024-09-16 15:14:43','Withdraw from dealer account'),(602,40,'Withdraw',15000.00,'2024-09-16 15:14:53','Withdraw from dealer account'),(603,40,'Withdraw',10000.00,'2024-09-16 16:50:48','Withdraw from dealer account'),(604,40,'Withdraw',1000.00,'2024-09-16 16:50:57','Withdraw from dealer account'),(605,29,'Withdraw',5.00,'2024-09-22 15:55:22','Withdraw from dealer account'),(606,37,'Deposit',2000.00,'2024-09-26 12:52:52','Deposit to user account'),(607,28,'Deposit',500.00,'2024-09-27 19:31:14','Deposit to user account'),(608,32,'Deposit',200.00,'2024-09-30 13:50:00','Deposit to user account'),(609,32,'Deposit',500.00,'2024-09-30 17:46:02','Deposit to user account'),(610,32,'Deposit',500.00,'2024-10-01 13:02:41','Deposit to user account'),(611,32,'Deposit',100.00,'2024-10-01 18:46:35','Deposit to user account'),(612,32,'Deposit',200.00,'2024-10-02 16:30:12','Deposit to user account'),(613,36,'Deposit',1000.00,'2024-10-03 12:24:07','Deposit to user account'),(614,28,'Deposit',550.00,'2024-10-05 13:17:14','Deposit to user account'),(615,30,'Deposit',200.00,'2024-10-14 11:54:39','Deposit to user account'),(616,30,'Deposit',500.00,'2024-10-14 16:19:16','Deposit to user account'),(617,40,'Deposit',2000.00,'2024-10-18 15:39:41','Deposit to user account'),(618,40,'Deposit',1000.00,'2024-10-18 15:46:30','Deposit to user account'),(619,40,'Deposit',1000.00,'2024-10-20 20:11:55','Deposit to user account'),(620,40,'Deposit',2500.00,'2024-10-21 17:05:54','Deposit to user account'),(621,40,'Withdraw',9000.00,'2024-10-21 19:15:40','Withdraw from dealer account'),(622,40,'Deposit',7000.00,'2024-10-22 18:38:44','Deposit to user account'),(623,40,'Deposit',1200.00,'2024-10-26 17:04:57','Deposit to user account'),(624,40,'Deposit',3000.00,'2024-11-01 18:27:13','Deposit to user account'),(625,40,'Withdraw',11000.00,'2024-11-01 19:04:30','Withdraw from dealer account'),(626,40,'Deposit',4500.00,'2024-11-02 15:26:29','Deposit to user account'),(627,40,'Withdraw',18000.00,'2024-11-02 20:17:49','Withdraw from dealer account'),(628,40,'Deposit',3000.00,'2024-11-05 16:16:02','Deposit to user account'),(629,40,'Withdraw',8000.00,'2024-11-05 19:21:18','Withdraw from dealer account'),(630,40,'Deposit',4500.00,'2024-11-07 15:02:44','Deposit to user account'),(631,40,'Withdraw',12500.00,'2024-11-07 19:43:47','Withdraw from dealer account'),(632,40,'Deposit',2000.00,'2024-11-09 13:18:49','Deposit to user account'),(633,33,'Spent',30.00,'2024-11-10 07:09:37','Spent on number  37'),(634,41,'Deposit',9000.00,'2024-11-11 13:59:10','Deposit to user account'),(635,40,'Deposit',4500.00,'2024-11-11 18:23:08','Deposit to user account'),(636,40,'Withdraw',9500.00,'2024-11-11 22:48:24','Withdraw from dealer account'),(637,41,'Deposit',9500.00,'2024-11-11 22:48:37','Deposit to user account'),(638,40,'Deposit',1000.00,'2024-11-15 15:24:07','Deposit to user account'),(639,42,'Deposit',10000.00,'2024-11-16 10:55:06','Deposit to user account'),(640,27,'Deposit',50.00,'2024-11-16 11:02:27','Deposit to user account'),(641,29,'Deposit',200.00,'2024-11-17 15:17:46','Deposit to user account'),(642,31,'Withdraw',320.00,'2024-11-17 19:27:20','Withdraw from dealer account'),(643,31,'Deposit',25000.00,'2024-11-17 19:27:46','Deposit to user account'),(644,29,'Deposit',300.00,'2024-11-17 19:28:18','Deposit to user account'),(645,31,'Deposit',1400.00,'2024-11-17 19:32:24','Deposit to user account'),(646,31,'Deposit',5000000.00,'2024-11-17 22:44:29','Deposit to user account'),(647,31,'Withdraw',5000000.00,'2024-11-17 22:52:01','Withdraw from dealer account'),(648,40,'Deposit',1000.00,'2024-11-18 19:28:15','Deposit to user account'),(649,33,'Deposit',180000.00,'2024-11-19 14:40:26','Deposit to user account'),(650,29,'Deposit',100.00,'2024-11-19 20:43:31','Deposit to user account'),(651,29,'Deposit',200.00,'2024-11-20 15:29:09','Deposit to user account'),(652,29,'Deposit',300.00,'2024-11-20 18:32:51','Deposit to user account'),(653,29,'Deposit',350.00,'2024-11-20 20:45:55','Deposit to user account'),(654,29,'Deposit',600.00,'2024-11-21 16:23:45','Deposit to user account'),(655,28,'Deposit',1000.00,'2024-11-21 16:29:53','Deposit to user account'),(656,29,'Deposit',500.00,'2024-11-21 20:35:42','Deposit to user account'),(657,28,'Withdraw',500.00,'2024-11-22 08:40:10','Withdraw from dealer account'),(658,30,'Deposit',1000.00,'2024-11-22 12:49:36','Deposit to user account'),(659,28,'Deposit',500.00,'2024-11-22 13:24:44','Deposit to user account'),(660,29,'Deposit',200.00,'2024-11-22 16:46:13','Deposit to user account'),(661,29,'Deposit',300.00,'2024-11-22 18:07:10','Deposit to user account'),(662,28,'Withdraw',800.00,'2024-11-23 10:28:18','Withdraw from dealer account'),(663,28,'Deposit',500.00,'2024-11-23 11:25:33','Deposit to user account'),(664,29,'Deposit',300.00,'2024-11-23 15:25:34','Deposit to user account');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `did` int NOT NULL DEFAULT '1',
  `activation` tinyint(1) DEFAULT NULL,
  `game1` tinyint NOT NULL DEFAULT '0',
  `game1-0` tinyint NOT NULL DEFAULT '1',
  `game1-3` tinyint NOT NULL DEFAULT '1',
  `game1-4` tinyint NOT NULL DEFAULT '1',
  `game2` tinyint NOT NULL DEFAULT '0',
  `game3` tinyint NOT NULL DEFAULT '0',
  `game3-0` tinyint NOT NULL DEFAULT '1',
  `game3-1` tinyint NOT NULL DEFAULT '1',
  `game3-2` tinyint NOT NULL DEFAULT '1',
  `game3-3` tinyint NOT NULL DEFAULT '1',
  `game3-4` tinyint NOT NULL DEFAULT '1',
  `game4` tinyint NOT NULL DEFAULT '0',
  `game4-0` tinyint NOT NULL DEFAULT '1',
  `game4-1` tinyint NOT NULL DEFAULT '1',
  `game4-2` tinyint NOT NULL DEFAULT '1',
  `game4-3` tinyint NOT NULL DEFAULT '1',
  `game4-4` tinyint NOT NULL DEFAULT '1',
  `game5` tinyint NOT NULL DEFAULT '0',
  `game6` tinyint NOT NULL DEFAULT '0',
  `game7` tinyint NOT NULL DEFAULT '0',
  `game8` tinyint NOT NULL DEFAULT '1',
  `game8-0` tinyint NOT NULL DEFAULT '1',
  `game8-4` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `dealerID` (`did`),
  CONSTRAINT `dealerID` FOREIGN KEY (`did`) REFERENCES `dealer` (`dealerID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'Demo','Demo','0786',5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(26,'Dheeraj','Dheeraj108','108',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(27,'Najaf Legari','Akber','1290',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(28,'Faizan Bage','Faizan','2978',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(29,'Zeeshan','Zeeshan','7799',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(30,'Mirza','Mirza','2030',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(31,'Dubai','Dubai','5566',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(32,'Wali','Roshan','3322',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(33,'Kashif','Kashif','0003',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(34,'Demo1','demo1','demo',5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(35,'Mughal','Mughal','0002',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(36,'Sajan','Sajan','0099',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(37,'Farman','Farman','1200',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(38,'Hader','Hader','1210',8,1,0,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1),(39,'testAccount','testAccount','123',5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(40,'Hamza','Hamza','9090',9,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,0),(41,'Baber','Baber','1290',9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(42,'user1','user1','1234',5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
