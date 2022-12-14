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
-- Table structure for table `Customer.Customer`
--

DROP TABLE IF EXISTS `Customer.Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer.Customer` (
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerAddress1` varchar(50) DEFAULT NULL,
  `CustomerAddress2` varchar(50) DEFAULT NULL,
  `CustomerTown` varchar(50) DEFAULT NULL,
  `CustomerPostalCode` varchar(10) DEFAULT NULL,
  `CustomerCountry` char(2) DEFAULT NULL,
  `IsCustomerReseller` int DEFAULT NULL,
  `IsCustomerCreditRisk` int DEFAULT NULL,
  `CustomerSpendCapacityId` int DEFAULT NULL,
  `CustomerId` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CustomerId`),
  UNIQUE KEY `CustomerId` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer.Customer`
--

LOCK TABLES `Customer.Customer` WRITE;
/*!40000 ALTER TABLE `Customer.Customer` DISABLE KEYS */;
INSERT INTO `Customer.Customer` VALUES ('Magic Motors','27, Handsworth Road',NULL,'Birmingham','B1 7AZ','GB',1,0,NULL,1),('Snazzy Roadsters','102, Bleak Street',NULL,'Birmingham','B3 5ST','GB',1,1,NULL,2),('Birmingham Executive Prestige Vehicles','96, Aardvark Avenue',NULL,'Birmingham','B2 8UH','GB',1,0,NULL,3),('WunderKar','AlexanderPlatz 205',NULL,'Berlin',NULL,'DE',1,0,NULL,4),('Casseroles Chromes','29, Rue Gigondas',NULL,'Lyon',NULL,'FR',1,0,NULL,5),('Le Luxe en Motion','Avenue des Indes, 26',NULL,'Geneva','CH-1201','CH',1,1,NULL,6),('Eat My Exhaust Ltd','29, Kop Hill',NULL,'Liverpool','L1 8UY','GB',1,0,NULL,7),('M. Pierre Dubois','14, Rue De La Hutte',NULL,'Marseille',NULL,'FR',0,0,NULL,8),('Sondra Horowitz','10040 Great Western Road',NULL,'Los Angeles',NULL,'US',0,0,NULL,9),('Wonderland Wheels','57, Grosvenor Estate Avenue',NULL,'London','E7 4BR','GB',1,0,NULL,10),('London Executive Prestige Vehicles','199, Park Lane',NULL,'London','NW1 0AK','GB',1,1,NULL,11),('Glittering Prize Cars Ltd','46, lders Green Road','PO Box 27','London','E17 9IK','GB',1,0,NULL,12),('La Bagnole de Luxe','890 Place de la Concorde','Cedex 8','Paris',NULL,'FR',1,0,NULL,13),('Convertible Dreams','31, Archbishop Ave',NULL,'London','SW2 6PL','GB',1,0,NULL,14),('Alexei Tolstoi','83, Abbey Road',NULL,'London','N4 2CV','GB',0,0,NULL,15),('SuperSport S.A.R.L.','210 Place de la Republique',NULL,'Paris',NULL,'FR',1,1,NULL,16),('Theo Kowalski','1000 East 51st Street',NULL,'New York',NULL,'US',0,0,NULL,17),('Peter McLuckie','73, Entwhistle Street',NULL,'London','W10 B','GB',0,0,NULL,18),('Posh Vehicles Ltd','82, Millar Close',NULL,'Manchester','M4 5SD','GB',1,0,NULL,19),('Jason B. Wight','5300 Star Boulevard',NULL,'Washington',NULL,'US',0,0,NULL,20),('Silver HubCaps','54, Didsbury Lane',NULL,'Manchester','M1 7TH','GB',1,0,NULL,21),('Stan Collywobble','65, Townsend Road',NULL,'Manchester','M1 5HJ','GB',0,1,NULL,22),('Glitz','FriedrichStrasse 579',NULL,'Stuttgart',NULL,'DE',1,0,NULL,23),('Matterhorn Motors','1, Rue de la Colline',NULL,'Lausanne',NULL,'CH',1,0,NULL,24),('King Leer Cars','87, Lindisfarne Road',NULL,'Newcastle','NE1 4OX','GB',1,0,NULL,25),('Honest Pete Motors','76, Williams Street',NULL,'Stoke','ST3 9XY','GB',1,0,NULL,26),('Peter Smith','82, Ell Pie Lane',NULL,'Birmingham','B5 5SD','GB',0,0,NULL,27),('Vive La Vitesse','56, Rue Noiratre',NULL,'Marseille',NULL,'FR',1,0,NULL,28),('Liverpool Executive Prestige Vehicles','8, Everton Avenue',NULL,'Liverpool','L2 2RD','GB',1,0,NULL,29),('Mrs. Ivana Telford','52, Gerrard Mansions',NULL,'Liverpool','L2 9RT','GB',0,0,NULL,30),('Kieran O\'Harris','71, Askwith Ave',NULL,'Liverpool','L7 6OP','GB',0,0,NULL,31),('Prestige Imports','Gran Via 26',NULL,'Barcelona','08120','ES',1,0,NULL,32),('Prestissimo!','Via Appia 239',NULL,'Milan',NULL,'IT',1,0,NULL,33),('Diplomatic Cars','Rue Des Coteaux, 39',NULL,'Brussels',NULL,'BE',1,0,NULL,34),('Laurent Saint Yves','49, Rue Quicampoix',NULL,'Marseille',NULL,'FR',0,0,NULL,35),('Screamin\' Wheels','1090 Reagan Road',NULL,'Los Angeles',NULL,'US',1,0,NULL,36),('Screamin\' Wheels','4, Churchill Close',NULL,'London','SE1 5RU','GB',1,0,NULL,37),('Executive Motor Delight','17, The Brambles',NULL,'London','SE17 6AD','GB',1,0,NULL,38),('Alicia Almodovar','Palacia Del Sol',NULL,'Barcelona','08400','ES',0,0,NULL,39),('Ronaldo Bianco','Palazzo Medusa 2000',NULL,'Milan',NULL,'IT',0,0,NULL,40),('Sport.Car','Via Barberini 59',NULL,'Rome','00120','IT',1,0,NULL,41),('Autos Sportivos','Paseo del Prado, 270',NULL,'Madrid',NULL,'ES',1,0,NULL,42),('Le Luxe en Motion','32, Allee de la Paix',NULL,'Paris',NULL,'FR',1,0,NULL,43),('Screamin\' Wheels Corp','50000 Fifth Avenue',NULL,'New York',NULL,'US',1,0,NULL,44),('Pierre Blanc','52 Deirdre Lane',NULL,'London','C1 3EJ','GB',0,0,NULL,45),('Capots Reluisants S.A.','567 rue Lafayette',NULL,'Paris',NULL,'FR',1,0,NULL,46),('Stefano DiLonghi','Piazza Verona',NULL,'Rome','00129','IT',0,0,NULL,47),('Antonio Maura','Puerta del Sol, 45',NULL,'Madrid',NULL,'ES',0,0,NULL,48),('Stefan Van Helsing','Nieuwstraat 5',NULL,'Brussels',NULL,'BE',0,0,NULL,49),('Mme Anne Duport','90, Place de la Victoire 1945',NULL,'Paris',NULL,'FR',0,0,NULL,50),('Screamin\' Wheels','10500 The Potomac',NULL,'Washington',NULL,'US',1,0,NULL,51),('Clubbing Cars','91, Acid Avenue',NULL,'Manchester','M5 9RD','GB',1,0,NULL,52),('Jean-Yves Truffaut','87 Rue du Combat',NULL,'Paris',NULL,'FR',0,0,NULL,53),('Mr. Evan Telford','7, dzilla Street',NULL,'Manchester','M2 6KL','GB',0,0,NULL,54),('Ralph Obermann','BerolinaStrasse 210',NULL,'Berlin',NULL,'DE',0,0,NULL,55),('ImpressTheNeighbours.Com','47, Edgbaston Row',NULL,'Birmingham','B4 4RY','GB',1,0,NULL,56),('Wladimir Lacroix','3, Rue de la Vie en Rose',NULL,'Lyon',NULL,'FR',0,0,NULL,57),('Raimondo Delattre','9, Place de Chatelet',NULL,'Geneva','CH-1211','CH',0,0,NULL,58),('Boris Spry','53, Odeon Way',NULL,'Birmingham','B1 4BZ','GB',0,0,NULL,59),('Andrea Tarbuck','2,Newcastle Lane',NULL,'Birmingham','B4 8SG','GB',0,0,NULL,60),('Beltway Prestige Driving','1, Smithy Close',NULL,'Liverpool','L1 WS','GB',1,0,NULL,61),('Bling Motors','2, Arndale Lane',NULL,'Liverpool','L3 QS','GB',1,0,NULL,62),('Smooth Rocking Chrome','Via Stromboli 2',NULL,'Milan',NULL,'IT',1,1,NULL,63),('YO! Speed!','Plaza Mayor',NULL,'Barcelona','08550','ES',1,0,NULL,64),('Stephany Rousso','10180 Orange County Place',NULL,'Los Angeles',NULL,'US',0,0,NULL,65),('My Shiny Sports Car Ltd.','1091, Cambride Street',NULL,'London','W1 3GH','GB',1,0,NULL,66),('Flash Voitures','Place Anspach 85',NULL,'Brussels',NULL,'BE',1,0,NULL,67),('Paul Blasio','50500 JFK Square',NULL,'New York',NULL,'US',0,0,NULL,68),('Mary Blackhouse','260, Oxford Avenue',NULL,'London','E1 9AP','GB',0,0,NULL,69),('Maurice Dujardin','10, Daltrey Lane',NULL,'London','NW1 7YU','GB',0,0,NULL,70),('Leslie Whittington','17, Mercury Street',NULL,'London','SE1 4AT','GB',0,0,NULL,71),('Mike Beeton','Green Plaza Place',NULL,'London','SW13 7ED','GB',0,1,NULL,72),('Melissa Bertrand','7, Westlands Street',NULL,'London','NW10 2SG','GB',0,0,NULL,73),('El Sport','Plaza San Andres',NULL,'Madrid',NULL,'ES',1,0,NULL,74),('Bling Bling S.A.','7, Place de la Richesse','Z.I Les Arnaques','Paris',NULL,'FR',1,0,NULL,75),('Bravissima!','Via Rosso, 34',NULL,'Rome','00175','IT',1,0,NULL,76),('Jayden Jones','10500 Lincoln Square',NULL,'Washington',NULL,'US',0,0,NULL,77),('Expensive Shine','89, Abbots Lane',NULL,'Manchester','M17 3EF','GB',1,0,NULL,78),('Steve Docherty','5, Albermarle Avenue',NULL,'Manchester','M7 9AS','GB',0,0,NULL,79),('Rodolph Legler','SingerStrasse 89',NULL,'Stuttgart',NULL,'DE',0,0,NULL,80),('Pete Spring','53, Pimlico Square',NULL,'Manchester','M3 4WR','GB',0,1,NULL,81),('Khader El Ghannam','10, rue de Jemappes','4eme etage','Paris',NULL,'FR',0,0,NULL,82),('Jacques Mitterand','1 Quai des Pertes',NULL,'Paris',NULL,'FR',0,0,NULL,83),('Francoise LeBrun','56, Rue Verte',NULL,'Lausanne',NULL,'CH',0,0,NULL,84),('Alex McWhirter','89, Harlequin Road',NULL,'Newcastle','NE1 7DH','GB',0,0,NULL,85),('Francois Chirac','2, Quai de l\'Enfer',NULL,'Paris',NULL,'FR',0,0,NULL,86),('Andy Cheshire','7, Wedgewood Steet',NULL,'Stoke','ST4 2OZ','GB',0,0,NULL,87),('Jimmy McFiddler','57, Smile Square',NULL,'Glasgow','G15 1AA','GB',1,1,NULL,88);
/*!40000 ALTER TABLE `Customer.Customer` ENABLE KEYS */;
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
