CREATE DATABASE  IF NOT EXISTS `alumini_data` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alumini_data`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: alumini_data
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
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_details` (
  `id` int NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` VALUES (1,'admin','admin'),(1,'admin','admin'),(1,'admin','admin');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alu_msg_details`
--

DROP TABLE IF EXISTS `alu_msg_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alu_msg_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL,
  `rid` int NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alu_msg_details`
--

LOCK TABLES `alu_msg_details` WRITE;
/*!40000 ALTER TABLE `alu_msg_details` DISABLE KEYS */;
INSERT INTO `alu_msg_details` VALUES (5,8,9,'hi','2017-03-22 10:02:31','santosh'),(6,8,9,'hi ','2017-03-22 10:04:40','santosh'),(7,11,11,'DM','2017-04-03 18:24:43','DM'),(8,14,12,'hi ramesh','2017-04-05 17:46:14','dhareppa'),(4,3,5,'Hi Bhushan\r\nThis is Arun','2010-03-13 17:58:34','Arun Patil'),(9,1,3,'HIII\r\nMaga','2022-09-05 19:25:01','ramesh'),(10,93,95,'HE  Sangamesh Good Morning','2022-09-06 13:05:46','Sangamesh'),(11,95,95,'hghjhgh','2022-09-06 14:13:43','Sangamesh Padanoor'),(12,95,95,'null','2022-09-06 14:40:58','Sangamesh Padanoor'),(13,95,95,'Heee','2022-09-06 14:42:18','Sangamesh Padanoor'),(14,95,95,'hghgh','2022-09-06 14:45:41','Sangamesh Padanoor'),(16,104,121,'Hiii Pavan','2022-09-13 23:05:06','sangamesh'),(17,121,104,'Hiii Sangamesh','2022-09-13 23:05:57','Pavan Desai'),(18,121,104,'Hello Sangamesh How are U','2022-09-19 17:36:38','Pavan Desai'),(19,104,118,'Hii   ','2022-09-20 11:59:57','sangamesh'),(20,104,121,'Hello Pavan I am fine, What about you?','2022-10-18 17:39:35','sangamesh');
/*!40000 ALTER TABLE `alu_msg_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumni_details`
--

DROP TABLE IF EXISTS `alumni_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `branch` varchar(80) NOT NULL,
  `yop` varchar(10) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `usn` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni_details`
--

LOCK TABLES `alumni_details` WRITE;
/*!40000 ALTER TABLE `alumni_details` DISABLE KEYS */;
INSERT INTO `alumni_details` VALUES (121,'Pavan Desai','pavan321','MCA','2016','Dharwad','6325478510','pavandesail@gmail.com','1NH16MC062'),(122,'Neevash','neevash123','Mca','2013','Bangalore, Karnataka','5621548756','neevash@gmail.com','1BC21BD021'),(118,'Akash','akash123','MBA','2022','Kalaburgi','5621458796','akash@gmail.comm','1NH18MC032'),(119,'Satish','satish321','MCOM','2020','Vijayapura','5896147852','satish@gmail.com','1NH15CS002');
/*!40000 ALTER TABLE `alumni_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_list`
--

DROP TABLE IF EXISTS `friend_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_list` (
  `sno` int NOT NULL,
  `u_id` int NOT NULL,
  `f_id` int NOT NULL,
  `u_type` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_list`
--

LOCK TABLES `friend_list` WRITE;
/*!40000 ALTER TABLE `friend_list` DISABLE KEYS */;
INSERT INTO `friend_list` VALUES (1,1,2,'S'),(2,1,3,'S'),(1,1,2,'S'),(2,1,3,'S'),(1,1,2,'S'),(2,1,3,'S');
/*!40000 ALTER TABLE `friend_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(40) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES (15,'Diwali Festival','In our college celebrating Diwali festival on 21 OCT 2022, \r\nYou are invited to this festival.','2022-10-18 17:46:30'),(6,'Teachers Day Event','On 5-09-2022\r\nNew Horizon college of engineering, Bangalore','2022-09-05 19:29:52'),(7,'Sargam Event ','From New Horizon College Of Engineering, Bangalore','2022-09-05 20:02:08'),(8,'dddddd','vvvvvvvvvvv','2022-09-05 20:10:54'),(9,'Hello ','&#128077;&#128530;','2022-09-05 20:16:12'),(10,'sargam Event','On Aug','2022-09-05 20:24:18'),(11,'','','2022-09-07 15:32:59'),(12,'Hello ','Good night;','2022-09-08 23:44:33'),(13,'sargam Event','Hello dear friends on ---------- we have sargam event in our college','2022-09-13 00:03:54'),(14,'sargam Event','This is about sargam event','2022-09-19 17:41:26');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_details`
--

DROP TABLE IF EXISTS `msg_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msg_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL,
  `rid` int NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_details`
--

LOCK TABLES `msg_details` WRITE;
/*!40000 ALTER TABLE `msg_details` DISABLE KEYS */;
INSERT INTO `msg_details` VALUES (13,3,1,'hi raju','2017-04-05 17:52:57','vishu'),(12,2,1,'hi','2017-03-22 10:00:14','kartik'),(10,1,2,'hi i am raju','2017-03-22 09:50:52','raju'),(11,1,2,'hi this is raju','2017-03-22 09:59:23','raju'),(7,1,5,'Hi Anop.\r\nWhere r u?\r\n','2010-03-13 13:00:39','Bhushan'),(14,1,1,'Hello Macha','2022-09-06 23:12:18','raju'),(15,1,1,'dd','2022-09-06 23:29:57','raju'),(16,1,1,'Good night','2022-09-06 23:31:02','raju'),(17,1,17,'HIIIIIIIIIIII','2022-09-07 17:52:27','rohit'),(18,30,27,'Hello Rakesh ','2022-10-18 16:33:50','Sangamesh Padanoor');
/*!40000 ALTER TABLE `msg_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(40) NOT NULL,
  `s_pass` varchar(25) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `year` varchar(5) NOT NULL,
  `s_address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usn` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (28,'Mahesh','mahesh321','Conmputer Science','1','Vijayapura, Karnataka','5621457852','mahesh@gmail.com','1NH20MC062'),(27,'Rakesh','rakesh123','Mca','2','Kadubisanahalli, Bangalore, Karnataka','5214865264','rakesh@gmail.com','1NH20MC061'),(24,'sangamesh','aaa123','Mba','2','Bangalore','1234567845','sangameshpadanoor@gmail.com','jhjhhj'),(29,'Ramesh','ramesh123','Mca','1','Kolar, Karnataka','7412547845','pawarramesh@gmail.com','1NH20MC022'),(30,'Sangamesh Padanoor','123sangamesh','Mca','1','Indi, Vijayapura, Karnataka','9164105502','sangameshP@gmail.com','1NH21MC082');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 20:16:30
