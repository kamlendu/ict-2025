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
INSERT INTO `image` VALUES (_binary '�\��\�\0JFIF\0\0\�\0\�\0\0�\�\0C\0	\Z!\Z\"$\"$�\�\0C��\0\0v\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0��Q�J�eg\�VDӸ<����ּ?#9�,��\�����\�:�˄(��j�\�b���>*x:�\�#ϓ\�\�%��Ǵ�ӭh\��[T�\�\�RH�W�j\�/K\r�\�g�\�<\��b�WL��\�N\�&[\\JO\�oΚ��$;~&�6�z�2Ű��iWA���ZN�w�\��b�\�7��1\��ӖI0>g�\�R=4��m�cԑV�,�(#\Z�\�XKo$��<2\��2��\�j��L}\�s�rMt	k|\�\���5a-\�ʵ؎L��ߥd񋱷\�_s�Nx\�=�<=\� \�2w\�j\�d���B�f<\��s{�Coǹ,S�\���w��\�\�,�L�\0)\�s�\�Q������^1���\�\�\\.\���A�\�\�N\�\�\�kr\�GECU����3��\rٜ\�ͷO��\�7�\��\0�S\�}L��J3\�L٭�O\�S|\�n���a޵�>߲�\�\�\nc\� \�~u���c���2�\��,\�K�\\ͬ]鄙�ƒy\��\0ѵ=CgL�\���^�i��\0M�E�\�\�{V�~Ѣ`Y[ԍ\����\�\�\���Z\��<\�9\�m\�O���\�\��\��\�Ƒq$�D��c�\�\�W�Z\��-��H\"\�:sW>\�k\0!(�Q�\�f���\�O,\�\�G3om\�Y�]�2g���kn\�I�B��ĮNHYRM�B�?�*\�c?\"RkmR{+J�(n\�i\�oQ=zU�{@	%K\n�\�i�\����{\�k���\���S�\�\�\�\�u`\�X�U���$W(��A\�s�\�M$���\'\�^�\�=�4)�\�ںUh\�\��ѕGvqS[I#�	#\�d⑭\'�\�\�\�ǃ����ٝ?\�%#� O\\b��h���g<���\�ճ��иUm\�⤒\��q�#�a�\�\�z�ϵ=�=�U\�z���.8^�98�;\�0j���*կ�dy�.J��\�$g��qR+�Cy\�x��\r�S>\�\�:x�vc���ZV��o\Zq\�\��\�\�\'��4�Y�\'��b\'N��T���ߢ4�*i\�#J\�=6\�I�cQ\�8\0Ʃ\�x�\�\�\�Mj�Y�y\�\� d\�ׂ+7R�)�*%L`���ڱ\�\�+X��H!�BI+\Z�\�p?�y\�#�b\�:J�^\�\�\�V\�ҔR���5�\�\�Zݿ-\�Ύo鈅\�\�W*?U��R4~dO��$m\���V\�\�RI����SVе&\�\�V�Π-n�Ou�@�ʞ�\�b���:ؗ\�Z\�\�8\�+�����[4\��љ*�\�>Jw��]���\���\�\�\\\�#\���.\�\�\�g�s\�s\��DB��l\�\�\�\r5ler\�\�Ҿ�j)D�U۱�\'����^�Z_j��mS�\�\���\�\�\�\���\�8��:I]#�լݛ$:����[�Jp������\�?\\ӦӧE.�V�Nj[k�p\�h�]J5��z\�\�\�X\�g\�^�FxbRr�PO�\"\�@l\��5R}b2w~5\��)���(l*�ni�I7pq\�;V;ꩿ#�u�]V<�ğ��t�\�h�6�\�ǽ4ЯS�\�:�`p\�Ri\�\�\�\�=A��R\�W��sr>뷜��|�T\�}�\ruuE�l\��ǥD�\��\����P�Z��2*�52�23\�Xm���x\�L:�Xg\�MP�/Zwt\�\��ꙻec\��#5VMS\��\�\�4�m\�H���T�������d\�8\�s\�\0��]\�\�	u\�iŽ�aT\r\�\�U��\�dR;��N�!>\�\�vs^D\�\�nuT2Z\�#\�1:\�\"�HmÑ,\�I\�ҧ���mΧw�4��n���\�\�g�\�\\\�%G(��\���\�Qos	e=$L\�WF\���&\�\�J��`�\�8\�MD�s�\�,!�1�\�\"�Et�<>9\�ҷ-��W_ܺ�=�VZ�\�\�\�C\0=(\Z\�d�\�˿ܶD\�R\rˌi\�{�L�8�J�\�K�\�,\�ģ\�\\\���b\r�d\�ۓY2��W�RVf�;*�ڞ=�0��\�\�mK\�SbBNH�r\�[�\Z�r�v�j�đ���\�\�<[}J��\��Ƣ2�<U�NO\�c�\�?�Ŧȕ���iWx<�\'�Hű�.���\�y&���Ɖ\\\0f\n\�<S�	1�_֭DE\nA\'�1\�I%��\�4��r��J�^��\"C$�j\�0�>C�܀1�R�J�G\'?69��K�{+jV�4nrH�\�ѣ��@O�AO�3�a_��\�0�\�\��[k�*���m\��z}w[�\�\�\�\�\\�%�2\�I!Fz�(\�9���\�\�s\�\�V\�?\�\�\�\�\�\�+�WB��Of�>�7Z\"�;5\���)\�z䚶��\��j�\�@I\�cu��8<�Ԟ}\��\�~X5[Mѭ��6\�LӬ\�\�\�\nA\n*s���O{y\'a\'\�[%\�Sm�q\�[��ēU��闙_�\�\�\�it�ਫ\�!̌���\�sO�\�9\'-�S���B\�f�H�9 g\�\�Q���F�%�ds\�ST$���a�\�J\���F50\�|L\��\�_�Ka�+QD0�\�s�t�F����޹�[Ƶ��n�Mq�\�n,B \�s��&���N� U�\�vr\��\�5E�t\�X�\��:�`��$ c\�z\�\�!\�z{I�\� �\�qQ6\�۰[ךW}\�\\��dER\�P�Qn�=�9�	r0�\�<��Cky3|�9?LqPݷe�\�d)*>X�/�w�A�\\�\'8j-�\�X��g&��\�X\�\���\�5��\�[3xS��Ca}2l�;�\�Oʫ\�r\�U��\��{�>\�rV8�ԟ�\�֭�\�\�o4\�\�)Q�BZ8\\�p\�\\�NJѽ��4\�I9�\�\��\0\r�3&\�J\���x�\�r	��\�Q�_%�\�*+��\0�f	.u�&\�]\�\0ė\�4l�p/v�ՋoQ����~J\�}E�;b���\�d!�T^iG\�W��4�5KG���)\'���\�wZU��\��,7��\�$��\n:���\���b\�?\�\�l��;X#�B9�!�,~�`p	<�I��\�Nq�bI\��T�\�\�T��v{\�\�v\�1\�m\�j�FGpr��\�\�w2H�$�*�㫤��5�c\�\�R�Th-ċ�5 \��VMEG\�e;K\rʇƩ\��ޏ��62�{㊵N;�\�̒[����y\0t\�ګ0>��\0�\�s\�b\�B�>·M#�I�8���٩��\'�jD��8\�C��Z�o�\�ُ\�qO\�\�u\'\�I�=*k[V2HU�z\�+��L�&����\�\�W\��w(-�#�¼u7�=�8��v-pr���Vs��\�q\�LS܂	]޽1Qa\�w9\�;\�Tl�\�,�ވ�$P\�\�O��������\�\�Sb����HdP?��\�O\Zu\��\�ظ�r�Ք�Q��VV�\�$�W>\�j�D�I�k_�.pfU��E\�n��(\�\�s��R��]E\�\'.�W��v�})Dg8\0\��Z�L�(uf�\0f��N)m����:~5/nZ\�ͽ�i5-(x�\�¯u!է�kՍ!fU�[i,Å9\�rsҺT\�\�\��ۜ��\0{�X\"\�cڲ\��p0*�\\\��Ma*\�]ltF��\�-\�81E\Zq���O{T©�>�R� ��s�S�W��sέ�\��~�_��c\�{�ɦ��\�,��\�h��\��wӷx���/أ>$�\�ZzV=MK\�y����/�\�Z�#SЃN�\�\�\0?�K�\�?f�ieo���SŦ��.\�\�b�e\�0���`c��\�l8�M&\�v��������\�V���M�G\�i�M\�\�p�\�X��7$���[Z\�,�\0:��M�Fp{V|��\Zѹw&<�A��\��O�n)��tβ�����Li\�I$}i�xz�G=KZ\�rS�\���\�g\� R\�8��\�a�䌌\���x+;H�\�\�b\���ƫ\�,i�bq\�R39#>���\�:��i�\�ry��̣�Z��&�Ye+���Uo/�h�Bܪ�]su.D��\�ɩ���\�򪪒�\�f�sc��\�.M�5Jš�=�\'`3\�@\��\'�OL\�[ݺPU\�\r*�ƛ\�\���c9#����\�\�O@\�sJ���\�I�3�\�\�*hp\�`\�\�0\�N\n�\�\nF9�J�d(�\�h\��*��m�R`q\�{��o(\����*\�\�F�\�\�5f)�\0�{b�\"��3JK����7Z[ؖ\�O\�\'�(L\�\�$r��\�c�o\�\�\�x㒊\�PFvZK�N�������i�#\��QQʍ[��;�E�\0}�.\�F��\�\��QE>T!�cs�Fz\�?\�S\0�\'�\�4QXTVzS���\�|ʬ{\�,@ǥV6��\�a�8�sڠy�=\���\0\�QE�&M�Hd���\���\�4QNIX��EVs�����W�\��\�EE�wc~��i\�\�黷�R\��]\�n\��\�J�.�޴QE��O\Z|�8\�V\�^\�)�L��\�',1),(_binary '�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0\r\r\r!!   &\')\'& 226622AAAAAAAAAAAAAAA((3%    %3-1)))1-883388AAAAAAAAAAAAAAA��\0�\"\0�\�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQaq\"��2���BR#\�br3�\�C�$��\�S�\�s�4c�D\0\0\0\0\0\0!1AQaq�\"�2��\��BR\�b�\�\0\0\0?\0c\�2�n4\�\"6I^��`\��X\�+\�\��\�I>l�Wb(�\\�\�\�����\����\�-���\�x�Y\�s2c�\�\�\r\0VD\rK\�P�\�\Z\�	\'����G��a\�\�M#�?p\�^B�s��d��\�`�G�9�;�vC�����K���4\�JcU2\�$\�lC�\�N\�W,͹�J\��{��{M5\\\�q\�R�)\�\�pdD�\�\�\'vՅǦ�\�1~d��Ҧ�(G=k$�)xfx¸.�%n/��֋�t�X\�\�r\�\�+oXĎ�T�ִInCO]�K��c4��\�K�����P)�I)\��uPq��n+��i����F\"�%�1�d\�g\��=($*1Q�(��\�nc~\�,��V\'\"ާ>Pφi\'_�B�;\r7?���pv���pq���\�`\�]P�\�¥\��|\�d��1��BOM��)$\Zb�dU\n\��\�\�\�>���\0���k���\�x\��@�\��G���.W�ݻF�TK�2Z,�[S0[�\�Cz%�N���pԊ\��N����3;2\��\�\�o�ij�\�\�ٓ<\�-P�;�bJˉ�+��\�\�Q�]\�)�Q���Í���\����\�Y陸#g �\�P�\�����\0�\"!(��5�*5�RR\�v%\�CD�x�BӺ�dX�!A����\�gˏ�c\�ng�\n��Xӄ\�}9\'���$����g�\�\�DHbդ!�\�m[\�\0�-rS4��f8�\0~Dѯ���}��?\�\�\�<#.Ᵽ+)�}\�\�3��cff*ޛlGm�k\�\�~ڏ�#��\\�\\p\nP��\�Y�\0��U�߸�<�T\��\�=Eɼzk骵����\�\��\�;\\Ye�\�-#X�2�5�\�^b��&8�\�\�\�\��\�.\��m��[\04?V\�,�\\>\�U�H��7�>�Sn\�aOQ\�[\�K�Q��9��k\�a:.3��\�p\���_\�֪o��Iܳǧ\�VA�y�$VIrKm�=.\�+\\yGo:|�w./_�\�++M$E\'VY�n�\�*E �P�;u�*�\�?:d���E�n\�.�QX���֘�|����ܞ\rs\�ݭ\\TA\0�\�E>	��\�턠\�\�[)!��\�f����ҝ�\0Ğ��B�`Bz���-\�iS\�K�s\�Ģ舶\�v�quU|i\'�W \�{�m\�q\�9Rⓖĥ\�lF�����N�\��l\"e�:�ہ\�֪z�	4i)��#\�u]��\�9]/z�3\�<|�Ya8\�\�x\�\�|:kZ\�!Xac�ǣs��Y���ƭ�\�\�\"\�K�\�\�$Ɏ\�٤V\�\�d�Z\�\�I�\�\�\�\\�^.��-I�1�\�\�\�$Lx\'P�{�T~�R\0>5,󁉋����0/}Ie(��\�Rx{h~Hq^9I\�\�T�BN��\�B!\0�/�)��_�lR\�xPuh�e�\�H�����/o˺Ʊ\�O#=\�ݸ_�g\�I��q�\�Iv�0mpw<^��աb�\�\�����\�vI�y\'��ۈ�m�E`wr\�\�oN\�\�a�\�r�7�::\Z�^$\"%m��ζ\����7�9�B��#\��$��� �\�ά|L\�����\�&���\�\n\�.-W\�g���d\�Ƚ\�\"\�\�@H\�\�Cd\�K$yc���-�bEȿ}h��\r4��&�Ic��\0\�\�7֗Ԯ}��/�&:��GU��$�H�=�)<4���rq\"l����\\.6��=\�\�m�\�f!T����&��i\�mf\�218�F	��`t\�5Z/BVl�cuh\�3,��\�X?�(Bx\0ү\�\�\��iG���J\�˼\�7�+\�x\�\�\�_�k.\��Ƃ��^���fƊX\�x\� �$ؕ\�M�/Xsi\�\�\�V�6��G3�I4��r��+\�\�추��\�6r&L�\�,ߵk\�ES\�\rk_w:\�3�$�\0y�@�9\�E\�\\\�^D\�tAd�K3����kt\�p�|mrˎ\�9��@ߺ\�\���ǎ\�Uǡ\�\�\�Ye�\�p�FV\0~\��pM���n��c2fv#�\0\n�\0\Z�\�\�ݝ\�){�/]T�7���[�n\'@\��e�\�\n\no���\��M\�\0\�����\�\�q�y�,\��\�pC(e7V�ֳ&|R\�\�\��;��Kt�(�gek���j���ɑ\"iY(\nv\�\���\�I׷\�\�m\�7���f4yR��/�*�N�\�T٤�����MA�7d�S\�\�\���!��r=�wG\�\�\�\��\Z\��Cn\0�^\�����Ԭ\�*Ґ!DR��\n�\�\�I��M���rW?X\�\�fJ���d�F\Z/b���N�oK�\�\�\�\��a#�\��\Z\�{X�\nA��ϓ�\�8N�Q�Go}kVs P*����\�aʶ��\�UOp��7.�ޜ`��\�\�oy�75\�9r`ń͓*\��ͥ\�`\�O�+\�\�\�$L\�<m���\�\�\�\�mNW\��Vn*X�\�A� \Z6)2cT�2\\G��\�bH\�,A��\�\�z\�#V\�uh\Z̛�Y�\�kƘ\�\'\��\�G�&D\�6]\�\"1��-��T!d\�\�\�d6�i.K4��7<\�%�*���\�\���7�\n\�Ϲ/XΗ��\��6�G�lf����~�\�˩}#�g\�\�\�\�Y]GwmH\�9��\�f?.�<`\�x+�����[�\�) 4>M�1@����C��f�V	���C��(\�K.�mw��\�#�\�ѣ�#��\�,PW�\Z�\�h�Kԫ;\"h�ǅ\���Ռ�R.X\�<(\���0@��{���\0ں|ll�MJbb\�\�\�kk��31��=�@rB��\�\�\n+i�.@��\����Z�d{\�n\nH����\�G�C�\�\�Č\�P�`ͨ�+�\�o	Y2fIT\�[~`Oeg\�mD7\�i\�Us1\�h\�ɚYݢu�8\�	\0\�i׋�a\�j��u\�1�\"��\�#��@-rZ\��P�\�0e̹1�O\�@�,��>\�\�\�}W��t\'c�cȒ\\~�������ޢ�$��\�I4�#�wsvv7$�\�^c\�6C\�����%<=�t*� �.y\��pEj\�\�ˢ�.P�s\��\��m��CsC\�޶B�(�\�ɳUPYcMG\�Ӎa6\�0�1��^�+KY\�ɉD\�9�\��w\r�*�k�\�\Z\�ںD\�/�7��̝�\�CHÇ�\�n\rϕYV\�\�[Z�\�X\�\��l0k�X\nLs�\�6&N3>>�\�J.\�Ү�\�:&�\�ǆx/ԂAb��c\�5�4��T�@�\�\�\�\�z�Q{[\�AH�%�\�fF%�\�\�\�����!Ȓ6겲1F1\"9��v��)1\��0�8�\0_P\�1��\�;+G\�vYpEn�\�9~Ħ\�\�ee\�͍pƎWU\�F\��s\�p�\�\�)�\�Gq�)\�Z&�bϗ�\��Xb\�i\�\�,���vf�/���oo��WT�ȭek6�\r���a1�V1����)�]���yVW;��e/�$f 0�[ʺ�˺���iob���i�b�vS4����H\�\'�\�J{�*�\�[t\��<YM�$�\��\�1ܧ�X\���C��	�\�;�\�c;\��\�UrO;�v����`�.� &lH-(e\�K~\����,-\�S\0�@\���\��U\'�\0����e\�[j�_@4�gN\�\�z�ƞ=�(\�\�8\r\�<� �q[�J?��n-Qj�5��\Z_S�2�NV\�\Z�7W��\�嘆Qn�\"5Bl�w\�\�S�/3~��\�R�x��$�Dmr����\��\r%�YnY)\�\��ꁃ?���Q���-�q�l�p��ǅq\�)\�&P��\�z�!�\�Ilw\�Mw,8\�i�\0\�z�\�\�\��\\8�te��6Z\�\�u�\�˩ܭ�S\�\���c�Ox�E\']��)^#\��ޡ�\�اh:)\0-�p�\�\�:L��\"PiQ�-�k��s&<\�Ͷ\�\�n�ﬗS\�C*|9=9c@\�,��\�\�#]}���>I��SE\�N�Gл��Ռ�\�c]���\�i$�P;��\�(\���T�\����e&\�ǽ,<��x҆�N�\'�\�\�rd[�\0=&���\�5(��@\�tt\��0\�\�M\��\nj_;\���\�ZY\�\�n�@a \�:8�5��*p\�*ۆێ\�H�J��f\�\�+\�iUe\"꠱\0뮕�UU\0T\r\0\�(M\�\�rq�&\�#Z\�N\�{P�\0��\�D}?\�PM�\�L-@\�Rl�E�ȣ�\�7Z\�\�\�լ�p3�G\�I\'σ�C��C���������e\�St�\�\����~\�Ĳfq^\\h\�D�l\�Ǎ5\�?Vb\��Hf���XБ\�kR\�h����\�-AK2M�\��۶\�\�\�k\0x�ԧYHl��\�\'2K#K+p\'��\�xS~�$�*\�>�2�<B\�jh\�dTe�S���l��:~\�\�\��y5z�����T�~|�̒\'��\�\�=	\�XA\"��\�,&p�\'v\'K ��g�ǂ<H&uGa�\�7Վᨷ���!�:h�(o�Ǿ�\�\��If��\Z+z8�s�\�+\�\�\��g\�e_kL�\�\��\�����*�K\�O#X�\�Q��$\�%�pA�\0xޱ\�g�\Zp�\�F8yj\�B1&AgtIY�#nJ,)���R\�kY��7Gȇ78\�$_I�;\\^\�B9r�e���ʛ�h\�	\0,(��ط\�[Q�Sf7_,\�-\�e\�0ۨt�a�\�)\�#*H�A�0C\n\��:\�b\��\0��-�,\�c\�\"��+\�.�=U\�l��\\y?q_���事��\�\�\nM�\���\�3/0�>\�LG\�\���ƖN@���)$�\�\�\r{+�H\�cVw\�PX��[Uk(I�\�3\�]8�\�RH�e��\�Z\�\�x.��\n;(@q\�L�U�E(\��y���Ĺ\�\�\�c\�ɺȎ0V\0_Z\��^��m@m\�,�y9kj?������\�\��\���6\��\�pt6�ʖ<\�2A\�MY\�	9�]Yv�\�\r9�K̥\r�&��\�)�-�چ\�_\�e\�N���2EP�Yc\�lH\�v�~�\��d�8��<�l/�c�6~B���Ա0!\\e�m�8\�1��;T[�t\�f;\n׍7��@6���\��ۅ^�n\"Ǎ�R��#1�\n4ݠ\�ǉҬ\\�{��\�\�����#�&\��\����Cʲ,)[�\�T@6V.NM�=ҖȐ��\��5�9�&�{�G\�\�[c�eK\�v{�ة}m��VW��3o���\ZG�MA\r\�O�@�Q�0Uova�\�5���g\�v\�\�\�\0\�Z�ȁSc\0����uE_y+Ȣ1\��F@(\��V\�A\�)p\��\�:ى%nkٽO��Ӿ\�݁>k�F\�?6�t+\Z�\�;��\�\�II��\�c;���\n\'\�\�B\�\�Q�A*\�Ẏt\�5#F�6��\�30\�~W�騕F�o\�9Է�C\ro\�\��b���=#��\�.\�2/\�V�n ^�N�躂\�\�Ju\�6��׬\�^\�/&9�(<D��J\�\�Q�KR],�c1ԢQ��8�\�ۀeײ��u,gF!f�Yx-�\nu���<�-ď��Vʹԫ\�\�ը�\�A�\\�n;�\�\�S\n\��H@<Efc\�y�5�\�i\�U:{�Z~�\��\0م�\�\�\�\�u?\�^\�~v\�\�.,�\�\�\�}���e	�\�:VX�\�Z?�L-�\�o?\�L�`|wXQ\\m}��?\�M*\�F8&X\�`{mso\�\�\�{������ �J[T�2;�� \�!�\�U%YI ���\��\�X���\�\�a\�je\�]b{\�ip�\�[qs\�t�\�l1�����U_G��\ZN�96��OaaW3���5\�\�x\�ă`�\�\�9��1P��\�d�·\�R��&\�\��T�WPL�ӊ�\�R,�Q\n���\�f��\�\�_O��Iw7\�bu�����.nV<�\"5�j�\0�\�M�\�.75x\�����O-��\�\�\�c\�\�\�O\�XLα\�1\�I#�V	\�*\\Y�Yog]���bO\n�Y=\\u!2E<\�x��u|\�2I+/ة�re\���aY\�\�{JU5\�}b�u|?��LwkE2h\�\�G_����>����c�ו*\�0��\�\�\�?R\�XpV\�~\�q��\�\�JYfw01R.�\�uT��MD6ɺ\�q��\�c�l\�λeM~#�\�]+��lY2)T�\"�5�݃\�\��[\�vn��5\�>��\��j�A\�N#�g%���1D\�3\�\�v�q\�>�Q�,�$/��	���oj|\���\�t��B\�\�\�?��-�\�iӀ<\�Cӻ��\�+|(\0b\0\�&�Q\�ò��:�<*xVdO\�h�$^�<6̲/0\��/^d`\�D��P51�\���Ӷ����\�;k�߀><�~:��ym\�|���fc�3\�$C6�lڤ\�ᩡ11�t\�E sz\��I\�\���J\"�]�$��n����+���P\r@$_\�P\�MVpm[VɸR0N���*J�\��גM�k�\0vޓ��$���\r΅�q�)�\'\�xBEl�\�*�\�	$D/��ڶ�J���\�93b��\�\�\�Vk��:\�\�z\�ba\�\�E�\0m�4j�-to�K֙\n��(�\��� )�`����9-\����֜:�d��dr2\'�\�\�F\�w\r��G�n`�OIL�Th8[�֨f�G�\nX\\{A\�f�K\0�\�\nm�P�k\�\�Y�Y��ypz�h�\'��\�V\'�}4\�\�F|�ܪ��ƚ�Ӻ�\�qaf,��\�gm.\�tȐ\�#dL�\�|��}���B�\�)��aBд$A\�\�Y>>\�bx\�C��H��Y�\�<�Iq�\�́��\�e�\�zd\�d�\�\�\r\"FM�+|\nxT\�2����M�dh�\�\� 򑨦�	��\�\�bu��V+\�\�5M\�v\��\�CS�\�\\}%rH䠛{kz�\�\�\��5�K]M�}�UӺwOY\��it*�I�k�(�}��\�\'-\�t�	A���B��7es��s\�@˒\�2̦-�IBx\\v\�\�e\�ƙ6Mr\'\�eR>\�E��I\�\�\\��/A�NG�\"��[���z6���,p���DX\�^�xp�\�Aq`l�� ��r+ȟ\Zc�x\�ѕt\��#����3\�\��9�fXK4��	[\�Çڈ����M?ә�|\�ʑ\�`EE\�Uرkiش�e6-n6��|V�_�a\�\�<�\'m[Ir��\�0\���\�\�}g)��S\�\�1��\�E���\�f�\�Uf�\"\�Q5\Z.\�H\��\�p\�noXF	\��2&���B\�\�j\�6�D�\� �\��+�[�\03\�䑠L�܊ٮ�bt\�Z۽�6VD=YW�a���X=�ơ\r\�kjwZ�\�ϓ�%� \�n4�����x�&^S��{�\�H����֩9PK\\\\��������6�l,ø��WE\��\�܊%�U�\0\�z�O\�y���,XћѶz��v�^\�F�_�~iD�:S��\�\"\�&�_)�}$�oT�t>��z�\�\"�\0\� \�x�)*\�u@#J\���\0�N&4\�d\�\�Y\�\��\��6\�	�5����ۼ\�G�U��\n׳P��3=Yg�ō\0��Ջv�}8�9��\�iPH\�\�US\�YlB\�h7:�Ȳ\�Ɏ�ȎU�4���E�\�O-}�\�\"�\��\\u�	$0����B\�o\�i�,�\�ъ0\�\�H �i\\% ՙ�,�3L�dveP,\0\'M5�\��13.-\'�w�^t��u>lPZ�1\�PG:�laQNm����OԷ:\n�\�V:OW��\�\�w!�O$g\�R>\�?\�.��n�\��\�lY\n����ap\��k3vp�	f6UI�\�.���F0�#�\�E����2\�S\�~_���\�5-7_sE\�\�f,\�o\�=�\�\Z\�\�\�=\�\�\�����a�$F�i¥���ty\�e\0�u�C�Zr�2��\��/R\�)${q�\�\�gyO�h{\0\�\�*\"�h�\"�ӿ\�\�FE�\Z@�`�\"G?}W\�X��5.\�j�i��-�1o#�f77��\nk>�\���\�g+�t��X�eJ8*D��\0cq�S\\O����|Ǡ\�\�Jp�U�f��\�C�LH{u�\�W\���\0��\0��U\�ֺ\"|Y\����Pj@ipx�+\�À4�O�z_�\0��?�\0l~\��\�0dbbJ\��\0�)X\��\0Q4�\nI��\Z\�E&�\"�o\�ac_:����\�1�71Y��\�ƴ�u̵ �ŏ�\�\�\��\0\�\�)w�\�K�\�+\�\�|7R;�ʘW�J\�$;��ć\�`\�LC9䝈?\�F��(As�\�ue)\�g{�ζ�t\�\�(\�Ƥ\0�6\��>�ִ��\"[�/P�p[ɩsǅ��/~\�jk`�k�\�T�\"\�\��hp\�\�\�^7\�A�\�_\�*�\�[��ĒIkkǒ�	�\r�\\���\03{���\�\�\�?40�^�\�ؗ�\�\�\�e \�ZT<\�u+�s$i�|i�U��nm�\�Cssj�v��^W�i)\�\"\�\��#��\�x\�%;�#�RM15.#Ȍ\�0ܧ�\�K�Vh\�VuW��[``^1�ǰapַtr�\�!T�`���\�u���^0�`�\�l�J�N��=\�J\Z4l�\�ZH\�ȯ����\0	-\���a̮d 7RW��</z����0\�P�6\�\�Ƙ�N��\�̱f$�\��\�\r���o.� ��QI�\�\�`M\�K摏e&\�\�;$�\'��e���7\�D\�,���\�yP\0�Rψ�Ѭ�\��I]7\r\��iY�f\�0��Y\��7;V�0\�nʇ\�dd\�.8�HE��0�\�\�\�\�L\����\�fvu��`$�\�yeҭ���X��G�\�Y\0�V������<*\Z\�n6�m&\�\\�!O�U�X(\�줲L�)�\�,,H\�qI�X\�s.�\�U���\�.�\�\�Z�\�\� j��m\0�:�O�\��Ʒ�r�\�����}\0C��uF��\�D�ı\�(\�\�\�P�\�죾�\�|���\�{�\�@e[��-\�\�\�\�pWjD�T\�\�C΂�\'�v\�`љ�����7\�.+E�\�eiư}�K��*&�Ⰳ-���\�RN�\��4�TO�\�Y�\\q\n\�W\�8�l(\�e\�\�w\�M�_\Z�Gu�Lp\Zx\'E:nUG\��/Y�\�Ys����9m\�\�F�9ki`{\�]#\�\�6I2I\�a4��\�\�Z�FT]��SMz\n\�\�\�n���}\�FSq,\r�J�p��6K&\�vxו�\n\�a\�G.$,l��\�,-Ud�������\0�\�\�\�U\�j.�a\�O�>�\0��o\�\0�����\�\'\0\Z�K��-\�[j�i��O\��{곍��\�>\�\n@m��Ư\�Ê:�\0��\0»\�mA�i���\�y\�ti]P\�\�\�5B\�Ȍ��S~��\�\�\�\0+w\��(&\�\�\�@i�>�阑l\�?\�ɸ\�\�`�\�\�k��ɍ\�\\X!CH�\�-�A�\\~QL��J���	n\Z@h\�H<<A�ViΣ��H\�\\\��\\H�:m���n�!1W_�h~�_\�~赯c\�8\Z�V2�Q�\�{\\y�)d\�ޢ�U�v�\�*a��4\�D3�\Z܁�k\�]Jl�|�ZV�c\��WҲ<�v��d#��#\�|��͓�zJ\�\��\0-����ҫ\�M��\�\'G��L�!v�!^n�u~\�\�(5�\�\�sc\�\�����b��Pn\�Ad;�qZ�\��3JbDg��(��^����諙Q�S��K�qe�S�?��ԍ���+ݖFUb�\��VgF\�K\�cK6�h\�%!Oj�Sv�D��O2��\n(^`&�-�\�\�n؀F\0U\n8A7\�\�FYF,�E�\�a\�ֈVd\�@E��q�\�\�4���R\�\�Ffo�K���\�\�\�b8oN����(7|=\�o�\Z�>5\�\�F%Pp�\�IY\�$�+r�)\�Dx#V�@\�$Y\�\���mL�,h���@?ʅ�y�+��\�MԂď\�J��ڤ�\�X�_Z�\�\�\'��`\�G,w�aN��\�f\�C�\r4\�V��NWc\�\�^�D1G�g\�\�\�,V\�%��_^�YR(E�\�\�E�\�j����i-$�dr>&׏geM��p�\�=��,�\\x�wo�yo�Yx�\�R\\�)p�\�m\n4�\�ddj��#\�v�O���14��\Z\�R\�o\�QP\�ڸ�4Q\\%\�\�3\�G���R\�\�2i�=v��Ҭ�/�\�6-��P\�h�\�c��؞�XL�@\�/Jz\�/\�d!�\�2\�_+Qⅎ��\��/\�}s?��%`���������\�K\0%�\�\�U[�\��Z\�\\)�}m�e\�܍H�\Z\"	�۲\�\�p[+*(\��DXo\�\�5\"��E��,s\�\� �\\G ��\r�\�\�P\�.�z��0\�p�\�b�\�Ɋ]\�30K�dQ~$؎�\�c�7<,i�MÞ4�s�\�P�{ꇁ\�\�^)g��>�w\n\�H�[\�w�d�1\�^\�\�]6�\�w\�*��1�\n,if� �\��\�r\�!a�;1\�܇��hq��V��c�\�q�\0���\"��x�}\�Ki�\0\�\�O\��{���qk�\�Q\����\��m�~Q`+x\�z\�u>�\�q\�\�\�R\�_ge6���+d�0Y�-k���3\�x\�eD&	\"��\0\r�^\0��[&,���R.�\0\nqЉl�\��ik\�J�uW�KE�M�\'�\�\�?\���#���\rgr0\�\�\�K�+\"��\�]T�uѭZ��!\",\�\�\�,v����=�t&\�ڏW�_%\�Z\\vޛu6k+�;F�\�Vz�n�\�vN_��\�o�:S\\>�,\�=\�f>�6]M{?TUP�\0I�n�V�\��3���\�\�cX�kCd��΢�z&R\�P���#\�{Ӵ\��[sJ6\�n]\�ݕ\�u_J[:0����w}6���,���\0�9���JJ�M\�=B(�1\��b���4�:Lk�\�\�	\���y���n\Zt&F�\�T\�Ӟ�֐M3\�\04\'�g���\�Ƈ��\"\�\�ܧOuP\"ۍ�jXԂd \����\�PD\�\�(B��F�-��\n�\�BA�T=h�P�\�\��X�^�F�ړ!�)d�;�\�]�m�x\��>]Gth�ʒ[h���\0\�\��\nV�9h�\�\�aA��B�\�%��2\��\\\n�+D\�&�\�5t�\�\�\�\�\�^���<($Τ�\�\�e\�\�)�\�ho\�^\�\�\�;	՜lܖa\�U��Ō�hmy_\�\��p�U/\Zy\�\�b�\�].�����\�M=`{b.�\�\�4��F:�\�\�-�J[�.\�\�o\n#*D.E�M�ܷsn\�\�:�0c�K\�ԝKsji=�0zJ�^I\�2\�\�M����Q\�\��cA�-I<v([�ۍXƽah6\�\�\�TlH����\�B�\�\�R��>�e�u�_\�݇��\��\n�\�\r�B�-\�+C\�\�Y%h&R�F\�]OE.S\�K\�\�UTU���Ե���P\�u���Z	��$(er8���\�t�Λ�i���\��\�P</P��N\\��O��2λ̲�B^�J5�+�\�_��e\�ʪ��m�Ζ\�㲎I\�0��t̆\���v~^&^3\�e���U@\�\�Ѵ{�\�Υ\��E��\���#&͒��BL�u����U�\"�\\�2M�U���\�*�m��Tƃ�\�a�\�W,D�ƾsϝ-R\�yN��zd�Դ��K�\�\�Ɉ*\�O\�-�#\Z�7e�ʴx��������=�ڲ�\�\��\�O�\�V���k�q\�O�̮c\�R�By\�\�\�ځO �\�6d\�	�?��n�Ѧm�o\�q�\�\�巃\�\�\�\��.\�\�)#;�\�my�xس\�g:I\�\�\�JR����\�\�Ro\�\�VD�e!\�m�\�\���͎\\L�\�J�ĩ\�ü\Z�<�#v�6\'C\�P��H�61�\�\�\�\�I<ȝ�,\��y�\�O\"\�\�\�9��\�:\�]2<�*��w؏�G���\�\Z\�C:��ř���\�\�Һ\�\�� �^X���$i��֭)i0�hm�@!\�H�Ӊ=\��R�@x\�A	Lr��s\�Õ�J:�:�NH)y\�/Rv\nxjI�\rM\���\�\�?\n\�v\�õ\��k\�\�#n���\�S�W�{�f�\�~�G\�L@G�1BS0���}|E�{ꎑ�\"\�\�;m�*�\�<\�轢*-�΢�K$\�UK��\ZF�\�։\��\�\'\��\0\"�4mJ�aT�}j{�9#��gw���T]\�\�?@$k�\�D�;E;U\�ü�\�U[fw�\�B��*�\�\�ޢ\��\0�\ZG��#�\"\��mBI��k�+Gձ>n T\�kv0\�߸���^;#d�v��\"��V76��\�a��ŇnDh\�\'-\�{\�\�\n�K\"\�\�+\�\�D]B\�Ů�\�.�.\\��͠����\�yyO\���m���\�\�\�\�&�������\�ӗb�7��`�\�˴\�F���\�T�HG��n\�(߅J,�\��⧈4�-�$;}��\��kB6E��2�\�ԴJ��\�_\�B,��U�̊�ѷ\�I�\��%\�y#R#bӃbE\�<B\�ѲH��\�dS\�\Z�Bv�s�)6Z�|e�%U���w��G��e\�\�><\�|�\�$���U��\��Q�y�o\�PɓzH�mf���G5�a�@.�n9\�S�E\Z�\�)L {*���)B�Z#r�\�oN\�UT\\t\�S$�q�+�6\�2�\\\�۲�\�\�ғ$�犡3��\�\nHo&A�Ƣ\�mo\��k��ڋx��־D��{\Z<k\��K���Z֠�\�Z�p;\�M�w\0hյl\�wrLؚ�^�\Z�¤�\�\��\�\Z\n�\�9״C1�\ZV���>\�\�η-\�\Z�Rd#�\�{\�\�uI�9T\�\"���Xw��-�\�\��ҫmA�\�cjhL\n^�\���q���\�O���\��,/�RX�;�m\�\�#�m<F�)��)�nN��� Q�\\�/D\�>\�C+#��\�ju����\�{�d^\�kk��u��`\�+�c\�J�Ŝ�Ⓦǂ|Q���iH���3\�!\Zެ���\�/U\�t���KI)�\0��>\�ږ<q����f6��죎\�r\�R�G�	\�ek0\� �ݻKO\�\�\�1��$@.%�\�\�\�~b\�\�>��2E�d?�\�oc\��Z�M����a��A��\r�a�>\�0\�Ϡ/+䒅\�*�\0��~>V\Z9�,-\�\��\�P�L9CMRo�:���щ/�\�\�4���F1a�ڊO��\�\�\��\�\�>V\�E-\�˺ՙ\�K����d�L�\�8\�4�~I�e�7\�G\�^^\�o*�p>*\�1\�&e03\"]���z�\�@�m���\�<�K��p ��\�G��d�s�͟}��,N��)?PɎH0+\�9\�C\����?�,�]��1�aV$��s6\�Zཾ#�\"YT�\�3�\0R\�t��Fi9\�\�a�~\�eu��be�D����Vq�\�=��0����\n^���\0�P-��;�\�rJC*y�\��\0����	,\n\�+��ܿr\�.\�#{��\�\�xY\Z�����\�5�\'{�\�Bl �ͻʪ��蔵�D�J�\'p�LHV\�q���%\�X�\�zx��}y��{[\�W�e^u��\�B�\\�|H\'Q\���}ODk3Yo�\�ow�\���Ժ\�\�\�/�(=<�\�a�\0\�OoM{JE�^�jg\�6D�\rב�A*?(�\�Z $�1՘\�ƨ��B\�\�\���d�A_#��ة$�P\�\�\ry;̀�oR;����d]���\���(4\�\��zԹd$\�\�\�Ա���\�\n$��i4\�\r�TNB���\�;ѥ\�F$�\0��XjH<\�\'%<!a�,\�\"o&0\��\0\��t\"�3�n\n�m8\�q��ղ\"�N\�- ��<��޷Z\�R�9��ڧ0�\�3��>��L��I�U\�mzD\�|�ZE]\��F\�l<8\�֭\��%��\�^�\�v� �S]\�\�?mG\n_�ÆV;���1\�\Z\�݄q�}�\�f�I�q,x\�E��8�\Z���\�\�\�\�W\��y��\���� f�[Z\�Ϗ\����\�X\�\�#\�eK�\rI\�\�_\�\�\�Ɋ6򝾢2\�k�538.#S\�\�\"�\0�\�G0\�s\�6�\\\�\�zR)=�\0=���`�eֱ|�2\�F9L<\�\�[}\�O\�~�\�\�\"���\�	\�O��`М�V��P\�\�\'\�p�\���@ChN��\Z�9V&�Q�ux�	7�����\�\�Hp\�\�i©�\�\�t�\�\�2n���_�Ebu�\�Gi\��5�\�(/M�\�~\�\�\�J��	\�\�+\�+�\��К�\�7\�{�WL�\�|\�5͕҇�\�n�~4��;M�\�\�B\�\ra0UeSbM��\rJ7IPI��:���0m�\��uU.M1ȅ�4���_�֜	﫧B<�2�A{�\�\Z�\�\'�t��\�HB3���\�\��QY\"��p�������N�׫�\�:\�x2���\"Z\�T0�Y���>\�8~o�x\��41ô�H,��㪎\�tK�������U>QM��\Z%y�\�7E�t\�L|�rJ�΢P���5\�u�\�S\�\�0��\�c��\�\�C/\�V\�뉟aV\rf\����\�	eQԳ\�p\�Z<�$FZ\�\r�\�\��\�Qf����Z0\�3/f���\��\�j�\�\�X\�GőUE\�\0\\\��ޕcd\�K3\�v�\�8j�a\�Y\r(R6\�<\�#�\�mb\�Мd.>�ef�T�U\���ҟA4a\0Sq\�XQ���\�X�B�O;vS\�N��\�\�\�YޭhZi�H���\�Vo\�,�>\�Y���d��h���VskӨg,���	�^P\�f�k\�f\�\rU�܌<mI5��\�3�RS�O\�s\�\�;c��5�\��\r<xU8Xsɖ\�w��Q�mf\�xr#�\Z�I\�\�x�&�I�\�NҬ/\�?�k_+x\�R�3\\,o!.\�S��G�\n�R�$j�ʎ6,nx\�^�\�k�e���3\�_� i\",M�s\08�փ�V�\�u;Z6;[��)�g�	=��#��9&R����|i;K˛x�G\�n;\�@��F8\�\�\�\�$*xh<\�{�P��?\�\r\�\�>V�hx\��2�[yc�`p\�?\�@\ZR�.�A?��Q\�졤��\�l93q\�_\�5b�8;\r��sv�\0*\n�!Q\��6�v\�\�\�&GL�WH��\�E�X���q`�\\\�\��\�.�\�Ð\�MN0Z9�n\��M,5<Om(Ɍ\�\���\�=�\�`Krݶ;N���\�-��\�\�ʁ�gcZ��CLa<\�1&�\�\��\�A\�\��q\�A>w\�\�+7,�Ib�\�f#j��>�L\�PYG=��\Z󫣑\�\�>�H�\�+�\Z9\�h�V��Ȋ\�u|) ��\�5p#���r.x�?3!*G�uF�=�u�\rxf�i��6�=�\�cDQX�\"\�2\�}\�\�ŏI\�!;v�����RG�\�}\�\�W��\0\"�\��{�<\��,Ӫ��;�\�e/��ڤ���&\�ʧ�\�ca\�C�H\�\�¥��]x�?�\�$�VE�\�H��c�^��6\��\�9�O\��	:��?)�\�r\�\�\�F`\�\�\�V>�����s\�X_�GX�Ħ��*j�H�9Bv۷QU�_O}�ms$hx���#\��&^\".Dg\'*ɬ��^�\�\�XYM\�\�Ώ)�=\��5�`\�\�\�\�W\0���\�\�Bq.�+X�Cc\�Q���\���+\���\��;\�\�d\��a�\�\�Z\�\�h\�x�e�\�\�E7R*tt�n\0ә��\0�\�\���3<\�s\�৲�\�o�\�2g�\�#L8\�\�\�\�zA�;1O�M�`\���\�\�M\�l\�\�A�\nO���6D\�<�\�B�1 j{kP#�\�\�E�\��c\�+�@o\�\�x\Z�Ƞ�#J�d28)\�u\�?5Pه�<\�ۊm� ~Bx��}U5\"�\0j\�x\rB�w�\�\�|�M�\�幰u\�e\���ۯa��\���ͯ���!\�*�Yq\�nl8�Ȋ\�\�3eWa)�f\�H\�m�Of8\�3i\"n!\�\r�{j\�/\ZP�nC���Pa�[\"X\�2?tuWW#\�cLA�r�\�G؇�\0/ܵ�\�ϊyQov��̼��\�2rRFX�e<- \��ZW����%\�򭵏R-\�yT�D\�]m�C\�W\�\�2��˯��E��wy\�y���B��nKkn\�e\�\�WA$�ne�E<�ư�:*\�fQ#�\�.\�\�\�\���,\\�$��\�\��\�H��:*\��\�\�\�`\��i\'R\�S�a4,U�Wpۺ�s\���rM�*)u`8�7��\'R2F�\0w�����ޔH\�&\n\��\�\�W�U{X\r��\�ƒ��\�Q��%!\�K�C�=�&fVIF���\��\�*Dj�\Z\�K�q�#�\�F}	Q�m\'k�\�\rJ]\rk\���\�(NG\Z� \�p���Yf�=\��-m�\�N3�|��M�����igX\�\���6�L\�p:י��7�ԫw\\h}�n3˻4J�Uز��;[]i�Xkk�1Ԩ�\���e+\���B�D�!\�\��$_\�О\�ւ6!��	w0\�*�jYl�\�m/�p\0pT�@1E�7\��\0��9���T,\�\�4�\�G\0q\�\Z:Cm\��=�����7\�r\�e��;]���\�We�%��\�wa���\�̧�!�4�+X��(���s:\r8P�\Z��\�1��5\r#���A\��׍\�:^�\0�C�?VQ�0�y\�lHѲ6K(�;�0,�\�)�����)p9Ӏgo��j����U=r\'w�\�)�����Ȱcբ��\0m�ۯ*u\�\�+,�\�X�Q�\"܍��N����O�>��\01�$�cJC\�db\�\�?��}��glv\n\0\�ʼ�\Z\n\�\�뢁\�w\�\��&ą��&M�J����(�=@N\�bJ�\�o�}�����?܉\�\���TlR�\�őbQ\�\\�㭎���Y��O��\�v��\�čk\�\��c�\��\�\\\r\�u\�\��\"N�ӄ�f��D-\"r+��E!P���\�8[��tE\��b�]\"h��\�\� h\�\\�m\�\�WW�\��\0�o�>���_����?\�i�]w���,��`^um�,u>\�\�@�JP����F7)#K\�;\��>k`�\�m:j�}��\�R\�X�+�B��\�R�$}�\�\Z��-��t6\�<\�V\�\� ok�p�Q�h�5\"E��&�-\�\�\�@Ia\0�zwR\�\�\��z\���\�cPA�\�=�-ǲ\�\Zf\�3>/S��̜$C\�\�K�����}i���y5�\n\�\�Hث̤�h�\�\�)\�4�+Z۝�9\\\�*C���T@�\��\�kpU���j���\0Ƒ}�A�!\�Ί���:\�e$G�#V\"���\�Bl����M��\0:�}BI\"\�]��V\Z\Z�0\r%�Z%\�\���\�ohl�I�\"̊>1�=�/WU\�\�_`�Qp���\0��\�	?����<�\��(�H\�}A/�H\�\��ƒc\�I���x�λY��\�h�\�\�W\�M��\�:�B}[\�\�yT\�\�\�\�=Ɔ\���U\�\�w�������.\�_u���y���\'s\0Q\�\"F��\0ӹ\n���!�\rط����\�*U�\�ю\�K\�A\"�ڂN�\�!�\�\�\0\�y�gh��/.΢�Xӵ8�\0\�\�K�v�\� ���p�A$�\�\��\�V:��<\��B\�@���ś\�8��F�\�v�~^v��\�\��\��9$\�M�ӯi�=-�MO*I%�\�\�\�+�\�E\�n`/\�L�G�A\0\n\0�zk\�\�h\�ʚY�4��8\n\Z��h>\�N����0\��W��@Q{\�EA�\�\�F�?��ۃ#�`j\�\�a�ʘy!y~�\�\'���x\�\�=����&f\�u��[pҽ�\ZI�W�\0M�{i��ݚrѷ�I\��5f6\�܄�n��p�Ʀ�ct<�1]����/M�_O8�GFiv��:\rt�q\�M׊���.$\�,�\�/��e\�o\�\�N\�7�d�N8*Ęϣ#$�I\�+Ǽ\Z/`x�6W{\�^���Q�Y��yw�6\��@�j9|`�̌,o\��I\�8\Z�/(5\�R~#ؿ\�P�L\�װ\"\�\ZT\�1��9*�f�@F\��چ�b�\�n\��4*��ef��<���ߕ\�\�<�W��M\�dK�p�T,�r,ltdK�o�]\��N$H�\�ԓQv\�i�cF-�!\�\�Dj\��\�\�^D�.d�\�ZS�(^֣\�\�fo4w\'V`i|8\�\�:�K����\�jZL�\�\'/7H�#sbP�m	�:6l�c\�/\�1*y\�s�\�\0\0��b�gG;7��m\�-��\r\n�@m�u\�G\�f\r�6$\�M]�l5�����$F\�\r�f�@/k�1�\�i\n�:\�Q��\�]htQ*D���K\Z�Df\�d\Z3�����o\0��<꼏\�SV\�O�O8/ڲy�i\�\�\��8?�\�v�\�x\"�\�$C!�TOp���#&\�A7��j\�}U\n��p\�ʎM�w)�hiz\�TY\�\�3`\Zklc\�����\r\�s#l���}\�\�ж�C\��\��#n�Z�_ۉ�\�F$�Ѓb;끽�kC2\�ia\��\�\"�����\���1RݭΧ�13\�t\�\��X\�\�^\�,8ވ�GǗ$�\�-������\�\����8�Tt\�u\��%͔C\n��\�nH��1\�\�t$�^��O\�5\�=��\�\�\�G�)��\�b\�?�\��Ƌ\���M%.�,�\�se\�\�aYXNE׆����\�R���nB^�j#�F�n6y�?\�O��=\�Tr�;\�nò�\�>6Z�g	2j�x�\�T�\0)�S1h�a\�m\�=�>�+�A��m�\\h$Sx\�+S7\�Y��v\�\�\�\��㾆1�\�@��TkNR\��$ފ@�OM|�6=�ݦ���\�\��ﵻ���\�;$�/\�!*\�˷r���\�\�>���(��daň�\0\�f�io�$\�\�\��r�l,����\�NeF,�\r�UB�u��\��V8�&�\04��\�Cn͵`ȋi\�\�~��7�\ZN\�n�\�\�\�~�R�$2|�H��X__\�Tq=�\�\��\0R\����[\�l�\�w\0{ꡑ,o�6��\�C�\��T\�\��Qͻ�r\�{\�ˋ\�\�i]3����/�	x�\��I3Y]@&\�\Z\�Ŷ�Z��{��ތ�\�f�![ܲ\�JxZ\���\n\�K8���+4\�s�\�(�Xq\�\\��\��5\0\�\�V+\n�*S\�{O�\0��:�̠\��2O����\�\�Y\�y$�Fμԃ\�\r\�Bq�\�[\�v�Oa�1��%6e_!y$�eS\�K��I\�����Ŵ��ic�cY7\Z�\�G\��\�p�� 7Idkw5\��R�����w�+\�2�\�W[���<��\�W`�.\�9ԕQ�\�rf\�JB\�\�\�%\�Wk\��z� Ł�\\�cf?�]\�(X�k��oi��?�^\��\�ƃ*V@t�[��� �\�\�D>ry�%���2V8ZR\�\�\�7\�Ao�ƺ4Qe\nv�c\�\�&�ዛj\�V=�L��}#�ƣB\��xv��\nBZڷ!^��c\�3��K\�U]\�Kڀ-�\�Y\��D`��\���\��t\0�մ\��6\��G!\�n6��6�+g\�j�ұ�c\�\\\�!��rb04�!S����9m\�\�\�5:�blCim[A\\H\�+�-^H���S`\0IA�ƀq\'��64�Ȥ\�\�	_�\Z��\\\�w�@8 \�\���<ί���T;.��F��\0U4�\��34��JĤ�Y�6;�J!݈U\�Y?1+\�<Xv�m!\��\�6\��3;�\�`\�2�Ev\�Wp��b..�E���JD\�V2Ɣ���\�\�k\�U\�S�_v\�U��ۃm�\�\�y��\���3��Jub�o\�{s\�j-Gк\�u4�\����\�\��7��X�LO��v-\�\�\�VF\��\�\�0\�?܉\�1\�Cp}��]Rͫcb\0\�D4�\Zz���\�	�V/��� yg\�\�\"�\�\�\��<M�T�O\�h5:85_*�����\�\�z��I�bo$K�1<M�����I\�}7���\0R\�HW\�S��������FK�`$� �.69#�~�i�ea\��\�?�kM7F�s\�4��\��\Z��:O����1�*���X�4�GT�K1:\�\�L���x�\0�܏;�\�_�\�;\�:�Hm@�_Լ�ٺ\�4Ȟ�\�\�J\01��\�T����\�8}7 �Pc:\��6��\�\��\�؇�km\�J��k�wR���/��Gp��ۉ\�aH�\�\�ϔ�L��P~~�)\�\�,-�s��q�\�n8�\�6�F:n�ge	\�E\���\�\0߾�q�\�E^��\��\�\�\�wI�|�o���)��̧\�\'\���\�=����)�\�Ap�&^B�J\�:n�\�\�\�h�:�+3G �q}�\�y�\�i\��\�\�R��JC��1#�\�Y�j�\�\�nC&N��\�\Z��\\����@ 	31��\0oj���\�[^k�z|I�\�\�\�\���asγjr�&��a\�\\�iggQ\� ӸT~i\�\����\�~�\Z0d��b]���y%�7\�ޜc]�\�5�,���\�8�ۊ\�����\�j1\�\���\\\0.\���\�\�cR\�ZT�Ԧ\�\0ŉם��Q���\r�V��a�\�\�X\\�\�ZF	�ƞR�v��m\�*��י\�eQ�9\0\�,�ݫ���\0\Z�^Y@Wf6\�eRN\"w0�qi�g+E�3G5���c����\�\�4�����\�{)\�uQs:\�Q��l9=B��x�\�j�[\�\�&U�\�݉�&�v�m\�N\�\�e\�1q\�\�\�y�Ge#CQ\�#����A\�rhx��S\"�\0�A��sm9��\�3Y��\�]ob}D\���p��?gq�\�&l<�qm�oyG\���\�EcL&C�K�!��\�lz���\�VyH ��R�=X$!\r��r3��C�})n��\�:\\\�\r\�~�G٥,�X[�\�օd\rpEԋ0<���c��쟓�\�?\�\�|ݵ\�\�ԍP�\�\n��b[\�䅍xnc�TWS~�v)�Y�VD�6\�\�mq̏\���$*\"\�7\�3�)#��\�n\�LX��u,\�[q\�k��fi �d\�`m{�\�qւ\�Oƞ�\��a�\'Ǎ&\�iK�\�\�	\"�nO�/y\�QY�sc���wh�&�\��^�řf��\ry\�C�8\�񂕖\'U�\�&w\�nDv~��Zy|Z\�x\�z��\"\"\�\�~\�\�O�-�r\'��@N\�4<��\� \�7h�[+K\n�d�\"�Ϙ2diem��?�����I�t:�y佞\�TFd�����Tv\�*\�^��FoT�و�\�#U�\�#��(�>Ꜣ\Z�U~�?U1�x����7�\�^Y\�<�\"Ut��A�\�\�\�\�O��-\�/`���}�G\��\�l�\����\�\�h!�a\�qs���\�\�3n��1�TKC�_\�d*�p\�c����[\���iwX髈��be\�$\���:\��\�S\�\�(Ev��D��bJo�G�qV�\Zr\�0�k	�J\"e^�\�\��,e\�\�B�\Z!\Z\�<)\�RX\'Y\����4oUrZ�\�����F\�h\�.\���\�佦��\"\�p\��\�\�5|S\'���\�2R\�a\�:o��\�d͎xF\�×\�K�T�\�JIƥ�9[�n\�7�\ZiE&*s֬я\�O�,6(�\�F\��)\�\Zx�<m:�\�\�PrօXS���08Rm=��}J�q���+nG;�<|\�\��p�ca�g{\�Çu�zZ��\�\�\�\�\�\\������(|����O5c{>����\0Q>E\�y���1\Z�:�\���d]�\�\�k�P�N\�{/R\�Sʐ��ѤZ��r\�ә��&ô/�+xP�].LX�b2<l.�=\��\�+\"G�(�\\\�H�c6!l|��yu6\�]�\�$��\�pc\rv\�ǅJ�\�\�߰q�qz\���RP\�U�V���\0�Ӵp\�6;+��\�\�F\�km���ՙ�V<�H$�C�?-\�[��\�\�lp���a6�\�7��\�E�uЇ�c\�\�h��c\�v�k(�\�\�Ql���J��\�\�UU\��Q�\�\�x�\�}�2\�in\�P7�X|7\��\�\�d�N��!T\n\�nZ\�\�\��Z��lwr�@\�p��Q$d	�A?˯\�Ri�\���zQ^�\���(�\�\�	~[v�;\�\�\�\�D\��Q	\�.��\�\�\n���,k���E�m<\�L��\�yGS�L~M\�I�M۵\���r�6��_i��q:ԡ�i\��\�6ks\��;.v2zVC�,@�|���\�_\�\�@\Zc3G�/\�!����\��\�X��©mH\�\�\�\�\�.\�Yb0�W<WTkr�\�A�\�%TR/����\��#UU���Tc\�N\\�\"\��*M\�n\�\�m�]}X�d\��)\�J\�,h+\�Xq�\�r�/��\"�)k\�ԯ�1�ų%`=Af\�j\�rm�:\�5�c���t Y���\�5i\�\�ǐ,\r].*\�Ŵ�.�\�ߤ�Ҝw\�R0/L�\'[p�:�N\Z\�\r�\�#\\Iڈ>/^�FV\�\Z\r;4�O�d�B\�l�N���-�\�R,���\�m!�E���\�2�V��%\"^\�o*��\�\\\�8�\0\�֐\�@\�H0q\�yRb�,N{K.���^c�I��:mE\0�ۥ\�\�\'��\�c.:X\�Ŝ�$ԝX������e@d�m�Z\�\�p�}L�����C**�m�k�C\�j����Hu h;O*�\�\\ɠn7\���rR\\\�����\�~\'�j\�L���,n\�\�^\�xS\�q�.0\r)�\�\'���&4F\"�T%�=��g�\�\Z���\�>\�n\�$��\�\0��\��V��W;\�=�y#P�c68�2eH��������G?�$��H�G���$�A��\0YPk\�*\�&Le��Lx �iZue�m\�)��d>ӥ[\ZX\�\'s,y\�@!73}X\�ZĚ�Pٳ��<��\�?��\r�T�fIZ\�\�{I��cf^\�\�uN��S\�d�\�u$�/�}թ������Ca�\�\�!\�\��z$һԷ�Rɕ���\�\ZX$\�\�G\�߅f\�澋�\�#�\�\�U\�:���|���21[�\ZMn:=�.�0/PSV)�Ҥ\�E�V��L�ѩsؠ�\�G�\����\0,�\�\� �\0\�j % :��P�-��\0ޖ(Ge˟��\�\\P?w&F<����oD	\�\�\�\���/\�ze�\�h7\�\����He+ �@\�n��\0\�R~�\��d#Qi/�\0�\Z�einQ�\��\�A8N%\n��y����\�n=�\�/2e4gV\r`k��\0A\�m�)�w\�3c\�O�\0ޯ��\�@G\�lv\�{h�\�2�\�5xد�rh����\�J\�\�\�F��-N{\n\�\�NA�$o�%Ա?�s�:vD���쑀vp�~-\�ͬ<�\�¯\�ų�i�qw���x�k\�;���Y�.\�?\�\�c�4@G\r��p4ݣ�&��]\�S䳣�dWv\�2Yc\Zl�\rո�)nf\�\�\�9%\��cq~=�\�4.$ɗ\�\0\0�&���mN\���*�܈\�\�\�,\\\\�śM,nx\�w\Z�\�Kt\�\0\�9�8\�\��\�P\r\�o�(�TsҼ2�3G+u/�V\�.:j#P{H�\r�a	�_u]$\�k\���\�\�5�ԝl;i\n\�\�\�\�aӊǡN\0S�\�ɿ��͏����b\�M���\�\�œ�\�\�XbXd:���k�wSn�\�7ư\�A6Ӗ\�T\�R|N<0��z1\� �k.\�&\�,w5�ұ���\"8\�x\0+[�i�\�\�i*�\�n\0؎��D\�F\�����-�e�zst�uއE����{hl�r1RXԶ\�\�\�N�5��U1ȁ\�qfS\�\��\�\���|��}L\�j\�_�x�L��\�RWt;�ѷ��\0)6֭XOk��<(\�\�2�߬�I\�ף\�q�����K2eke@l3G%�/�\0\�\�/�\�\�N�oZ��d��\�˵G�H\�J�Ӱ\�v<Uv\��[?�E\�-˟:�&S3\"\�\Z$��1h\�66\�\���ߍ$��m˓k<ؐD�+w�l?�]��=�\�Gݞ�\�K�O$kpA\�+�!�2&WH@C)\��w�\�\�]<\rgk4�\riD\�Y�\��oF���\r�y�\�`�\��m�Q�O�l\�\�\��\�a\�nD5�5{m�\Z�^B�$q�Xn~\�r��\�ܶ<j�ه\r;i\�\�K�-\�\�\�O1\�\\h�\�RN��&�\���Od9\�m\n-�7�1-�yܳ@R`D˜\���*��5\�d��V�dͤ\�\�C\�6Y�\�J\0G��\��\�逥�\�V �#մ�\n\�_\�m��#\�\�}\�5��É\�\�3\�z<�Y\�ER�y�\�;⩥ň�wv��T�]�|u�\���s\�!�6ե�[���\�ٌT\�\��>xڡ+)�_N\�&��Ju>m4\��\�\�70��\��T\�ܞ\���u\\y)kP��ГP��䍦;1����n@v��!�\���\�S�{U\�]�K��\�\�s�)\�_RH��:�\���K\�=��\��\0�\�H�T���\0\�V�Ip�\�ZT���/T\�Ҽ-N	��I�ouI�>��H;C}\�F\�\�*$\�;\�t\�7l8/۰������b@�s\�	�oR\�\�|���b��ڔ�#\�@v(�U��\�T,r6�@j%�׵^<�\�.\��?u!\�h�ha�|+#x!�mV	\�\� \Z\0�V>X\"U�ب�~ \�EW�/\�\�QW�A�6��oF�`e&�l7�r\�,D�Mb��\�[��׷uT\�\�Lхǎ\�\�\�\ZF�\0^�忈�Nvy\�͎\�i:���\�\�mϼV3#\�NW-o2|2\�AR9,6�\0Ҍ{\��\�\�$e	m�b@�@H6��\�\�ﮞf\�f�\�ka���\�^\�I�\�\�+^B\�@V଀Z\������\�fg�\�c��\Z��Z@�\�k\�q�\�0�a���^\\I\�#R8\\����PƩQ�6[\�H\�\�Lp\�\�v��\�\�(8�ȕǔ|#���P�Sh\�Yye�!\��ԑ�\�Vcg\�\�I#\'Nں�\n]ܨ��\�\�m_W��\�Eu*W�\�fD1oQ�\0ݴ�W\�\��&JS�a\�=���<r 6[�;~u�(��H��#Ccʆ��֘zw5\�\"\�mx\�|\�\�\�A\�\�\�\�B�;\�\����c%\��@NF\"�A�O\���\�tq\�+l�\"\��\�l���\�\\)mYy_�U+gjn�\�:b��mÏ`��d�\����#MjӍ�	f�2.x�E�\�\�T�#\�/\�\�S\�\�ֳ�JbkT\�	�\0޳�6��f\�\\X\�zY��A%\�e\Z�\\iSb׍$\�vI�:��\�p\�+\�Z\�)��\�\�5=�\�	��@\�\��u\�\�#�h�fV�C��\'\�G,Gk�\��O\Zd��\�,�	\'c�W�56`��@m\�](�D*\�<A�bE.�\��j��\����\�;G}�\�$�/\�\��Oľ�HyF\�}�\�\�Z\0\�\�E�V1Χ�h4<\�\�sY\�p�̢\�\�n����\�t\�\�#�\�\�\r���hX:\�:\�#�U\�-����\r�\�cW��Ym*`�\�\�y\�\�o�y �4\�\�e\�\�]=yW\�vc\��L- �PA\'Õ!6\�^NƇj�YRO:]c��0�\0nM�W�-9�i\�Y��\�\�=4\Z�/\�M\�yQ\Z�)m�\n�;MS��\"߶E�)��ơW@*@\\֔�gg,\\1\�᷏x�\��`��`@\�m��\0-�\�U&�\�\���\�WE�a��3w\n�\0�q4�g�À��y]Ho]z��u\�5נd�5\�6�޺�\'\�T�X=OT Y?R�I��q�\�\�\\\�\�9=�30�s�0eF$C��e=�\�A�A�i���\�\�na�h��ȑG��U\��^\�51v\�@@=դ�{zr\�\�\��DR�W5ԯ\�3}\�̹�\�pV��>\�Ml\�^D��|�\0��\�Θ\�zo�ȇr\�\�ƓdJH�e}K&rax\'A$N,\�\�_9���\�ҧ\01�k�2\"\�Q�\�\�S�uF\�J�\�[kL�jc\"�\���.H\�F\�[����ߥ�X\"͵��\�t��\�|+�@ۊ~ڮW]�x���P��\\ȧr\�Qʡiю�M�\Ző$d��U1�(���;\�$\�ώ@\��1�<�kxRgB\�\�i\�ݎ�BH�\�`\�\�\�c�R�\�)#���.D�2\�A�縫/\�P\��1�\�C��\�On�,�x�Z5\'�����g\�\�ڒyՋ.��\�\�H_�\�\�\�\�[���\'���\�\Z�~\\\�k�C�sԞ;�\na\�]7M\'R(���c��~\�a%��\�֖�\�UjPLVfN*\��hj�u�\�X�����\�ˠ\�T��\�(VG㸏��Va�k��ņ(�r�\�d,�,��\�O�S&FDcD-n\�4$�\�\�\��\�(�hBIe\\�m����ڛcG �\�\����\0\�a\�h\�i,\�\�r�\0(<*\�jNW<\r����\�F�Ų5԰<eA�\�j$��e\�MK\n;h�a�<��L\�o\�I#�\�\�\�մ�!P�hO\0,\nb45\�5uutq�.�\�Ԁ�뉮��WWWR��k��\�\�u\�\�\�׮���\�-]]Hd+\�\�WS\�\�\�\�WP��\�\�\�\�\�QTO3\�c�5�&�\�\�\�5\�\��\�_JB�\�=,�)\�lRw]GM��\rd\Z&~\�\�\�\���*�5��}�\�\�ʺ��z\�\�\�\�O��\'!tEArg^k���\�aG���\�xё\��\�؀9\�\�}�\�ԭ�E\����8\�例~\���uuuN6/%�/h���l;+��v�\0��z�����2\�\�Qڵ\�\���\�Q6\�+��\rTȪ\�Q\Z\�\��lO\�\��t\�uu3&R\�Wb\�������7׍uu.��\�l�\\ЙYl�-�͢�={k����\�',2),(_binary '�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0<\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0		\n\n\n\n\r\r\Z\Z��\0\0\�,\0�\�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQ\"aq�2��B��Rbr#3��$\�Ⴂ\�CScs4%\0\0\0\0\0\0\0!1AQ\"aqB2�\�\0\0\0?\0\�HX\�\r|{\�)��\Z]I�4�G�*Y+�kj�$�ΞL�����\�d[CnT�-y\�R�	6���Ӵe\�_ ���TM۱\�^Lq��b:��\�ּ�\�̺\�\���;\�v>\�\�Pƒ<��n1[��-��!�\��x\�k˻�\�Ϥ�Rev>��K2���9�$9\�\�\�$�G��ԅV:@�7.�\�t\�\�i�� p��.Qt\�P}\�\'/\0Bt`y\�E(��1\�jK\�\�Xސ\�o1鶞4d\��\��Tܶ�\�ȏ��7�*n@z��P@-� uǔ\Z2F�^��$\\\�\�i�����\�0\�?�o�Z�jmE\�6�\�_��\�ǲT�F\�A��ЛH_\�_\��jh\�\�hTy\�oOa�_���k\�ӭ<�6Bu�/Ʀ��\�!� ��h3*\\:�i��\�\�&�I\0q\n@/A+�\��\0�r���\n\�Y\n�\�Jpv<\�ȋ?G����\\|Mz?7/\�\�\�|\�;�M\�d\�\�lDv�lu�VM\�v\'\�M{�\�q�\�}�W,K٢��*�\�\�^��q\�ٛ�yxu�n��ߴc�ْ\n4^d�+]9Z\�}�\�[\�\��eh�#�\�\Z6�\�C�\����\�\�d���-�\�\��m�WO�mX^\�3k���⺳?Z�b�nO��߄^�]�{\�r�\��[�\�.���V��I-�:Z�.�:!\�-ʦ�#9����a\�mq��;_S��-x`r\�`\�xZ�\�h4𧁓���\"2� y��e\�)�dF�\��R*oqES\��\0�\�Q5�\�zk�QN\�j\\\nYQ\0\�Z2��\�h\��j�d�!o\�\�\�L�ׯ�\�H�ԃ�\�J\�u0c@\�\�$�u ���#q4��U\� !��_�[��OA ڂWw	����\�SH�c_,+^z\�����w\�\�\����\�\�׊.��}v��\0�׹Õ��2\�kk\�]�|\�6>\�	\�h#\�>)�\�\�h�5\�\���w\�l�\�n��ܣ\�7O�P\�:{\�x\�v��\��\�M\��\�M�ՙµ���כϞk�}�<w\�x\��R�\0-X�[\�{9k��׮T�� �I$�\�\�z\��\�K����\�~}\�\�\�MS�ط�_.+م\�\�Xm�i9\�\�\��2K�$J�\��\�\�\\�ᾲ\�[\�m\�Y���u-\�n`�냦�Ӧ\�y�J۟*\�\�6\�,�\�ǅN ���\"\�TF�F�ZIxGUΞ\�O#5\�*�\Zёi�cԓ\�[SFG�Z^&�\�K�2orb\����\�\�(�`��\"�T\�y��3.��\0�?U4���5`���\�6�d��)��\��0:��~d�\�-�oQ�\����ɽ�i{�2T�7�`\�\�H=]ly_Z�-�	�H�	�AR\�\�@\�FՊ�[��X����ur�ߏL\�\��wƸ�k�}u\���e\�(=Rt\�:WE\�r�+\�a\���\�I\�O$	�0�s\�\�ǅ�\�[\�\�\"X\�v.\�A\�\�\�\�rʮI<�\�W�\�\�</^g\�\�\�\�\�x\�w\'|\��p��>�\rGH����u݋�w�5�%\�f>[�\��\�\�[>\�\�L\�\�\�|�s�\�+\r�H\�\�\�\�Zؾ�cbD�	��8\��]z�\�D;EH\n�\"\��Z��\Z\� N\�TC�OT{\�z\�3\�+�/�\\\�Ժ}��Nm��F\�(�v�.=\�\\w\�\�\�z~&���\�\�\ZL,��aY��^&\�]H\"�ߝ��\'%\�kܚ\�\n��\�\�H�O�\0\�`�mQ�t� �U)\�N�ѐ�T�\\�\�<\0\0o��S{�}t��\�԰��\0� y\"�\0�R\�@\�\�jTL\�![�\�\��[R\�\�\��T�\�(6\�\\�2�GJ�\�\�@�\�(&\�,-\�cj(���\r�/\��x\�A<�:B�56��\�\��y\�	���\�wTR\�\�8ӞB\�\'\�\�{g\'3)�ftg766#\�>\��>nx\�?\�\�\�\�;�\0\��Gtni�oy���H\�Dc�WA^�=|0\�{P�&\�X����N��n\0�k�\�37,���\�oU�G�9�ԏq5���\�q!c)��(�\�c\n�]\�\�fG��&\�^�O3_K�\n\�\�\�\�ǖ]\�g٣H\��*�\�\�\�\�M$��۳\�\�+˩ h+���\��\0M\�!Y�p\���|��\�!r\�vU\�\�\�\�h�\�\�f���\�q\�<�X\�jl_;�cu��ч�Ř��\�m���L��\�\�ӦS.ǔ���?/����G\�\�]*,�g�9c7W��\Z\�\�\\V�ܜP<�|*h#��\Z	 \�\��ak\�= ���\�,\�,V\�\�A�P�;��S�^�\�쪕6�AaB�t/�E-�W�l�Q������E*�z�\�\"���0B�\���<h.z�\�5�$�It�	\��\Zct#�*���\0(�\���\�@á\�\�zfp_�\�H=����p�s��*\�\�\�\��������\�\�[Y/�\�\�.߳�$R*F\�!�\�\�?^�-<��=����6\�hk�XΤ\'J\�v\�ɿǕ=�W29g6\�\"�\�/�Ce;�\��\��k\�\��\�.\�ۛd[x��m\�t5\�t\�/O�����OH\�_\�Xƶ�c\�r#Q\�!:i[k\�Ϸo\�4��FC�v$�mi\�\�]#\�R�#SK+��\��lt\�\�ƕ9<��1$T�/,��9pK�8\�Ac}m\�G��Y�[��m\�E\�n\�\�{\�\�\�6\'�����u��\�\r6\�tZ�/sj\�oi\�\�) �\�Ԕ�\���\�&����D\�\�K\���4d�kq�\0�dxzo�S�5\n�Q��_�S�ԩ,|\�Q��dN6<hM�\�\0>�\n t�iL̫\���PH��\�~v�a�V\n\�\Z2�\�\��8ދHڝmm*r`�,��\�:-8L���\�$0��@�4`�f\�N.~�\�\�\�<`|O\�\�\����2\��v\�\�W\�\�U���۸dF��PPopZ�b+\�\�\�\�\��eץc\Zr��!\�Σ\Z���20��\�s���&D�\\���\�\�L�\��\��\0QΧ��\�};�/�V��f�\�\�\�\�^m�]�|\�p�o:�Iu�,�Q\��1��㥏H��J���(\�Pyx�\�\�M��+\�>Sb,jr�\"�6A\Z�H\�1�@C1\�㡷\n�k=�߻rr�\�\�w\�BUѺ$��Ax�\�\�$\�8�x��gG�����d\"ȾΡz�z\�\�Z�\�18\����X���S\���($~C�,�\�H �\\�%2-�\�@i�i콨���ȁ��\��Nu�UBD�~�QE8SZ\�����\��lyQ�\�\���xR8@\'�[�(�R@ yS\�DO7�\������^I�FU�\���\�\�2z4$ҧ��G�,X�\�H�K��\'�\�P�@Õ2��:\�\�Y%a\ZkV��\�+d���\�\�읷�at\\x�+\�\�T�M{�y\��yWl۳\�\�q��n%�X����_�\�s\�Q\�!�Rآ�uv-n6\0V,��\�*4<	��\n��A�\�v�Q�B��*\0�W�\�\�p�+X8\�+�\�ZdHT\�\�8ۍ<��\��c�l�\ro���i����/���%R}���\'9A���%\�py^\�Ҽ\�I��;�d�k\�n7\�jf�x��o�K\�	\0�\��\�ʟ#\'\ZP\�kr5rV{m\�\�f*��$�\�\�pᆾ\�\�\�\�\�\��\0OT\��5\�\�!�\�.+\���O�i��pOɖ��\�ly�H=�\�K�k��{)��E2�gQW��\�Q�?%�xI�\�I%��+�QF\�\�\�C\�A>\�W��Ÿp�D��b\�5��m<Ā\0\�s�;�\�fm^\�\�N@����\�_���\�\�\Z\�\�\�\��\�=����X�v�\�mPoI�\�;\�$��\�ƕ�����&�k[\�TIݻ�rw#;��q�\�d:~�^�\�\�7?ӓ\�\�q��w\��\�\"=�\�/4�\��[ >X\�\�ֽ����^v\���@���c]�.�\Z��F\�۔f`6�\�U��\�ĉ��ѩПeN�\0��\�v\�e6\�X�1Q�¼~߯_��yz�	�\�\\��\�\�{LX�c6b\�j�\�Z\�gm\�e;�w�k]:�sm\�\�;vLc\�rVV���u��«*x�)�_Az[j�?]b\\�0� �\�\�J箨\�w�\�&<re\�\�Z髟�\�m\�\�r�\�r,�\�~�־�|ՖV՟��v��e\��9��\�\�/\\�&,xx�c\��B�\Z�b�W�\�l\��J��\Z\�Yű:�\�L�\�-om$yxB\�\�mL\�Ad�X,cj�V#nC�E�zO�Uj���Ga�W\�lq\�<O!\�\�*�\��Ӱ`ƾ���arX{j\�%�D�q\�Q��\�\�f��]]W?ítz��u�s�\�r�?˨\"\�SG�:�Z֨\�\'�ij~@��\��\r�ji�\�\�ЦK\�\n��M\�n{�Ճ��D\�rr\�\\�\'��W��\�=�\�\�}X\�߷M\�3eY�}XS�\�\"�4\���l��m�a\�\ZVɕ豋|k\��˖\�\�\"�\\�!�]����Z\�x!ٶٙ�(L�*�b\�\�ƹ�k5\�۶\�\� h\�b*7��\�wm�\�f8��������O�\�\�ӫȋ\�|:\�XՅ\�\�wV��B\�GBt��}u��S\�e�k\�⤢@\�=\�o^ƺt\�?�;d\�\�\�Hϗ14k)ou��\�Y?%[`��\�\"dd�f\�\�>:|k�ߜ�\�Nv\�A�:\�F�yU�~\Z\�\�i��.\�\�E�O��q��L��\Zh2�n�\�FWCs{\�G=�\�fe\��2{�4bq\Zut�_\�\�E\�m%�\\\�+\�\�\�w\�a��KA\"�S��:�|+���E\�k�B\�\�_0~�\�t�u\�y\0)mg�X<�\�\�ђ.\�^�@f��\Zs��7\0kpoU�\�t\\O1A{S�\�F��\�B��B=x��X��f���\�O&O�\�\�H��w�\�q�K\�M+��bu\�+]\"3X\r\�&|y��W�\����5c�<x\n\�\�F[�?�\�]?\�$�?�\��k{۪\�\�Zb!\�!{��y��\�P:�\�\'JY2�Myѓ֧#&��͸S\���-�����ժ\�\�.�M�\��ɲ�Ǣ\�]h�\�a@\�\�f\0�k��\�\�\�\�;\�\'ڳ$ܶ\�\�\�\�%��\rcc\�\�_A�}\�8{iU=�\��:\�=#� q�W~�\0�lV�51��\�k	%�<���u��ח\�z.��P\�\�r\�I4R���M��x\�:L#},���\��\0��y��k���\�\�\�ѩ�Q��A�5\Z�\�7^Ȋ\'i�`��jc �־\�\�yX\�\�b\�c���9\���T١�|LI$X��z\�:4\�t\Z��M\�=2#:uk�Y\�]ul;\��Ҫ�����Y霗|z���\�\�\�\�A\�r�tM�Q\�\�W4���9�\��	�p�ț�V�\��i\n�\ZInu�ۣռ\�d-�@N�(�A�y�ZD��6�\�\n�Ks���ҹq\�Br�\���Q\r\r$��\�$��P�F##�\0��\�^�?\�\�����+��#���oV�E�M��צ�\\̎�O\�:\�W\"k=��\��ֲ\�T?Q\�o\�z�j�:r1[�\�\\���p\�l9q���jN�c\�\�E\�\0I Z�<<64�\�dLb�\�\�]$\�?�\��~2+X\�\�f�$^��y{�C�\��\�\�,E)��=\r�\'�A6��J\�\�\�\�\�i�e\�vln\�\�\�\�uƅ��4����_T)V\�<\�\�\�^�\0\�\�\�yqu\�\��\�	�\�\�u\�wLX�\�ɛՂ<v@\�\�<\�0.:O/1�_�\��\�u�ż\�+l\\e@$\�Ic¸��GWM2��(b\�tQaec�\�-f����X\�k<-�\�{\�.P����M>\�K8IW\�f\�Q.L1;�\�_���&�k��cu���\��\�\Zt\�^e>z\�������r\�A:\�`D|ǈ\'�:��l�{tϴf�\�Y�p@�uC����u\�\�\�\�\�ʧ\�\�]p\�\�&Tc��u\�߈5u8\���0\�h\�K5�\�E\�l\�d\�abor��W7X�b؛iX,�^\�\Z\n��$ђ��m`5�\'�J��F�\�U�\�\�V(��WX�]\�*���aD�����p\'鱼LCpE��$(\�F<_¿p��X[O���鮔��\�\�jq9R\�9\��F���S4��sZj�P�:��\�\��=C�\�\\�\�;��n�\�U�\�\ZP@ \�J��H\�S�1`�O�\�TӥT+Mgt	�?����W5�X\�>U�a1\r%�n\�~\�IlI67M��w\�\�Hm{�>�;\�cv��fˉp�	}(�R_\�A�o\�^\�\Z=�k\�pv\�͓v��YU�r�\�V�ż�O��\"�\�˧\�\�%A\�ٻ!�I%Ib\�$���A\�Ӎ\�^]\�ûsR\�m|*0\�\�H��q\'�+W���K�m쩴֧z�V\�D ���\\��~㓺e^�\"������X[o��l\�M�o�\'g�%�r\�I\�]>j\�Y\��Ý�\�u�r\�9�Y��oᠭ�ϖS\�K\���2\�b`��I<����T�j�\�\�\�dϙ!���è\�s\�\�st\�\r���c��\�\0���j{2^��A:��(�k��8�\rs�r\�𒄕҂\�x\��1!\0Q)\�\�必<��\�9]��C)�X�#Pt�9\�\n\�^\��\��\nMĻK$M��ubɥ\������\0\�n�\�\�[>\�\�24�2�\n8�����f��\\,��a\�KtL� ]^�mp!\�\�\05V�\��Წ�v!R5�9\'�V\�ӝ����\'�\�#J�T3�$�p\�W<\"��ͯo�_�u\�`��\�\�&�RXn\�S��ut�-8b��֧ kN�-�a��/��h����\��\�\n���夒\���\�ӃS��zv�҃\�6D\�(\�T�*\��\�y���\�]\\�1��N^P\�\��̔U9Q�\�c\�>IWU\���\�\��,s�j?�˳n\�\�E,q�O*#xra�OS��|k���\��t\�\�r��<o r\�/�(\�J�\�|k\�\�LW�|\���{h9Q�=�a\�1K{\�8\n��\�R�\�\�׷�Ǖ�2c+ss\0؝*�\�;\�D�ܘ\��:�#�+/�<+�N��v9/sI��e�\�7<��\�\���]\�4yR\�\�\�\�tF9i\�մ�<\�Nى&.PVK8dە���s�\�||q4$t\���?mcӔ�����\�ܡ\�\�I�7����\�C^�Ѽ\�64r-\�,���\��\�z\�W]t\��\��� _Oe\0�\r\�\r6�\��$!I��\�\�`\�T\���\'?ˑ\n7���\\�a\�w�3-s�\�\�\�`�\�\�\�\�wP�W��ڹ��K��W+`�+\"	\"��\�t�)ײ�����۞����tƸЎ�\�`$`��Uw\�֜\�V�Gz��r��h�V�nF��=�\r\\\�q\�V�z�\�{V=�\�3:f\�79>l��\�o\�0\�\�\�Ym\��VR��E��3bC���_�<�_�_O��W�\�Ѣ,\�\�\�\�\�\�8\�m)\�R���\�եFֹ��zN�^:\�:�!bl-sFO$̎��\�4�\�r=\�D�X[����\�AFZ\�\�\�̧�ѐ�\�e(`\��Z�\�W/mg�i9ُ\�5զ�2�8��\�ۖ\�\�р��]�Ym�T\�r�o\�\�<\�\�&*ݒfӤ��D�\�˭�{��\�5\�\�w����\�\��BLG�YE\�t\��7�*ïϏ.�}vm\�\�\'Z\�\�_-�\�\�S���^��%����uT\�?\�|G1��\��O_1��|\��:\�.\�\�\Zڻ�\�HἮR1�\�#8N��f\��\�W�cMxӭ��\r\�6\�2����5᭪.Ѵ\������͓��ɏ/��Q�n\��\�V�	��Xmi:e\�y�������F\'o;b�\�\\��nw\�\�x��\�0���\�\�o{�ב\��զ\�Y)�\�+\�-�>�\�\�(zH-q�*)\ZvЎt\�#OM�\�E<�^�\�{q\�+Mk=�mͱ���\"�+\�M�r1f\r`�����\�o\Z�~m\�\�#5����\�H2��\\ub�\Z\���\�\�m��\�\��;\'}\�l�\�\�m��:p\�rt^tu\�\\�\�wh`\�\�L|x\�PơR5\�\08W�צk�]p�\�6$k8[+\�<9V�B9K�j!�\���S&\�\"\���$���a\�\�\\��-\0�R����r�ZamEl\'�4p���T��SF2[\\Cr䴒I(\�>Q\��EӮ�= \�4ES�ʑ9\neY��\�d3^\�8U\�K��YE�\�o��TX��\0�|D\�+\\�3犭��Z�O+\�lE��+�\�\�\���o\�\�\�\���6��#�2\�+�\�R�8=`��1��\�w\�z��y[�2`����)\�+Ϟ]\�eT�21���Jl�\'?~�+�\�C���\�\�)ݲ���$H\�\��^�mU\�3X\'�\�M�\0v�\���\�L�\��$>\�\�d�\�_w9rt&����5X�w\�{bC,�@:T�\0�>�H\�0_p\�1�c\�\�\�Yt\��뫰ƫB5\���G�\n�m�\�Ԕ\�[PMaiԛ��cK$Ch\�xU@o���\�FM\ZBK�S�Vor�����\�\���L_��#`��t�]�Yn\�\�\�\�l\�q��bb�O������p\�\�>�m�`L�	\\�\�3��ۂ\�~�4��Y�]8�\�\�3���Tg��]�y��&�>\�po�7����>G\�8W>7n�o���*vԡ\�\�V���g͍\�3]8\�:�\0S$�1��9����j;4�hA\�\n� ��ƵF��\�N�\��Q6�\�.x������\��~\�qUb(lo���!J����{�1vL癿�1H�\�\�Z\�\\���k�lL��Pvm��{K�;smOO��%\�Y�8ݙ���I�O��W\'-��p\�\�\���\�y�þ\���%\�\Z\�f�΄\���O���\��\n0%X\�:�J���gZȳn\�\�\�\�	UX�2�e,�\����\�\�\�\"G\Z��\0e�I�E�\�õ��D�\0)\��^\�x{ �_�p\ZT·\r/\�ݱ=l�\�A\��Q{άk���\�\ry[V��\'�\nj@:xږY����*�p�o5\�^L5��\�KӅT\�-\�ә�uE�gI3D�	98\�>k\�w{Vx|irQb\�\�F��Z\�\��siV�҉?���G�\0W�վ�v���^\�\�0\�刃vk\�*jf:��ؚ�R�\�8�<��M���ƙ���\0�X\�.\�\��r��NA��_/\�Y\�y\�\�+��B���)��\�2\n/Ɋ�>-ō;�뱴R�XhM,/\"\'#���\�U!Z���\�>\0�5xgh�8A6\0q��\�j=�rϼx͐\�:zƈ�\�\�܇º�|�m�\�~\�\��\0n}2x�`��:\�*6>1a\��\0%���5\���$�\0�\�\�\���]�k\�v\�X8�c#j\�$T\�#�Xj}���\�k�\�mo\�}fh?���J�\�r�2\r��A\���>�0\�\��`7�uu-���\��z�xU.I�\�^\�\�i+\r�3�\�\Z\�\�W�90�3\�5\�,3}*5S\�¢\�`�\�y\�\�iD\�^\�\��䤖&�S��4\"\�Ӎ�U��\�.\�\�\�~\�LH�\�,�~�ӛ1���\�r˧O���vǇ���.*��zD\���6,5�5�\�6�b\�>����]�\�9 ��\�S~J\n�Ep��\0W�ui��\0qE����\�̉�\�G\�\�k\�\��o�\�^\�o\�1ȟ�rk���\�\�<*l5\'���\�k\�U!U\�y�5\�ZȋX���%\��U=\'�����w��F\�r�Zv�(A�5ut\�\�-]��≽�\�\���o�\�3P\�|y\�U�5��v:\�JB��\��\�I��\n%,<�\�궵Y&\�\�& \�\�`\�&&F�=>u ��UJyOş֍[���8#�\�<\�\'\�\�[���QJD\��#��ҍ{�\\��\�\�<fE[�`\��\0x\�Hw����M\��c��\�\�v�DG5\�\�\�\�\�\�Ӿ��\0+}��2�\�\�\�HW\��rt�+\�\����\�\�\���\���\�\�\�Y�^L\��\"+��\�\�_\���\�j\0\0\0,\0+�I?�`P�\�\�]��(6\�\�(\�r\�\���\�\�\�ç測$��\r\�~�,|k\�\�\�Iyx��<yS��mU\�\�	\�Z\�\�\�q3\�\0jj���cI\�ת��~R6\�\������|\�:\'��id��;�v�\�\�NC���-u��6;\�Ј�_�ᘡf͓��X]\0\�\�]\\�]\"�\nR`<dW,\�im�\��\�\�4�^\�*��\'�(��V_���\0Q_\�\��Sgv>\�3���ɋ!�Py��y~�\�\���M�<7\�\�\�~��\�ݗ���v#�(|��$��\�^O�\�\�\�\�l�ή��H���\�\Zܨg��m�i\"6`��fK���ꠑ��:\Z\��\�-\�\�\�FC�`0�k����\�-]\�m�g\��rQ,(\��5\�t�]\ZԘՈ��ՔN�I�hM<OV�M=^�YM#�:�O¨�\���e	\�\rs���\n��\�$N,�	�I�G���¥I�\�P��\0>y�E]/\�&�)�aF�C�J\�\�x�k˅\��N\�&��^\�\�\�\�FN�\':�?�?\�~6�{\��5\�\�\�7�\�v�\Z�\0�\0�BL8\�0(�(�\�}Y\�\�؛�H�\�\��\Z����\0\�z��\�4\�q��\�q,�){|��\��\�v\�\�irw2\�\"\�Z\�V�P\�\�\��t\�k]k;��\�~�q\�Z\�\�\�gG�\�\�O)�i\����<��a����\�uG\�6��m\�XԲ��\�+H\�j�\'�6��v\�\00\�{Χ\�\�:\�8��W�\0P\0P2+����\\R�!K�v~͜��g\ZS\�hH>2��\�\��i��\�m{\��\0v\�.\�����ያ	\"u��1�^wO��O1ӯ\�+��U\�\�\�\\p\n�0t�C+3pa\�Q˝�6�d{ws\'\�\�e�\\�����m\�o	\�;��Gkj4(��A^?K�萌taqcaPxEvQ1s�T��V\0\\p�a\�dp\�\�R��#z����\�.���-k\�bdR��\�E2\�Y!C\"�\�!Se\�ִ\�L��?Z-��swFNq8\�\�C���m�6�H�ƽn뽼\�\�\��\�\�j�6\�,H�Q��\�>�7\'\�^�>:\�1#\�\�{��Z$P\0P\0P\�:28�e:��\Z��\�{w|�n�\����y\�\�A�\0\n�~����3;��\�k͓˫(B	����M���?���)\�b�;!\�o\�W+=�WJ�����\n��X8\n�S�vO����Z�rt�C�c#�lQ\�J\�\�\�.>\�a\�\�\0\0\n\�AL\n\0�\n\0�\n\0�\n�}O�7�w�e\��\�z:W(_Ӕ\rBʣ�q�Az�-�\�ᦝ,p?�cr\�器�n\�\��\�$L�u�\�Gn�q�\�\�z�~�.<�y\�+�\�,��}5���a�&��\�j!eY��35�~��$�Y7\'�	ʻF�:Ԟ�\�\�\��\����\�\rs~�L\�C��+bc\'�0\�8,y\n\�\��]\�]:\��\�\�]����ɐ�\�\�,Ҟ\n?e\�\�\�_A���������\��\0�]Wc@@@@@`~�\�+f�t������\�ғC�5���.��l\\9�#u\'��׋���WT��zn��q$\�E�d��kZ�T\�LͲ\�	\�M<���\�\�q�\�cq\�\"\r�`�x\�n�\�ã]\n�:\����8������~�o��a\�\�Y@�a���B�\�]�LG��\��\�m]\�ܸy\0\�g\�Мc��H�\0\�M�3���\��uX�8N4\��̧�&���\��kNn�58��bŝ\'Qģo}�唏\��)P(�@@\�6\r�y�\"ܱ#\�X��u�o\�F\�\�Q��i��v��9�u\�M�\�4\�?�Τ�0O�׃�|��\�q\�\���\�\�-l@�I�1�\�O>0\�>4���\�:5C�G\�m\��;&ݶ\�g\�\r�5kI3ka\��5�\��m��W�h\�\��v.�:�;sf�c\�_C˔\�b<��]�jMj�@@@@�.ty7-�2U�b?Z�}��,��~Or\�GoF7�[b�|XT�\�z�\�n+�\�\�\�ٰ%ux�;�+F\�\�\�y۝,�K\�\�\�7>\�\�]���1\ZlK\�dc(\�\�T�\�5\�v�����}\Z\���L�\"E-\�:\�\�\�\�S�K\�\Zܛ_\�ѓ�\�v\�n)�m�\�<�\�\�sv?um˟��ö�X\�9�䝿�\�\��*��\"�ʷ���ʁ��ν>s\�a\�\�n\�5�\\\\�\�\n�ZG:�OWv\�4x}��\"\r$��u\"\��u��p�+)��PT�\��\0})��5;.x\\J�\ZU�4���э��\�Y\�\Z1?�������\�\�OU�@@@Os\�Q\�[��\�O>4�?Q\�k.\�\�ڵ\�\�ָ�Z\�\�E\"��6)\"`u�w�������2\�XP�Q�n9T\�����V���L~s������Kh\�\�88���\\�5�?Mp�{t�\�)��!@@@@%ӫ�\�`F�opss\�s�\�.�^ʬ�\�\�-\�!>ѯ驺UK\�̑m#���})�B\�\�r����<m\�M��W�9�.\�[Ǖ\�v�\�6��&Ⱥ���>\�\�y^4%�\�e������M\���]\�\�P\��2\���͵eɉ H\�\�H����?�Ն�\0&��ѧ۴�s�۵{�z�fH}ĺx?�\�4.M��s��[�\�\�.�>�n�t�h\�흱�q��L�YS�~��\�y\n\�\�\�]\'�כץ\�o�3�\�\�e�S#�$�kDֳ��D\�\�#0t��F8�j�\�,\�\�Jcc�Pi�&�8\0*�P\0P\0P\0P\0Pξ���0;�\Z\\��|`qQ\�@<G:\���i�\�\�\��s�&�8\���\�t�2ǕguRd�1�8�,�0��WX꽭q~�\n\�	�E};\�@@@@@@xʬ�X\\4�\�D\�\�b�@Gh�jO?�MѤ\�\�\�\���AϩA�\�E\�\ZۆK\�)�O$�Q\�G�6\�A		� 1z\�\�R/�����\�c�\�����\�\�\�a�\�a\�\�YA����5Ql���f)�@@@@@@x\�#F\�e\"\���R�\"8�v�\�\�\���WT�lI��\��5\�\�\��6�^��h��&\0�\�=\�\��c\�kU�l*��\�«]\n\�\�_�\���з�k���q�t�\0�\�2�V�\�(�(�(�(�(�(�(�(\0�+�\0�af`Ř\�\�mX�yVMa����T�\��}Z�q��FV���\"��S�(�(�(�(�./nt@_\�7o.�\�S�(9x\�q�\�� �(�%���\�\�Ӗخ5�\�p5\�\�<��\�U1\�~iHk��\�\��m�0��}�^\�\�@@@@@@@@@@@@@@\0xiE��\���\�jt��\0mmxP4�Bm\�\�˶\�\'\��X�\�&\�|\�\'\�t�/\�g\�z<\�!��e>\�\�Y\"�\��\0�]�OO��-ﮜxC�\�',3);
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
