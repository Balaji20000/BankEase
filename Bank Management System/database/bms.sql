-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bankmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `pin` varchar(10) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('','Wed Jun 19 14:49:28 IST 2024','Deposit','10000'),('751','Wed Jun 19 14:55:54 IST 2024','Deposit','150000'),('1012','Wed Jun 19 22:55:27 IST 2024','Deposit','20000'),('','Wed Jun 19 23:09:10 IST 2024','Withdraw','10000'),('','Wed Jun 19 23:14:54 IST 2024','Withdraw','100000'),('1012','Wed Jun 19 23:16:20 IST 2024','Withdraw','10000'),('1012','Thu Jun 20 01:07:30 IST 2024','Deposit','10000'),('1012','Thu Jun 20 01:12:05 IST 2024','Deposit','10000'),('1012','Thu Jun 20 01:12:13 IST 2024','withdraw','5000'),('1012','Thu Jun 20 01:13:09 IST 2024','withdraw','10000'),('1012','Thu Jun 20 01:13:17 IST 2024','withdraw','10000'),('1012','Thu Jun 20 01:15:07 IST 2024','withdraw','5000'),('1012','Thu Jun 20 01:15:53 IST 2024','Deposit','15000'),('1012','Thu Jun 20 01:16:12 IST 2024','Withdraw','10000'),('1012','Thu Jun 20 01:17:50 IST 2024','Deposit','10000'),('1012','Thu Jun 20 01:20:20 IST 2024','Deposit','10000'),('1012','Thu Jun 20 01:20:32 IST 2024','Withdraw','3000'),('1012','Thu Jun 20 01:24:32 IST 2024','withdraw','10000'),('1012','Thu Jun 20 01:24:40 IST 2024','withdraw','10000'),('1012','Thu Jun 20 01:24:54 IST 2024','withdraw','2000'),('1012','Fri Jun 21 21:02:30 IST 2024','Deposit','10000'),('1012','Fri Jun 21 21:02:36 IST 2024','withdraw','10000'),('1012','Sat Jun 22 01:09:28 IST 2024','Deposit','100000'),('1012','Sat Jun 22 13:29:40 IST 2024','Withdraw','10000'),('1012','Sat Jun 22 14:56:00 IST 2024','Deposit','10000'),('1012','Sat Jun 22 14:56:08 IST 2024','Withdraw','5000'),('1012','Sat Jun 22 14:56:14 IST 2024','withdraw','2000'),('3690','Sat Jun 22 15:02:30 IST 2024','Deposit','50000'),('3690','Sat Jun 22 15:02:37 IST 2024','Withdraw','10000'),('3690','Sat Jun 22 15:02:47 IST 2024','withdraw','5000');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `formno` varchar(20) DEFAULT NULL,
  `cardnumber` varchar(25) DEFAULT NULL,
  `pinnumber` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('','5040935925567351','9021'),('6793','5040935930099414','751'),('3325','5040936078950157','1012'),('4757','5040936019153828','3690'),('3473','5040936077653082','5604'),('5150','5040936019621261','5604'),('7246','5040936051692292','3095'),('4645','5040935998396761','107'),('2413','5040935944473438','2176'),('3041','5040935973782660','9133'),('5144','5040936052568358','9786');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `formno` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `marital` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('3563','Balaji','sharad','16-Jun-2024','Male','balaji@gmail.com','Unmarried','B-14, Gangeshwar jyot chs','Dombivali','421202','Maharashtra'),('5559','Balaji','','','null','','null','','','',''),('8267','Balaji','','','null','','null','','','',''),('9526','Balaji','Sharad','09-Dec-2000','Male','balaji@gmail.com','Unmarried','B-14, Gangeshwar Jyot','Dombivali','421202','Maharashtra'),('3964','Balaji','','','null','','null','','','',''),('136','Vanshika','','','null','','null','','','',''),('393','Balaji','','','null','','null','','','',''),('1650','Nimit','','','null','','null','','','',''),('6793','Vanshika Dang','Nitin Dang','19-Dec-2002','Female','vanshu@gmail.com','Unmarried','B-14, Gangeshwar Jyot CHS','Dombivali','421202','Maharashtra'),('3325','Balaji Borhale','Sharad Borphale','09-Dec-2000','Male','balajiborphale101@gmail.com','Unmarried','B-14, Gangeshwar Jyot, M.Karve Road','Dombivali','421202','Maharashtra'),('4757','Madhuri Yadav','Mahesh Yadav','28-Apr-2001','Female','madhu@gmail.com','Unmarried','Patil galli','Ausa','413520','Maharashtra'),('452','BalajiB','','','null','','null','','','',''),('3473','Balaji Borphale','','','null','','null','','','',''),('5150','Vanshu','','','null','','null','','','',''),('7246','Nimit','','','null','','null','','','',''),('4645','Yash','','','null','','null','','','',''),('2413','Mangu','','','null','','null','','','',''),('3041','Balaji','Sharad','09-Dec-2000','Male','','Married','','','',''),('5144','Nimit','','','null','','null','','','','');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signupthree`
--

DROP TABLE IF EXISTS `signupthree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signupthree` (
  `formno` varchar(20) DEFAULT NULL,
  `accountType` varchar(40) DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `pinnumber` varchar(10) DEFAULT NULL,
  `facility` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signupthree`
--

LOCK TABLES `signupthree` WRITE;
/*!40000 ALTER TABLE `signupthree` DISABLE KEYS */;
INSERT INTO `signupthree` VALUES ('','Saving Account','5040936010259072','5401','ATM Card'),('','Fixed Deposit Account','5040935993369070','5681','ATM Card'),('','Current Account','5040935925567351','9021','ATM Card'),('6793','Saving Account','5040935930099414','751','ATM Card'),('3325','Saving Account','5040936078950157','1012','ATM Card'),('4757','Saving Account','5040936019153828','3690','ATM Card'),('3473','Saving Account','5040936077653082','5604','ATM Card'),('5150','Reccuring Deposit Account','5040936019621261','5604','ATM Card'),('7246','Reccuring Deposit Account','5040936051692292','3095','ATM Card'),('4645','Current Account','5040935998396761','107','ATM Card'),('2413','Saving Account','5040935944473438','2176','ATM Card'),('3041','Saving Account','5040935973782660','9133','ATM Card'),('5144','Current Account','5040936052568358','9786','Cheque Book');
/*!40000 ALTER TABLE `signupthree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signuptwo`
--

DROP TABLE IF EXISTS `signuptwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signuptwo` (
  `formno` varchar(20) DEFAULT NULL,
  `sreligion` varchar(20) DEFAULT NULL,
  `scategory` varchar(20) DEFAULT NULL,
  `sincome` varchar(20) DEFAULT NULL,
  `seducational` varchar(20) DEFAULT NULL,
  `soccupation` varchar(20) DEFAULT NULL,
  `span` varchar(20) DEFAULT NULL,
  `saadhar` varchar(20) DEFAULT NULL,
  `seniorcitizen` varchar(20) DEFAULT NULL,
  `existingaccount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signuptwo`
--

LOCK TABLES `signuptwo` WRITE;
/*!40000 ALTER TABLE `signuptwo` DISABLE KEYS */;
INSERT INTO `signuptwo` VALUES ('3964','Hindu','General','<5,00,000','Non-Graduate','Salaried','EWHGWG22','648097791111','no','No'),('136','Hindu','General','<5,00,000','Graduate','Salaried','EHG3YRR2','262627272727727','no','No'),('','Hindu','General','null','Non-Graduate','Salaried','e7234732','363736736127313','no','No'),('393','Hindu','General','null','Non-Graduate','Salaried','E27nd25e6','8327317318318','no','No'),('1650','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('6793','Hindu','General','<5,00,000','Graduate','Student','EOO2282U','2272798229121','no','No'),('3325','Hindu','General','Upto 10,00,000','Graduate','Business','EPBQ2331Q','625199997777','no','No'),('4757','Hindu','General','<5,00,000','Post-Graduate','Salaried','AWQO11221','111122223333','no','No'),('452','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('3473','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('5150','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('7246','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('4645','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('2413','Hindu','General','null','Non-Graduate','Salaried','','','null','null'),('3041','Hindu','General','null','Post-Graduate','Salaried','','','null','null'),('5144','Hindu','General','null','Non-Graduate','Salaried','','','null','null');
/*!40000 ALTER TABLE `signuptwo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 17:59:22
