-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: EuropeanCarManufacturer
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Manufacturer.Country`
--

DROP TABLE IF EXISTS `Manufacturer.Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manufacturer.Country` (
  `CountryISO3` char(3) NOT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `CountryISO2` char(2) DEFAULT NULL,
  `SalesRegion` varchar(20) DEFAULT NULL,
  `CountryId` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CountryId`),
  UNIQUE KEY `CountryId` (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer.Country`
--

LOCK TABLES `Manufacturer.Country` WRITE;
/*!40000 ALTER TABLE `Manufacturer.Country` DISABLE KEYS */;
INSERT INTO `Manufacturer.Country` VALUES ('BEL','Belgium','BE','EMEA',1),('CHF','Switzerland','CH','EMEA',2),('CH','China','C','Asia',3),('DEU','Germany','DE','EMEA',4),('ESP','Spain','ES','EMEA',5),('FRA','France','FR','EMEA',6),('GBR','United Kingdom','GB','EMEA',7),('IND','India','I','Asia',8),('ITA','Italy','IT','EMEA',9),('USA','United States','US','North America',10);
/*!40000 ALTER TABLE `Manufacturer.Country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 16:29:16
