-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: ktp
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `courseno` char(10) NOT NULL,
  `coursename` char(20) NOT NULL,
  `cno` char(10) NOT NULL,
  `coursetime` char(20) NOT NULL,
  PRIMARY KEY (`courseno`),
  KEY `cno` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('08305002','线性代数','1001','一3-4'),('08305003','操作系统','1002','二1-2');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursestudent`
--

DROP TABLE IF EXISTS `coursestudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coursestudent` (
  `courseno` char(10) NOT NULL,
  `cno` char(10) NOT NULL,
  `sno` char(10) NOT NULL,
  PRIMARY KEY (`courseno`,`sno`),
  KEY `cno` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursestudent`
--

LOCK TABLES `coursestudent` WRITE;
/*!40000 ALTER TABLE `coursestudent` DISABLE KEYS */;
INSERT INTO `coursestudent` VALUES ('08305002','1001','131001'),('08305002','1001','131003'),('08305002','1001','131004'),('08305003','1002','131003');
/*!40000 ALTER TABLE `coursestudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `coursestudentname`
--

DROP TABLE IF EXISTS `coursestudentname`;
/*!50001 DROP VIEW IF EXISTS `coursestudentname`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `coursestudentname` AS SELECT 
 1 AS `courseno`,
 1 AS `cno`,
 1 AS `sname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sign`
--

DROP TABLE IF EXISTS `sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sign` (
  `courseno` char(10) NOT NULL,
  `sno` char(10) NOT NULL,
  `signcode` char(10) DEFAULT NULL,
  PRIMARY KEY (`courseno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign`
--

LOCK TABLES `sign` WRITE;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
INSERT INTO `sign` VALUES ('08305002','131003','abcd'),('08305002','131004',''),('08305003','131003','good');
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `signname`
--

DROP TABLE IF EXISTS `signname`;
/*!50001 DROP VIEW IF EXISTS `signname`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `signname` AS SELECT 
 1 AS `courseno`,
 1 AS `signcode`,
 1 AS `sname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `sno` char(10) NOT NULL,
  `sname` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `tel` char(13) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `uni` char(30) DEFAULT NULL,
  `academy` char(30) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('131001','张一一','abc123','1234567890001','男','上海大学','通信学院'),('131002','张二二','abc123','1234567890200','女','上海工程技术大学','计算机学院'),('131003','张三三','abc123','1234567890300','男','上海大学','材料学院'),('131004','张四四','abc123','1234567890400','男','复旦大学','法学院'),('131005','张五五','abc123','1234567890500','男','上海海事大学','海事学院'),('131006','张六六','abc123','1234567890700','男','上海财经大学','会计学院'),('131007','张七七','abc123','1234567890700','男','香港国际大学','神学系');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `cno` char(10) NOT NULL,
  `cname` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `tel` char(13) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `uni` char(30) DEFAULT NULL,
  `academy` char(20) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('1001','张一','abc123','1234567890001','男','上海大学','计算机学院'),('1002','张二','abc123','1234567890002','女','上海交通大学','材料学院'),('1003','张三','abc123','1234567890003','男','复旦大学','理学院'),('1004','张四','abc123','1234567890004','男','同济大学','工商管理学院'),('1005','张五','abc123','1234567890005','女','复旦大学','哲学院'),('1006','张六','abc123','1234567890006','女','上海大学','法学院'),('1007','张七','abc123','1234567890007','男','香港国际大学','民俗学'),('1008','张八','abc123','1234567890008','女','洛阳理工学院','通信系'),('1009','张九','abc123','1234567890009','男','云南大学','茶叶采摘系');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `coursestudentname`
--

/*!50001 DROP VIEW IF EXISTS `coursestudentname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ktpuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coursestudentname` AS select `a`.`courseno` AS `courseno`,`a`.`cno` AS `cno`,`b`.`sname` AS `sname` from (`coursestudent` `a` join `student` `b`) where (`a`.`sno` = `b`.`sno`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `signname`
--

/*!50001 DROP VIEW IF EXISTS `signname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ktpuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `signname` AS select `a`.`courseno` AS `courseno`,`a`.`signcode` AS `signcode`,`b`.`sname` AS `sname` from (`sign` `a` join `student` `b`) where (`a`.`sno` = `b`.`sno`) */;
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

-- Dump completed on 2019-08-13 21:00:55
