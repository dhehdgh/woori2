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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewno` int NOT NULL AUTO_INCREMENT,
  `itemnum` int DEFAULT NULL,
  `membernum` int DEFAULT NULL,
  `rcontent` text,
  `rdate` datetime DEFAULT NULL,
  `rstar` int DEFAULT NULL,
  `reviewlike` int DEFAULT NULL,
  `reviewreport` int DEFAULT NULL,
  `del` int DEFAULT NULL,
  `buynum` int DEFAULT NULL,
  PRIMARY KEY (`reviewno`),
  KEY `membernum` (`membernum`),
  KEY `itemnum` (`itemnum`),
  KEY `buynum` (`buynum`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`membernum`) REFERENCES `member` (`membernum`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`itemnum`) REFERENCES `item` (`itemnum`),
  CONSTRAINT `review_ibfk_3` FOREIGN KEY (`buynum`) REFERENCES `dv_order` (`buynum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'asdfasdf','2023-07-03 10:36:36',4,0,0,1,NULL),(2,2,1,'ㅁㄴㅇㄹ','2023-07-03 10:37:42',3,1,1,2,NULL),(4,1,1,'테스트수정','2023-07-25 17:35:37',5,0,0,1,8),(5,1,1,'별이 네개~','2023-07-25 17:35:59',4,0,0,1,7),(6,1,1,'test','2023-07-25 17:52:05',5,0,0,1,6),(8,1,1,'test','2023-08-01 13:13:06',4,0,0,1,4);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 17:39:49
