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
-- Table structure for table `codetable`
--

DROP TABLE IF EXISTS `codetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codetable` (
  `codename` varchar(15) NOT NULL,
  `codenum` int NOT NULL,
  `codestring` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`codename`,`codenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codetable`
--

LOCK TABLES `codetable` WRITE;
/*!40000 ALTER TABLE `codetable` DISABLE KEYS */;
INSERT INTO `codetable` VALUES ('결제방식',1,'카드'),('결제방식',2,'무통장 입금'),('대분류',1,'상의'),('대분류',2,'바지'),('대분류',3,'스커트'),('대분류',4,'원피스'),('대분류',5,'아우터'),('대분류',6,'악세서리'),('대분류',7,'모자'),('대분류',8,'신발'),('등급',1,'뉴비'),('등급',2,'브론즈'),('등급',3,'실버'),('등급',4,'골드'),('등급',5,'블래티넘'),('등급',6,'다이아몬드'),('문의상태',1,'문의중'),('문의상태',2,'답변완료'),('사이즈',1,'S'),('사이즈',2,'M'),('사이즈',3,'L'),('사이즈',4,'XL'),('상품색상',1,'빨강'),('상품색상',2,'주황'),('상품색상',3,'노랑'),('상품색상',4,'초록'),('상품색상',5,'파랑'),('상품색상',6,'남색'),('상품색상',7,'보라색'),('상품색상',8,'검정색'),('상품색상',9,'흰색'),('성별',1,'남자'),('성별',2,'여자'),('소분류',1,'니트/스웨터'),('소분류',2,'후드티'),('소분류',3,'맨투맨'),('소분류',4,'셔츠'),('소분류',5,'데님팬츠'),('소분류',6,'트레이닝팬츠'),('소분류',7,'코튼팬츠'),('소분류',8,'슬랙스'),('소분류',9,'미니스커트'),('소분류',10,'미디스커트'),('소분류',11,'롱스커트'),('소분류',12,'미니원피스'),('소분류',13,'미디원피스'),('소분류',14,'롱원피스'),('소분류',15,'후드집업'),('소분류',16,'코트'),('소분류',17,'가디건'),('소분류',18,'패팅'),('소분류',19,'재킷'),('소분류',20,'벨트'),('소분류',21,'머플러'),('소분류',22,'넥타이'),('소분류',23,'기타 악세서리'),('소분류',24,'캡'),('소분류',25,'비니'),('소분류',26,'운동화'),('소분류',27,'슬리퍼'),('소분류',28,'구두'),('주문상태',1,'배송완료'),('주문상태',2,'배송중'),('주문상태',3,'배송준비중'),('주문상태',4,'주문취소'),('주문상태',5,'반품처리중'),('주문상태',6,'교환처리중'),('주문상태',7,'교환/반품완료'),('주문상태',8,'구매확정');
/*!40000 ALTER TABLE `codetable` ENABLE KEYS */;
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
