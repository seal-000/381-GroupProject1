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
-- Table structure for table `Manufacturer.ManufacturerVehicleMake`
--

DROP TABLE IF EXISTS `Manufacturer.ManufacturerVehicleMake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manufacturer.ManufacturerVehicleMake` (
  `ManufacturerVehicleMakeName` varchar(100) DEFAULT NULL,
  `ManufacturerVehicleMakeCountry` char(3) NOT NULL,
  `MarketingTypeId` int DEFAULT NULL,
  `ManufacturerVehicleMakeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ManufacturerVehicleMakeId`),
  UNIQUE KEY `ManufacturerVehicleMakeId` (`ManufacturerVehicleMakeId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer.ManufacturerVehicleMake`
--

LOCK TABLES `Manufacturer.ManufacturerVehicleMake` WRITE;
/*!40000 ALTER TABLE `Manufacturer.ManufacturerVehicleMake` DISABLE KEYS */;
INSERT INTO `Manufacturer.ManufacturerVehicleMake` VALUES ('Ferrari','ITA',NULL,1),('Porsche','GER',NULL,2),('Lamborghini','ITA',NULL,3),('Aston Martin','GBR',NULL,4),('Bentley','GBR',NULL,5),('Rolls Royce','GBR',NULL,6),('Maybach','GER',NULL,7),('Mercedes','GER',NULL,8),('Alfa Romeo','ITA',NULL,9),('Austin','GBR',NULL,10),('BMW','GER',NULL,11),('Bugatti','FRA',NULL,12),('Citroen','FRA',NULL,13),('Delahaye','FRA',NULL,14),('Delorean','USA',NULL,15),('Jaguar','GBR',NULL,16),('Lagonda','ITA',NULL,17),('McLaren','GBR',NULL,18),('Morgan','GBR',NULL,19),('Noble','GBR',NULL,20),('Triumph','GBR',NULL,21),('Trabant','GER',NULL,22),('Peugeot','GER',NULL,23),('Reliant','FRA',NULL,24),('Riley','GBR',NULL,25),('Cadillac','USA',NULL,26);
/*!40000 ALTER TABLE `Manufacturer.ManufacturerVehicleMake` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 16:29:20
