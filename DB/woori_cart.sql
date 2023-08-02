-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: woori
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartno` int NOT NULL AUTO_INCREMENT,
  `membernum` int DEFAULT NULL,
  `itemnum` int DEFAULT NULL,
  `itemcnt` int DEFAULT NULL,
  `iv_itemnum` int DEFAULT NULL,
  `cartstate` int DEFAULT NULL,
  PRIMARY KEY (`cartno`),
  KEY `itemnum` (`itemnum`),
  KEY `membernum` (`membernum`),
  KEY `fk_cart_iv_item` (`iv_itemnum`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`itemnum`) REFERENCES `item` (`itemnum`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`membernum`) REFERENCES `member` (`membernum`),
  CONSTRAINT `fk_cart_iv_item` FOREIGN KEY (`iv_itemnum`) REFERENCES `iv_item` (`iv_itemnum`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,1,1,2),(2,1,1,2,2,2),(3,1,1,3,3,2),(4,1,1,4,1,2),(5,1,1,5,2,2),(6,1,1,6,3,2),(7,1,1,7,1,2),(8,1,1,8,2,2),(9,1,1,1,1,1),(37,1,1,1,2,1),(38,1,1,1,2,1),(39,1,1,1,2,1),(40,1,1,1,3,1),(41,2,1,1,1,2),(42,1,1,1,3,1),(43,1,1,1,3,1),(44,1,1,1,1,1),(46,1,1,1,2,1),(47,1,1,1,1,1),(48,1,1,1,3,1),(49,1,1,1,2,1),(50,1,1,1,1,1),(51,1,1,1,1,1),(52,1,1,1,2,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 17:39:50
