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
-- Temporary view structure for view `Manufacturer.VehicleMakeCountry`
--

DROP TABLE IF EXISTS `Manufacturer.VehicleMakeCountry`;
/*!50001 DROP VIEW IF EXISTS `Manufacturer.VehicleMakeCountry`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Manufacturer.VehicleMakeCountry` AS SELECT 
 1 AS `CountryISO3`,
 1 AS `ManufacturerVehicleMakeName`,
 1 AS `ManufacturerVehicleMakeCountry`,
 1 AS `ManufacturerVehicleMakeId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Sales.SalesOrderDetailNames`
--

DROP TABLE IF EXISTS `Sales.SalesOrderDetailNames`;
/*!50001 DROP VIEW IF EXISTS `Sales.SalesOrderDetailNames`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Sales.SalesOrderDetailNames` AS SELECT 
 1 AS `CustomerName`,
 1 AS `StaffName`,
 1 AS `InvoiceNumber`,
 1 AS `TotalSalePrice`,
 1 AS `SaleDate`,
 1 AS `SalesOrderVehicleId`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Manufacturer.VehicleMakeCountry`
--

/*!50001 DROP VIEW IF EXISTS `Manufacturer.VehicleMakeCountry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Manufacturer.VehicleMakeCountry` (`CountryISO3`,`ManufacturerVehicleMakeName`,`ManufacturerVehicleMakeCountry`,`ManufacturerVehicleMakeId`) AS select `Manufacturer.Country`.`CountryISO3` AS `CountryISO3`,`Manufacturer.ManufacturerVehicleMake`.`ManufacturerVehicleMakeName` AS `ManufacturerVehicleMakeName`,`Manufacturer.ManufacturerVehicleMake`.`ManufacturerVehicleMakeCountry` AS `ManufacturerVehicleMakeCountry`,`Manufacturer.ManufacturerVehicleMake`.`ManufacturerVehicleMakeId` AS `ManufacturerVehicleMakeId` from (`Manufacturer.Country` join `Manufacturer.ManufacturerVehicleMake`) where (`Manufacturer.Country`.`CountryISO3` = `Manufacturer.ManufacturerVehicleMake`.`ManufacturerVehicleMakeCountry`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Sales.SalesOrderDetailNames`
--

/*!50001 DROP VIEW IF EXISTS `Sales.SalesOrderDetailNames`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Sales.SalesOrderDetailNames` (`CustomerName`,`StaffName`,`InvoiceNumber`,`TotalSalePrice`,`SaleDate`,`SalesOrderVehicleId`) AS select `Customer.Customer`.`CustomerName` AS `CustomerName`,`Employee.Staff`.`StaffName` AS `StaffName`,`Sales.SalesOrderVehicle`.`InvoiceNumber` AS `InvoiceNumber`,`Sales.SalesOrderVehicle`.`TotalSalePrice` AS `TotalSalePrice`,`Sales.SalesOrderVehicle`.`SaleDate` AS `SaleDate`,`Sales.SalesOrderVehicle`.`SalesOrderVehicleId` AS `SalesOrderVehicleId` from ((`Customer.Customer` join `Employee.Staff`) join `Sales.SalesOrderVehicle`) where ((`Employee.Staff`.`StaffId` = `Sales.SalesOrderVehicle`.`StaffId`) and (`Customer.Customer`.`CustomerId` = `Sales.SalesOrderVehicle`.`CustomerId`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 16:29:20
