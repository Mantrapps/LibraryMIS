-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Library
-- ------------------------------------------------------
-- Server version	5.7.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTHORS`
--

DROP TABLE IF EXISTS `AUTHORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHORS` (
  `Author_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18351 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Isbn` varchar(20) NOT NULL,
  `Isbn13` varchar(30) DEFAULT NULL,
  `Title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Authors` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CoverLink` varchar(200) DEFAULT NULL,
  `Publisher` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pages` int(11) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Isbn_UNIQUE` (`Isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=25001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BOOK_AUTHORS`
--

DROP TABLE IF EXISTS `BOOK_AUTHORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK_AUTHORS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Author_id` int(11) DEFAULT NULL,
  `Isbn` varchar(20) DEFAULT NULL,
  `Author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author` (`Author_id`),
  KEY `fk_isbn` (`Isbn`),
  CONSTRAINT `fk_author` FOREIGN KEY (`Author_id`) REFERENCES `AUTHORS` (`Author_id`),
  CONSTRAINT `fk_isbn` FOREIGN KEY (`Isbn`) REFERENCES `BOOK` (`Isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=58462 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BOOK_LOANS`
--

DROP TABLE IF EXISTS `BOOK_LOANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK_LOANS` (
  `Loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `Isbn` varchar(20) NOT NULL,
  `Card_id` int(11) unsigned zerofill DEFAULT NULL,
  `Date_out` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `Date_in` date DEFAULT NULL,
  `Status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Loan_id`),
  KEY `fk1_idx` (`Card_id`),
  KEY `fk2` (`Isbn`),
  CONSTRAINT `fk1` FOREIGN KEY (`Card_id`) REFERENCES `BORROWER` (`Card_id`),
  CONSTRAINT `fk2` FOREIGN KEY (`Isbn`) REFERENCES `BOOK` (`Isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BORROWER`
--

DROP TABLE IF EXISTS `BORROWER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BORROWER` (
  `Card_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Ssn` char(15) NOT NULL,
  `Bname` char(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  PRIMARY KEY (`Card_id`),
  UNIQUE KEY `BORROWER_Ssn_uindex` (`Ssn`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FINES`
--

DROP TABLE IF EXISTS `FINES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FINES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Loan_id` int(11) NOT NULL,
  `Fine_amt` decimal(20,6) DEFAULT NULL,
  `Paid` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_idx` (`Loan_id`),
  CONSTRAINT `fk` FOREIGN KEY (`Loan_id`) REFERENCES `BOOK_LOANS` (`Loan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-19 23:54:55
