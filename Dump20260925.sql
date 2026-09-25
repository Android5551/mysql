-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: p04
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `p04`;
USE `p04`;
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
-- Table structure for table `st_college`
--

DROP TABLE IF EXISTS `st_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_college` (
  `ID` bigint NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `PHONE_NO` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_college`
--

LOCK TABLES `st_college` WRITE;
/*!40000 ALTER TABLE `st_college` DISABLE KEYS */;
INSERT INTO `st_college` VALUES (2,'Truba','Indore','Indore','Indore','999999','Rahul Sahu','rahul.sahu@nenosystems.com','2014-07-19 17:42:17','2026-05-15 16:19:14'),(3,'SVIM','Gumasta Nagar','MP','Indore','9999999999','Rahul Sahu','Rahul Sahu','2014-07-19 17:42:17','2014-07-19 17:42:17'),(4,'J.I.Y.Indore','Rau','Madhya Pradesh','khargone','1234567890',NULL,NULL,NULL,NULL),(5,'J.I.U.Institute','Indore Road Rau','Gujrat','Bhopal','9165254357',NULL,NULL,NULL,NULL),(6,'M.I.T.Ujjain','Ujjain Road','Madhya Pradesh','Indore','1234567890',NULL,NULL,NULL,NULL),(7,'Oriyantel Tech','Mumbai road','Madhya Predash','Ahemdabad','985658568',NULL,NULL,NULL,NULL),(8,'M.D.Mansore','Nimach Road','Mansore','Mansore','7896321450',NULL,NULL,NULL,NULL),(9,'M.Y.Univercity','khargone','Madhya Pradesh','khargone','1234567890',NULL,NULL,NULL,NULL),(10,'TestCollege','Testing Adress','Test State','Test city','78384939988','an@gmail.com','an@gmail.com','2026-07-04 15:57:40','2026-07-04 15:57:40');
/*!40000 ALTER TABLE `st_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_course`
--

DROP TABLE IF EXISTS `st_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_course` (
  `ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `DURATION` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_course`
--

LOCK TABLES `st_course` WRITE;
/*!40000 ALTER TABLE `st_course` DISABLE KEYS */;
INSERT INTO `st_course` VALUES (1,'Java','Java is a programing language','02-04','root@sunilos.com','root@sunilos.com','2026-05-30 11:35:37','2026-05-30 11:35:37'),(2,'Test','Testing','12 months','root@sunilos.com','root@sunilos.com','2026-07-04 15:59:41','2026-07-04 15:59:41');
/*!40000 ALTER TABLE `st_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_faculty`
--

DROP TABLE IF EXISTS `st_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_faculty` (
  `ID` bigint NOT NULL,
  `COLLEGE_ID` bigint DEFAULT NULL,
  `COLLEGE_NAME` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `DATE_OF_BIRTH` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_faculty`
--

LOCK TABLES `st_faculty` WRITE;
/*!40000 ALTER TABLE `st_faculty` DISABLE KEYS */;
INSERT INTO `st_faculty` VALUES (1,5,'J.I.U.Institute','Ram','Sharma','ram@gmail.com','9856569858','07 Ganga Bag Colony','Male','2002-12-12 00:00:00','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2026-05-14 12:22:23','2026-05-14 12:22:23'),(2,4,'J.I.Y.Indore','Test','Testing','test@testmail.com','8372932277','test','Male','2008-12-09 00:00:00','an@gmail.com','an@gmail.com','2026-07-04 15:44:08','2026-07-04 15:44:08');
/*!40000 ALTER TABLE `st_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_marksheet`
--

DROP TABLE IF EXISTS `st_marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_marksheet` (
  `ID` bigint NOT NULL,
  `ROLL_NO` varchar(255) DEFAULT NULL,
  `STUDENT_ID` bigint DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PHYSICS` int DEFAULT NULL,
  `CHEMISTRY` int DEFAULT NULL,
  `MATHS` int DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_marksheet`
--

LOCK TABLES `st_marksheet` WRITE;
/*!40000 ALTER TABLE `st_marksheet` DISABLE KEYS */;
INSERT INTO `st_marksheet` VALUES (1,'1',2,'Manish Sharma',99,99,99,'Rahul Sahu','rahul.sahu@nenosystems.com','2014-07-19 17:45:57','2014-07-21 19:14:20'),(2,'2',2,'Manish Sharma',55,55,55,NULL,NULL,NULL,NULL),(3,'3',2,'Manish Sharma',77,77,77,NULL,NULL,NULL,NULL),(4,'4',1,'Rahul Sahu',88,88,85,NULL,NULL,NULL,NULL),(5,'5',5,'Sivam Kumar',74,74,78,NULL,NULL,NULL,NULL),(6,'6',6,'Gurpreet Singh',55,55,55,NULL,NULL,NULL,NULL),(7,'7',5,'Sivam Kumar',82,82,89,NULL,NULL,NULL,NULL),(8,'9',6,'Gurpreet Singh',88,99,78,NULL,NULL,NULL,NULL),(9,'10',7,'Viju kumar chandore',77,77,77,NULL,NULL,NULL,NULL),(10,'11',3,'Vipin Chandore',88,99,79,NULL,NULL,NULL,NULL),(11,'12',7,'Viju kumar chandore',88,88,88,NULL,NULL,NULL,NULL),(12,'13',1,'Rahul Sahu',85,88,99,NULL,NULL,NULL,NULL),(13,'62',3,'Vipin Chandore',100,100,100,'an@gmail.com','an@gmail.com','2026-07-04 16:16:27','2026-07-04 16:16:27');
/*!40000 ALTER TABLE `st_marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `ID` bigint NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
INSERT INTO `st_role` VALUES (1,'Admin','Administrator Role','Admin','Admin','2014-07-19 11:43:36','2014-07-19 11:43:36'),(2,'Student','Student Role','Rahul Sahu','Rahul Sahu','2014-07-19 11:49:09','2014-07-19 11:49:09'),(3,'College','College Role','Rahul Sahu','Rahul Sahu','2014-07-19 11:49:30','2014-07-19 11:49:30'),(4,'KIOSK','KIOSK Role','Rahul Sahu','Rahul Sahu','2014-07-19 11:49:48','2014-07-19 11:49:48'),(5,'TestRole','Test','root@sunilos.com','root@sunilos.com','2026-07-16 17:21:03','2026-07-16 17:21:03');
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_student`
--

DROP TABLE IF EXISTS `st_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_student` (
  `ID` bigint NOT NULL,
  `COLLEGE_ID` bigint DEFAULT NULL,
  `COLLEGE_NAME` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` datetime DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_student`
--

LOCK TABLES `st_student` WRITE;
/*!40000 ALTER TABLE `st_student` DISABLE KEYS */;
INSERT INTO `st_student` VALUES (1,5,'J.I.U.Institute','Rahul','Sahu','2014-07-17 00:00:00','123456789','ram@gmail.com',NULL,NULL,NULL,NULL),(3,5,'J.I.U.Institute','Vipin','Chandore','1991-12-05 00:00:00','9165254357','Vipin@gmail.com',NULL,NULL,NULL,NULL),(4,6,'M.I.T.Ujjain','Deepak','kumar','1991-10-05 00:00:00','9165254357','d@gmail.com',NULL,'root@sunilos.com',NULL,'2026-05-16 16:54:13'),(5,6,'M.I.T.Ujjain','Sivam','Kumar','2026-06-02 00:00:00','7894563210','g@gmail.com',NULL,'root@sunilos.com',NULL,'2026-06-01 15:52:26');
/*!40000 ALTER TABLE `st_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subject`
--

DROP TABLE IF EXISTS `st_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subject` (
  `ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `COURSE_ID` bigint DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subject`
--

LOCK TABLES `st_subject` WRITE;
/*!40000 ALTER TABLE `st_subject` DISABLE KEYS */;
INSERT INTO `st_subject` VALUES (1,'String','String is a array of char',1,'root@sunilos.com','root@sunilos.com','2026-05-30 11:36:13','2026-05-30 11:36:13'),(2,'Test Subject','Test description',2,'root@sunilos.com','root@sunilos.com','2026-07-04 16:01:22','2026-07-04 16:01:22');
/*!40000 ALTER TABLE `st_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `ID` bigint NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `ROLE_ID` bigint DEFAULT NULL,
  `UNSUCCESSFUL_LOGIN` int DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `USER_LOCK` varchar(255) DEFAULT NULL,
  `REGISTERED_IP` varchar(255) DEFAULT NULL,
  `LAST_LOGIN_IP` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (1,'Anshul','Prajapati','an@gmail.com',NULL,'2026-05-13 00:00:00','',0,0,'M',NULL,'Inactive',NULL,NULL,'Rahul Sahu','an@gmail.com','2014-07-19 17:39:20','2026-07-04 16:18:30'),(2,'Rakesh','Sen','vipinchandore@gmail.com','rr','2014-07-21 00:00:00','1234567890',2,0,'M','2014-07-19 20:18:49','Inactive','0:0:0:0:0:0:0:1','192.168.1.5','Rahul Sahu','Rahul Sahu','2014-07-19 17:39:20','2014-07-19 20:19:00'),(3,'ramlakhan','chandore','vipinchandorerrr@gmail.com','123','1991-12-05 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,NULL),(4,'vijay','chouhan','vijay@gmail.com','123','1991-10-05 00:00:00',NULL,1,0,'M',NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,NULL),(6,'test','user','testuser@testusermail.com','testuser','2008-12-02 00:00:00',NULL,2,0,'M',NULL,'Inactive',NULL,NULL,'an@gmail.com','an@gmail.com','2026-07-04 15:48:13','2026-07-04 15:48:13'),(7,'piyush kumar','singh','singh1223@protonmail.com','Proton^6sagar!@#','2008-12-09 00:00:00',NULL,4,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2026-07-16 11:16:41','2026-07-16 11:16:41');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: modules
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `modules`;
USE `modules`;
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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branchId` int NOT NULL,
  `branchName` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `managerName` varchar(45) DEFAULT NULL,
  `contactNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`branchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'South Branch','Mumbai','Rajesh Sharma','9876543210'),(3,'North Branch','Delhi','Amit Verma','9988776655'),(4,'East Branch','Kolkata','Sneha Das','9012345678'),(5,'West Branch','Ahmedabad','Vikram Shah','8899776655');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `collegeId` int NOT NULL,
  `collegeName` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `university` varchar(20) DEFAULT NULL,
  `contactNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`collegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'Deendayal College','Jabalpur','Deendayal University','9874565599');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventId` bigint NOT NULL,
  `eventName` varchar(55) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `venue` varchar(55) DEFAULT NULL,
  `organizer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'java workshop','2026-08-21','Indore','Ravi'),(2,'sql workshop','2026-08-21','Mumbai','Sunny');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `examId` int NOT NULL,
  `examName` varchar(10) DEFAULT NULL,
  `examDate` date DEFAULT NULL,
  `totalMarks` int DEFAULT NULL,
  `passingMarks` int DEFAULT NULL,
  PRIMARY KEY (`examId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'Maths','2026-07-31',100,33),(2,'Phy','2026-08-31',100,33),(3,'Chm','2026-09-20',100,33);
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `facultyId` int NOT NULL,
  `facultyName` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `experience` int DEFAULT NULL,
  PRIMARY KEY (`facultyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Abhay','Java','M.Tech',15),(2,'Ram','Philosophy','M.Phil',10);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` bigint NOT NULL,
  `productName` varchar(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'b850x',20000,1,'Motherbd'),(2,'Ryzn9600x',20000,1,'Processor'),(4,'Noctuad15',10000,1,'CoolingFan'),(5,'Lancool217',14000,1,'Cabinet'),(312345678,'flareX',12000,2,'Memory');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `resultId` int NOT NULL,
  `studentId` int DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `resultStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`resultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (121,1,32.89,'F','Fail'),(122,2,42.89,'C','Pass'),(123,3,73.89,'B','Pass');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `id` int NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `loginId` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (1,'Mahendra Singh','Dhoni','dhoni@gmail.com','thala','2026-06-01'),(2,'Virat','Kohli','virat@gmail.com','king','2026-06-02'),(3,'Rohit','Sharma','rohit@gmail.com','hitman','2026-01-01'),(4,'Sachin','Tendulkar','sachin@gmail.com','master','2026-01-01'),(5,'Sourav','Ganguly','sourav@gmail.com','dada','2026-06-05'),(6,'Yuvraj','Singh','yuvi@gmail.com','yuvi','2026-06-06'),(7,'Shyam','Yadav','shyam@gmail.com','shyam123','2001-02-02'),(8,'xyz','xyz','xyz@gmial.com','xyz123','2001-02-02'),(10,'Ayan','Choudhary','ayan123@gmail.com','ayan123','2004-10-09'),(11,'Akash','pandey','akash@gmail.com','123','2003-01-18'),(12,'Avidesh','kumar','avi@gmail.com','123','2000-10-20'),(13,'Rakesh','Jain','rj@gmail.com','rj','2010-02-18'),(14,'raju','pandey','rajupandey@gmail.com','12345678','2026-08-05'),(15,'newuser','user','new@gmail.com','1234567','2019-01-20'),(16,'yash','rastogi','yash@rastogi.com','1234qwer','2026-08-23'),(17,'Admin','User','admin@user','12345678','2026-08-23');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicleId` bigint NOT NULL,
  `vehicleName` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`vehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'ford ecosport','Titanium','white',1200000),(2,'honda city','ZX','red',1500000);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: project04
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `project04`;
USE `project04`;
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
-- Table structure for table `st_college`
--

DROP TABLE IF EXISTS `st_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_college` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_college`
--

LOCK TABLES `st_college` WRITE;
/*!40000 ALTER TABLE `st_college` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_course`
--

DROP TABLE IF EXISTS `st_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_course` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_course`
--

LOCK TABLES `st_course` WRITE;
/*!40000 ALTER TABLE `st_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_faculty`
--

DROP TABLE IF EXISTS `st_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_faculty` (
  `id` bigint NOT NULL,
  `college_id` bigint DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_st_faculty_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_faculty`
--

LOCK TABLES `st_faculty` WRITE;
/*!40000 ALTER TABLE `st_faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_marksheet`
--

DROP TABLE IF EXISTS `st_marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_marksheet` (
  `id` bigint NOT NULL,
  `roll_no` varchar(45) DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `physics` int DEFAULT NULL,
  `chemistry` int DEFAULT NULL,
  `maths` int DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_marksheet_student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_marksheet`
--

LOCK TABLES `st_marksheet` WRITE;
/*!40000 ALTER TABLE `st_marksheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
INSERT INTO `st_role` VALUES (1,'admin','admin role','root','root','2026-09-23 14:04:47','2026-09-23 14:04:47'),(2,'student','student role','root','root','2026-09-23 14:05:39','2026-09-23 14:05:39'),(3,'faculty','faculty role','root','root','2026-09-23 14:05:55','2026-09-23 14:05:55'),(4,'college','college role','root','root','2026-09-23 14:06:04','2026-09-23 14:06:04'),(5,'KIOSK','KIOSK role','root','root','2026-09-23 14:06:18','2026-09-23 14:06:18');
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_student`
--

DROP TABLE IF EXISTS `st_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_student` (
  `id` bigint NOT NULL,
  `college_id` bigint DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_college` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_student`
--

LOCK TABLES `st_student` WRITE;
/*!40000 ALTER TABLE `st_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subject`
--

DROP TABLE IF EXISTS `st_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subject` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subject_course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subject`
--

LOCK TABLES `st_subject` WRITE;
/*!40000 ALTER TABLE `st_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_timetable`
--

DROP TABLE IF EXISTS `st_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_timetable` (
  `id` bigint NOT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_time` varchar(45) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_timetable_course` (`course_id`),
  KEY `fk_timetable_subject` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_timetable`
--

LOCK TABLES `st_timetable` WRITE;
/*!40000 ALTER TABLE `st_timetable` DISABLE KEYS */;
INSERT INTO `st_timetable` VALUES (1,'3','-','1989-05-13 00:00:00','aa',1,'Java',2,'String','Piyush','Piyush','1970-01-01 05:30:00','1970-01-01 05:30:00'),(2,'3','-','2026-09-15 00:00:00','10:00 AM',1,'C++',1,'String','Piyush','Piyush','2026-08-31 15:11:22','2026-08-31 15:11:22');
/*!40000 ALTER TABLE `st_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `unsuccessful_login` int DEFAULT '0',
  `gender` varchar(45) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `user_lock` varchar(255) DEFAULT NULL,
  `registered_ip` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: rays
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `rays`;
USE `rays`;
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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(45) DEFAULT NULL,
  `HODName` varchar(45) DEFAULT NULL,
  `TotalFaculty` int DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CSE','Harish',10,'Indore'),(2,'EEE','Ramesh',20,'Vidisha'),(3,'E&I','Suresh',34,'Indore'),(4,'CSE','Amit',45,'Bhopal'),(5,'IT','Neha',28,'Gwalior'),(6,'ME','Rajesh',50,'Jabalpur'),(7,'CE','Pooja',32,'Ujjain'),(8,'MCA','Vikram',41,'Sagar'),(9,'MBA','Anjali',37,'Satna'),(10,'ETC','Rahul',29,'Dewas'),(11,'DS','Kiran',35,'Ratlam'),(12,'ECE','Sunil',48,'Rewa');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_module`
--

DROP TABLE IF EXISTS `department_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_module` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(45) DEFAULT NULL,
  `HODName` varchar(45) DEFAULT NULL,
  `TotalFaculty` int DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_module`
--

LOCK TABLES `department_module` WRITE;
/*!40000 ALTER TABLE `department_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Admin'),(2,'Developer'),(3,'Manager'),(4,'HR'),(5,'Account');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emim`
--

DROP TABLE IF EXISTS `emim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emim` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `emiDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emiDate` (`emiDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emim`
--

LOCK TABLES `emim` WRITE;
/*!40000 ALTER TABLE `emim` DISABLE KEYS */;
INSERT INTO `emim` VALUES (1,'ram',2500,'2001-02-02'),(2,'ram',2500,'2001-03-02'),(3,'ram',2400,'2001-04-02'),(4,'mohan',12000,'2009-01-01'),(5,'mohan',12000,'2009-02-01'),(6,'mohan',12000,'2009-03-01'),(7,'mohan',12000,'2009-04-01');
/*!40000 ALTER TABLE `emim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `deptId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee` (`deptId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`deptId`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ram','TCS',45000,2),(2,'Shyam','Infosys',52000,3),(4,'Neha','Accenture',60000,2),(5,'Priya','Capgemini',55000,2),(6,'Rahul','IBM',70000,2),(7,'Sneha','Cognizant',51000,2),(8,'Karan','HCL',47000,1),(9,'Anjali','Tech Mahindra',53000,2),(10,'Vikas','Oracle',85000,2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marksheet`
--

DROP TABLE IF EXISTS `marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marksheet` (
  `id` int NOT NULL,
  `rollno` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phy` int DEFAULT NULL,
  `chm` int DEFAULT NULL,
  `maths` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marksheet`
--

LOCK TABLES `marksheet` WRITE;
/*!40000 ALTER TABLE `marksheet` DISABLE KEYS */;
INSERT INTO `marksheet` VALUES (1,101,'Ram',45,65,42),(2,102,'Shyam',35,54,83),(4,104,'Amit',88,91,85),(5,105,'Rohit',72,68,70),(6,106,'Suresh',34,29,41),(7,107,'Neha',95,92,96),(8,108,'Kavita',61,64,58),(9,109,'Vikas',22,31,28),(10,110,'Pooja',79,83,77),(11,111,'Ankit',55,48,52),(12,112,'Rahul',32,35,30),(13,113,'Sunita',67,71,69),(16,144,'Roshan',100,100,100),(17,191,'Avi',32,34,23);
/*!40000 ALTER TABLE `marksheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: monsoon
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `monsoon`;
USE `monsoon`;
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ram','Rays',45000),(2,'Shyam','Infosys',52000),(3,'Amit','TCS',48000),(4,'Neha','Wipro',55000),(5,'Priya','Google',60000),(6,'Rahul','Microsoft',47000),(7,'Sneha','Amazon',51000),(8,'Vikram','Adobe',68000),(9,'Anjali','Oracle',53000),(10,'Karan','IBM',72000),(11,'Pooja','Accenture',49000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marksheet`
--

DROP TABLE IF EXISTS `marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marksheet` (
  `id` int NOT NULL,
  `rollNo` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phy` int DEFAULT NULL,
  `chm` int DEFAULT NULL,
  `maths` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marksheet`
--

LOCK TABLES `marksheet` WRITE;
/*!40000 ALTER TABLE `marksheet` DISABLE KEYS */;
INSERT INTO `marksheet` VALUES (1,101,'Ram',45,65,42),(2,102,'Shyam',78,62,63),(3,103,'Pawan',36,52,41),(4,104,'Amit',88,91,85),(5,105,'Rohit',72,68,70),(6,106,'Suresh',34,29,41),(7,107,'Neha',95,92,96),(8,108,'Kavita',61,64,58),(9,109,'Vikas',22,31,28),(10,110,'Pooja',79,83,77),(11,111,'Ankit',55,48,52),(12,112,'Rahul',32,35,30),(13,113,'Sunita',67,71,69),(14,114,'Manoj',40,33,37),(15,115,'Priya',90,88,92);
/*!40000 ALTER TABLE `marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `Roll_No` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ramesh','BCA',2344),(2,'Suresh','BBA',2345),(3,'Mahesh','BCA',2346),(4,'Rajesh','MCA',2347),(5,'Anil','BCA',2348),(6,'Vijay','BBA',2349),(7,'Amit','MCA',2350),(8,'Karan','BCA',2351),(9,'Rahul','BBA',2352),(10,'Pankaj','MCA',2353);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.30
CREATE DATABASE IF NOT EXISTS `demo`;
USE `demo`;
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
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `id` int NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `loginId` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (1,'Mahendra Singh','Dhoni','dhoni@gmail.com','thala','2026-06-01'),(2,'Virat','Kohli','virat@gmail.com','king','2026-06-02'),(3,'Rohit','Sharma','rohit@gmail.com','hitman','2026-01-01'),(4,'Sachin','Tendulkar','sachin@gmail.com','master','2026-01-01'),(10,'Ayan','Choudhary','ayan123@gmail.com','ayan123','2004-10-09'),(11,'Akash','pandey','akash@gmail.com','123','2003-01-18'),(12,'Avidesh','kumar','avi@gmail.com','123','2000-10-20'),(13,'Rakesh','Jain','rj@gmail.com','rj','2010-02-18'),(14,'raju','pandey','rajupandey@gmail.com','12345678','2026-08-05'),(15,'newuser','user','new@gmail.com','1234567','2019-01-20'),(16,'Rajni','Kant','raka@gmail.com','12','2026-09-15'),(17,'fdf','fdfd','fdf@gmail.com','12','2026-09-17');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 21:35:13
