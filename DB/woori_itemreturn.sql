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
-- Table structure for table `itemreturn`
--

DROP TABLE IF EXISTS `itemreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemreturn` (
  `returnnum` int NOT NULL AUTO_INCREMENT,
  `buynum` int DEFAULT NULL,
  `returncontent` text,
  `returndate` datetime DEFAULT NULL,
  `state` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `recomdate` datetime DEFAULT NULL,
  `dv_itemno` int DEFAULT NULL,
  PRIMARY KEY (`returnnum`),
  KEY `buynum` (`buynum`),
  KEY `fk_dv_itemno` (`dv_itemno`),
  CONSTRAINT `fk_dv_itemno` FOREIGN KEY (`dv_itemno`) REFERENCES `dv_order_item` (`dv_itemno`),
  CONSTRAINT `itemreturn_ibfk_1` FOREIGN KEY (`buynum`) REFERENCES `dv_order` (`buynum`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemreturn`
--

LOCK TABLES `itemreturn` WRITE;
/*!40000 ALTER TABLE `itemreturn` DISABLE KEYS */;
INSERT INTO `itemreturn` VALUES (1,1,'맘에안듦','2023-07-03 11:09:01',2,1,NULL,NULL),(2,2,'사이즈안맞음','2023-07-03 11:09:37',1,2,NULL,NULL),(4,6,'빈칸일경우 신청불가여야하는데?','2023-07-28 14:32:13',1,1,NULL,6),(8,3,'test','2023-07-28 16:24:21',1,3,NULL,3);
/*!40000 ALTER TABLE `itemreturn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 17:39:48
