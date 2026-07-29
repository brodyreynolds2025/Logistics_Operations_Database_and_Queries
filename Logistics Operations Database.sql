-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: logistics_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `contact_person` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_line1` varchar(200) DEFAULT NULL,
  `address_line2` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `account_status` varchar(20) DEFAULT NULL,
  `credit_limit` decimal(12,2) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'TechGlobal Solutions','Sarah Johnson','sarah.j@techglobal.com','555-0101','123 Innovation Drive','Suite 200','Austin','TX','78701','USA','Active',50000.00,'2023-01-15'),(2,'FreshFood Distributors','Michael Chen','mchen@freshfood.com','555-0102','456 Market Street',NULL,'Chicago','IL','60607','USA','Active',35000.00,'2023-02-20'),(3,'MediHealth Supplies','Dr. Emily Roberts','eroberts@medihealth.com','555-0103','789 Medical Blvd','Floor 3','Boston','MA','02115','USA','Active',75000.00,'2023-03-10'),(4,'AutoParts Express','Robert Turner','rturner@autoparts.com','555-0104','321 Industrial Way',NULL,'Detroit','MI','48201','USA','Suspended',25000.00,'2023-04-05'),(5,'GreenEnergy Corp','Lisa Park','lpark@greenenergy.com','555-0105','654 Solar Lane','Building A','Denver','CO','80202','USA','Active',100000.00,'2023-05-12'),(6,'RetailMart Inc','James Wilson','jwilson@retailmart.com','555-0106','987 Commerce Ave',NULL,'Miami','FL','33101','USA','Inactive',15000.00,'2023-06-18'),(7,'PharmaCare Solutions','Dr. Amanda Lee','alee@pharmacare.com','555-0107','147 Health Park','Suite 500','San Diego','CA','92101','USA','Active',90000.00,'2023-07-22'),(8,'Industrial Metals Inc','David Garcia','dgarcia@industrialmetals.com','555-0108','258 Steel Road',NULL,'Pittsburgh','PA','15201','USA','Active',120000.00,'2023-08-30');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (201,'David','Smith','Warehouse Manager',1,'2020-03-15',75000.00,'555-2001','dsmith@logistics.com',1),(202,'Alice','Johnson','Forklift Operator',1,'2021-06-20',42000.00,'555-2002','ajohnson@logistics.com',1),(203,'Robert','Brown','Inventory Specialist',1,'2022-01-10',48000.00,'555-2003','rbrown@logistics.com',1),(204,'Maria','Garcia','Warehouse Manager',2,'2019-08-01',78000.00,'555-2004','mgarcia@logistics.com',1),(205,'James','Wilson','Forklift Operator',2,'2020-11-15',43000.00,'555-2005','jwilson@logistics.com',1),(206,'Patricia','Lee','Quality Control',2,'2021-04-22',52000.00,'555-2006','plee@logistics.com',1),(207,'Michael','Taylor','Warehouse Manager',3,'2020-05-10',72000.00,'555-2007','mtaylor@logistics.com',1),(208,'Jennifer','Martinez','Shipping Clerk',3,'2022-08-14',38000.00,'555-2008','jmartinez@logistics.com',1),(209,'William','Anderson','Warehouse Manager',5,'2018-12-01',82000.00,'555-2009','wanderson@logistics.com',1),(210,'Linda','Thomas','Inventory Specialist',5,'2021-09-30',50000.00,'555-2010','lthomas@logistics.com',1),(211,'Richard','Jackson','Forklift Operator',5,'2023-02-15',41000.00,'555-2011','rjackson@logistics.com',1),(212,'Elizabeth','White','Warehouse Manager',6,'2021-03-20',69000.00,'555-2012','ewhite@logistics.com',1),(213,'Thomas','Harris','Shipping Clerk',6,'2022-11-01',37000.00,'555-2013','tharris@logistics.com',0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL,
  `warehouse_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity_on_hand` int DEFAULT NULL,
  `quantity_reserved` int DEFAULT NULL,
  `quantity_available` int DEFAULT NULL,
  `reorder_point` int DEFAULT NULL,
  `max_capacity` int DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,101,150,25,125,50,200,'2026-07-21 15:30:00'),(2,1,102,80,10,70,30,100,'2026-07-21 15:30:00'),(3,1,103,500,100,400,200,800,'2026-07-21 15:30:00'),(4,2,101,200,40,160,50,300,'2026-07-21 16:15:00'),(5,2,104,300,50,250,100,500,'2026-07-21 16:15:00'),(6,2,105,1000,200,800,300,1500,'2026-07-21 16:15:00'),(7,3,107,60,5,55,20,80,'2026-07-21 17:00:00'),(8,3,108,400,30,370,100,600,'2026-07-21 17:00:00'),(9,3,111,25,8,17,10,40,'2026-07-21 17:00:00'),(10,5,102,120,15,105,40,150,'2026-07-21 18:30:00'),(11,5,106,800,100,700,200,1000,'2026-07-21 18:30:00'),(12,5,109,45,10,35,15,60,'2026-07-21 18:30:00'),(13,6,104,150,20,130,50,200,'2026-07-21 19:45:00'),(14,6,112,12,3,9,5,20,'2026-07-21 19:45:00');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1001,101,2,899.99,0.00,1799.98),(2,1001,102,1,1499.99,0.20,1199.99),(3,1002,103,50,12.99,0.05,617.03),(4,1002,104,80,8.49,0.10,611.28),(5,1003,105,200,25.00,0.15,4250.00),(6,1003,106,100,45.99,0.02,4507.02),(7,1004,107,80,129.99,0.10,9359.28),(8,1004,108,150,24.99,0.05,3561.08),(9,1005,101,3,899.99,0.00,2699.97),(10,1005,111,4,249.99,0.10,899.96),(11,1005,112,2,399.99,0.15,679.98),(12,1006,105,500,25.00,0.00,12500.00),(13,1007,102,1,1499.99,0.00,1499.99),(14,1007,103,100,12.99,0.08,1195.08),(15,1007,104,80,8.49,0.10,611.28),(16,1008,103,25,12.99,0.00,324.75),(17,1008,104,30,8.49,0.05,241.97),(18,1009,107,8,129.99,0.10,935.93),(19,1009,108,20,24.99,0.05,474.81),(20,1010,111,10,249.99,0.10,2249.91),(21,1010,112,3,399.99,0.05,1139.97),(22,1011,106,30,45.99,0.15,1172.75),(23,1011,109,10,89.50,0.10,805.50),(24,1012,107,40,129.99,0.05,4939.62),(25,1012,108,60,24.99,0.10,1349.46);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `required_date` date DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  `order_status` varchar(30) DEFAULT NULL,
  `shipping_method` varchar(50) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,1,'2026-07-15','2026-07-20','2026-07-19','Delivered','Express Ground','TRK-1001-USA',2499.97,'Paid'),(1002,2,'2026-07-16','2026-07-22',NULL,'In Transit','Refrigerated Truck','TRK-1002-USA',1249.85,'Paid'),(1003,3,'2026-07-17','2026-07-25',NULL,'Processing','Air Freight','TRK-1003-USA',8750.00,'Pending'),(1004,5,'2026-07-18','2026-07-28',NULL,'Pending','Standard Ground','TRK-1004-USA',12499.90,'Pending'),(1005,1,'2026-07-19','2026-07-26',NULL,'Processing','Express Ground','TRK-1005-USA',4599.97,'Paid'),(1006,7,'2026-07-20','2026-07-27',NULL,'Pending','Temperature Controlled','TRK-1006-USA',12500.00,'Partial'),(1007,8,'2026-07-20','2026-07-30','2026-07-21','Shipped','Heavy Freight','TRK-1007-USA',3299.97,'Paid'),(1008,2,'2026-07-21','2026-07-28',NULL,'Processing','Express Ground','TRK-1008-USA',599.85,'Paid'),(1009,4,'2026-06-15','2026-06-20','2026-06-19','Delivered','Standard Ground','TRK-1009-USA',1499.89,'Paid'),(1010,6,'2026-06-20','2026-06-25','2026-06-24','Delivered','Standard Ground','TRK-1010-USA',3499.99,'Paid'),(1011,3,'2026-07-21','2026-07-29',NULL,'Processing','Air Freight','TRK-1011-USA',2145.50,'Pending'),(1012,5,'2026-07-22','2026-07-31',NULL,'Pending','Standard Ground','TRK-1012-USA',6599.92,'Pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_sku` varchar(50) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(50) DEFAULT NULL,
  `unit_weight_kg` decimal(8,2) DEFAULT NULL,
  `unit_volume_cbm` decimal(8,4) DEFAULT NULL,
  `storage_requirements` varchar(100) DEFAULT NULL,
  `hazardous` tinyint(1) DEFAULT NULL,
  `shelf_life_days` int DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'ELEC-001','SmartPhone Pro X','Electronics','Mobile Devices',0.45,0.0008,'Ambient',0,730,899.99),(102,'ELEC-002','Laptop Ultra Slim','Electronics','Computers',1.80,0.0045,'Ambient',0,730,1499.99),(103,'FOOD-001','Organic Rice 5kg','Food & Beverage','Grains',5.00,0.0060,'Dry Storage',0,365,12.99),(104,'FOOD-002','Frozen Vegetables 2kg','Food & Beverage','Frozen',2.00,0.0025,'Frozen (-18C)',0,180,8.49),(105,'MED-001','COVID Test Kits','Medical Supplies','Diagnostics',0.30,0.0004,'Temperature Controlled',0,540,25.00),(106,'MED-002','Surgical Masks Box','Medical Supplies','PPE',1.20,0.0020,'Ambient',0,730,45.99),(107,'AUTO-001','Car Battery','Automotive','Parts',18.00,0.0300,'Ambient',1,365,129.99),(108,'AUTO-002','Windshield Wipers','Automotive','Accessories',0.80,0.0015,'Ambient',0,730,24.99),(109,'CHEM-001','Industrial Lubricant','Chemicals','Oils',20.00,0.0250,'Flammable Storage',1,180,89.50),(110,'CHEM-002','Cleaning Solution','Chemicals','Cleaners',15.00,0.0180,'Ventilated Area',1,365,34.99),(111,'FURN-001','Office Chair','Furniture','Seating',12.50,0.1200,'Ambient',0,730,249.99),(112,'FURN-002','Desk Table','Furniture','Workspaces',25.00,0.2500,'Ambient',0,730,399.99);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `shipment_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `carrier_name` varchar(50) DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `actual_weight_kg` decimal(10,2) DEFAULT NULL,
  `actual_volume_cbm` decimal(10,4) DEFAULT NULL,
  `freight_cost` decimal(12,2) DEFAULT NULL,
  `insurance_cost` decimal(12,2) DEFAULT NULL,
  `delivery_status` varchar(30) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`shipment_id`),
  KEY `order_id` (`order_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `shipments_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,1001,1,'FedEx','2026-07-16','2026-07-19',12.50,0.0080,245.00,15.00,'Delivered','Customer signature: Sarah Johnson'),(2,1002,3,'UPS','2026-07-17',NULL,15.20,0.0200,380.00,25.00,'In Transit','Refrigerated container required'),(3,1003,2,'DHL','2026-07-18',NULL,30.50,0.2500,890.00,50.00,'In Transit','Priority handling - medical supplies'),(4,1004,5,'FreightLine','2026-07-19',NULL,250.00,0.3500,1250.00,100.00,'Pending','Oversized shipment - requires special equipment'),(5,1005,1,'FedEx','2026-07-20',NULL,15.00,0.0090,425.00,20.00,'In Transit','Express delivery - fragile items'),(6,1007,6,'TruckMax','2026-07-21',NULL,35.80,0.0450,520.00,35.00,'In Transit','Combined shipment with multiple products'),(7,1009,4,'UPS','2026-06-16','2026-06-19',8.50,0.0015,195.00,10.00,'Delivered','Residential delivery'),(8,1010,2,'FedEx','2026-06-21','2026-06-24',125.00,0.0120,750.00,45.00,'Delivered','Furniture shipment - careful handling');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int NOT NULL,
  `vehicle_registration` varchar(20) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `capacity_kg` decimal(10,2) DEFAULT NULL,
  `capacity_cbm` decimal(10,2) DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `driver_name` varchar(80) DEFAULT NULL,
  `driver_phone` varchar(20) DEFAULT NULL,
  `last_maintenance` date DEFAULT NULL,
  `next_maintenance` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (301,'TX-2024-001','Box Truck',5000.00,30.00,1,'John Davis','555-3001','2026-06-15','2026-09-15','Active'),(302,'TX-2024-002','Refrigerated Van',3000.00,18.00,1,'Michael O\'Brien','555-3002','2026-07-01','2026-10-01','Active'),(303,'CA-2024-001','Semi-Truck',15000.00,90.00,2,'Carlos Rodriguez','555-3003','2026-06-20','2026-09-20','Active'),(304,'CA-2024-002','Box Truck',6000.00,35.00,2,'Sarah Chen','555-3004','2026-05-10','2026-08-10','Maintenance'),(305,'IL-2024-001','Box Truck',4000.00,25.00,3,'Mark Wilson','555-3005','2026-06-25','2026-09-25','Active'),(306,'IL-2024-002','Temperature Controlled',3500.00,20.00,3,'Lisa Park','555-3006','2026-07-05','2026-10-05','Active'),(307,'TX-2024-003','Heavy Hauler',25000.00,120.00,5,'Robert Taylor','555-3007','2026-06-10','2026-09-10','Active'),(308,'TX-2024-004','Box Truck',5500.00,30.00,5,'Amanda Green','555-3008','2026-05-20','2026-08-20','Active');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `warehouse_id` int NOT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `location_state` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `capacity_sqft` decimal(10,2) DEFAULT NULL,
  `current_utilization` decimal(5,2) DEFAULT NULL,
  `manager_name` varchar(80) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'East Coast Distribution Center','Newark','NJ','100 Port Boulevard',250000.00,78.50,'Thomas Anderson','555-1001',1),(2,'West Coast Logistics Hub','Los Angeles','CA','200 Harbor Drive',300000.00,85.20,'Maria Rodriguez','555-1002',1),(3,'Midwest Fulfillment Center','Chicago','IL','300 Rail Avenue',180000.00,62.75,'John Miller','555-1003',1),(4,'Southern Regional Warehouse','Atlanta','GA','400 Truck Route',150000.00,90.10,'Jennifer Smith','555-1004',0),(5,'Texas Mega Distribution','Dallas','TX','500 Logistics Parkway',400000.00,45.30,'Robert Johnson','555-1005',1),(6,'Pacific Northwest Facility','Portland','OR','600 Shipping Lane',120000.00,95.80,'Michelle Davis','555-1006',1);
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 12:01:58
