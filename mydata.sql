-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressID` varchar(255) NOT NULL,
  `ZIP` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STREET` varchar(255) DEFAULT NULL,
  `customerid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`addressID`),
  KEY `new_fk3` (`customerid`),
  CONSTRAINT `new_fk3` FOREIGN KEY (`customerid`) REFERENCES `Customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('1','395007','gujarat','surat','13','1'),('2','432322','dsa','cscds','DSZdsfc','1');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthorMaster`
--

DROP TABLE IF EXISTS `AuthorMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthorMaster` (
  `AuthorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Specialization` varchar(30) DEFAULT NULL,
  `Birthdate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthorMaster`
--

LOCK TABLES `AuthorMaster` WRITE;
/*!40000 ALTER TABLE `AuthorMaster` DISABLE KEYS */;
INSERT INTO `AuthorMaster` VALUES (7,'kanetkar','MS(Computer)','OOP','10-07-1958'),(6,'Albert Schwartzer','MS','SE','31-04-1956'),(5,'Sudhir Pathak','M.Sc','Networks','12-09-64');
/*!40000 ALTER TABLE `AuthorMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookMaster`
--

DROP TABLE IF EXISTS `BookMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookMaster` (
  `BookName` varchar(50) DEFAULT NULL,
  `AuthorName` varchar(50) DEFAULT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  `Synopsis` varchar(100) DEFAULT NULL,
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookMaster`
--

LOCK TABLES `BookMaster` WRITE;
/*!40000 ALTER TABLE `BookMaster` DISABLE KEYS */;
INSERT INTO `BookMaster` VALUES ('Way to Success','R. Adams','RTE','A motivational book',323),('Software Engineering','M.K. Agrawal','TMH','A book on SE',284),('Five Point Someone','Chetan Bhagat','Rupa and Company','Three Idiots',293),('The Scion of Ichhwaku','Amit Tripathi','TMH','A mythological Saga',330),('Himalayan Intern','Shri M.','Roopa Publication','A book on Spiritual Sciences',343);
/*!40000 ALTER TABLE `BookMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bookbank`
--

DROP TABLE IF EXISTS `Bookbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bookbank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookbank`
--

LOCK TABLES `Bookbank` WRITE;
/*!40000 ALTER TABLE `Bookbank` DISABLE KEYS */;
INSERT INTO `Bookbank` VALUES (1,'sdsadsa','sadsd',234);
/*!40000 ALTER TABLE `Bookbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customerid` varchar(10) NOT NULL,
  `FIRSTNAME` varchar(100) DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('1','Vinay','Pathak');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EJB__TIMER__TBL`
--

DROP TABLE IF EXISTS `EJB__TIMER__TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EJB__TIMER__TBL` (
  `TIMERID` varchar(255) NOT NULL,
  `APPLICATIONID` bigint(20) DEFAULT NULL,
  `BLOB` longblob,
  `CONTAINERID` bigint(20) DEFAULT NULL,
  `CREATIONTIMERAW` bigint(20) DEFAULT NULL,
  `INITIALEXPIRATIONRAW` bigint(20) DEFAULT NULL,
  `INTERVALDURATION` bigint(20) DEFAULT NULL,
  `LASTEXPIRATIONRAW` bigint(20) DEFAULT NULL,
  `OWNERID` varchar(255) DEFAULT NULL,
  `PKHASHCODE` int(11) DEFAULT NULL,
  `SCHEDULE` varchar(255) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`TIMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EJB__TIMER__TBL`
--

LOCK TABLES `EJB__TIMER__TBL` WRITE;
/*!40000 ALTER TABLE `EJB__TIMER__TBL` DISABLE KEYS */;
/*!40000 ALTER TABLE `EJB__TIMER__TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUPS`
--

DROP TABLE IF EXISTS `GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUPS` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUPS`
--

LOCK TABLES `GROUPS` WRITE;
/*!40000 ALTER TABLE `GROUPS` DISABLE KEYS */;
INSERT INTO `GROUPS` VALUES (1,'admin'),(2,'users');
/*!40000 ALTER TABLE `GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON` (
  `IDENTITY` smallint(6) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `GROUP_ID` smallint(6) NOT NULL,
  PRIMARY KEY (`IDENTITY`) USING BTREE,
  KEY `PERSON_FK` (`GROUP_ID`),
  CONSTRAINT `PERSON_FK` FOREIGN KEY (`GROUP_ID`) REFERENCES `GROUPS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON`
--

LOCK TABLES `PERSON` WRITE;
/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
INSERT INTO `PERSON` VALUES (1,'admin','adminadmin',1),(2,'user','useruser',2);
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRODUCTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (1,'A washing device','Washing Machine'),(2,'A Coolant','Refrigerator');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` VALUES ('SEQ_GEN',0);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stats`
--

DROP TABLE IF EXISTS `Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stats` (
  `ClientIP` varchar(20) NOT NULL,
  `ServerNAme` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `dateTime` varchar(50) NOT NULL,
  `requestno` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stats`
--

LOCK TABLES `Stats` WRITE;
/*!40000 ALTER TABLE `Stats` DISABLE KEYS */;
INSERT INTO `Stats` VALUES ('0:0:0:0:0:0:0:1','localhost','/ListenerApp/','Mon Jan 24 23:53:11 IST 2011','1','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/','Mon Jan 24 23:53:13 IST 2011','1','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/BooksOrder.html','Mon Jan 24 23:53:41 IST 2011','2','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/BooksOrder.html','Mon Jan 24 23:53:41 IST 2011','2','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:53:50 IST 2011','3','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:53:51 IST 2011','3','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:27 IST 2011','4','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:27 IST 2011','4','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:42 IST 2011','5','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:42 IST 2011','5','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:30 IST 2011','6','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:30 IST 2011','6','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:44 IST 2011','7','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:44 IST 2011','7','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:05 IST 2011','8','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:05 IST 2011','8','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:16 IST 2011','9','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:16 IST 2011','9','Destroyed');
/*!40000 ALTER TABLE `Stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `TITLE` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TITLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES ('Filmfare','Magazine'),('IEEE','Journal'),('Indian Exptress','News Paper'),('sarita','Magazine'),('Times of India','News Paper');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERMASTER`
--

DROP TABLE IF EXISTS `USERMASTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERMASTER` (
  `USERNAME` varchar(255) NOT NULL,
  `ABOUTME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERMASTER`
--

LOCK TABLES `USERMASTER` WRITE;
/*!40000 ALTER TABLE `USERMASTER` DISABLE KEYS */;
INSERT INTO `USERMASTER` VALUES ('VIKAS','hello','vikas@abc.com','Patel','Vikas','vikas'),('d','ds','d','ds','sdsa','ds'),('ghgh','','','','hkhk','nbmmm'),('anil','sadxsdxs','anil@sacdsa.com','pandya','anil','anil'),('tttttt','fd','hgfh','ffgfhg','gfgf','fdff'),('sd','q','sd','dswd','dsa','sd'),('vimal','hi','vimal@sds.com','Patel','Vimal','vimal'),('shailesh','dsdsd','shailesh@xdsa.com','Tripathi','Shailesh','shailesh');
/*!40000 ALTER TABLE `USERMASTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserStat`
--

DROP TABLE IF EXISTS `UserStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserStat` (
  `hostname` varchar(50) NOT NULL,
  `visits` int(11) NOT NULL,
  PRIMARY KEY (`hostname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserStat`
--

LOCK TABLES `UserStat` WRITE;
/*!40000 ALTER TABLE `UserStat` DISABLE KEYS */;
INSERT INTO `UserStat` VALUES ('127.0.0.1',5),('0:0:0:0:0:0:0:1',3);
/*!40000 ALTER TABLE `UserStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin@mail.com','admin','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=','admin','admin',1,'2018-09-04 01:49:43','2018-09-04 01:49:43'),(2,'user@mail.com','user','BPiZbadjt6lpsQKO4wB1aerzpjVIbdqyEdUSyFud+Ps=','user','user',1,'2018-09-04 01:51:55','2018-10-16 06:46:30');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr`
--

DROP TABLE IF EXISTS `addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr` (
  `ad_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ad_id`,`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AddressId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Street` varchar(80) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `CustomerId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `fkcustadd` (`CustomerId`),
  CONSTRAINT `fkcustadd` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,'sasa','asdsa','ss','2121',10),(37,'2nd','Varanasi','UP','239645',11),(49,'sss','Indore','MP','300011',12),(52,'X-1723','Surat','Gujarat','621435',12),(53,'Line 7','Banglore','Karnataka','23456',13),(56,'asx','una','Tamil','34561',12),(57,'asx','una','Tamil','34561',12),(62,'dd','sfqds','dsd','21321',11),(64,'sassa','dsd','sd','3343',13),(79,'Jawahar Street','Vadodara','Gujarat','380012',60),(80,'Shastri Street','Surat','Gujarat','380012',60),(81,'T-123','Amreli','Gujarat','34567',61),(82,'T-123','Amreli','Gujarat','34567',62),(83,'Agam Complex','Aurangabad','Mahashtra','54535',65),(85,'Defence','Jammu','JandK','902123',65),(87,'asa','sasa','awqww','12111',67),(88,'Royal','Dehradoon','Uttarakhand','102123',68);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `username` varchar(30) NOT NULL,
  `itemname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('Kamlendu','Using MySQL on Linux'),('Kamlendu','Using OpenOffice on Linux'),('Kamlendu','Using Staroffice 7.0 on Linux'),('Kamlendu','Application Development With Oracle & PHP on Linux'),('vinit','Using OpenOffice on Linux'),('vinit','Using Staroffice 7.0 on Linux'),('vinit','Application Development With Oracle & PHP on Linux'),('Priya','Using MySQL on Linux'),('Shyam','Using Staroffice 7.0 on Linux'),('Shyam','Application Development With Oracle & PHP on Linux'),('Shyam','Using MySQL on Linux'),('Priya','Using OpenOffice on Linux');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (25,'Kamal','kamal@ewdew.dew','wwewq','9999'),(26,'dddfe','asdas@dssa.ds','asdfsdfrr','324324');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_subs`
--

DROP TABLE IF EXISTS `cust_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_subs` (
  `CustomerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubscriptionId` int(10) unsigned NOT NULL,
  KEY `fk_cust_custsubs` (`CustomerId`),
  KEY `fk_subs_custsubs` (`SubscriptionId`),
  CONSTRAINT `fk_cust_custsubs` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `fk_subs_custsubs` FOREIGN KEY (`SubscriptionId`) REFERENCES `subscription` (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_subs`
--

LOCK TABLES `cust_subs` WRITE;
/*!40000 ALTER TABLE `cust_subs` DISABLE KEYS */;
INSERT INTO `cust_subs` VALUES (11,8),(11,7),(12,8),(12,7),(10,6),(13,8),(10,12),(12,12),(10,9),(60,8),(61,10),(61,7),(62,6),(62,7),(60,11),(63,6),(63,10),(63,12),(64,7),(64,10),(67,8),(67,6),(67,7),(68,8),(68,9);
/*!40000 ALTER TABLE `cust_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10,'kamal','pandey'),(11,'sadsds','cssds'),(12,'weewe','sdsds'),(13,'Prakash','Patel'),(60,'Sumit','Sehgal'),(61,'Patel','Ritesh'),(62,'Rashmi','Parekh'),(63,'Vidyut','Sharma'),(64,'Paresh','Panchal'),(65,'Shweta','Shah'),(67,'keya','kapooor'),(68,'Veena','Rawat');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `empno` int(11) NOT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'suresh',3242.98),(2,'Rakesh',8754.00),(5,'harish',5167.32),(6,'Sapna',3456.00),(7,'Stoss',9000.00),(8,'Rahul',10000.00),(10,'Vishal Desai',10000.00),(11,'Sapna',9500.00),(12,'Smita',3000.00),(13,'Rauf',4990.00),(15,'Param',4000.00),(16,'Swati',5000.00),(17,'Alkesh Patel',7000.00),(20,'Arvind',40000.00);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expired`
--

DROP TABLE IF EXISTS `expired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expired` (
  `expirycount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expired`
--

LOCK TABLES `expired` WRITE;
/*!40000 ALTER TABLE `expired` DISABLE KEYS */;
INSERT INTO `expired` VALUES (125881);
/*!40000 ALTER TABLE `expired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `GROUPNAME` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('Admin','admin'),('Supervisor','user');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouptable`
--

DROP TABLE IF EXISTS `grouptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouptable` (
  `groupname` varchar(50) NOT NULL,
  `userid` varchar(10) NOT NULL,
  PRIMARY KEY (`groupname`) USING BTREE,
  KEY `new_fk_constraint` (`userid`),
  CONSTRAINT `new_fk_constraint` FOREIGN KEY (`userid`) REFERENCES `usertable` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouptable`
--

LOCK TABLES `grouptable` WRITE;
/*!40000 ALTER TABLE `grouptable` DISABLE KEYS */;
INSERT INTO `grouptable` VALUES ('Admin','admin'),('Supervisor','user');
/*!40000 ALTER TABLE `grouptable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `IMG` blob,
  `IMG_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IMG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\»\0\»\0\0ˇ\€\0C\0	\Z!\Z\"$\"$ˇ\€\0Cˇ¿\0\0v\0∞\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R\—$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\·\‚\„\‰\Â\Ê\Á\Ë\È\ÍÒÚÛÙıˆ˜¯˘˙ˇ\ƒ\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3Rbr\—\n$4\·%Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\‚\„\‰\Â\Ê\Á\Ë\È\ÍÚÛÙıˆ˜¯˘˙ˇ\⁄\0\0\0?\0ıùQˆJ¡eg\Á†VD”∏<±ı´≤÷º?#9í,¢ú\‰¸´üó\√:ãÀÑ(†˜j˙\»b©µ´>*x:â\È#œì\‹\Ô™%∫î«¥≥”≠h\ﬁ¯[Tµ\⁄\·RHèW˘j\–/K\rä\“g¶\‘<\’˝bõWLü™\’N\Œ&[\\JO\ﬁoŒö≤ø$;~&Ø6çzπ2≈∞ˆΩiWAÚ˙üZNºw∏\÷ßb≤\œ7óè1\»˙”ñI0>g¸\ÎR=4Åµm§c‘ëV≠,∑(#\Zπ\ÔXKo$ûÜ<2\ÕÚ±2ı¿\∆j¿öL}\ÈsérMt	k|\Ìè\ÃÅ∑5a-\· µÿéLúûﬂ•dÒã±∑\‘_sñNx\œ=ç<=\€ \À2w\…j\Ídπ±éB≠f<\„üs{úCo«π,Sñ\—Éåwëç\≈\–,§Lˇ\0)\Âs¡\ÌQ˝¢¸úó∏^1˜èß\Á\ﬁ\\.\ÿ¡úA˛\ﬂ\ÏùN\Ì\¬\«kr\ÏGECUıÑ∑≤3˙´\rŸú\◊Õ∑OÉ˚\‚7ı\‰ˇ\0úS\„}Lè˘J3\ÿLŸ≠˚O\ÎS|\ÕnÒÒ¿aﬁµ¨>ﬂ≤µ\›\≈\nc\Ó \À~uå±Ùcˆë¥2˙\“˚,\ÂK§\\Õ¨]ÈÑôø∆íy\Óùˇ\0—µ=CgL¥\Ì˘Ò^âiˇ\0MÜEë\Êë\ÿ{Vå~—¢`Y[‘ç\ÿπ•ö\“\È©\’™£Z\ÈÛ<\“9\Óm\ŸOˆ•¸\œ\‹˘\ÔÅ˙\÷∆ëq$¶Dñ˛cé\»\‰W†Z\Ë˙-£áH\"\ﬁ:sW>\’k\0!(ÙQä\Áûf•¢â\—O,\Â\ﬁG3om\‚Y£]≠2g˚Úë˝kn\«IòBııƒÆNHYRM¨Bù?é*\◊c?\"RkmR{+Jç(n\Ói\ÀoQ=zUª{@	%K\nû\Êié\‹ÙÙ¨{\≈kÇï±\ÎéıîSæ\Ê\Õ\∆\€u`\ÔX•UåïÉ$W(âA\∆sä\›M$õÄ˘\'\·ç^í\¬=ø4)¡\Ì⁄∫Uh\”\–¡—ïGvqS[I#Û	#\–d‚ë≠\'˚\–\∆\Ã«ÉÉ¿˛ïŸù?\Ê%#é O\\b¨ºhêòìg<öóå\Ï’≥âÜ–∏Um\ﬁ‚§í\⁄˙qè#ßaä\Í\ƒzîœµ=°=§U\«záäÚ.8^ó98Ù;\È0jØ˜Ω*’ØÖdyù.J∑ı\“$gßöqR+§Cy\‚≥x∫ù\rüS>\ﬂ\¬:xßvcéÄÒZV∫ço\Zq\◊\Ê®\‰∫\»\'õ≠4õYè\'π´b\'Nú™Tï¢ïﬂ¢4ç*i\Ÿ#J\ﬁ=6\›IäcQ\…8\0∆©\›xØ\√\÷\≈Mj¡YÚy\√\Ê d\„◊Ç+7Rû)¢*%L`©˚ß⁄±\⁄\‚+X¸´H!∂BI+\ZÖ\Óp?ùy\‘#òb\◊:Jú^\‹\…\ V\Ó“îRÙªÛ5î\Ë\“Z›ø-\‰ŒéoÈàÖ\÷\·W*?U§ÒR4~dO°˛$m\√ÙÆV\‚\ÊRIéòˆÆSV–µ&\‘\◊VŒ†-nüOuï@¿ ûø\Ãb∑®±:ÿó\”Z\…\≈8\ +Ωú§§ó[4\÷ˆ—ô*¥\Î>Jwå∫]¶üï\Ï¨˛Û\–\Óº\\\√#\Ã¸´.\„\≈\“gªs\≈s\ÔëDBª¿l\»\»\Œ\r5ler\÷\«“æíj)DÒU€±©\'äØ¢®^µZ_jüümSû\œ\ úÛ\≈\÷\Ó\ÔÖ˘≥\Í8≠ï:I]#ô’¨›õ$:ΩÙßô[üJp∏∫ëÇ˘é\«?\\”¶”ßE.æV˜Nj[kÜp\…h•]J5¥Æz\‹\÷\ËX\Óg\œ^µFxbRrøPO´\"\»@l\‰Ù5R}b2w~5\‚˚)ûÚ´∑(l*üni¢I7pq\Ï;V;Í©ø#åu§]V<¸ƒü°™t•\ÿh˜6â\·ã«Ω4–ØSä\À:§`p\‹Ri\ƒ\ÿ\‹\Ã=A®ˆR\ÏW∂èsr>Î∑ú˜©|¢T\‰Ä}´\ruuE¿l\„˚«•D˙\Íû˘\Áúïõ£PµZ©Ω2*ÛØ52Æ23\ÎXm≠ÅÇx\ÔL:æXg\ÈÅMPô/Zwt\Œ\ÏÅ¸Íôªec\Âû¡#5VMS\Õò\ÿ\„π4üm\œHáØ¥T¥¥ëì´Æåd\”8\‡s\Í\0™æ]\ƒ\√	u\Õi≈ΩaT\r\ﬂ\–U§ç\¬dR;éıNØ!>\Õ\œvs^D\Œ\ÂnuT2Z\ﬁ#\Ó1:\«\"ªHm√ë,\€I\«“ßô¥ımŒßw∑4æπnÉ˙ù\÷\Ág¢\›\\\ƒ%G(¡æ\Î°£ç\·Qos	e=$L\ÃWF\◊ˆÚ&\‘\ÏJÖå`ó\„8\ÍMD±sì\’,!≥1≠\Ï≠\"êEtÆ<>9\œ“∑-¥õW_‹∫ê=≠VZÖ\Õ\Õ\‘C\0=(\Z\Êódç\ÂÀø‹∂D\ÁR\rÀåi\√{óLô8åJû\”Kõ\Õ,\—ƒ£\È\\\Õ˜çb\rãd\›€ìY2¯ßWûRVfâ;*ö⁄û=Ù0´ã\√\√mK\◊SbBNH™r\»[å\Z∑r∏v˘j¥ƒëåïï\Î\Ÿ<[}Jíñ\‰è∆¢2π<UñNO\‹c¢\Á?Ö≈¶»ïú˙ÄiWx<ı\'ΩH≈±ü.üû®\Œy&≤ì∂∆â\\\0f\n\«<Sñ	1Ü_÷≠DE\nA\'Æ1\≈I%∏˙\◊4™ßr≤¿Jı^ûµ\"C$Æj\Ï0´>Cì‹Ä1˙RòJ˘G\'?69¨ùKõ{+jVé4nrH˙\”—£˚π@OØAOê3Ωa_°®\›0É\ÿ\Ó¢˜[k≥*¸∞ºm\„¯z}w[ô\Ì\Ï\Ì\∆\\¨%é2\‡I!Fz≥(\„9≠†Ò®\∆\÷s\Í´\≈V\‘?\”\Ì\ﬁ\Œ\Í\ +õWBè®Of®>ï7Z\"£;5\ÃÙÚ)\Èz‰ö∂ç¶\Í∂Ûü≥j±\›@I\∆cuß≤8<˙‘û}\”\”~X5[M—≠ÙΩ6\€L”¨\÷\ \Ÿ\nA\n*sÅ¯ìO{y\'a\'\Î[%\ÓSm∑q\Ê[∞ßƒìU§ñÈóô_é\Ÿ\‚≠\≈it˘‡®´\È!Ãå™†ı\ŒsOû\‹9\'-åSºì∫B\‹f´HÉ9 g\‘\◊Q˝ôßFå%òds\«ST$ä¡˜aâ\œJ\“ÑˆF50\Ì|L\ƒÚ\‘_•KaΩ+QD0´\ŒsútßF∞˘¿∞ﬁπ±[∆µ˙Ú£nßMq§\‹n,B \œsä•&û˘¶Nπ U˚\÷vr\Ã˙\Á5Eút\ÈXÛ\Õı:î`∫˚$ c\Ôz\”\ﬁ!\Àz{Iü\‚ ı\∆qQ6\›€∞[◊öW}\ \\ΩÖdER\·P§Qnı=9©	r0±\„<ÙßCky3|ë9?LqP›∑e´\Àd)*>X˜/ªw•AÖ\\Ü\'8j-ı\∆X™˚g&¶˛\ÀX\—\Óˆ±\‘5Ñ™\”[3xS®˜Ca}2l≤;˜\«O ´\Ír\∆Uø≤\‡í{â>\‡rV8Ò‘ü\Î÷≠™\Ë∞\∆o4\Á∞\Œ)Q≥BZ8\\˝p\È\\ÚNJ—Ω˚ù4\ÂI9§\“\Èˇ\0\r˝3&\€J\÷˜ìxì\…r	¡ß\∆Q¶_%á\‡*+˚ˇ\0¯f	.uç&\ﬂ]\“\0ƒó\⁄4l∑p/ví’ãoQúììÄ~J\‘}Eõ;bı®û\Íd!ïT^iG\◊WÛìõ4û5KG¸°˛)\'¯˙ì\ËwZUı™\ﬂ¡,7∂≥\∆$∑û\n:ûÜñ\ÍÚìb\√?\Ï\÷líÄ;X#µB9é!Ö,~Û`p	<˝Iı®\ÿNqÖbI\«µT∫\»\ÂïT¥âv{\“\€v\·1\‘m\ÍjñFGpröâ\Ì\Ôw2H™$˝*ä„´§ß5§c\‘\∆RóTh-ƒãÛû5 \ÁıVMEG\ e;K\r á∆©\…Øﬁè®ˆ62Ä{„äµN;ê\ÍÃí[óòªÇy\0t\√⁄´0>˘©\0Ù\Œs\”b\≈B±>¬∑M#ûI≤8ë≥¥Ÿ©ô§\'éjD¥π8\ﬁCûòZªo•\ﬁŸè\‚qO\⁄\≈u\'\ŸIÙ=*k[V2HUòz\’+§∑Lè&¸Å¢˙\Ì∑\‹W\€çw(-É#ü¬ºu7´=∑8•¢v-pr™†åVs˝ü\Àq\«LS‹Ç	]ﬁΩ1Qa\Àw9\Ï;\◊Tlñ\Á,ùﬁàù$P\»\—O∏ö˜ßÖò¢Ù\¬\‡Sb∞ΩôæHdP?âé\—O\Zu\ÿ˚\·ÿ∏©rß’î£Q≠ôVVô\∆$ñW>\ÓjªDΩI˝k_˚.pfU¿öE\“n∞§(\œ\ﬁsÅ˙Rˆ]E\Ï\'.ÜWóévú})Dg8\0\‰ÒZáLï(ufˇ\0f¶áN)m¡õ¯Ü:~5/nZ\√ÕΩéi5-(x∫\ﬂ¬Øu!’ß≤k’ç!fUç[i,√Ö9\∆rs“∫T\”\Ï≠\◊˜€ú≤ˇ\0{≠X\"\Âc⁄≤\Ì˘p0*Ç\\\‰ú˝Ma*\Œ]ltFíè\Ÿ-\‚81E\Zq˜üìO{T¬©ü>ªRï ïòsÅSôWèµsŒ≠û\ÊÒß~Ö_≥§c\≈{Ù…¶õ∑\…,Äú\„µh¢™\‰˚w”∑x¨˝ª/ÿ£>$Ç\ÃZzV=MK\ÂyØñµà/∏\ÕZÛ#S–ÉNÛ\„\∆\0?ïK™\Ó?fäieoñÅıS≈¶©¡.\…\Î∞bûe\Œ0¥˝Ú`cè≠\÷l8åM&\”v˜˙ö∑çíñ˙\‚†VêıÆM∂G\Œi©M\Ó\»pä\ËX∫ä7$π™ì[Z\„,ˇ\0:ñ˙MÆFp{V|óú\Z—πw&<ΩA¨¨\œëO†n)∂˙tŒ≤§≤çºÒLi\›I$}iØxzÉG=KZ\ÂrSæ\≈˘å\“g\Á R\¬8¿˙\÷aæ‰åå\—ˆ†x+;Hª\ƒ\‘b\Âˆü∆´\œ,i¿bq\ÕR39#>π¶∑\Ã:èÆi®\€ryªµÃ£˝Z®˜&§Ye+úå˙Uo/˝hßB‹™Ω]su.Dí±\€…©¿¿˚\√Ú™™íÅ\ÀfóscÅ˙\÷.Mı5J≈°∑=™\'`3\≈@\≈¿\'éOL\‘[›∫PU\À\r*º∆õ\Ê\∆å˙c9#Äπ§¿\«\…O@\‘sJôêü¬õ\ÁI¶3¿\«\‡*hp\À`\ŸÓÖ®\—0\ŒN\nó\Ì\nF9¶Jªd(˙\‘h\‰Ú*ïàmñR`q\ÿ{ö≥o(\»˘∏™*\Ì\‘Fß\‘\„5f)˙\0†{b≠\"ãó3JK˙ü¨õ˝7Z[ÿñ\”O\”\'±(L\”\À$r°¡\·c∞o\·\‰∏\Íx„íä\ÍPFvZK•NÜãèˆâ˛ïiÚû¶#\Ìì˛QQ ç[˝ï;ÛEˇ\0}¶ù.\ÈFÄÛ\›\œ¯QE>T!©cs¸Fz\Ó?\·S\0Ü\'ú\Ó4QXTVzSä∞¢\—| ¨{\Ê§,@«•V6π¢\”a≠8≤s⁄†yâ=\«˘ˇ\0\ÎQEä&MëHd¯∞±\Á¯±\«4QNIXòΩEVsÇ™º˙öWÛ\Ÿ∫\—EEëwc~•≤i\—\ÔÈª∑≠R\Ë§]\ƒn\‰Ù\ÎJë.˝ﬁ¥QE¡§O\Z|π8\ÌV\‡^\‚ä)¶Lèˇ\Ÿ',1),(_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0\r\r\r!!   &\')\'& 226622AAAAAAAAAAAAAAA((3%    %3-1)))1-883388AAAAAAAAAAAAAAAˇ¿\0ê\"\0ˇ\ƒ\0£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQaq\"Åë2°±¡BR#\—br3\·ÇCí$¢≤\¬SÒ\“sì4cÉD\0\0\0\0\0\0!1AQaqÅ\"ë2°±¡\·ÒBR\—bˇ\⁄\0\0\0?\0c\‘2∫n4\«\"6I^˚°`\◊òX\Ì+\∆\›ı\–I>lêWb(ª\\Ä\∆\◊öüß™\‚¡èä\»-îÆÙ\‹xÚΩY\“s2cí\…\ \r\0VD\rK\◊Pñ\Ó\Z\÷	\'ù•µçGπëa\«\’M#™?p\€^B≥s¢ædçô\”`∞Gí9Ω;ñvC§ªö¸´Kôá±4\”JcU2\Ì$\«lCâ\”N\ W,ÕπÇJ\Ô˚{éª{M5\\\Õq\ÍRÖ)\‰\Ô•pdDê\Ã\Œ\'v’Ö«¶â\¬1~dõö“¶¸(G=k$ô)xfx¬∏.ï%n/ˆ÷ã¶tßX\Ã\Ÿr\ \œ+oXƒé°TΩà÷¥InCO]ÜKçèc4âê\ŸKê°ç∏˜P)ùI)¬å\ ÖuPqº≤n+¶ºiÑ∏∏ÛF\"û%ñ1¡d\«g\Ê•˘=($*1Qö(àÚã\È¥nc~\⁄,±ÅV\'\"ﬁß>PœÜi\'_ñB≠;\r7?ïÉÅpvÆ§ûpqë£ö\À`\‰]P∞\Â¬•\”£î|\‰éd˛§1ë¥BOMóı)$\Zb∞¬édU\n\ÕÒ\Œ\‹\Î>≤ñˇ\0±´ΩkÑ∂˝\≈x\–˙@¡\ËäGëù§.WÛ›ªF¥TK•2Z,∏[S0[ù\◊Cz%ÑN¿∂§p‘ä\«ıNãí¸≤3;2\ÀØ\ƒ\Óoòij®\‡\€Ÿì<\‘-P˜;™bJÀâØ+≥•\€\ÏQÖ]\À)≥Q¯ÄÄ√ç∑∑®\÷˛´∑\ﬂYÔßì#g Ñ\ Pø\Ãª∞æ®\0≠\"!(Ä™5ô*5µRR\Êv%\·CD¶x¢B”∫§dXó!Añµôã\‰gÀèàc\∆ngê\nßáX”Ñ\Ë}9\'˘Çç$∑∫ôügÙ\Ó¢\“DHb’§!é\Óm[\”\0°-rS4òòf8ˇ\0~D—Ø¿é°}Ù¥?\‘\ÿ\…<#.‚±£+)∑}\‰\”3üçcff*ﬁõlGmØk\ÿ\Ÿ~⁄èß#Ñë\\í\\p\nPΩ∏\‘Yˇ\0¶ΩU˛ﬂ∏ö<ßT\Íí\Ÿ=E…ºzkÈ™µ¸≤Öæ\€\ﬁÙ\Î;\\Ye∫\∆-#Xè2è5¥\◊^bìı&8Û°\œ\Íë\¬\…Ç\Ì.\ÏãmÙì[\04?V\Ë´,ä\\>\ÎUΩH˜∏7¯>ˆSn\…aOQ\≈[\ÀK§Qå˝9˙Ük\Âa:.3®˝\√p\»Û†_\Ó÷™o¶≤I‹≥«ß\‘VAıyü$VIrKmÅ=.\ﬂ+\\yGo:|éw./_π\‰ó++M$E\'VYûn¶\√*E ¿P¸;uÚ*Ö¬Å\Î?:dı§ÇEÉn\ƒ.°QXû¯˜÷òñ|ê†±≠‹û\rs\Â›≠\\TA\0É\ƒE>	πñ\∆ÌÑ†\√\·†[)!éä\Ìf∫Û˜“ùˇ\0ƒû°˘B©`Bz©πê-\◊iS\ÀKös\Ëƒ¢Ëà∂\‚vÑquU|i\'ÖW \«{¨m\»q\‚9R‚ìñƒ•\ÃlFü¶∑©íNß\À˚l\"e∏:ù€Å\÷÷™zº	4i)˚ú#\ u]®¨\‰9]/z˜3\Í<|úYa8\⁄\«x\“\‰|:kZ\·ç!Xac¥«£s∂áY¥ß˝∆≠Òà\Ì\Ï\"\ËΩK¢\‡\‚$…é\›Ÿ§V\›\€dÛZ\ƒ\ÔßIü\”\‰è\‘\\ò^.ÉÇ-I≥1†\√\Í±\ $Lx\'PÖ{ÆT~∂R\0>5,ÛÅâãëö®≤0/}Ie(™´\√Rx{h~Hq^9I\œ\ÏT˝BNú¡\√B!\0§/ë)¥±_älR\⁄xPuhÛ•eï\“H§πÙº¡/oÀ∫∆±\“O#=\ÿ›∏_©g\‡I∂∫q´\·çIvó0mpw<^îÖ’°b°\÷\‰Ö¸¶¸Ü\‘vIûy\'˘ó€àçm∫E`wr\„\Ô¨oN\Í\”a≤\ÓrÒí7°::\Z˙^$\"%m§íŒ∂\ÔüØù7Ä9∫B≠é#\Ïï$∂óπ ±\ÁŒ¨|L\Êâì§ÆÇ\⁄&¡˜õ\”\n\‚.-W\≈g∏•âd\¬»Ω\Ô\"\⁄\«@H\·\›Cd\„K$yc¸¿ò-ØbE»ø}hÇ™\r4§˛&ºIcêá\0\ÿ\Ì7÷ó‘Æ}Ö˝/ß&:¨çGU≤Ü$êHÛ=ø)<4™ÛÚrq\"l©°âù\\.6ª˝=\«\„mπ\”f!T≥™∫ñ&¿Úi\‘mf\≈218≤F	äï`t\Ó5Z/BVlâcuh\⁄3,˘ë\‹X?ò(Bx\0“Ø\»\Í\√£iG©å®J\ÍÀº\ÿ7Ö+\¬x\ﬂ\Êõ\—_îk.\Àò∆Ç¡ò^˝˜£f∆äX\“x\√ ®$ÿï\’M˚/Xsi\Îπ\–\ÎVû6õ¶G3´I4õìrÇ§+\€\ÀÏ∂îéõ\Í6r&L±\‰,ﬂµk\ÌES\Ê\rk_w:\‘3®$≥\0yí@§9\”E\Ê\\\Œ^D\ÏtAdãK3¥ñµçkt\›på|mrÀé\·9£™@ﬂ∫\Ô†\›¡ö«é\ﬁU«°\„\»\∆Yeó\÷pÇFV\0~\ÿÚÅpM¥°ín°¿c2fv#ˇ\0\nˇ\0\ZÅ\…\Í†›ù\ÿ){Ö/]Tº7∞¸ç[ún\'@\≈˜e∑\ \n\no•ïé\ËÚM\«\0\È¯©¢†\Í\“qΩyê,\„¯\”pC(e7V∏÷≥&|R\ÿ\∆\Â˝;ùèKtí(¡gek£éçjÇıú…ë\"iY(\nv\Ë¢\¬ˆµ\ÎI◊∑\ƒ\‰m\Á¥7Ùñ¨f4yR∞Ä/†*™NΩ\‰TŸ§•éµóÉMAì7díS\Ã\€\Ï¿ï!∏ãr=ÙwG\…\ƒ\€\Íè\Z\Á˜Cn\0˜^\∆ı¥¨∑‘¨\«*“ê!DR•â\n∑\„†\‚I¢îM§¡πrW?X\È\ÓfJ±®çdñF\Z/b°∂ºN¥oKä\ÿ\Ÿ\Â\¬Ùa#ˆ\Êı\Z\Ï{Xü\nAÄëœì˛\À8NóQ©Go}kVs P*èáïÄ\·a ∂≤Ò\ƒUOp≥ç7.áﬁú`∏¸\Ì\Êoy¢75\Ë9r`≈ÑÕì*\≈¸Õ•\œ`\ÊOÖ+\»\Î\Õ$L\›<m≤íé\‚\Ó\∆\⁄mNW\Ô˜Vn*Xı\ÁA° \Z6)2cTÉ2\\GΩ˜\√bH\Ê,AØû\…\’z\÷#V\»uh\ZÃõ∑YÅ\‘k∆ò\‰\'\‘Ò\‚Gì&D\∆6]\“\"1øò-¥µT!d\Ÿ\‚\·åd6íi.K4ì±7<\œ%˚*¨û©\“\·Ωï7∞\n\€œπ/XŒóâô\’Úñ6ñGçlfëòù©~˛\ﬁÀ©}#ìg\È\Ì\Î°\·Y]GwmH\‡9˛†\ƒf?.≠<`\€x+Ω¡µ¢±[©\€) 4>M≥1@Ñ˘ØµCÜÒ†f˙V	ÒÒÒCÑñ(\¬K.æmwáû\„Ó¶ù#£\√—£ë#ô•\Ì,PWò\Zˆ\“h©K‘´;\"hß«Ö\’•æ’å±R.X\Ì<(\»Ú˜0@•Ø{ó˛†\0⁄∫|llìMJbb\—\Ó\◊kkä¥31µà=î@rB˛°\‘\Œ\n+i•.@∫Ø\Ì•˘ªZıd{\Èn\nHΩ˝¶≠\ÍG¶Cê\‰\Âƒå\ÍP†`Õ®˝+∏\÷o	Y2fIT\Ó[~`Oeg\ÂmD7\Ïi\‚Us1\Óh\‚…öY›¢uñ8\‘	\0\◊i◊ãÉa\·jØÆu\ÈΩ1≤\"∑¨\Ï#àù@-rZ\›¿Pò\ÿ0eÃπ1äO\Ã@¡,£Û>\”\Ÿ\Ô©}WåÚt\'c´c»í\\~õî˚öóç∂ﬁ¢Ú$öÉ\ÁôI4ç#±wsvv7$û\”^c\„6C\Ì˘ö™ï%<=¥t*± ı.y\Ó´pEj\€\»À¢¡.Pès\∆Ò\…˚mßôCsC\»ﬁ∂Bó(Û\Á…≥UPYcMG\Ê”ça6\‰¥0ó1˘É^¸+KY\√…âD\Ÿ9û\ w\r˝*¸k˝\”\Z\‡⁄∫D\¬/ü7©ÙÃù¢\›CH√áë\ƒn\rœïYV\ƒ\€[Zé\ÈΩX\Á¶\„ål0k¯X\nLså\Ô6&N3>>¡\ËJ.\Ï“Æ´\Â:&å\¬«Üx/‘ÇAb¨¨c\‡5é4ùØTî@∏\—\À\◊\–z˜Q{[\«AHì%ï\‰fF%ä\Á\‰\÷ˆä≤±!»í6Í≤≤1F1\"9ëõvùï)1\∆˘0ö8ˇ\0_P\Œ1è˛\‹;+G\„vYpEn®\ﬁ9~ƒ¶\Ë\”ee\„Õçp∆éWU\⁄F\“òs\–p¥\œ\Á)±\‚GqΩ)\ÈùZ&òbœóÑ\ÓˆXb\ƒi\Ó\Ï,˜õ¥vfë/πÄ¡ooæÖWTì»≠ek6∞\rõäπa1§V1º≤ëÒ)∞]ß∂¸yVW;µÙe/µ$f 0≥[ ∫ÅÀ∫µ˘≥iobëπøi¨b§vS4Åáë¨H\Ì\'¢\…J{ı*ç\√[t\ÂÙ<YMÒ$Ù\Â¸\—1‹ß˙X\Íç±Cá∫	§\‹;æ\ c;\„˘\⁄UrO;èvµ§ì£`ı.ü &lH-(e\‹K~\’˚™´,-\œS\0∏@\Â¿§\ﬁ§U\'∞\0˝ıı°e\–[jã_@4¨gN\È\»z®∆û=ø(\€\›8\r\ <û ìq[úJ?òín-Qjª5ñ†\Z_S¡2üNV\›\Zï7W∂¢\◊Ô®∑Q¬ånì\"5Blßw\Ÿ\„Sª/3~µı\·≠R¯xå•$çDmrÒÄµ˘˚\ÍÛ±\r%ñYnY)\—\ ¿ÍÅÉ?ñâµQèçÖ-èqûl™p∂≠«Öq\‚)\√&Pø™\„z!¥\≈Ilw\ﬂMw,8\“iˇ\0\Êz≠\„\»\≈˘\\8õteêâ6Z\⁄\Íu≠\ÓçÀ©‹≠°S\»\◊∏ØcπOx¸E\']˙®)^#\«Ùﬁ°ö\Ïòÿßh:)\0-πpΩ\È\Ó:Lõõ\"PiQ¥-ÙkˆÛ¶s&<\√Õ∂\ÁÉ\ÿnëÔ¨óS\ÍùC*|9=9c@\Â,≠Ç\„\·#]}ıõÒ>IßßSE\ÂN≠G–ª®ı’åò\‚c]∂•à\‚i$øP;Ωª\Ï(\Ã¯˙T¯\ÿ˘®Üe&\‰«Ω,<õªx“ÜìN≤\'∞\ﬂ\Ó´rd[ˇ\0=&∑Öø\Í5(˛†@\◊tt\ÔÙ0\À\È™M\⁄˛\nj_;\“å≠\ÏZY\Ë\‹n±@a \Ï:85´¿*p\·*€Ü€é\€H¨Já•f\Á\√+\⁄iUe\"Í†±\0ÎÆïÙUU\0T\r\0\‰(M\»\ rqì&\‹#Z\‹N\”{Pˇ\0Ò¯\–D}?\€PMè\·L-@\ RlØE¸»£Ö\Ì≠7Z\€\Ó\»’¨¥p3¨G\÷I\'œÉ©C≤éCäü∫∂ıó˙õ˝e\ÃStí\»\„Ù≤ã~\∆ƒ≤fq^\\h\“Dôl\√«ç5\Í?Vb\„òHfüµ¡X–ë\ÔkR\Ë¶hàµäÚ\Ê-AK2Mí\€Æ€∂\⁄\Á\Õk\0xä‘ßYHl˛°\‘\'2K#K+p\'Çé\≈xS~ù$ê*\…>¢2Ä<B\Îjh\„ëdTe∏S≠Ω¥lòè:~\”\⁄\¬˚y5zµÑ˙åáT˙~|•Ãí\'˘î\÷\Ê=	\‰XA\"çè\Í,&p®\'v\'K ˜Ωg¢«Ç<H&uGa¥\Ô7’é·®∑∫èã!î:hå(oä«æá\Ê\‘áIfÇ°\Z+z8´sπ\…+\»\Ê\€™g\Îe_kL±\Ó\–å\√˛∂∏˚*èK\‘O#X˚\ËQãù$\·%êpA∞\0xﬁ±\Ágº\Zp™\⁄F8yj\›B1&AgtIYæ#nJ,)ºé¨R\ÿkYØë7G»á78\›$_I©;\\^\ÁB9r†e˙ü™ õæh\ƒ	\0,(©ˆÿ∑\€[Q¸Sf7_,\‘-\Ÿe\◊0€®tπaâ\⁄)\–#*HπA™0C\n\ ¿:\÷b\Ôˇ\0êù-®,\Ìc\È\"Ωã+\Í.û=U\ lçß\\y?q_˘µ™‰∫ãÖ∫\Ì\¬\nMı\›¡æ\ 3/0±>\ÔLG\Ê\‘ˆÉ∆ñN@ïˆã)$®\Ï\‹\r{+¢H\·cVw\ÏPX˚Ö[Uk(I¥\Â3\Í]8ø\„RHàeïã\‹Z\◊\—x.Éá\n;(@q\ÂLÜUÜE(\≈¯yÖ´Ùƒπ\ÿ\…\Íc\∆…∫»é0V\0_Z\”ı^üÛm@m\ﬂ,ày9kj?õ≤≤Ñ∞Ü\Âº\‡˘\À¿ä6\…˝\ÿÓåçpt6∏ ñ<\∆2A\’MY\‘	9ì]Yv®\‡´\r9ÉKÃ•\rç&ç¥\Ïí)Ä-ı⁄Ü\Á_\’e\„NÒ˛õ2EPïYc\»lH\‹vû~û\Èdı8¯Ò<¨l/ïcø6~BæÉõ‘±0!\\eπmÇ8\“1∏¸;T[¸t\’f;\n◊ç7§@6¶ßò\Á¿€Ö^≥n\"«çπR¯Ú#1Ç\n4›†\·«â“¨\\å{ë∏\È\‘˝ïµ°#ù&\ﬁ≤\‹¯§üC ≤,)[∂\ÍT@6Ó¨¶V.NMü=“ñ»ê¯ô\ﬂ¸5®9ë&©{çG\ƒ\“[câeK\’v{™ÿ©}m≠¯VW≤å3o¸ì˜\ZGíMA\r\Ï∂O±@≠Qñ0Uova∏\Ó5Åè¨g\ v\ﬁ\’\Ï\0\·Zµ»ÅSc\0™∫ùüuE_y+»¢1\Ó£F@(\‡ÜV\‡A\‚)p\È±\È:Ÿâ%nkŸΩO∫Æ”æ\»›Å>kÄF\“?6¥t+\ZÆ\‘;≠≠\ﬁ\ÏIIΩå\Ác;ôãÚ\n\'\«\≈B\Ã\€QëA*\Á·∫ét\√5#Fï6ªù\“30\ﬂ~WµÈ®ïF™o\‹9‘∑˘C\ro\»\’ÚbÄ°é=#ë∂\”.\’2/\ƒV˙n ^ÉN†Ë∫Ç\È\√Ju\Î†6Ωö◊¨\◊^\Ã/&9ü(<D≤âJ\È\ÀQ≠KR],¥c1‘¢Q∂¸8Û´\ﬁ€Äe◊≤≥±u,gF!f¡Yx-©\nu∏¸©<ä-ƒè∂ÙV π‘´\—\€’®å\€A™\\ën;µ\·\„S\n\ÀH@<Efc\Îyä5ö\‰i\ÊU:{ÖZ~£\…ˇ\0ŸÖ∏\ﬂ\„\Ï\”u?\…^\‰~v\‰\œ.,π\‹\≈\Ô}∫µáe	ã\÷:VX≠\ÂïZ?¸L-ˆ\÷o?\ÍLô`|wXQ\\m}Äù?\÷M*\»F8&X\›`{mso\Õ\¬\Î{ã˜ä∂∫∏ ˙J[Tñ2;ôç \Î¶!î\ U%YI É®Ú\ÿ˜\ÈX¯˙Å\‡\ﬁa\ÿje\÷]b{\–ipù\«[qs\›tú\Ãl1¡ã§ë˘U_G•á\ZN∏96µëOaaW3∞¯¥5\ \Ê©x\“ƒÉ`ÔÖî¢\Ê\ 9Æ¥1PúÒ\ÃdòŒá\€RõÙ&\◊\Á˛TùWPLü”äò\›R,ßQ\n≥àî\Ìf∫ï\Á\„_OÄüIw7\Ábu∑≤ˆØó.nV<ã\"5òjÆ\0Ò\Ï≠M˙\«.75x\ÿ˘ä®éO-Å¨\Ì\„¥\ c\‰†\€\ËO\ﬂXLŒ±\’1\ÁöI#âV	\⁄*\\Y¨Yog]Æè©bO\nıY=\\u!2E<\ŸxÇøu|\€2I+/ÿ©ñre\÷˚∂aY\⁄\Õ{JU5\Í}bñu|?úÜLwkE2h\«\·G_ÖΩˆ¶>™àÑ§c°◊ï*\Í0é°\‚\»\∆?R\€XpV\Î~\—q®´\„\ÀJYfw01R.µ\«uTì£MD6…∫\œq£©\Ì¶cºl\–ŒªeM~#∏\—]+£¶lY2)Tö\"´5ˆ›É\ﬁ\ ∞[\“vnª°5\‡>˙í\»ÒjßA\€N#˙g%∂¥ô1D\ƒ3\È\‚väq\”>õ¬äQë,ß$/¡®	∏àçoj|\‚¸à\œt•ñB\ÿ\Ì\…?∑µ-ò\ﬂi”Ä<\ÎC”ª£º\∆+|(\0b\0\Ì&¥Q\·√≤∏Ö:û<*xVdO\ÀhÑ$^Ö<6Ã≤/0\‡©˚/^d`\ÊDõäP51ù\ƒ¶¿”∂ë¿∞π\‡;kÉﬂÄ><®~:ΩÅym\Í|˜¨ªfcÆ3\Œ$C6®l⁄§\Â·©°11∫t\ﬂE sz\÷˝I\“\„ì˙ÑJ\"∫]º$èônı¨¥ò+ñÅêP\r@$_\›P\”MVpm[V…∏R0N£Ä¿*J∑\‡∞◊íMçkó\0vﬁìâë$ä™å\rŒÖ∑q˚)˛\'\”xBElª\‰*Ö\€	$D/˘ö⁄∂µJì†ù\·93b§π\Ô\ÈÜ\»VkÖà:\⁄\Îz\–ba\‰\„Eˇ\0má4jˆ-to∑K÷ô\n¿¢(Ç\∆ÄÜ )ø`∂Ü§í9-\‹ˆ˘˘÷ú:∂dØÑdr2\'â\√\…F\Ëw\r¿çGçn`ÜOILÑTh8[à÷®fıG¡\nX\\{A\Ó´fÑK\0Ö\Ó\nm˜P©k\Œ\≈Y∏YÒ˙ypz†hÆ\'Ù∞\‘V\'¨}4\–\ F|Ö‹™Ö•∆öç”∫∑\«qaf,£â\Áßgm.\…t»ê\»#dLå\Ë|ªØ}ßóÖB≥\Ë)˙≠aB–¥$A\ƒ\¬Y>>\—bx\–Cß˝HôπY≤\‚<ìIq™\ÍÃÅé´\›eÚ\È¬üzd\…dê\⁄\◊\r\"FM˛+|\nxT\‡2∫ª§®MâdhÙ\‚\À Úë®¶ú	æ®\¬\Âbuõ∂V+\„\∆5M\ v\È¸\ÁCS˘\Ï\\}%rH‰†õ{kz≤\‰\Ÿ\√™5∏K]Mâ}ÖU”∫wOY\‰ïÒ¢it*˙I£k†(°}Ç¶\ﬂ\'-\…tø	Aäì™B±â7esµ≠s\›@Àí\„2Ã¶-¡IBx\\v\◊\÷e\∆∆ô6Mr\'\ÈeR>\ÍEôÙèI\…\…\\†≠/AºNGé\"í™[¸çàz6Û∫ıõ,pø˝¥DX\Ë^¸xp¢\ÁAq`lù¿ ∏Ûr+»ü\Zcëx\ﬂ—ït\Ê∞#ïè≤∞3\≈\Èı9ófXK4äÒ	[\ﬁ√á⁄à˝Öñ˝M?”ô≤|\Ÿ ë\ﬂ`EE\ÿUÿ±kiÿ¥ıe6-n6Ω∏|V¨_©a\∆\Ôè<¶\'m[Ir£Ö\‹0\“¸´\‘\Î}g)∂∂S\«\Ê1Öè\ÌE˚äõ\‡fê\ÔUfÅ\"\ƒQ5\Z.\È§H\œπ\‘p\ÊnoXF	\≈Ú2&ïøûB\√\‹j\Ë6±Dª\« ˜\‘Ú+Ò≥[ˇ\03\”‰ë†Lî‹äŸÆãbt\⁄Z€Ωî6VD=YWßaüòúX=ä∆°\r\ÊkjwZ≤\Ãœì®%à \ﬂn4˜°ôÒÒ•xò&^S¸º{ø\€H¡ëúÛ÷©9PK\\\\˜¿ù©úç®å6ùl,√∏õÅWE\–˙\„è‹ä%¶Uˇ\0\”zñO\Îyπ©ì,X—õ—∂zß˘v^\”Fı_ß~iD˝:Sèë\⁄\"\¬&≥_)©}$ÆoT†t>¨∫z˝\Î\"ˇ\0\Íµ \Íx≥)*\‰u@#J\’Ùˇ\0ßN&4\“d\Ã\ŸY\œ\Ïò\≈ï6\⁄	Û5˘ö˘Ùé€º\⁄GùUñ˙\n◊≥PÉÜ3=Ygê≈ç\0ª∏’ãvÅ}8Òß9Û\ﬁiPH\—\ﬁUS\ÍYlB\ÿh7:°»≤\·…éí»éUö4êÄåE¥\‡O-}î\À\"ì\ÊÚ£\\uÅ	$0ïç∂çB\Âo\‚i∑,ì\€—ä0\⁄\ H Òi\\% ’ôì,˘3L™dveP,\0\'M5°\Õ¿13.-\'òwÒØ^t¸¥u>lPZÚ1\ÁPG:Ú∫ìlaQNmµµ∑ïO‘∑:\nΩ\”V:OWìß\Â¨\Ëw!ÚO$g\‚R>\Í?\Í.áèn±\”Ú\„lY\n∞Öâıap\◊˚k3vp®	f6UI≠\ﬁ.ã˙ñF0Å#Ù\ÃEÉ≥´è2\ÓS\ƒ~_≤ì¨\‰∫5-7_sE\Í\‹f,\÷o\Â=ï\ÿ\Z\◊\”\·=\‹\‘\“˛õûπa®$Fói¬•çÇ˛ty\Ìe\0ñu˝CÖZrì2≤Ü\–/R\Ã)${qÒ\“\‰ÉgyO˚h{\0\„\ﬂ¬â*\"Åhö\"®”ø\€\ﬂFEó\Z@É`ï\"G?}W\»Xç®5.\«jèi¢ë-è1o#Òf77µ˘\nk>Ñ\“ù˙\÷g+≠t¯âXãeJ8*Døˇ\0cqˆS\\O®˙±™|«†\ \ÌïJpõUßfÑê\–C•LH{u†\«W\Ëˆˇ\0Û±ˇ\0˚ãU\…÷∫\"|Y\–˚∑˛Pj@ipxù+\¬√Ä4éO™z_ˇ\0°¶?ˇ\0l~\“£\’0dbbJ\Îˇ\0ª)X\”ˇ\0Q4û\nIΩè\Z\ÀE&©\"îo\Èac_:ò¿ôÒ\ÿ1ñ71YÅ≤\€∆¥ÛuÃµ ª≈è¯\‹\«\⁄ˇ\0¬î\Ê\⁄)w™\”Kê\«+\ÿ\ÿ|7R;æ òWÉJ\Õ$;ß´ƒá\‘`\ŸLC9‰ùà?\€F°É(As®\‹ue)\ƒg{ΩŒ∂πt\Â\Ì¶(\Í∆§\0∫6\›Ò>Ä÷¥Ñî\"[ó/PÖp[…©s«ÖÖ¨/~\Ìjk`∑k≤\ËTø\"\È\∆¸hp\‰\‹\€^7\ÃA∂\Î_\ÿ*¿\€[∞ÉƒíIkk«íä	≥\rÛ\\˘ªˇ\03{Ç§¸\¬\›\»?40ó^Ö\ÌÿóÚé\Ì\’\„e \‹ZT<\Ãu+∏s$iµ|iÙÉU¡ºnmø\‚Cssjµv†∞^W¸i)\Î\"\Ã\‰ä#Ø\‚x\”%;Ä#ÅRM15.#»å\≈0‹ßà\ÁK≥Vh\ÂVuWçú[``^1Æ«∞ap÷∑trê\Ê!T≥`£¥ö\Õuè™^0Ò`à\„líJáN¡°=\«J\Z4l¢\·ZH\ÿ»Øπäíˇ\0	-\Œˆ©aÃÆd 7RWÙñ</z˘¯ª°0\ PÚ≥6\—\›∆òÙN≥ì\”Ã±f$ô\»¿\Ó\rπêÅo.˛ ¯äQIõ\·î\À`M\≈KÊëèe&\∆\ÍΩ;$˘\'éõe˝∂˜7\·D\»,•Ü∑\‡yP\0üRœà¯—¨≤\Ó˚I]7\r\‘˜iYåf\Èô0¥åY\Ó7;V¿0\Ïn á\‘dd\Á.8πHE˚˜0π\”\¬\’\ÔL\√ãå∞\Àfvu¯è`$¯\“ye“≠¶ˆÆX±ôGß\ÈàY\0ıV˙˙ñ§±¶<*\Z\Ìn6Òßm&\÷\\ª!OÜU¯X(\„Ï§≤Lâ)Ùè©\Â,,H\ÂqI®X\–s.´\ËUÛ°˛\”.∂\‘\ﬂZ¥\Ê\… jˆ±m\0ø:îOé\Ã¢∆∑Ûªr¶\Õ§ûõ°}\0C˘áuF˙≥\»D≤ƒ±\À(\Œ\‚\÷P¢\÷Ï£æö\…|æ•í\Ì{∑\…@e[˚ç-\Ã\≈\Ã\ÕpWjDæT\ﬁ\€CŒÇâ\'Üv\≈`—ôºé∫Ä¿7\⁄.+E£\Íei∆∞}˛Kß°*&∞‚∞É-Ω´ß\€RN≥\Ï∏Ûê4πTO¸\œYú\\q\n\ÌW\⁄8Äl(\Âe\‹\‡w\÷Mó_\ZçGu¸Lp\Zx\'E:nUG\◊˝/YÓ´èÙ\œYsëèò∏9m\«\’Fé9ki`{\≈]#\‡\»6I2I\œa4£´\‚Æ\œZ°FT]Ω∫SMz\n\‘\Ë\‰nÖìã}\¬FSq,\rΩJûp∏•≤6K&\◊vx◊ï˜\n\€a\ÂG.$,l††\‰,-UdÙºìº•úˇ\0π\⁄\ﬁ\€U\Ãj.∞a\Î≠OÚ>û\0ìço\Á\0˝¢Çì£\Â\'\0\ZéK®ù-\–[jÛi£èO\ ê{Í≥çê¶\Õ>\Â\n@m¶∫∆Ø\⁄√ä:ˇ\0¶ˇ\0¬ª\…mA¬å£i´±±\⁄y\‚Öti]P\Õ\∆\’5B\∆»å˝¿S~ãë\Á\¬\≈\0+w\€Ò(&\‰\–\⁄@i±>ôÈòël\Ô?\Ê…∏\›\Ÿ`§\€\‹küß…ç\Êé\\X!CH∏\ËÆ-µAª\\~QL£êJÅÅÒ	n\Z@h\‰H<<A©ViŒ£Ö∏H\ƒ\\\ÀÛ≥\\Hó:mé¶únπ!1W_ıh~˙_\Î~ËµØc\⁄8\Z∑V2èQ¢\À{\\y≠)d\Îﬁ¢ÚU´v∞\œ*aÉÉ4\‹D3Ö\Z‹Å¸k\Êô]Jlì|âZV˛c\Â¿W“≤<¨vâÆd#˛µ#\ÏΩ|∑ßÕìózJ\Ô\Èµˇ\0-èùèÄ“´\‘Mõ¶\Â\'Gì™LÖ!vç!^néu~\Â\‡(5¯\◊\—sc\¬\»¿ì•Åb∞˙Pn\–Ad;∏qZ˘\“¡3JbDgñˆ(Ä≥^ˆµñ¸Ë´ôQñS†ØKìqe¯Sú?§∫‘çØç≤+›ñFUbÚ\ﬁÙVgF\ÍK\È´cK6ñh\÷%!Oj≤SvåDéµO2êì\n(^`&Û-˛\⁄\—nÿÄF\0U\n8A7\”\›FYF,°Eâ\›a\Ï÷àVd\“@E∏©q¨\Ó\€4Ò¬ïÄáR\Á\◊FfoáKèæè\≈\≈\…b8oNæ±∫û(7|=\’o©\Z®>5\Í\ÊF%Pp∞\„IY\‚$Æ+rú)\⁄Dx#Vä@\Â$Y\–\ÊˆímLî,häë˘@? Ö∑yΩ+á™\‚M‘Çƒè\ÍJªà⁄§ß\¬X¯_Zë\Î\Î\'òó`\ƒG,w≠πaN∏∂\·f\¬CÒ\r4\√V∂ÉNWc\„\·^∂D1Gæg\Ÿ\Ï\“,V\Âè%¨ˆ_^ïYR(E¡\—\‰E∞\”jØâ™Åi-$¨dr>&◊ègeM¨óp≠\Ï=ì™,æ\\x˜woêyo¿Yxõ\⁄R\\ë)pº\ÿm\n4§\”ddj©π#\‡vçO∂á˘14ä®\Z\ÁR\Ão\ÓQP\Ê⁄∏Ù4Q\\%\Ó\«3\ÁGéû¢R\Ê\ 2iî=vôô“¨˘/∏\«6-≤˛P\‰h∂\Ô•c•¨ÿûäXLá@\ﬂ/Jz\Œ/\ d!∏\€2\Ê_+Q‚Öé¢Ú¶\·Ù/\Í}s?©˘%`ò˜∫¿ÑÑˆ˛£\„K\0%º\⁄\»U[¿\ÊÖZ\ÿ\\)∑}mÑe\‹‹çHÄ\Z\"	°€≤\Êß\”p[+*(\‰ÚDXo\Ì\⁄5\"ú˝EÖÅ,s\‚\¬ ë\\G èÉ\râ\Ô∏\„P\Ó¥.µzÙ≥0\√p˜\◊bô\Ê…ä]\‚30KádQ~$ÿéá\Œcı7<,iáM√û4ösµ\ŸPï{ÍáÅ\€\À^)gå˚>ıw\n\¬Hë[\“w±dø1\◊^\À\—]6ç\·w\Ó*õè1ˆ\n,ifä å\Ã¿\ﬂr\ÿ!a£;1\“‹áøùhq±æVçµcÒë\√qˇ\0™å˙\"ï¯xú}\ﬁKiˇ\0\ \‹O\÷˙{∏˘åqkü\ﬂQ\Ÿ˙¿˚\Èßmä~Q`+x\Îz\œu>à\Èq\Œ\À\ÍR\◊_ge6õÑå+dµ0Yµ-kèÑù3\Ëòx\”eD&	\"©ª\0\rà^\0¯ö[&,±µ§R.ˇ\0\nq–âl∑\‰´èik\—J∑uWÜKEñMΩ\'á\Ì\ﬁ?\Â¯£#∞©¸\rgr0\Ê\∆\ÍKö+\"ê¿\›]T∑u—≠Z˘ò!\",\»\Â\«,v¨¨ª£=çt&\ﬁ⁄èWÅ_%\⁄Z\\vﬁõu6k+ç;Fæ\ VzÖnûù\ÃvN_´¶\‚o°:S\\>ô,\›=\÷f>†6]M{?TUPÄ\0I±n¡V¡\◊Ò3å≥¢\‹\ÌcXπkCd™úŒ¢òz&R\ PØ˙á#\€{”¥\È≠Ú≠à[sJ6\Ón]\Ê›ï\„u_J[:0∏∑òØw}6ÅÑê,¶¡•\0ê9®•ΩJJ´M\≈=B(ó1\·¨b¡∏Û4ª:Lk§\◊\‹	\„¿äyíä§n\Zt&Fî\›T\€”û†÷êM3\‚ú\04\'ágæ¨∞\Á∆áã§\"\«\…‹ßOuP\"€çªjX‘Çd \Ê¸µ¶\⁄PD\‰\ÿ(B≤ñFÚ-äõ\ní\»BAˆT=h†Pª\Œ\∆¡Xõ^âFä⁄ì!ò)dí;ã\€]ÆmÅx\ÂÄ>]GthÅ í[hâ≤ˇ\0\Ã\Á¯\nVÚ9h∞\‰ö\–aAÚòÒB∏\»%êÛ2\Ê˜\\\n£+D\∆&∑\Â5t§\›\»\–\‰\‹^§≠π<($Œ§˘\“\Ãe\Ê\‘)ç\€ho\È^\Í\“\‡;	’úl‹ña\√U∞•≈åìhmy_\Õ\ÏΩp£U/\Zy\—\‚bá\Ôµ].°®˚Ωá\Ê´M=`{b.á\·\‚4ß¶F:å\Ÿ\—-ÚùJ[Ç.\„\Êo\n#*D.E±M¿‹∑sn\·\Â:Ûß0c§K\‰‘ùKsji=Å0zJ¿^I\‰2\ \ÏMÜä†˛Q\Ã\—cAé-I<v([¯€çX∆Ωah6\€\‘\ÎTlHö≠à¥\”BÉ\¬\‘R¿ã>çeïuä_\“›á∏Û¢ö\Á¯\nâ\‹\rèBú-\√+C\Á\ÏY%h&RíF\≈]OE.S\‰K\Ë\‚âUTUøñ˜‘µ¥≠üP\ËuèòıZ	∂Ö$(er8ø∫ë\Át¨Œõõiââ¥\—\‹P</PóÉN\\íñO•Ùéù2ŒªÃ≤ÖB^˚J5ı+∂\⁄_∂îe\‚ ™¯§mïŒñ\÷„≤éI\Âé0¡ÅtÃÜ\∆˝µv~^&^3\ÁeïÖ†U@\¬\Â¶—¥{¡\ÂŒ•\ÀıE¶™\ﬂ˙¥#&Õí˘•BLäu±æñˆU´\"ã\\™2MÄUôùè\‰*Øm®ÜT∆ÉÙ\‰a°\ÂW,D§∆æsœù-R\‡yNΩızdò‘¥∫≠Kë\ \«…à*\⁄O\ﬁ-µ#\Z≥7e© ¥xÒóå†üâùı=˙⁄≤¯\”\Œ˘\—Oã\ÁVΩÄ±kãq\·O©ÃÆc\»RßBy\€\∆\‘⁄ÅO ≤\›6d\◊	¥?∂ü¬Üná—¶m±o\∆qÆ\ÿ\ŒÂ∑É\ﬁ\’\Ó\Ãó.\À\È∑)#;∂\⁄myåxÿ≥\Ôg:I\√\…\ÀJR˙â•±\…\–Ro\«\»VDïe!\ÔmÜ\⁄\–ÖÕé\\LÅ\‰ôJìƒ©\‰√º\Z∫<˘#vπ6\'C\›Pã∂Hû61π\÷\⁄\–\ŸI<»ù˙,\ÿ¥yù\ÔO\"\‰\∆\Ã9•¥\Ï:\’]2<ó*â†wÿèÖGôö∑\È\Z\ÀC:áâ≈ô¢≤≤\„\œ“∫\ \·®ı ô^Xú˛é$i˘ñ÷≠)i0∫hmâ@!\«H¿”â=\‰Û´Rß@x\√A	Lr§´s\Ï√ïõJ:ˆ:´NH)y\„ä/Rv\nxjIî\rM\Ë∑ó\∆\«?\n\∆v\»√µ\€k\‰\‚#nøüÖ\◊SˆW¢{®fé\ ~¸G\ŸL@Gß1BS0∂õ¿}|Eò{Íéëà\"\ \»;m¥*Å\ﬁ<\«Ô¶ç*-ıŒ¢ëK$\‚UK´ã\ZFü\‡÷â\ÃÚ\’\'\≈ˇ\0\"≠4mJ˛aTÅ}j{Ω9#ò˙gw∫£µT]\Œ\‚?@$k¸\’Dì;E;U\Ì√º˚\ÍU[fwÆ\·BπÚ*Ø\Ï\ ﬁ¢\ ˇ\0ˆ\ZGÜå#í\"\Õ¿mBIˆÉk˚+G’±>n T\Ïêkv0\–ﬂ∏Û¨ø¸ñ^;#dàv∫ù\"≥ÚV76•ì\◊aâ¡≈ánDh\À\'-\Õ{\ \⁄\nªK\"\Ã\Î+\«\ËD]B\⁄≈ÆÜ\Â≠.ã.\\õ¥Õ†¸¢üÙàÅ\ÈyyO\Ó∞ïm±Òê¿\«\Ï¨\Í•\Á&ç§±åÅ˙π\Ÿ”óbØ7Ωá`£\‚öÀ¥\ÍFîµß\»TÛ¢HG˚ën\Ô(ﬂÖJ,ç\Èº∑‚ßà4ö-Ω$;}ç˛\ Ò§kB6EÙ´2û\€‘¥Jöó\Ì_\ﬂB,∑´UÒÃäô—∑\ﬂIÇ\‰¿%\»y#R#b”ÉbE\√<B\ÿ—≤Hö¢\ dS\»\Z®Bvõs˚)6Z¬íå|eõ%Uø∂ûw∂¯Gæòe\Õ\È><\Ã|™\≈$˛ô˘U¨´\Í¢¸Q∏yëo\„P…ìzHºmf∑Å´G5µa¢@.™n9\—SäE\Z©\‡)L {*ååâ)BõZ¬ô#rô\ÁoN\≈UT\\t\–S$áq´+ü6\ﬂ2ˆ\\\ÿ€≤å\»\È“ì$¿Áä°3˛í\ \nHo&Aî∆¢\‰mo\À˚k®ˆ⁄ãx˛à÷æD˙Ú{\Z<k\’∏KÒ¢˜˙Z÷†∞\›Züp;\—M˚w\0h’µl\ÃwrLÿöÙ^∏\Zˆ¬§π\Ì\ÓØµ\»\Z\nˆ\‡9◊¥C1Úä\ZVÛ±ø¯˙>\⁄\–Œ∑-\‚\ZñRd#ñ\…{\Í\«uIû9T\«\"âÖôXwä§-Å\“\⁄Ú“´mAµ\ÔcjhL\n^õ\“íòq•¯≤\›OéÜì\ÊÙéü,/àRX¡;ñm\·\»#Ém<Fº)≥±)µnNó™≤ Q∂\\ç/D\Ó>\∆C+#¿ñ\œjuø¶ˆÒ\‡{çd^\›kkï°u˝∑`\÷+ßc\›JÛæú≈ú≥‚ìå«Ç|Q˚∏äiHù∏∏3\Î!\Zﬁ¨ıôÜ\“/U\Âté°ÜKI)ˇ\0ªô>\Œ⁄ñ<q≤Ø®ˆf6ˆπÏ£é\≈r\«R¸Gö	\“ek0\– π›ªKO\Á\ƒ\À1˙π$@.%å\Ó\€\€~b\‹\Ë>ùã2E˝d?∂\Ãoc\Ã˜ZùMôê±ôaÖôAº°\rıaÒÄ>\⁄0\€œ†/+‰íÖ\Í*è\0¨ç~>V\Z9¢,-\È\Ëç\·PéL9CMRoà:Ä¨¥—â/©\·®\‡4¨ô®F1aÜ⁄äOµÙ\Ì\È£\Í∑¡\«\»>V\‰E-\«À∫’ô\ÿKüéé∫d¿Lò\Ó8Óµô\‘4†~IÒeç7\ÔG\”^^\Ío*ˆp>*\Õ1\Ÿ&e03\"]ä£´zÜ\€@∑móôÚÇ\Îæ<¶Kã´p äº\‡GÖñdèsâÕü}¥π,Nùº)?P…éH0+\Íõ9\‰£C\·¬íΩóï?Ò∂,í]ü¯1âaV$∫˙s6\–Z‡Ωæ#†•\"YTÆ\œ3ˇ\0R\Ët¢ñFi9\”\„a°~\ﬂeuôábeíDºéç∂Vqß\Ë=¥¿0∂ñ∏∏\n^ìà∑\0∑P-∑õ;ö\’rJC*yë\‘ˇ\0îè∂Æ	,\n\¬+©∏‹ør\’.\⁄#{©¯\‘\”xY\ZÅØ¶î™\Áí5ç\'{¿\ÍBl íÕª ™£çËîµ¿DîJˆ\'pºLHV\Ïq°øç%\ÍX©\Âzx†ò}yõ˚{[\·W˛e^u°ÙÉ\ﬁB£\\º|H\'Q\Ì•˚ë}ODk3YoÆ\‡∫ow∫\’∫à‘∫\’\Ã\Ë/ì(=<ô\ aˇ\0\ÂOoM{JE˜^Ùjg\≈6D§\r◊ëÆA*?(Ò\·Z $ü1’ò\Í∆®ò©B\„\Ã\Ì˘Ò¨dΩA_#ê∫ÿ©$¯P\“\»\ry;ÃÄîoR;øï∂éd]Ù±Ú\›˚Ö(4\‰\ÎÒ©z‘πd$\—\¬\⁄‘±†ïí\Êâ\n$ÖÉi4\ \róTNB≠Ä¢\“;—•\ÌF$ˇ\0∂ºXjH<\Í\'%<!aå,\Î\"o&0\¬ˇ\0\Õ˛t\"∞3ïn\nüm8\Íq§é’≤\"ÑN\œ- ù˝<õ˜ﬁ∑Z\œR¶9∂û⁄ß0™\Â3ì†>˛¡LßåI≤U\‡mzD\‚|©ZE]\‡íF\›l<8\’÷≠\ËõÙ%¥≤\⁄^ß\‘v∞ ÅS]\÷\Ó?mG\n_ò√ÜV;åë´1\…\Z\‘›Ñq≥}¢\‡fÆIÄq,x\ÊE±é8ı\ZÆ¿∑\‹\∆\À\·W\„ıy¨∞\Àπ¸´ f˜[Z\Ãœè\‘˙îå\”X\–\›#\›eK˜\rI\Ô¨\ﬂ_\«\ \¬…ä6Úùæ¢2\√kÇ538.#S\È\Ìì\"ˇ\0∂\≈G0\Às\Ï6Æ\\\¬\⁄zR)=†\0=∑Øõ`˝e÷±|≥2\ÊF9L<\‡\«[}\ÎO\”~Æ\Èô\Â\"î¸§\Ì£	\ÿOÚøÒ¢`–úîV˝¿P\€\·\'\ƒpˆ\‘˜∞@ChNáè\Z§9V&˛Qßux≠	7±åˆÆã\Ó\·Hp\Í∂\Îi¬©ı\∆\„πtπ\·\Ì´2n¡Éé_¸Ebuæ\‡Gi\Â˛5°\»(/Mé\”~\Í•\“\«JÇù	\·\ﬁ+\√+É\∆Ù–öê\Ê7\·{èWLÄ\ƒ|\‹5“áÕï˜\Ènï~4æ¨;MÉ\„\·B\Ë\ra0UeSbMÅ˚\rJ7IPIç∏:õ©©0mÅ\√ãuU.M1»Öé4Ø´º_ü÷ú	Ô´ßB<õ2ÙA{ì\Â\Zü\ \'•t¸≤\∆HB3õìì\Ï\·ˆQY\"ú£p¯å±É®˛çNù◊´ë\‘:\ x2õä®\"Z\–T0æYΩôù>\ﬁ8~oàx\—≤41√¥ôH,∫Æ„™é\ÓtKüüò±Ú´µıU>QM±ë\Z%y∂\ÿ7E˚t\ÁL|¥rJëŒ¢P±˘ã5\…u\ÈS\¬\Í0¶Ú∫\›cõÜ\·\≈C/\„V\…ÎâüaV\rf\⁄¿©\ﬁ	eQ‘≥\›p\ÃZ<á$FZ\ﬂ\rº\Ê\‡ë\›Qfû®∫ÚZ0\‘3/fÖüï\„Û\·jô\À\ÀX\⁄G≈ëUE\…\0\\\Œ¿ﬁïcd\ K3\›v∂\“8jµa\ÍY\r(R6\ƒ<\Õ#\Âßmb\—–úd.>¥efëTÑU\⁄˛¶“üA4a\0Sq\ŸXQñ´ê\ X˝B¡O;vS\ÃN†∂\‘\È\›Yﬁ≠hZiˆHæ∞ö\‹Vo\Í,•>\—YÆ©Ñd¥±hÇ∫ÛVsk”®g,áñÚ	^P\‹fèk\Ïéf\‰\rU¡‹å<mI5äø\”3ÚRS∑O\‡s\·\«;cùí5Ü\ÊÛ\r<xU8Xs…ñ\¬wÙ£QΩmf\ﬁxr#á\Z∂I\≈\Ïxé&ºI¿\»N“¨/\Ó?Ök_+x\”R∞3\\,o!.\ÓSÜªG¥\n±Rî$j≠ é6,nx\–^±\‰kæeàß˘3\‡_ì i\",Mìs\08†÷ÉûVë\„u;Z6;[Ù≥)Øgî	=¢˛#¸®9&R¨ñ∂ú|i;KÀõxáG\⁄n;\„@åèF8\ \ÿ\ \‡$*xh<\Ã{ÖPÛ∏?\Ó\r\÷\Ô>V˚hx\›Ú2ö[ycú`p\Ì?\Á@\ZR±.¸A?ôøQ\ÓÏ°§ëô\¬l93q\‰_\Î5b´8;\rî¸svˇ\0*\n∞!Q\Ë¿6Òv\Ô¶\…\Â&GLÜWHˆ˙\—E¢Xù±≥q`†\\\“\ŸÚ\Ê.¸\⁄√ê\ÂMN0Z9ôn\Ì˛M,5<Om(…å\∆\Âµº\◊=î\Á`Kr›∂;NÜØé\ﬁ-°¨\‹\Ë® Å≠gcZû¡CLa<\Íò1&ö\≈\À˙\€A\Ï\Ìß∏q\∆A>w\œ\‡+7,ÆIb¿\Ôf#jˆû>¡L\‚çPYG=¶°\ZÛ´£ë\Ï\Ïø>˙Hñ\€+ü\Z9\„h§V˜É»ä\»u|) ò©\‚5p#∂∂´r.xö?3!*GùuF¸=µu±\rxfóiåù6ù=ï\—cDQX¸\"\ƒ2\Ë}\‚ã\Õ≈èI\·!;vü∂´ÙîRGÜ\”}\ﬁ\ÎW°ˇ\0\"¯\Ÿı{ˆ<\Ô˚,”™ñΩ;õ\‹e/¶∂⁄§ïí±&\ﬁ ß®\Áca\ƒC∞H\Ï\«¬•πÉ]xù?Ö\È$àVE≠\≈H∏Æc∞^±™6\Ë¸\Ã9Ú¨O\’Ú	:≤®?)†\Âr\ƒ\÷\‹F`\›\Ô\€V>ù¯Ñ¸´s\ŸX_™GXÉƒ¶˝§*jæH´9Bv€∑QU˜_O}±msÓ®ï$hxÒ˛¨#\Óãı&^\".Dg\'*…¨®£^¨\«\ÍXYM\È\„Œè)Ω=\√˝5Û`\“\‰\¬\⁄W\0Ç§Ü\Í\√Bq.•+XäCc\ÃQí≠£\ÿ≤∞+\ÍπÒˆ\„ı;\Õ\–d\Ó†˛a˘\«\€Z\Ë\ÁÜh\÷xùeÖ\≈\÷E7R*tt˚n\0”ô°â\0Ä\¬\◊ˆä3<\÷s\Â‡ß≤á\Îπoâ\“2gâ\Ì#L8\Óê\Ì\”\ŸzA®;1O®M≠`\Ë˜å\‡\»M\’l\À\⁄Aø\nOÙ¨≥6D\—<å\ B´1 j{kP#˝\›\ÃE¿\–Û°®c\Âà+Ü@o\ﬁ\€x\ZΩ»†é#J¶d28)\Âu\Ê?5PŸá˝<\≈€äm∑ ~Bxá∑}U5\"ˇ\0j\‹x\rBÛøwÒ†\—\·|èMè\ÀÂπ∞u\—e\ÏΩ¸ß€Øa´ù\…¢µÕØÆ†Ø!\ﬁ*¨Yq\Ìònl8É»ä\–\Ã3eWa)¯f\ H\‡m≠Of8\—3i\"n!\‚\rú{j\‰/\ZPÜnCóı¯Paæ[\"X\Ìπ2?tuWW#\ŸcLA˘rÉ\»Gÿáã\0/‹µõ\ÕœäyQovàíÃºë®\Ô¢2rRFXãe<- \ÏÒZWóÜ±â%\«Ú≠µèR-\‹yT∫D\Ó]mîC\ÁW\ÿ\◊2±≤ÀØ¢ˆEèåwy\œyªûëB®ınKkn\Íe\”\‰WA$ÚneπE<ø∆∞≤:*\œfQ#¨\Ë.\⁄\∆\‹\—˚®,\\í$çı\·\ Ù\ H§ü:*\ﬁÖ\—\–\Î`\∆¸i\'R\€Sïa4,U¯Wp€∫ïs\ÓîárMá*)u`8è7∫ß\'R2F±\0w≤ì∞Òµ¯ﬁîH\¬&\n\∆ˆ\Ô\ÂWÅU{X\rï≥\–∆íïú\ÎèQóÆ%!\◊K¸Cò=ï&fVIF°£∏\È¯\–*Djé\Z\‚Küq£#å\‰F}	Q¡m\'kÉ\ﬁ\rJ]\rk\‰Ø≥é\Ï(NG\ZÒ¶ \‹p•Ú¥ÒYfé=\‚°Û-m§\ÈN3†|≥áM∑∂†˚®igX\›\Ÿ˛∑6°L\‡p:◊ô≤®7µ‘´w\\h}Ùn3Àª4J™Uÿ≤™û;[]i¨XkkÛ1‘®¸\«˘èe+\È˘¶BÄDñ!\Í\Â∏˘$_\È–û\Î÷Ç6!ø∏	w0\‚*öjYl´\”m/´p\0pT¨@1EÒ7\ƒˇ\0¬éµÙ9ö©¢T,\Ê\‹4ô\Ï¢G\0q\√\Z:Cm\Œ˜=∂∞æ¥ª7\Êr\Àe∂ª;]£Ωà\ÁWeâ%∫Æ\Îìwa¶ΩÄ\“Ãßü!Ø4ç+X∂∫(∞°©s:\r8P˜\Z¡Å\Í1é¢5\r#˙ä¡A\”Ú◊ç\‘:^ˇ\0∂Cô?VQ∂0ïy\“lH—≤6K(Ç;Ú0,£\ÿ)á¸ûó•)p9”Ägo˛íj±è∂©U=r\'w†\“)˙¯¿ó©»∞c’¢îî\0m¢€Ø*u\“\Êõ+,ô\„XûQ∏\"‹ç§˘NΩ¢≥òOı>§ˇ\01õ$ëcJC\»db\“\Ã?§û}¶∂glv\n\0\“ ºÄ\Z\n\œ\»Î¢Å\“w\…\»Ù&ƒÖáó&MÆJÅßΩ¨(Ö=@N\ÂbJì\≈o˘}ú®¥¡ı?‹â\’\„˛æTlR¨\–≈ëbQ\’\\®„≠éù˜©Yè°O˙ó\∆vçæ\Í∂ƒçk\«\√¶c∂\⁄˜\È\\\r\Ëu\‚\‡ï\"Nª”ÑÄf†ªD-\"r+˙ºE!Pé¡é\›8[¸´tE\«éb≥]\"hßê\∆\» h\√\\ºm\¬\⁄WWá\Ãˇ\0Òo˛>õúæ_¸µÚ˚?\‰i†]w∑≤à,Ç´`^um∑,u>\Íñ\À@˝JPë≥ÖªF7)#K\÷;\Í>k`∂\ﬂm:j∑}ı≤\ R\·ªXè+ıBçÇ\«Rç$}∂\–\Zï™-˝¶t6\Ó<\ÍV\Ï\Â¬†okˆp¡Ô†≠Qôh˜5\"Eãû&ı-\Ê\÷\Â@Ia\0Ú¢zwR\…\Èí\ﬂÑz\–Öª\«cPAò\Ë=ı-«≤\‚à\Zf\Á3>/S˜èÃú$C\ÿ\ÀKæ£ï°¬áÇ}iöÚãy5ï\n\»\‚Hÿ´Ã§´h´\À\À)\›4ç+Z€ùã9\\\‘*CíüíT@˚\È•\ kpU˜˘çj¶öˇ\0∆ë}ÑAô!\‡Œäßºµ:\Ãe$G®#V\"ùµ∞\ÓBlåÖôæM¥ˇ\0:Ñ}BI\"\ ]éÜV\Z\Z´0\r%úZ%\Êü\›ˆÅ\œohlúIâ\"Ãä>1Ò=™/WU\Œ\Œ_`¯Qp§∑ˇ\0∂ó\Õ	?ë∏ï<™\ÿ˝(ûH\Â}A/˝H\⁄\⁄˝∆íc\‰IìâÚõÅxÙâŒªYñ¸\Ïhô\›\ŸW\‘Måö\„¥:Û™ÇB}[\…\Í≥yT\Ì\Ó\⁄\‹=∆Ü\Í˚íU\‘\¬w¸ø˝ÜΩç∑.\À_u¡¢™yÄÖ£\'s\0Q\œ\"Fñ¶\0”π\nû¢á!¥\rÿ∑±˚™ê\Á*Uâ\ﬂ—é\ÃK\ÂA\"˛⁄ÇNÚ\„!ê\›\‘\0\Ãy˙gh˚∏/.Œ¢ÛX”µ8ˇ\0\‚\ÂK∏vò\Ó í¿õpΩA$¥\ \ÁÚõÅ\·V:Ω¥<\≈∂B\€@µ˘ö≈õ\Ë8É´Fä\∆vÛ~^vÇ≥\”\ Û\ Úπª9$\—M∂”Øi™=-ßMO*I%ë\⁄\Õ\¬+â\ÂE\‘n`/\„LÛòGúA\0\n\0§zk\Ê\·èh\ÏÆ öYú4ñä8\n\Zñâh>\ÊNûúùó0\·ˆWë¶@Q{\ŸEAé\“\„FÒ?©î€É#˛`j\’\«a† òy!y~¢\‚\'ç¯Üx\Í\„=Üæ˙ˆ&f\Íuâà[p“ΩÉ\ZI£Wª\0M˚{i™∑›ör—∑©I\»∏5f6\Ï‹ÑÖn˚ÑpÙ∆¶ıct<≥1]ÒçΩÙ˚/M∫_O8íGFiv˘Ä:\rtÛq\·M◊äñÑ≠.$Óßà\ﬂ,ì\ƒ/¥Öe\Âo\À\«N\Í7¶dÆN8*ƒòœ£#$®I\Ô+«º\Z/`xö6W{\Ë^üÄòQàYº˜ywÒ6\◊¡@˚j9|`®Ãå,o\Ó•Úø™I\ 8\Z˜/(5\‚èR~#ÿø\ÁPÑL\Ê◊∞\"\÷\ZT\Ê1∏Ò9*üfã@F\‚π⁄Ü˘b∑\Ín\œ˙4*≤˘efÑü<∑±ñﬂï\È\Ì<˘WæõM\ÀdK¿pùT,Ér,ltdKßoç]\”˙N$H≤\€‘ìQv\◊iîcF-∂!\Ì®\«Dj\…õ\Õ\À^DÖ.dò\ŒZS˘(^÷£\„\œfo4w\'V`i|8\Î\Ô:≥K˙ªà∞\—jZL§\‡\'/7Hû#sbPÚm	™:6lâc\ /\È1*y\Ïs∞\◊\0\0∞ÇbgG;7ïøm\«-≠¸\r\n´@möu\…G\ÿf\r†6$\ÿM]Äl5§™Øæ¨$F\‡\rØf˝@/kÒ¢1Ú\Â∞i\n∏:\ÓQ¥¯\€]htQ*D≠úçK\Z©Df\«d\Z3†˜ë•≤o\0©∏<Íºè\ÌSV\”O°O8/⁄≤y∑i\ \’\Ê¿8?∞\‘vÖ\’x\"π\⁄$C!¯TOp≠ôí#&\“A7∑Òj\Œ}U\n¸Äp\Ì éMªw)˚hiz\ﬁTY\—\À3`\Zklc\À¬ûıû¿û\r\√s#lø∂™}\‚í\Î–∂°C\‹˘\€¸#nÑZı_€â™\⁄F$Ü–Éb;ÎÅΩÆkC2\Àia\∆ı\·\"˝¸¡®Ü\÷˜∑1R›≠Œßï13\–t\–\‘¯X\ﬁ\’^\Ì,8ﬁàèG«ó$É\È-¨¸ôÆáÖ\Ë\≈˛˙8¯Tt\‰u\Ï´Ò±%ÕîC\n˘õ\‚nHßã1\Ï\›t$˘^ÖéO\«5\Â=§π\”\Ï•\›G´)ù∞\·b\≈?º\„∑Ù∆ã\Í¸ØM%.â,∫\Îse\›\„aYXNE◊ÜÄ¯öç\ÕR¡™ènB^˛j#õFân6y£?\»OÙù=\’Træ;\›n√≤ô\≈>6Z©g	2j™xõ\ËTˇ\0)≠S1hÒa\ m\Ë=û>¢+ıAÌ®îôm¿\\h$Sx\‹+S7\∆YÆ™v\‘\≈\¬\›˝„æÜ1ò\…@¡ªTkNR\’¿$ﬁä@ˆOM|∑6=¶›¶Öâã\»\ÁÚÔµª¿¢•\≈;$ô/\Í!*\…À∑r˚¢º\∆\√>°¥Ü(ˆÇda≈à±\0\Ófìio®$\‹\·\‡ßûríl,Ω†˜¯\ÈNeF,≠\rΩUBÚu˝\Ï™ÒV8É&ˇ\04ñ˝\ÀCnÕµ`»ãi\ÿ\◊~µ˝7∑\ZN\…ná\∆\›\–~óRú$2|æHø™X__\“Tq=¸\Ë\œˇ\0R\È¡îπ[\Œl•\Àw\0{Í°ë,oæ6Úõò\Ï¶C©\‚¿T\»\÷∑QÕªÖr\—{\÷Àã\√\Ëi]3∞Ø©˝/ã	x¨\—ÚI3Y]@&\÷\Z\Í≈∂§Z∂˝{©åﬁå¡\“fî![‹≤\ÍJxZ\ƒ˚´\n\ÂíK8±™Ò+4\€sù\«(¥Xq\„\\∫ù\ƒ∂5\0\„\€V+\n∏*S\‘{Oñ\0≠ç:¥Ã†\Ì∂2Oòß∂Å\Õ\ÍY\–y$àFŒº‘É\Ã\r\È≤BqÒ\„[\›vÄOa£1¢á%6e_!y$æeS\›Kî¸I\Âàõ¨¶≈¥øçicçcY7\ZÙ\ÈG\ÕÙ\Ópç 7Idkw5\»ˆR¸éïûÆw©+\Óè2¯\ÈW[≠î≤<ï≤\⁄W`à.\ƒ9‘ïQˆ\’rf\ÂôJB\Ë±\∆\ƒ%\„Wk\ﬂızí ≈Å¨\\ëcf?ò]\‹(X¥k˛ëoi™Ú?ä^\‚Ò\Ó∆É*V@tÉ[∂áó Ω\÷\◊D>ryø%è∫¢2V8ZR\”\ \⁄7\ÂAoã∆∫4Qe\nvÛc\Ã\÷&Ñ·ãõj\«V=ÙLäª}#∑∆£B\√Ùxv˚™\nBZ⁄∑!^¥±c\Î3®ìK\ﬂU]\«K⁄Ä-Ù\‘Y\ÊD`ßµ\‰¯Ü\’ºt\0ó’¥\‘Ò6\Ì∑©G!\Ìn6¥é6˚+g\‡jé“±∑c\Ê\\\’!¸ñrb04Ω!Séß≤∏9m\⁄\’\Ìï5:µblCim[A\\H\‡+â-^HÒ¡íS`\0IAµ∆Äq\'Öó64ä»§\»\‹	_Ñ\ZÅñ\\\”wÚ@8 \“\„˘®<ŒØèò±T;.Ö¯Fßˇ\0U4õ\–∏34¯ëJƒ§ÄYà6;óJ!›àU\⁄Y?1+\Ó<Xvèm!\Ë˘\“6\ÁÛ3;û\œ`\Õ2∞Ev\‹Wp˝≥b..ºEı¶•JD\„V2∆î´Ìæç˜\—\⁄k\“U\ÀSë_v\¬Uº¶€Émµ\≈\ÏyãÒ®\·ı¯3ò≥Jub™o\‰{s\‡j-G–∫\Ÿu4Ñ\’û©Ù\œ\¬˙7ÙÛ´XéLO≤∫v-\Ï\ \”VF\∆™\ƒ\Î0\∆?‹â\ 1\ÓCp}¢¥]RÕ´cb\0\“D4π\Zzëû¸\≈	ıV/•îô yg\›\Ÿ\"¨\Á\Õ\À©<M∂T¯O\ﬁh5:85_*Æ£æ±Ù\ﬂ\Õzô∏I∂bo$K1<M∏°¨¨∞I\Ïô}7öµˇ\0R\·HW\◊Sâë¿∂≠˚àÛFKì`$¥ Ä.69#ó~µi¥ea\»˛\Ëø?kM7F¡s\Í™4Ö¡\ÁÒ\Z∞˙:Oò˚áÄ1˚*ïêùXÆ4íGTçK1:\Ì\„L˙Ñ¶x\0∑‹è;Ûπ¶\ÿ_Ò\‚;\·:˙Hm@õ_‘º´Ÿ∫\Œ4»ûñ\È\ŸJ\01øñ\‰T∑ííÑ\≈8}7 èPc:\›Ù6ï£\≈\∆¡\ÈÿáÑkm\“J˙ˆk´wRºü©/˝ºGp¸Ú€â\ÁaHß\ \ œîâLÜ˛P~~¿)\Â\Í,-˝s©Æqå\„n8Ò\Ó≥6ÜF:n∑ge	\”E\‹˙Ä\Ï\0ﬂæıqâ\€E^∫™\≈¡\Í\·±\‚wIå|´o∞§ö)®¨Ãß\“\'\À˘õ\∆=¢´ëÛ)±\≈Apˆ&^B˙J\€:nó\’\·\Èhà:Ü+3G Åq}≠\ƒyÆ\⁄i\ƒæî\›\“RîëJC£á1#˝\‡Yîjª\◊\ÕnC&N˚˙\È\Zé¿\\˛Øã®@ 	31Ùˇ\0ojãÉß\Ì≥[^k≤z|IÛí\Ï\Ë\ \»¶≠asŒ≥jr≥&¥ºa\„§\\ÑiggQ\ƒ ”∏T~i\‹\⁄≤ÓëîÌµª¯\–~∂\Z0dìëb]ΩÇØy%ô7\Ãﬁúc]ß\‚5≤,πˆÒ\›8Æ€ä\Ì¸∑¯µ\‡j1\‘\ Ùê\\\0.\‚¸µ\€\€cR\ ZTÙ‘¶\À\0≈â◊ù≠àQñßç\rÄVçáaß\€\“X\\ò\ÃZF	•∆ûR¿véÜm\Ì*ô¡◊ô\„ØeQÛ9\0\⁄,ç›´∑áˇ\0\ZΩ^Y@Wf6\‡eRN\"w0Ûqi∑g+EÇ3G5•àícÖÆ∑Ò\„\Ó4ê´•õà\‡{)\ËuQs:\ÊQ∂Äl9=BÇ¡xñ\Âj™[\«\Î&Uñ\“›âö&ıvÅm\«N\Œ\⁄e\“1q\Âù\Ê\‰yïGe#CQ\Ã#Ø•Æ¿A\ÁrhxÚ˛S\"ˇ\0∂Aê˜sm9ïÇ\‚3Y®ë\·ê]ob}D\¬¯≤p±Ú?gq™\À&l<¢qmäoyG\Ê∑\ŸEcL&C¸K£!¨ç\–lzâÆ∂\ÁVyH ùÑRô=X$!\rîÒr3†õCØ})n©å\…:\\\∆\r\ÿ~ùGŸ•,àX[ô\‘÷Öd\rpE‘ã0<¡§ìc¸ºÏüìä\‰?\‚\’|›µ\ÿ\ ‘çPº\œ\nôôb[\‹‰Öçxnc¯TWS~ïv)ÇYéVD©6\ƒ\ŒmqÃè\Í˚®$*\"\—7\›3õ)#Å¸\Õn\Í∂LXä©u,\Ó[q\‚k¢ófi ëd\Ÿ`m{Å\ƒq÷Ç\ÍôO∆û´\«øa±\'«ç&\‡iKÑ\Ó±\Ÿ	\"™nOÚ/y\ÂQYøsc≤¨Åwhë&∑\◊¸^Ñ≈ôfâ£\ry\„Cˆ8\Ô´ÒÇïñ\'Uó\÷&w\„nDv~∏ªZy|Z\œx\—zö≠\"\"\’\“~\Á\ÍO®-≤r\'â¥@N\ﬁ4<±≠\¬ \–7h´[+K\n¢dï\"ëœò2diem∏±?≠™é©ûI˘t:ëy‰Ωû\⁄TFdãèΩæ¡Tv\’*\‚^∏¿FoTñŸàà\Ë#Uæ\Í#¢≥(õ>Íú¢\ZıU~˝?U1ñxΩº´˝7˚\Ë°^Y\›<Å\"Ut˙∂A≥\»\Ê\√\«OóÇ-\ /`§ìØ}ìG\È˛\ÍlÚ\Ìïó≥\·°\÷h!ûa\‹qsäá\À\À3nô∑1˜TKCÑ_\Ëd*ûp\√c™•Ö˜[\»µ˚iwXÈ´àÉ©be\ÿ$\—˛ñ:\Óˆ\”S\È\„(Ev™ÇD¯ÛbJo™GÉqVˆ\Zr\Â0Ñk	ÅJ\"e^˚\–\ŒÛ,e\⁄\⁄Bç\Z!\Z\≈<)\◊RX\'Y\¬˘˛ü4oUrZ\ﬁÑ©∞ñF\«h\÷.\≈¸†\Ì‰Ω¶æì\"\ﬂp\Ì∑\‘\Ó5|S\'ìÆá\À2R\÷a¬á\·Ø:oüç\ËdÕéxF\Ï£√ó\ŸKæTì\«JI∆•µ9[ïn\Ì7Ò©á\ZiE&*s÷¨—è\ÀOí,6(¡\”F\‡Úß)\’\Zxæ<m:ë\ \»Pr÷ÖXSÄàé08Rm=ä™}JÚqåìª+nG;Å<|\⁄\ÿ¯p©ca¨g{\Í√áu™zZî∞\‚à\Ó\ÿ\ \‡\\©Ωé∑∂º(|û≠ëêO5c{>â©˝ˇ\0Q>E\‘yúê™1\Zê:ë\È¯±d]§\ﬁ\„kïPN\À{/R\›S ê≤≥—§ZΩ§r\Ÿ”ôº†&√¥/á+xPô].LX˛b2<l.Ú=\¬˛\⁄+\"Gó(˜\\\»Hïc6!l|ßıyu6\·]ä\”$¡ú\≈pc\rv\€«ÖJµ\“\‰ﬂ∞q£qz\ÓìÇRP\≈UÅV∑çˇ\0§”¥p\–6;+Ö±\‹\ŒF\÷kmèà˝’ôıV<ôH$ÜC∏?-\«[˛ô\·\‰lpé†ëa6ø\È7˚≥\«Eåu–áüc\€\…h¢Öc\ÿvók(∏\Ô\ÁQlà°≥J˛¨\«\·UU\ÔùQû\≈\»xû\È}í2\€in\Í™P7çX|7\Ìß¯\‰Ø\Àd≤N°ë!T\n\ÃnZ\Ì\ƒ\È˜ZºälwrÚ@\Âp±Q$d	¯A?ÀØ\·Ri£\»òîzQ^¡\„ë˘¯(¶\Ëí\∆	~[v˙;\ƒ\÷\€\€D\‹˜Q	\Ï.°ˆ\Ó\Ôø\ná¸û,kµÆ£E∞m<\“Lªò\ÿyGSçL~M\ÀIïM€µ\‘ÒÒ°rÚ6´´_i∞øq:‘°äi\Õˆ\„6ks\Á•ù;.v2zVC®,@£|ö¯´\ _\⁄\‘@\Zc3Gº/\Ì!¯é£¸\Ë¯\ŸXóô¬©mH\‘\Î\Œ\‘\◊.\ËYb0∞W<WTkr∫\–Aí\‰â%TR/ò˚Ù™\‰˚#UUº∞àTc\ÌN\\†\"\ƒ¸*M\Ìn\À\—mê]}Xõd\ÎÒ)\ÁJ\“,h+\»Xqπ\ÔØrÆ/µ¡\"˙)k\Î‘Ø∑1†≈≥%`=Af\‰j\Ërm°:\“5òcæäét Yµà§\Í5i\‹\–«ê,\r].*\Â≈¥≤.®\›ﬂ§¯“úw\”R0/LÒ\'[pø:çN\Z\Â\rÚ∂\Ÿ#\\I⁄à>/^≤FV\ƒ\Z\r;4ßOüd°B\Ãl¨NÑ•∑-˛\€R,Üõ°\–m!´E±Éâ\‘2˝Váï%\"^\’o*˝∫\”\\\Ã8Ú\0\‹÷ê\‹@\„H0q\ÂyRb¿,N{K.¢ù∂^cíIÜ˜:mE\0ì€•\È\ﬁ\'¨û\„c.:X\œ≈úÒ$‘ùXõÆÑã˙áe@dπmìZ\Á\·êpø}LΩÜº∏öC**´m≠kÒC\≈jºúëèHu h;O*´\Ê\\…†n7\‚ê°rR\\\Èñ¸±¶≤\»~\'Ò°j\ÂLå©å,n\Ì\À^\“xS\ÃqÆ.0\r)˛\„\'ò±Ò©&4F\"ÜT%Æ=¶¨gï\Ÿ\ZìÙ†\⁄>\ n\“$â™\«\0ºß\Õ˙VˆˆW;\À=Éy#PÚc68ı2eHóµéß¿öß˛G?˜$òéHõGΩøÖ$üAå£\0YPk\ÿ*\È&Le±ÛLx ¸iZueêm\«)ÙÛd>”•[\ZX\Ó\'s,y\—@!73}X\◊ZƒöíPŸ≥¸æ<íÛ\ ?ò†\réT©fIZ\¬\‡{I∞Øcf^\Í\ uN§ôS\√dò\‚u$Ú/∏}’©î˘á∂Æ´Caπ\–\“!\›\ÂÖz$“ª‘∑ÖR…ï˙üÉ\‘\ZX$\÷\‰G\¬ﬂÖf\÷Êæãó\Õ#ç\»\ÍU\«:˘¸ë|ºØü21[Ωè\ZMn:=â.ï0/PSV)â“§\’E´VºçLÜ—©sÿ†∑\›G¡\—˙¨ˇ\0,Ä\Ã\‡ ˇ\0\≈j % :êßP˝-ûˇ\0ﬁñ(GeÀü≤¬éè\È\\P?w&F<ˆ™®˚oD	\Ÿ\‹\¬\¬∂ú/\·zeì\–h7\‰\‘ØÓØ£˙ØHe+ ñ@\‹nˆˇ\0\ R~ç\ËóÇd#Qi/ˇ\0ò\Z•einQå\ÈÒ\‰ÆA8N%\nÅõyÖ±Ωé\„n=î\œ/2e4gV\r`k≠É\0A\”m¸)ûw\”3c\„Oˇ\0ﬁØ´´\∆@G\—lv\Ë{hâ\—2®\‚5xÿØõrh˚Ö∏ë\√J\ \Î\‰õFïû-N{\n\∆\·NAı$oÇ%‘±?§sÒ:vD¶™≤ÏëÄv¬çpª~-\ÌÕ¨<µ\Ì¬Ø\∆≈≥ëißqwë∏êxñk\Ë;á¥ûYã.\…?\Ó\Êc¡4@G\r∂áp4›£ª&µˆ]\œS‰≥£âdWv\…2Yc\ZlÚÇ\r’∏ç)nf\‚\‰\…9%\“ıcq~=î\“4.$…ó\”\0\0∞&ØÆûmN\‘Ò˚*å‹à\›\—\’,\\\\í≈õM,nx\Í•w\Z™\ÂëKt\Áê\0\“9Ä8\’\—Ù\ÿP\r\◊o¸(üTs“º2Ø3G+u/ÖV\ƒ.:j#P{HΩ\rõa	†_u]$\Àk\Ó°˜¨\‰\ƒ5∏‘ùl;i\n\À\‚\“\‹a”ä«°N\0S˙\≈…ø≤ôÕèóèÑΩb\ÂMÖáÚû\Í\Ã≈ìô\”\“XbXd:õ¥ëkãwSnü\÷7∆∞\ÃA6”ñ\ÎT\«R|N<0¸°z1\À èk.\Ê&\Ã,w5´“±˙§á\"8\Ãx\0+[áiÌ©≤\„\Âi*´\‹n\0ÿé˙¥D\»F\«ÚÛëº-eÚzst¿uﬁáEêã˜ˆ{hlÇr1RX‘∂\÷\⁄\€N∂5≥ïU1»Å\‚qfS\¬\ﬁú\Œ\È≥Ù•|Æû}L\œj\—_üx™LÜ±\ÿRWt;ê—∑úˇ\0)6÷≠XOkõ<(\…\»2πﬂ¨˙I\ÿ◊£\·q∂˝Üı¢K2eke@l3G%ò/¥\0\Ó\ﬁ/•\Ìß\„N∫oZÙ†döÜ\ÿÀµG¨H\’JÛ”∞\÷v<Uv\Ïë¸[?∏E\Ó-Àü:˜&S3\"\ƒ\Z$çà1h\Í66\›\‡üàﬂç$¥ÄmÀìk<ÿêDÄ+wèl?ô]ëÅ=¸\ G›û≤\›KÑO$kpA\ﬁ+Û!í2&WH@C)\‡¥w£\‘\Ô]<\rgk4˝\riD\ÎùYú¬í\—˚oF´¨é\rÌ≥óy®\Â`˙\œ¥m©Q˘O†l\Ë\€\ÔÒ\’a\ÂnD5Ü5{mø\Zé^B≤$qùXn~\Îr°£\»‹∂<jâŸá\r;i\»\€Kû-\À\ƒ\ÈO1\„\\hÇ\„RN∫û&Ñ\Ë¯ëOd9\√m\n-ø7ç1-çy‹≥@R`DÀú\ﬂÖ¨*ßá5\ÓdîÅV∂dÕ§\È\ﬂC\…6Y¯\◊J\0Gùì\Ê¡\›ÈÄ•ª\ÕV é#’¥ú\n\‹_\√mãª#\Êå\ﬂ}\Â5∂¶√â\·\ÂΩ3\„z<•Y\»ER¿y•\‘;‚©•≈àÌ´™wv¨ÒTÑ]ù|u£\‚Æ¸äs\Î!ñ6’•ó[ì°â\ÈŸåT\ƒ\∆˚>x⁄°+)ä_N\Ï&ëåJu>m4\ÌΩâ\”\€70ºç\«¯T\œ‹û\ŒÆ´u\\y)kP¯§–ìPóÚ‰ç¶;1¢Ûë˘§n@v˙∏!Ü\»¸Ü\’SÚß{U\·]ÄKñ∑\ƒ\Áõs°)\«_RHóõ:Å\ÔπñK\Ì=µñ\Ë∏ˇ\0∏\”H∑Tåûˇ\0\»VÄIp∑\ÂZTãáÆ/T\Ó“º-N	ê∏I±ouIˆ>í¢H;C}\‚πF\‘\ÿ*$\”;\‡t\«7l8/€∞∫≠áß•äb@§s\ÿ	˚oR\⁄\Ã|†öµbóÙ⁄îÑ#\Ì@v(˜Uõâ\ÁT,r6´@j%Ä◊µ^<±\∆.\‰˚?u!\…hØhaô|+#x!¸mV	\ÔÆ\« \Z\0ôV>X\"U≥ÿ®ë~ \ﬂEWâ/\⁄\·QWéAæ6Ω™oF∏`e&¿l7Ùr\‹,DüMbåˆ\Á∑[ë¸◊∑uT\Ÿ\…L—Ö«é\⁄\ \Ã\ZFˇ\0^æÂøà≠Nvy\ÿÕé\Ái:§ñæ\∆\‰mœºV3#\·NW-o2|2\ AR9,6ˇ\0“å{\ÍÅ\Õ\’$e	méb@ñ@H6¯é\”\«ÔÆûf\›fã\—kaß≥è\€^\ÊIé\Ì\Í+^B\¬@V‡¨ÄZ\‚˝¥æ¢ò\»fgæ\Ìcß∑\Z™©Z@¶\…k\Êãq°\€0ìaØÜµ^\\I\ #R8\\üæ°ΩP∆©QÚ6[\ÎH\‹\ﬂLp\–\≈v∂ˆ\Â\ÿ(8ô»ï«î|#∂çñP´Sh\—Yye≠!\ÿˆ‘ë®\ÍVcg\«\ﬁI#\'N⁄∫á\n]‹®åç\€\ƒm_WÅ˚\ÍEu*W¯\‰ñfD1oQΩ\0›¥¸W\Ï\ﬂ™&JSßa\‚=îïû<r 6[∑;~uë(ÖôHâ∏#Cc Üµé÷òzw5\À\"\»mx\Èπ|\¬\‡\ËA\Ï\Ï°\‡\»B˛;\Ëê\‡ãäÉc%\’˙@NF\"ìA©O\ÍÅá\ƒtq\ﬁ+lˆ\"\÷ˆ\“lÆà•\⁄\\)mYy_¥U+¬ÜgjnÖ\ÿ:b¨æm√è`™Údò\»∑îÒ#Mj”çì	fñ2.xçE∏\⁄\ TÛ™#\‘/\÷\⁄S\ﬁ\÷÷≥ëJbkT\÷	¡\0ﬁ≥≤6≠§f\€\\X\ÎzYóàA%\«e\Z≤\\iSb◊ç$\‡vI£:¡ê\‹p\Ê+\ŸZ\Í)¨¯\—\ 5=º\Ë	∞ß@\Œ\…Òu\÷\ﬁ#çhöfV´Côã\'\ G,Gkµ\Õ˘O\Zd≤´\⁄,§	\'c∑ÉWù56`¿û@m\„≠](éD*\‡<A©bE.Ü\Â¯júÇ\Ôûòª\Ì;G}´\—$∞/\Ó\√˙OƒæùHyF\‰}∑\Â\√Z\0\À\„EâV1ŒßÉh4<\Î\ŸsY\ÃpàÃ¢\Œ\‡n˝º≤ù\Êt\’\»#Ü\Ô\‘\rçΩúhX:\«:\…#óU\‘-π˜öß\rÚ\ cW≤ØYm*`Ûß\·µ\÷y\≈\ÊoÅy ˛4\ﬁ\Èe\Ì\Á]=yW\ƒvc\ƒØL- ˛PA\'√ï!6\ﬁ^N∆ájôYRO:]cé£0ˇ\0nM•W∞-9åi\·Y¨´\«\‘=4\Zç/\‹M\È°yQ\Z¨)m∂\nà;MSÚ˘\"ﬂ∂E¸)ö¢∆°W@*@\\÷îØgg,\\1\Á·∑èx´\‚¡`˚§`@\‡m†Ø\0-†\–U&è\¬\‡¯è\·WEèa˚Ñ3w\n¥\0Öq4§g¢√ÄÆΩy]Ho]zÚ∫êΩu\Í5◊†d¥5\Ë6®ﬁ∫Ä\'\·TúX=OT Y?R˘I˛´qˆ\‘\Ô\\\ƒ\–9=™30±s†0eF$C¿e=™\‹A´AØiÅüì\Ë\Óúnaöhõï»ëG∞ÅU\«Ù^\ﬂ51v\‚@@=’§Ω{zr\≈\ \œÙDRêW5‘Ø\∆3}\„Ãπà\‰pVå®>\–Ml\Ô^D±§|ˇ\0®Ù\ÃŒò\Êzo¢»ár\Ÿ\ ∆ìdJHøe}K&rax\'A$N,\»\√_9˙É£\À“ß\01ìk˙2\"\‹Q˚\«\€S´uF\‰Jë\√[kL˛jc\"ù\∆ˆµ.H\◊F\Ì[Ì´±≤ìÜﬂ•çX\"ÕµÄ©\ﬂtæß\‡|+°@€ä~⁄ÆW]•xì†ıP˘à\\»ßr\€Q °i—éûM¥\Z≈ë$dΩøU1ã(ë£Ç;\Õ$\∆œé@\Êá¶1º<£kxRgB\Ï\‰i\⁄›é¥BHÆ\Íó`\¬\ﬂ\Ëc¯R¶\Î)#≤¨ã.Dö2\«A∫Á∏´/\„P\÷†1§\≈C≤Å\œOn¥,∏xÛZ5\'∑Å˜ä•g\ƒ\Í⁄íy’ã.∂Ω\Ë¨\¬H_ë\“\‹\ƒ\€[±µá\'˘êï\Ì\Zä~\\\⁄kÄC°s‘û;¨\na\»]7M\'R(©±¢c™É~\Ía%Ù∏\Ï÷ñì\ﬂUjPLVfN*\ÍˆhjéuÆ\ÂXõäúµ†\ƒÀ†\ÂT¥§\Ë(VG„∏è∂πVa®k˝î≈Ü(™r±\„d,Ñ,áë\—OçS&FDcD-n\Œ4$π\‰\ﬁ\‡É\Ã(ÅhBIe\\Ém¿•ìº⁄õcG ≥\Ã\∆¸£ˇ\0\Ê®a\«h\“i,\Œ\√rˇ\0(<*\ÊjNW<\rÙ™±Ú\ÂöFà≈≤5‘∞<eAû\’j$™ãe\÷MK\n;hêa®<¥∫L\Œo\ÕI#ñ\Â\”\Ó£’¥∑!PîhO\0,\nb45\Í5uutq©.ï\’‘ÄïÎâÆÆ§WWWR´¿k´®\⁄\Óu\’\‘\’◊ÆÆ†Æ\‚-]]Hd+\€\◊WS\Ì\Î\€\◊WPõ´\Õ\’\’\‘\«QTO3\∆cû5ñ&¯\—\∆\Â5\’\‘ï\Î_JBä\Ÿ=,∞)\ÊlRw]GM∏˚\rd\Z&~\’\‘\≈\Ëè†*¿5¥ø}Ç\ƒ\È ∫∫≤z\‰\…\Ã\‰Oò°\'!tEArg^k´©õ\“aGùêÜ\Â∑x—ë\Á°û\‰ÿÄ9\ﬁ\⁄}µ\’‘≠ìE\À˚á¡8\⁄Ô¶µ~\‡¡∑uuuN6/%©/h´õçl;+´®vˇ\0≥Öz¶ñÆÆ§2\√\·Q⁄µ\’\‘é¡\·Q6\‡+´®\rT»™\„Q\Z\Í\ÍôlO\Â\€˙t\„µuu3&R\ÔWb\Ã˛≠ôã∏±7◊çuu.±Ç\Œl†\\–ôYl¿-¨Õ¢ß={k´©Åˇ\Ÿ',2),(_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0<\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0		\n\n\n\n\r\r\Z\Zˇ¿\0\0\÷,\0ˇ\ƒ\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQ\"aqÅ2ë±B°¡Rbr#3í≤$\—·Ç¢\¬CScs4%\0\0\0\0\0\0\0!1AQ\"aqB2ˇ\⁄\0\0\0?\0\ÓHX\Ë\r|{\Ë)πÜ\Z]I±4™Gç*Y+§kjì$ÅŒûL§å•¥™\…d[CnT≤-y\ƒR¥	6´∑¡”¥e\ﬂ_ ∑¯ÖTM€±\Œ^Lq°∏b:øÜ\⁄÷ºµ\ŒÃ∫\Ô\ÎøÆ;\Óv>\’\◊P∆í<•án1[©ê-•π!æ\⁄ˆx\ÈkÀª˘\√œ§πRev>ìªK2˙àÚ9π$9\‘\◊\Ÿ$ØGÖ‘ÖV:@Ø7.£\·t\◊\⁄i¶ù p¶ì.Qt\ÍP}\‚™\'/\0Bt`y\ËE(åı1\ÂjK\…\€Xﬁê\»o1È∂û4d\ÃÛ\È®≤T‹∂Ω\Ë»èÄÒ7™*n@z¥˜P@-≠ u«î\Z2F§^ú£$\\\€\ﬁiåÑ®öº\›0\Á?¸o˛Z≠jmE\ƒ6Ç\‡_∫ç\È«≤T®F\ AæÑ–õH_\Í_\Ï†¿jh\ﬂ\ÿhTy\–oOa™_æ°°k\””≠<ï6Buù/∆¶Çí\◊!ç ≤˘h3*\\:íi¿ë\”\Â&ïI\0q\n@/A+˜\·ˇ\0ÚrØ˚ı\n\”Y\n¶\‡Jpv<\›»ã?G£éÑ≥\\|Mz?7/\Â\≈\ﬂ|\Ÿ;˝M\ﬁd\Ã\ÃlDvóluÖVM\Êv\'\⁄M{Ù\ƒq¯\À}ÙW,KŸ¢°ë*â\ÍØ\Óû^è˘q\·êŸõçyxu°nªˆﬂ¥cºŸí\n4^d˚+]9Z\œ}\Ê[\Ô\÷ôeh#Ù\„\Z6ø\ÎØCó\À˝∏˜\Ï\Õd˜˛Ò-ã\Œ\ﬁm˜WO˝mX^\’3k˙èπ‚∫≥?ZÉb¨nO∫≤ﬂÑ^ù]∂{\ﬂrÚñ\÷˘[è\ËÆ.úøßVù¶I-®:Zπ.∂:!\“- ¶ö#9ı¶åña\‘mq•Ú;_S†¶-x`r\›`\›xZÇ\…h4ßÅìöïï\"2˝ yè¬ôìe\‚ø)†dF†\ﬂÙR*oqES\ﬂˇ\0˝\’Q5Ä\–zk˛QN\’j\\\nYQ\0\€Z2ó¢\‹h\»¡j¥d¨!o\‘\÷\ÁLâ◊Øß\·H‘É†\≈J\ﬁu0c@\√\≈$üu é¥å#q4ÚÛÉU\Ê !§ì_à[â°OA ⁄ÇWw	ï∂¨à\„SH°c_,+^z\€¯ùßÙw\Í\Îç\€˝¢∏\Ï\√◊ä.æû}v∞ˇ\0ò◊π√ïòè2\ﬂkk\Á]ü|\‹6>\‰õ	\‚h#\Ëì>)≠\ÿ\Âh¸5\Ë\„ççw\–lí\–n¯Ñ‹£\«7OáP\È:{\≈x\ﬂv≥ı\ﬂÛ\◊M\‹˜\ÃM∑’ô¬µº†¯◊õœûk´}±<w\œx\ÊÓõîΩRˇ\0-XÑ[\Ë{9káõ◊ÆT¯´ åI$ñ\Î\·z\È\ÁØK˙≤°ã\‘~}\Á\Ïµ\≈MS°ÿ∑∂_.+ŸÖ\÷\ÎXm¥i9\’\ﬁ\’Ì∑º2Kè$J¶\Âç¿\◊\€\\˚·æ≤\«[\Ìm\‚Y±°ªu-\Ìn`˚ÎÉ¶±”¶\ÕyïJ€ü*\Ê\⁄6\ ,ä\≈«ÖN Äº®\"\ﬂTF˜FáZIxGUŒû\√O#5\ÓΩ*æ\Z—ëiâc‘ì\œ[SFG∑Z^&ö\€KÒ§2orb\ÿêç˛\Íπ\Â(±`à¯\"îT\ÿyˆ©3.í≥\0ú?U4îÖÆ5`¸ñ≠\Â6†dÖî)π¯\”ø0:∫∫~d\◊-ÆoQï\“Å˙®…Ωåi{ä2T®7ã`\◊\ÂH=]ly_Z¢-¨	•Hç	ΩAR\√\Ÿ@\¬F’äπ[¢ªX¡åΩ¯urÆﬂèL\Ï\Á˙w∆∏˛kã}u\Ó®Ú˜e¬ç\√(=Rt\Í:WE\Ôré+\‚a\Õˆ¸\‹I\”O$	ì0és\Ã\…«Öç\Ì[\Ô\Ê\"X\ﬂv.\Ô≥A\›\€\‘\ÿr ÆI<∂\ÈWë\Ã\÷</^g\’\œ\Ÿ\”\Àx\«w\'|\‰Óª£±p∞á>ö\rGH¨¯¡u›ãöwü5Ω%\Íf>[•\Î∑Ò\À\Î[>\ÿ\ÏL\Ì\…\“|•s∏\Í+\r˚H\È\Á\¬\◊ZÿæücbD´	˘Æ8\◊˝]zÒ\√D;EH\n˝\"\¬¿Z≤Ω\Z\Õ N\÷TCÅOT{\’z\√3\Ï+é/Ù\\\Î‘∫}£ùNmö˜F\€(ãvÑ.=\Ì\\w\Ë±\Ê\‹z~&ó¯Ú\ \À\ZL,®≤aY†ë^&\’]H\"≤ﬂùäó\'%\·k‹ö\œ\n¡°\„\·H§Oç\0\‡`™mQ˘t£ ÜU)\‘N§—êÒTã\\®\…<\0\0o¶¥S{ò}tÙõ\Ó´‘∞áˇ\0û y\"ˇ\0îR\ÿ@\„\ jTL\”![Úßí\√\Ÿû[R\…\·\Í˘T¯\—(6\Ë§\\ÒΩ2GJı\ﬂ\€@\’(&\Áï,-\Ï±cj(î´§\rÜ/\ Ùåx\ÈA<ı:Bç56™Ä\Ì\Ó¢¸y\–	Ω¥†\»wTR\‰\Ë8”ûB\ \'\«\€{g\'3)Ñftg766#\ >\ ˆ>nx\◊?\€\À\Ô\”;ˇ\0\ÈÚGtniπoyôà˝H\ÓDc¡WA^∑=|0\ﬂ{P&\»X¢ó®îNæôn\0ìkö\—37,±≥ç\√oUÚàGë9®‘èq5Ü¯ß\Ãq!c)˘¯(˜\‘c\nû]\È\ﬂfGóñ&\»^•O3_Kü\n\„\Ì\’\Ÿ«ñ]\«gŸ£H\÷¿*ä\‡\⁄\Â\ËM$çˆ€≥\√\È+À© h+£óº\ﬁˇ\0M\Œ!Y∏p\¬¡ï|ßï\È!r\ÎvU\…\”\Í\ÿhº\Îû\«fπ¡å\ÿq\›<∫X\Íjl_;ñcuÜè—áâ≈ò°ó\„mµïÜL¸û\Œ\‹”¶S.«îˆµÙâ?/∫µ∫˚G\⁄\Ÿ]*,àgé9c7WÅˆ\Z\‚\ﬂ\\Vö‹úP<¿|*h#µ∏\Z	 \∆\„¬åÅak\…= ≠Ø¿\”,\–,V\◊\·A˙P£;é∏Sé^õ\€Ï™ï6£AaB˙t/˘E-èWélÒ©Qµè˘Åπ¶E*êzâ\“\"∏°µ0BÉ\“¿ç<h.z≠\Ì∑¬ô5Ò∏$èIt©	\Ëµ¶\Zct#ü*ïíÄ\0(°\Î¸æ\⁄@√°\”\ﬂzfp_ß\ﬂH=∏Ω™¢pÚsóô*\ﬁ\Œ\‡\…¸©≠∏Úˆ©\Èº\◊[Y/Ø\›\«.ﬂ≥æ$R*F\Ë!â\«\Ê?^˜-<¯˛=¸Ú˘™6\‘hkøXŒ§\'J\Ìv\È…ø«ï=ÑW29g6\Á©\"π\⁄/˚Ce;¶\‡®Ò©\‘˚k\€\…Ú\”.\€€õd[xÙ˙m\‘t5\Ât\ﬂ/Oû∏çñ¡OH\–_\·X∆∂Æc\‹r#Q\”!:i[k\—œ∑o\Ï4˚∂FCïv$Ömi\Î\«]#\œR˜#SK+¡π\ﬂ˘lt\÷\√∆ï9<≥Û1$T˚/,ñÛ9pKâ8\ÍÜAc}m\‡G∫´Yñ[ü˙m\‹E\“n\ﬂ\Œ{\Á\Ì\Á¶6\'˙êüîèu∏¯\À\r6\≈tZ¿/sj\‚oi\«\È) â\ﬁ‘îâ\–˝î\œ&ôàΩçD\œ\“K\–¶∂4d≤kqˇ\0Òdxzo˜Sï5\n˙Q¯Ñ_∏S™‘©,|\ÈQùôdN6<hMá\ÿ\0>Ü\n tãiLÃ´\ÿØ¥PH˛∞\„~v†a´V\n\ﬂ\Z2£\Ï\‡ê8ﬁãH⁄ùmm*r`∑ç,áÜ\Âá:-8Lã¶¥\‡$0∏¡@é4`™f\ÃN.~\‚\Ê\∆<`|O\“\’\È¸ºÒ2\‡˙v\Œ\”W\À\ﬂU∑¨≠€∏dFêºPPopZ˛b+\⁄\·\À\À\÷˘e◊•c\ZrÆã!\ÁŒ£\Zâ≤®20ˆö\œsä¡ì&D†\\Ù¨Ø\⁄\ÌLˆ\ËÒ∂\‰úˇ\0QŒßÜï\Ê};Ω/üVıßf∞\È\È±\”\›^mæ]´|\Êpüo:©Iuà,£Q\ÃÛΩ1ÉÒ„•èH∑ªJ¨ï∏(\¬Pyx˚\È\‰M≤è+\‰>Sb,jrπ\"ã6A\Z¯H\Î1∫@C1\È„°∑\n©k=úﬂªrr∂\·\€w\ÏBU—∫$∂ùAxÉ\Ô\◊$\⁄8˙xÆÛ≥gGü∑¡ï∫d\"»æŒ°zÛz\È\ÎZÛ\€18\Í†ÙõÉX¥¿´S\¬Ù≤($~Cù,§\ﬂH õ\\ö%2-©\”@iôiÏΩ®î©ù»ÅÖë\«˙Nu˜UBDÄ~˛QE8SZ\∆˛≤™\≈˙lyQÑ\Â\Ïˆ§xR8@\'ß[˚(ÅR@ yS\…DO7•\√˘óΩ©õ^IµFUÉ\ ¿Å\∆\„ç2z4$“ßá¨GÖ,X®\ÁHK∞π\'˝\’P∞@√ï2∞â:\ \”Y%a\ZkVúı\Õ+dÜæ¶\Ó\–Ïù∑˘at\\xÉ+\»\ﬁT˚M{ºy\„˙yWl€≥\Â\Íq˘§n%ÆX¯ì©Ø_ú\ƒs\ÌQ\‰!˜Rÿ¢èuv-n6\0V,ùû\«*4<	π˜\nç¸AØ\ÎøvëQ∑Bàø*\0†Wë\›\Ípç+X8\‚+Ö\ŸZdHT\ﬁ\»8€ç<´π\Ï¯c¶lÑ\roî∞Ωi¨¨ˆµ/æ˚ê%R}ˆ´ö\'9Aìø%\»py^\‡“º\ÎIÑà;ôdÄk\’n7\‚jfµxàÛoêK\‘	\0Òµ\È˙\” ü#\'\ZP\·úkr5rV{m\Ô\Íf*æ¡$¿\ﬂ\—p·Üæ\ \Í\‚\‰\Ï\Èˇ\0OT\Ì∞5\Ó\–!±\‚.+\œ˙øOåiîëpO…ñÙ•\—lyëH=\ÁKºkõã{)ë•E2Ú¶gQW£ı\—Q˜?%îxI˛\Í≠I%¥˚+˛QF\ \’\ÈC\‘A>\ÍÖW©≠≈∏p™DÜ¶b\Ã5µ™m<ƒÄ\0\‘sß;ï\Èfm^\Á\ŸN@•¸¸\ﬂ_˝Øñ\ﬁ\œ\Z\”\“\·\ÕÛ\ÿ=ïîç£Xövä\ÍmPoIΩ\œ;\”$Æß\«∆ïÄÜéÇÉ&˛k[\›TI›ªÜrw#;©Ùq¡\‰d:~Å^á\…\À7?”ì\Î\Èçq˝πw\◊˝\…\"=ß\÷/4ü\ÍÚì[ >X\”\Ï÷ΩØüù˛^v\€¿∑@ê≠¯c]Òï.∂\Zì•F\«€îf`6˛\ŒUäâ\⁄ƒâñã—©–üeNˇ\0áß\Îøv\Ãe6\»Xã1QØ¬º~ﬂØ_å∏éyz∫	∏\Á\\û≠\”\”{LX∫c6b\Ójı\‘Z\Õgm\Áe;Éwπk]:¯sm\Âõ\ﬁ;vLc\‘rVV∫¡˝u¨©¬´*xß)ª_Az[jΩ?]b\\â0â ñ\È\◊JÁÆ®\ƒwÛù\·&<re\„\„ZÈ´ü¶\’m\«\ﬂrò\ r,û\‘~ã÷æÆ|’ñV’üôàvâ¨e\Ÿí9∞¨\Ó\“/\\ª&,xxc\«ÚBã\ZèbãWô\ﬂl\÷˙Jñå\Z\ÁY≈±:Ú\·L´\›-om$yxB\‹\ÍmL\ÊAdÛ°X,cj®V#nC˝E¯zO˜Ujöã∞Ga¯W\Ólq\È<O!\ƒ\‘*ß\Õ˜”∞`∆æ¢äëarX{j\‰%Ò∫D™q\“Q¶≤\ÎÓ≠¥\—f˚å]]W?√≠tz±ˆu¡s©\‘rØ?À®\"\ﬂSGì:†Z÷®\≈\'§ij~@∏¯\“Ú\rªji®\‘\œ–¶K\ÿ\n®õM\Ên{∂’Éà∏D\Órr\—\\π\'õáWàÆ\ŒÓüé=˘\Õ\Îä}X\≈ﬂ∑M\œ3eY∫}XS˛\⁄\"ÙÄ4\Ì¸øløÆm¯a\ \ZV…ïË±ã|k\”ˆÀñ\ƒ\Ë\"í\\∏!å]ôÖáªZ\œx!Ÿ∂ŸôÚû(Lê*ób\ \‚∆π≠k5\ €∂\»\Ïπ h\Õb*7æ§\≈wmã\€f8˝¡Ø∂ºûøØOó\·\›”´»ã\‘|:\ÀX’Ö\œ\ﬁwVïÇB\ÃGBt˚´}uå∂S\Êe˜k\„≥‚§¢@\›=\Îo^∆∫t\Á?ñ;d\ﬁ\œ\ﬁHœó14k)ouπ´\€Y?%[`ˆæ\Áç\"dd˘f\Í\“>:|kﬂúÚ\ÔNv\‹A≥:\ÂF¶yUò~\Z\Ê\◊iì˙.\⁄\„EıO±≥q˚™Lùµ\Zh2¿nï\–FWCs{\◊G=†\ﬁfe\ŒÚ2{´4bq\Zutç_\€\‘E\Î£m%˛\\\◊+\Ó\‹\ﬁw\›aı˝KA\"±S≠Ä:ê|+óÆíE\ÈkæB\ \Í_0~µ\‰t˝u\ y\0)mgêX<Ç\ﬂ\ƒ—í.\‡^û@fπ∞\Zs•ß7\0kpoUÅ\Ït\\O1A{Sç\ŒFøˆ\€ÓßíBàüB=x˚ÖX¿ãfê°±\·O&O˝\√\·HΩêwå\…q±K\√M+àâbu\Á©+]\"3X\r\”&|yùæWë\‰Ùîê5c©<x\n\Ï\÷F[´?ø\Óù]?\ÿ$Ù?ß\Íık{€™\◊\·Zb!\ﬂ!{©µyé≤\«P:©°\Í±\'JY2õMy—ì÷ß#&§ΩÕ∏S\÷ìï-Ùë∫§˛’™\‰\À.óMΩ\Ê¨…≤à«¢\‡]hâ\‚a@\—\Îf\0ÇkÛ¥\“\‚ñ\—\…;\Á≤\'⁄≥$‹∂\‰\Î\€\Â%§å\rcc\Ó\Â_AÚ}\Ã8{iU=´\ÁÔòë¿:\Êπ=#à q¯W~ˇ\0élVø51•¿\∆k	%ñ<ÆÉÛuΩ∏◊ó\ﬂz.üÒP\·\Ìr\·I4Rßï≠M∏Äx\—:L#},Æ£∂\ÁàÒ°∑\0£çyΩ¶k≥ï\‹\Ï\ÿ—©ùQòçA±5\Zû\Ô7^»ä\'i`Ñ´jc ˆ÷æ\»\◊yX\›\”b\€cêáé9\Õ±µTŸ°å|LI$X∂¯z\‰:4\≈t\Zõ±M\Ï=2#:ukìY\Ô≥]ul;\’¸“™µó§≠πYÈúó|z®æ•\Ì\Ï\Õ\»A\‚rΩtM±Q\ \ÁW4íÑ¶9Ò\ﬂˆ	˜p≠»õÆVª\—íi\nÜ\ZInuû€£’º\⁄d-∂@N§(˚Aµy˝ZDˆ6ˆ\÷\n¡Ks≠µÒßî“πq\ÁBrÒ\Ï¥¯Q\r\r$Ü¥\∆$˜P˜F##ˇ\0©æ\Í®^£?\È\–¯®˚Ö+≤°#é¥≤oV˝E®MØ¸◊¶î\\ÃéÄO\‚:\ÈW\"k=óí\Ô¿÷≤\‘T?Q\Ôo\”zØjú:r1[ü\—\\Æîïp\ l9q¢ÄºjNùc\Â\„E\√\0I Zï<<64°\ÿdLb¡\ \À]$\»?ï\«˜~2+X\Ê\ﬁf®$^©ïy{´Cê\Ã¯\ \‰,E)˚Å=\rø\'≠A6∂áJ\È\„\“\ \Ài´e\€vln\·\ƒ\Ã\»u∆Öä≤4Åöñ˜_T)V\Ë<\Ï\√\ﬂ^ˇ\0\Õ\€\⁄yqu\—\”ˆ\‹	∂\Ì\Áu\›wLXÒ\·…õ’Ç<v@\ \Ë<\—0.:O/1Æ_±\€Ò\∆u¢≈º\Ó+l\\e@$\‚Ic¬∏¶ˆGWM2∏è(b\∆tQaecæ\Ÿ-f∞˜å¨X\Ëk<-≠\€{\√.P®ä¨åM>\—K8IW\„f\ÕQ.L1;Ú\Î_çà≠&Òk∑cuü∑ˆ\ÿ∞\√\Zt\“^e>z\Ô¸∞ò˘ª∑r\Ó§A:\‚`D|«à\'ó:õ´l¥{tœ¥fß\»Yp@˝uC∏≥ªØu\≈\ \∆\∆\‚ ß\Õ\Ìß]p\À\·Æ&TcÛÜu\–ﬂà5u8\…ˆô0\‚h\·K5®\€E\Ôl\»d\⁄aborˆÒW7XçbÿõiX,Ú^\◊\Z\ní˝$—íÅ˙m`5Ò£\'íJãÇF†\ÈUì\À\ﬂV(ìÆWX£]\ÿ*ã¯ìaDâ®˚§àp\'È±ºLCpE™§$(\ŸF<_¬øp©∞X[O≤ñõÈÆîô§\Ë\„jq9R\Ó9\‡ûF¥âµS4àâsZjõPø:˛Ø\À\Â≠=C¨\—\\ç\‰;Ñ´nû\ÍõUì\ÈØ\ZP@ \ÎJáÖH\„Sï1`∂Où\»T”•T+Mgt	ì?£ÑΩ˘W5ÆX\œ>U±a1\r%˛n\Í~\«IlI67Mã∑w\‰\€Hm{£>Ø;\Âùcv˝ßfÀâp˜	}(Ú°R_\ AØo\„Æ^\ﬁ\Z=ãk\‹pv\ÃÕìvôûYUÒr¡\ÎVÖ≈ººOîÚ\"´\ÓüÀß\„\€%A\€Ÿª!íI%Ib\À$˙ëêA\Â”ç\Ì^]\€√ªsR\œm|*0\…\ÍHíõq\'ù+W¡ÜKímÏ©¥÷ßzïV\›D •Æô\\¨ˆ~„ì∫e^≤\"øô˝û∂∫X[oªál\ÓMõoó\'gû%är\¬I\Î]>j\ﬂY\€˜√ùû\ÈÓùÆuìr\ 9ªYóˆo·†≠ßœñS\ÈK\œ˙ê2\‘b`˙ÜI<æ°µÖT˘jø\Ï\∆\√dœô!à¥Ö√®\Ís\∆\„çst\◊\rπÙïcùö\ƒ\0µñΩj{2^ΩùA:§≤(˚kóª8ø\rs≠r\‰íÑï“Ç\≈x\‡≠1!\0Q)\‚í\ÕÂøÖ<âΩ\«9]ª∏C)ÚXÛ#Pt≠9\€\n\÷^\Ï¡\⁄˚\nMƒªK$Må°ub…•\Õ˝ïµñˇ\0\ nÛ\‹\ÿ[>\≈\Á24ë2†\n8˘Üó®∫fù´\\,®Ú±a\»KtLã ]^ßmp!\◊\‰\05Võ\ﬁÛ∑·≤¨Ûv!R5ª9\'˜V\Ê¥”ù©®˘í\'•\Ì#J©T3á$ıp\ÂW<\"öÙÕØoç_∞u\”`éµ\¬\ÈÇ&ïRXn\„Sí†utö-8b†Ò∞÷ß kN˘-™aß®/¿ªh¢µå∫\ﬂ˛\–\n≤í¨Â§í\Ï˛ˆ\‘”ÉS±ızv“É\¬6D\¬(\ÀTı*\ÁõÙ\ÊyÚæ\„]\\¸1¨∂N^P\‚\„Ó±∑ˆÃîU9QÅ\Íc\Ã>IWU\”ˆÖ\Î\ÿ˘,sÙj?æÀ≥n\Ìª\‡E,q˛O*#xraóOS§ÙÄ|k≥æö\ÌÛt\¬\Àr¸é<o r\À/ñ(\ÓJØ\Ô|k\¬\ﬂLWß|\≈≤É{h9Qá=Üa\Õ1K{\Í8\nã©\ÎRé\È\÷◊∑õ«ï≠2c+ss\0ÿù*Ù\’;\ÌÖDõ‹ò\Ÿë:≥#´+/à<+ØN∏∫v9/sIú•eπ\Î7<áº\Âè\·Ü˚∞]\›4yR\…\Èì\—\ÍtF9i\Œ’¥¨<\’NŸâ&.PVK8d€ïü¸£s˝\⁄||q4$t\∆ˆû?mc”î≠πı±¢\ƒ‹°\Õ\∆I£7ó∂∏∑\”C^û—º\Ïù64r-\◊,çØæ\’¡\›z\·¢W]t\„¿\◊ßà _Oe\0©\r\ﬁ¬ä\r6ö\—â$!IΩ≠\ƒ\’`\·ÜT\»¡ñ\'?Àë\n7πÖç\\µa\«wø3-s∞\Á\Ã\„`º\∆\»\‚\—wPØWéû⁄π∑∏KüæW+`ã+\"	\"Ù˝\Á®t˘)◊≤£¸™º©€û¡âè∂t∆∏–éî\»`$`∂≥Uw\Ê÷ú\ÈV˚Gz˜˜rááhÅV£nF®ä=ñ\r\\\€q\◊V≥zΩ\Ÿ{V=µ\ﬂ3:f\‹79>l©º\≈o\ 0\ƒ\€\·Ym\”˙VR≤≥EΩï3bCëÇß_Ö<ë_ï_OàµW±\·—¢,\ÿ\»\Á\‹\ﬂ\ƒ8\◊m)\≈R¶ˆ˜\‘’•F÷π®¿zNß^:\”:Ç!bl-sFO$Ãé∏∞\√4ü\Ír=\«D¶X[öÜ¶Úª\√AFZ\√\—\∆Ãß¿—ê¶\ﬁe(`\ﬁıZ¢\÷W/mgÜi9Ÿè\Ë5’¶Ú2™8ˆî\Õ€ñ\◊\»—ÄÅÒÆÆ]ÒYmÆT\·rüo\À\Ì<\„\◊&*›íf”§¶≤D∑\‰À≠Ö{˙˚\«5\÷\∆w∏˚è˚\ﬁ\÷˘BLGêYE\Àt\⁄˝7ø*√Øœè.é}vm\‰\Î\'Z\‡\€_-¶\»\ÁS¶û˙^™ˆ%ô¿∞•uT\›?\’|G1ûó\ÍÙO_1âö|\»Ú:\».\Í\◊\Z⁄ªÙ\ﬁH·ºÆR1é\Áô#8Nñf\È˚\≈W˘cMx”≠±˜\r\Ó6\„2≠¨¿í5·≠™.—¥\‡Ùˆ˛¸†Õìä∞…è/àØQ∑n\Á˘\∆Vç	çÉXmi:e\ÕyµùµãìÖ≥F\'o;bæ\Â\\ù´nw\—\€xøó\ÿ0ëÖõ\”\Ío{õ◊ë\ﬂı’¶\ŸY)µ\œ+\◊-´>∑\–\—(zH-qß*)\Zv–ét\·#OM¡\‚E<©^í\√{q\‡+Mk=òmÕ±°ìπ\"ñ+\‰Mér1f\r`•ó•¸∂\Áo\Zı~m\‹\›#5˘˝≠∑\‰¥H2˜Ñ\\ub©\Z\⁄˜˝\Í\€m¸¢\È\·≥;\'}\ÓlÜ\Õ\Íìm¡Û:p\Írt^tu\Ìà\\Ù\Õwh`\∆\«L|x\ƒP∆°R5\–\08Wë◊¶k≥]p¨\Œ6$k8[+\Á±<9VòB9Kìj!Ω\ÍÚÙS&\Í\"\»˙ü$ñ∏a\œ\„\\Æå-\0∫Rßá∞ìrîZamEl\'Ø4püïèTá¡SF2[\\Cr‰¥íI(\÷>Q\‡ÉE”ÆØ= \ﬁ4ESé ë9\neYåí\”d3^\Í8U\ÍäKß˙YEµ\Èo∫ÆTXßä\0ª|D\¬+\\å3Áä≠∂ÆZüO+\ﬁlEà˚+ø\‰\È\Áıáo\≈\∆\’\⁄˝≥6¡Û#æ2\‚Æ+à\‰R≤8=`πÚª1˝û\Ëw\ﬁz˛πy[ì2`˙Å≠Û)\‡+œû]\◊eTÒ21Ω¡ßJlã\'?~µ+î\÷CéÇÒ\”\Ìß)›≤èá¥$H\œ\“´^ØmU\›3X\'á\·ùMˇ\0vß\Ÿè∏\€Lí\—˛$>\ \“dÆ\Ê_w9rt&¸ç¿˝5X•w\ {bC,©@:Tˇ\0ë>πH\€0_p\‹1c\‡\Ó\ÕYt\€¡Î´∞∆´B5\‡É•G∞\nÚ∫mö\Ë‘î\Ê[PMai‘õéëcK$Ch\⁄xU@o™¸π\ÈFM\ZBK¯SÅVorÄû¶¨´\›\Î©∏L_°ø#`ø¥të]¸Yn\√\Ôª\Ã\√l\ÿqêõbbôO∞±≤ü≤∫p\Õ\–>ömÉ`Lâ	\\å\«3µ¯€Ç\◊~ç4ë≥Yú]8ä\„≠\–3©âµTg≤æ]ïy•É&˜>\⁄po≥¬ô7ä°°∑>G\⁄8W>7n∏o¯Üå*v‘°\≈\ÍVë©ëgÕç\Ë3]8\“:ˇ\0S$˙1¯Ñ9™˛¥Új;4∫hA\Ó\në ∞∏∆µFÉπ\‰ïNë\ŒıQ6™\‚å.xö¨§âáÚ\‰∫~\ÍqUb(lo¿†≠!J≠ì∂Û{ó1vLÁôøù1H¢\‡\ŒZ\ƒ\\Ωèûk£lL∂øPvmØ∂{K∂;smOO˚Ñ%\ÓY˝8›ôòõíIØOºìW\'-≥∂p\¬\Œ\œÖÄ\Á≠yì√æ\œ˘≥%\«\Z\”f§ŒÑ\∆áçO™Ωê\¬ı\n0%X\·:øJÉßÖgZ»≥n\ﬂ\«\À\÷	UXè2üe,Ø\¬ùΩ¥\‚\ﬂ\◊\"G\Z∞ˇ\0e´IΩEê\¬√µÜ≤Dˇ\0)\÷ı^\‘x{ Ñ_†p\ZT¬∑\r/\”›±=lù\¬A\√˘Q{Œ¨k˜ÙÚ\€\ry[VÛ¡\'á\nj@:x⁄ñYõê˘º*≤pïo5\Õ^L5¨ˆ\”K”ÖT\Ÿ-\Ê”ô≠uE¨gI3Dé	98\Ô>k\◊w{Vx|irQb\À\–FáõZ\È\€ÒésiVã“â?¶®°GÄ\0Wù’æ±vë∞ª^\√\Ì¨0\◊ÂàÉvk\—*jf:üêÿö©RÇ\—8∏<®ÑMöˆ∑∆ô∑ëÇ\0øX\Âæ.\–\Âü¸réΩNAÖô_/\›Y\”y\÷\›+¨åB®ˆù)ëï\–2\n/…ä¢>-≈ç;ÑÎ±¥R®XhM,/\"\'#©ò\·U!ZÆîô\Ê>\0û5xghù8A6\0q™ö\‰≤j=ørœºxÕê\Ã:z∆à∑\“\Ï‹á¬∫˘|õm¯\«~\⁄\≈ˇ\0n}2x±`˛˘:\À*6>1a\◊ˇ\0%ëõ¸5\ÈÒ¯$ˇ\0Ù\‰\ﬂ\Í˛õ]øk\€v\ËåX8±c#j\‚$T\Í#õXj}¶ªı\“k˘\€mo\Îù}fh?∫ˆäJå\ÏrÚ2\rÇ≤A\ƒ¯Ò¨>´0\◊\Á˝`7ãuu-˝¢º\Ã˘z≤xU.Iå\‹^\‹\≈i+\r°3à\Á\Z\Î\„WÑ90Ω3\‘5\ ,3}*5S\“¬¢\ËØ`≥\Â£y\È\ÃiD\‰^\∆\‰¸‰§ñ&ıSò˜4\"\ ”ç˘UàΩ\⁄.\‘\Ì\„~\œLH¿\Î,≠~ò”õ1˚™¥\ÂrÀßO˝∑ˆv«áµ¡∑.*ÖÅzD\‡ëè6,5π5∂\ﬂ6∂b\«>Ω∂üï]õ\Ÿ9 ó¡\»S~J\nãEpıˇ\0W˘uiˆˇ\0qEôÖôÉ\ÂÃâ¢\◊G\‚ß\‹k\Œ\ÈÚoØ\Î´^\”o\√1»üµrk¢Úı\Ì\÷<*l5\'≤ñì\‰k\ÎU!U\Õy¨5\·Z»ãXø©™%\»¿U=\'˘Ä∑Äµw¸˘F\ÓrÖZvÛ(Aˆ5ut\◊\√-]∑à‚âΩÉ\Ó\ÂÙ˝o™\…3P\∆|y\÷U§5˘îv:\ÎJB¶•\‘¯\”I¢¨\n%,<∞\ÍÍ∂µY&\›\„& \À\ÔΩ`\ﬂ&&Fí=>u ØºUJyO≈ü÷ç[ùµù8#ê\≈<\Ÿ\'\‰\«[ãÛïÙQJD\Ì˝#é°“ç{ç\\¯±\‘\”<fE[ì`\ÕÙ\0x\’Hw¡∏˜M\ƒ∑c¥à\¬\‚v∫DGÓΩà5\Ÿ\«\„\ﬂ\·\œ”æ∫ˇ\0+}ø±2ä\Œ\Â\ÊHW\Õrt˚+\—\Á˛≤Ù\„\€\Î˛ó\ÿØ≤\·Ö\È\«Y•^L\…˛\"+ªü\«\œ_\·Ü˝ˆ\Ÿj\0\0\0,\0+¢I?ä`PØ\Î\‚º]Ω∫(6\ƒ\œ(\ƒr\ƒ\√˛ö\√\Ëó\◊√ßÊ∏¨$íî\r\”~†,|k\∆\⁄\‚ΩIyx≤Úê<ySõ£mU\Ô\◊	\„Z\Õ\Ÿ\ÿq3\–\0jj≤íãcI\¬◊™îû~R6\Á\Â´õôÒˆ¯|\“:\'ºÄid™ø;πvº\Ÿ\—NCéÄø-u™ï6;\Á–àÛ_¥·ò°fÕìÆ¿X]\0\◊\ﬂ]\\Ω]\"∫\nR`<dW,\ƒim§\€Ù\Â\¬4ª^\€*ïì\'à(ßıV_ıπˇ\0Q_\‰\€˚Sgv>\ﬂ3¥∏≤…ã!˘Py°y~˙\Ê\Î˛ªMø<7\◊\Î\⁄~≤ª\÷›ó¥ı¿v#ß(|ó$¸ß\Ÿ^Oä\Ë\Î\Á\⁄lÄŒÆÑ°H˘Ü†\◊\Z‹®gøÆm≠i\"6`æ•fKèëÜÍ†ëÑÜ:\Z\Ô˘\„-\‹\ﬂ\ÌFC∞`0ˆk†ÆÆ≥\√-]\œmïg\⁄ÒrQ,(\„¸5\Âtû]\Z‘ò’à˜Ú¨’îNßI∏hM<OVΩM=^≥YM#Ø:áO¬®∞\⁄¡¨e	\‘\rs∂¡¢\nπ©\„$N,Ç	ôIÚøôG∑ò©¬•Iü\ÀP¯ˇ\0>y˘E]/\ﬂ&£ó)∫aFöCßJ\€\ﬁxçkÀÖ\ﬁ¯N\›&ø≠^\Õ\⁄\—\ƒFNÛ\':¨?Å?\⁄~6Ø{\Á¯5\◊\Œ\œ7ø\◊vÒ\ZÄ\0∞\0ØBL8\≈0(Ä(Ä\»}Y\Ÿ\ÔÿõåH•\Ê\∆ó\Zû®®ˇ\0\Àzéö\Ê4\Âq≥í\Ïq,ò){|†É\‚µ\‚v\”\Ïirw2\È\"\◊Z\∆VòP\Â\„\∆˙t\‡k]k;èé\…~°q\„Z\ \ \ƒgGî\€\ﬂO)±i\‰¿üÖ<ñôaé•è∂\ÊÅuG\⁄6â∑m\‚X‘≤áõ\Ë+H\œj˚\'¥6°µv\ﬁ\00\ƒ{Œß\ÔÆ\Ó:\‚8∑æW≤\0P\0P2+éñîÒ\\R≥!Kπv~Õúß˘g\ZS\¬hH>2˛ä\Ê\ÈÚi¥¸\√m{\Ìˇ\0v\Ï.\‰¿ù§â·ã´	\"uÑı1˛^wOı˚O1”Ø\”+ä˝U\ \Î\Õ\\p\nº0t∫C+3pa\ƒQÀùç6πd{ws\'\∆\€e™\\®ïøÉçm\€o	\÷;¥∞Gkj4(£ÄA^?KöËêåtaqcaPxEvQ1sµTâ©V\0\\p•a\¬dp\‰\ÿR¡˚#z£ç¸¥\À.Ü¿°-k\◊bdR¿∏\‡E2\ Y!C\"í\—!Se\„†÷¥\”Lü∂?Z-ß∂swFNq8\–\ŒCòÙım†6øH∑∆ΩnÎΩº\Ï\‚\Ìı\„\ƒj6\Ï,HÑQØÖ\…>ˆ7\'\„^ø>:\È1#\œ\€{µÚìZ$P\0P\0P\„¢:28åe:ÇÑ\ZÖ˜\÷{w|ün±\«˘òåy\ƒ\«Aˇ\0\nÛ~≠∑ôà3;∞∏\‡kÕìÀ´(B	ΩΩı§MÜ¶¡?ó®ß)\Õbó;!\·o\”W+=µWJã˛™¨ß\n¨¿X8\n≠S¥vO†ùÉªZ˜rtÆC≥c#®lQ\√J\Í\Á\œ.>\€a\‹\‘\0\0\n\ÌìAL\n\0†\n\0†\n\0†\nù}O˙7¥wÑe\‚¿\ﬂz:W(_”î\rB £®q¸Az´-π\œ·¶ù,p?˝cr\ÌÔ®∏˚n\·å\ÿÚ\≈$Låuç\‘Gn§q°\◊\€zÛ~ç.<ªy\Ì+•\Œ,†Å}5Ø˛∫aà&˘¥\Áj!eYñ˝35¸~˙º$ÙY7\'Ö	 ªFΩ:‘û∫\‰\Í\Èˆ\’´∫ë\‚\rs~∫L\·Cïï+bc\'´0\‚8,y\n\È\·Û]\ÔÜ]:\Î¨Ú\◊\Ï]±ã∂±…ê˙\Ÿ\Œ,“û\n?e\·\Ô\Á_AÛ¸öÛÛ¸ºÆΩ\Óˇ\0˙]Wc@@@@@`~Ø\Ïá+fÉtâùÄˆëÄ\◊“ìCˆ5´Û˛.èül\\9Æ#u\'ç∏◊ã∂∏ØWTáÖzn¶•q$\ËEıd≠ó•kZÆT\›LÕ≤\Ÿ	\‚M<â™˚\Èá\”qæ\Ôcq\‹\"\r≥`ìx\›n≥\À√£]\nØ:\Ì˘ıõ8˛ÆûÆïı~Éo¿èa\€\¬Y@ôa≤à¢Bø\›]˚LGü¨\ÕÚ\ƒm]\≈‹∏y\0\„g\À–úcïöHˇ\0\¬M™3É∫∫\…ıuX∑8N4\¬¿Ãß™&ˆõÖ\È˜kNnå58õÜb≈ù\'Qƒ£o}™Âîè\”Ä)P(ò@@\ﬁ6\rüyÖ\"‹±#\…XõÆu£o\⁄F\‚ß\›Qæìiä≠v∫˛9èu\ÏM¥\Á4\À?õŒ§Ø0Oä◊Éı|˛ï\Èq\È\Ì£•\≈\Îã-l@ôIò1Ò™\ O>0\Èø>4ΩåÄ\›:5CıG\Êm\Ì™¡;&›∂\Âg\È\rí5kI3ka\‡ó5Ø\ÀÚmΩ¸W¢h\÷\Ì˚v.ñ:ı;sfÒc\„_CÀî\“b<ù˙]ÆjMjÅ@@@@Ä.ty7-æ2UÚb?Zı}óΩ,¡Ö~Or\‚GoF7õ[bÄ|XT˚\≈z£\·n+ø\‡\Á\ÌŸ∞%ux˝;ı+F\„\ \Íy€ù,˚K\∆\Â\À7>\œ\Ó]ë˙≤1\ZlK\ÿdc(\È\›TÅ\Ô5\Áv˘¨ÚÙ˘}\Z\ﬂû¨LΩ\"E-\‡:\◊\⁄\ÿ\ÍñSìK\√\Z‹õ_\ƒ—ì¡\€v\„æn)µmã\’<ü\‘\√sv?umÀüµ√∂ÛX\Ë9˚‰ùø∂\≈\€˚*™Æ\"§ ∑ò∏˘ Å¿ìŒΩ>s\“a\„\Ôn\◊5é\\\\©\Ê\näZG:üOWv\…4x}õê\"\r$™éu\"\◊˝uå≠p˚+)ç˝PTÛ\Èˇ\0})íµ5;.x\\Jé\ZU˘4∂æ˚—çâ≠\√Y\◊\Z1?ıÇÄ¸ıæí\„\ OUÅ@@@Os\ÏQ\Ô[¡†\»O>4û?Q\‡k.\‹\Ê⁄µ\Â\”÷∏éZ\…\“E\"îñ6)\"`uæw∂òæúπÜí2\‰XPöQ∫n9T\‰áíùVßäüL~séøÆµ˛˙Kh\€\◊88∏ïº\\Ò5Ù?MpÛ{t˜\€)ïª!@@@@%”´Ò\Ó•`Fõopss\„s˙\Í.ï^ ¨Æ\ﬂ\…-\’!>—ØÈ©∫UK\ﬂÃëm#¢˚™})˚B\‡\€rˆ©Ñë<m\ÂïMÅ¸WÖ9ò.\Ÿ[«ï\«vø\·6π≠&»∫™≥∂>\”\Õy^4%û\›e∫£ΩΩ†≠M\Â≠˛Ø]\Á\ÂP\Á˝2\Ì¸†Õµe…â H\—\“HØ˚¡É?¸’Üˇ\0&∑Ò—ß€¥˝s˝€µ{èzãfH}lÃÅx?¶\»4.M¸†sπÆ[Ú\‚\„.˝>≠nπtóh\ÏÌù±°qìºLΩYSÅ~©Ò\‡y\n\Í\Â\À]\'è◊õ◊•\ﬂo¸3\‚\‰eªS#±$ükD÷≥∑˚D\∆\√#0tëÚF8¸jµ\◊,\Ó\ÕJcc†PiÒ≠&ë8\0*àP\0P\0P\0P\0PŒæ¶ˆ£0;ˆ\Z\\†∂|`qQ\¬@<G:\‡˙˛iò\Í\·\”¯s¸&Æ8\Í˜\Áát©2«ïguRdΩ1í8Úß¨,®0û∑WXÍΩ≠q~Ø\n\ﬂ	ıE};\«@@@@@@x ¨•X\\4¨\»D\»\€bï@GhòjO?çM—§\ﬂ\Ê\Ÿ\„òï˝Aœ©A•\ÎE\›\Z€ÜK\«)çO$Úü¥Q\ÈG∫6\„öA		≥ 1z\Ê\∆R/Øõàùö\‹c¢\≈ªπµá\“\ \„a±\Ï∞a\‚\∆YAí¿õÚ5Ql∑≠•f)Å@@@@@@x\Ëí#F\Íe\"\‡É°R≥\"8óvˆ\È\Ì\›¬á˝WT∏lI≤è\≈ø5\Â\ÏØ\È˘6û^ó≥h´ü&\0£\Œ=\’\Á˙c\√kU¶l*äÄ\Î¬´]\n\÷\‘_˝\◊˙á–∑´kûû´qµtˇ\0è\¬2˚VΩ\Áñ(Ä(Ä(Ä(Ä(Ä(Ä(Ä(\0†+ˇ\0≤af`≈ò\‹\ÍmX˙yVMaˆˆØîTª\ﬂ˘}ZÅqÌßÆûFV∂´±\"úÄSÄ(Ä(Ä(Ä(Ä./nt@_\Í7o.ı\€S™(9x\Íqö\⁄ı Û(˛%∏¨˙\Ã\Í”ñÿÆ5ö\ƒp5\‚\Ô<ªÚØ\ÃU1\‹~iHkØ˛\…\ÏÙmÒ≠±0ú˘}¡^\À\Œ@@@@@@@@@@@@@@\0xiE•ı\Í˘π\‘jt™≤\0mmxP4˜Bm\—\ÔôÀ∂\»\'\√ıX¿\Í&\Â|\›\'\ tØ/\Èög\≈z<\Ì¬ã!ºæe>\ﬁ\ÌÆY\"´\‘ˇ\0˚]˙OOÜú-ÔÆúxCˇ\Ÿ',3);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('alka','proper'),('vimal','survey'),('kamal','hello');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `refid` int(11) NOT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'xxx',0),(2,'yyy',1),(3,'yyy',1),(4,'kkk',2),(5,'mmm',2),(6,'lll',2),(7,'lll',1),(8,'lll',7);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylogin`
--

DROP TABLE IF EXISTS `mylogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylogin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylogin`
--

LOCK TABLES `mylogin` WRITE;
/*!40000 ALTER TABLE `mylogin` DISABLE KEYS */;
INSERT INTO `mylogin` VALUES (1,'scott','tiger'),(2,'satish','student');
/*!40000 ALTER TABLE `mylogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mystock`
--

DROP TABLE IF EXISTS `mystock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mystock` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(30) NOT NULL,
  `cur_price` varchar(10) NOT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mystock`
--

LOCK TABLES `mystock` WRITE;
/*!40000 ALTER TABLE `mystock` DISABLE KEYS */;
INSERT INTO `mystock` VALUES (1,'Reliance','500'),(2,'Wipro','700'),(3,'TataSteel','800'),(4,'Colgate','550'),(5,'Bharti','1500');
/*!40000 ALTER TABLE `mystock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable` (
  `nameid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` VALUES (1,'xyz'),(2,'abc');
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Table','Teak wood Table',2100.00),(2,'Chair','Plastic Chair',1000.00),(3,'master Bed','King size Bed',10000.00),(4,'Normal Bed','Queen size Bed',9000.00),(5,'Dining Table','4 chair dining table',6000.00),(6,'Cupboard','Steel Cupboard',5000.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `regid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hobby1` varchar(50) NOT NULL,
  `hobby2` varchar(50) NOT NULL,
  `hobby3` varchar(50) NOT NULL,
  `hobby4` varchar(50) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (3,'gujuhgu','ytyuuyu','huuh@hjhj.t','rrr','123','Reading','Music','Dance','Driving'),(4,'sdwdw','dewdfew','wqddewd@dcfds.fe','dfewfewfdsa@fdsf.ewfdew','4567','Reading','Music','Dance','Driving'),(5,'Vijay','Pandya','vijay@yahoo.com','abcd','1234','Reading','Music','Dance','Driving'),(6,'sdadsa','dffrer','wewq@fdsf.d','qwe','123','Reading','null','null','null'),(7,'vimal','Patel','sdsa@dsd.com','vimal2000','mypass','Reading','Music','null','null'),(8,'Rahul','Gajjar','rahul@yahoo.com','rahul','12345','Reading','Music','null','null'),(9,'fsafsaefsfsdfrse','cszsdsad','ssad@dvd.ews','cdsds','abc','Reading','Music','null','null'),(10,'dfrefsertret','fdsfd','dsz@ssds.in','dgdfsd','abc','Reading','Music','null','null'),(11,'vimal','Patel','xas@cfsdd.ds','vimal','patel','Reading','Music','Dance','null'),(12,'Ravi','Saha','ravi@hotmail.com','ravi','ravi','Reading','Music','null','null'),(13,'Arvind','Patel','arvind@gmail.com','arvind','patel','Reading','Music','null','null'),(14,'Vipul','Shah','sada@fsdf.desd','vipul','vipul','Reading','Music','null','null'),(15,'asas','saasd','saa@dsds.ds','surat','surat','Reading','Music','null','null'),(16,'Vimal','Pandya','sdds@dsd','vimal','vimal','Reading','Music','null','null'),(17,'Prakash','Shah','pshah@xaxas.com','ictict','ictict','Reading','Music','null','null');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Supervisor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `uri` varchar(100) DEFAULT NULL,
  `accessdate` varchar(30) DEFAULT NULL,
  `accesstime` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
INSERT INTO `stat` VALUES ('/FilterApp/Login','Tue Aug 09 11:58:23 IST 2016','8milliseconds'),('/FilterApp/Login','Tue Aug 09 11:59:02 IST 2016','11milliseconds'),('/FilterApp/','Fri Jan 06 14:18:39 IST 2017','954milliseconds'),('/FilterApp/Login','Fri Jan 06 14:18:46 IST 2017','30milliseconds'),('/FilterApp/Login','Fri Jan 06 14:18:58 IST 2017','29milliseconds'),('/FilterApp/Login','Fri Jan 06 14:19:20 IST 2017','14milliseconds'),('/FilterApp/BookMaster','Fri Jan 06 14:19:20 IST 2017','12milliseconds'),('/FilterApp/','Thu Dec 27 10:58:20 IST 2018','3215milliseconds'),('/FilterApp/Login','Thu Dec 27 10:58:28 IST 2018','14milliseconds'),('/FilterApp/Login','Thu Dec 27 11:01:46 IST 2018','36milliseconds'),('/FilterApp/BookMaster','Thu Dec 27 11:01:46 IST 2018','10milliseconds'),('/FilterApp/Login','Thu Dec 27 11:01:55 IST 2018','128milliseconds'),('/FilterApp/Login','Thu Dec 27 11:02:07 IST 2018','20milliseconds'),('/FilterApp/BookMaster','Thu Dec 27 11:02:07 IST 2018','17milliseconds'),('/FilterApp/','Thu Jan 03 12:38:24 IST 2019','3849milliseconds'),('/FilterApp/Login','Thu Jan 03 12:38:30 IST 2019','21milliseconds'),('/FilterApp/Login','Thu Jan 03 12:38:48 IST 2019','220milliseconds'),('/FilterApp/Login','Thu Jan 03 12:40:07 IST 2019','90milliseconds'),('/FilterApp/BookMaster','Thu Jan 03 12:40:07 IST 2019','117milliseconds'),('/FilterApp/','Thu Aug 29 10:38:21 IST 2019','4318milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:24 IST 2019','11milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:40 IST 2019','293milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:54 IST 2019','73milliseconds'),('/FilterApp/Login','Thu Aug 29 10:39:06 IST 2019','9milliseconds'),('/FilterApp/Login','Thu Aug 29 10:39:12 IST 2019','8milliseconds'),('/FilterApp/Login','Thu Aug 29 10:40:58 IST 2019','9milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:05 IST 2019','7milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 10:41:05 IST 2019','141milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:30 IST 2019','13milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:38 IST 2019','8milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 10:41:38 IST 2019','8milliseconds'),('/FilterApp/Login','Thu Aug 29 10:58:27 IST 2019','10milliseconds'),('/FilterApp/','Thu Aug 29 14:49:54 IST 2019','916milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:00 IST 2019','83milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:08 IST 2019','13milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:40 IST 2019','8milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 14:50:41 IST 2019','128milliseconds');
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`stockid`),
  KEY `productid` (`productid`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,6,0),(2,5,150),(3,4,50),(4,3,100),(5,2,100),(6,1,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `SubscriptionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (6,'Sarita','Magazine'),(7,'Times Of India','Newspaper'),(8,'Indian Express','Newspaper'),(9,'India Today','Magazine'),(10,'India','Magazine'),(11,'Illustrated Weekly','Magazine'),(12,'Sandesh','Newspaper'),(13,'Trikal','Magazine'),(14,'Sadhna','Magazine');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_continents`
--

DROP TABLE IF EXISTS `tbl_continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_continents`
--

LOCK TABLES `tbl_continents` WRITE;
/*!40000 ALTER TABLE `tbl_continents` DISABLE KEYS */;
INSERT INTO `tbl_continents` VALUES (1,'Asia','Asia'),(2,'NorthAmerica','North America'),(3,'Europe','Europe'),(4,'Africa','Africa'),(5,'Australia','Australia'),(6,'SouthAmerica','South America');
/*!40000 ALTER TABLE `tbl_continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `continent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'India','India',1),(2,'Russia','Russia',1),(3,'China','China',1),(4,'Thailand','Thailand',1),(5,'Canada','Canada',2);
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_districts`
--

DROP TABLE IF EXISTS `tbl_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_districts`
--

LOCK TABLES `tbl_districts` WRITE;
/*!40000 ALTER TABLE `tbl_districts` DISABLE KEYS */;
INSERT INTO `tbl_districts` VALUES (1,'Surat','Surat',1),(2,'Baroda','Baroda',1),(3,'Ahmedabad','Ahmedabad',1),(4,'Anand','Anand',1);
/*!40000 ALTER TABLE `tbl_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_states`
--

DROP TABLE IF EXISTS `tbl_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_states`
--

LOCK TABLES `tbl_states` WRITE;
/*!40000 ALTER TABLE `tbl_states` DISABLE KEYS */;
INSERT INTO `tbl_states` VALUES (1,'Gujarat','Gujarat',1),(2,'AndhraPradesh','Andhra Pradesh',1),(3,'Tamilnadu','Tamilnadu',1),(4,'Karnataka','Karnataka',1);
/*!40000 ALTER TABLE `tbl_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_talukas`
--

DROP TABLE IF EXISTS `tbl_talukas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_talukas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_talukas`
--

LOCK TABLES `tbl_talukas` WRITE;
/*!40000 ALTER TABLE `tbl_talukas` DISABLE KEYS */;
INSERT INTO `tbl_talukas` VALUES (1,'Choryasi','Choryasi',1),(2,'Olpad','Olpad',1),(3,'Bardoli','Bardoli',1),(4,'Mahuva','Mahuva',1);
/*!40000 ALTER TABLE `tbl_talukas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_villages`
--

DROP TABLE IF EXISTS `tbl_villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_villages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_villages`
--

LOCK TABLES `tbl_villages` WRITE;
/*!40000 ALTER TABLE `tbl_villages` DISABLE KEYS */;
INSERT INTO `tbl_villages` VALUES (1,'ParvatGam','Parvat Gam',1),(2,'Bhestan','Bhestan',1),(3,'DindoliGam','Dindoli Gam',1);
/*!40000 ALTER TABLE `tbl_villages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `UserId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `EmailAddress` varchar(256) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `ResidentialAddress` varchar(512) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UQ_Username` (`Username`),
  UNIQUE KEY `UQ_EmailAddress` (`EmailAddress`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (11,'kamal','kamal','kamal@dsds.in','8218281','sadsad'),(12,'prakash','prakash','prakash@dsds.in','3244324','dfdsfdsfd'),(14,'mscit','mscit','kamal1@dsds.in','434222','fdsfdfdsfsdf\nfsd\nf'),(15,'vimal','vimal','ddsdsds@asdsa.sa','43243211','sadsdsa'),(16,'suresh','suresh','suresh@gmail.com','91434343','fdsfdfdgfdg'),(17,'kamalp','kamal','kamalp@gmail.com','9345678','dsadwe'),(18,'kamal1','kamal1','kamal@yahoo.in','323234','dgdfgfxdgdf'),(19,'vnsgu','vnsgu','vnsgu@gmail.com','4234324','csdcsdds'),(20,'kamalpandey','kamal','kkk@sdsd.sdfse','567213','vcvcx');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing` (
  `testing_id` int(11) NOT NULL,
  `adr_id` int(11) DEFAULT NULL,
  `temp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`testing_id`),
  KEY `fk_testing_1_idx` (`adr_id`,`temp_id`),
  CONSTRAINT `fk_testing_1` FOREIGN KEY (`adr_id`, `temp_id`) REFERENCES `addr` (`ad_id`, `temp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing`
--

LOCK TABLES `testing` WRITE;
/*!40000 ALTER TABLE `testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','PBKDF2WithHmacSHA256:2048:uS4W774WdYj872LVuRSMujHdgqEVf7yPGZw6MGbgKI8=:VVT3CD1wfVvkQ7ct2eCNWUKr6GuMFztvJPOUgD1MybU='),('user','PBKDF2WithHmacSHA256:2048:ooL0ULgBf6Fq0YurXBIKMjWWrqOukulRBqAXzFjExys=:Gh8g16d69tWZVltJVRc17GweywmXVr1+eTl7FyKgdxQ=');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `userid` varchar(10) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('admin','2CSU8F1pF7oC96qilonMtES7c/IDgIdssF0fN1N7eJI='),('user','4XLFZU28EteM4YUKT3lWum5aPSrEDwkl/G1pHrtU9r8=');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_account_role`
--

DROP TABLE IF EXISTS `v_account_role`;
/*!50001 DROP VIEW IF EXISTS `v_account_role`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_account_role` AS SELECT 
 1 AS `account_id`,
 1 AS `role_id`,
 1 AS `username`,
 1 AS `password`,
 1 AS `role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_account_role`
--

/*!50001 DROP VIEW IF EXISTS `v_account_role`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_account_role` AS select `account_role`.`account_id` AS `account_id`,`account_role`.`role_id` AS `role_id`,`account`.`username` AS `username`,`account`.`password` AS `password`,`role`.`role_name` AS `role_name` from ((`account_role` join `account` on((`account_role`.`account_id` = `account`.`id`))) join `role` on((`account_role`.`role_id` = `role`.`id`))) */;
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

-- Dump completed on 2020-04-10 12:26:25
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: workshop
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `BookName` varchar(50) DEFAULT NULL,
  `AuthorName` varchar(50) DEFAULT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  `Synopsis` varchar(100) DEFAULT NULL,
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES ('Let Us C','Balagursamy','TMH','A really good Book',148);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AddressId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Street` varchar(80) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `CustomerId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `fkcustadd` (`CustomerId`),
  CONSTRAINT `fkcustadd` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123','surat','guj','1234',8),(2,'A-9','Vadodara','Guj','3950',7),(3,'D-4','Surat','Guj','3958',7),(4,'123','surat','guj','1234',8),(5,'123','surat','guj','1234',8);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmaster`
--

DROP TABLE IF EXISTS `bookmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmaster` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BookName` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `PublisherName` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmaster`
--

LOCK TABLES `bookmaster` WRITE;
/*!40000 ALTER TABLE `bookmaster` DISABLE KEYS */;
INSERT INTO `bookmaster` VALUES (1,'Let Us C','Kanetkarzdsw','TATA publication'),(2,'Adv Java','P. Johnson','AVI'),(6,'Computer Networks','Stevens','TMH');
/*!40000 ALTER TABLE `bookmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_subs`
--

DROP TABLE IF EXISTS `cust_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_subs` (
  `CustomerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubscriptionId` int(10) unsigned NOT NULL,
  KEY `fk_cust_custsubs` (`CustomerId`),
  KEY `fk_subs_custsubs` (`SubscriptionId`),
  CONSTRAINT `fk_cust_custsubs` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `fk_subs_custsubs` FOREIGN KEY (`SubscriptionId`) REFERENCES `subscription` (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_subs`
--

LOCK TABLES `cust_subs` WRITE;
/*!40000 ALTER TABLE `cust_subs` DISABLE KEYS */;
INSERT INTO `cust_subs` VALUES (8,1),(8,2),(7,5);
/*!40000 ALTER TABLE `cust_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kamlendu','Pandey'),(2,'kamal','pandey'),(3,'asasas','ssddsw'),(6,'satish','panchal'),(7,'Sushil','Yadav'),(8,'Rohit','Sen'),(9,'Alkeh','Patala');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `SubscriptionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'India Today','Magazine'),(2,'Seven','Other'),(3,'IndiaTimes','Newspaper'),(4,'Times Of India','Newspaper'),(5,'Abhiyan','Magazine');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `UserId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `EmailAddress` varchar(256) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `ResidentialAddress` varchar(512) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UQ_Username` (`Username`),
  UNIQUE KEY `UQ_EmailAddress` (`EmailAddress`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,'kamlendu','ompandey','kamlendu@gmail.com','99999999','dsad'),(2,'kamlendu1','ompandey','k@fdds.in','543543','`wqwq'),(3,'kamal','kamal','assa@ssa.fds','21321321','wwqewqewq'),(4,'hello','hello','gfdgg@fdf.in','4545453','fffrere'),(5,'bhavin','bhavin','dsa@fds.in','32132121','saxssa'),(6,'kamal1','fdsfds','sdds@dvfds.in','4324242','vfdsf'),(7,'kamal2','kamal','kasa@da.ds','4324324','vgxfdfd'),(8,'dszdsdsa','vgfdgfdg','qdsds@sd.in','1212','fsdf'),(9,'mjhjjhg','gfdgfd','ffd@v.f','4435','vdgfd'),(10,'vikas','vikas','dsds@sdsa.com','321321','fsfds');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10 12:26:26
