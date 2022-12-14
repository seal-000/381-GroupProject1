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
-- Table structure for table `Marketing.MarketingInformation`
--

DROP TABLE IF EXISTS `Marketing.MarketingInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Marketing.MarketingInformation` (
  `CustomerName` varchar(100) NOT NULL,
  `Country` char(2) NOT NULL,
  `SpendCapacity` int DEFAULT NULL,
  `CustomerId` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CustomerId`),
  UNIQUE KEY `CustomerId` (`CustomerId`),
  CONSTRAINT `CK_Template_GreaterThan0_1086185110` CHECK ((`SpendCapacity` between 0 and 999999999999999999))
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketing.MarketingInformation`
--

LOCK TABLES `Marketing.MarketingInformation` WRITE;
/*!40000 ALTER TABLE `Marketing.MarketingInformation` DISABLE KEYS */;
INSERT INTO `Marketing.MarketingInformation` VALUES ('Magic Motors','GB',2,1),('Snazzy Roadsters','GB',1,2),('Birmingham Executive Prestige Vehicles','GB',4,3),('WunderKar','DE',2,4),('Casseroles Chromes','FR',2,5),('Le Luxe en Motion','CH',2,6),('Eat My Exhaust Ltd','GB',2,7),('M. Pierre Dubois','FR',4,8),('Sondra Horowitz','US',1,9),('Wonderland Wheels','GB',3,10),('London Executive Prestige Vehicles','GB',1,11),('Glittering Prize Cars Ltd','GB',2,12),('La Bagnole de Luxe','FR',3,13),('Convertible Dreams','GB',3,14),('Alexei Tolstoi','GB',1,15),('SuperSport S.A.R.L.','FR',4,16),('Theo Kowalski','US',2,17),('Peter McLuckie','GB',3,18),('Posh Vehicles Ltd','GB',2,19),('Jason B. Wight','US',1,20),('Silver HubCaps','GB',3,21),('Stan Collywobble','GB',4,22),('Glitz','DE',2,23),('Matterhorn Motors','CH',3,24),('King Leer Cars','GB',1,25),('Honest Pete Motors','GB',3,26),('Peter Smith','GB',2,27),('Vive La Vitesse','FR',3,28),('Liverpool Executive Prestige Vehicles','GB',4,29),('Mrs. Ivana Telford','GB',4,30),('Kieran O\'Harris','GB',4,31),('Prestige Imports','ES',3,32),('Prestissimo!','IT',4,33),('Diplomatic Cars','BE',3,34),('Laurent Saint Yves','FR',1,35),('Screamin\' Wheels','US',3,36),('Screamin\' Wheels','GB',1,37),('Executive Motor Delight','GB',3,38),('Alicia Almodovar','ES',1,39),('Ronaldo Bianco','IT',4,40),('Sport.Car','IT',3,41),('Autos Sportivos','ES',1,42),('Le Luxe en Motion','FR',1,43),('Screamin\' Wheels Corp','US',3,44),('Pierre Blanc','GB',1,45),('Capots Reluisants S.A.','FR',3,46),('Stefano DiLonghi','IT',3,47),('Antonio Maura','ES',3,48),('Stefan Van Helsing','BE',3,49),('Mme Anne Duport','FR',1,50),('Screamin\' Wheels','US',3,51),('Clubbing Cars','GB',4,52),('Jean-Yves Truffaut','FR',1,53),('Mr. Evan Telford','GB',3,54),('Ralph Obermann','DE',3,55),('ImpressTheNeighbours.Com','GB',1,56),('Wladimir Lacroix','FR',3,57),('Raimondo Delattre','CH',3,58),('Boris Spry','GB',3,59),('Andrea Tarbuck','GB',1,60),('Beltway Prestige Driving','GB',4,61),('Bling Motors','GB',3,62),('Smooth Rocking Chrome','IT',3,63),('YO! Speed!','ES',1,64),('Stephany Rousso','US',3,65),('My Shiny Sports Car Ltd.','GB',3,66),('Flash Voitures','BE',1,67),('Paul Blasio','US',3,68),('Mary Blackhouse','GB',1,69),('Maurice Dujardin','GB',3,70),('Leslie Whittington','GB',3,71),('Mike Beeton','GB',3,72),('Melissa Bertrand','GB',3,73),('El Sport','ES',1,74),('Bling Bling S.A.','FR',4,75),('Bravissima!','IT',3,76),('Jayden Jones','US',1,77),('Expensive Shine','GB',3,78),('Steve Docherty','GB',3,79),('Rodolph Legler','DE',3,80),('Pete Spring','GB',3,81),('Khader El Ghannam','FR',2,82),('Jacques Mitterand','FR',3,83),('Francoise LeBrun','CH',4,84),('Alex McWhirter','GB',4,85),('Francois Chirac','FR',3,86),('Andy Cheshire','GB',2,87),('Jimmy McFiddler','GB',2,88);
/*!40000 ALTER TABLE `Marketing.MarketingInformation` ENABLE KEYS */;
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
