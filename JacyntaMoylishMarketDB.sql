CREATE DATABASE  IF NOT EXISTS `moylishmarket` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `moylishmarket`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moylishmarket
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `check_orders`
--

DROP TABLE IF EXISTS `check_orders`;
/*!50001 DROP VIEW IF EXISTS `check_orders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `check_orders` AS SELECT 
 1 AS `product_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `log_in_details`
--

DROP TABLE IF EXISTS `log_in_details`;
/*!50001 DROP VIEW IF EXISTS `log_in_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `log_in_details` AS SELECT 
 1 AS `id`,
 1 AS `email`,
 1 AS `user_type`,
 1 AS `password`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_view`
--

DROP TABLE IF EXISTS `orders_view`;
/*!50001 DROP VIEW IF EXISTS `orders_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `orders_view` AS SELECT 
 1 AS `orderNumber`,
 1 AS `orderDate`,
 1 AS `status`,
 1 AS `comments`,
 1 AS `customerNumber`,
 1 AS `productCode`,
 1 AS `quantityOrdered`,
 1 AS `priceEach`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `shopping_cart_view`
--

DROP TABLE IF EXISTS `shopping_cart_view`;
/*!50001 DROP VIEW IF EXISTS `shopping_cart_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `shopping_cart_view` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_photo`,
 1 AS `quantity`,
 1 AS `customer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wish_list_view`
--

DROP TABLE IF EXISTS `wish_list_view`;
/*!50001 DROP VIEW IF EXISTS `wish_list_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `wish_list_view` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_photo`,
 1 AS `customer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'moylishmarket'
--

--
-- Final view structure for view `check_orders`
--

/*!50001 DROP VIEW IF EXISTS `check_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `check_orders` AS (select `orderdetails`.`productCode` AS `product_id` from (`orderdetails` join `orders` on((`orders`.`orderNumber` = `orderdetails`.`orderNumber`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `log_in_details`
--

/*!50001 DROP VIEW IF EXISTS `log_in_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `log_in_details` AS select `staff`.`staff_id` AS `id`,`staff`.`email` AS `email`,`staff`.`user_type` AS `user_type`,`staff`.`password` AS `password` from `staff` union all select `customers`.`customer_number` AS `id`,`customers`.`email` AS `email`,`customers`.`user_type` AS `user_type`,`customers`.`password` AS `password` from `customers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_view`
--

/*!50001 DROP VIEW IF EXISTS `orders_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_view` AS (select `orders`.`orderNumber` AS `orderNumber`,`orders`.`orderDate` AS `orderDate`,`orders`.`status` AS `status`,`orders`.`comments` AS `comments`,`orders`.`customerNumber` AS `customerNumber`,`orderdetails`.`productCode` AS `productCode`,`orderdetails`.`quantityOrdered` AS `quantityOrdered`,`orderdetails`.`priceEach` AS `priceEach` from (`orderdetails` join `orders` on((`orders`.`orderNumber` = `orderdetails`.`orderNumber`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shopping_cart_view`
--

/*!50001 DROP VIEW IF EXISTS `shopping_cart_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shopping_cart_view` AS (select `products`.`produceCode` AS `product_id`,`products`.`description` AS `product_name`,`products`.`bulkSalePrice` AS `product_price`,`products`.`photo` AS `product_photo`,`shopping_cart`.`quantity` AS `quantity`,`shopping_cart`.`customer_id` AS `customer_id` from (`products` join `shopping_cart` on((`products`.`produceCode` = `shopping_cart`.`product_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wish_list_view`
--

/*!50001 DROP VIEW IF EXISTS `wish_list_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wish_list_view` AS (select `products`.`produceCode` AS `product_id`,`products`.`description` AS `product_name`,`products`.`bulkSalePrice` AS `product_price`,`products`.`photo` AS `product_photo`,`wish_list`.`customer_id` AS `customer_id` from (`products` join `wish_list` on((`wish_list`.`produce_code` = `products`.`produceCode`)))) */;
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

-- Dump completed on 2020-02-04 10:42:36
