-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: zara_project
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `accounts_customuser`
--

DROP TABLE IF EXISTS `accounts_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_customuser`
--

LOCK TABLES `accounts_customuser` WRITE;
/*!40000 ALTER TABLE `accounts_customuser` DISABLE KEYS */;
INSERT INTO `accounts_customuser` VALUES (1,'pbkdf2_sha256$260000$4xeScF0h6GLFan8utdBWzn$2RGUrFJtasPl/gSInxliEuOkMkeM3upt+1RYhN7cybI=','2022-12-13 08:12:27.167375',1,'zara_admin','','','zara_admin@gmail.com',1,1,'2022-11-24 03:48:31.536553',NULL),(3,'pbkdf2_sha256$260000$OEWTimyTyq8lfc2uIZrlCH$FsgFaE2pixxIJWxa33BumPzCnqo0bxwTuHpnMXLf8d4=','2022-12-06 09:21:39.766904',0,'haseeb','haseeb','','haseebkph@gmail.com',0,1,'2022-11-24 12:12:14.000000','+917034260621'),(4,'pbkdf2_sha256$260000$5IO5rEUmCdQgIGfHTQjr6g$HSHMuZA++aPRqyg6El2L+m0VZyLln7wIP5xLV17Gg6k=','2022-12-05 06:20:22.435280',0,'arya','arya','','arya@gmail.com',0,1,'2022-11-26 08:30:51.121549','+919207200852'),(8,'pbkdf2_sha256$260000$Ste8TgRu0YRE2wuR2jIu2B$hFP/di9fOHVZiLtXZ6IWn7LEruI8c43k8pD2RJsVKv0=','2022-11-27 16:06:55.315471',0,'Samrood','Samrood','','Samrooda1@gmail.com',0,1,'2022-11-27 16:06:10.386588','+917994728796'),(9,'pbkdf2_sha256$260000$TfL03Z8K2XK3NH8Ib39k9i$Ydl3K2dBjUuQZiUB28wz0w9hSZ3ki2JAHqo5XBLXcZY=','2022-11-28 06:51:45.036995',0,'Lulu','Shamila','','lulushamila@gmail.com',0,1,'2022-11-28 06:48:08.950676','+918590426660'),(10,'pbkdf2_sha256$260000$axIDSaz3nVfcXYC0JlWWb4$KlwyrdBuMdERFbbfgXY6fnDlmKje0yHeVm/Sfntpx2k=','2022-11-28 15:40:03.557228',0,'nikhil','NIKHIL ','','nikhil@gmail.com',0,1,'2022-11-28 13:32:58.281840','+918893664592'),(11,'pbkdf2_sha256$260000$77Unizq89dGLJGPy7nsi6E$SIpB7JG5ootdu32FoLGuHi9eKzrzWdQK/FKySjufnqE=','2022-11-29 14:14:27.970319',0,'jithinkb','Jithin K B','','jithinkb321@gmail.com',0,1,'2022-11-29 14:14:12.535959','+918138073221'),(12,'pbkdf2_sha256$260000$EcrF3rqcmcpRzlyyC9pTgd$e1A2xERVYr/ZL/WZRdkNzdxqwHlid567YXI+sMPfceI=','2022-11-29 16:09:12.454352',0,'1234','Agapios','','agapios@gmail.com',0,1,'2022-11-29 15:52:00.076115','+91974561046834'),(13,'pbkdf2_sha256$260000$4RjHPhVein9gKGBcN88Fx7$Ej6Ww7spYJA4RA91jumg/ATdjsepQt7KB7nZOTU5o/0=','2022-11-29 15:55:29.463828',0,'Resvan','MUHAMMED RESVAN K','','muhammedresvankolambil@gmail.com',0,1,'2022-11-29 15:55:10.868048','+916238577673'),(14,'pbkdf2_sha256$260000$6zcBlB1ybMJM7TvFY4V62q$Idy62Fe8bz7FxJMrcgAMyi0QrxiYxlSdHyFg9ztXFfg=','2022-12-04 06:22:03.731491',0,'tinyannadas','tiny','','tipach7@yahoo.com',0,1,'2022-12-04 06:19:11.037822','+917550195294');
/*!40000 ALTER TABLE `accounts_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_customuser_groups`
--

DROP TABLE IF EXISTS `accounts_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_customuser_groups`
--

LOCK TABLES `accounts_customuser_groups` WRITE;
/*!40000 ALTER TABLE `accounts_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_customuser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_customuser_user_permissions`
--

LOCK TABLES `accounts_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_products_category`
--

DROP TABLE IF EXISTS `admin_products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `offer` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_products_category`
--

LOCK TABLES `admin_products_category` WRITE;
/*!40000 ALTER TABLE `admin_products_category` DISABLE KEYS */;
INSERT INTO `admin_products_category` VALUES (3,'Almond','images/almondnew_ckDbIIu.jpeg',0),(5,'Cashew Nuts','images/cashewnew_MUknxUl.jpg',10),(6,'Apricot','images/apricotnew_fatJS8O.jpg',0),(7,'Dates','images/dates_OXizMjV.jpg',0),(8,'Figs','images/figs_OBXBUs5.jpg',0),(9,'Kiwi','images/kiwi_qEtwuCB.jpg',0),(10,'Mango','images/mango_uXo605g.jpg',0),(11,'Pistachio','images/pista_gs3Wch5.jpg',0),(12,'Hampers','images/vista-superior-de-deliciosas-nozes-com-espaco-de-copia_23-2148693927.jpg',0),(13,'Others','images/saffron._V5ulcoD.jpg',0),(14,'Walnut','images/walnut.webp',0);
/*!40000 ALTER TABLE `admin_products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_products_products`
--

DROP TABLE IF EXISTS `admin_products_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_products_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(300) NOT NULL,
  `price` int NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `c_offer` int NOT NULL,
  `c_offer_price` int NOT NULL,
  `p_offer` int NOT NULL,
  `p_offer_price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_products_produ_category_id_dd86edce_fk_admin_pro` (`category_id`),
  CONSTRAINT `admin_products_produ_category_id_dd86edce_fk_admin_pro` FOREIGN KEY (`category_id`) REFERENCES `admin_products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_products_products`
--

LOCK TABLES `admin_products_products` WRITE;
/*!40000 ALTER TABLE `admin_products_products` DISABLE KEYS */;
INSERT INTO `admin_products_products` VALUES (1,'Happilo Premium  Almonds Roasted & Salted',249,'Premium quality Californian almonds are roasted to perfection with the perfect amount of salt to give you the ultimate snacking experience.','images/1_fbtltLx.jpg',3,50,'images/2/2.jpg','images/3/3_ExnMxpE.jpg','images/4/4_Jf0pwxS.jpg',0,0,10,224),(3,'Farmley Popular California Almonds Generic Pouch',1259,'Farmley source all the nuts & dry fruits directly from the farms which are hygienically packed in a HACCP certified unit. We pack almonds which are handpicked, 100% natural and free from adulteration. These are filled with vitamin E, magnesium and dietary fibres. Almonds also help to counter the bad cholestrol in the body and improve heart health. Just one crunchy handful of Farmley’s almond is a satisfying way to treat your taste buds without missing out on nutrients. All natural almonds with zero additives & goodness of nutrients. Enjoy healthy & guilt-free snacking anytime.','images/1_Ki8C8ya.jpg',3,45,'images/2/2_iHvx9de.jpg','images/3/3_DoDOEjK.jpg','images/4/0.jpg',0,0,0,0),(4,'Happilo 100% Natural Premium Californian Almonds 1Kg Value Pack',1360,'almonds are 100% organic, tasty and nutritious deliciousness. There are no added preservatives in these almonds.\r\n\r\n','images/a.jpg',3,20,'images/2/b.jpg','images/3/c.jpg','images/4/d.jpg',0,0,0,0),(5,'Nutraj California Almond Kernels -200g',299,'\r\n100% PURE: Handpicked, crunchy, and wholesome raw almonds sourced from the best farms in California.','images/100.jpg',3,65,'images/2/101.jpg','images/3/103.jpg','images/4/0_UTjpdb1.jpg',0,0,0,0),(6,'Nutraj Signature Mamra Almond (Vacuum Pack)',950,'Known to be grown in the lush farms of Kashmir, Iran and Afghanistan, Mamra Almonds are usually identifiable due to their distinctive shape and size and high nutritional profile and contains more oil content than any other almonds type. They are cultivated organically without using any chemicals and pesticides, hence are available almost in their natural state. Mamra Almonds may helps aid blockages in the arteries and serves as a fighting against heart diseases. They are generally known for their delectable taste that adds a delicious crunch to a variety of sweet and savory dishes.','images/5_6XwqG5E.jpg',3,45,'images/2/6_0CIxvwL.jpg','images/3/7_4fPsLZY.jpg','images/4/8_xCLWA2R.jpg',0,0,0,0),(7,'Farmley Premium W320 Cashew Standee Pouch - 200g',559,'Farmley Cashews are directly sourced from the farm and are hygienically packed in a HACCP certified unit. We pack cashews which are handpicked, 100% natural and free from adulteration. Our cashews are low in sugar, high in fiber, heart-healthy fats, and vegan protein. Eat them on raw, add them to your favorite dishes, or use them to make cashew-based sauces and desserts.','images/1_9LfBWcD.jpg',5,65,'images/2/2_g7R6g6u.jpg','images/3/3_CAkKtuj.jpg','images/4/4_NM3SZhK.jpg',10,503,0,0),(8,'Happilo Premium Cashews Roasted And; Salted -200g',399,'These high-quality, crunchy Cashews are toasted to perfection with the right amount of salt to give you the ultimate healthy and rich snacking experience.','images/5_hUJQDbC.jpg',5,75,'images/2/6_Aql1amo.jpg','images/3/7_F6Af6Jl.jpg','images/4/8_a7n74jd.jpg',10,359,0,0),(9,'Happilo 100% Natural Premium Whole Cashews 1Kg Value Pack',1299,'These high-quality, crunchy Cashews are toasted to perfection with the right amount of salt to give you the ultimate healthy and rich snacking experience.','images/front-1-1-600x600.jpg',5,50,'images/2/b_Y2hEhgz.jpg','images/3/c_T6vWhe4.jpg','images/4/d_gobzoJq.jpg',10,1169,0,0),(10,'Delight Nuts Pepper Cashew',459,'\r\nCashews have a?mild flavor and creamy, rich texture, with a similar mouthfeel to peanuts. Despite their richness, cashews are slightly lower in fat than most other nuts.','images/1.png',5,65,'images/2/png.jpg','images/3/png2.jpg','images/4/4_eLmxYbU.jpg',10,413,0,0),(11,'Healthy Feast Cashews - 500g',499,'Satiate your cravings with nutrition filled Cashews by Healthy Feast. Hygienically packed as per food safety standards, these cashew nuts are filled with rich flavors and health benefits. Add some crunch to your salad with these buttery cashews and pamper your taste buds. Healthy Feast Cashew nuts are premium quality in nature. The fusion of taste and health in cashew nuts makes for a healthy snack for your kids. Also it called as Kaju, these whole cashews come in a handy pack which you can carry when you travel, go to the gym or anywhere with you. It can also be a perfect dry fruit and nuts festival and happy occasion gift option.','images/100_tMtMwkC.jpg',5,50,'images/2/101_UfbXyk7.jpg','images/3/102.jpg','images/4/103.jpg',10,449,0,0),(12,'Happilo Turkish Apricots',249,'These jumbo-sized, high-quality dried apricots are plump, moist, chewy and flavourful with a pleasing sweet note.','images/1_g7jG0us.jpg',6,0,'images/2/2_zrM69iW.jpg','images/3/3_tYquEgs.jpg','images/4/4_cmMG0v8.jpg',0,0,0,0),(13,'Farmley Premium Fard Dates Standee Pouch',365,'Farmley, source all the nuts & dry fruits directly from the farms which are hygienically packed in a HACCP certified unit. We pack pistachios which are handpicked, 100% natural and free from adulteration. Pistachios are high in protein, fiber, and antioxidants. They also boast several other important nutrients, including vitamin B6 and potassium. Every bite of this roasted Pistachios has a perfect level of crunchiness & flavour that blends perfectly in your taste buds while satisfying hunger-pangs. Farmley’s roasted & salted pistachio is here to greet you into the world of SUPERFOOD snacking with no compromise on TASTE! No Chemicals, No Preservatives, Non-GMO.','images/1_LzJi78e.jpg',7,73,'images/2/2_vVtq4OU.jpg','images/3/0.0.jpg','images/4/0.1.jpg',0,0,10,328),(14,'Prov Premium Date 250g',299,'Dates are rich in nutrients, especially magnesium, which help curb down hypertension and maintain good heart health. Contains zero cholesterol. Dates (also termed as crown of sweet fruits) are dry and have numerous nutritional benefits that are required by the body.\r\n\r\n','images/4_GC2QHPk.jpg',7,50,'images/2/5.jpg','images/3/6.jpg','images/4/0.0.jpg',0,0,0,0),(15,'Happilo Premium International Persian Dates Value Pack (Pack Of 2)',499,'Happilo Premium International Persian Dates Value Pack comes with delicious farm-fresh Persian dates, especially sourced from the regions around the Persian Gulf. It is a healthy sweet delicacy that is suitable as a snack for your kids as well.','images/10.jpg',7,55,'images/2/11.jpg','images/3/12.jpg','images/4/13.jpg',0,0,0,0),(16,'Delight Nuts Omani Dates 200g',199,'Dates are Deliciously sweet goodness which “Dates” centuries back. Known as the fruits from the tropical oasis, brimming with much-needed minerals and energy helps you to stay fit and healthy. They are packed with plenty of nutrients which make them an ideal snack and a perfect. Substitution for sugar carvings.','images/15.jpg',7,80,'images/2/16.jpg','images/3/17.jpg','images/4/0.0_7GEFrB0.jpg',0,0,0,0),(17,'Nutty Gritties Kalmi Dates',399,'Kalmi dates are prepared using natural sugar and have high fibre and low glycemic index content. These dates are quite juicy and nutritious and also satisfies sweet cravings. ','images/20.jpg',7,65,'images/2/21.jpg','images/3/22.jpg','images/4/0.0_qcrxhcF.jpg',0,0,0,0),(18,'Farmley Selecta Afghan Figs (Anjeer) Monocarton',359,'Farmley, source all the nuts & dry fruits directly from the farms which are hygienically packed in a HACCP certified unit. The high fibre content in Anjeer improves digestion and boost immunity. Our dried Figs are naturally sweet; healthy and delicious to taste. They are rich in calcium and potassium that improves bone density. No additives, just pure clean food with goodness of all nutrients specially crafted for you.','images/Anjeer-Mock-Front-1-600x600.jpg',8,55,'images/2/Anjeer-Mock-Back-1-600x600.jpg','images/3/Afghan-figs-1-600x600.jpg','images/4/Afghan-Figs-USP-1-600x600.jpg',0,0,0,0),(19,'Happilo Premium International Dried Kiwi',199,'These dried, slightly sweet and deliciously tangy kiwi slices have this vibrant green colour to invite you into a healthy snacking habit.','images/kiwi_JeQ7svc.jpg',9,50,'images/2/kiwi1.jpg','images/3/kiwi2.jpg','images/4/kiwi3.jpg',0,0,0,0),(20,'Happilo Premium International Dried Mango',259,'\r\nHappilo Premium International Dried Mango is a true tropical delight, made from real mangoes. It is a cholesterol-free, low-calorie snack to add to your diet.','images/mango1.jpg',10,55,'images/2/mango2.jpg','images/3/mango3.jpg','images/4/mango4.jpg',0,0,0,0),(21,'Happilo Premium Californian Roasted & Salted Pistachios',349,'These high-quality Californian Pistachios are roasted to perfection with the right amount of salt to give you the ultimate snacking experience.','images/p1_vlWxHMu.jpg',11,60,'images/2/p2_nBur5vE.jpg','images/3/p3_hNzZnY2.jpg','images/4/p4_Rphz9Ex.jpg',0,0,0,0),(22,'Happilo Premium 100% Natural Chilean Inshell Walnut Kernels 500g Value Pack ',569,'Premium Walnuts','images/w1_udLIFPa.jpg',14,49,'images/2/w2.jpg','images/3/w3.jpg','images/4/w4.jpg',0,0,0,0),(23,'Dryfruits Hamper',2499,'Gift the best to your beloved ones','images/hamper1.jpeg',12,18,'images/2/hamper4.jpeg','images/3/hamper2.jpeg','images/4/hamper3.jpeg',0,0,0,0),(24,'Kashmiri saffron - 1 gram',549,'The Kashmiri saffron is one of the most expensive spices in the world. It originates from Kashmir Valley, and it has a unique flavor that can\'t be replicated by any other spice. The best quality Kashmiri saffron is also believed to have many medicinal properties, including helping with Pregnancy and depression. Often Medical Doctors recommend Use Saffron while Pregnancy. So for our customers who want the best quality saffron/Kesar from Kashmir. We are providing the best quality saffron with Quality packing.','images/saffron1_S3sxAfI.jpg',13,23,'images/2/saffron2_yuElZM1.jpg','images/3/Saffron3.jpg','images/4/Saffron4.jpg',0,0,0,0),(26,'Rostaa Roasted & Salted Almond Nuts',350,'Rostaa salted almonds come under high grade superfood and ensure good physical health. These almonds help in reducing belly fat and keep your acne in check.','images/1_e0OOZFu.jpg',3,50,'images/2/2_HS65myE.jpg','images/3/0.jpg','images/4/103_wfWDb3W.jpg',0,0,0,0),(27,'Farmley Premium California Almonds Standee Pouch',1425,'Farmley source all the nuts & dry fruits directly from the farms which are hygienically packed in a HACCP certified unit. We pack almonds which are handpicked, 100% natural and free from adulteration. These are filled with vitamin E, magnesium and dietary fibres. Almonds also help to counter the bad cholestrol in the body and improve heart health. Just one crunchy handful of Farmley’s almond is a satisfying way to treat your taste buds without missing out on nutrients. All natural almonds with zero additives & goodness of nutrients. Enjoy healthy & guilt-free snacking anytime.','images/3_eWxibiM.jpg',3,60,'images/2/4.jpg','images/3/0.1.jpg','images/4/0_w7AKb9Y.jpg',0,0,0,0),(28,'Delight Nuts Almond Natural - 200g',325,'\r\nIndulge in the deliciously seasoned almonds and treat your taste buds to a truly delightful experience. These nuts make a perfect snack for all you cravings while their healthy doses of nutrients maintain your good health. The rich taste and the superior quality of the California Almonds will elevate your mood and enrich your health.','images/5_xP55O9e.jpg',3,45,'images/2/6_OgBJoPf.jpg','images/3/0_DZC2jq2.jpg','images/4/0.1_UOL6TuZ.jpg',0,0,0,0),(29,'Nutraj Premium Almond Kernels',334,'This pack of almonds is delicious, nutritious and wholesome. These almonds are packed with protein essential for muscle building and are a healthy snacking option for better living. A good source of fiber, calcium, zinc and antioxidants, these almonds are hygienically packed. They can be added as a crunchy topper for salads or oatmeal.','images/7_o2kVflh.jpg',3,35,'images/2/8.jpg','images/3/0_S9wmQQS.jpg','images/4/0.1_4JrTMN2.jpg',0,0,0,0),(30,'Borges Blanched & Peeled Almonds-400g',400,'Convenience: No soaking and peeling required; tannins free; better absorption of nutrients; processed hygienically','images/9_K5hLibv.jpg',3,45,'images/2/10.jpg','images/3/11.jpg','images/4/12.jpg',0,0,0,0),(31,'Nutraj Daily California Almonds',659,'Almonds pack a powerful nutrient punch- With 6 grams of plant protein, 4 grams of fibre, healthy unsaturated fats, calcium, magnesium, antioxidant vitamin E, and so much more in every healthy handful (30g serving), almonds are the perfect crunch for every diet. Add these almonds to your fruit salad for a zest of crunchines.','images/13.jpg',3,65,'images/2/14.jpg','images/3/0.1_xrGbKoa.jpg','images/4/0_8A8MSXK.jpg',0,0,0,0),(32,'Healthy Feast Natural California Almonds',459,'Start your day with a healthy crunch in every bite with Healthy Feast Almonds. Processed and packaged as per international food and safety standards. Healthy Feast Almonds are premium quality dry fruits rich in flavours. With the right balance of fitness, texture and taste, these crunchy almonds are a favourite snack of kids. Also known as Badam, Almonds are considered to be a Brain Food. Available in handy packs, you can munch on these crunchy almonds anywhere, anytime. For its health benefits and for the crispy crunchy taste, these almonds make for a healthy and thoughtful gifting option for fitness enthusiasts. You can also gift these nutritious Almonds on Festivals and happy occasions to your health conscious friends and family members.','images/15_tjwl2kV.jpg',3,54,'images/2/16_ohFqG9B.jpg','images/3/17_VIZMwVr.jpg','images/4/18.jpg',0,0,0,0),(33,'Rostaa Classic Almonds',294,'Rostaa Gourmet brings delectable classic Almonds, highly rich in nutrients. Almonds form a healthy snack that you can munch on anytime, anywhere. These Badam are rich in nutrients, fiber, fats and protein','images/19.jpg',3,50,'images/2/20.jpg','images/3/0.1_obNaPK9.jpg','images/4/0_LrGxX4P.jpg',0,0,0,0);
/*!40000 ALTER TABLE `admin_products_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add products',8,'add_products'),(30,'Can change products',8,'change_products'),(31,'Can delete products',8,'delete_products'),(32,'Can view products',8,'view_products'),(33,'Can add cart',9,'add_cart'),(34,'Can change cart',9,'change_cart'),(35,'Can delete cart',9,'delete_cart'),(36,'Can view cart',9,'view_cart'),(37,'Can add address',10,'add_address'),(38,'Can change address',10,'change_address'),(39,'Can delete address',10,'delete_address'),(40,'Can view address',10,'view_address'),(41,'Can add order',11,'add_order'),(42,'Can change order',11,'change_order'),(43,'Can delete order',11,'delete_order'),(44,'Can view order',11,'view_order'),(45,'Can add old cart',12,'add_oldcart'),(46,'Can change old cart',12,'change_oldcart'),(47,'Can delete old cart',12,'delete_oldcart'),(48,'Can view old cart',12,'view_oldcart'),(49,'Can add wishlist',13,'add_wishlist'),(50,'Can change wishlist',13,'change_wishlist'),(51,'Can delete wishlist',13,'delete_wishlist'),(52,'Can view wishlist',13,'view_wishlist'),(53,'Can add guest cart',14,'add_guestcart'),(54,'Can change guest cart',14,'change_guestcart'),(55,'Can delete guest cart',14,'delete_guestcart'),(56,'Can view guest cart',14,'view_guestcart'),(57,'Can add product offer',15,'add_productoffer'),(58,'Can change product offer',15,'change_productoffer'),(59,'Can delete product offer',15,'delete_productoffer'),(60,'Can view product offer',15,'view_productoffer'),(61,'Can add category offer',16,'add_categoryoffer'),(62,'Can change category offer',16,'change_categoryoffer'),(63,'Can delete category offer',16,'delete_categoryoffer'),(64,'Can view category offer',16,'view_categoryoffer'),(65,'Can add coupon',17,'add_coupon'),(66,'Can change coupon',17,'change_coupon'),(67,'Can delete coupon',17,'delete_coupon'),(68,'Can view coupon',17,'view_coupon');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_address`
--

DROP TABLE IF EXISTS `cart_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_address_user_id_e46fbfa1_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `cart_address_user_id_e46fbfa1_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_address`
--

LOCK TABLES `cart_address` WRITE;
/*!40000 ALTER TABLE `cart_address` DISABLE KEYS */;
INSERT INTO `cart_address` VALUES (1,'Haseeb','7034260621','Kuttippuram','Kuttippuram','Kerala',679570,3),(2,'nikhil','8893664592','new address','calicut','Kerala',1231564,10),(3,'Maniyetta, Elankur','8138073221','Maniyetta, Elankur','Manjeri, Malappuram','Kerala',676123,11),(4,'Kolambil, Oliyath, Edayikkal, Vazhenkada','09847798961','Kolambil, Oliyath, Edayikkal, Vazhenkada','Malappuram','Kerala',679357,13),(6,'tiny','7550195294','kattuvilayil house ','Kottayam','Kerala',686008,14),(7,'name','986542682','new address','Kuttippuram','kerala',1234,4);
/*!40000 ALTER TABLE `cart_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cart_product_id_b5f94649_fk_admin_products_products_id` (`product_id`),
  KEY `cart_cart_user_id_9b4220b9_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `cart_cart_product_id_b5f94649_fk_admin_products_products_id` FOREIGN KEY (`product_id`) REFERENCES `admin_products_products` (`id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (14,1,0,24,3),(15,1,0,23,1),(16,3,0,24,8),(17,1,0,23,9),(24,1,0,24,12),(25,1,0,7,11),(27,1,0,8,14),(29,2,0,1,3);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_categoryoffer`
--

DROP TABLE IF EXISTS `cart_categoryoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_categoryoffer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `offer` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_categoryoffer_category_id_d8524ad3_fk_admin_pro` (`category_id`),
  CONSTRAINT `cart_categoryoffer_category_id_d8524ad3_fk_admin_pro` FOREIGN KEY (`category_id`) REFERENCES `admin_products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_categoryoffer`
--

LOCK TABLES `cart_categoryoffer` WRITE;
/*!40000 ALTER TABLE `cart_categoryoffer` DISABLE KEYS */;
INSERT INTO `cart_categoryoffer` VALUES (1,10,'2022-11-24','2022-11-30',1,5);
/*!40000 ALTER TABLE `cart_categoryoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_coupon`
--

DROP TABLE IF EXISTS `cart_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_coupon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `discount_amount` int NOT NULL,
  `start_date` date NOT NULL,
  `min_amount` int NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_coupon`
--

LOCK TABLES `cart_coupon` WRITE;
/*!40000 ALTER TABLE `cart_coupon` DISABLE KEYS */;
INSERT INTO `cart_coupon` VALUES (2,'WELCOME500',500,'2022-11-30',1500,'2022-12-10',1),(3,'WELCOME100',100,'2022-11-30',500,'2022-12-10',1),(4,'BUBU100',100,'2022-11-29',200,'2022-12-01',1);
/*!40000 ALTER TABLE `cart_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_guestcart`
--

DROP TABLE IF EXISTS `cart_guestcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_guestcart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  `user_ref` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_guestcart_product_id_3bbdf18d_fk_admin_products_products_id` (`product_id`),
  CONSTRAINT `cart_guestcart_product_id_3bbdf18d_fk_admin_products_products_id` FOREIGN KEY (`product_id`) REFERENCES `admin_products_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_guestcart`
--

LOCK TABLES `cart_guestcart` WRITE;
/*!40000 ALTER TABLE `cart_guestcart` DISABLE KEYS */;
INSERT INTO `cart_guestcart` VALUES (23,1,23,'uiulun5lofhw6q3ywq2rd70embdl1d1a'),(26,1,3,'u6km70o3qc2xyku6olrooxl7y164ixon'),(29,1,24,'l9ug7xd3snemmm4nta6c6ee4oa2xw3nv');
/*!40000 ALTER TABLE `cart_guestcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_oldcart`
--

DROP TABLE IF EXISTS `cart_oldcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_oldcart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_oldcart_order_id_b2a8d50c_fk_cart_order_id` (`order_id`),
  KEY `cart_oldcart_product_id_a7c9dbe7_fk_admin_products_products_id` (`product_id`),
  KEY `cart_oldcart_user_id_dfff412c_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `cart_oldcart_order_id_b2a8d50c_fk_cart_order_id` FOREIGN KEY (`order_id`) REFERENCES `cart_order` (`id`),
  CONSTRAINT `cart_oldcart_product_id_a7c9dbe7_fk_admin_products_products_id` FOREIGN KEY (`product_id`) REFERENCES `admin_products_products` (`id`),
  CONSTRAINT `cart_oldcart_user_id_dfff412c_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_oldcart`
--

LOCK TABLES `cart_oldcart` WRITE;
/*!40000 ALTER TABLE `cart_oldcart` DISABLE KEYS */;
INSERT INTO `cart_oldcart` VALUES (1,2,0,1,13,3,730),(2,1,0,2,23,3,2499),(3,1,0,3,24,3,549),(4,1,0,4,24,10,549),(5,1,0,5,22,11,569),(6,5,0,6,23,13,12495),(8,1,0,8,23,4,2499);
/*!40000 ALTER TABLE `cart_oldcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_order`
--

DROP TABLE IF EXISTS `cart_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ordered_date` datetime(6) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(100) NOT NULL,
  `address_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_order_address_id_6cc47865_fk_cart_address_id` (`address_id`),
  KEY `cart_order_user_id_279b5d53_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `cart_order_address_id_6cc47865_fk_cart_address_id` FOREIGN KEY (`address_id`) REFERENCES `cart_address` (`id`),
  CONSTRAINT `cart_order_user_id_279b5d53_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_order`
--

LOCK TABLES `cart_order` WRITE;
/*!40000 ALTER TABLE `cart_order` DISABLE KEYS */;
INSERT INTO `cart_order` VALUES (1,'2022-11-25 04:55:40.054275','cancelled',656,'PayPal',1,3),(2,'2022-11-25 14:24:12.592584','Shipped',3048,'Razorpay',1,3),(3,'2022-11-25 14:24:12.610945','Out for delivery',3048,'Razorpay',1,3),(4,'2022-11-28 13:35:39.170871','Confirmed',549,'Razorpay',2,10),(5,'2022-11-29 14:25:09.162476','Confirmed',569,'Cash on delivery',3,11),(6,'2022-11-29 16:00:47.727120','cancelled',12495,'Razorpay',4,13),(8,'2022-12-05 06:21:36.857308','Confirmed',2499,'Razorpay',7,4);
/*!40000 ALTER TABLE `cart_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_productoffer`
--

DROP TABLE IF EXISTS `cart_productoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_productoffer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `offer` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_productoffer_product_id_fcd1847e_fk_admin_pro` (`product_id`),
  CONSTRAINT `cart_productoffer_product_id_fcd1847e_fk_admin_pro` FOREIGN KEY (`product_id`) REFERENCES `admin_products_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_productoffer`
--

LOCK TABLES `cart_productoffer` WRITE;
/*!40000 ALTER TABLE `cart_productoffer` DISABLE KEYS */;
INSERT INTO `cart_productoffer` VALUES (1,10,'2022-11-24','2022-11-30',1,1),(2,10,'2022-11-24','2022-11-30',1,13);
/*!40000 ALTER TABLE `cart_productoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_wishlist`
--

DROP TABLE IF EXISTS `cart_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `is_wishlist` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_wishlist_product_id_f21d5cae_fk_admin_products_products_id` (`product_id`),
  KEY `cart_wishlist_user_id_c35eec54_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `cart_wishlist_product_id_f21d5cae_fk_admin_products_products_id` FOREIGN KEY (`product_id`) REFERENCES `admin_products_products` (`id`),
  CONSTRAINT `cart_wishlist_user_id_c35eec54_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_wishlist`
--

LOCK TABLES `cart_wishlist` WRITE;
/*!40000 ALTER TABLE `cart_wishlist` DISABLE KEYS */;
INSERT INTO `cart_wishlist` VALUES (1,1,1,1),(4,33,10,1),(5,1,3,1),(6,4,3,1);
/*!40000 ALTER TABLE `cart_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-26 04:57:56.612012','3','haseeb',2,'[{\"changed\": {\"fields\": [\"Username\", \"First name\"]}}]',6,1),(2,'2022-11-26 09:49:31.966596','6','nasim',3,'',6,1),(3,'2022-11-26 10:21:10.118320','5','Afeefa',3,'',6,1),(4,'2022-11-27 14:29:09.942896','15','Happilo 100% Natural Premium Californian Almonds 1Kg Value Pack',3,'',14,1),(5,'2022-11-27 14:29:09.950127','14','Dryfruits Hamper',3,'',14,1),(6,'2022-11-27 14:29:09.955434','8','Happilo Premium Cashews Roasted And; Salted -200g',3,'',14,1),(7,'2022-11-27 14:29:09.959770','7','Kashmiri saffron - 1 gram',3,'',14,1),(8,'2022-11-27 14:29:09.963733','3','Farmley Popular California Almonds Generic Pouch',3,'',14,1),(9,'2022-11-27 14:29:09.968609','2','Happilo Premium  Almonds Roasted & Salted',3,'',14,1),(10,'2022-11-27 14:32:21.426623','22','Kashmiri saffron - 1 gram',3,'',14,1),(11,'2022-11-27 14:32:21.432504','21','Dryfruits Hamper',3,'',14,1),(12,'2022-11-27 16:05:01.370640','7','Samrood',3,'',6,1),(13,'2022-11-28 13:32:00.510190','2','nikhil',3,'',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'accounts','customuser'),(1,'admin','logentry'),(7,'admin_products','category'),(8,'admin_products','products'),(3,'auth','group'),(2,'auth','permission'),(10,'cart','address'),(9,'cart','cart'),(16,'cart','categoryoffer'),(17,'cart','coupon'),(14,'cart','guestcart'),(12,'cart','oldcart'),(11,'cart','order'),(15,'cart','productoffer'),(13,'cart','wishlist'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-23 11:53:10.634213'),(2,'contenttypes','0002_remove_content_type_name','2022-11-23 11:53:10.725223'),(3,'auth','0001_initial','2022-11-23 11:53:11.086459'),(4,'auth','0002_alter_permission_name_max_length','2022-11-23 11:53:11.211936'),(5,'auth','0003_alter_user_email_max_length','2022-11-23 11:53:11.228203'),(6,'auth','0004_alter_user_username_opts','2022-11-23 11:53:11.244950'),(7,'auth','0005_alter_user_last_login_null','2022-11-23 11:53:11.258382'),(8,'auth','0006_require_contenttypes_0002','2022-11-23 11:53:11.264360'),(9,'auth','0007_alter_validators_add_error_messages','2022-11-23 11:53:11.276330'),(10,'auth','0008_alter_user_username_max_length','2022-11-23 11:53:11.288103'),(11,'auth','0009_alter_user_last_name_max_length','2022-11-23 11:53:11.299865'),(12,'auth','0010_alter_group_name_max_length','2022-11-23 11:53:11.327460'),(13,'auth','0011_update_proxy_permissions','2022-11-23 11:53:11.337713'),(14,'auth','0012_alter_user_first_name_max_length','2022-11-23 11:53:11.348448'),(15,'accounts','0001_initial','2022-11-23 11:53:11.776226'),(16,'accounts','0002_alter_customuser_phone_number','2022-11-23 11:53:11.852496'),(17,'admin','0001_initial','2022-11-23 11:53:12.048634'),(18,'admin','0002_logentry_remove_auto_add','2022-11-23 11:53:12.061665'),(19,'admin','0003_logentry_add_action_flag_choices','2022-11-23 11:53:12.074527'),(20,'admin_products','0001_initial','2022-11-23 11:53:12.214896'),(21,'admin_products','0002_categories','2022-11-23 11:53:12.255144'),(22,'admin_products','0003_delete_categories','2022-11-23 11:53:12.277183'),(23,'admin_products','0004_alter_products_product_name','2022-11-23 11:53:12.347722'),(24,'admin_products','0005_auto_20221023_1007','2022-11-23 11:53:12.428400'),(25,'admin_products','0006_alter_products_image2','2022-11-23 11:53:12.484283'),(26,'admin_products','0007_remove_products_image2','2022-11-23 11:53:12.517540'),(27,'admin_products','0008_products_image2','2022-11-23 11:53:12.549722'),(28,'admin_products','0009_auto_20221027_1223','2022-11-23 11:53:12.614243'),(29,'admin_products','0010_auto_20221029_1653','2022-11-23 11:53:12.699213'),(30,'admin_products','0011_auto_20221101_1816','2022-11-23 11:53:12.737143'),(31,'admin_products','0012_auto_20221113_1758','2022-11-23 11:53:12.909394'),(32,'admin_products','0013_category_offer','2022-11-23 11:53:12.959606'),(33,'admin_products','0014_alter_category_offer','2022-11-23 11:53:13.027161'),(34,'admin_products','0015_auto_20221114_0544','2022-11-23 11:53:13.189448'),(35,'admin_products','0016_auto_20221114_0546','2022-11-23 11:53:13.351064'),(36,'cart','0001_initial','2022-11-23 11:53:13.545116'),(37,'cart','0002_address','2022-11-23 11:53:13.670905'),(38,'cart','0003_order','2022-11-23 11:53:13.879190'),(39,'cart','0004_oldcart','2022-11-23 11:53:14.140739'),(40,'cart','0005_wishlist','2022-11-23 11:53:14.324667'),(41,'cart','0006_wishlist_is_wishlist','2022-11-23 11:53:14.383587'),(42,'cart','0007_oldcart_total','2022-11-23 11:53:14.442076'),(43,'cart','0008_guestcart','2022-11-23 11:53:14.636183'),(44,'cart','0009_auto_20221109_0359','2022-11-23 11:53:14.719428'),(45,'cart','0010_remove_guestcart_user','2022-11-23 11:53:14.838375'),(46,'cart','0011_categoryoffer_productoffer','2022-11-23 11:53:15.103105'),(47,'cart','0012_coupon','2022-11-23 11:53:15.150396'),(48,'cart','0013_rename_discount_coupon_discount_amount','2022-11-23 11:53:15.177163'),(49,'sessions','0001_initial','2022-11-23 11:53:15.235339');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00touwos3jh1rerml2abc91d2y3fjiqe','e30:1p5IgG:gn3ep6Veynfq3XDwKQNxd_L37Q74DTtRvkq7thgacMc','2022-12-28 03:43:40.426150'),('00vqctz76cjjxf29gynqb6cyl1ittc0g','e30:1p3XKC:9DPlmsHqt_jy5pFEg0Zpg3rcBsoQiKNpIiTRc0qmz1Y','2022-12-23 06:57:36.170193'),('091pttdza8m2e3ghlq0j8jcb0yega5ou','e30:1p0xP9:B7SNvf0VFcrzhVlJs8Ip3NyRZPpsWDYTe5XFG-ccCcg','2022-12-16 04:12:03.739429'),('0ar84wy1n18n1ndhsqbf7m30anhwl005','eyJndWVzdF9rZXkiOiIwYXI4NHd5MW4xOG4xbmRoc3FiZjdtMzBhbmh3bDAwNSJ9:1oxt5C:G34BETCrcFLCkwyQFGnM59TiQ4yB2DnvuTWqj1Brxf4','2022-12-07 16:58:46.717795'),('0m137rx6deukd08n9crqgrxgdbqqr9xj','e30:1ozIOK:vAK2YPz1ME2wGl_NEQMTRc11XAml70hh7l8AoivcuHY','2022-12-11 14:12:20.459818'),('0o7lk06kh3cs6di8dxcq9i7degs33qfw','e30:1p6BoG:m2udjDEBu0_SaDyKeqXu-YPXxS9dsbof_By3zKM1A4M','2022-12-30 14:35:36.226420'),('0ryje5b003v341i1bjl9kz34iz16qhsi','e30:1ozv0W:ypG_8pDU8R_rxYCwixy-psaQmsbGGz9f66IPu8OEHBw','2022-12-13 07:26:20.430281'),('0spgqzqhk9kplw2y3aw5dpgxa40lwuwj','e30:1p5OBi:aKeQYAkEhzf_uXxH5hre0JG0r1GSVu26IuhuNjhijiY','2022-12-28 09:36:30.919340'),('0t7ow5rsh6p8gcx3lkxpd7ad66t53rz0','eyJndWVzdF9rZXkiOiIwdDdvdzVyc2g2cDhnY3gzbGt4cGQ3YWQ2NnQ1M3J6MCJ9:1ozIOP:K1EsNfYXXyGHxJuEV6SnXKWiy7j1J5_raIXqywrxONo','2022-12-11 14:12:25.894011'),('14psgkgwa8vkkneohj3h6hj66mstl6gv','e30:1p5JCB:YOSLFFzL8r0UsNgF_pnfAi193QQuPfBOphtTPtB4sPU','2022-12-28 04:16:39.934565'),('14qylsv9mgal2c3vhiclpo16k00sryln','e30:1p2oG4:UfEF5sDCPUbLq1XAAX868Peabuz2sGtYz9THfA2mK-M','2022-12-21 06:50:20.626803'),('16mycxigsnntba24e1gmwzk6xrkw23eh','e30:1p3tfN:kNCcNilCaMVOHVNc3UuuQEBhiKUl53usViMyfRTSnmE','2022-12-24 06:48:57.061350'),('16q2a864j9ylrrpuf9j8cgh8qk0ftyak','e30:1ozrc0:Jbl1DRzO2gJHjKpLL_IY4zluK7OP4di-Z3XR7FVqRfA','2022-12-13 03:48:48.555522'),('171xn00081u7rnru8b13zofqgxj74xdz','e30:1p52BB:Jr0W8i1zJmP56Tvm7mBdsO2pgJJ88n3b3Nw5gYlI7CM','2022-12-27 10:06:29.959472'),('1blccgt92cup299syli1gf6izepf5jqj','e30:1ozIU6:70eGpDXs5l0ULF66EVw8cJ7oHFhyQAvt54C-DQpCC_0','2022-12-11 14:18:18.746663'),('1h8ch9026qejfyziicukgoa2ukha0n39','e30:1p4DKP:PBzTvxe_v3zNnqycaQgk7kAIbUxG-PIQ4rMYsnv0dzU','2022-12-25 03:48:37.271057'),('1jhase92trok4gkyrghocrlcgfxqq8w8','e30:1p3rZa:6IRgGIAI3vnx7DkekA3nnB18j4c8KXFO6PdPnHQPzAE','2022-12-24 04:34:50.943178'),('1jrw6rqv4psfvb27wnmvbc2a97qut3l4','e30:1p4WEi:wTfNQP9zwWEIqIdcbWK93q6qZkLB1WCcxg0-7sbOlwY','2022-12-26 00:00:00.378606'),('1mdk3ryyjkalwn498q5cffh2c9espxc3','e30:1p3vAJ:-nzZNM3IecVsMHjIM35UzQbjbeg_9UxCdZcGotfrORc','2022-12-24 08:24:59.206445'),('1sxk2sqv2ht7fvctk4v1iumuwnx0qgsk','e30:1p6Moc:94cMCQAqiVOZ-gc9Xd5_nwAZf_Vvb0RXt4bHW20Fk28','2022-12-31 02:20:42.513141'),('1vlnefqviueufyoot56t19xhcsrdjyaf','.eJxVjDsOwjAQRO_iGlne-E9JnzNY67WNA8iR4qRC3J1ESgHdaN6bebOA21rD1vMSpsSuDBS7_JYR6ZnbQdID233mNLd1mSI_FH7Szsc55dftdP8OKva6r6UUXhpLSmtrsi3OWCUBktvD4CM51EBKZLQweHAgsBhyBpAwRyjEPl_LEDdN:1p1iO3:cwMOQOP2ciPVHwk-J_YFXT99rsayWh21OGWOiVqFkKw','2022-12-18 06:22:03.738299'),('25251xndmqdjugvhv864m33g9hcozlle','.eJxVjMsOwiAQRf-FtSGM4TG4dO83kAEGqRpISrtq_Hdt0oVu7znnbiLQutSwDp7DlMVFAIjT7xgpPbntJD-o3btMvS3zFOWuyIMOeeuZX9fD_TuoNOq3ZluS0t46RscAyrIyWkGEotmhguwxAvqUfWTPxpwVQiQkNCUV0ka8P_SAN-M:1p01NT:iMfM6Ghcfp7lcXDBS_N485LPbk18J-Gh02qQJAZnYRw','2022-12-13 14:14:27.977055'),('2i7xkcuxcjew7i51r5p29oq9l93fon7h','e30:1p17BA:mS0qpVUyKko-ROpc4FW2RmGgSzpZikIEk73i-CD9YFQ','2022-12-16 14:38:16.054128'),('2i9xf2hzg6akgbdm833mp822qp2r8wpg','e30:1p2J41:rKtiSzNT81wkAyhLN5Ufr2yuEFMkE1-Jx0_YAbXjXhw','2022-12-19 21:31:49.145511'),('2ibvxlpadossxf17hju1en8fprcrf2pk','e30:1p0fmx:320LDHpWizBpkcZS7SE0eWPACm9yWA7vLmdpxjS9Tpo','2022-12-15 09:23:27.962401'),('2itqgsfp1hmlxn9yoe9fo6qb3e8rxgcn','e30:1ozoED:W52k6qJNSWvqFN5e8LXuXILxtJkF1ZTBx7l4hN9QZbs','2022-12-13 00:12:01.287599'),('2w8msvnmp1znm7esbwy0hgkl84clpus5','e30:1p1cvB:2tp2KwjMdweXrYIMdfVwWwCCGOZsCJOvsU6r-B-2CIc','2022-12-18 00:31:53.443296'),('31hnqj1q2qg1tv3of0sqkl9uqo3n0bxy','e30:1p0RgO:MqtvFS210zbSS2ZaagujJ87z12guzJYccEr2liUPQ14','2022-12-14 18:19:44.038000'),('33rapxk4zkysaayjgcttdsyvqqb3fczi','e30:1ozs6S:T8AnXnamzBpYcTP36btg00e4S0lSx8pPuNRBDD3uvd8','2022-12-13 04:20:16.969286'),('35smdss3u6dr86m6yuemd738pa5kr7di','e30:1p5kUt:Zkr8ZyUh41k9PrC9mCy4yfXzEDS4PlHtd0I2P1w302Q','2022-12-29 09:25:47.150071'),('370zrrglwm1uy18cc1jkgncnmazcglgi','e30:1p5ffu:fOh39bbnwod93T9Z9KaruLhySFfjCeOTtnqrVQfDBaY','2022-12-29 04:16:50.709977'),('38his7g1bsv931ishgb2mn7oavibx80l','e30:1p0SjR:cwcVoNMz4oNqjVHJYg2fNNOa1L2xYhPlgBimC03NJUI','2022-12-14 19:26:57.407318'),('39f2hnq7a7k8zb1c4yg3hfscmcv2or4t','e30:1p4xfh:ilK6XWxVq6mvnhXZ6yWqYs0sXWF11JWeEJv4PX8v1us','2022-12-27 05:17:41.440790'),('3dn9lyv8qqj212ry52j0xcj8i3kw84jy','e30:1ozkhv:xgzC_UJnmmwKkwFbdhy83Vft7jNXFhkCt6yTcpJVCzA','2022-12-12 20:26:27.384838'),('3huvwo64cp8ev4x2ancyvzjeagoz6ybl','e30:1p6O7W:AepfRQeA6eQTpwkZKkO7v9ZcOhDZvAJHYkeh4JxkHx0','2022-12-31 03:44:18.986390'),('3ki41yt8jq8evd21qk2e97gjtdlp1dxt','e30:1p1M92:7J9vkWRjk1U5DHY8INr0pOXx6sC2Xccf_EATpo4wZnw','2022-12-17 06:37:04.146251'),('3tiow32tepffj2t865uv65ux9rrf5ezx','e30:1p3teO:ez7QIkAGc-1V_5uLglV41Q-O30CaG2qgoyc7jNsDhk0','2022-12-24 06:47:56.022152'),('3viev79o8s7bn9y0a3k2vrd5j5p9dytv','.eJxVjMsOwiAQRf-FtSEwvIpL934DGWCQqoGktCvjv2uTLnR7zzn3xQJuaw3boCXMmZ2ZZaffLWJ6UNtBvmO7dZ56W5c58l3hBx382jM9L4f7d1Bx1G9NBsH4osD5CXyenHYFRLJCgbTaphyTSkAmlxJdQYpSiyJslECASI69P9fDODA:1oyrnN:aqoaJmTkwWOyRYsMQ5pViS6lguqLKiK5O2o7fZMud7k','2022-12-10 09:48:25.969143'),('3xqpvqn4go97itfxbwxmea0wklim76fh','e30:1p5xUC:BoE8cFrA_EYbFGDFoyTMnHEViobGrAVOveswkvsnFaI','2022-12-29 23:17:56.762545'),('40psnlpfnhqfy9tk333p1d7ydyppq48y','e30:1ozcir:pKqLxOQnQtxYoSvLpEYJo8YPsnEC8qDgPWmXD4MHVc0','2022-12-12 11:54:53.617755'),('40upwb390bawe0eg4ar92xl5ei9k3btz','.eJxVjDsOwyAQBe9CHSHAfFOm9xnQLqyDkwgkY1dR7h5bcpG0b2bem0XY1hK3TkucM7syyS6_G0J6Uj1AfkC9N55aXZcZ-aHwk3Y-tkyv2-n-HRToZa8hhcEoOciAxsqgYZIOktNO0BSsN84rn8BaDM4oDILIZoEy027RgJp9vsYSN68:1oynH7:Xq9tJmbaF79AMLvvaCaIrb0i5_Icy4id8VU665x4BD8','2022-12-10 04:58:49.148762'),('426nn2t9bmmax54nbcy8qlmqj8b8k3qp','e30:1p5TXr:MYvAUCnh6cqD7vXgvHaAmbAxBEriDK2F0KsbYWjIZPA','2022-12-28 15:19:43.729165'),('47hk3wo82nz15gc640msxhyxvp7q195t','e30:1p3OAn:DUtaIq9vqPblPXwUDolcj5Dr2FqR23WeZ-t5JIaozpg','2022-12-22 21:11:17.648993'),('4a890ywcw7ovvggxi9xt1pvb1a47l66r','e30:1p6A19:-MkxWMYh44nit1A_5TCvRQwJCz5CsbLUYaq5AC9QlJ8','2022-12-30 12:40:47.911494'),('4aloruxydkzz4iehskcpxqo01ve4v8qj','e30:1p25GX:rW3RWjaW9ijOuBMZDpO_hj4vALNrKBdvQ17Rt98JR0o','2022-12-19 06:47:49.067795'),('4c140uqsfriyxju2ntq7ohpiy1n8beuh','e30:1p3h5g:0jI7uiKwqnQwaQ54fIuFG0jxidDS2RM5RJ1S45hcAnw','2022-12-23 17:23:16.510133'),('4m1mff9nmwnr5dkb5fb2yhhl65djwzob','e30:1p1n8a:3Z8qiiXDIu50Be6DSUFK3uQMSUrevH5_ZYhJrpdptL8','2022-12-18 11:26:24.920935'),('4xcnqduhya4tgd1h8lmdmyrzq9ford4v','e30:1p5iBK:u3RU9kA8tJUyCveF8Txji-LfWHAKCDeoGZy5Un0Ahqk','2022-12-29 06:57:26.051956'),('4xiiw1huw1ko6c726lnncgt531n7g5l5','e30:1p0maJ:tV7sCRh0u1vTigJ6KIyzjdd0y1vNb-Yi2RngACS3Aak','2022-12-15 16:38:51.867267'),('4zisqwgh13o8g9y8uqve4a15wq0l6pdg','e30:1p25GX:rW3RWjaW9ijOuBMZDpO_hj4vALNrKBdvQ17Rt98JR0o','2022-12-19 06:47:49.239552'),('50r0dviynncwos1l47n5uc2qemogavr2','e30:1p3XKB:tbzJfvW28uoPKUttGPQeUAPK170Iws1QZGpZmh-Igyc','2022-12-23 06:57:35.997915'),('53xkzz9a7qjac4xt76yad5k0cs2a3212','e30:1p4ghU:DGwtP1GhDHYg2D6T4TDaq_puTZA-8uODUSdngINMTAI','2022-12-26 11:10:24.988823'),('5bf9epckqrr10xvlqoms0z5jymo3hbgh','e30:1p01vQ:UhgR2beQX6C0PQsgCLzRbY8hQI_J5EuZzuqiN9DoCCo','2022-12-13 14:49:32.682568'),('5bvtjknv9l1poxkpxbqfl9e4k8a5zqse','e30:1p00Rx:JbpNL2evSTs3C0wyZzblxRIVCf6xYcWU3KalBCbu4fA','2022-12-13 13:15:01.428004'),('5ollo6kvscaakkc268actxzef89zh1vx','e30:1p2pxP:uvMenMDWMgzhZQ8jmLY-HVwI0qZtOiF1kMvDZim9wSo','2022-12-21 08:39:11.809890'),('5p3bqyk3rm92zbp9ug7hg84dc5evs5ga','e30:1p69nT:Gm7Bkp0ytrHXCT_z-85D8JVRtod2MtrHIJ9omMSw8JU','2022-12-30 12:26:39.433171'),('5qz5soyvmvilo8s2z2wv0m7qondfc787','e30:1p3rlC:OFnXP-gvIwtJCKd7eATs-xW-VeRnrTicMiad1qFIomw','2022-12-24 04:46:50.802367'),('5sdgyh2xfesibyqnqcjoodswx21aprq4','e30:1p3spI:Uz5UZOQmwDRKesrRhLmGQovEBzgW8hyY0RCccRW12bs','2022-12-24 05:55:08.831387'),('62z1qtpvoft66cmp52a6jk0qo89zm6vk','e30:1p2Vec:zGfju8JaoKS2uVKVGLIMAmJEU04ahofjecJaU3dwOOc','2022-12-20 10:58:26.756772'),('63vqr16dn400hego5ab05eiv0ltxbfq4','e30:1p1Ts9:30CHLw-4xBgBN4Q5B0bdhLSdH6LZ64g5WlfKcJKWsnc','2022-12-17 14:52:09.241026'),('68jd0axfu0jrk9yaxty6epmjq02tpiqp','.eJxVjDkOgzAUBe_iOrLwgu2fMn3OgLx8MAHhBEMWRbl7jERD-2bmfUm3Yl6aAT_kTAC4h-H99EavS8wmxttrHMU9Sf1QxiRyIo0tpFkzzk0fSsKOm7N-wGkD4WanLlGfpmXuHd0UutNMryngeNndw0G0OZbaehA1Z4KBqxUDaVumrddSV9iCMrU23HirlANdcwcVogqVYwGLhcJJ8vsDy9FHYA:1ozWYq:W154YreW4RToSP2fp7IAgD643XB65ib-lm6-mAqaD7M','2022-12-12 05:20:08.946455'),('6d73uyo0ho8fpu95p0ytks2xykns303u','e30:1p4CfE:3WC0shaqTzGil-Fr4fiD-yASFo_m-tUlhO0lnk6ViKU','2022-12-25 03:06:04.297416'),('6fb24vag83jow11jlio7w5y84rks26ns','e30:1ozs6A:OI0LcmDUrVbSHItFFaYDbcHxvKnoEa76tdX0ltzLRaE','2022-12-13 04:19:58.415705'),('6m4jkztsfn08blyav3ojcqtk52d46w6s','e30:1p1RBp:TF7aTeTuVHuBQ_XX-ZROSXYofplTM_HNpqmkdKYAgdc','2022-12-17 12:00:17.504680'),('6nsfwpyj414gj032v7tirndxp077kn1q','e30:1p4R5A:W-wN99wN80EUc28PtUXnlgXsojHkH7UmpO4XOqdMvEQ','2022-12-25 18:29:48.194229'),('6v5vkun2cfgsbq1akobxh327qg3wr3qs','e30:1ozIOL:6d425N8Gj5lJSN0bMFRSYLIFY6hozAlqTM_NuYgr5Ps','2022-12-11 14:12:21.530525'),('71sdmb52sdjnsdty22tqim65hapoq390','e30:1p3txw:BU1fQvmPEM0weUwkTuoKzEVb3ibfiotd2yXF7lN6RJg','2022-12-24 07:08:08.825374'),('77vurndqc5g98q9jqmlywcvqpgk2vrb1','e30:1p1sPu:Y990LYO8aPEgScDEVXVFMq02Oxrn6LTR1974UG6Mr6g','2022-12-18 17:04:38.543917'),('7dobcae8sfhx4k7ju2qa3al7aev38ebo','e30:1p64TR:HABvrggpSYRfASk9wfX38nSirsFKg03HfwIimNEvx-U','2022-12-30 06:45:37.230913'),('7hlo43r7sae313cu7ue16nvfy7ighxdf','e30:1p1rAk:67GBI-62l_K0B2zoeMrtRFtbOq_NukNNMbPQcoHA3c4','2022-12-18 15:44:54.600677'),('7joo900ftej15nl0dg6s82psh12oadmn','e30:1p2s1P:SmPCE18sDDV6oB-17S9LVaSn2GF0fANdSkQ9jQAVmrE','2022-12-21 10:51:27.110384'),('7jvy1mgu5k8vwguxwcd9z2axtzwsrrek','e30:1p5l2s:65jYJVCztgqcDBr5_1bJm1-6HSSOm-pFLWFe4tCVnR8','2022-12-29 10:00:54.524163'),('7ngczqzf9wadu5qfkgx69xbrkci0qmj2','e30:1p37bY:hldtHgRClLq14R40AnwaU1Tfl4vcFHEkfT9jaszsA14','2022-12-22 03:29:48.094612'),('7rslfic6ch153ul428z8mwed582vgjwu','e30:1p3VcB:UHxsWaN5XytLpMNNBGUyiQ88ugeD06SD1TKDBlbDsQw','2022-12-23 05:08:03.556853'),('7w2fjj6h3xwtlxa9rrd7bqfd5j34cwo6','e30:1p1BF1:8wWBkYvJI6xPtCRXe1LlRd_YahxQKzRmBSsKiBNKgqg','2022-12-16 18:58:31.649132'),('7yese560hddvj1eyz3cref120y7jwt7a','e30:1p44Fz:c4V5pFTbXKU5N1BtITBL3NWEgwpix3ooLacaNhWumqk','2022-12-24 18:07:27.165225'),('7z1f2stgsl5k2xql6mognzzkrlddggtd','e30:1p1euM:7LmfsW5KKn6CSWo8RR9myts_ICJ8ft_DZkfOSs4C8NQ','2022-12-18 02:39:10.143116'),('81qh37z2c664pbvof1flb3qmob20tamu','e30:1oz9Ju:CSdbXu-mc_s9nE3qe0pGvGwZHMRXK3opLEe5lJNsCSk','2022-12-11 04:31:10.697864'),('8b0ai79cv6xr4p9mqinv1iyoer43mz8c','e30:1p1CFz:rkMMwGYRNF0nuavIrlutWpzPe3UXPbh7kXIAABNfpvc','2022-12-16 20:03:35.627446'),('8f1qgsgcw46f7xrzu05cyhvtphxdt1fm','e30:1p6dIE:nsLor1tnqWWbI-nnIayIWVoVptrak6wqU-LWyuOqDA4','2022-12-31 19:56:22.313992'),('8gnx9m83hmjx2ux0apg5vvhjxbwvgtfm','e30:1p0jth:ahnurBSKyM6U7YMCcCb3SFdXzuO1czrOjd5zDvC1Uuk','2022-12-15 13:46:41.433475'),('8kbq2jas5u85fnmu7pb4wd9uub4n1lul','e30:1p4iUf:Fdn-WuB1bGE6ZqCmUC7RIvSI6SUHiVnMmmaHjPCVEzI','2022-12-26 13:05:17.933142'),('8me1lcdm9g39k78evyym77d9btl228vb','e30:1p02qy:HxOj71ZxsZu1yX5y3KJeJcP1nk0jyRjmkhWZ9P6TGrs','2022-12-13 15:49:00.328226'),('8n9d2et2de0kp14vw09g5edn80einta2','e30:1p1zdY:AkZIChfuRG_nUh-ERqRg86UxVM79HsA7RMYDnO_KzuY','2022-12-19 00:47:12.102753'),('8r1d5y7o4ixkjouxtxwevh5u00nn4for','eyJndWVzdF9rZXkiOiI4cjFkNXk3bzRpeGtqb3V4dHh3ZXZoNXUwMG5uNGZvciJ9:1ozXuM:lQiEy8dbbDqcArxKn6kFiqkF04bI5UHdRuMDy4FtDJA','2022-12-12 06:46:26.169415'),('8ygscouzk7j1vq7au5y1hi90hfqoejms','e30:1p2iDF:iWYIGzGTfOHeucCmPN8lIvnJ3-lWBVFyqlIE2nrr3KY','2022-12-21 00:23:01.110223'),('8zqy0j4otel7rcadx9wrw3o8eazxkuhu','e30:1ozXs8:nrUYhzYq39uMzjRrCAjoBntMnpA1ppkHE3hM403yXuA','2022-12-12 06:44:08.145805'),('9097e8pya77xjm7oqm3e9oub3y2xo0o5','e30:1p6D9R:IROTFVnPx-ppqxwVYC4AAJiMwotSNL0aieOaHF4CqMk','2022-12-30 16:01:33.356543'),('988yc19015jdby1cxdmg1y8sex38dg2q','e30:1ozypi:gNIZC80oF8TdP3BCicHo-_nhHyFj2mtJ0UBOipc9X9s','2022-12-13 11:31:26.189555'),('98ngw0ond1odjrj2edwj6pakwax5va8a','e30:1ozXHz:ByLpt0JvJmiIW8gkjp_Eai2cV82tQLzkONX82wSA7l4','2022-12-12 06:06:47.322702'),('99wzifag246zmdfa5h9anef8yjfapfng','e30:1p4jB7:9s2kGWGyTP_3Kbo7l4Pn4QcjNBZeGUWs1udI8kD8rLc','2022-12-26 13:49:09.716758'),('9borpcowl0mlhzkg5ucx3mb2m4xavm54','e30:1p5fz3:u9vAVfB0WEUpsPeskcHeMs7ma9oNpyiuzkyMIBpW-aI','2022-12-29 04:36:37.107897'),('9jaoh6o1du63vpzu3d3q5bcikzkog3sp','e30:1p3C1M:O0Ar_0GyeKRbIkXIXm0MPmhQxMM6qjikDmbVybR2bMs','2022-12-22 08:12:44.040461'),('9rjq88frvy3x47mthy2fwwj8mrmfnsrc','e30:1ozIOJ:CE2Io1Ytni62h0gfpvyquasonrM_rWzP6K_toLdvUXc','2022-12-11 14:12:19.555894'),('9u1bxm7m1x402xvchy0gwt65e0vlzass','e30:1p0o3T:iutk3o6TiAtHR3k8q0CSz2YaxscEcNZvSL2p69GUvTY','2022-12-15 18:13:03.861684'),('9xbiqrtytzs7rk2338cvt9q004e094xt','e30:1p52CZ:BgKRGUJbtPCgsy0Ne4naf0HLO3qx5iVRQq4AJ2LAp5k','2022-12-27 10:07:55.079890'),('a5rlks599szmjjoejjqhzuwasowmom7t','e30:1p38Iq:yiAMlM5prc8mhVWm1c0wjmkTnhk7Ptp2JMStOGXeHIs','2022-12-22 04:14:32.402308'),('agnluqy2zlsn6tze4bh3f9k5zyrgdg69','e30:1p1HqY:xSpRA0WIhtEEvLbnZbqbNCB6y5oaZy--u4hkQUenO5w','2022-12-17 02:01:42.881481'),('alyiynqpg1yoz8flg6vcfyjr23ttrhhf','.eJxVjMsOwiAUBf-FtSGURwGX7v0Gch8gVUOT0q6M_65NutDtmZnzEgm2taat5yVNLM4iitPvhkCP3HbAd2i3WdLc1mVCuSvyoF1eZ87Py-H-HVTo9VuriNpacMUQgB_1UBQiqWIGNlACZRqL0V6HgMzOOW2JAodIHn10COL9AfvWOJY:1ozXzV:izmpj1XAdvTTkC2dB3J1VbBAXDohKvAFbTklSQmcFFU','2022-12-12 06:51:45.042913'),('avwd7bx008u79t65183gqi6dzfxsbmq1','e30:1p16xJ:vlZ2A5DCbWrS65IkYXxgcDMDmkG0XcHbV3elTn-cbDg','2022-12-16 14:23:57.249715'),('avxz7tow4wb2q33aw5tgedgagqg7j2q3','e30:1p5pqc:77tDf99mWFrfMd6JyYXLBgC1p8K0bN4CBognJePfK0E','2022-12-29 15:08:34.395377'),('aw1kc448qe4vbmd97b5969w82u5itkv0','e30:1ozIOJ:CE2Io1Ytni62h0gfpvyquasonrM_rWzP6K_toLdvUXc','2022-12-11 14:12:19.997628'),('b5zk177nnatr79vu51qpgyyjxuxas12q','e30:1p6EKr:HAZwpUwWVoHU0dbl05oeZhgN8UhDMdmGh8mKW3s8LpQ','2022-12-30 17:17:25.580884'),('bcuyb9hxf027tshbxxv4ss0ozkltenmp','eyJndWVzdF9rZXkiOiJiY3V5YjloeGYwMjd0c2hieHh2NHNzMG96a2x0ZW5tcCJ9:1ozIY1:X6bGbr7qyxx7pTOyBPw5-9GeIn0CTJXm-044VHcyHus','2022-12-11 14:22:21.823611'),('bk3ea5vlpe79nsfqx7w13dvf96ctxnty','e30:1p1at3:K6i-2KgpWhOdpJo1j5krJvhogaGVZEBC1HKUZZddmg8','2022-12-17 22:21:33.982936'),('bo2feedyjv7aw10wrge7m2tlay5hx19y','e30:1ozIOK:vAK2YPz1ME2wGl_NEQMTRc11XAml70hh7l8AoivcuHY','2022-12-11 14:12:20.659503'),('bt30tzik482hur44bju7zl48dhqpqwlb','e30:1p60rp:zQSjHdhKlm0DhRvrLVrcRD0vmpTeQXCf0_qSNNfUhUA','2022-12-30 02:54:33.424399'),('by76rlm22e4dtl5fcwokcrhhocvm5uxc','eyJndWVzdF9rZXkiOiJieTc2cmxtMjJlNGR0bDVmY3dva2NyaGhvY3ZtNXV4YyJ9:1p030N:dDHOBIrphtmcA0MAULVFWcNNeBWNjLW0T2nGAyAzBfk','2022-12-13 15:58:43.721529'),('bym4b7gmcoe3727a1nrg8pv3uzel8ypk','e30:1ozIh1:c3_U2Q2bjHCYJ34cP7gqg-KGAqNyK-13rVLar8TEqqQ','2022-12-11 14:31:39.715860'),('c55xr49ri1t69ho84pt81wv3qd27364h','e30:1p0dS0:xm--4Og7PYab6lHTK1cpt0sN7pa6OeXxb8qMV5NK0EM','2022-12-15 06:53:40.497503'),('c5tle4ttsnthynxr0ti2p4s3e5zivlgg','e30:1p3mxY:BXqrf73CSp6VkgZ3DSlX8C-Nzgov2nDicLxSVNxhfcc','2022-12-23 23:39:16.636731'),('c7xdga7vgkqrzjkg4p8mmvooossu8bir','.eJxVjDsOwjAQBe_iGlkbE_8o6XMGa9dr4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEmcVFOHH63QjjI9Ud8B3rrcnY6rrMJHdFHrTLqXF6Xg_376BgL9_a8JkzOa8pMpHyJpJ3oCyP3kKCzNkatojgwAwAfsheKR2tjtro0aB4fwD7Mze1:1ozKBD:Vd8zHjquktrVxHjh6qa67BKJarEB-MvUrQslmOE4c38','2022-12-11 16:06:55.322346'),('c9melvwt9hra6r9xu08v3dbp6igqmznh','e30:1p2JuB:qfvWObNE9BWN0u-XFGYthu1ByEHcxK8VAyv906NQX18','2022-12-19 22:25:43.133180'),('cat1odzjvh17crsyr2wd24xo0anuc2jt','e30:1p5yct:CYUADfdXIbnGkodtHtGSfBMtp1XiW20a5mETqYIeVh4','2022-12-30 00:30:59.677570'),('cboqbnsys8peviugof21cb2m205hpfg0','e30:1p0BDL:vxl3cd4mAvTZ6tzckb2ubP2ExU3w1oQebrxOceXH0nI','2022-12-14 00:44:39.168530'),('cdo020703qvvylvp85vrvr640frfrsth','e30:1p3tfM:3cvkGnh-hxUbnRwkzte-J-BXxzGWZjyL51uFsyqNBRI','2022-12-24 06:48:56.265595'),('cgtrtiztppah1ms46h8lsox3p9t34qby','e30:1p1M92:7J9vkWRjk1U5DHY8INr0pOXx6sC2Xccf_EATpo4wZnw','2022-12-17 06:37:04.386306'),('cpp486vo7w7fszaq4p346afjog0f4won','e30:1p6PcB:rPeUQbg5jlVFMi1eAOLuL745gymqGTpNhascBNDcQPo','2022-12-31 05:20:03.345136'),('cv6w5o64eht5gxh6mkas7da38xdem80t','e30:1p2q3q:yvetl9TfbEuMOIal-41-Ie5Aj5URsuxaDs7Lo-nb-cE','2022-12-21 08:45:50.332580'),('cwxv6em9ijiykidecezcatbopgym3xs8','e30:1p42zg:15lq7bBLT35_Lv_QdRzIE-VE2pGZhqP97M67U8Lx-J0','2022-12-24 16:46:32.324683'),('d1stnk27d54wn0i5ty20jgcyduy4zasj','e30:1p034i:ZleOMBbYFcVHlUhuTi1WH5ymDGvUbQCLZRf1i1G6vGM','2022-12-13 16:03:12.950193'),('d2cym9vahs5kkkde7alsnio6bq9yzr6t','e30:1p6mgd:faVqA2kGEHKuLjQAdwHOCB1ABEGGuC4mc03CTBnvgKo','2023-01-01 05:58:11.037363'),('d75mk6o69x2vt0qmdhap4fjktdaoaxar','e30:1p1ATo:pGhxqyndTM5t1cPqasxjHBtIVWwreqqG7eF0xb21_B0','2022-12-16 18:09:44.243037'),('db8gbefoj3uhn0nntu81piclosiinlxo','e30:1p10bE:vJUUNYl5-QJFg64Ovh4PAPD1RYapoh0xH-3EfX_C1kI','2022-12-16 07:36:44.696955'),('dexp05n5gdj7exf6lopvs2o03pzf3x5d','e30:1p2oG4:UfEF5sDCPUbLq1XAAX868Peabuz2sGtYz9THfA2mK-M','2022-12-21 06:50:20.571565'),('dg7l7ud8oloph84b16paqetajskmdjdh','e30:1p59zr:pGU7frGl3EgK-2YfdLCsDRE7IXjvHNm0l5L_ItaFbcs','2022-12-27 18:27:19.838426'),('dgfxz2xb4blxhsd9wa70dm5iqd2lo8le','e30:1p24Vy:wMNHdkidRG_FRdR8NRovkEw3pH_r2lVsdHeKXsixB9k','2022-12-19 05:59:42.199356'),('dylpvzag9e42hsb4w2028dnq649ofsrt','e30:1p25GX:rW3RWjaW9ijOuBMZDpO_hj4vALNrKBdvQ17Rt98JR0o','2022-12-19 06:47:49.429700'),('ec9r2i22cyziytpbsnrbeufok42fa198','e30:1p5ffz:sCMS6C8oUc1ig_x6U-tJFWybPeZ82idlhMPIiyZMp2U','2022-12-29 04:16:55.782750'),('eovw5c9cjkk7a0sqicb1eynke4vpqm0q','e30:1p3fW9:aw-2WLERLTDTDqMM3ujN94hat-wEru83uCILpbO9KgA','2022-12-23 15:42:29.084369'),('er4yw0rf68kqdewzajlbz19qfnolhx5c','e30:1p4Qnb:f3_mgMDCez1IeIjGRU0uzTBx3Pf7jDr3aBG8hjej_yM','2022-12-25 18:11:39.299887'),('eytgj4jwfj5onlyyarunm96thov728td','e30:1p6mYL:lUXvfzuHT-v3VQaYjwprSjeRoIjsE2i6sgyQaW-SRDU','2023-01-01 05:49:37.974874'),('ezzinr95a5et33ak5j4mco5toq46e6j8','e30:1p0j3f:6qZ2W7P0B6SEefKUBMDqfj7pSShWPVCWFQqC_rqlXYo','2022-12-15 12:52:55.650582'),('f1bz6psyxgxlkudqkfy2zwwixvcr0wox','e30:1p37h9:REcurrH8ZzEguUhgkrxn8BlbDVZXl3PmBDN4tAbbwp0','2022-12-22 03:35:35.793567'),('f1qfqkmi6do2fv49w1zqc8dhodxa2w6a','e30:1p1M92:7J9vkWRjk1U5DHY8INr0pOXx6sC2Xccf_EATpo4wZnw','2022-12-17 06:37:04.360527'),('f3dgwe63zl0ftkg5o61hc9p4ti9pmmbe','e30:1p3rl5:OgGqxT-UfMT7CFLaeQgV0xM_WlWOk1UtJrXtAxLQTWI','2022-12-24 04:46:43.879845'),('f66328wgdr3stxupi0h9pfratw6qfkxp','e30:1p5O2J:g53ZB4b_F6fbsbfLwZvNVgwsIPNoP7ncUF_cD8kk81w','2022-12-28 09:26:47.578515'),('f7fytsmwllgmcdrahaqmnhkutuf9yb26','e30:1p2ffZ:4hj2dYe7IkwdDv6Rjq5NUTHif4zDa3WGsGtO0JUeV6U','2022-12-20 21:40:05.896230'),('f7rw0dg1ziou206zrkntrv34ft1njpwt','e30:1p1wIm:Z-NYTzozuxBj-uobpyOmLsC3rV9oBRs1026gLg02HKY','2022-12-18 21:13:32.443137'),('fabrnu8fpezs3zjw5brpdeujtnwj81yn','e30:1p5ffy:kvmPuPP0_8sRkSA2rjeE1vxNzeKQQf8JOv_IwcAKoZk','2022-12-29 04:16:54.024057'),('fav0l9ne6ku6kdey03zf5el147a460w5','e30:1p4THR:xx-3TN2rVtw2QR0yyU9hro1inS5Uhe7zm-KFSUIdiT0','2022-12-25 20:50:37.046299'),('ffiatvwz96638js7ursb0n5wct3xp80x','e30:1p4UvW:wLSs3i-Io8qd4-L5L7YJ_li6CdG8rvcj4egKa7CjEj4','2022-12-25 22:36:06.332275'),('fga4npfdyzhfepbauzdhh680c03ji1kk','e30:1p4cc1:kXx0wW8aQa_L2wo2CgoVavVu5iSR8VnIapJueK2ohEE','2022-12-26 06:48:29.799588'),('fgvufoo8l0yyj527il5swd0eudbne2c8','e30:1p5rbY:lHPbv_1B3ehUiOpwM8u1Mw5lPHh0AOPXky-BAUECAKQ','2022-12-29 17:01:08.500405'),('fk8x0ktn4bwokcszzwspysj1el2wg7mb','e30:1p0WKc:xmikuEdYPfGBi0TNtz3_CqylusBujQDsmf5Uk-vZerQ','2022-12-14 23:17:34.334600'),('fment8957c825clb622vilhzjrnxdz25','e30:1p0XQe:PWD_8SDdwfF7ar-g6_6T2QmQ9DPf2gFze7kJN9rwUM4','2022-12-15 00:27:52.341816'),('fpdjj13ipp800vz3478sryvs6pzlwbub','e30:1ozs6W:ecpC8DIemR2Xj0mhn9TFtaxp-b41jE2yPtZqJWBL2ko','2022-12-13 04:20:20.421459'),('fr7uvnzul095d6hbw4mnhmx9tc8tg87b','e30:1p4cc1:kXx0wW8aQa_L2wo2CgoVavVu5iSR8VnIapJueK2ohEE','2022-12-26 06:48:29.728091'),('frgizwi1h5xtogdayot0jthpi09nk8zn','e30:1p5NSr:kPjq2fPR75cCBYDNzsxKWkPJLFcwg5YjsYdEkrVGIiY','2022-12-28 08:50:09.360132'),('fwcmoardcf71105w201cp2msd23wm52m','e30:1p6R6P:I0CiyaQiwzbZTmRVnrJJItkUZ301TFwogF8AGcVk0XU','2022-12-31 06:55:21.213190'),('g0ih416ochjsmxmy1cdtb6jokalomwi2','eyJndWVzdF9rZXkiOiJnMGloNDE2b2NoanNteG15MWNkdGI2am9rYWxvbXdpMiJ9:1ozIa6:wwxgOBDHOIPlNObzpXkHcoKWb2F1j4cRmjGE6z4rf7Y','2022-12-11 14:24:30.561942'),('gcbnapnx5cvv59iiisxr611g7uv4o5l9','e30:1p2Xxk:iILENL0zWHmDGT20xw2iodz9me6h_DzwqkiKKeeJI7A','2022-12-20 13:26:20.107013'),('gexdl1pnzci3gyxtlyarsli1lkqhr9iv','e30:1p6S44:MofbwqpETAmVRvieMuj9nxPqwTFjHDXGhODFc_KeCRc','2022-12-31 07:57:00.517199'),('gfa8poqkm7sausmds0zeif9jn7v9f3o8','e30:1p6nnj:-GrRfnI_FOFYROYMmQwWLj8oUJ9Uc_gn-ySEqPViq50','2023-01-01 07:09:35.989062'),('gfcnxuez4tipfbt23y5a34owwz35aigw','e30:1p0maK:1zkC1Gxf07_IwkzfI-0R6BZREObQUuPpEN2An9EB2Ow','2022-12-15 16:38:52.374625'),('glgvznoc4ewzecupgmfmdyjef8crbtho','e30:1p30WG:Cq2sKTFBYDb5aAq7WVyyPb86QuijHFSY8A2cH_p9rdg','2022-12-21 19:55:52.647314'),('gmhbgktnw78abytumme72gdvklt0khkw','e30:1p3DAZ:w57QSA22P8_Us2dBLuDR7aNCra1xTQuy2QJQTxDq778','2022-12-22 09:26:19.272135'),('gobuwbwr4n1jci2l6n5u06emn4b50zpk','e30:1p0L2w:m43Fhhq_llxDsJBFOy1wnRvJOEtNbSNlp9G3qVEa490','2022-12-14 11:14:34.447192'),('goebet9oy7mdto25eqb7ochz36zn9qo9','e30:1p1LSl:3Yecj927Fmn3hJbc1WxUZSPiLcgOzidB7K3zUMzJBY0','2022-12-17 05:53:23.997266'),('gvtg8zqb90vvok0m0qtbci7h2nwmmktr','e30:1ozdAd:83RZ51uU30YcDhPvSSorLBGpKpEuUQxhhqaGvN31V6g','2022-12-12 12:23:35.197777'),('gw2io7fcst9f98xaf8c81alszwjkhbwp','e30:1p3n3t:eXtZZcu-ZpGZuqXTFOxrFbZ_OafOwMrUimGlXLKFUSY','2022-12-23 23:45:49.630171'),('gwat6gvjr5edh3wxz75930aw5yx4kbny','e30:1p6GCT:95HUh5dPS6IIG27EpbMZabfMd4P8k8nSc0RvvNPTx_o','2022-12-30 19:16:53.987436'),('gxnhzl0a1gifn2p6j9gvjuktbaa8kwa5','e30:1p2J2d:GqBX8vpxG60mKfFkfoae9AtoVc0xYFcIBaWn2PPm2nI','2022-12-19 21:30:23.705458'),('gxwrsjt1xt2s0uphk9emmk7ro3wtbo92','e30:1p4J0m:G9a3Ijhpp0l5X6v7losA6P4wl0BJhKRcyOz26EHOCz0','2022-12-25 09:52:44.662266'),('gzadwlit5oaaw941v43mthdb9w8mf826','e30:1p5YGO:GDDqhc6_msAG2PhsnckDM17-CsEr6epp6sLR5GuNcNY','2022-12-28 20:22:00.314566'),('h0spnl3hib2l0uf43lpfkpg004cq8a97','e30:1p2tu0:X-8NfT6Bo5elxFcVyRDHYmu6xnX4niPF70WnN0puaoQ','2022-12-21 12:51:56.009236'),('h4uypg1lj0kim5mbhyufhw213oil2035','e30:1p10wG:X3gIQT7iua3zEniatyJTugM7N92XZ7Q96tLoizqU7tA','2022-12-16 07:58:28.888812'),('h67n3mmkhxuaxgg7k7ho7hriyytc9cay','e30:1p0rd3:3MzY-yJq8uO2OW2X9Knzi5BJCUvAwxIVXiaIYJNYSyU','2022-12-15 22:02:01.164760'),('h7shkci7dj5eutz36obr44f6dpb4dbx0','e30:1p4xPK:jpUrt0JjwP6C80NUbJH3hly0_6ABnnVTkFojcAj4jKU','2022-12-27 05:00:46.156783'),('h9ma77tc63cgy807ckiypidr3wqmmjrw','e30:1p2rru:K2-Z0CxzkpZvUHxlyNOiL5SUqf7HxoKRFHrxXA5z_js','2022-12-21 10:41:38.650537'),('hefclbznx87xxu47egtzar48osc187fp','e30:1p4Zr5:5vWgax_NSYOFtpIE9Xtt--yYnJTFUVbbdHn2LJFSfyQ','2022-12-26 03:51:51.331139'),('hepd7ioc7zxu8m09p1e9yyg3k2vxju7s','e30:1ozftP:5h1ZkqsQEemXZ2lssU26nh6dpuwfIX_Mo-N4z0vUiUM','2022-12-12 15:17:59.540014'),('hgbmtngub671pgecb6xlx1hjd8j1cggc','e30:1p4cc1:kXx0wW8aQa_L2wo2CgoVavVu5iSR8VnIapJueK2ohEE','2022-12-26 06:48:29.769437'),('hhlheuunsi2ia9up8ii4p7keib3k3jyy','e30:1p5SkP:3lFSFuErrLuWJND9ojE-0eGzgSFbHa98S3i37ejxgEo','2022-12-28 14:28:37.502303'),('hmni0brmqvpinqbwn39cwkapynljelkw','e30:1p1IGe:8EKsygFXMcjLmtuulIKhTzSvu8xKx9b6QDmVpCg12tU','2022-12-17 02:28:40.153756'),('hnrngdg1f0c1ka7364letvjsis9fbr3a','e30:1p0tVv:9hnP06JrCdAqVbheB6F4Lrw0XszJJgV19Ys2oWN9SU4','2022-12-16 00:02:47.239220'),('huf097mzjyk4ccdq2dtklkklc18ddmiv','e30:1p58I9:IvyMFo1ePutlyfh0bspiYtuklTZmlgkrc5puTshwFuA','2022-12-27 16:38:05.870527'),('huy0dw9uf0lri3b7qemwx5xfjn0qog26','e30:1p6hDg:ictGx4suvFPtei5zKryNidoAgXlYpbfpqi5kKS2ci0g','2023-01-01 00:07:56.304093'),('hv9qsx0h1k1vw25n97f8nhi4sppbgffg','e30:1p5aGX:uibfv46JwmIXTBHi0G4pCYGygieLtZXXRWg3e0PeUAA','2022-12-28 22:30:17.932319'),('hvwqqg5hs795d641q6qyawkanl8sdqpz','e30:1p25GX:rW3RWjaW9ijOuBMZDpO_hj4vALNrKBdvQ17Rt98JR0o','2022-12-19 06:47:49.330717'),('hz8ycerjp2x2iman2axwp80ivu6r6bhg','e30:1ozyOA:YasCSGcXMuTdYeXW65LlxGMYBu9tk-Kjv97v--CLUHE','2022-12-13 11:02:58.710240'),('i3lafznm6aplr0ab8uu71tv69ibb9437','e30:1p6Jj7:vDxlBSNXC_7F8b9aQqikjY4lvNvFmZ88tbJeMYtTOmY','2022-12-30 23:02:49.440975'),('i8623s8yvlc1xpkz6y0rsrgexj9nk3yy','e30:1p17jC:xxf-i9hH8mBptVjp7s8hJ_iie0LLwgxg_ZSvkOzyV-8','2022-12-16 15:13:26.775576'),('i939v3l7e11zyrcaho6lbbd2sfr0poqc','e30:1p62MY:QroyQJKkzYI44hUbtYKsJSoTeJCbIO2-J3ltGtQrwF8','2022-12-30 04:30:22.164787'),('ig23zv7e75pxkrntp38exnd9fqrlhmjh','e30:1p6R6P:I0CiyaQiwzbZTmRVnrJJItkUZ301TFwogF8AGcVk0XU','2022-12-31 06:55:21.906526'),('igji7q88jzlbuy0qy2b0d6qsawpj7rmc','e30:1p3y12:1B2puwyf6M-UsrZWfbRYc24bETqnc-a_Ai70wq8jc_M','2022-12-24 11:27:36.830578'),('ihacl0rvxhc0exzypia9l5gq4yud6fd3','e30:1p6R6P:I0CiyaQiwzbZTmRVnrJJItkUZ301TFwogF8AGcVk0XU','2022-12-31 06:55:21.044544'),('iio1fh9lrgob5j0wz819ae8lnfr9hscj','e30:1p0hw0:Dmq29C1QkgwfXqmjrBHV4mz2iELUfsHjjVs583r6SyU','2022-12-15 11:40:56.654796'),('imwg51utqc3yqb2y6kk5rhxcgvdi8728','e30:1p2kw6:t6v4GTsZXAEEmFNrXxEjNkcXSNlyt88HdHbh13HyLiE','2022-12-21 03:17:30.519729'),('iqv7cwnpnza5gbqqmobwjik6rhbxqrts','e30:1p5iBK:u3RU9kA8tJUyCveF8Txji-LfWHAKCDeoGZy5Un0Ahqk','2022-12-29 06:57:26.172943'),('isylxraq610kodyroh9rlhs2nm1gp03y','e30:1p6UlC:Jzfmh_6pdsp1SCo8wl24OXn0WqVVIqivEqr6oKIRmGo','2022-12-31 10:49:42.389079'),('iwxmyz0sfopxzywtenmzarxuc6s1h4dp','e30:1p2Nje:xEOWHVyteqgDrmH9ROdoz6tTDzJ8vjvyMbevCROnS8c','2022-12-20 02:31:06.024012'),('izxcnyh4czzyj5gqw30xj6jnwpgl0ur8','e30:1ozIOK:vAK2YPz1ME2wGl_NEQMTRc11XAml70hh7l8AoivcuHY','2022-12-11 14:12:20.164769'),('j09iziwyb6rdxz7oifbmb0rar69xnroq','e30:1p2bc9:XVW7fZkcNniTph057h_B7Wd527z9yILH8ayZf8kTmPw','2022-12-20 17:20:17.421095'),('j4sqbcubx73yvtl0vs199vu397y3qr38','e30:1p60nH:zuqxghU7fOOSRTfYGwO1JPfgikx13Hzmkqq_B_62Ztk','2022-12-30 02:49:51.266621'),('j84kjpljgrjr0b7cn2fk6h4n1jv59r8w','e30:1p6iin:inu5aFA_YxynerR6hmFlIFaODnJWR7R86GKierj-_uQ','2023-01-01 01:44:09.466320'),('j9p9j7yu61fb5lif41ij21et3puwydhb','e30:1ozIOL:6d425N8Gj5lJSN0bMFRSYLIFY6hozAlqTM_NuYgr5Ps','2022-12-11 14:12:21.693749'),('jax6u3kkd5f7m2n816b4g4q8968db8ti','e30:1p0fYc:J6m_ytUtEJkFyxa3lrb36T53Cr1c9PrRv3qmLqk2o84','2022-12-15 09:08:38.028616'),('jbor1pep5ky2wjicypykgz3jnw17hqfk','e30:1p6PW0:Fxl9xISJYJpyGLz2POnYj127kD0KxuAiC2azrgi1geA','2022-12-31 05:13:40.756321'),('jizoywr3x93t8h8lgzme4zizv4s9br08','e30:1p6WGN:GKV6Wq8ytsQTQw4xvRzRK6DJT_eCABqL_clcObAkRMM','2022-12-31 12:25:59.117359'),('jlwhzeg2zkjw51wqdusso7zeunk3p8y8','e30:1p3tdw:JSqNWqeg0vjGCXi7XJXGRPs0rzgqv47fALZD1IlaJUQ','2022-12-24 06:47:28.016671'),('joellnivucxzxp0zuf11ul7l0qk78nv0','e30:1p0fYc:J6m_ytUtEJkFyxa3lrb36T53Cr1c9PrRv3qmLqk2o84','2022-12-15 09:08:38.025892'),('jtktm6jgtiq0l2x1arlf9h77m1nipxkh','e30:1p27k5:DkdGE1KpMyiateTfrjLlgOPSlUEynKf3CQWBiFTEPbA','2022-12-19 09:26:29.629384'),('jzjwpf9txam76wc32xnekjiycdqzz816','e30:1p2ohP:qJb43vYHEdHSaYpxYSFsbMFefXp3D6avhj46sYiSg6Q','2022-12-21 07:18:35.955682'),('k05v2q7c3tiboh6oytwxxlt7etmvsotl','e30:1p0fYg:QIiXhMCivzA9BGT9mW7hl2JQfwA1mdReLJCP_2HymmE','2022-12-15 09:08:42.687709'),('k1g1fk518b16tdrfgbc6p1y5a1quszju','e30:1p14Fo:jSzCniUP1XBYjpFpsiJACvFg8h1WdVhDPEmuBVFjOAE','2022-12-16 11:30:52.264419'),('k3uaiv17y97lyq24fu4idp6kvq5rkj6e','e30:1ozIOI:UoVjzCxszs4xEI-Oyf9pqbkYYKJau6HAHaVvNWXhetE','2022-12-11 14:12:18.164922'),('k45bjwtk1phk06ggsnyzd72tt0cxfbos','e30:1p02lS:sgxpyCxbR_-bwkPuKtoM2uFwLJstcvU1S8vNu9BaFOo','2022-12-13 15:43:18.795409'),('k8scvk6cpd0h1tktigr4f9ul6nsproud','e30:1p3wKr:iYXwmNgazdJuDtVp8zx2l-GFGDD002DB8yru-atCicc','2022-12-24 09:39:57.740265'),('kd73t7c53kj801im3edz6xzdzoimr13e','e30:1p0CDv:2VRM8eR1taeh1e5x7oWc69ePLypLSK4cj1lV1Z94rJg','2022-12-14 01:49:19.673030'),('kfgf73dn6vqhpxraw2yla4z61pd65q7x','e30:1p5Jgl:R97M8PEurN0nBKG_qdNa-UdsAm-C9IlN2u0b9mqud1E','2022-12-28 04:48:15.299074'),('kjcmnubetc3g16s02nl4covwyyjjkgay','e30:1p5jIo:ksSI7-t4DDJFTqX6hH28oxSZ-4YBH2suZJEsQQgnLls','2022-12-29 08:09:14.649073'),('kwowagwsj31qsfix36jnz5lay2mareyx','e30:1p0vuI:21ez0niL76tI610NQwobzeRhjZTgAX7bG78xi7a0Td0','2022-12-16 02:36:06.298209'),('l0bmzdnwr11hampp3tdq3frnwsbawrou','e30:1p5iBJ:eLNmfJ5EBAPi-wafH4s6BAULf3-3vYhgfvJNu5NzW4g','2022-12-29 06:57:25.765234'),('l9ug7xd3snemmm4nta6c6ee4oa2xw3nv','e30:1p2S7O:Q96IDH8fNY3OmK3BFZE2iKn85gu4_yo-wXvBm7sg5MA','2022-12-20 07:11:54.930447'),('lc2cw58qg41hsom32vj6y2v9ttt82ad2','e30:1ozrhW:pKjU7o71tTcW8RbRXT1KjGqDIS0jIT_tCF9TmqRlRV8','2022-12-13 03:54:30.246517'),('lc4i0x2oncn41i3fqub4rxwiwmg4rjws','e30:1p2j6H:npt-lq89wA6Ga4fhaJChv-GUoqWT2Qz6gQIJyXX7xus','2022-12-21 01:19:53.154355'),('lf97etxuwmuc24vqmrbb345ezejg9iu9','e30:1p5KQ1:GmHqfgirKDaWVPNtnK8lGW-ht4NnqviaNCOd616fbZ4','2022-12-28 05:35:01.186688'),('lmj4s93yfnvb5g4t7atiofg6cnrv80vu','e30:1p4cc1:kXx0wW8aQa_L2wo2CgoVavVu5iSR8VnIapJueK2ohEE','2022-12-26 06:48:29.730871'),('lq1d38r66kvn57cj98q8soxdbqowr49s','e30:1p2q3i:mYr57o-c2kWFhCXPagYTQfRZc8dpqln5mQMLfUHlfrU','2022-12-21 08:45:42.330300'),('lq9a68eprjpwnwaxg6889k1aq9ofez9r','e30:1p2vlM:ajKhxlESL3BZN2JeTHsmtcGcD5twFd_gVgwAJAhgtH4','2022-12-21 14:51:08.159184'),('m1855ajjjkm3rsnjtqk4qk9u5ggmu587','e30:1p2mkl:oErNy39ALePj3QKQdzO4Cwft747wMaxK6Gc3kjge35Y','2022-12-21 05:13:55.737679'),('m4ucnm9misf9gkgmrbdoq6sany45ayd0','e30:1p5iBK:u3RU9kA8tJUyCveF8Txji-LfWHAKCDeoGZy5Un0Ahqk','2022-12-29 06:57:26.173286'),('mlymc2e27l1dvrq860j95dytvkmx5o7g','e30:1p0KBC:oNI_Lr3VW4Te1dJmkFu3fvCbAcaZ4igY9lx1VL3Wclo','2022-12-14 10:19:02.557953'),('mpi25ukfe2xlxmdk0ef3dial98ulbrte','e30:1p1T1j:qPn4jX0DI_V5IGY5YbbNOWnk_G07BXCMLWlFUKPo1Ds','2022-12-17 13:57:59.405673'),('mqt0vhyrfo4ae69iuzv6wfrdrxvd653u','e30:1p23um:TzJsf7-RG3CMgGPZEUL-vVZwOS4K5bfxjdXQwn77YeA','2022-12-19 05:21:16.518374'),('mvogy30t9hp2dw413038h027q41x2y3k','e30:1p1pbG:4urhAEUppHWtkYBooh3v0NHhgpQczOuimc9Z1AcbYms','2022-12-18 14:04:10.846322'),('mzou1gualkvxg3a8u85hqlc54n9hxe0v','e30:1ozyoi:uDLokAiOMBiowFC_BKG629ibI1UIfud2rYH9zidSWq8','2022-12-13 11:30:24.998009'),('n0jf5dn331wj60ljan92dnup6jf3pfzg','e30:1p64TR:HABvrggpSYRfASk9wfX38nSirsFKg03HfwIimNEvx-U','2022-12-30 06:45:37.191070'),('nam3zb2bz5b7y9wo253x4uzxu8nyhkss','e30:1oz9Jw:kMbXsRoSPkbw3PcbkzDi7n-NrQ8gxgjemQdMncMvLhs','2022-12-11 04:31:12.876353'),('nmvj2j5cormz6qw4rdfm9fl89vlwc8no','e30:1p3tfM:3cvkGnh-hxUbnRwkzte-J-BXxzGWZjyL51uFsyqNBRI','2022-12-24 06:48:56.235014'),('nngcst4w5mouumwcqi8ti72x2bt6vc89','e30:1p1BQG:FOoW63gvstQYCJtfV0LwJMeF5SWQqAlqQ32wLJ7klXo','2022-12-16 19:10:08.759415'),('np8svl4bveqgro1asbn9mkmq9w44q69h','e30:1p2O1G:totALVcDj_NKEBcpH57WmZW8VnnzuyIIduMGoydefGg','2022-12-20 02:49:18.530424'),('npddgvs744nrgw816mgz74e2k1wfn0h7','e30:1p1IKT:xOpYliG3dxBCTBaJd3vV1QI1LpF9MnKML60aE79ZzZ8','2022-12-17 02:32:37.192504'),('nyrqrk6xxctzpfvy4m2pnre6jky5gir7','e30:1p5GOU:BUyzv5vm9Oz0O4ZXpvEm0pkZcGru-fcEN4NYsEGUEPU','2022-12-28 01:17:10.776802'),('nzmr7otwv08hwwbru9rpm2bsr01mokeu','e30:1p59tt:FDkRM364RAgFi6jwIPyz0mIUcIVeHJSCiN4Tq9H3mZo','2022-12-27 18:21:09.603340'),('o2fy291dts2hofec2qspwy9ozu0ub2t6','e30:1p1NkU:8XFw6hG3oE4Mpy7YUbK11iz7Awc1djrJ7W6J8MebGhM','2022-12-17 08:19:50.713436'),('onn24wfc7g9s6usciclg2bfeyhhebxdf','.eJxVjMkOgjAURf-la9PQ4UFx6d5vaDq8MhRLpDRGjf8uJGzY3nPO_ZKuYF51xDe5kpdwA1RefB4Ru-Im2z7RxgcbY1IhW08uRJuy9rpkXPTgt4Tx82iNi5h24keTupm6Oa3LYOmu0INmep89TrfDPR30JvdbDYCNUxJRyrpiCIIBM5Z7UytQwjVBeqWgEoE3WAPwYIwTrcQWlVc8SPL7A6QESEU:1p03AW:aYFN8jBT_FaTIbFlujJCqWTQQnekTTiKSZm-ZU_o6MI','2022-12-13 16:09:12.459632'),('opy4ht8s4m719aur68fw1n6ja1gy3btk','e30:1p48wX:QuiKattni-yRJ1-NPZyWE-Ho_3giINXdUM-_3FfMx3s','2022-12-24 23:07:41.717725'),('ouojb43m5buwh17shy6mc4u2ms6zu6ro','e30:1p4DKL:btcm_H5OTPEi5jmVcMJr7CEWnU4ebaO4BLsjpFhDaW0','2022-12-25 03:48:33.264766'),('p0dklsqsc5rpu4e1hm3ijqh7e7a5mjvo','e30:1p3XKB:tbzJfvW28uoPKUttGPQeUAPK170Iws1QZGpZmh-Igyc','2022-12-23 06:57:35.990184'),('p84ke61cl4mzrgxh4tqxnxvp7z50a2lq','e30:1p4F2a:8N0ynn0huVzD7WRQ3SPzZ1o6dIEeneT-2JIpm-hyTeQ','2022-12-25 05:38:20.298116'),('pd4rem3srig1darmlnzv1jkjjolzhcmu','e30:1p5y8B:YWZ8M8Yb1k1Cj62hbVW16faNue-g-ZKlb_NTthorOzg','2022-12-29 23:59:15.741912'),('pe1qniefeg23h00fgvogu8by16l8eb4h','e30:1p2yKt:inwN3KY0eFlsGKyR0c1HSUZlzRF3aW5DRTpv08roNKs','2022-12-21 17:35:59.796644'),('pflqegrdqkzizzq7kqxw44pfthfl3ayv','e30:1pTiYn:i0E8Pp-HRWeuQXz9AgDCTN9o4HYbdbQ01l318xjTyA0','2023-03-05 12:12:53.157179'),('phvl5mqjl6didsbo5pwzidinb4fiet8g','e30:1p3XKB:tbzJfvW28uoPKUttGPQeUAPK170Iws1QZGpZmh-Igyc','2022-12-23 06:57:35.990710'),('pire7h71ihtfelcq5ofvs7uipuspvbph','e30:1p3qUb:F6SHNY8uxjmlHREZgcuJ59PwfxenoTKn5XIYa-8ilUI','2022-12-24 03:25:37.276267'),('pkkjj2151ju1ymf8kusuyng5ef732s0b','e30:1p4FkG:aHcPpLAU3nGtZqQ00TyDmLozVY7S4a2OyHfhW2d8RoA','2022-12-25 06:23:28.597529'),('plb41gj0lufyw727vb4sqz427o9pws9y','e30:1p5NwO:Mer64RF0HXnHJDJ_5-xJT2AuqLpfli7vXctlxwtDHUs','2022-12-28 09:20:40.505330'),('ppfd75d0agt2r2i2yiqzd7fmqrhsa0yk','e30:1p1rf0:tooipikvjPR2IZklvSKhzQzl87ZkHt5ha1fWkY_fPgI','2022-12-18 16:16:10.389707'),('pq3kspgb41xzlnoehn4uppiter2r6mgw','e30:1p6XGT:GuunhERHr2Js5-rsReTzlIQer04t79HUOzBmggC0Rck','2022-12-31 13:30:09.117196'),('pt9jtodn0ydnokd7r41tkygjfxt2xdws','e30:1p6DFa:-_aMcXjKdYWwlMSP-zz2u0CJ_W27tP5BX5Z-AOYHqnc','2022-12-30 16:07:54.650825'),('ptef16fnfpe12q6rpjvs4eu3g3lkexkt','e30:1p2FVR:IdbyqfE0LZcDkrl-aqK6oggPN4fNvdWpYWm0B-Q4fLI','2022-12-19 17:43:53.874735'),('punca6va5pfdnz0f2bfcjhpjpou6qeu9','e30:1p5ZbL:u3XfJLK8j5lUajy31xyENODqlAnbYBUfU-ItwDOh0dc','2022-12-28 21:47:43.419404'),('pxcqp4txffkn84b8yj27kh3fvli9coig','e30:1ozcy9:w8tOqurokw4DywYboJ5JrzujcFHEhxq5KX71GnwaIm4','2022-12-12 12:10:41.499438'),('q20sku3r4tfuba5aykre82s9ugjntq21','e30:1p0WHh:gnYz5ekHq6x6xy_65aQ70v28CuW9vZRtZvPH7NfCsBU','2022-12-14 23:14:33.585338'),('q2he0qfz54y1gz485z2m53yhwjwddxoy','e30:1p0djc:pq6Rmx3PBw892KeaDNEbwVnwfrd17uTb677n2DZDZQ8','2022-12-15 07:11:52.766219'),('q2x639snkeu3uma7i2bw578pjfbjvhh4','e30:1p4b32:FcqeDmkKvLRzRPLSBwoySMkQigV430JloMCtt3lEj2E','2022-12-26 05:08:16.997507'),('q6fvqkepeplu52vg9b289p1mi063qy4a','e30:1p0zyU:seyNGGL2iVky66hpZ0Rrn3FNlhw5YElRhGoIHlXNsyw','2022-12-16 06:56:42.563924'),('q6k5f15w6w5w2bw7a7mi2wui136mh4zq','e30:1p1h9d:1s-WDO3UD0NTGhF_prcw-iYmJ_uOiDDYq-zRhNBusdE','2022-12-18 05:03:05.768244'),('qengqyh3v6d51mu6q2ymhr2h7m2ypui8','e30:1p2oG4:UfEF5sDCPUbLq1XAAX868Peabuz2sGtYz9THfA2mK-M','2022-12-21 06:50:20.572955'),('qfzpslxe8383k8pas9jm9tuqgzyba7ch','e30:1p2Si1:oN_1jhGjh75AkafNjY-0x6wcAHZstmrcexyCsQATA-Q','2022-12-20 07:49:45.934829'),('qwogw8jxppw0a3bfm0i34yc5k0lotf81','e30:1p3snh:lXmN6kEth2Q8c6nqZwVk738jVtmpmUdN7UKhujz-u84','2022-12-24 05:53:29.177635'),('r1en5xy9pv8jeqm0ov47kjhvisj1fetw','e30:1p3k6N:0fqwbJOoIXDS2D5aEN__hj5jGHC6d2XGDGG_c1t9AMg','2022-12-23 20:36:11.710956'),('r3vr8tau84lptkkp87kv9dev8liuq91n','e30:1p2TJW:DbvS0Aal6YXH6Wq4OdMa26Bq4iN_tsm-L1WFLcd4tTc','2022-12-20 08:28:30.563777'),('r4nmr0m4kk2y8oxux2fqoh6ocg9dhe62','e30:1p4sP0:A85VwjJ5rO62a5po2zYb1bLAbdDuOh1_GbT2wHgdfy8','2022-12-26 23:40:06.829986'),('r55gpp9eytzhpn8jtzra8irz8grap740','e30:1ozbgY:mTeSM_NtIk4yBdoEjjw2ph7IYw_dLuFrSVjarP-CgYo','2022-12-12 10:48:26.190723'),('rayuyqlitlcvmy5na6c7y7mlyxtho816','e30:1p3tfM:3cvkGnh-hxUbnRwkzte-J-BXxzGWZjyL51uFsyqNBRI','2022-12-24 06:48:56.008814'),('reb10vvai0s3qljvfdahh29ns6mk30zy','e30:1p3wGJ:LjCTq5kBE5ivGDTMQnR9H_ktMrzPHcpV8WVLIj0BAqA','2022-12-24 09:35:15.664116'),('riav8s07zf5y1uxgh7ly0t2qlp8w6n0p','e30:1ozIf1:L9r4GGoQV3MUPO4xnqYbrWxSbjeQ6TxP8m2C-vd6-jc','2022-12-11 14:29:35.984100'),('rmj8c2n80lj4sz8dfqtu3hx43nere40i','e30:1p5pp2:enLkEGYJ0XKEZLWyP3bDNWhMDjZfVm6neapkBXNzjfU','2022-12-29 15:06:56.873069'),('rx6yr6f6sbc0ao7xpg1ktgqd2j34zj7m','e30:1p2aKK:tqX_brswpW6HflVB_ojfrOiVeLbi04HuyFrbNaZMc4k','2022-12-20 15:57:48.452099'),('s0nrqp3faxt8x15f1vh5ydc6txty6943','e30:1p2xzH:IEOece24mWPDsgI4S8dBdkFwhY1R5YbOa679bgcdECU','2022-12-21 17:13:39.052894'),('s31psz6iijaj0w9u0zmi6eb6znvohgi4','e30:1ozoqE:kQcAOohkoZiSLZ2GjdZmgAJ_0sObhXB4ocyH9MA7bGI','2022-12-13 00:51:18.652050'),('s3y4de3b3up64juqzgeqzaw2u9pxt40r','e30:1ozIOL:6d425N8Gj5lJSN0bMFRSYLIFY6hozAlqTM_NuYgr5Ps','2022-12-11 14:12:21.860222'),('se3nuai1d60rri7r0zhkqiv3w78t69df','e30:1p13G5:Ku2Q5Y7P1vc_8aNWwKMezkDDBMroq6CYwtWDzSsIM98','2022-12-16 10:27:05.618081'),('sgrgtv5vhfx1gq8hulerkp7g7i7i9qiv','e30:1oymqT:LTq_OH0AFfJgQ-VhEGBBKyd6fe1uKkNnPSlzRI6B6vk','2022-12-10 04:31:17.987019'),('sqe6cuzxn2l8r7qpaf5gzf3pk81lguzp','e30:1p16N7:o35uAPT0T_v-Neop-6lTVoqbSbjjlwa3HJ0-VoqLBr4','2022-12-16 13:46:33.502844'),('sssipqoh5ihb0t3crczo0fhrfwq4tjgi','e30:1p0fYh:Z8QrK8rZ1JmfeUu03Wt7sRCB6gVaZcHwX3MHCblahME','2022-12-15 09:08:43.319713'),('stmdmvoguyrzddfy68r0k3jdgq8fcan5','e30:1ozkhv:xgzC_UJnmmwKkwFbdhy83Vft7jNXFhkCt6yTcpJVCzA','2022-12-12 20:26:27.460688'),('t5yzl8c6rugarpah1b0owjzweyx9oavg','e30:1p1dBV:_GT3GO0WAuaTeUrKLw9FlODKaN4cPRT8UF21Bk57vyE','2022-12-18 00:48:45.296303'),('t9hkzhyra1uhyfx33zuoh813ehd4jd63','e30:1p0Frn:m2bT3jso_b8BxfPxUsYKiTmsI5FA-TJYg-sgjf40DeY','2022-12-14 05:42:43.872566'),('thrna3x4xrenaum7ue8d8jpkuwyz0dnb','e30:1p0bNw:ojIuFbNHpS9CSaoG4SsiMQubE6pNXb4j5GPJFvZBJZU','2022-12-15 04:41:20.941411'),('tm8pzabdiuyqjy6ecf4ggpnqq34bhcqu','e30:1p070m:_ZgJFFI4yf6CfHO8axH3BggoRG04JdKWSyIowwI1V7Y','2022-12-13 20:15:24.560740'),('tsazs7m5nivqqmd5f3c1o3nplb9vhehs','e30:1p6NfD:WxqjmnSUa_ycJB-qPedCZFluLg2HlG7yWGDkc4daai8','2022-12-31 03:15:03.739708'),('tuwng6f2hsrk5rb8xkh1ifcktqdsru1d','e30:1p66mp:2DlG0d8eUHlSXWyyImJGHDxYz_MnXOiOjK6-_tnjF6Y','2022-12-30 09:13:47.883313'),('tyvutomxrxkkw47ktpnygyv7chms0y3h','e30:1ozITv:8ZrB-KXaDN7zN9U5T_E1e7P-zJtZAcpH77_kkbGS7hk','2022-12-11 14:18:07.564021'),('u1mge2gi8fe0zowvtmt2nuw1ko6whr8n','e30:1p11lW:bAYgDOej-QWGqN5RTBiy7fiHfAGZITvQTwKzqs5LIiM','2022-12-16 08:51:26.049759'),('u2kxd3mm5q5pqnw2jgx4h8o0md2go5yn','e30:1ozITp:Bvubn6v-ErVxfKby-wMT06KhVM81dikPcTT3MqLRGas','2022-12-11 14:18:01.491603'),('u3ag2q7ceui1uobnyt481hgzj33mq993','e30:1p03CX:XZtGgakT7xsd5mj-BxND86INgUuxg_w_ZYiG4l7bfDk','2022-12-13 16:11:17.548200'),('u3qickiu4mhu9ykbitvxetye7j89bzpg','e30:1p3jJy:ZRk02CmtT6oUo3vWM1okiXhylIiMu9xoImLlzpaEO0U','2022-12-23 19:46:10.355194'),('u5qeh3vlyxqrtjf3qlsjbucyn39b3j1j','e30:1p2oG4:UfEF5sDCPUbLq1XAAX868Peabuz2sGtYz9THfA2mK-M','2022-12-21 06:50:20.576848'),('u6km70o3qc2xyku6olrooxl7y164ixon','eyJndWVzdF9rZXkiOiJ1NmttNzBvM3FjMnh5a3U2b2xyb294bDd5MTY0aXhvbiJ9:1ozv5f:bCjgYo2uEcT9qy4upBOw95Zn9zA6oG9nHp0PmShP0_U','2022-12-13 07:31:39.909034'),('uh3ujctn38os5c9z6qeioc6inup5fcn0','e30:1p1ElP:UH-e1Aalhzmr8z_khYz9eOcKx9pOmkPYNIzDJZUxMRU','2022-12-16 22:44:11.285876'),('un88s8seis5tv106x03hhcl4qhlvaw9o','e30:1p2eb4:rO_c3hTgKFHdwoPOKBOSJABCJen0bStWxVjP9hZbG9o','2022-12-20 20:31:22.682144'),('unvs5y26196fdom6ktwpdof83jyrvemm','e30:1p3U5f:pHqAu92cb1GWh3ouZLlJIADBR_hqnKDQZbti04vNdKo','2022-12-23 03:30:23.719349'),('urnzlhh4jkek9wgwooa28ahforz8afve','e30:1p1NrG:VvEfH2kHmpLBn-bjdEvbwcZ4iojkDhkWyX3XnmW_3sg','2022-12-17 08:26:50.774891'),('v9oy8z88mopqx2yw7zlhag27xv4v5fr1','e30:1p64TR:HABvrggpSYRfASk9wfX38nSirsFKg03HfwIimNEvx-U','2022-12-30 06:45:37.190024'),('vcutusf1bvy5u3cpiej1vgvxqt6sy873','e30:1p5NwQ:qHd6X1nFDTGweAegzapi0HlT8h5vsC0OA7v-R8WBAhE','2022-12-28 09:20:42.280261'),('vfefzqxp4a0ktjvahl8gih34lc85ec0x','e30:1p19YM:sKC-m_y1l6AeSzLYHJRA_JPnrMc-ScqDoSJXOOQVi4o','2022-12-16 17:10:22.269674'),('vhndi20l0p9k2u19qw44i45zw8wnhjv2','e30:1p5ffu:fOh39bbnwod93T9Z9KaruLhySFfjCeOTtnqrVQfDBaY','2022-12-29 04:16:50.220981'),('vn4stpwy05lo46uipbczyfl4nzbtnwqe','e30:1p3JpS:b0sYIHcNpmtqm8ssJZS8QSD2hexN4ILrzwLgiMwoANg','2022-12-22 16:32:58.399467'),('vouaiaabtxrqwr3pwmuws0p623kxi1h6','e30:1p1M92:7J9vkWRjk1U5DHY8INr0pOXx6sC2Xccf_EATpo4wZnw','2022-12-17 06:37:04.718855'),('vqjid07zg4fe06aeawyllmcpfvmu6gje','e30:1p6DEg:-XfUXJNNZKL7rllA6LRjeQvIY5iUCVKhEEMGkbntRMg','2022-12-30 16:06:58.462117'),('vquj0aazgcfzjiinbe6s7afgo9vrhflh','e30:1p6Rn0:Pou2j433PA3v6ipK6wNYsrye4GICa7Mbzr0T2gep6VQ','2022-12-31 07:39:22.348371'),('vtqpt0z8a80ngoxq0daocmtm5lmbztsy','.eJxVjDsOwyAQBe9CHSHAfFOm9xnQLqyDkwgkY1dR7h5bcpG0b2bem0XY1hK3TkucM7syyS6_G0J6Uj1AfkC9N55aXZcZ-aHwk3Y-tkyv2-n-HRToZa8hhcEoOciAxsqgYZIOktNO0BSsN84rn8BaDM4oDILIZoEy027RgJp9vsYSN68:1p00fQ:k1porWs4eMFb9piz2YxHFL-uT-t7h9telAng5cWdyQE','2022-12-13 13:28:56.431469'),('vuaho4cymbrqg6m8p0x83rmyczj8y3yp','e30:1p5y0R:Hlsxfmof0X89q4Sj91l9XVbZ4LDu4Pvm-qabHB7a6X8','2022-12-29 23:51:15.278637'),('w1gi7hz4uo9knbkvx2vj7zapyql60e1b','e30:1p2wXS:7I2LFE_vJJzG7-sFmi9ysONfrMKNcoa8QatQ3fEjMj8','2022-12-21 15:40:50.533966'),('w6i3xg85hlmb5lqh8ssvwk4dolc4k5um','e30:1p149c:XPU4QoPk9bLCHgk791j4LnSVu0wk49flyc9bH0aTZU8','2022-12-16 11:24:28.302415'),('w79t2676wft4nxdclcn4byt3zgcfk1bj','e30:1p02kR:y4PbsTXgxt0JMhqJ51hIHe_F3U-1Sd5oQ3CCJTHiCrs','2022-12-13 15:42:15.687939'),('w8uw10jxfwum6a4tnyz6r5zo5b50wlvy','e30:1p4b3g:Gf2F0Fas_t0ixuGCoddB_eyrdNSJJlGGS0WERTy1VKs','2022-12-26 05:08:56.735757'),('wc0bg27tpxdmqtntjmuva60c6u3qea49','e30:1p2uG0:a7OCnIVr56eL5wTyhts4IAVviwx9_R-lol14K4o1f2s','2022-12-21 13:14:40.140070'),('wd2shkom0qzypu59z22ncne60vsm1okk','e30:1p5mBK:dUVllEK32Mj11gYu_GeJywpWDrYN5rYS-oblO96YipM','2022-12-29 11:13:42.332149'),('wi949fyemdr8q6e3a56x428sy1mt5pf1','e30:1p4sIq:SJYEXxDXz7AQm_usTw9KsuXUYWREKYlIPPux6-ijNSw','2022-12-26 23:33:44.788333'),('wov1ejzy0haejdm0sej2smklndfijz9y','e30:1p67lC:Gc9KMtr5pFbOPuW9eY6r4uZaQgVtHoD1sJGtYytEZnc','2022-12-30 10:16:10.807248'),('wpsqotl6us7cjbfvupazlhy1yeb9o3af','e30:1p55ns:qK89YY5SDnnVJYbqdDBHTGmsF-sACofINF37oxHbM5I','2022-12-27 13:58:40.214828'),('wwsx78qakc9vf11u6zz94icgq90xwegw','e30:1p02uz:MBAJMjielXCC3NtRJ5hQU4vUZICIg3hLhg6PTeoF4x0','2022-12-13 15:53:09.797328'),('wwxhfl5gnux9hcqvtv16arqo4l4tzo17','e30:1p2Nv9:URBE_NmvOgO6_ReqdjzHG40srU4vQrfKTNZXWqZpA1Q','2022-12-20 02:42:59.812413'),('wy6vgqsc5s1k1at3iudlk9dr9qpfvn18','e30:1p0Z1u:kqQxTPrraVIouy6wStW57QO88-L2jmduWh_j-ypboQA','2022-12-15 02:10:26.331105'),('wya2bwu7oz23uzkx1a1ytd4ypwqu74v1','e30:1p60t2:YxkP8LojYNkc9kmRq0xaqloiSRNwG7XMcJW2MYm3GS4','2022-12-30 02:55:48.414158'),('wz8prkn9uj0kzrdu1aootjds16vdvsyc','e30:1p1HK1:YwTTQQ3QZCZM9dKmFp8KKf5cXMQkeJLI1DLEy7avbok','2022-12-17 01:28:05.247095'),('xd11mia4xttcl6sqg22ucmiw52osmg7x','e30:1p6SeN:MBUjbeZsxf7gzL0_bXmO3DWDdREj2OLZLcXay5uCaho','2022-12-31 08:34:31.111431'),('xf995tidyr9hdbt6pmvede5bvao8m6jz','e30:1p1lJf:TZ77BQaa2OndUybggoxS8M9LF0iYhBvj23f5JS2MJl4','2022-12-18 09:29:43.871070'),('xgtn16ldu6fhp3ov0353s5niym43jfmk','e30:1p44pV:AK8xfN70ODhxxq84_Ulk03nxMUJ5_GroUbM4kQ0MrJM','2022-12-24 18:44:09.026088'),('xmdb6hts905e65ybugrplus90sykhx1f','e30:1p6J73:5JbrQVBTP1kJF_fQmTqHBTDRJTBksg8oeqxacr4VB2o','2022-12-30 22:23:29.459648'),('xqfpqeptguxiujwsnifjgxg5vx151v6f','e30:1p4I9W:Znt3HAfjzGXO7C1jkoQfTlyAZH0dRR_B77Q2Hu9nErc','2022-12-25 08:57:42.724897'),('xz4lld33bp86wx4nc1ktwqys8wodke01','e30:1p5xwh:qx1OG-L307wYfEUBU66yJElk7SiDoVh6Iwi8u45HKfI','2022-12-29 23:47:23.401835'),('y324n57wvy9c5kkpj7ni20ezv2tn9xtz','e30:1p6BnI:6uO9O2-lerebaoX94jNu0RKj4meAJN1MyiLvrVgLtg8','2022-12-30 14:34:36.394993'),('y3l44vg41evhkssyt4uuuukyw29o22qp','e30:1p6DFQ:RrEO01RbH7GYHcBY05cGBzGQ08sczSlS-QpNj_qmGA8','2022-12-30 16:07:44.830513'),('y6fnvixxym5xogbcphd14xq7exp5btn3','e30:1p4C4f:HYdkkYjfBrNovslhw5xHaehJIiTzLzZM6e14B1jQ7Rw','2022-12-25 02:28:17.515951'),('y8tcwghuxaijnmew504aq0btt4hg2907','.eJxVjE0OgyAUhO_CuiGCIthl9z0DefDAvwqJSE3T9O7FxI2zm5lv5kv67NKmZ_chd7KYrup4K8MefIjCiklO73HvcbH1mpcXuRENeRt0Tm7VI5ZJfc0M2NmFo8AJQh-pjWFbR0MPhJ5tos-I7vU42cvBAGko6wY4esvaFr1gnlmpPHhXK47cSAlcMqesKLLGVKopjGLI66o4AOSe_P5JhEig:1p2U8x:dB5eRvHaUwmORgYNkYPKucUc5ULkG8up0BbxT-xL7IU','2022-12-20 09:21:39.772568'),('ygrixkcj1np8zrb7r2elnn602kl2j9id','e30:1ozs57:DUFuQGHTL1N_nq6YehX8YEL0AXQzH_DT5Fv4BiADMBE','2022-12-13 04:18:53.987776'),('ykwukxnm2c9melt8mercgu7659dsv7r3','e30:1p6R6P:I0CiyaQiwzbZTmRVnrJJItkUZ301TFwogF8AGcVk0XU','2022-12-31 06:55:21.171377'),('ypb98qvbqku8qe0z2dpop6quyongwtqu','e30:1p2Bme:4KTMEYuIplZfBaujVAt82cV5w75qU4so8ZrmfGbCWUs','2022-12-19 13:45:24.459940'),('yzlu14yrvj514y1i1zwhcrzgmhzhe7m4','e30:1p64TR:HABvrggpSYRfASk9wfX38nSirsFKg03HfwIimNEvx-U','2022-12-30 06:45:37.196417'),('z0nixqnr10mqf4fb8uegt1tsmwvixte0','e30:1p0Mub:1g0Pwna7tSqsrOoSbxrcav__ATr2bEKTo2uHC7oABfw','2022-12-14 13:14:05.879616'),('z0t2er2zvj2oxfhog4bbjl4dcqlijgjv','e30:1p6Xcs:7fptTf0ez5C-jNMtfLQ0vmPKStS5YDE-VvCsd50SLJo','2022-12-31 13:53:18.789385'),('z745et4yr9yzz3n0ixbgtt9vy6ffptpj','e30:1p6Jil:ec5k_DGPpFVmX-tTz2_V-d5KEmQX7zn3KlbLRKmamH4','2022-12-30 23:02:27.473441'),('z7ard1hs61xhybvhcmcguzdlk7un8yoo','e30:1p0n5k:clr1zrI0jhXy_W5bwsoIGjqAZG2QNqpeqDEIq1od94M','2022-12-15 17:11:20.098245'),('z7ojvf7z41khmvz0kpfhb6qc5gzmnb58','e30:1p01o5:OwlAvzHcI5OF6dnqeucMxQS0a8dSsSht66v6k1ydXpY','2022-12-13 14:41:57.325375'),('zg61vdlwwbev0f99u40xg99mn5bpusy1','e30:1p56zE:K8E_tpgLUm7RUZsMgZcJ7i7bjlMEO8REKmP2WYKGQoI','2022-12-27 15:14:28.637294'),('zjzy1wc180gjfowaxghqrr502a3oit76','e30:1p5q2a:NFKY9jWYSkORos8oKPa-FSIanbEXEXODwBwJQaP87bw','2022-12-29 15:20:56.308910'),('zltcbl445v6s734rtv6se23m4cv19moe','e30:1ozkOi:CDlfhB1ronkcgAXcOvH1IgLEeqlyXPwlLNeKaLh34Vo','2022-12-12 20:06:36.295213'),('zrhwmxcszooox0zu2u5lqgkbo8o32xtx','e30:1p5l10:OStzi3QCeaFxDn4uXWKwLmTOvlraHl18vFnuVJYyljM','2022-12-29 09:58:58.075839'),('zz0h5rkknxdfsnbbp8q7x4juu8lbeumy','e30:1p43Rm:cKoyciLOKGKQyyRCtC0hF4BJFhG6wCKAbDauu0nr_9k','2022-12-24 17:15:34.426270');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-19 12:15:28
