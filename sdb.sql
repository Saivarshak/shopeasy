-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: shopeasy
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'kids'),(1,'mens'),(2,'womens');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`variant_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (1,1,'S','Blue',20,'men_tshirt_blue_front.jpg','men_tshirt_blue_back.jpg','men_tshirt_blue_side.jpg','men_tshirt_blue_closeup.jpg'),(2,2,'M','Black',25,'men_shirt_black_front.jpg','men_shirt_black_back.jpg','men_shirt_black_side.jpg','men_shirt_black_closeup.jpg'),(3,3,'28','White',15,'men_jean_front.jpg','men_jean_back.jpg','men_jean_side.jpg','men_jean_closeup.jpg'),(4,4,'S','Blue',18,'women_Ethnicwear_front.jpg','women_Ethnicwear_back.jpg','women_Ethnicwear_side.jpg','women_Ethnicwear_closeup.jpg'),(5,5,'M','Black',22,'women_westernwear_front.jpg','women_westernwear_back.jpg','women_westernwear_side.jpg','women_westernwear_closeup.jpg'),(6,6,'7','orange',12,'women_footwear_front.jpg','women_footwear_back.jpg','women_footwear_side.jpg','women_footwear_closeup.jpg'),(7,7,'XS','White',10,'kids_tshirt_white_front.jpg','kids_tshirt_white_back.jpg','kids_tshirt_white_side.jpg','kids_tshirt_white_closeup.jpg'),(8,8,'S','Yellow',12,'kids_dress_front.jpg','kids_dress_back.jpg','kids_dress_side.jpg','kids_dress_closeup.jpg'),(9,9,'Free Size','red',8,'kids_toys_front.jpg','kids_toys_back.jpg','kids_toys_side.jpg','kids_toys_closeup.jpg');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_percent` decimal(5,2) DEFAULT '0.00',
  `offer_price` decimal(10,2) GENERATED ALWAYS AS ((`price` - ((`price` * `discount_percent`) / 100))) STORED,
  `description` text,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `category_id` (`category_id`),
  KEY `subcategory_id` (`subcategory_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_name`, `brand`, `category_id`, `subcategory_id`, `sku`, `price`, `discount_percent`, `description`, `is_active`, `created_at`) VALUES (1,'t-shirts','Allen Solly',1,1,'SKU0001',1700.00,10.00,'A premium quality T-shirt.',1,'2025-08-12 08:32:53'),(2,'shirts','Raymond',1,2,'SKU0002',1500.00,15.00,'A high paid qualty product ',1,'2025-08-12 08:32:53'),(3,'jeans','Diesel',1,3,'SKU0003',1700.00,10.00,'Highily stricted jeans',1,'2025-08-12 08:32:53'),(4,'Etnicwears','Biba',2,4,'SKU0004',2000.00,15.00,'cotton cloth dress',1,'2025-08-12 08:32:53'),(5,'westernwear','Zara',2,5,'SKU0005',2500.00,20.00,'western weare clothes',1,'2025-08-12 08:32:53'),(6,'footwears','walkmate',2,6,'SKU0006',899.00,10.00,'footware',1,'2025-08-12 08:32:53'),(7,'kt-shirts','M&M',3,7,'SKU0007',799.00,10.00,'Cotton shirts',1,'2025-08-12 08:32:53'),(8,'kidsdress','M&M',3,8,'SKU0008',999.00,10.00,'dress',1,'2025-08-12 08:32:53'),(9,'toys','toys',3,9,'SKU0009',199.00,10.00,'toys brand',1,'2025-08-12 08:32:53'),(10,'kfootwear','Paragon',3,10,'SKU0010',699.00,10.00,'footware',1,'2025-08-12 08:32:53');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `subcategory_id` int NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`subcategory_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'t-shirts',1),(2,'shirts',1),(3,'jeans',1),(4,'Etnicwears',2),(5,'westernwears',2),(6,'wfootwears',2),(7,'kt-shirts',3),(8,'kidesdresses',3),(9,'toys',3),(10,'kfootwares',3);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-20 11:26:24
