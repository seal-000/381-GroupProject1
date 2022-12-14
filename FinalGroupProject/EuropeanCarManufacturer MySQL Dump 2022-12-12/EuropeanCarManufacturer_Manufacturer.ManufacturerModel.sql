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
-- Table structure for table `Manufacturer.ManufacturerModel`
--

DROP TABLE IF EXISTS `Manufacturer.ManufacturerModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manufacturer.ManufacturerModel` (
  `ManufacturerModelName` varchar(100) DEFAULT NULL,
  `ManufacturerModelVariant` char(3) DEFAULT NULL,
  `ManufacturerModelId` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ManufacturerModelId`),
  UNIQUE KEY `ManufacturerModelId` (`ManufacturerModelId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer.ManufacturerModel`
--

LOCK TABLES `Manufacturer.ManufacturerModel` WRITE;
/*!40000 ALTER TABLE `Manufacturer.ManufacturerModel` DISABLE KEYS */;
INSERT INTO `Manufacturer.ManufacturerModel` VALUES ('Ferrari','ITA',1),('Porsche','GER',2),('Lamborghini','ITA',3),('Aston Martin','GBR',4),('Bentley','GBR',5),('Rolls Royce','GBR',6),('Maybach','GER',7),('Mercedes','GER',8),('Alfa Romeo','ITA',9),('Austin','GBR',10),('BMW','GER',11),('Bugatti','FRA',12),('Citroen','FRA',13),('Delahaye','FRA',14),('Delorean','USA',15),('Jaguar','GBR',16),('Lagonda','ITA',17),('McLaren','GBR',18),('Morgan','GBR',19),('Noble','GBR',20),('Triumph','GBR',21),('Trabant','GER',22),('Peugeot','GER',23),('Reliant','FRA',24),('Riley','GBR',25),('Cadillac','USA',26);
/*!40000 ALTER TABLE `Manufacturer.ManufacturerModel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 16:29:19
