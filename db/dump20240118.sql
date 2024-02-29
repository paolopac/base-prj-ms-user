-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: Base
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `AN001_USER`
--

DROP TABLE IF EXISTS `AN001_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AN001_USER` (
  `AN001_ID` int NOT NULL AUTO_INCREMENT,
  `AN001_EMAIL` varchar(100) NOT NULL,
  `AN001_PASSWORD` varchar(400) NOT NULL,
  `AN001_ID_AN002` int NOT NULL,
  `AN001_STATO` varchar(1) NOT NULL DEFAULT 'E',
  `AN001_DATA_CREAZIONE` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `AN001_COD_UTENTE_CREAZIONE` varchar(50) NOT NULL,
  `AN001_DATA_MODIFICA` datetime(6) DEFAULT NULL,
  `AN001_COD_UTENTE_MODIFICA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AN001_ID`),
  KEY `AN001_ID_AN002` (`AN001_ID_AN002`),
  CONSTRAINT `AN001_USER_ibfk_1` FOREIGN KEY (`AN001_ID_AN002`) REFERENCES `AN002_RUOLO` (`AN002_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AN001_USER`
--

LOCK TABLES `AN001_USER` WRITE;
/*!40000 ALTER TABLE `AN001_USER` DISABLE KEYS */;
INSERT INTO `AN001_USER` VALUES (23,'test3@email.it','$2a$10$HqI77th/szs7T87UyQYVzO3ldflXUqwfUqOloWKw9mMrMzG3iLafW',22,'E','2024-01-13 18:35:59.118000','JUNIT TEST',NULL,NULL),(24,'pa@email.it','$2a$10$mO1oEB3YnmLimktx7jmveuMVzq.h5jmOG0T2hakNZijUGngC/EPNm',20,'E','2024-01-15 10:59:12.478000','POSTMAN',NULL,NULL),(25,'test@email.it','$2a$10$iVlzOF665E/8l88JZAHVY.FT9aABgPwLLwrKdSh6n05iCZ1nDtpjm',22,'E','2024-01-15 11:33:18.187000','POSTMAN',NULL,NULL),(26,'admin@email.it','$2a$10$D/AATasYzPz518KSy0KfEuKoUM5dqF2bU6l/WsEDDRVcm2pc.HDAq',20,'E','2024-01-15 13:31:56.618000','POSTMAN',NULL,NULL),(27,'867496@email.it','$2a$10$t6B2ECQxtmzspWgazPF8EesHmTaNtplRov0pS7cvCEE2Kxy0Fimjy',22,'E','2024-01-15 15:29:12.040000','JUNIT TEST',NULL,NULL),(28,'251506@email.it','$2a$10$oDy5V2K9V4TucA5CMMdoDeq0M4CUfkarJ.9l2qqM2nZXpxZ4v8py.',22,'E','2024-01-15 15:31:16.399000','JUNIT TEST',NULL,NULL),(29,'868392@email.it','$2a$10$ZQL5XyYuffACzQ2Q55F/3er0QeSm3.LN38mGfjFCCqu/7fSvpDXmu',22,'E','2024-01-15 15:35:36.711000','JUNIT TEST',NULL,NULL),(30,'admi222n@email.it','$2a$10$GPBtHSqqKuFc8hT.sKaqQ.R0oDP/pwnSBhQ.3DkTBHalt/C8WB5Dy',20,'E','2024-01-15 17:09:12.877000','POSTMAN',NULL,NULL),(31,'admwi222n@email.it','$2a$10$jWwtWae8zKv.rGWZtTcx1urUcX7l9wSNymKObM7NCIObiVwrcUzCO',20,'E','2024-01-15 17:10:41.786000','POSTMAN',NULL,NULL),(32,'simple_user@email.it','$2a$10$9vBy93/GornmitMrGHuR3eOkWOYGpg9qvWATckk2VRyZSUncQdWO2',22,'E','2024-01-15 17:47:16.538000','POSTMAN',NULL,NULL),(33,'simple_user1@email.it','$2a$10$Q3rQXLQGKxHT6d06IAAz9uyMNlLCHJBNNqZCjA36q6Om.4DCSIn/C',22,'E','2024-01-16 09:44:38.726000','POSTMAN',NULL,NULL);
/*!40000 ALTER TABLE `AN001_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AN002_RUOLO`
--

DROP TABLE IF EXISTS `AN002_RUOLO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AN002_RUOLO` (
  `AN002_ID` int NOT NULL AUTO_INCREMENT,
  `AN002_DESCRIZIONE` varchar(200) NOT NULL,
  `AN002_COD_RUOLO` varchar(200) NOT NULL,
  `AN002_DATA_CREAZIONE` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `AN002_COD_UTENTE_CREAZIONE` varchar(50) NOT NULL,
  `AN002_STATO` varchar(1) NOT NULL DEFAULT 'E',
  `AN002_DATA_MODIFICA` datetime(6) DEFAULT NULL,
  `AN002_COD_UTENTE_MODIFICA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AN002_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AN002_RUOLO`
--

LOCK TABLES `AN002_RUOLO` WRITE;
/*!40000 ALTER TABLE `AN002_RUOLO` DISABLE KEYS */;
INSERT INTO `AN002_RUOLO` VALUES (20,'CREATE, UPDATE, DELETE, READ','ADMIN','2024-01-10 17:37:53.261924','PA','E',NULL,NULL),(21,'CREATE, UPDATE, READ','TRUSTED','2024-01-10 17:37:53.327607','PA','E',NULL,NULL),(22,'UPDATE, READ','SIMPLE_USER','2024-01-10 17:37:53.342761','PA','E',NULL,NULL);
/*!40000 ALTER TABLE `AN002_RUOLO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 16:36:15
