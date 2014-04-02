-- MySQL dump 10.10
--
-- Host: localhost    Database: racehorse
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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
-- Table structure for table `ante`
--

DROP TABLE IF EXISTS `ante`;
CREATE TABLE `ante` (
  `AnteID` int(11) unsigned NOT NULL auto_increment,
  `MatchInfoID` int(11) unsigned NOT NULL default '0',
  `UserID` int(11) unsigned NOT NULL default '0' COMMENT '买方UserID',
  `HeadAmount` int(11) unsigned NOT NULL default '0' COMMENT '购买头的数量',
  `FootAmount` int(11) unsigned NOT NULL default '0' COMMENT '购买脚的数量',
  `RaceID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`AnteID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `ante`
--


/*!40000 ALTER TABLE `ante` DISABLE KEYS */;
LOCK TABLES `ante` WRITE;
INSERT INTO `ante` VALUES (1,1,1,34,32,3),(2,5,1,234,46,3),(3,6,1,100,3,3),(4,6,1,45,40,3),(5,7,1,234,34,3),(6,43,1,300,300,8),(7,43,1,300,300,8),(8,44,1,245,32,8),(9,45,1,45,45,8),(10,46,1,300,300,8),(11,47,1,45,32,8),(12,48,1,145,145,8),(13,49,1,300,300,8),(14,50,1,245,32,8),(15,51,1,545,145,8),(16,52,1,300,300,8),(17,53,1,245,32,8),(18,54,1,55,15,8),(19,67,1,302,302,8),(20,56,1,245,32,8),(21,78,1,55,15,8),(22,98,1,302,302,9),(23,76,1,245,32,8),(24,94,1,355,315,9),(25,101,1,332,332,9),(26,68,1,245,32,8),(27,154,1,305,215,9),(28,121,1,332,332,0),(29,132,1,245,32,9),(30,124,1,305,215,9),(31,144,1,432,235,9),(32,130,1,25,12,9),(33,114,1,375,215,0),(34,127,1,4,3,9),(35,127,1,4,3,9),(36,90,1,56,56,9),(37,90,1,56,56,9),(38,94,1,1,1,0),(39,100,1,1,1,0),(40,100,1,1,1,0),(41,90,1,20,12,9),(42,94,1,1,1,9),(43,100,1,1,1,9),(44,100,1,1,0,9);
UNLOCK TABLES;
/*!40000 ALTER TABLE `ante` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE TRIGGER `update_record` AFTER INSERT ON `ante` FOR EACH ROW
begin
insert into record (userid,antegambleid,raceid,type,raceinfoid,totalprice) values (new.userid,new.anteid,new.raceid,'BET',new.matchinfoid,(select price 
from raceinfo where raceinfoid=new.matchinfoid)*(new.HeadAmount+new.FootAmount));
end */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `ante_gamble_total`
--

DROP TABLE IF EXISTS `ante_gamble_total`;
/*!50001 DROP VIEW IF EXISTS `ante_gamble_total`*/;
/*!50001 DROP TABLE IF EXISTS `ante_gamble_total`*/;
/*!50001 CREATE TABLE `ante_gamble_total` (
  `type` varchar(5),
  `totalprice` decimal(10,5),
  `shuying` decimal(10,5),
  `total` bigint(20) unsigned,
  `raceid` int(11),
  `userid` int(11),
  `sn` tinyint(4) unsigned
) */;

--
-- Table structure for table `gamble`
--

DROP TABLE IF EXISTS `gamble`;
CREATE TABLE `gamble` (
  `GambleID` int(11) unsigned NOT NULL auto_increment,
  `MatchInfoID` int(11) unsigned NOT NULL default '0',
  `UserID` int(11) unsigned NOT NULL default '0',
  `HeadAmount` int(11) unsigned NOT NULL default '0',
  `FootAmount` int(11) unsigned NOT NULL default '0',
  `AnteID` int(11) unsigned NOT NULL default '0',
  `RaceID` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`GambleID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `gamble`
--


/*!40000 ALTER TABLE `gamble` DISABLE KEYS */;
LOCK TABLES `gamble` WRITE;
INSERT INTO `gamble` VALUES (1,42,1,234,234,0,8),(2,43,1,570,570,0,8),(3,56,1,45,45,0,8),(4,66,1,54,24,0,8),(5,47,1,70,70,0,8),(6,58,1,45,45,0,8),(7,67,1,54,24,0,8),(8,48,1,90,70,0,8),(9,59,1,60,45,0,8),(10,68,1,74,24,0,8),(11,49,1,190,170,0,8),(12,60,1,60,45,0,8),(13,69,1,74,24,0,8),(14,50,1,190,170,0,8),(15,61,1,500,345,0,8),(16,99,1,74,24,0,9),(17,80,1,190,170,0,8),(18,71,1,500,345,0,8),(19,100,1,74,24,0,9),(20,81,1,190,170,0,8),(21,72,1,500,345,0,8),(22,101,1,174,84,0,9),(23,82,1,390,270,0,8),(24,73,1,450,350,0,8),(25,102,1,174,94,0,9),(26,83,1,320,230,0,8),(27,74,1,450,350,0,8),(28,103,1,174,94,0,9),(29,123,1,320,230,0,0),(30,134,1,450,350,0,9),(31,104,1,174,94,0,9),(32,124,1,320,230,0,9),(33,135,1,450,350,0,9),(34,105,1,674,644,0,9),(35,125,1,32,12,0,9),(36,136,1,750,550,0,9),(37,113,1,674,644,0,0),(38,145,1,32,12,0,9),(39,146,1,750,550,0,9),(40,101,1,4,4,0,9),(41,101,1,4,4,0,9),(42,101,1,1,1,0,9),(43,124,1,1,1,0,0),(44,124,1,2,1,0,0),(45,126,1,1,1,0,0),(46,126,1,1,1,0,0),(47,127,1,1,1,0,0),(48,132,1,2,2,0,9),(49,129,3,7,6,0,9),(50,129,3,7,6,0,9);
UNLOCK TABLES;
/*!40000 ALTER TABLE `gamble` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE TRIGGER `update_record_gamble` AFTER INSERT ON `gamble` FOR EACH ROW
begin
insert into record (userid,antegambleid,raceid,type,raceinfoid,totalprice) values (new.userid,new.gambleid,new.raceid,'EAT',new.matchinfoid,(select price 
from raceinfo where raceinfoid=new.matchinfoid)*(new.HeadAmount+new.FootAmount));
end */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `handed_ante`
--

DROP TABLE IF EXISTS `handed_ante`;
/*!50001 DROP VIEW IF EXISTS `handed_ante`*/;
/*!50001 DROP TABLE IF EXISTS `handed_ante`*/;
/*!50001 CREATE TABLE `handed_ante` (
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `SN` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Up` decimal(10,2),
  `Down` decimal(10,2),
  `Price` decimal(10,5) unsigned
) */;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
CREATE TABLE `help` (
  `HelpID` int(11) NOT NULL auto_increment,
  `Title` varchar(150) NOT NULL,
  `Content` mediumtext NOT NULL,
  `IsIndex` enum('false','true') NOT NULL default 'false',
  `AddTime` datetime NOT NULL,
  PRIMARY KEY  (`HelpID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `help`
--


/*!40000 ALTER TABLE `help` DISABLE KEYS */;
LOCK TABLES `help` WRITE;
INSERT INTO `help` VALUES (2,'???????','???????','false','2006-07-28 23:07:36'),(3,'q','q','true','2006-08-13 09:47:43'),(4,'321','sdfdsd','false','2006-08-20 17:24:46');
UNLOCK TABLES;
/*!40000 ALTER TABLE `help` ENABLE KEYS */;

--
-- Table structure for table `my_ante_my`
--

DROP TABLE IF EXISTS `my_ante_my`;
/*!50001 DROP VIEW IF EXISTS `my_ante_my`*/;
/*!50001 DROP TABLE IF EXISTS `my_ante_my`*/;
/*!50001 CREATE TABLE `my_ante_my` (
  `Sn` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Price` decimal(10,5) unsigned,
  `Up` decimal(10,2),
  `Down` decimal(10,2),
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `UserID` int(11) unsigned
) */;

--
-- Table structure for table `my_ante_sg`
--

DROP TABLE IF EXISTS `my_ante_sg`;
/*!50001 DROP VIEW IF EXISTS `my_ante_sg`*/;
/*!50001 DROP TABLE IF EXISTS `my_ante_sg`*/;
/*!50001 CREATE TABLE `my_ante_sg` (
  `Sn` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Price` decimal(10,5) unsigned,
  `Up` decimal(10,2),
  `Down` decimal(10,2),
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `UserID` int(11) unsigned
) */;

--
-- Table structure for table `my_gamble_my`
--

DROP TABLE IF EXISTS `my_gamble_my`;
/*!50001 DROP VIEW IF EXISTS `my_gamble_my`*/;
/*!50001 DROP TABLE IF EXISTS `my_gamble_my`*/;
/*!50001 CREATE TABLE `my_gamble_my` (
  `sn` tinyint(3) unsigned,
  `horseno` varchar(3),
  `up` decimal(10,2),
  `down` decimal(10,2),
  `price` decimal(10,5) unsigned,
  `headamount` int(11) unsigned,
  `footamount` int(11) unsigned,
  `userid` int(11) unsigned
) */;

--
-- Table structure for table `my_gamble_sg`
--

DROP TABLE IF EXISTS `my_gamble_sg`;
/*!50001 DROP VIEW IF EXISTS `my_gamble_sg`*/;
/*!50001 DROP TABLE IF EXISTS `my_gamble_sg`*/;
/*!50001 CREATE TABLE `my_gamble_sg` (
  `sn` tinyint(3) unsigned,
  `horseno` varchar(3),
  `up` decimal(10,2),
  `down` decimal(10,2),
  `price` decimal(10,5) unsigned,
  `headamount` int(11) unsigned,
  `footamount` int(11) unsigned,
  `userid` int(11) unsigned
) */;

--
-- Table structure for table `myante_info`
--

DROP TABLE IF EXISTS `myante_info`;
/*!50001 DROP VIEW IF EXISTS `myante_info`*/;
/*!50001 DROP TABLE IF EXISTS `myante_info`*/;
/*!50001 CREATE TABLE `myante_info` (
  `Sn` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Price` decimal(10,5) unsigned,
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `UserID` int(11) unsigned,
  `Up` decimal(10,2),
  `Down` decimal(10,2)
) */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL auto_increment,
  `Title` varchar(150) NOT NULL,
  `Content` mediumtext NOT NULL,
  `IsIndex` enum('false','true') NOT NULL default 'false',
  `AddTime` datetime NOT NULL,
  PRIMARY KEY  (`NewsID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `news`
--


/*!40000 ALTER TABLE `news` DISABLE KEYS */;
LOCK TABLES `news` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `NoteID` int(11) NOT NULL auto_increment,
  `Title` varchar(150) NOT NULL,
  `Content` mediumtext NOT NULL,
  `IsIndex` enum('false','true') NOT NULL default 'false',
  `AddTime` datetime NOT NULL,
  PRIMARY KEY  (`NoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `note`
--


/*!40000 ALTER TABLE `note` DISABLE KEYS */;
LOCK TABLES `note` WRITE;
INSERT INTO `note` VALUES (2,'???????','???????','true','2006-07-28 22:40:45'),(3,'a','a','true','2006-08-13 09:47:28');
UNLOCK TABLES;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE `race` (
  `RaceID` int(11) unsigned NOT NULL auto_increment,
  `Place` varchar(20) NOT NULL COMMENT '比赛地点',
  `Rate` varchar(20) NOT NULL COMMENT '按哪个赔率',
  `Descript` mediumtext,
  `IsIndex` enum('true','false') NOT NULL default 'false' COMMENT '是否在首页显示',
  `RaceTime` datetime NOT NULL COMMENT '比赛日期',
  `cess` decimal(10,5) NOT NULL default '0.00000',
  PRIMARY KEY  (`RaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `race`
--


/*!40000 ALTER TABLE `race` DISABLE KEYS */;
LOCK TABLES `race` WRITE;
INSERT INTO `race` VALUES (2,'?扮?','绋??','????a','false','2006-08-25 00:00:00','0.00000'),(3,'?扮?','绋??','<P>娴??</P>','false','2006-08-26 01:01:01','0.00000'),(4,'香港 Happy Velly','SG',NULL,'false','2006-11-01 18:24:34','0.00000'),(5,'香港 Happy Velly','MY',NULL,'false','2006-11-01 18:24:34','0.00000'),(6,'新加坡 Happy Velly','MY',NULL,'false','2006-11-01 18:24:34','0.00000'),(7,'新加坡 Happy Velly','SG',NULL,'false','2006-11-01 18:24:34','0.00000'),(8,'马来西亚 Happy Velly','MY','hhuuhuhuh','true','2006-12-23 12:23:54','0.00000'),(9,'马来西亚 Happy Velly','SG',NULL,'true','2006-12-23 12:23:54','0.00000');
UNLOCK TABLES;
/*!40000 ALTER TABLE `race` ENABLE KEYS */;

--
-- Table structure for table `race_record`
--

DROP TABLE IF EXISTS `race_record`;
/*!50001 DROP VIEW IF EXISTS `race_record`*/;
/*!50001 DROP TABLE IF EXISTS `race_record`*/;
/*!50001 CREATE TABLE `race_record` (
  `AGID` int(11) unsigned,
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `UserID` int(11) unsigned,
  `RaceID` int(11),
  `RaceTime` datetime,
  `Place` varchar(20),
  `Rate` varchar(20)
) */;

--
-- Table structure for table `raceinfo`
--

DROP TABLE IF EXISTS `raceinfo`;
CREATE TABLE `raceinfo` (
  `RaceInfoID` int(11) unsigned NOT NULL auto_increment,
  `raceid` int(11) NOT NULL,
  `SN` tinyint(3) unsigned NOT NULL default '1' COMMENT '场次',
  `UP` decimal(10,2) NOT NULL default '0.00' COMMENT '赔率上限',
  `Down` decimal(10,2) NOT NULL default '0.00' COMMENT '赔率下限',
  `Cess` decimal(10,2) unsigned NOT NULL default '0.00' COMMENT '网站税率',
  `result` varchar(5) default NULL,
  `Price` decimal(10,5) unsigned NOT NULL default '0.00000',
  `HorseNo` varchar(3) NOT NULL default '0',
  `RaceTime` time NOT NULL default '00:00:00',
  PRIMARY KEY  (`RaceInfoID`),
  UNIQUE KEY `SN` (`SN`,`HorseNo`,`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `raceinfo`
--


/*!40000 ALTER TABLE `raceinfo` DISABLE KEYS */;
LOCK TABLES `raceinfo` WRITE;
INSERT INTO `raceinfo` VALUES (4,2,1,'0.00','0.00','0.00','0','0.00000','0','00:00:00'),(5,3,1,'0.00','0.00','0.00','0','0.00000','1','00:00:00'),(6,3,1,'0.00','0.00','0.00','0','0.00000','2','00:00:00'),(7,3,1,'0.00','0.00','0.00','0','0.00000','3','00:00:00'),(8,3,3,'0.00','0.00','0.00','0','0.00000','0','00:00:00'),(9,8,1,'55.00','15.00','0.06',NULL,'3.95000','1','00:00:00'),(10,8,1,'55.00','15.00','0.06',NULL,'3.95000','2','00:00:00'),(11,8,1,'55.00','15.00','0.06',NULL,'3.95000','3','00:00:00'),(12,8,1,'55.00','15.00','0.06',NULL,'3.90000','4','00:00:00'),(13,8,1,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(14,8,1,'55.00','15.00','0.06',NULL,'3.95000','6','00:00:00'),(15,8,1,'55.00','15.00','0.06',NULL,'3.95000','7','00:00:00'),(16,8,1,'55.00','15.00','0.06',NULL,'4.05000','8','00:00:00'),(17,8,1,'55.00','15.00','0.06',NULL,'4.05000','9','00:00:00'),(18,8,1,'55.00','15.00','0.06',NULL,'4.05000','10','00:00:00'),(19,8,1,'55.00','15.00','0.06',NULL,'4.05000','11','00:00:00'),(20,8,1,'55.00','15.00','0.06',NULL,'4.25000','12','00:00:00'),(21,8,1,'55.00','15.00','0.06',NULL,'4.25000','13','00:00:00'),(22,8,1,'55.00','15.00','0.06',NULL,'4.15000','14','00:00:00'),(23,8,2,'55.00','15.00','0.06',NULL,'3.95000','1','00:00:00'),(24,8,2,'55.00','15.00','0.06',NULL,'3.95000','2','00:00:00'),(25,8,2,'55.00','15.00','0.06',NULL,'3.95000','3','00:00:00'),(26,8,2,'55.00','15.00','0.06',NULL,'3.95000','4','00:00:00'),(27,8,2,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(28,8,2,'55.00','15.00','0.06',NULL,'3.95000','6','00:00:00'),(29,8,2,'55.00','15.00','0.06',NULL,'3.85000','7','00:00:00'),(30,8,2,'55.00','15.00','0.06',NULL,'4.05000','8','00:00:00'),(31,8,2,'55.00','15.00','0.06',NULL,'4.00000','9','00:00:00'),(32,8,2,'55.00','15.00','0.06',NULL,'4.15000','10','00:00:00'),(33,8,2,'55.00','15.00','0.06',NULL,'4.15000','11','00:00:00'),(34,8,2,'55.00','15.00','0.06',NULL,'4.15000','12','00:00:00'),(35,8,2,'55.00','15.00','0.06',NULL,'4.35000','13','00:00:00'),(36,8,2,'55.00','15.00','0.06',NULL,'4.35000','14','00:00:00'),(37,8,3,'55.00','15.00','0.06',NULL,'3.95000','1','00:00:00'),(38,8,3,'55.00','15.00','0.06',NULL,'3.95000','2','00:00:00'),(39,8,3,'55.00','15.00','0.06',NULL,'3.95000','3','00:00:00'),(40,8,3,'55.00','15.00','0.06',NULL,'3.95000','4','00:00:00'),(41,8,3,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(42,8,3,'55.00','15.00','0.06',NULL,'3.95000','6','00:00:00'),(43,8,3,'55.00','15.00','0.06',NULL,'3.90000','7','00:00:00'),(44,8,3,'55.00','15.00','0.06',NULL,'3.90000','8','00:00:00'),(45,8,3,'55.00','15.00','0.06','1','3.90000','9','00:00:00'),(46,8,3,'55.00','15.00','0.06',NULL,'4.10000','10','00:00:00'),(47,8,3,'55.00','15.00','0.06',NULL,'4.10000','11','00:00:00'),(48,8,3,'55.00','15.00','0.06',NULL,'4.10000','12','00:00:00'),(49,8,3,'55.00','15.00','0.06',NULL,'4.25000','13','00:00:00'),(50,8,3,'55.00','15.00','0.06',NULL,'4.05000','14','00:00:00'),(51,8,4,'55.00','15.00','0.06',NULL,'3.95000','1','00:00:00'),(52,8,4,'55.00','15.00','0.06',NULL,'3.95000','2','00:00:00'),(53,8,4,'55.00','15.00','0.06',NULL,'3.95000','3','00:00:00'),(54,8,4,'55.00','15.00','0.06',NULL,'4.75000','4','00:00:00'),(55,8,4,'55.00','15.00','0.06',NULL,'4.00000','5','00:00:00'),(56,8,4,'55.00','15.00','0.06',NULL,'4.00000','6','00:00:00'),(57,8,4,'55.00','15.00','0.06','SCR','4.00000','7','00:00:00'),(58,8,4,'55.00','15.00','0.06',NULL,'4.05000','8','00:00:00'),(59,8,4,'55.00','15.00','0.06',NULL,'4.25000','9','00:00:00'),(60,8,4,'55.00','15.00','0.06',NULL,'4.25000','10','00:00:00'),(61,8,4,'55.00','15.00','0.06',NULL,'4.25000','11','00:00:00'),(62,8,4,'55.00','15.00','0.06',NULL,'4.45000','12','00:00:00'),(63,8,4,'55.00','15.00','0.06',NULL,'3.85000','13','00:00:00'),(64,8,4,'55.00','15.00','0.06',NULL,'3.85000','14','00:00:00'),(65,8,5,'55.00','15.00','0.06',NULL,'4.95000','1','00:00:00'),(66,8,5,'55.00','15.00','0.06',NULL,'4.95000','2','00:00:00'),(67,8,5,'55.00','15.00','0.06',NULL,'4.55000','3','00:00:00'),(68,8,5,'55.00','15.00','0.06',NULL,'4.25000','4','00:00:00'),(69,8,5,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(70,8,5,'55.00','15.00','0.06',NULL,'3.95000','6','00:00:00'),(71,8,5,'55.00','15.00','0.06',NULL,'3.90000','7','00:00:00'),(72,8,5,'55.00','15.00','0.06',NULL,'3.90000','8','00:00:00'),(73,8,5,'55.00','15.00','0.06',NULL,'4.05000','9','00:00:00'),(74,8,5,'55.00','15.00','0.06',NULL,'4.05000','10','00:00:00'),(75,8,5,'55.00','15.00','0.06',NULL,'4.35000','11','00:00:00'),(76,8,5,'55.00','15.00','0.06',NULL,'4.35000','12','00:00:00'),(77,8,5,'55.00','15.00','0.06',NULL,'4.15000','13','00:00:00'),(78,8,5,'55.00','15.00','0.06','2','4.15000','14','00:00:00'),(79,8,6,'55.00','15.00','0.06',NULL,'4.95000','1','00:00:00'),(80,8,6,'55.00','15.00','0.06',NULL,'4.95000','2','00:00:00'),(81,8,6,'55.00','15.00','0.06',NULL,'4.95000','3','00:00:00'),(82,8,6,'55.00','15.00','0.06',NULL,'4.95000','4','00:00:00'),(83,8,6,'55.00','15.00','0.06',NULL,'4.95000','5','00:00:00'),(84,8,6,'55.00','15.00','0.06',NULL,'4.95000','6','00:00:00'),(85,8,6,'55.00','15.00','0.06',NULL,'4.95000','7','00:00:00'),(86,8,6,'55.00','15.00','0.06',NULL,'4.95000','8','00:00:00'),(87,8,6,'55.00','15.00','0.06','SCR','4.95000','9','00:00:00'),(88,8,6,'55.00','15.00','0.06',NULL,'4.95000','10','00:00:00'),(89,9,1,'55.00','15.00','0.06',NULL,'4.95000','1','00:00:00'),(90,9,1,'55.00','15.00','0.06',NULL,'4.95000','2','00:00:00'),(91,9,1,'55.00','15.00','0.06',NULL,'4.95000','3','00:00:00'),(92,9,1,'55.00','15.00','0.06',NULL,'4.35000','4','00:00:00'),(93,9,1,'55.00','15.00','0.06',NULL,'4.35000','5','00:00:00'),(94,9,1,'55.00','15.00','0.06',NULL,'4.35000','6','00:00:00'),(95,9,1,'55.00','15.00','0.06',NULL,'3.95000','7','00:00:00'),(96,9,1,'55.00','15.00','0.06','3','3.95000','8','00:00:00'),(97,9,1,'55.00','15.00','0.06',NULL,'4.00000','9','00:00:00'),(98,9,1,'55.00','15.00','0.06',NULL,'4.00000','10','00:00:00'),(99,9,2,'55.00','15.00','0.06',NULL,'4.95000','1','00:00:00'),(100,9,2,'55.00','15.00','0.06',NULL,'4.95000','2','00:00:00'),(101,9,2,'55.00','15.00','0.06',NULL,'4.95000','3','00:00:00'),(102,9,2,'55.00','15.00','0.06',NULL,'4.95000','4','00:00:00'),(103,9,2,'55.00','15.00','0.06',NULL,'4.95000','5','00:00:00'),(104,9,2,'55.00','15.00','0.06','2','4.95000','6','00:00:00'),(105,9,2,'55.00','15.00','0.06',NULL,'3.95000','7','00:00:00'),(106,9,2,'55.00','15.00','0.06',NULL,'4.25000','8','00:00:00'),(107,9,2,'55.00','15.00','0.06',NULL,'4.25000','9','00:00:00'),(108,9,2,'55.00','15.00','0.06',NULL,'4.25000','10','00:00:00'),(124,9,3,'55.00','15.00','0.06',NULL,'4.95000','1','00:00:00'),(125,9,3,'55.00','15.00','0.06',NULL,'4.95000','2','00:00:00'),(126,9,3,'55.00','15.00','0.06',NULL,'4.95000','3','00:00:00'),(127,9,3,'55.00','15.00','0.06',NULL,'3.95000','4','00:00:00'),(128,9,3,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(129,9,3,'55.00','15.00','0.06',NULL,'3.95000','6','00:00:00'),(130,9,3,'55.00','15.00','0.06',NULL,'4.05000','7','00:00:00'),(131,9,3,'55.00','15.00','0.06',NULL,'4.15000','8','00:00:00'),(132,9,3,'55.00','15.00','0.06',NULL,'4.15000','9','00:00:00'),(133,9,3,'55.00','15.00','0.06',NULL,'4.15000','10','00:00:00'),(134,9,4,'55.00','15.00','0.06',NULL,'4.55000','1','00:00:00'),(135,9,4,'55.00','15.00','0.06',NULL,'4.55000','2','00:00:00'),(136,9,4,'55.00','15.00','0.06',NULL,'4.55000','3','00:00:00'),(137,9,4,'55.00','15.00','0.06',NULL,'4.25000','4','00:00:00'),(138,9,4,'55.00','15.00','0.06',NULL,'4.25000','5','00:00:00'),(139,9,4,'55.00','15.00','0.06',NULL,'4.05000','6','00:00:00'),(140,9,4,'55.00','15.00','0.06',NULL,'4.05000','7','00:00:00'),(141,9,4,'55.00','15.00','0.06',NULL,'3.95000','8','00:00:00'),(142,9,4,'55.00','15.00','0.06','3','3.95000','9','00:00:00'),(143,9,4,'55.00','15.00','0.06',NULL,'3.95000','10','00:00:00'),(144,9,5,'55.00','15.00','0.06',NULL,'4.55000','1','00:00:00'),(145,9,5,'55.00','15.00','0.06',NULL,'4.25000','2','00:00:00'),(146,9,5,'55.00','15.00','0.06',NULL,'4.25000','3','00:00:00'),(147,9,5,'55.00','15.00','0.06',NULL,'4.25000','4','00:00:00'),(148,9,5,'55.00','15.00','0.06',NULL,'4.25000','5','00:00:00'),(149,9,5,'55.00','15.00','0.06',NULL,'4.25000','6','00:00:00'),(150,9,5,'55.00','15.00','0.06',NULL,'4.15000','7','00:00:00'),(151,9,5,'55.00','15.00','0.06',NULL,'4.15000','8','00:00:00'),(152,9,5,'55.00','15.00','0.06',NULL,'3.85000','9','00:00:00'),(153,9,5,'55.00','15.00','0.06',NULL,'3.85000','10','00:00:00'),(154,9,6,'55.00','15.00','0.06',NULL,'4.45000','1','00:00:00'),(155,9,6,'55.00','15.00','0.06',NULL,'4.45000','2','00:00:00'),(156,9,6,'55.00','15.00','0.06',NULL,'4.25000','3','00:00:00'),(157,9,6,'55.00','15.00','0.06',NULL,'4.25000','4','00:00:00'),(158,9,6,'55.00','15.00','0.06',NULL,'3.95000','5','00:00:00'),(159,9,6,'55.00','15.00','0.06',NULL,'4.65000','6','00:00:00'),(160,9,6,'55.00','15.00','0.06','2','4.65000','7','00:00:00'),(161,9,6,'55.00','15.00','0.06',NULL,'4.30000','8','00:00:00'),(162,9,6,'55.00','15.00','0.06',NULL,'4.10000','9','00:00:00'),(163,9,6,'55.00','15.00','0.06',NULL,'4.10000','10','00:00:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `raceinfo` ENABLE KEYS */;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `RecordID` int(11) NOT NULL auto_increment,
  `UserID` int(11) NOT NULL default '0',
  `AnteGambleID` int(11) NOT NULL default '0',
  `RaceID` int(11) NOT NULL default '0',
  `RaceInfoID` int(11) NOT NULL default '0',
  `Type` varchar(5) NOT NULL default 'BET',
  `TotalPrice` decimal(10,5) default '0.00000',
  `shuying` decimal(10,5) default '0.00000',
  PRIMARY KEY  (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `record`
--


/*!40000 ALTER TABLE `record` DISABLE KEYS */;
LOCK TABLES `record` WRITE;
INSERT INTO `record` VALUES (1,1,1,3,1,'BET','0.00000',NULL),(2,1,2,3,5,'BET','0.00000',NULL),(3,1,3,3,6,'BET','0.00000',NULL),(4,1,4,3,6,'BET','0.00000',NULL),(5,1,5,3,7,'BET','0.00000',NULL),(6,1,6,8,43,'BET','0.00000',NULL),(7,1,7,8,43,'BET','0.00000',NULL),(8,1,8,8,44,'BET','0.00000',NULL),(9,1,9,8,45,'BET','0.00000',NULL),(10,1,10,8,46,'BET','0.00000',NULL),(11,1,11,8,47,'BET','0.00000',NULL),(12,1,12,8,48,'BET','0.00000',NULL),(13,1,13,8,49,'BET','0.00000',NULL),(14,1,14,8,50,'BET','0.00000',NULL),(15,1,15,8,51,'BET','0.00000',NULL),(16,1,16,8,52,'BET','0.00000',NULL),(17,1,17,8,53,'BET','0.00000',NULL),(18,1,18,8,54,'BET','0.00000',NULL),(19,1,19,8,67,'BET','0.00000',NULL),(20,1,20,8,56,'BET','0.00000',NULL),(21,1,21,8,78,'BET','0.00000',NULL),(22,1,22,9,98,'BET','0.00000',NULL),(23,1,23,8,76,'BET','0.00000',NULL),(24,1,24,9,94,'BET','0.00000',NULL),(25,1,25,9,101,'BET','0.00000',NULL),(26,1,26,8,68,'BET','0.00000',NULL),(27,1,27,9,154,'BET','0.00000',NULL),(28,1,28,0,121,'BET','0.00000',NULL),(29,1,29,9,132,'BET','0.00000',NULL),(30,1,30,9,124,'BET','0.00000',NULL),(31,1,31,9,144,'BET','0.00000',NULL),(32,1,32,9,130,'BET','0.00000',NULL),(33,1,33,0,114,'BET','0.00000',NULL),(34,1,34,9,127,'BET','0.00000',NULL),(35,1,35,9,127,'BET','0.00000',NULL),(36,1,36,9,90,'BET','0.00000',NULL),(37,1,41,9,90,'BET','158.40000',NULL),(38,1,42,9,94,'BET','8.70000',NULL),(39,1,43,9,100,'BET','9.90000',NULL),(40,1,48,9,132,'EAT','16.60000',NULL),(41,1,44,9,100,'BET','4.95000',NULL),(42,3,49,9,129,'EAT','51.35000','0.00000'),(43,3,50,9,129,'EAT','51.35000','0.00000');
UNLOCK TABLES;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;

--
-- Table structure for table `record_ante_gamble_detials`
--

DROP TABLE IF EXISTS `record_ante_gamble_detials`;
/*!50001 DROP VIEW IF EXISTS `record_ante_gamble_detials`*/;
/*!50001 DROP TABLE IF EXISTS `record_ante_gamble_detials`*/;
/*!50001 CREATE TABLE `record_ante_gamble_detials` (
  `type` varchar(5),
  `totalprice` decimal(10,5),
  `shuying` decimal(10,5),
  `UserID` int(11),
  `RaceID` int(11),
  `SN` tinyint(4) unsigned,
  `HorseNo` varchar(3),
  `Result` varchar(5),
  `Price` decimal(10,5) unsigned,
  `Cess` decimal(10,2) unsigned,
  `Headamount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `AnteID` int(11) unsigned
) */;

--
-- Table structure for table `record_sum`
--

DROP TABLE IF EXISTS `record_sum`;
/*!50001 DROP VIEW IF EXISTS `record_sum`*/;
/*!50001 DROP TABLE IF EXISTS `record_sum`*/;
/*!50001 CREATE TABLE `record_sum` (
  `Totalshuying` decimal(32,5),
  `UserID` int(11),
  `RaceInfoID` int(11)
) */;

--
-- Table structure for table `reguser`
--

DROP TABLE IF EXISTS `reguser`;
CREATE TABLE `reguser` (
  `UserID` int(11) NOT NULL auto_increment,
  `UserNumber` varchar(30) NOT NULL COMMENT '鎴峰彛璐﹀彿',
  `UserName` varchar(20) NOT NULL,
  `UserPass` varchar(30) NOT NULL,
  `ShangXian` varchar(20) NOT NULL default 'v66' COMMENT '涓婄嚎',
  `QianBi` varchar(20) NOT NULL default '马币(RM)' COMMENT '搴旂敤鐨勯挶甯?',
  `XiaXianJiXian` decimal(10,2) NOT NULL default '0.00' COMMENT '涓嬬嚎璧屾敞鏋侀檺',
  `Tax1` decimal(10,2) NOT NULL default '3.00' COMMENT '涓嬫敞绋?',
  `Tax2` decimal(10,2) NOT NULL default '6.00' COMMENT '鍚冪エ绋?',
  `ShuYing` decimal(10,2) NOT NULL default '0.00' COMMENT '鎴戠殑杈撹耽',
  `LineProfit` decimal(10,2) NOT NULL default '0.00' COMMENT 'Line Profit/Loss',
  `LineLoss` decimal(10,2) NOT NULL default '0.00' COMMENT 'Line Loss Limit of',
  `HorseTicketLimit` int(11) NOT NULL default '100' COMMENT 'HorseTicketLimit',
  `IsLogin` enum('true','false') NOT NULL default 'false',
  `Account` decimal(10,5) NOT NULL default '0.00000',
  `PasswordTime` datetime NOT NULL COMMENT '瀵嗙爜鍒版湡鏃堕棿',
  `RegTime` datetime NOT NULL,
  PRIMARY KEY  (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `reguser`
--


/*!40000 ALTER TABLE `reguser` DISABLE KEYS */;
LOCK TABLES `reguser` WRITE;
INSERT INTO `reguser` VALUES (1,'d3h4gf5','test','test','v66','马币(RM)','2.00','3.00','6.00','0.00','0.00','0.00',100,'false','169.40000','2006-10-28 18:20:09','2006-11-23 18:20:09'),(2,'er345','zengqiang','zengqiang','v66','马币(RM)','2.00','3.00','6.00','0.00','0.00','0.00',100,'false','2000.00000','2006-10-28 18:20:09','2006-11-23 18:20:09'),(3,'d3h4rf6','liuyf','liuyf','v66','马币(RM)','2.00','3.00','6.00','0.00','0.00','0.00',100,'false','2447.30000','2006-10-28 18:20:09','2007-11-23 18:20:09'),(5,'d356frf6','pubu','pubu','v66','马币(RM)','2.00','3.00','6.00','0.00','0.00','0.00',100,'false','6750.00000','2006-10-28 18:20:09','2008-11-23 18:20:09'),(6,'','m333','123456','v66','马币(RM)','0.00','3.00','6.00','0.00','0.00','0.00',100,'false','0.00000','0000-00-00 00:00:00','2006-11-03 19:57:41');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reguser` ENABLE KEYS */;

--
-- Table structure for table `submited_ante_my`
--

DROP TABLE IF EXISTS `submited_ante_my`;
/*!50001 DROP VIEW IF EXISTS `submited_ante_my`*/;
/*!50001 DROP TABLE IF EXISTS `submited_ante_my`*/;
/*!50001 CREATE TABLE `submited_ante_my` (
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `SN` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Up` decimal(10,2),
  `Down` decimal(10,2),
  `Price` decimal(10,5) unsigned
) */;

--
-- Table structure for table `submited_ante_sg`
--

DROP TABLE IF EXISTS `submited_ante_sg`;
/*!50001 DROP VIEW IF EXISTS `submited_ante_sg`*/;
/*!50001 DROP TABLE IF EXISTS `submited_ante_sg`*/;
/*!50001 CREATE TABLE `submited_ante_sg` (
  `HeadAmount` int(11) unsigned,
  `FootAmount` int(11) unsigned,
  `SN` tinyint(3) unsigned,
  `HorseNo` varchar(3),
  `Up` decimal(10,2),
  `Down` decimal(10,2),
  `Price` decimal(10,5) unsigned
) */;

--
-- Table structure for table `submited_gamble_my`
--

DROP TABLE IF EXISTS `submited_gamble_my`;
/*!50001 DROP VIEW IF EXISTS `submited_gamble_my`*/;
/*!50001 DROP TABLE IF EXISTS `submited_gamble_my`*/;
/*!50001 CREATE TABLE `submited_gamble_my` (
  `sn` tinyint(3) unsigned,
  `horseno` varchar(3),
  `up` decimal(10,2),
  `down` decimal(10,2),
  `price` decimal(10,5) unsigned,
  `headamount` int(11) unsigned,
  `footamount` int(11) unsigned
) */;

--
-- Table structure for table `submited_gamble_sg`
--

DROP TABLE IF EXISTS `submited_gamble_sg`;
/*!50001 DROP VIEW IF EXISTS `submited_gamble_sg`*/;
/*!50001 DROP TABLE IF EXISTS `submited_gamble_sg`*/;
/*!50001 CREATE TABLE `submited_gamble_sg` (
  `sn` tinyint(3) unsigned,
  `horseno` varchar(3),
  `up` decimal(10,2),
  `down` decimal(10,2),
  `price` decimal(10,5) unsigned,
  `headamount` int(11) unsigned,
  `footamount` int(11) unsigned
) */;

--
-- Table structure for table `superuser`
--

DROP TABLE IF EXISTS `superuser`;
CREATE TABLE `superuser` (
  `SuperUserID` smallint(6) NOT NULL auto_increment,
  `AdminName` varchar(20) NOT NULL,
  `AdminPass` varchar(32) NOT NULL,
  `IsLock` enum('true','false') NOT NULL default 'false',
  `LoginNumber` mediumint(9) NOT NULL default '0' COMMENT '登录次数',
  `IsLogin` enum('false','true') NOT NULL default 'false',
  `RegTime` datetime NOT NULL,
  PRIMARY KEY  (`SuperUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `superuser`
--


/*!40000 ALTER TABLE `superuser` DISABLE KEYS */;
LOCK TABLES `superuser` WRITE;
INSERT INTO `superuser` VALUES (1,'Admin','Admin','false',82,'false','2006-07-30 15:32:53'),(2,'Chenjm','Chenjm','false',11,'false','2006-08-20 00:00:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `superuser` ENABLE KEYS */;

--
-- View structure for view `ante_gamble_total`
--

/*!50001 DROP TABLE IF EXISTS `ante_gamble_total`*/;
/*!50001 DROP VIEW IF EXISTS `ante_gamble_total`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ante_gamble_total` AS select `record`.`Type` AS `type`,`record`.`TotalPrice` AS `totalprice`,`record`.`shuying` AS `shuying`,(`ante`.`HeadAmount` + `ante`.`FootAmount`) AS `total`,`record`.`RaceID` AS `raceid`,`record`.`UserID` AS `userid`,`raceinfo`.`SN` AS `sn` from ((`record` join `ante`) join `raceinfo`) where ((`record`.`AnteGambleID` = `ante`.`AnteID`) and (`record`.`RaceInfoID` = `raceinfo`.`RaceInfoID`)) union select `record`.`Type` AS `type`,`record`.`TotalPrice` AS `totalprice`,`record`.`shuying` AS `shuying`,(`gamble`.`HeadAmount` + `gamble`.`FootAmount`) AS `total`,`record`.`RaceID` AS `raceid`,`record`.`UserID` AS `userid`,`raceinfo`.`SN` AS `sn` from ((`record` join `gamble`) join `raceinfo`) where ((`record`.`AnteGambleID` = `gamble`.`GambleID`) and (`record`.`RaceInfoID` = `raceinfo`.`RaceInfoID`))*/;

--
-- View structure for view `handed_ante`
--

/*!50001 DROP TABLE IF EXISTS `handed_ante`*/;
/*!50001 DROP VIEW IF EXISTS `handed_ante`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `handed_ante` AS select `ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`raceinfo`.`SN` AS `SN`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down`,`raceinfo`.`Price` AS `Price` from (`ante` join `raceinfo`) where ((`ante`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(RaceID)` from `race`)))*/;

--
-- View structure for view `my_ante_my`
--

/*!50001 DROP TABLE IF EXISTS `my_ante_my`*/;
/*!50001 DROP VIEW IF EXISTS `my_ante_my`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_ante_my` AS select `raceinfo`.`SN` AS `Sn`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`Price` AS `Price`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down`,`ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`ante`.`UserID` AS `UserID` from (`ante` join `raceinfo`) where ((`ante`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceID)` from `race` where (`race`.`Rate` = _gb2312'MY'))))*/;

--
-- View structure for view `my_ante_sg`
--

/*!50001 DROP TABLE IF EXISTS `my_ante_sg`*/;
/*!50001 DROP VIEW IF EXISTS `my_ante_sg`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_ante_sg` AS select `raceinfo`.`SN` AS `Sn`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`Price` AS `Price`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down`,`ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`ante`.`UserID` AS `UserID` from (`ante` join `raceinfo`) where ((`ante`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceID)` from `race` where (`race`.`Rate` = _gb2312'SG'))))*/;

--
-- View structure for view `my_gamble_my`
--

/*!50001 DROP TABLE IF EXISTS `my_gamble_my`*/;
/*!50001 DROP VIEW IF EXISTS `my_gamble_my`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_gamble_my` AS select `raceinfo`.`SN` AS `sn`,`raceinfo`.`HorseNo` AS `horseno`,`raceinfo`.`UP` AS `up`,`raceinfo`.`Down` AS `down`,`raceinfo`.`Price` AS `price`,`gamble`.`HeadAmount` AS `headamount`,`gamble`.`FootAmount` AS `footamount`,`gamble`.`UserID` AS `userid` from (`gamble` join `raceinfo`) where ((`gamble`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'my'))))*/;

--
-- View structure for view `my_gamble_sg`
--

/*!50001 DROP TABLE IF EXISTS `my_gamble_sg`*/;
/*!50001 DROP VIEW IF EXISTS `my_gamble_sg`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_gamble_sg` AS select `raceinfo`.`SN` AS `sn`,`raceinfo`.`HorseNo` AS `horseno`,`raceinfo`.`UP` AS `up`,`raceinfo`.`Down` AS `down`,`raceinfo`.`Price` AS `price`,`gamble`.`HeadAmount` AS `headamount`,`gamble`.`FootAmount` AS `footamount`,`gamble`.`UserID` AS `userid` from (`gamble` join `raceinfo`) where ((`gamble`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'sg'))))*/;

--
-- View structure for view `myante_info`
--

/*!50001 DROP TABLE IF EXISTS `myante_info`*/;
/*!50001 DROP VIEW IF EXISTS `myante_info`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myante_info` AS select `raceinfo`.`SN` AS `Sn`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`Price` AS `Price`,`ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`ante`.`UserID` AS `UserID`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down` from (`ante` join `raceinfo`) where ((`ante`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(RaceID)` from `race`)))*/;

--
-- View structure for view `race_record`
--

/*!50001 DROP TABLE IF EXISTS `race_record`*/;
/*!50001 DROP VIEW IF EXISTS `race_record`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `race_record` AS select `ante`.`AnteID` AS `AGID`,`ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`ante`.`UserID` AS `UserID`,`ante`.`RaceID` AS `RaceID`,`race`.`RaceTime` AS `RaceTime`,`race`.`Place` AS `Place`,`race`.`Rate` AS `Rate` from (`ante` join `race`) where (`ante`.`RaceID` = `race`.`RaceID`) union select `gamble`.`GambleID` AS `gambleID`,`gamble`.`HeadAmount` AS `HeadAmount`,`gamble`.`FootAmount` AS `FootAmount`,`gamble`.`UserID` AS `UserID`,`gamble`.`RaceID` AS `RaceID`,`race`.`RaceTime` AS `RaceTime`,`race`.`Place` AS `Place`,`race`.`Rate` AS `Rate` from (`gamble` join `race`) where (`gamble`.`RaceID` = `race`.`RaceID`)*/;

--
-- View structure for view `record_ante_gamble_detials`
--

/*!50001 DROP TABLE IF EXISTS `record_ante_gamble_detials`*/;
/*!50001 DROP VIEW IF EXISTS `record_ante_gamble_detials`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_ante_gamble_detials` AS select `record`.`Type` AS `type`,`record`.`TotalPrice` AS `totalprice`,`record`.`shuying` AS `shuying`,`record`.`UserID` AS `UserID`,`record`.`RaceID` AS `RaceID`,`raceinfo`.`SN` AS `SN`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`result` AS `Result`,`raceinfo`.`Price` AS `Price`,`raceinfo`.`Cess` AS `Cess`,`ante`.`HeadAmount` AS `Headamount`,`ante`.`FootAmount` AS `FootAmount`,`ante`.`AnteID` AS `AnteID` from ((`record` join `ante`) join `raceinfo`) where ((`record`.`AnteGambleID` = `ante`.`AnteID`) and (`record`.`RaceInfoID` = `raceinfo`.`RaceInfoID`)) union select `record`.`Type` AS `type`,`record`.`TotalPrice` AS `totalprice`,`record`.`shuying` AS `shuying`,`record`.`UserID` AS `UserID`,`record`.`RaceID` AS `RaceID`,`raceinfo`.`SN` AS `SN`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`result` AS `Result`,`raceinfo`.`Price` AS `Price`,`raceinfo`.`Cess` AS `Cess`,`gamble`.`HeadAmount` AS `Headamount`,`gamble`.`FootAmount` AS `FootAmount`,`gamble`.`GambleID` AS `GambleID` from ((`record` join `gamble`) join `raceinfo`) where ((`record`.`AnteGambleID` = `gamble`.`GambleID`) and (`record`.`RaceInfoID` = `raceinfo`.`RaceInfoID`))*/;

--
-- View structure for view `record_sum`
--

/*!50001 DROP TABLE IF EXISTS `record_sum`*/;
/*!50001 DROP VIEW IF EXISTS `record_sum`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_sum` AS select sum(`record`.`shuying`) AS `Totalshuying`,`record`.`UserID` AS `UserID`,`record`.`RaceInfoID` AS `RaceInfoID` from `record` group by `record`.`UserID`,`record`.`RaceInfoID`*/;

--
-- View structure for view `submited_ante_my`
--

/*!50001 DROP TABLE IF EXISTS `submited_ante_my`*/;
/*!50001 DROP VIEW IF EXISTS `submited_ante_my`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `submited_ante_my` AS select `ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`raceinfo`.`SN` AS `SN`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down`,`raceinfo`.`Price` AS `Price` from (`ante` join `raceinfo`) where ((`raceinfo`.`RaceInfoID` = `ante`.`MatchInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'MY'))))*/;

--
-- View structure for view `submited_ante_sg`
--

/*!50001 DROP TABLE IF EXISTS `submited_ante_sg`*/;
/*!50001 DROP VIEW IF EXISTS `submited_ante_sg`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `submited_ante_sg` AS select `ante`.`HeadAmount` AS `HeadAmount`,`ante`.`FootAmount` AS `FootAmount`,`raceinfo`.`SN` AS `SN`,`raceinfo`.`HorseNo` AS `HorseNo`,`raceinfo`.`UP` AS `Up`,`raceinfo`.`Down` AS `Down`,`raceinfo`.`Price` AS `Price` from (`ante` join `raceinfo`) where ((`raceinfo`.`RaceInfoID` = `ante`.`MatchInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'SG'))))*/;

--
-- View structure for view `submited_gamble_my`
--

/*!50001 DROP TABLE IF EXISTS `submited_gamble_my`*/;
/*!50001 DROP VIEW IF EXISTS `submited_gamble_my`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `submited_gamble_my` AS select `raceinfo`.`SN` AS `sn`,`raceinfo`.`HorseNo` AS `horseno`,`raceinfo`.`UP` AS `up`,`raceinfo`.`Down` AS `down`,`raceinfo`.`Price` AS `price`,`gamble`.`HeadAmount` AS `headamount`,`gamble`.`FootAmount` AS `footamount` from (`gamble` join `raceinfo`) where ((`gamble`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'my'))))*/;

--
-- View structure for view `submited_gamble_sg`
--

/*!50001 DROP TABLE IF EXISTS `submited_gamble_sg`*/;
/*!50001 DROP VIEW IF EXISTS `submited_gamble_sg`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `submited_gamble_sg` AS select `raceinfo`.`SN` AS `sn`,`raceinfo`.`HorseNo` AS `horseno`,`raceinfo`.`UP` AS `up`,`raceinfo`.`Down` AS `down`,`raceinfo`.`Price` AS `price`,`gamble`.`HeadAmount` AS `headamount`,`gamble`.`FootAmount` AS `footamount` from (`gamble` join `raceinfo`) where ((`gamble`.`MatchInfoID` = `raceinfo`.`RaceInfoID`) and (`raceinfo`.`raceid` = (select max(`race`.`RaceID`) AS `max(raceid)` from `race` where (`race`.`Rate` = _gb2312'sg'))))*/;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

