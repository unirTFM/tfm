-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: kettleTFM
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `ETLCONTROL`
--

DROP TABLE IF EXISTS `ETLCONTROL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ETLCONTROL` (
  `PROCESS` varchar(50) DEFAULT NULL,
  `PERIOD` varchar(5) DEFAULT NULL,
  `DATE_PROCESSED` datetime DEFAULT NULL,
  `LOAD_ID` int(11) DEFAULT NULL,
  `RESULT` varchar(2) DEFAULT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ETLCONTROL`
--

LOCK TABLES `ETLCONTROL` WRITE;
/*!40000 ALTER TABLE `ETLCONTROL` DISABLE KEYS */;
INSERT INTO `ETLCONTROL` VALUES ('EVENTO','HOUR','2015-08-17 14:00:00',1,'OK','2015-09-13 11:46:56'),('EVENTO','HOUR','2015-08-17 15:00:00',1,'OK','2015-09-13 12:08:25'),('EVENTO','DAY','2015-08-17 00:00:00',1,'OK','2015-09-13 12:51:39'),('EVENTO','WEEK','2015-08-10 00:00:00',1,'OK','2015-09-13 12:52:04'),('EVENTO','MONTH','2015-07-01 00:00:00',1,'OK','2015-09-13 12:52:21'),('EVENTO','HOUR','2015-08-17 16:00:00',1,'OK','2015-09-13 15:03:14'),('EVENTO','HOUR','2015-08-17 17:00:00',1,'OK','2015-09-13 15:20:28'),('EVENTO','HOUR','2015-08-17 18:00:00',1,'OK','2015-09-13 15:34:45'),('EVENTO','HOUR','2015-08-17 19:00:00',1,'KO','2015-09-13 15:34:59'),('EVENTO','DAY','2015-08-18 00:00:00',1,'KO','2015-09-13 15:42:01'),('EVENTO','DAY','2015-08-18 00:00:00',1,'OK','2015-09-13 18:27:27'),('EVENTO','DAY','2015-08-19 00:00:00',1,'OK','2015-09-13 18:38:21'),('EVENTO','DAY','2015-08-20 00:00:00',1,'KO','2015-09-13 18:43:44');
/*!40000 ALTER TABLE `ETLCONTROL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_CLUSTER`
--

DROP TABLE IF EXISTS `R_CLUSTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_CLUSTER` (
  `ID_CLUSTER` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `BASE_PORT` varchar(255) DEFAULT NULL,
  `SOCKETS_BUFFER_SIZE` varchar(255) DEFAULT NULL,
  `SOCKETS_FLUSH_INTERVAL` varchar(255) DEFAULT NULL,
  `SOCKETS_COMPRESSED` tinyint(1) DEFAULT NULL,
  `DYNAMIC_CLUSTER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_CLUSTER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_CLUSTER`
--

LOCK TABLES `R_CLUSTER` WRITE;
/*!40000 ALTER TABLE `R_CLUSTER` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_CLUSTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_CLUSTER_SLAVE`
--

DROP TABLE IF EXISTS `R_CLUSTER_SLAVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_CLUSTER_SLAVE` (
  `ID_CLUSTER_SLAVE` bigint(20) NOT NULL,
  `ID_CLUSTER` int(11) DEFAULT NULL,
  `ID_SLAVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CLUSTER_SLAVE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_CLUSTER_SLAVE`
--

LOCK TABLES `R_CLUSTER_SLAVE` WRITE;
/*!40000 ALTER TABLE `R_CLUSTER_SLAVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_CLUSTER_SLAVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_CONDITION`
--

DROP TABLE IF EXISTS `R_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_CONDITION` (
  `ID_CONDITION` bigint(20) NOT NULL,
  `ID_CONDITION_PARENT` int(11) DEFAULT NULL,
  `NEGATED` tinyint(1) DEFAULT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `LEFT_NAME` varchar(255) DEFAULT NULL,
  `CONDITION_FUNCTION` varchar(255) DEFAULT NULL,
  `RIGHT_NAME` varchar(255) DEFAULT NULL,
  `ID_VALUE_RIGHT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CONDITION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_CONDITION`
--

LOCK TABLES `R_CONDITION` WRITE;
/*!40000 ALTER TABLE `R_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DATABASE`
--

DROP TABLE IF EXISTS `R_DATABASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DATABASE` (
  `ID_DATABASE` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_DATABASE_TYPE` int(11) DEFAULT NULL,
  `ID_DATABASE_CONTYPE` int(11) DEFAULT NULL,
  `HOST_NAME` varchar(255) DEFAULT NULL,
  `DATABASE_NAME` mediumtext,
  `PORT` int(11) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SERVERNAME` varchar(255) DEFAULT NULL,
  `DATA_TBS` varchar(255) DEFAULT NULL,
  `INDEX_TBS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DATABASE`
--

LOCK TABLES `R_DATABASE` WRITE;
/*!40000 ALTER TABLE `R_DATABASE` DISABLE KEYS */;
INSERT INTO `R_DATABASE` VALUES (4,'Repository',31,1,'localhost','kettleTFM',3306,'kettle','Encrypted 2be98afc86aa7f2e4cb79a575ca86a3df',NULL,NULL,NULL);
/*!40000 ALTER TABLE `R_DATABASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DATABASE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_DATABASE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DATABASE_ATTRIBUTE` (
  `ID_DATABASE_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_DATABASE_ATTRIBUTE`),
  UNIQUE KEY `IDX_RDAT` (`ID_DATABASE`,`CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DATABASE_ATTRIBUTE`
--

LOCK TABLES `R_DATABASE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_DATABASE_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `R_DATABASE_ATTRIBUTE` VALUES (85,1,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(78,1,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),(79,1,'USE_POOLING','N'),(80,1,'IS_CLUSTERED','N'),(81,1,'SUPPORTS_BOOLEAN_DATA_TYPE','N'),(82,1,'STREAM_RESULTS','Y'),(83,1,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),(84,1,'PORT_NUMBER','3306'),(96,2,'PORT_NUMBER','3307'),(88,2,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),(89,2,'USE_POOLING','N'),(90,2,'PRESERVE_RESERVED_WORD_CASE','N'),(91,2,'SUPPORTS_TIMESTAMP_DATA_TYPE','Y'),(92,2,'IS_CLUSTERED','N'),(93,2,'SUPPORTS_BOOLEAN_DATA_TYPE','Y'),(94,2,'STREAM_RESULTS','Y'),(95,2,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),(100,3,'USE_POOLING','N'),(101,3,'PRESERVE_RESERVED_WORD_CASE','N'),(102,3,'SUPPORTS_TIMESTAMP_DATA_TYPE','N'),(103,3,'IS_CLUSTERED','N'),(104,3,'SUPPORTS_BOOLEAN_DATA_TYPE','N'),(105,3,'PORT_NUMBER','5439'),(106,3,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(107,3,'EXTRA_OPTION_REDSHIFT.tcpKeepAlive','true'),(152,4,'QUOTE_ALL_FIELDS','N'),(145,4,'IS_CLUSTERED','N'),(146,4,'SUPPORTS_BOOLEAN_DATA_TYPE','Y'),(147,4,'STREAM_RESULTS','Y'),(148,4,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),(141,4,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),(142,4,'USE_POOLING','N'),(143,4,'PRESERVE_RESERVED_WORD_CASE','N'),(144,4,'SUPPORTS_TIMESTAMP_DATA_TYPE','Y'),(128,5,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),(129,5,'PORT_NUMBER','3306'),(122,5,'EXTRA_OPTION_MYSQL.zeroDateTimeBehavior','convertToNull'),(123,5,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),(124,5,'USE_POOLING','N'),(125,5,'IS_CLUSTERED','N'),(126,5,'SUPPORTS_BOOLEAN_DATA_TYPE','N'),(127,5,'STREAM_RESULTS','Y'),(133,6,'STREAM_RESULTS','Y'),(134,6,'USE_POOLING','N'),(135,6,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(136,6,'QUOTE_ALL_FIELDS','N'),(137,6,'IS_CLUSTERED','N'),(138,6,'SUPPORTS_BOOLEAN_DATA_TYPE','N'),(151,4,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(150,4,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(86,1,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(87,1,'QUOTE_ALL_FIELDS','N'),(97,2,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(98,2,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(99,2,'QUOTE_ALL_FIELDS','N'),(108,3,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(109,3,'QUOTE_ALL_FIELDS','N'),(130,5,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(131,5,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),(132,5,'QUOTE_ALL_FIELDS','N'),(139,6,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),(140,6,'PORT_NUMBER','3306'),(149,4,'PORT_NUMBER','3306');
/*!40000 ALTER TABLE `R_DATABASE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DATABASE_CONTYPE`
--

DROP TABLE IF EXISTS `R_DATABASE_CONTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DATABASE_CONTYPE` (
  `ID_DATABASE_CONTYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE_CONTYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DATABASE_CONTYPE`
--

LOCK TABLES `R_DATABASE_CONTYPE` WRITE;
/*!40000 ALTER TABLE `R_DATABASE_CONTYPE` DISABLE KEYS */;
INSERT INTO `R_DATABASE_CONTYPE` VALUES (1,'Native','Native (JDBC)'),(2,'ODBC','ODBC'),(3,'OCI','OCI'),(4,'Plugin','Plugin specific access method'),(5,'JNDI','JNDI'),(6,',','Custom');
/*!40000 ALTER TABLE `R_DATABASE_CONTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DATABASE_TYPE`
--

DROP TABLE IF EXISTS `R_DATABASE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DATABASE_TYPE` (
  `ID_DATABASE_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DATABASE_TYPE`
--

LOCK TABLES `R_DATABASE_TYPE` WRITE;
/*!40000 ALTER TABLE `R_DATABASE_TYPE` DISABLE KEYS */;
INSERT INTO `R_DATABASE_TYPE` VALUES (1,'DERBY','Apache Derby'),(2,'AS/400','AS/400'),(3,'INTERBASE','Borland Interbase'),(4,'INFINIDB','Calpont InfiniDB'),(5,'DBASE','dBase III, IV or 5'),(6,'EXASOL4','Exasol 4'),(7,'EXTENDB','ExtenDB'),(8,'FIREBIRD','Firebird SQL'),(9,'GENERIC','Generic database'),(10,'GREENPLUM','Greenplum'),(11,'SQLBASE','Gupta SQL Base'),(12,'H2','H2'),(13,'HIVE','Hadoop Hive'),(14,'HIVE2','Hadoop Hive 2'),(15,'HYPERSONIC','Hypersonic'),(16,'DB2','IBM DB2'),(17,'IMPALA','Impala'),(18,'INFOBRIGHT','Infobright'),(19,'INFORMIX','Informix'),(20,'INGRES','Ingres'),(21,'VECTORWISE','Ingres VectorWise'),(22,'CACHE','Intersystems Cache'),(23,'KettleThin','Kettle thin JDBC driver'),(24,'KINGBASEES','KingbaseES'),(25,'LucidDB','LucidDB'),(26,'SAPDB','MaxDB (SAP DB)'),(27,'MONETDB','MonetDB'),(28,'MSACCESS','MS Access'),(29,'MSSQL','MS SQL Server'),(30,'MSSQLNATIVE','MS SQL Server (Native)'),(31,'MYSQL','MySQL'),(32,'MONDRIAN','Native Mondrian'),(33,'NEOVIEW','Neoview'),(34,'NETEZZA','Netezza'),(35,'OpenERPDatabaseMeta','OpenERP Server'),(36,'ORACLE','Oracle'),(37,'ORACLERDB','Oracle RDB'),(38,'PALO','Palo MOLAP Server'),(39,'POSTGRESQL','PostgreSQL'),(40,'REDSHIFT','Redshift'),(41,'REMEDY-AR-SYSTEM','Remedy Action Request System'),(42,'SAPR3','SAP ERP System'),(43,'SQLITE','SQLite'),(44,'SYBASE','Sybase'),(45,'SYBASEIQ','SybaseIQ'),(46,'TERADATA','Teradata'),(47,'UNIVERSE','UniVerse database'),(48,'VERTICA','Vertica'),(49,'VERTICA5','Vertica 5+');
/*!40000 ALTER TABLE `R_DATABASE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DEPENDENCY`
--

DROP TABLE IF EXISTS `R_DEPENDENCY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DEPENDENCY` (
  `ID_DEPENDENCY` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DEPENDENCY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DEPENDENCY`
--

LOCK TABLES `R_DEPENDENCY` WRITE;
/*!40000 ALTER TABLE `R_DEPENDENCY` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_DEPENDENCY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_DIRECTORY`
--

DROP TABLE IF EXISTS `R_DIRECTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_DIRECTORY` (
  `ID_DIRECTORY` bigint(20) NOT NULL,
  `ID_DIRECTORY_PARENT` int(11) DEFAULT NULL,
  `DIRECTORY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DIRECTORY`),
  UNIQUE KEY `IDX_RDIR` (`ID_DIRECTORY_PARENT`,`DIRECTORY_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_DIRECTORY`
--

LOCK TABLES `R_DIRECTORY` WRITE;
/*!40000 ALTER TABLE `R_DIRECTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_DIRECTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_ELEMENT`
--

DROP TABLE IF EXISTS `R_ELEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_ELEMENT` (
  `ID_ELEMENT` bigint(20) NOT NULL,
  `ID_ELEMENT_TYPE` int(11) DEFAULT NULL,
  `NAME` mediumtext,
  PRIMARY KEY (`ID_ELEMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_ELEMENT`
--

LOCK TABLES `R_ELEMENT` WRITE;
/*!40000 ALTER TABLE `R_ELEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_ELEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_ELEMENT_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_ELEMENT_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_ELEMENT_ATTRIBUTE` (
  `ID_ELEMENT_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_ELEMENT` int(11) DEFAULT NULL,
  `ID_ELEMENT_ATTRIBUTE_PARENT` int(11) DEFAULT NULL,
  `ATTR_KEY` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` mediumtext,
  PRIMARY KEY (`ID_ELEMENT_ATTRIBUTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_ELEMENT_ATTRIBUTE`
--

LOCK TABLES `R_ELEMENT_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_ELEMENT_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_ELEMENT_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_ELEMENT_TYPE`
--

DROP TABLE IF EXISTS `R_ELEMENT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_ELEMENT_TYPE` (
  `ID_ELEMENT_TYPE` bigint(20) NOT NULL,
  `ID_NAMESPACE` int(11) DEFAULT NULL,
  `NAME` mediumtext,
  `DESCRIPTION` mediumtext,
  PRIMARY KEY (`ID_ELEMENT_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_ELEMENT_TYPE`
--

LOCK TABLES `R_ELEMENT_TYPE` WRITE;
/*!40000 ALTER TABLE `R_ELEMENT_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_ELEMENT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOB`
--

DROP TABLE IF EXISTS `R_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOB` (
  `ID_JOB` bigint(20) NOT NULL,
  `ID_DIRECTORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `EXTENDED_DESCRIPTION` mediumtext,
  `JOB_VERSION` varchar(255) DEFAULT NULL,
  `JOB_STATUS` int(11) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  `CREATED_USER` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `MODIFIED_USER` varchar(255) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `USE_BATCH_ID` tinyint(1) DEFAULT NULL,
  `PASS_BATCH_ID` tinyint(1) DEFAULT NULL,
  `USE_LOGFIELD` tinyint(1) DEFAULT NULL,
  `SHARED_FILE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_JOB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOB`
--

LOCK TABLES `R_JOB` WRITE;
/*!40000 ALTER TABLE `R_JOB` DISABLE KEYS */;
INSERT INTO `R_JOB` VALUES (1,0,'JobTask',NULL,NULL,NULL,0,-1,NULL,'-','2015-08-11 10:33:00','admin','2015-09-13 09:54:15',1,0,1,NULL),(5,0,'Load_DAY',NULL,NULL,NULL,0,-1,NULL,'-','2015-09-12 12:39:06','admin','2015-09-13 13:36:02',1,0,1,NULL),(4,0,'Load_HOUR',NULL,NULL,NULL,0,-1,NULL,'-','2015-09-12 12:39:06','admin','2015-10-24 00:59:46',1,0,1,NULL),(6,0,'Load_WEEK',NULL,NULL,NULL,0,-1,NULL,'-','2015-09-12 12:39:06','admin','2015-09-13 13:36:17',1,0,1,NULL),(7,0,'Load_MONTH',NULL,NULL,NULL,0,-1,NULL,'-','2015-09-12 12:39:06','admin','2015-09-13 13:36:35',1,0,1,NULL);
/*!40000 ALTER TABLE `R_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOBENTRY`
--

DROP TABLE IF EXISTS `R_JOBENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOBENTRY` (
  `ID_JOBENTRY` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  PRIMARY KEY (`ID_JOBENTRY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOBENTRY`
--

LOCK TABLES `R_JOBENTRY` WRITE;
/*!40000 ALTER TABLE `R_JOBENTRY` DISABLE KEYS */;
INSERT INTO `R_JOBENTRY` VALUES (166,1,63,'Setvars',NULL),(165,1,46,'Load',NULL),(164,1,82,'Parada 5 seconds',NULL),(163,1,47,'Mail KO',NULL),(162,1,68,'Purgado de ETLCONTROL',NULL),(161,1,73,'FIN OK',NULL),(160,1,68,'Insertar KO',NULL),(159,1,68,'Insertar OK',NULL),(158,1,65,'Continuar?',NULL),(157,1,77,'Get variables',NULL),(156,1,67,'START',NULL),(199,6,64,'Hive',NULL),(196,5,64,'Datamart',NULL),(193,5,64,'Hive',NULL),(194,5,73,'Success',NULL),(155,1,77,'set_parameters',NULL),(211,4,73,'Success',NULL),(210,4,64,'Upload',NULL),(209,4,64,'Hive',NULL),(195,5,67,'START',NULL),(192,5,1,'Error',NULL),(198,6,67,'START',NULL),(205,7,1,'Error',NULL),(204,7,64,'Hive',NULL),(203,7,73,'Success',NULL),(208,4,64,'Parser',NULL),(207,4,1,'Error',NULL),(197,6,73,'Success',NULL),(202,7,67,'START',NULL),(212,4,67,'START',NULL),(200,6,1,'Error',NULL),(201,6,64,'Datamart',NULL),(206,7,64,'Datamart',NULL),(213,4,64,'Datamart',NULL);
/*!40000 ALTER TABLE `R_JOBENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOBENTRY_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_JOBENTRY_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOBENTRY_ATTRIBUTE` (
  `ID_JOBENTRY_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` double DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_JOBENTRY_ATTRIBUTE`),
  UNIQUE KEY `IDX_RJEA` (`ID_JOBENTRY_ATTRIBUTE`,`CODE`,`NR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOBENTRY_ATTRIBUTE`
--

LOCK TABLES `R_JOBENTRY_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_JOBENTRY_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `R_JOBENTRY_ATTRIBUTE` VALUES (2232,4,213,0,'logfile',0,NULL),(2231,4,213,0,'add_time',0,'N'),(1826,1,166,0,'file_variable_type',0,'JVM'),(1825,1,166,0,'filename',0,'/opt/scripts/etlvars.${SERVICE}.cfg'),(1824,1,166,0,'replacevars',0,'Y'),(1823,1,165,0,'pass_all_parameters',0,'Y'),(1822,1,165,0,'force_separate_logging',0,'N'),(1821,1,165,0,'create_parent_folder',0,'N'),(1820,1,165,0,'expand_remote_job',0,'N'),(1819,1,165,0,'follow_abort_remote',0,'N'),(1818,1,165,0,'wait_until_finished',0,'Y'),(1817,1,165,0,'pass_export',0,'N'),(1816,1,165,0,'slave_server_name',0,NULL),(1815,1,165,0,'loglevel',0,'Nothing'),(1814,1,165,0,'set_append_logfile',0,'N'),(1813,1,165,0,'logext',0,NULL),(1812,1,165,0,'logfile',0,NULL),(1811,1,165,0,'add_time',0,'N'),(1810,1,165,0,'add_date',0,'N'),(1809,1,165,0,'set_logfile',0,'N'),(1808,1,165,0,'exec_per_row',0,'N'),(1807,1,165,0,'params_from_previous',0,'N'),(1806,1,165,0,'arg_from_previous',0,'N'),(1805,1,165,0,'file_name',0,NULL),(1804,1,165,0,'dir_path',0,'/'),(1803,1,165,0,'name',0,'Load_${PERIOD}'),(1802,1,165,0,'job_object_id',0,NULL),(1801,1,165,0,'specification_method',0,'rep_name'),(1800,1,164,0,'scaletime',0,NULL),(1799,1,164,0,'maximumTimeout',0,'5'),(1798,1,163,0,'replyToAddresses',0,NULL),(1797,1,163,0,'zip_name',0,NULL),(1796,1,163,0,'zip_files',0,'N'),(1795,1,163,0,'file_type',0,'GENERAL'),(1794,1,163,0,'secureconnectiontype',0,'SSL'),(1793,1,163,0,'use_Priority',0,'N'),(1792,1,163,0,'use_HTML',0,'N'),(1791,1,163,0,'only_comment',0,'Y'),(1790,1,163,0,'auth_password',0,'Encrypted '),(1789,1,163,0,'auth_user',0,NULL),(1788,1,163,0,'use_secure_auth',0,'N'),(1787,1,163,0,'use_auth',0,'N'),(1786,1,163,0,'include_files',0,'N'),(1785,1,163,0,'sensitivity',0,'normal'),(1784,1,163,0,'importance',0,'normal'),(1783,1,163,0,'priority',0,'normal'),(1782,1,163,0,'encoding',0,'UTF-8'),(1781,1,163,0,'comment',0,'Error in service: ${SERVICE} with period ${PERDIOD}'),(1780,1,163,0,'contact_phone',0,NULL),(1779,1,163,0,'contact_person',0,NULL),(1778,1,163,0,'include_date',0,'N'),(1777,1,163,0,'subject',0,'[KO] - JobTask ${DATE_TO_PROCESS}'),(1776,1,163,0,'replytoname',0,'ETL Process'),(1775,1,163,0,'replyto',0,'${SENDER_ADDRESS}'),(1772,1,163,0,'destination',0,'${DEST_ADDRESS}'),(1773,1,163,0,'destinationCc',0,NULL),(1774,1,163,0,'destinationBCc',0,NULL),(1771,1,163,0,'port',0,'25'),(1770,1,163,0,'server',0,'localhost'),(1769,1,162,0,'sendOneStatement',0,'F'),(1768,1,162,0,'sqlfilename',0,NULL),(1767,1,162,0,'sqlfromfile',0,'F'),(1766,1,162,0,'useVariableSubstitution',0,'T'),(1765,1,162,0,'sql',0,'DELETE FROM ETLCONTROL WHERE PROCESS = \'${PROCESS}\' AND PERIOD = \'Hourly\' AND DATE_PROCESSED < DATE_SUB(CURDATE(), INTERVAL 15 DAY) AN RESULT = \'OK\';\r\nCOMMIT;'),(1759,1,160,0,'useVariableSubstitution',0,'T'),(1760,1,160,0,'sqlfromfile',0,'F'),(1761,1,160,0,'sqlfilename',0,NULL),(1762,1,160,0,'sendOneStatement',0,'F'),(1763,1,162,0,'id_database',4,NULL),(1755,1,159,0,'sendOneStatement',0,'F'),(1756,1,160,0,'id_database',4,NULL),(1757,1,160,0,'connection',4,NULL),(1758,1,160,0,'sql',0,'INSERT INTO ETLCONTROL (PROCESS,PERIOD, DATE_PROCESSED, LOAD_ID, RESULT)\nVALUES (\'${PROCESS}\',\'${PERIOD}\',\'${DATE_HOUR_PROCESSED}\', ${LOAD_ID},\'KO\');\r\nCOMMIT;'),(1764,1,162,0,'connection',4,NULL),(1754,1,159,0,'sqlfilename',0,NULL),(1753,1,159,0,'sqlfromfile',0,'F'),(1749,1,159,0,'id_database',4,NULL),(1750,1,159,0,'connection',4,NULL),(1751,1,159,0,'sql',0,'INSERT INTO ETLCONTROL (PROCESS, PERIOD, DATE_PROCESSED,LOAD_ID, RESULT)\nVALUES (\'${PROCESS}\',\'${PERIOD}\', \'${DATE_HOUR_PROCESSED}\',${LOAD_ID},\'OK\');\r\nCOMMIT;'),(1752,1,159,0,'useVariableSubstitution',0,'T'),(1748,1,158,0,'successwhenvarset',0,'N'),(1746,1,158,0,'successnumbercondition',0,'equal'),(1747,1,158,0,'successbooleancondition',0,'false'),(1740,1,158,0,'fieldtype',0,'string'),(1741,1,158,0,'mask',0,NULL),(1742,1,158,0,'comparevalue',0,'START'),(1743,1,158,0,'minvalue',0,NULL),(1744,1,158,0,'maxvalue',0,NULL),(1745,1,158,0,'successcondition',0,'equal'),(1739,1,158,0,'variablename',0,'${STOP_CONDITION}'),(1738,1,158,0,'fieldname',0,NULL),(1737,1,158,0,'valuetype',0,'variable'),(1736,1,157,0,'pass_all_parameters',0,'Y'),(1735,1,157,0,'logging_remote_work',0,'N'),(1734,1,157,0,'create_parent_folder',0,'N'),(1733,1,157,0,'follow_abort_remote',0,'N'),(1732,1,157,0,'wait_until_finished',0,'Y'),(1731,1,157,0,'set_append_logfile',0,'N'),(1730,1,157,0,'slave_server_name',0,NULL),(1729,1,157,0,'cluster',0,'N'),(1728,1,157,0,'loglevel',0,'Basic'),(1727,1,157,0,'logext',0,NULL),(1726,1,157,0,'logfile',0,NULL),(1725,1,157,0,'add_time',0,'N'),(1724,1,157,0,'add_date',0,'N'),(1723,1,157,0,'set_logfile',0,'N'),(1721,1,157,0,'clear_rows',0,'N'),(1722,1,157,0,'clear_files',0,'N'),(1720,1,157,0,'exec_per_row',0,'N'),(1719,1,157,0,'params_from_previous',0,'N'),(1718,1,157,0,'arg_from_previous',0,'N'),(1715,1,157,0,'name',0,'get_variables'),(1716,1,157,0,'dir_path',0,'/'),(1717,1,157,0,'file_name',0,NULL),(1714,1,157,0,'trans_object_id',0,NULL),(1713,1,157,0,'specification_method',0,'rep_name'),(1711,1,156,0,'weekDay',1,NULL),(1712,1,156,0,'dayOfMonth',1,NULL),(1710,1,156,0,'minutes',0,NULL),(1709,1,156,0,'hour',12,NULL),(1708,1,156,0,'intervalMinutes',60,NULL),(1707,1,156,0,'intervalSeconds',0,NULL),(1702,1,155,0,'pass_all_parameters',0,'Y'),(1705,1,156,0,'repeat',0,'N'),(1704,1,156,0,'dummy',0,'N'),(1706,1,156,0,'schedulerType',0,NULL),(1703,1,156,0,'start',0,'Y'),(1701,1,155,0,'logging_remote_work',0,'N'),(1700,1,155,0,'create_parent_folder',0,'N'),(1699,1,155,0,'follow_abort_remote',0,'N'),(1698,1,155,0,'wait_until_finished',0,'Y'),(1696,1,155,0,'slave_server_name',0,NULL),(1697,1,155,0,'set_append_logfile',0,'N'),(2149,7,204,2,'argument',0,'${DATE_TO_PROCESS}'),(2147,7,204,0,'argument',0,'${SERVICE}'),(2107,6,200,0,'message',0,NULL),(2106,6,199,2,'argument',0,'${DATE_TO_PROCESS}'),(2105,6,199,1,'argument',0,'${PERIOD}'),(2104,6,199,0,'argument',0,'${SERVICE}'),(2103,6,199,0,'script',0,NULL),(2102,6,199,0,'insertScript',0,'N'),(2101,6,199,0,'loglevel',0,'Basic'),(2100,6,199,0,'logext',0,NULL),(2099,6,199,0,'logfile',0,NULL),(2098,6,199,0,'add_time',0,'N'),(2097,6,199,0,'add_date',0,'N'),(2096,6,199,0,'set_append_logfile',0,'N'),(2095,6,199,0,'set_logfile',0,'N'),(2094,6,199,0,'exec_per_row',0,'N'),(2093,6,199,0,'arg_from_previous',0,'N'),(2090,6,198,0,'dayOfMonth',1,NULL),(2091,6,199,0,'file_name',0,'${SCRIPTS_DIR}/Hive.sh'),(2092,6,199,0,'work_directory',0,NULL),(2089,6,198,0,'weekDay',1,NULL),(2088,6,198,0,'minutes',0,NULL),(2085,6,198,0,'intervalSeconds',0,NULL),(2086,6,198,0,'intervalMinutes',60,NULL),(2087,6,198,0,'hour',12,NULL),(2065,5,196,0,'file_name',0,'${SCRIPTS_DIR}/Datamart.sh'),(2064,5,195,0,'dayOfMonth',1,NULL),(2060,5,195,0,'intervalMinutes',60,NULL),(2062,5,195,0,'minutes',0,NULL),(2063,5,195,0,'weekDay',1,NULL),(2061,5,195,0,'hour',12,NULL),(2059,5,195,0,'intervalSeconds',0,NULL),(2057,5,195,0,'repeat',0,'N'),(1695,1,155,0,'cluster',0,'N'),(1694,1,155,0,'loglevel',0,'Basic'),(1693,1,155,0,'logext',0,NULL),(1692,1,155,0,'logfile',0,NULL),(1691,1,155,0,'add_time',0,'N'),(1690,1,155,0,'add_date',0,'N'),(1689,1,155,0,'set_logfile',0,'N'),(1688,1,155,0,'clear_files',0,'N'),(1687,1,155,0,'clear_rows',0,'N'),(1686,1,155,0,'exec_per_row',0,'N'),(1684,1,155,0,'arg_from_previous',0,'N'),(1685,1,155,0,'params_from_previous',0,'N'),(1682,1,155,0,'dir_path',0,'/'),(1683,1,155,0,'file_name',0,NULL),(1680,1,155,0,'trans_object_id',0,NULL),(1681,1,155,0,'name',0,'set_parameters'),(2229,4,213,0,'set_append_logfile',0,'N'),(2228,4,213,0,'set_logfile',0,'N'),(2227,4,213,0,'exec_per_row',0,'N'),(2226,4,213,0,'arg_from_previous',0,'N'),(2225,4,213,0,'work_directory',0,NULL),(2224,4,213,0,'file_name',0,'${SCRIPTS_DIR}/Datamart.sh'),(2223,4,212,0,'dayOfMonth',1,NULL),(2222,4,212,0,'weekDay',1,NULL),(2220,4,212,0,'hour',12,NULL),(2221,4,212,0,'minutes',0,NULL),(2219,4,212,0,'intervalMinutes',60,NULL),(2215,4,212,0,'dummy',0,'N'),(2216,4,212,0,'repeat',0,'N'),(2217,4,212,0,'schedulerType',0,NULL),(2218,4,212,0,'intervalSeconds',0,NULL),(2214,4,212,0,'start',0,'Y'),(2213,4,210,1,'argument',0,'${DATE_TO_PROCESS}'),(2212,4,210,0,'argument',0,'${SERVICE}'),(2211,4,210,0,'script',0,NULL),(2210,4,210,0,'insertScript',0,'N'),(2208,4,210,0,'logext',0,NULL),(2209,4,210,0,'loglevel',0,'Basic'),(2207,4,210,0,'logfile',0,NULL),(2206,4,210,0,'add_time',0,'N'),(2205,4,210,0,'add_date',0,'N'),(2204,4,210,0,'set_append_logfile',0,'N'),(2203,4,210,0,'set_logfile',0,'N'),(2201,4,210,0,'arg_from_previous',0,'N'),(2202,4,210,0,'exec_per_row',0,'N'),(2200,4,210,0,'work_directory',0,NULL),(2199,4,210,0,'file_name',0,'${SCRIPTS_DIR}/Upload.sh'),(2198,4,209,2,'argument',0,'${DATE_TO_PROCESS}'),(2197,4,209,1,'argument',0,'${PERIOD}'),(2196,4,209,0,'argument',0,'${SERVICE}'),(2195,4,209,0,'script',0,NULL),(2194,4,209,0,'insertScript',0,'N'),(2193,4,209,0,'loglevel',0,'Basic'),(1679,1,155,0,'specification_method',0,'rep_name'),(2058,5,195,0,'schedulerType',0,NULL),(2056,5,195,0,'dummy',0,'N'),(2054,5,193,2,'argument',0,'${DATE_TO_PROCESS}'),(2055,5,195,0,'start',0,'Y'),(2053,5,193,1,'argument',0,'${PERIOD}'),(2052,5,193,0,'argument',0,'${SERVICE}'),(2051,5,193,0,'script',0,NULL),(2049,5,193,0,'loglevel',0,'Basic'),(2050,5,193,0,'insertScript',0,'N'),(2048,5,193,0,'logext',0,NULL),(2047,5,193,0,'logfile',0,NULL),(2046,5,193,0,'add_time',0,'N'),(2045,5,193,0,'add_date',0,'N'),(2044,5,193,0,'set_append_logfile',0,'N'),(2043,5,193,0,'set_logfile',0,'N'),(2042,5,193,0,'exec_per_row',0,'N'),(2041,5,193,0,'arg_from_previous',0,'N'),(2040,5,193,0,'work_directory',0,NULL),(2039,5,193,0,'file_name',0,'${SCRIPTS_DIR}/Hive.sh'),(2038,5,192,0,'message',0,NULL),(2084,6,198,0,'schedulerType',0,NULL),(2083,6,198,0,'repeat',0,'N'),(2082,6,198,0,'dummy',0,'N'),(2081,6,198,0,'start',0,'Y'),(2148,7,204,1,'argument',0,'${PERIOD}'),(2146,7,204,0,'script',0,NULL),(2145,7,204,0,'insertScript',0,'N'),(2144,7,204,0,'loglevel',0,'Basic'),(2143,7,204,0,'logext',0,NULL),(2142,7,204,0,'logfile',0,NULL),(2141,7,204,0,'add_time',0,'N'),(2139,7,204,0,'set_append_logfile',0,'N'),(2140,7,204,0,'add_date',0,'N'),(2138,7,204,0,'set_logfile',0,'N'),(2137,7,204,0,'exec_per_row',0,'N'),(2136,7,204,0,'arg_from_previous',0,'N'),(2135,7,204,0,'work_directory',0,NULL),(2134,7,204,0,'file_name',0,'${SCRIPTS_DIR}/Hive.sh'),(2133,7,202,0,'dayOfMonth',1,NULL),(2132,7,202,0,'weekDay',1,NULL),(2131,7,202,0,'minutes',0,NULL),(2130,7,202,0,'hour',12,NULL),(2129,7,202,0,'intervalMinutes',60,NULL),(2128,7,202,0,'intervalSeconds',0,NULL),(2127,7,202,0,'schedulerType',0,NULL),(2230,4,213,0,'add_date',0,'N'),(2189,4,209,0,'add_date',0,'N'),(2190,4,209,0,'add_time',0,'N'),(2191,4,209,0,'logfile',0,NULL),(2192,4,209,0,'logext',0,NULL),(2188,4,209,0,'set_append_logfile',0,'N'),(2187,4,209,0,'set_logfile',0,'N'),(2186,4,209,0,'exec_per_row',0,'N'),(2185,4,209,0,'arg_from_previous',0,'N'),(2184,4,209,0,'work_directory',0,NULL),(2183,4,209,0,'file_name',0,'${SCRIPTS_DIR}/Hive.sh'),(2182,4,208,1,'argument',0,'${DATE_TO_PROCESS}'),(2181,4,208,0,'argument',0,'${SERVICE}'),(2180,4,208,0,'script',0,NULL),(2179,4,208,0,'insertScript',0,'N'),(2126,7,202,0,'repeat',0,'N'),(2125,7,202,0,'dummy',0,'N'),(2124,7,202,0,'start',0,'Y'),(2178,4,208,0,'loglevel',0,'Basic'),(2177,4,208,0,'logext',0,NULL),(2176,4,208,0,'logfile',0,NULL),(2175,4,208,0,'add_time',0,'N'),(2174,4,208,0,'add_date',0,'N'),(2173,4,208,0,'set_append_logfile',0,'N'),(2172,4,208,0,'set_logfile',0,'N'),(2171,4,208,0,'exec_per_row',0,'N'),(2170,4,208,0,'arg_from_previous',0,'N'),(2169,4,208,0,'work_directory',0,NULL),(2168,4,208,0,'file_name',0,'${SCRIPTS_DIR}/Parser.py'),(2167,4,207,0,'message',0,NULL),(2066,5,196,0,'work_directory',0,NULL),(2067,5,196,0,'arg_from_previous',0,'N'),(2068,5,196,0,'exec_per_row',0,'N'),(2069,5,196,0,'set_logfile',0,'N'),(2070,5,196,0,'set_append_logfile',0,'N'),(2071,5,196,0,'add_date',0,'N'),(2072,5,196,0,'add_time',0,'N'),(2073,5,196,0,'logfile',0,NULL),(2074,5,196,0,'logext',0,NULL),(2075,5,196,0,'loglevel',0,'Basic'),(2076,5,196,0,'insertScript',0,'N'),(2077,5,196,0,'script',0,NULL),(2078,5,196,0,'argument',0,'${SERVICE}'),(2079,5,196,1,'argument',0,'${PERIOD}'),(2080,5,196,2,'argument',0,'${DATE_TO_PROCESS}'),(2108,6,201,0,'file_name',0,'${SCRIPTS_DIR}/Datamart.sh'),(2109,6,201,0,'work_directory',0,NULL),(2110,6,201,0,'arg_from_previous',0,'N'),(2111,6,201,0,'exec_per_row',0,'N'),(2112,6,201,0,'set_logfile',0,'N'),(2113,6,201,0,'set_append_logfile',0,'N'),(2114,6,201,0,'add_date',0,'N'),(2115,6,201,0,'add_time',0,'N'),(2116,6,201,0,'logfile',0,NULL),(2117,6,201,0,'logext',0,NULL),(2118,6,201,0,'loglevel',0,'Basic'),(2119,6,201,0,'insertScript',0,'N'),(2120,6,201,0,'script',0,NULL),(2121,6,201,0,'argument',0,'${SERVICE}'),(2122,6,201,1,'argument',0,'${PERIOD}'),(2123,6,201,2,'argument',0,'${DATE_TO_PROCESS}'),(2150,7,205,0,'message',0,NULL),(2151,7,206,0,'file_name',0,'${SCRIPTS_DIR}/Datamart.sh'),(2152,7,206,0,'work_directory',0,NULL),(2153,7,206,0,'arg_from_previous',0,'N'),(2154,7,206,0,'exec_per_row',0,'N'),(2155,7,206,0,'set_logfile',0,'N'),(2156,7,206,0,'set_append_logfile',0,'N'),(2157,7,206,0,'add_date',0,'N'),(2158,7,206,0,'add_time',0,'N'),(2159,7,206,0,'logfile',0,NULL),(2160,7,206,0,'logext',0,NULL),(2161,7,206,0,'loglevel',0,'Basic'),(2162,7,206,0,'insertScript',0,'N'),(2163,7,206,0,'script',0,NULL),(2164,7,206,0,'argument',0,'${SERVICE}'),(2165,7,206,1,'argument',0,'${PERIOD}'),(2166,7,206,2,'argument',0,'${DATE_TO_PROCESS}'),(2233,4,213,0,'logext',0,NULL),(2234,4,213,0,'loglevel',0,'Basic'),(2235,4,213,0,'insertScript',0,'N'),(2236,4,213,0,'script',0,NULL),(2237,4,213,0,'argument',0,'${SERVICE}'),(2238,4,213,1,'argument',0,'${PERIOD}'),(2239,4,213,2,'argument',0,'${DATE_TO_PROCESS}');
/*!40000 ALTER TABLE `R_JOBENTRY_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOBENTRY_COPY`
--

DROP TABLE IF EXISTS `R_JOBENTRY_COPY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOBENTRY_COPY` (
  `ID_JOBENTRY_COPY` bigint(20) NOT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_DRAW` tinyint(1) DEFAULT NULL,
  `PARALLEL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_JOBENTRY_COPY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOBENTRY_COPY`
--

LOCK TABLES `R_JOBENTRY_COPY` WRITE;
/*!40000 ALTER TABLE `R_JOBENTRY_COPY` DISABLE KEYS */;
INSERT INTO `R_JOBENTRY_COPY` VALUES (166,166,1,63,0,143,133,1,0),(165,165,1,46,0,270,370,1,0),(164,164,1,82,0,415,137,1,0),(163,163,1,47,0,108,479,1,0),(162,162,1,68,0,429,246,1,0),(161,161,1,73,0,578,137,1,0),(160,160,1,68,0,268,484,1,0),(159,159,1,68,0,582,374,1,0),(158,158,1,65,0,268,248,1,0),(157,157,1,77,0,271,135,1,0),(156,156,1,67,0,44,32,1,0),(155,155,1,77,0,145,34,1,0),(200,200,6,1,0,294,229,1,0),(199,199,6,64,0,210,109,1,0),(195,195,5,67,0,46,106,1,0),(194,194,5,73,0,549,112,1,0),(213,213,4,64,0,550,111,1,0),(212,212,4,67,0,46,106,1,0),(211,211,4,73,0,681,108,1,0),(210,210,4,64,0,301,109,1,0),(209,209,4,64,0,424,111,1,0),(208,208,4,64,0,173,110,1,0),(193,193,5,64,0,228,110,1,0),(192,192,5,1,0,294,229,1,0),(198,198,6,67,0,46,106,1,0),(197,197,6,73,0,549,112,1,0),(205,205,7,1,0,294,229,1,0),(204,204,7,64,0,216,107,1,0),(203,203,7,73,0,549,112,1,0),(202,202,7,67,0,46,106,1,0),(207,207,4,1,0,294,229,1,0),(196,196,5,64,0,396,114,1,0),(201,201,6,64,0,403,112,1,0),(206,206,7,64,0,408,111,1,0);
/*!40000 ALTER TABLE `R_JOBENTRY_COPY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOBENTRY_DATABASE`
--

DROP TABLE IF EXISTS `R_JOBENTRY_DATABASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOBENTRY_DATABASE` (
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  KEY `IDX_RJD1` (`ID_JOB`),
  KEY `IDX_RJD2` (`ID_DATABASE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOBENTRY_DATABASE`
--

LOCK TABLES `R_JOBENTRY_DATABASE` WRITE;
/*!40000 ALTER TABLE `R_JOBENTRY_DATABASE` DISABLE KEYS */;
INSERT INTO `R_JOBENTRY_DATABASE` VALUES (1,162,4),(1,160,4),(1,159,4);
/*!40000 ALTER TABLE `R_JOBENTRY_DATABASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOBENTRY_TYPE`
--

DROP TABLE IF EXISTS `R_JOBENTRY_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOBENTRY_TYPE` (
  `ID_JOBENTRY_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_JOBENTRY_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOBENTRY_TYPE`
--

LOCK TABLES `R_JOBENTRY_TYPE` WRITE;
/*!40000 ALTER TABLE `R_JOBENTRY_TYPE` DISABLE KEYS */;
INSERT INTO `R_JOBENTRY_TYPE` VALUES (1,'ABORT','Abort job'),(2,'ADD_RESULT_FILENAMES','Add filenames to result'),(3,'EMRJobExecutorPlugin','Amazon EMR Job Executor'),(4,'HiveJobExecutorPlugin','Amazon Hive Job Executor'),(5,'MYSQL_BULK_FILE','BulkLoad from Mysql into file'),(6,'MSSQL_BULK_LOAD','BulkLoad into MSSQL'),(7,'MYSQL_BULK_LOAD','BulkLoad into Mysql'),(8,'CHECK_DB_CONNECTIONS','Check Db connections'),(9,'CHECK_FILES_LOCKED','Check files locked'),(10,'FOLDER_IS_EMPTY','Check if a folder is empty'),(11,'CONNECTED_TO_REPOSITORY','Check if connected to repository'),(12,'XML_WELL_FORMED','Check if XML file is well formed'),(13,'WEBSERVICE_AVAILABLE','Check webservice availability'),(14,'FILES_EXIST','Checks if files exist'),(15,'COLUMNS_EXIST','Columns exist in a table'),(16,'FOLDERS_COMPARE','Compare folders'),(17,'DOS_UNIX_CONVERTER','Convert file between Windows and Unix'),(18,'COPY_FILES','Copy Files'),(19,'CREATE_FOLDER','Create a folder'),(20,'CREATE_FILE','Create file'),(21,'PGP_DECRYPT_FILES','Decrypt files with PGP'),(22,'DELETE_FILE','Delete file'),(23,'DELETE_RESULT_FILENAMES','Delete filenames from result'),(24,'DELETE_FILES','Delete files'),(25,'DELETE_FOLDERS','Delete folders'),(26,'MSGBOX_INFO','Display Msgbox Info'),(27,'DTD_VALIDATOR','DTD Validator'),(28,'PGP_ENCRYPT_FILES','Encrypt files with PGP'),(29,'EVAL_FILES_METRICS','Evaluate files metrics'),(30,'EVAL_TABLE_CONTENT','Evaluate rows number in a table'),(31,'DummyJob','Example plugin'),(32,'EXPORT_REPOSITORY','Export repository to XML file'),(33,'FILE_COMPARE','File Compare'),(34,'FILE_EXISTS','File Exists'),(35,'FTP_DELETE','FTP Delete'),(36,'FTP','Get a file with FTP'),(37,'FTPS_GET','Get a file with FTPS'),(38,'SFTP','Get a file with SFTP'),(39,'GET_POP','Get mails (POP3/IMAP)'),(40,'HadoopCopyFilesPlugin','Hadoop Copy Files'),(41,'HadoopJobExecutorPlugin','Hadoop Job Executor '),(42,'HL7MLLPAcknowledge','HL7 MLLP Acknowledge'),(43,'HL7MLLPInput','HL7 MLLP Input'),(44,'HTTP','HTTP'),(45,'EVAL','JavaScript'),(46,'JOB','Job'),(47,'MAIL','Mail'),(48,'MAIL_VALIDATOR','Mail validator'),(49,'MOVE_FILES','Move Files'),(50,'MS_ACCESS_BULK_LOAD','MS Access Bulk Load'),(51,'OozieJobExecutor','Oozie Job Executor'),(52,'PALO_CUBE_CREATE','Palo Cube Create'),(53,'PALO_CUBE_DELETE','Palo Cube Delete'),(54,'HadoopTransJobExecutorPlugin','Pentaho MapReduce'),(55,'HadoopPigScriptExecutorPlugin','Pig Script Executor'),(56,'PING','Ping a host'),(57,'COPY_MOVE_RESULT_FILENAMES','Process result filenames'),(58,'FTP_PUT','Put a file with FTP'),(59,'SFTPPUT','Put a file with SFTP'),(60,'SYSLOG','Send information using Syslog'),(61,'SEND_NAGIOS_PASSIVE_CHECK','Send Nagios passive check'),(62,'SNMP_TRAP','Send SNMP trap'),(63,'SET_VARIABLES','Set variables'),(64,'SHELL','Shell'),(65,'SIMPLE_EVAL','Simple evaluation'),(66,'SparkSubmit','Spark Submit'),(67,'SPECIAL','Special entries'),(68,'SQL','SQL'),(69,'SqoopExport','Sqoop Export'),(70,'SqoopImport','Sqoop Import'),(71,'SSH2_GET','SSH2 Get'),(72,'SSH2_PUT','SSH2 Put'),(73,'SUCCESS','Success'),(74,'TABLE_EXISTS','Table exists'),(75,'TALEND_JOB_EXEC','Talend Job Execution'),(76,'TELNET','Telnet a host'),(77,'TRANS','Transformation'),(78,'TRUNCATE_TABLES','Truncate tables'),(79,'UNZIP','Unzip file'),(80,'FTPS_PUT','Upload files to FTPS'),(81,'PGP_VERIFY_FILES','Verify file signature with PGP'),(82,'DELAY','Wait for'),(83,'WAIT_FOR_FILE','Wait for file'),(84,'WAIT_FOR_SQL','Wait for SQL'),(85,'WRITE_TO_FILE','Write to file'),(86,'WRITE_TO_LOG','Write To Log'),(87,'XSD_VALIDATOR','XSD Validator'),(88,'XSLT','XSL Transformation'),(89,'ZIP_FILE','Zip file');
/*!40000 ALTER TABLE `R_JOBENTRY_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOB_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_JOB_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOB_ATTRIBUTE` (
  `ID_JOB_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_JOB_ATTRIBUTE`),
  UNIQUE KEY `IDX_JATT` (`ID_JOB`,`CODE`,`NR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOB_ATTRIBUTE`
--

LOCK TABLES `R_JOB_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_JOB_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `R_JOB_ATTRIBUTE` VALUES (5116,4,0,'LOG_SIZE_LIMIT',0,NULL),(5117,4,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),(5118,4,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),(5119,4,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),(5276,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(3794,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(3795,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(5251,4,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(5252,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(5253,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(5254,4,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(5255,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(3764,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(3765,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(3766,1,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(3767,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(3768,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(3769,1,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(3770,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(3771,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(3772,1,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(3773,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(3774,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(3775,1,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(3776,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(3777,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(3778,1,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(3779,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(3780,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(3781,1,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(3782,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(3783,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(3784,1,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(3785,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(3786,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(3787,1,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(3788,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(3789,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(3790,1,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(3791,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(3792,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(3793,1,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(3760,1,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(3761,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(3762,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(3763,1,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(3759,1,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(3737,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(3738,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),(3739,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),(3740,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(3741,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),(3742,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),(3743,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(3744,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),(3745,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),(3746,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(3747,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),(3748,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),(3749,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(3750,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),(3751,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),(3752,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),(3753,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),(3754,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),(3755,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),(3756,1,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(3757,1,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(3758,1,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(3709,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(3710,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(3711,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(3712,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(3713,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(3714,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),(3715,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(3716,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(3717,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),(3718,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(3719,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(3720,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),(3721,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),(3722,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(3723,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),(3724,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),(3725,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(3726,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),(3727,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),(3728,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(3729,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),(3730,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),(3731,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(3732,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),(3733,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),(3734,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(3735,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),(3736,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),(3703,1,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),(3704,1,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(3705,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(3706,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(3707,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(3708,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(3702,1,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),(3666,1,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(3667,1,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(3668,1,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(3669,1,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(3670,1,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(3671,1,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(3672,1,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(3673,1,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(3674,1,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(3675,1,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(3676,1,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(3677,1,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(3678,1,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(3679,1,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(3680,1,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(3681,1,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(3682,1,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(3683,1,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(3684,1,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(3685,1,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(3686,1,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(3687,1,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(3688,1,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(3689,1,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),(3690,1,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(3691,1,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(3692,1,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),(3693,1,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),(3694,1,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),(3695,1,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),(3696,1,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),(3697,1,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),(3698,1,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),(3699,1,0,'JOBLOG_TABLE_INTERVAL',0,NULL),(3700,1,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),(3701,1,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),(3636,1,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),(3637,1,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),(3638,1,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(3639,1,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(3640,1,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(3641,1,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(3642,1,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),(3643,1,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),(3644,1,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(3645,1,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),(3646,1,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(3647,1,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(3648,1,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(3649,1,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(3650,1,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(3651,1,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(3652,1,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(3653,1,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(3654,1,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(3655,1,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(3656,1,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(3657,1,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(3658,1,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(3659,1,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(3660,1,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(3661,1,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(3662,1,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(3663,1,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(3664,1,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(3665,1,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4784,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(4785,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4753,5,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4754,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4755,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4756,5,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(4757,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(4758,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4759,5,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(4760,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(4761,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4762,5,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(4763,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(4764,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4765,5,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(4766,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(4767,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4768,5,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(4769,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(4770,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4771,5,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(4772,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(4773,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4774,5,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(4775,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(4776,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4777,5,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(4778,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(4779,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4780,5,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(4781,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(4782,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4783,5,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(4749,5,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4750,5,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(4751,5,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(4752,5,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4748,5,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(4727,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4728,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),(4729,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),(4730,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4731,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),(4732,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),(4733,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(4734,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),(4735,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),(4736,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(4737,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),(4738,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),(4739,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(4740,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),(4741,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),(4742,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),(4743,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),(4744,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),(4745,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),(4746,5,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(4747,5,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(4697,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4698,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4699,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4700,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4701,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(4702,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(4703,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4704,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),(4705,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(4706,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4707,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),(4708,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(4709,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4710,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),(4711,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),(4712,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4713,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),(4714,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),(4715,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4716,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),(4717,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),(4718,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4719,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),(4720,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),(4721,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4722,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),(4723,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),(4724,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4725,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),(4726,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),(4691,5,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),(4692,5,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),(4693,5,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),(4694,5,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4695,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(4696,5,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(4690,5,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),(4655,5,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4656,5,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(4657,5,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(4658,5,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4659,5,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(4660,5,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(4661,5,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4662,5,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(4663,5,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(4664,5,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(4665,5,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(4666,5,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(4667,5,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(4668,5,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(4669,5,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(4670,5,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(4671,5,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(4672,5,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(4673,5,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(4674,5,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(4675,5,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(4676,5,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(4677,5,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(4678,5,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(4679,5,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),(4680,5,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(4681,5,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(4682,5,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),(4683,5,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),(4684,5,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),(4685,5,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),(4686,5,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),(4687,5,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),(4688,5,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),(4689,5,0,'JOBLOG_TABLE_INTERVAL',0,NULL),(4626,5,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),(4627,5,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),(4628,5,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4629,5,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4630,5,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4631,5,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4632,5,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),(4633,5,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),(4634,5,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4635,5,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),(4636,5,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(4637,5,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4638,5,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(4639,5,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(4640,5,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4641,5,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(4642,5,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(4643,5,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4644,5,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(4645,5,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(4646,5,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4647,5,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(4648,5,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(4649,5,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4650,5,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(4651,5,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(4652,5,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4653,5,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(4654,5,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(4622,5,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),(4623,5,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),(4624,5,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),(4625,5,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(3632,1,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),(3633,1,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),(3634,1,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),(3635,1,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(3631,1,0,'LOG_SIZE_LIMIT',0,NULL),(5120,4,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(5121,4,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),(5122,4,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),(5123,4,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(5124,4,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(5125,4,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(5126,4,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(5127,4,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),(5128,4,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),(5129,4,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(5130,4,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),(5131,4,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(5132,4,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(5133,4,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(5134,4,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(5135,4,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(5136,4,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(5137,4,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(5138,4,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(5139,4,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(5140,4,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(5141,4,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(5142,4,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(5143,4,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(5144,4,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(5145,4,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(5146,4,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(5147,4,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(5148,4,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(5149,4,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(5150,4,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(5151,4,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(5152,4,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(5153,4,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(5154,4,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(5155,4,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(5156,4,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(5157,4,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(5158,4,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(5159,4,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(5160,4,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(5161,4,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(5162,4,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(5163,4,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(5164,4,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(5165,4,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(5166,4,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(5167,4,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(5168,4,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(5169,4,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(5170,4,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(5171,4,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(5172,4,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(5173,4,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(5174,4,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),(5175,4,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(5176,4,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(5177,4,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),(5178,4,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),(5179,4,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),(5180,4,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),(5181,4,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),(5182,4,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),(5183,4,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),(5184,4,0,'JOBLOG_TABLE_INTERVAL',0,NULL),(5185,4,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),(5186,4,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),(5187,4,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),(5188,4,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),(5189,4,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(5190,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(5191,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(5192,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(5193,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(5194,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(5195,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(5196,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(5197,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(5198,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(5199,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),(5200,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(5201,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(5202,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),(5203,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(5204,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(5205,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),(5206,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),(5207,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(5208,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),(5209,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),(5210,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(5211,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),(5212,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),(5213,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(5214,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),(5215,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),(5216,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(5217,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),(5218,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),(5219,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(5220,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),(5221,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),(5222,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(5223,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),(5224,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),(5225,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(5226,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),(5227,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),(5228,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(5229,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),(5230,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),(5231,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(5232,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),(5233,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),(5234,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(5235,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),(5236,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),(5237,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),(5238,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),(5239,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),(5240,4,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),(5241,4,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(5242,4,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(5243,4,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(5244,4,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(5245,4,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(5246,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(5247,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(5248,4,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(5249,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(5250,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4621,5,0,'LOG_SIZE_LIMIT',0,NULL),(4926,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4927,6,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(4928,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(4929,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4930,6,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(4931,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(4932,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4933,6,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(4934,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(4935,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4936,6,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(4937,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(4938,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4939,6,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(4940,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(4941,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4942,6,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(4943,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(4944,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4945,6,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(4946,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(4947,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4948,6,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(4949,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(4950,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4857,6,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),(4858,6,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),(4859,6,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4860,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(4861,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(4862,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4863,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4864,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4865,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4866,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(4867,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(4868,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4869,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),(4870,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(4871,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4872,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),(4873,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(4874,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4875,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),(4876,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),(4877,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4878,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),(4879,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),(4880,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4881,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),(4882,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),(4883,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4884,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),(4885,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),(4886,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4887,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),(4888,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),(4889,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4890,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),(4891,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),(4851,6,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),(4852,6,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),(4853,6,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),(4854,6,0,'JOBLOG_TABLE_INTERVAL',0,NULL),(4855,6,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),(4856,6,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),(4850,6,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),(4821,6,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(4822,6,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(4823,6,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4824,6,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(4825,6,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(4826,6,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4827,6,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(4828,6,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(4829,6,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(4830,6,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(4831,6,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(4832,6,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(4833,6,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(4834,6,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(4835,6,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(4836,6,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(4837,6,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(4838,6,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(4839,6,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(4840,6,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(4841,6,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(4842,6,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(4843,6,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(4844,6,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),(4845,6,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(4846,6,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(4847,6,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),(4848,6,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),(4849,6,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),(4791,6,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),(4792,6,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),(4793,6,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4794,6,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4795,6,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4796,6,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4797,6,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),(4798,6,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),(4799,6,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4800,6,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),(4801,6,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(4802,6,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4803,6,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(4804,6,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(4805,6,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4806,6,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(4807,6,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(4808,6,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4809,6,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(4810,6,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(4811,6,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4812,6,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(4813,6,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(4814,6,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4815,6,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(4816,6,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(4817,6,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4818,6,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(4819,6,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(4820,6,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4787,6,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),(4788,6,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),(4789,6,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),(4790,6,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4786,6,0,'LOG_SIZE_LIMIT',0,NULL),(5091,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(5092,7,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(5093,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(5094,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(5095,7,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(5096,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(5097,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(5098,7,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(5099,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(5100,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(5101,7,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(5102,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(5103,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(5104,7,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(5105,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(5106,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(5107,7,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(5108,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(5109,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(5110,7,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(5111,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(5112,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(5113,7,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(5114,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(5115,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(5022,7,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),(5023,7,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),(5024,7,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(5025,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(5026,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(5027,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(5028,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(5029,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(5030,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(5031,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(5032,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(5033,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(5034,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),(5035,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(5036,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(5037,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),(5038,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(5039,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(5040,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),(5041,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),(5042,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(5043,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),(5044,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),(5045,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(5046,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),(5047,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),(5048,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(5049,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),(5050,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),(5051,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(5052,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),(5053,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),(5054,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(5055,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),(5056,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),(5016,7,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),(5017,7,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),(5018,7,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),(5019,7,0,'JOBLOG_TABLE_INTERVAL',0,NULL),(5020,7,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),(5021,7,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),(5015,7,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),(4986,7,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(4987,7,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(4988,7,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4989,7,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(4990,7,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(4991,7,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4992,7,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(4993,7,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(4994,7,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(4995,7,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(4996,7,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(4997,7,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(4998,7,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(4999,7,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(5000,7,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(5001,7,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(5002,7,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(5003,7,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(5004,7,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(5005,7,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(5006,7,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(5007,7,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(5008,7,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(5009,7,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),(5010,7,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(5011,7,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(5012,7,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),(5013,7,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),(5014,7,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),(4956,7,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),(4957,7,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),(4958,7,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4959,7,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4960,7,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4961,7,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4962,7,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),(4963,7,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),(4964,7,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4965,7,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),(4966,7,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(4967,7,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(4968,7,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(4969,7,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(4970,7,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(4971,7,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(4972,7,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(4973,7,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(4974,7,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(4975,7,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(4976,7,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(4977,7,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(4978,7,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(4979,7,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(4980,7,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(4981,7,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(4982,7,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(4983,7,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(4984,7,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(4985,7,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(4952,7,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),(4953,7,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),(4954,7,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),(4955,7,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4951,7,0,'LOG_SIZE_LIMIT',0,NULL),(5277,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(5278,4,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(5279,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(5256,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(5257,4,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(5258,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(5259,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(5260,4,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(5261,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(5262,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(5263,4,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(5264,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(5265,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(5266,4,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(5267,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(5268,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(5269,4,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(5270,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(5271,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(5272,4,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(5273,4,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(5274,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(5275,4,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(4892,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(4893,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),(4894,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),(4895,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(4896,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),(4897,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),(4898,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(4899,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),(4900,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),(4901,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(4902,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),(4903,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),(4904,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(4905,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),(4906,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),(4907,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),(4908,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),(4909,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),(4910,6,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),(4911,6,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(4912,6,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(4913,6,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(4914,6,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(4915,6,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(4916,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(4917,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(4918,6,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(4919,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(4920,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(4921,6,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(4922,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(4923,6,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(4924,6,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(4925,6,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(5057,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(5058,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),(5059,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),(5060,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(5061,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),(5062,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),(5063,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(5064,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),(5065,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),(5066,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(5067,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),(5068,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),(5069,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(5070,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),(5071,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),(5072,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),(5073,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),(5074,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),(5075,7,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),(5076,7,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(5077,7,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(5078,7,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(5079,7,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(5080,7,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(5081,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(5082,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(5083,7,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(5084,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(5085,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(5086,7,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(5087,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(5088,7,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(5089,7,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(5090,7,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(5280,4,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y');
/*!40000 ALTER TABLE `R_JOB_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOB_HOP`
--

DROP TABLE IF EXISTS `R_JOB_HOP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOB_HOP` (
  `ID_JOB_HOP` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_COPY_FROM` int(11) DEFAULT NULL,
  `ID_JOBENTRY_COPY_TO` int(11) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `EVALUATION` tinyint(1) DEFAULT NULL,
  `UNCONDITIONAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_JOB_HOP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOB_HOP`
--

LOCK TABLES `R_JOB_HOP` WRITE;
/*!40000 ALTER TABLE `R_JOB_HOP` DISABLE KEYS */;
INSERT INTO `R_JOB_HOP` VALUES (159,1,160,163,1,1,0),(158,1,161,164,1,1,0),(157,1,164,157,1,1,0),(156,1,165,160,1,0,0),(155,1,165,159,1,1,0),(154,1,158,165,1,1,0),(153,1,158,162,1,0,0),(152,1,159,161,1,1,0),(151,1,157,158,1,1,0),(150,1,155,166,1,1,0),(149,1,166,157,1,1,0),(148,1,156,155,1,1,1),(199,7,204,206,1,1,0),(194,6,199,201,1,1,0),(193,6,199,200,1,0,0),(192,6,198,199,1,1,1),(210,4,213,207,1,0,0),(209,4,213,211,1,1,0),(208,4,212,208,1,1,1),(207,4,210,209,1,1,0),(206,4,208,210,1,1,0),(205,4,208,207,1,0,0),(189,5,193,196,1,1,0),(188,5,193,192,1,0,0),(187,5,195,193,1,1,1),(198,7,202,204,1,1,1),(197,7,204,205,1,0,0),(204,4,210,207,1,0,0),(203,4,209,207,1,0,0),(202,4,209,213,1,1,0),(190,5,196,194,1,1,0),(191,5,196,192,1,0,0),(195,6,201,197,1,1,0),(196,6,201,200,1,0,0),(200,7,206,203,1,1,0),(201,7,206,205,1,0,0);
/*!40000 ALTER TABLE `R_JOB_HOP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOB_LOCK`
--

DROP TABLE IF EXISTS `R_JOB_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOB_LOCK` (
  `ID_JOB_LOCK` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `LOCK_MESSAGE` mediumtext,
  `LOCK_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_JOB_LOCK`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOB_LOCK`
--

LOCK TABLES `R_JOB_LOCK` WRITE;
/*!40000 ALTER TABLE `R_JOB_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_JOB_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_JOB_NOTE`
--

DROP TABLE IF EXISTS `R_JOB_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_JOB_NOTE` (
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_NOTE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_JOB_NOTE`
--

LOCK TABLES `R_JOB_NOTE` WRITE;
/*!40000 ALTER TABLE `R_JOB_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_JOB_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_LOG`
--

DROP TABLE IF EXISTS `R_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_LOG` (
  `ID_LOG` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_LOGLEVEL` int(11) DEFAULT NULL,
  `LOGTYPE` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILEEXTENTION` varchar(255) DEFAULT NULL,
  `ADD_DATE` tinyint(1) DEFAULT NULL,
  `ADD_TIME` tinyint(1) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_LOG`
--

LOCK TABLES `R_LOG` WRITE;
/*!40000 ALTER TABLE `R_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_LOGLEVEL`
--

DROP TABLE IF EXISTS `R_LOGLEVEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_LOGLEVEL` (
  `ID_LOGLEVEL` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOGLEVEL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_LOGLEVEL`
--

LOCK TABLES `R_LOGLEVEL` WRITE;
/*!40000 ALTER TABLE `R_LOGLEVEL` DISABLE KEYS */;
INSERT INTO `R_LOGLEVEL` VALUES (1,'Error','Error logging only'),(2,'Minimal','Minimal logging'),(3,'Basic','Basic logging'),(4,'Detailed','Detailed logging'),(5,'Debug','Debugging'),(6,'Rowlevel','Rowlevel (very detailed)');
/*!40000 ALTER TABLE `R_LOGLEVEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_NAMESPACE`
--

DROP TABLE IF EXISTS `R_NAMESPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_NAMESPACE` (
  `ID_NAMESPACE` bigint(20) NOT NULL,
  `NAME` mediumtext,
  PRIMARY KEY (`ID_NAMESPACE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_NAMESPACE`
--

LOCK TABLES `R_NAMESPACE` WRITE;
/*!40000 ALTER TABLE `R_NAMESPACE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_NAMESPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_NOTE`
--

DROP TABLE IF EXISTS `R_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_NOTE` (
  `ID_NOTE` bigint(20) NOT NULL,
  `VALUE_STR` mediumtext,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_LOCATION_WIDTH` int(11) DEFAULT NULL,
  `GUI_LOCATION_HEIGHT` int(11) DEFAULT NULL,
  `FONT_NAME` mediumtext,
  `FONT_SIZE` int(11) DEFAULT NULL,
  `FONT_BOLD` tinyint(1) DEFAULT NULL,
  `FONT_ITALIC` tinyint(1) DEFAULT NULL,
  `FONT_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_COLOR_BLUE` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_BLUE` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_BLUE` int(11) DEFAULT NULL,
  `DRAW_SHADOW` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_NOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_NOTE`
--

LOCK TABLES `R_NOTE` WRITE;
/*!40000 ALTER TABLE `R_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_PARTITION`
--

DROP TABLE IF EXISTS `R_PARTITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_PARTITION` (
  `ID_PARTITION` bigint(20) NOT NULL,
  `ID_PARTITION_SCHEMA` int(11) DEFAULT NULL,
  `PARTITION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PARTITION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_PARTITION`
--

LOCK TABLES `R_PARTITION` WRITE;
/*!40000 ALTER TABLE `R_PARTITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_PARTITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_PARTITION_SCHEMA`
--

DROP TABLE IF EXISTS `R_PARTITION_SCHEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_PARTITION_SCHEMA` (
  `ID_PARTITION_SCHEMA` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DYNAMIC_DEFINITION` tinyint(1) DEFAULT NULL,
  `PARTITIONS_PER_SLAVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PARTITION_SCHEMA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_PARTITION_SCHEMA`
--

LOCK TABLES `R_PARTITION_SCHEMA` WRITE;
/*!40000 ALTER TABLE `R_PARTITION_SCHEMA` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_PARTITION_SCHEMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_REPOSITORY_LOG`
--

DROP TABLE IF EXISTS `R_REPOSITORY_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_REPOSITORY_LOG` (
  `ID_REPOSITORY_LOG` bigint(20) NOT NULL,
  `REP_VERSION` varchar(255) DEFAULT NULL,
  `LOG_DATE` datetime DEFAULT NULL,
  `LOG_USER` varchar(255) DEFAULT NULL,
  `OPERATION_DESC` mediumtext,
  PRIMARY KEY (`ID_REPOSITORY_LOG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_REPOSITORY_LOG`
--

LOCK TABLES `R_REPOSITORY_LOG` WRITE;
/*!40000 ALTER TABLE `R_REPOSITORY_LOG` DISABLE KEYS */;
INSERT INTO `R_REPOSITORY_LOG` VALUES (1,'5.0','2015-09-11 20:41:20','admin','save job \'JobTask\''),(2,'5.0','2015-09-11 20:45:14','admin','save job \'JobTask\''),(3,'5.0','2015-09-11 20:48:50','admin','save job \'JobTask\''),(4,'5.0','2015-09-11 20:59:52','admin','save transformation \'get_variables\''),(5,'5.0','2015-09-11 21:01:07','admin','save job \'JobTask\''),(6,'5.0','2015-09-11 21:01:46','admin','save job \'JobTask\''),(7,'5.0','2015-09-11 21:16:10','admin','save transformation \'get_variables\''),(8,'5.0','2015-09-11 21:17:52','admin','save job \'JobTask\''),(9,'5.0','2015-09-11 21:23:27','admin','save transformation \'get_variables\''),(10,'5.0','2015-09-11 21:26:56','admin','save job \'Load\''),(11,'5.0','2015-09-11 21:31:05','admin','save job \'JobTask\''),(12,'5.0','2015-09-11 21:41:56','admin','save job \'JobTask\''),(13,'5.0','2015-09-11 23:07:11','admin','save job \'Load\''),(14,'5.0','2015-09-11 23:07:51','admin','save job \'JobTest.sh\''),(15,'5.0','2015-09-12 11:43:52','admin','Renamed from JobTest.sh to JobTest'),(16,'5.0','2015-09-12 11:45:34','admin','save job \'JobTest\''),(17,'5.0','2015-09-12 12:13:07','admin','save job \'JobTest\''),(18,'5.0','2015-09-12 12:37:30','admin','save job \'JobTest\''),(19,'5.0','2015-09-12 12:41:30','admin','save job \'Load\''),(20,'5.0','2015-09-12 12:42:30','admin','save job \'JobTask\''),(21,'5.0','2015-09-12 12:42:58','admin','save job \'Load\''),(22,'5.0','2015-09-12 12:53:03','admin','save job \'Load\''),(23,'5.0','2015-09-12 12:57:08','admin','save transformation \'get_variables\''),(24,'5.0','2015-09-12 12:57:13','admin','save job \'JobTask\''),(25,'5.0','2015-09-12 13:04:58','admin','save transformation \'get_variables\''),(26,'5.0','2015-09-12 13:05:35','admin','save job \'JobTask\''),(27,'5.0','2015-09-12 13:07:01','admin','save job \'JobTask\''),(28,'5.0','2015-09-12 13:10:12','admin','save transformation \'get_variables\''),(29,'5.0','2015-09-12 13:10:36','admin','save job \'Load\''),(30,'5.0','2015-09-12 13:14:16','admin','save transformation \'set_parameters\''),(31,'5.0','2015-09-12 13:15:28','admin','save transformation \'set_parameters\''),(32,'5.0','2015-09-12 13:16:48','admin','save transformation \'set_parameters\''),(33,'5.0','2015-09-12 13:17:03','admin','save job \'JobTask\''),(34,'5.0','2015-09-12 13:22:29','admin','save transformation \'set_parameters\''),(35,'5.0','2015-09-12 13:22:38','admin','save transformation \'get_variables\''),(36,'5.0','2015-09-12 13:26:00','admin','save job \'JobTask\''),(37,'5.0','2015-09-12 13:27:36','admin','save job \'JobTask\''),(38,'5.0','2015-09-12 13:28:46','admin','save job \'JobTask\''),(39,'5.0','2015-09-12 13:32:22','admin','save job \'Load\''),(40,'5.0','2015-09-12 13:32:59','admin','save job \'Load\''),(41,'5.0','2015-09-12 13:34:30','admin','save job \'Load\''),(42,'5.0','2015-09-12 14:21:01','admin','save job \'JobTask\''),(43,'5.0','2015-09-12 14:23:06','admin','save job \'JobTask\''),(44,'5.0','2015-09-12 16:12:56','admin','save job \'Load\''),(45,'5.0','2015-09-12 16:51:30','admin','save transformation \'get_variables\''),(46,'5.0','2015-09-12 16:52:06','admin','save job \'Load\''),(47,'5.0','2015-09-12 17:22:43','admin','save job \'Load\''),(48,'5.0','2015-09-12 17:24:18','admin','save transformation \'get_variables\''),(49,'5.0','2015-09-12 17:24:27','admin','save job \'JobTask\''),(50,'5.0','2015-09-12 19:26:54','admin','save transformation \'get_variables\''),(51,'5.0','2015-09-12 19:27:17','admin','save job \'JobTask\''),(52,'5.0','2015-09-12 22:07:12','admin','save job \'Load\''),(53,'5.0','2015-09-13 08:23:41','admin','save transformation \'set_parameters\''),(54,'5.0','2015-09-13 08:23:50','admin','save transformation \'set_parameters\''),(55,'5.0','2015-09-13 08:30:39','admin','save job \'JobTask\''),(56,'5.0','2015-09-13 08:30:55','admin','save transformation \'get_variables_Hourly\''),(57,'5.0','2015-09-13 08:32:22','admin','save job \'Load_Hourly\''),(58,'5.0','2015-09-13 08:35:01','admin','save job \'JobTask\''),(59,'5.0','2015-09-13 08:35:22','admin','save transformation \'get_variables_Daily\''),(60,'5.0','2015-09-13 08:35:41','admin','save transformation \'get_variables_Daily\''),(61,'5.0','2015-09-13 08:36:27','admin','save transformation \'get_variables_Hourly\''),(62,'5.0','2015-09-13 08:45:08','admin','save transformation \'get_variables_Hourly\''),(63,'5.0','2015-09-13 08:45:53','admin','Renamed from get_variables_Hourly to get_variables_Hour'),(64,'5.0','2015-09-13 08:46:03','admin','Renamed from get_variables_Daily to get_variables_Day'),(65,'5.0','2015-09-13 08:46:21','admin','Renamed from Load_Hourly to Load_Hour'),(66,'5.0','2015-09-13 08:46:43','admin','save job \'Load_Day\''),(67,'5.0','2015-09-13 08:47:50','admin','save job \'Load_Day\''),(68,'5.0','2015-09-13 08:52:44','admin','save job \'Load_Week\''),(69,'5.0','2015-09-13 08:52:54','admin','save job \'Load_Month\''),(70,'5.0','2015-09-13 09:11:50','admin','Renamed from Load_Hour to Load_HOUR'),(71,'5.0','2015-09-13 09:11:56','admin','Renamed from Load_Week to Load_WEEK'),(72,'5.0','2015-09-13 09:12:05','admin','Renamed from Load_Month to Load_MONTH'),(73,'5.0','2015-09-13 09:12:16','admin','Renamed from Load_Day to Load_DAY'),(74,'5.0','2015-09-13 09:53:54','admin','Renamed from get_variables_Hour to get_variables'),(75,'5.0','2015-09-13 09:54:15','admin','save job \'JobTask\''),(76,'5.0','2015-09-13 09:58:45','admin','save transformation \'get_variables\''),(77,'5.0','2015-09-13 09:59:39','admin','save job \'Load_HOUR\''),(78,'5.0','2015-09-13 10:36:02','admin','save job \'Load_HOUR\''),(79,'5.0','2015-09-13 11:20:46','admin','save job \'Load_HOUR\''),(80,'5.0','2015-09-13 11:20:54','admin','save job \'Load_DAY\''),(81,'5.0','2015-09-13 11:21:02','admin','save job \'Load_WEEK\''),(82,'5.0','2015-09-13 11:21:09','admin','save job \'Load_MONTH\''),(83,'5.0','2015-09-13 11:22:26','admin','save transformation \'get_variables\''),(84,'5.0','2015-09-13 13:03:23','admin','save job \'Load_HOUR\''),(85,'5.0','2015-09-13 13:36:02','admin','save job \'Load_DAY\''),(86,'5.0','2015-09-13 13:36:17','admin','save job \'Load_WEEK\''),(87,'5.0','2015-09-13 13:36:35','admin','save job \'Load_MONTH\''),(88,'5.0','2015-10-24 00:59:46','admin','save job \'Load_HOUR\'');
/*!40000 ALTER TABLE `R_REPOSITORY_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_SLAVE`
--

DROP TABLE IF EXISTS `R_SLAVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_SLAVE` (
  `ID_SLAVE` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `HOST_NAME` varchar(255) DEFAULT NULL,
  `PORT` varchar(255) DEFAULT NULL,
  `WEB_APP_NAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PROXY_HOST_NAME` varchar(255) DEFAULT NULL,
  `PROXY_PORT` varchar(255) DEFAULT NULL,
  `NON_PROXY_HOSTS` varchar(255) DEFAULT NULL,
  `MASTER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_SLAVE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_SLAVE`
--

LOCK TABLES `R_SLAVE` WRITE;
/*!40000 ALTER TABLE `R_SLAVE` DISABLE KEYS */;
INSERT INTO `R_SLAVE` VALUES (1,'localhost:8081','localhost','8081',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,0),(2,'localhost:8080 master','localhost','8080',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,1),(3,'localhost:8080','localhost','8080',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,0),(4,'localhost:8084','localhost','8084',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,0),(5,'localhost:8083','localhost','8083',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,0),(6,'localhost:8082','localhost','8082',NULL,'cluster','Encrypted 2be98afc86aa7f2e4cb1aa265cd86aac8',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `R_SLAVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_STEP`
--

DROP TABLE IF EXISTS `R_STEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_STEP` (
  `ID_STEP` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `ID_STEP_TYPE` int(11) DEFAULT NULL,
  `DISTRIBUTE` tinyint(1) DEFAULT NULL,
  `COPIES` int(11) DEFAULT NULL,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_DRAW` tinyint(1) DEFAULT NULL,
  `COPIES_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_STEP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_STEP`
--

LOCK TABLES `R_STEP` WRITE;
/*!40000 ALTER TABLE `R_STEP` DISABLE KEYS */;
INSERT INTO `R_STEP` VALUES (7,2,'Asignar parametros a variables',NULL,177,1,1,319,147,1,'1'),(8,2,'Get System Info',NULL,69,1,1,152,149,1,'1'),(9,3,'Asignar valor a variables',NULL,177,1,1,375,76,1,'1'),(10,3,'Entrada Variables',NULL,199,1,1,111,76,1,'1');
/*!40000 ALTER TABLE `R_STEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_STEP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_STEP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_STEP_ATTRIBUTE` (
  `ID_STEP_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_STEP_ATTRIBUTE`),
  UNIQUE KEY `IDX_RSAT` (`ID_STEP`,`CODE`,`NR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_STEP_ATTRIBUTE`
--

LOCK TABLES `R_STEP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_STEP_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `R_STEP_ATTRIBUTE` VALUES (118,2,8,0,'PARTITIONING_METHOD',0,'none'),(117,2,8,0,'PARTITIONING_SCHEMA',0,NULL),(116,2,7,0,'row_distribution_code',0,NULL),(115,2,7,0,'cluster_schema',0,NULL),(114,2,7,0,'use_formatting',0,'Y'),(113,2,7,1,'default_value',0,NULL),(112,2,7,1,'variable_type',0,'ROOT_JOB'),(111,2,7,1,'variable_name',0,'PERIOD'),(110,2,7,1,'field_name',0,'PERIOD'),(109,2,7,0,'default_value',0,NULL),(108,2,7,0,'variable_type',0,'ROOT_JOB'),(107,2,7,0,'variable_name',0,'SERVICE'),(106,2,7,0,'field_name',0,'SERVICE'),(105,2,7,0,'PARTITIONING_METHOD',0,'none'),(104,2,7,0,'PARTITIONING_SCHEMA',0,NULL),(119,2,8,0,'field_name',0,'SERVICE'),(120,2,8,0,'field_type',0,'command line argument 1'),(121,2,8,1,'field_name',0,'PERIOD'),(122,2,8,1,'field_type',0,'command line argument 2'),(123,2,8,0,'cluster_schema',0,NULL),(124,2,8,0,'row_distribution_code',0,NULL),(132,3,9,1,'variable_name',0,'DATE_TO_PROCESS'),(133,3,9,1,'variable_type',0,'ROOT_JOB'),(134,3,9,1,'default_value',0,NULL),(135,3,9,2,'field_name',0,'DATE_HOUR_PROCESSED'),(131,3,9,1,'field_name',0,'DATE_TO_PROCESS'),(137,3,9,2,'variable_type',0,'ROOT_JOB'),(138,3,9,2,'default_value',0,NULL),(139,3,9,3,'field_name',0,'LOAD_ID'),(140,3,9,3,'variable_name',0,'LOAD_ID'),(141,3,9,3,'variable_type',0,'ROOT_JOB'),(142,3,9,3,'default_value',0,NULL),(143,3,9,4,'field_name',0,'RESULT'),(144,3,9,4,'variable_name',0,'RESULT'),(145,3,9,4,'variable_type',0,'ROOT_JOB'),(146,3,9,4,'default_value',0,NULL),(147,3,9,5,'field_name',0,'STOP_CONDITION'),(148,3,9,5,'variable_name',0,'STOP_CONDITION'),(149,3,9,5,'variable_type',0,'ROOT_JOB'),(150,3,9,5,'default_value',0,NULL),(151,3,9,0,'use_formatting',0,'Y'),(152,3,9,0,'cluster_schema',0,NULL),(153,3,9,0,'row_distribution_code',0,NULL),(154,3,10,0,'PARTITIONING_SCHEMA',0,NULL),(155,3,10,0,'PARTITIONING_METHOD',0,'none'),(156,3,10,0,'id_connection',4,NULL),(157,3,10,0,'sql',0,'SELECT	\nPROCESS,\nCASE WHEN RESULT = \'KO\' THEN DATE_FORMAT(DATE_PROCESSED, \'%Y%m%d%H\') \r\n		ELSE DATE_FORMAT(DATE_ADD(DATE_PROCESSED, INTERVAL 1 ${PERIOD}), \'%Y%m%d%H\') END AS DATE_TO_PROCESS,\r\n\r\nCASE WHEN RESULT = \'KO\' THEN DATE_FORMAT(DATE_PROCESSED, \'%Y-%m-%d %H\')\r\n		ELSE DATE_FORMAT(DATE_ADD(DATE_PROCESSED, INTERVAL 1 ${PERIOD}), \'%Y-%m-%d %H\') END AS DATE_HOUR_PROCESSED,\r\n\nDATE_FORMAT(DATE_PROCESSED, \'%Y%m%d\')||DATE_FORMAT(NOW(), \'%Y%m%d%H%i\') AS LOAD_ID,\n\'OK\' AS RESULT,\nCASE WHEN DATE_FORMAT(DATE_PROCESSED, \'%Y%m%d%H\') = DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 1 ${PERIOD}), \'%Y%m%d%H\')\r\n			   THEN \'STOP\' ELSE \'START\' END AS STOP_CONDITION\nFROM\n		(\n		SELECT PROCESS, DATE_PROCESSED, LOAD_ID, RESULT \r\n		FROM ETLCONTROL WHERE PROCESS = \'${SERVICE}\' AND PERIOD = \'${PERIOD}\'\r\n		ORDER BY TIMESTAMP DESC\r\n		LIMIT 1\n		) AA\n'),(158,3,10,0,'limit',0,'0'),(159,3,10,0,'lookup',0,NULL),(160,3,10,0,'execute_each_row',0,'N'),(161,3,10,0,'variables_active',0,'Y'),(162,3,10,0,'lazy_conversion_active',0,'N'),(163,3,10,0,'cluster_schema',0,NULL),(164,3,10,0,'row_distribution_code',0,NULL),(136,3,9,2,'variable_name',0,'DATE_HOUR_PROCESSED'),(129,3,9,0,'variable_type',0,'ROOT_JOB'),(130,3,9,0,'default_value',0,NULL),(128,3,9,0,'variable_name',0,'PROCESS'),(126,3,9,0,'PARTITIONING_METHOD',0,'none'),(127,3,9,0,'field_name',0,'PROCESS'),(125,3,9,0,'PARTITIONING_SCHEMA',0,NULL);
/*!40000 ALTER TABLE `R_STEP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_STEP_DATABASE`
--

DROP TABLE IF EXISTS `R_STEP_DATABASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_STEP_DATABASE` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  KEY `IDX_RSD1` (`ID_TRANSFORMATION`),
  KEY `IDX_RSD2` (`ID_DATABASE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_STEP_DATABASE`
--

LOCK TABLES `R_STEP_DATABASE` WRITE;
/*!40000 ALTER TABLE `R_STEP_DATABASE` DISABLE KEYS */;
INSERT INTO `R_STEP_DATABASE` VALUES (3,10,4);
/*!40000 ALTER TABLE `R_STEP_DATABASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_STEP_TYPE`
--

DROP TABLE IF EXISTS `R_STEP_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_STEP_TYPE` (
  `ID_STEP_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HELPTEXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_STEP_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_STEP_TYPE`
--

LOCK TABLES `R_STEP_TYPE` WRITE;
/*!40000 ALTER TABLE `R_STEP_TYPE` DISABLE KEYS */;
INSERT INTO `R_STEP_TYPE` VALUES (1,'Abort','Abort','Abort a transformation'),(2,'CheckSum','Add a checksum','Add a checksum column for each input row'),(3,'Constant','Add constants','Add one or more constants to the input rows'),(4,'Sequence','Add sequence','Get the next value from an sequence'),(5,'FieldsChangeSequence','Add value fields changing sequence','Add sequence depending of fields value change.\nEach time value of at least one field change, PDI will reset sequence. '),(6,'AddXML','Add XML','Encode several fields into an XML fragment'),(7,'AggregateRows','Aggregate Rows','This step type allows you to aggregate rows.\nIt can\'t do groupings.'),(8,'AnalyticQuery','Analytic Query','Execute analytic queries over a sorted dataset (LEAD/LAG/FIRST/LAST)'),(9,'Append','Append streams','Append 2 streams in an ordered way'),(10,'AutoDoc','Automatic Documentation Output','This step automatically generates documentation based on input in the form of a list of transformations and jobs'),(11,'AvroInput','Avro Input','Reads data from an Avro file'),(12,'BlockUntilStepsFinish','Block this step until steps finish','Block this step until selected steps finish.'),(13,'BlockingStep','Blocking Step','This step blocks until all incoming rows have been processed.  Subsequent steps only recieve the last input row to this step.'),(14,'Calculator','Calculator','Create new fields by performing simple calculations'),(15,'DBProc','Call DB Procedure','Get back information by calling a database procedure.'),(16,'CallEndpointStep','Call endpoint','Call an endpoint of the BA Server.'),(17,'CassandraInput','Cassandra Input','Reads data from a Cassandra table'),(18,'CassandraOutput','Cassandra Output','Writes to a Cassandra table'),(19,'ChangeFileEncoding','Change file encoding','Change file encoding and create a new file'),(20,'ColumnExists','Check if a column exists','Check if a column exists in a table on a specified connection.'),(21,'FileLocked','Check if file is locked','Check if a file is locked by another process'),(22,'WebServiceAvailable','Check if webservice is available','Check if a webservice is available'),(23,'CloneRow','Clone row','Clone a row as many times as needed'),(24,'ClosureGenerator','Closure Generator','This step allows you to generates a closure table using parent-child relationships.'),(25,'CombinationLookup','Combination lookup/update','Update a junk dimension in a data warehouse.\nAlternatively, look up information in this dimension.\nThe primary key of a junk dimension are all the fields.'),(26,'ConcatFields','Concat Fields','Concat fields together into a new field (similar to the Text File Output step)'),(27,'RowsToResult','Copy rows to result','Use this step to write rows to the executing job.\nThe information will then be passed to the next entry in this job.'),(28,'CouchDbInput','CouchDb Input','Reads from a Couch DB view'),(29,'CreditCardValidator','Credit card validator','The Credit card validator step will help you tell:\n(1) if a credit card number is valid (uses LUHN10 (MOD-10) algorithm)\n(2) which credit card vendor handles that number\n(VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),...)'),(30,'CsvInput','CSV file input','Simple CSV file input'),(31,'DataGrid','Data Grid','Enter rows of static data in a grid, usually for testing, reference or demo purpose'),(32,'Validator','Data Validator','Validates passing data based on a set of rules'),(33,'DBJoin','Database join','Execute a database query using stream values as parameters'),(34,'DBLookup','Database lookup','Look up values in a database using field values'),(35,'CubeInput','De-serialize from file','Read rows of data from a data cube.'),(36,'Delay','Delay row','Output each input row after a delay'),(37,'Delete','Delete','Delete data in a database table based upon keys'),(38,'DetectEmptyStream','Detect empty stream','This step will output one empty row if input stream is empty\n(ie when input stream does not contain any row)'),(39,'DimensionLookup','Dimension lookup/update','Update a slowly changing dimension in a data warehouse.\nAlternatively, look up information in this dimension.'),(40,'Dummy','Dummy (do nothing)','This step type doesn\'t do anything.\nIt\'s useful however when testing things or in certain situations where you want to split streams.'),(41,'DynamicSQLRow','Dynamic SQL row','Execute dynamic SQL statement build in a previous field'),(42,'TypeExitEdi2XmlStep','Edi to XML','Converts Edi text to generic XML'),(43,'ElasticSearchBulk','ElasticSearch Bulk Insert','Performs bulk inserts into ElasticSearch'),(44,'MailInput','Email messages input','Read POP3/IMAP server and retrieve messages'),(45,'ShapeFileReader','ESRI Shapefile Reader','Reads shape file data from an ESRI shape file and linked DBF file'),(46,'MetaInject','ETL Metadata Injection','This step allows you to inject metadata into an existing transformation prior to execution.  This allows for the creation of dynamic and highly flexible data integration solutions.'),(47,'DummyPlugin','Example plugin','This is an example for a plugin test step'),(48,'ExecProcess','Execute a process','Execute a process and return the result'),(49,'ExecSQLRow','Execute row SQL script','Execute SQL script extracted from a field\ncreated in a previous step.'),(50,'ExecSQL','Execute SQL script','Execute an SQL script, optionally parameterized using input rows'),(51,'FileExists','File exists','Check if a file exists'),(52,'FilterRows','Filter rows','Filter rows using simple equations'),(53,'FixedInput','Fixed file input','Fixed file input'),(54,'Formula','Formula','Calculate a formula using Pentaho\'s libformula'),(55,'FuzzyMatch','Fuzzy match','Finding approximate matches to a string using matching algorithms.\nRead a field from a main stream and output approximative value from lookup stream.'),(56,'RandomCCNumberGenerator','Generate random credit card numbers','Generate random valide (luhn check) credit card numbers'),(57,'RandomValue','Generate random value','Generate random value'),(58,'RowGenerator','Generate Rows','Generate a number of empty or equal rows.'),(59,'getXMLData','Get data from XML','Get data from XML file by using XPath.\n This step also allows you to parse XML defined in a previous field.'),(60,'GetFileNames','Get File Names','Get file names from the operating system and send them to the next step.'),(61,'FilesFromResult','Get files from result','This step allows you to read filenames used or generated in a previous entry in a job.'),(62,'GetFilesRowsCount','Get Files Rows Count','Returns rows count for text files.'),(63,'GetSlaveSequence','Get ID from slave server','Retrieves unique IDs in blocks from a slave server.  The referenced sequence needs to be configured on the slave server in the XML configuration file.'),(64,'GetPreviousRowField','Get previous row fields','Get fields value of previous row.'),(65,'GetRepositoryNames','Get repository names','Lists detailed information about transformations and/or jobs in a repository'),(66,'RowsFromResult','Get rows from result','This allows you to read rows from a previous entry in a job.'),(67,'GetSessionVariableStep','Get session variables','Get session variables from the current user session.'),(68,'GetSubFolders','Get SubFolder names','Read a parent folder and return all subfolders'),(69,'SystemInfo','Get System Info','Get information from the system like system date, arguments, etc.'),(70,'GetTableNames','Get table names','Get table names from database connection and send them to the next step'),(71,'GetVariable','Get Variables','Determine the values of certain (environment or Kettle) variables and put them in field values.'),(72,'TypeExitGoogleAnalyticsInputStep','Google Analytics','Fetches data from google analytics account'),(73,'GPBulkLoader','Greenplum Bulk Loader','Greenplum Bulk Loader'),(74,'GPLoad','Greenplum Load','Greenplum Load'),(75,'GroupBy','Group by','Builds aggregates in a group by fashion.\nThis works only on a sorted input.\nIf the input is not sorted, only double consecutive rows are handled correctly.'),(76,'ParallelGzipCsvInput','GZIP CSV Input','Parallel GZIP CSV file input reader'),(77,'HadoopFileInputPlugin','Hadoop File Input','Process files from an HDFS location'),(78,'HadoopFileOutputPlugin','Hadoop File Output','Create files in an HDFS location '),(79,'HBaseInput','HBase Input','Reads data from a HBase table according to a mapping '),(80,'HBaseOutput','HBase Output','Writes data to an HBase table according to a mapping'),(81,'HBaseRowDecoder','HBase Row Decoder','Decodes an incoming key and HBase result object according to a mapping '),(82,'HL7Input','HL7 Input','Reads and parses HL7 messages and outputs a series of values from the messages'),(83,'HTTP','HTTP Client','Call a web service over HTTP by supplying a base URL by allowing parameters to be set dynamically'),(84,'HTTPPOST','HTTP Post','Call a web service request over HTTP by supplying a base URL by allowing parameters to be set dynamically'),(85,'DetectLastRow','Identify last row in a stream','Last row will be marked'),(86,'IfNull','If field value is null','Sets a field value to a constant if it is null.'),(87,'InfobrightOutput','Infobright Loader','Load data to an Infobright database table'),(88,'VectorWiseBulkLoader','Ingres VectorWise Bulk Loader','This step interfaces with the Ingres VectorWise Bulk Loader \"COPY TABLE\" command.'),(89,'Injector','Injector','Injector step to allow to inject rows into the transformation through the java API'),(90,'InsertUpdate','Insert / Update','Update or insert rows in a database based upon keys.'),(91,'JavaFilter','Java Filter','Filter rows using java code'),(92,'JobExecutor','Job Executor','This step executes a Pentaho Data Integration job, sets parameters and passes rows.'),(93,'JoinRows','Join Rows (cartesian product)','The output of this step is the cartesian product of the input streams.\nThe number of rows is the multiplication of the number of rows in the input streams.'),(94,'JsonInput','Json Input','Extract relevant portions out of JSON structures (file or incoming field) and output rows'),(95,'JsonOutput','Json output','Create Json bloc and output it in a field ou a file.'),(96,'LDAPInput','LDAP Input','Read data from LDAP host'),(97,'LDAPOutput','LDAP Output','Perform Insert, upsert, update, add or delete operations on records based on their DN (Distinguished  Name).'),(98,'LDIFInput','LDIF Input','Read data from LDIF files'),(99,'LoadFileInput','Load file content in memory','Load file content in memory'),(100,'LucidDBBulkLoader','LucidDB Bulk Loader','Load data into LucidDB by using their bulk load command in streaming mode. (Doesnt work on Windows!)'),(101,'LucidDBStreamingLoader','LucidDB Streaming Loader','Load data into LucidDB by using Remote Rows UDX.'),(102,'Mail','Mail','Send eMail.'),(103,'MailValidator','Mail Validator','Check if an email address is valid.'),(104,'Mapping','Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface'),(105,'MappingInput','Mapping input specification','Specify the input interface of a mapping'),(106,'MappingOutput','Mapping output specification','Specify the output interface of a mapping'),(107,'HadoopEnterPlugin','MapReduce Input','Enter a Hadoop Mapper or Reducer transformation'),(108,'HadoopExitPlugin','MapReduce Output','Exit a Hadoop Mapper or Reducer transformation '),(109,'MemoryGroupBy','Memory Group by','Builds aggregates in a group by fashion.\nThis step doesn\'t require sorted input.'),(110,'MergeJoin','Merge Join','Joins two streams on a given key and outputs a joined set. The input streams must be sorted on the join key'),(111,'MergeRows','Merge Rows (diff)','Merge two streams of rows, sorted on a certain key.  The two streams are compared and the equals, changed, deleted and new rows are flagged.'),(112,'StepMetastructure','Metadata structure of stream','This is a step to read the metadata of the incoming stream.'),(113,'AccessInput','Microsoft Access Input','Read data from a Microsoft Access file'),(114,'AccessOutput','Microsoft Access Output','Stores records into an MS-Access database table.'),(115,'ExcelInput','Microsoft Excel Input','Read data from Excel and OpenOffice Workbooks (XLS, XLSX, ODS).'),(116,'ExcelOutput','Microsoft Excel Output','Stores records into an Excel (XLS) document with formatting information.'),(117,'TypeExitExcelWriterStep','Microsoft Excel Writer','Writes or appends data to an Excel file'),(118,'ScriptValueMod','Modified Java Script Value','This is a modified plugin for the Scripting Values with improved interface and performance.\nWritten & donated to open source by Martin Lange, Proconis : http://www.proconis.de'),(119,'MondrianInput','Mondrian Input','Execute and retrieve data using an MDX query against a Pentaho Analyses OLAP server (Mondrian)'),(120,'MonetDBAgileMart','MonetDB Agile Mart','Load data into MonetDB for Agile BI use cases'),(121,'MonetDBBulkLoader','MonetDB Bulk Loader','Load data into MonetDB by using their bulk load command in streaming mode.'),(122,'MongoDbInput','MongoDB Input','Reads from a Mongo DB collection'),(123,'MongoDbOutput','MongoDB Output','Writes to a Mongo DB collection'),(124,'MultiwayMergeJoin','Multiway Merge Join','Multiway Merge Join'),(125,'MySQLBulkLoader','MySQL Bulk Loader','MySQL bulk loader step, loading data over a named pipe (not available on MS Windows)'),(126,'NullIf','Null if...','Sets a field value to null if it is equal to a constant value'),(127,'NumberRange','Number range','Create ranges based on numeric field'),(128,'OlapInput','OLAP Input','Execute and retrieve data using an MDX query against any XML/A OLAP datasource using olap4j'),(129,'OpenERPObjectDelete','OpenERP Object Delete','Deletes OpenERP objects'),(130,'OpenERPObjectInput','OpenERP Object Input','Reads data from OpenERP objects'),(131,'OpenERPObjectOutputImport','OpenERP Object Output','Writes data into OpenERP objects using the object import procedure'),(132,'OraBulkLoader','Oracle Bulk Loader','Use Oracle Bulk Loader to load data'),(133,'StepsMetrics','Output steps metrics','Return metrics for one or several steps'),(134,'PaloCellInput','Palo Cell Input','Reads data from a defined Palo Cube '),(135,'PaloCellOutput','Palo Cell Output','Writes data to a defined Palo Cube'),(136,'PaloDimInput','Palo Dim Input','Reads data from a defined Palo Dimension'),(137,'PaloDimOutput','Palo Dim Output','Writes data to defined Palo Dimension'),(138,'PentahoReportingOutput','Pentaho Reporting Output','Executes an existing report (PRPT)'),(139,'PGPDecryptStream','PGP Decrypt stream','Decrypt data stream with PGP'),(140,'PGPEncryptStream','PGP Encrypt stream','Encrypt data stream with PGP'),(141,'PGBulkLoader','PostgreSQL Bulk Loader','PostgreSQL Bulk Loader'),(142,'PrioritizeStreams','Prioritize streams','Prioritize streams in an order way.'),(143,'ProcessFiles','Process files','Process one file per row (copy or move or delete).\nThis step only accept filename in input.'),(144,'PropertyOutput','Properties Output','Write data to properties file'),(145,'PropertyInput','Property Input','Read data (key, value) from properties files.'),(146,'RegexEval','Regex Evaluation','Regular expression Evaluation\nThis step uses a regular expression to evaluate a field. It can also extract new fields out of an existing field with capturing groups.'),(147,'ReplaceString','Replace in string','Replace all occurences a word in a string with another word.'),(148,'ReservoirSampling','Reservoir Sampling','[Transform] Samples a fixed number of rows from the incoming stream'),(149,'Rest','REST Client','Consume RESTfull services.\nREpresentational State Transfer (REST) is a key design idiom that embraces a stateless client-server\narchitecture in which the web services are viewed as resources and can be identified by their URLs'),(150,'Denormaliser','Row denormaliser','Denormalises rows by looking up key-value pairs and by assigning them to new fields in the output rows.\nThis method aggregates and needs the input rows to be sorted on the grouping fields'),(151,'Flattener','Row flattener','Flattens consecutive rows based on the order in which they appear in the input stream'),(152,'Normaliser','Row Normaliser','De-normalised information can be normalised using this step type.'),(153,'RssInput','RSS Input','Read RSS feeds'),(154,'RssOutput','RSS Output','Read RSS stream.'),(155,'RuleAccumulator','Rule Accumulator','Execute a rule against a set of all incoming rows'),(156,'RuleExecutor','Rule Executor','Execute a rule against each row or a set of rows'),(157,'SSH','Run SSH commands','Run SSH commands and returns result.'),(158,'S3CSVINPUT','S3 CSV Input','S3 CSV Input'),(159,'S3FileOutputPlugin','S3 File Output','Create files in an S3 location'),(160,'SalesforceDelete','Salesforce Delete','Delete records in Salesforce module.'),(161,'SalesforceInput','Salesforce Input','!BaseStep.TypeTooltipDesc.SalesforceInput!'),(162,'SalesforceInsert','Salesforce Insert','Insert records in Salesforce module.'),(163,'SalesforceUpdate','Salesforce Update','Update records in Salesforce module.'),(164,'SalesforceUpsert','Salesforce Upsert','Insert or update records in Salesforce module.'),(165,'SampleRows','Sample rows','Filter rows based on the line number.'),(166,'SapInput','SAP Input','Read data from SAP ERP, optionally with parameters'),(167,'SASInput','SAS Input','This step reads files in sas7bdat (SAS) native format'),(168,'Script','Script','Calculate values by scripting in Ruby, Python, Groovy, JavaScript, ... (JSR-223)'),(169,'SecretKeyGenerator','Secret key generator','Generate secret key for algorithms such as DES, AES, TripleDES.'),(170,'SelectValues','Select values','Select or remove fields in a row.\nOptionally, set the field meta-data: type, length and precision.'),(171,'SyslogMessage','Send message to Syslog','Send message to Syslog server'),(172,'CubeOutput','Serialize to file','Write rows of data to a data cube'),(173,'SetValueField','Set field value','Set value of a field with another value field'),(174,'SetValueConstant','Set field value to a constant','Set value of a field to a constant'),(175,'FilesToResult','Set files in result','This step allows you to set filenames in the result of this transformation.\nSubsequent job entries can then use this information.'),(176,'SetSessionVariableStep','Set session variables','Set session variables in the current user session.'),(177,'SetVariable','Set Variables','Set environment variables based on a single input row.'),(178,'SFTPPut','SFTP Put','Upload a file or a stream file to remote host via SFTP'),(179,'SimpleMapping','Simple Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface.  This is the simplified version only allowing one input and one output data set.'),(180,'SingleThreader','Single Threader','Executes a transformation snippet in a single thread.  You need a standard mapping or a transformation with an Injector step where data from the parent transformation will arive in blocks.'),(181,'SocketReader','Socket reader','Socket reader.  A socket client that connects to a server (Socket Writer step).'),(182,'SocketWriter','Socket writer','Socket writer.  A socket server that can send rows of data to a socket reader.'),(183,'SortRows','Sort rows','Sort rows based upon field values (ascending or descending)'),(184,'SortedMerge','Sorted Merge','Sorted Merge'),(185,'SplitFieldToRows3','Split field to rows','Splits a single string field by delimiter and creates a new row for each split term'),(186,'FieldSplitter','Split Fields','When you want to split a single field into more then one, use this step type.'),(187,'SQLFileOutput','SQL File Output','Output SQL INSERT statements to file'),(188,'SSTableOutput','SSTable Output','Writes to a filesystem directory as a Cassandra SSTable'),(189,'StreamLookup','Stream lookup','Look up values coming from another stream in the transformation.'),(190,'XMLInputSax','Streaming XML Input','Read data from an XML file in a streaming fashing, working faster and consuming less memory'),(191,'StringOperations','String operations','Apply certain operations like trimming, padding and others to string value.'),(192,'StringCut','Strings cut','Strings cut (substring).'),(193,'SwitchCase','Switch / Case','Switch a row to a certain target step based on the case value in a field.'),(194,'SymmetricCryptoTrans','Symmetric Cryptography','Encrypt or decrypt a string using symmetric encryption.\nAvailable algorithms are DES, AES, TripleDES.'),(195,'SynchronizeAfterMerge','Synchronize after merge','This step perform insert/update/delete in one go based on the value of a field. '),(196,'TableAgileMart','Table Agile Mart','Load data into a table for Agile BI use cases'),(197,'TableCompare','Table Compare','Compares 2 tables and gives back a list of differences'),(198,'TableExists','Table exists','Check if a table exists on a specified connection'),(199,'TableInput','Table input','Read information from a database table.'),(200,'TableOutput','Table output','Write information to a database table'),(201,'TeraFast','Teradata Fastload Bulk Loader','The Teradata Fastload Bulk loader'),(202,'TeraDataBulkLoader','Teradata TPT Bulk Loader','Teradata TPT bulkloader, using tbuild command'),(203,'TextFileInput','Text file input','Read data from a text file in several formats.\nThis data can then be passed on to the next step(s)...'),(204,'TextFileOutput','Text file output','Write rows to a text file.'),(205,'TransExecutor','Transformation Executor','This step executes a Pentaho Data Integration transformation, sets parameters and passes rows.'),(206,'Unique','Unique rows','Remove double rows and leave only unique occurrences.\nThis works only on a sorted input.\nIf the input is not sorted, only double consecutive rows are handled correctly.'),(207,'UniqueRowsByHashSet','Unique rows (HashSet)','Remove double rows and leave only unique occurrences by using a HashSet.'),(208,'UnivariateStats','Univariate Statistics','This step computes some simple stats based on a single input field'),(209,'Update','Update','Update data in a database table based upon keys'),(210,'UserDefinedJavaClass','User Defined Java Class','This step allows you to program a step using Java code'),(211,'Janino','User Defined Java Expression','Calculate the result of a Java Expression using Janino'),(212,'ValueMapper','Value Mapper','Maps values of a certain field from one value to another'),(213,'WebServiceLookup','Web Services Lookup','Look up information using web services (WSDL)'),(214,'WriteToLog','Write to log','Write data to log'),(215,'XBaseInput','XBase input','Reads records from an XBase type of database file (DBF)'),(216,'XMLInput','XML Input','Read data from an XML file'),(217,'XMLInputStream','XML Input Stream (StAX)','This step is capable of processing very large and complex XML files very fast.'),(218,'XMLJoin','XML Join','Joins a stream of XML-Tags into a target XML string'),(219,'XMLOutput','XML Output','Write data to an XML file'),(220,'XSDValidator','XSD Validator','Validate XML source (files or streams) against XML Schema Definition.'),(221,'XSLT','XSL Transformation','Transform XML stream using XSL (eXtensible Stylesheet Language).'),(222,'YamlInput','Yaml Input ','Read YAML source (file or stream) parse them and convert them to rows and writes these to one or more output. '),(223,'ZipFile','Zip file','Zip a file.\nFilename will be extracted from incoming stream.');
/*!40000 ALTER TABLE `R_STEP_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANSFORMATION`
--

DROP TABLE IF EXISTS `R_TRANSFORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANSFORMATION` (
  `ID_TRANSFORMATION` bigint(20) NOT NULL,
  `ID_DIRECTORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `EXTENDED_DESCRIPTION` mediumtext,
  `TRANS_VERSION` varchar(255) DEFAULT NULL,
  `TRANS_STATUS` int(11) DEFAULT NULL,
  `ID_STEP_READ` int(11) DEFAULT NULL,
  `ID_STEP_WRITE` int(11) DEFAULT NULL,
  `ID_STEP_INPUT` int(11) DEFAULT NULL,
  `ID_STEP_OUTPUT` int(11) DEFAULT NULL,
  `ID_STEP_UPDATE` int(11) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  `USE_BATCHID` tinyint(1) DEFAULT NULL,
  `USE_LOGFIELD` tinyint(1) DEFAULT NULL,
  `ID_DATABASE_MAXDATE` int(11) DEFAULT NULL,
  `TABLE_NAME_MAXDATE` varchar(255) DEFAULT NULL,
  `FIELD_NAME_MAXDATE` varchar(255) DEFAULT NULL,
  `OFFSET_MAXDATE` double DEFAULT NULL,
  `DIFF_MAXDATE` double DEFAULT NULL,
  `CREATED_USER` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `MODIFIED_USER` varchar(255) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `SIZE_ROWSET` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANSFORMATION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANSFORMATION`
--

LOCK TABLES `R_TRANSFORMATION` WRITE;
/*!40000 ALTER TABLE `R_TRANSFORMATION` DISABLE KEYS */;
INSERT INTO `R_TRANSFORMATION` VALUES (2,0,'set_parameters',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,-1,NULL,1,1,-1,NULL,NULL,0,0,'-','2015-09-12 13:14:07','admin','2015-09-13 08:23:50',10000),(3,0,'get_variables',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,-1,NULL,1,1,-1,NULL,NULL,0,0,'admin','2011-06-20 16:59:30','admin','2015-09-13 11:22:26',10000);
/*!40000 ALTER TABLE `R_TRANSFORMATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_ATTRIBUTE`
--

DROP TABLE IF EXISTS `R_TRANS_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_ATTRIBUTE` (
  `ID_TRANS_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_TRANS_ATTRIBUTE`),
  UNIQUE KEY `IDX_TATT` (`ID_TRANSFORMATION`,`CODE`,`NR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_ATTRIBUTE`
--

LOCK TABLES `R_TRANS_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `R_TRANS_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `R_TRANS_ATTRIBUTE` VALUES (888,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(887,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(886,2,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(885,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(884,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(883,2,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(882,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(881,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(880,2,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(879,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(878,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(877,2,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(876,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(874,2,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(875,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(872,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(873,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(871,2,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(870,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(869,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(868,2,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(867,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(866,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(865,2,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(864,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(863,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(860,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(861,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(862,2,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(859,2,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(858,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(857,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(856,2,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(855,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(854,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(853,2,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(852,2,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(851,2,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(850,2,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(849,2,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(845,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID14',0,'OUTPUT_BUFFER_ROWS'),(848,2,0,'PERFORMANCELOG_TABLE_INTERVAL',0,NULL),(847,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(846,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME14',0,'OUTPUT_BUFFER_ROWS'),(844,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(843,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME13',0,'INPUT_BUFFER_ROWS'),(840,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME12',0,'ERRORS'),(841,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(842,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID13',0,'INPUT_BUFFER_ROWS'),(837,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME11',0,'LINES_REJECTED'),(839,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID12',0,'ERRORS'),(838,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(836,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID11',0,'LINES_REJECTED'),(835,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(831,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME9',0,'LINES_INPUT'),(832,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(833,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID10',0,'LINES_OUTPUT'),(834,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME10',0,'LINES_OUTPUT'),(830,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID9',0,'LINES_INPUT'),(829,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(828,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME8',0,'LINES_UPDATED'),(827,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID8',0,'LINES_UPDATED'),(826,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(825,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME7',0,'LINES_WRITTEN'),(824,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID7',0,'LINES_WRITTEN'),(823,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(821,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID6',0,'LINES_READ'),(822,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME6',0,'LINES_READ'),(820,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(817,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(818,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID5',0,'STEP_COPY'),(819,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME5',0,'STEP_COPY'),(815,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID4',0,'STEPNAME'),(816,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(814,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(811,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(812,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID3',0,'TRANSNAME'),(813,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(810,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME2',0,'LOGDATE'),(808,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(809,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID2',0,'LOGDATE'),(807,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME1',0,'SEQ_NR'),(806,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID1',0,'SEQ_NR'),(805,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(804,2,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(803,2,0,'PERFORMANCE_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(802,2,0,'PERFORMANCE_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(801,2,0,'PERFORMANCE_LOG_TABLE_TABLE_NAME',0,NULL),(800,2,0,'PERFORMANCE_LOG_TABLE_SCHEMA_NAME',0,NULL),(799,2,0,'PERFORMANCE_LOG_TABLE_CONNECTION_NAME',0,NULL),(798,2,0,'STEP_LOG_TABLE_FIELD_ENABLED13',0,'N'),(797,2,0,'STEP_LOG_TABLE_FIELD_NAME13',0,'LOG_FIELD'),(796,2,0,'STEP_LOG_TABLE_FIELD_ID13',0,'LOG_FIELD'),(795,2,0,'STEP_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(794,2,0,'STEP_LOG_TABLE_FIELD_NAME12',0,'ERRORS'),(793,2,0,'STEP_LOG_TABLE_FIELD_ID12',0,'ERRORS'),(792,2,0,'STEP_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(791,2,0,'STEP_LOG_TABLE_FIELD_NAME11',0,'LINES_REJECTED'),(790,2,0,'STEP_LOG_TABLE_FIELD_ID11',0,'LINES_REJECTED'),(789,2,0,'STEP_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(788,2,0,'STEP_LOG_TABLE_FIELD_NAME10',0,'LINES_OUTPUT'),(787,2,0,'STEP_LOG_TABLE_FIELD_ID10',0,'LINES_OUTPUT'),(786,2,0,'STEP_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(785,2,0,'STEP_LOG_TABLE_FIELD_NAME9',0,'LINES_INPUT'),(784,2,0,'STEP_LOG_TABLE_FIELD_ID9',0,'LINES_INPUT'),(783,2,0,'STEP_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(782,2,0,'STEP_LOG_TABLE_FIELD_NAME8',0,'LINES_UPDATED'),(781,2,0,'STEP_LOG_TABLE_FIELD_ID8',0,'LINES_UPDATED'),(780,2,0,'STEP_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(779,2,0,'STEP_LOG_TABLE_FIELD_NAME7',0,'LINES_WRITTEN'),(778,2,0,'STEP_LOG_TABLE_FIELD_ID7',0,'LINES_WRITTEN'),(777,2,0,'STEP_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(776,2,0,'STEP_LOG_TABLE_FIELD_NAME6',0,'LINES_READ'),(775,2,0,'STEP_LOG_TABLE_FIELD_ID6',0,'LINES_READ'),(774,2,0,'STEP_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(773,2,0,'STEP_LOG_TABLE_FIELD_NAME5',0,'STEP_COPY'),(772,2,0,'STEP_LOG_TABLE_FIELD_ID5',0,'STEP_COPY'),(771,2,0,'STEP_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(770,2,0,'STEP_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(769,2,0,'STEP_LOG_TABLE_FIELD_ID4',0,'STEPNAME'),(768,2,0,'STEP_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(767,2,0,'STEP_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(766,2,0,'STEP_LOG_TABLE_FIELD_ID3',0,'TRANSNAME'),(765,2,0,'STEP_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(764,2,0,'STEP_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(763,2,0,'STEP_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(762,2,0,'STEP_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(761,2,0,'STEP_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(757,2,0,'STEP_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(758,2,0,'STEP_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(759,2,0,'STEP_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(760,2,0,'STEP_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(756,2,0,'STEP_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(755,2,0,'STEP_LOG_TABLE_TABLE_NAME',0,NULL),(754,2,0,'STEP_LOG_TABLE_SCHEMA_NAME',0,NULL),(753,2,0,'STEP_LOG_TABLE_CONNECTION_NAME',0,NULL),(748,2,0,'TRANS_LOG_TABLE_FIELD_ID19',0,'CLIENT'),(749,2,0,'TRANS_LOG_TABLE_FIELD_NAME19',0,'CLIENT'),(750,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED19',0,'N'),(751,2,0,'TRANSLOG_TABLE_INTERVAL',0,NULL),(752,2,0,'TRANSLOG_TABLE_SIZE_LIMIT',0,NULL),(747,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED18',0,'N'),(746,2,0,'TRANS_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(743,2,0,'TRANS_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(744,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED17',0,'N'),(745,2,0,'TRANS_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(742,2,0,'TRANS_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(741,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(740,2,0,'TRANS_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(738,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(739,2,0,'TRANS_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(737,2,0,'TRANS_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(736,2,0,'TRANS_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(735,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(734,2,0,'TRANS_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(733,2,0,'TRANS_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(732,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(731,2,0,'TRANS_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(730,2,0,'TRANS_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(729,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(728,2,0,'TRANS_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(727,2,0,'TRANS_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(726,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(725,2,0,'TRANS_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(724,2,0,'TRANS_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(723,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(722,2,0,'TRANS_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(721,2,0,'TRANS_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(720,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT9',0,NULL),(719,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(718,2,0,'TRANS_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(717,2,0,'TRANS_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(716,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT8',0,NULL),(715,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(714,2,0,'TRANS_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(713,2,0,'TRANS_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(712,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT7',0,NULL),(710,2,0,'TRANS_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(711,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(709,2,0,'TRANS_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(708,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT6',0,NULL),(705,2,0,'TRANS_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(706,2,0,'TRANS_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(707,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(704,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT5',0,NULL),(703,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(702,2,0,'TRANS_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(701,2,0,'TRANS_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(700,2,0,'TRANS_LOG_TABLE_FIELD_SUBJECT4',0,NULL),(699,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(698,2,0,'TRANS_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(697,2,0,'TRANS_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(696,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(695,2,0,'TRANS_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(694,2,0,'TRANS_LOG_TABLE_FIELD_ID3',0,'STATUS'),(693,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(692,2,0,'TRANS_LOG_TABLE_FIELD_NAME2',0,'TRANSNAME'),(691,2,0,'TRANS_LOG_TABLE_FIELD_ID2',0,'TRANSNAME'),(690,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(689,2,0,'TRANS_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(688,2,0,'TRANS_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(687,2,0,'TRANS_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(686,2,0,'TRANS_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(685,2,0,'TRANS_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(684,2,0,'TRANS_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(683,2,0,'TRANS_LOG_TABLE_TABLE_NAME',0,NULL),(682,2,0,'TRANS_LOG_TABLE_SCHEMA_NAME',0,NULL),(681,2,0,'TRANS_LOG_TABLE_CONNECTION_NAME',0,NULL),(680,2,0,'SLEEP_TIME_FULL',50,NULL),(679,2,0,'SLEEP_TIME_EMPTY',50,NULL),(678,2,0,'TRANSFORMATION_TYPE',0,'Normal'),(677,2,0,'LOG_INTERVAL',0,NULL),(676,2,0,'LOG_SIZE_LIMIT',0,NULL),(673,2,0,'STEP_PERFORMANCE_CAPTURING_DELAY',1000,NULL),(675,2,0,'STEP_PERFORMANCE_LOG_TABLE',0,NULL),(674,2,0,'STEP_PERFORMANCE_CAPTURING_SIZE_LIMIT',0,'100'),(672,2,0,'CAPTURE_STEP_PERFORMANCE',0,'N'),(671,2,0,'SHARED_FILE',0,NULL),(670,2,0,'USING_THREAD_PRIORITIES',0,'Y'),(669,2,0,'FEEDBACK_SIZE',50000,NULL),(668,2,0,'FEEDBACK_SHOWN',0,'Y'),(667,2,0,'UNIQUE_CONNECTIONS',0,'N'),(1110,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(1109,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),(1108,3,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),(1107,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(1106,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),(1105,3,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),(1104,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(1103,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),(1102,3,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),(1101,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(1100,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),(1099,3,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),(1098,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(1097,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),(1096,3,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),(1095,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(1094,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),(1093,3,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),(1092,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(1091,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),(1090,3,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),(1089,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(1088,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),(1087,3,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),(1086,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(1085,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),(1084,3,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),(1083,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(1082,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(1081,3,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(1080,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(1079,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(1078,3,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(1077,3,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(1076,3,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(1075,3,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(1074,3,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(1073,3,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),(1072,3,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),(1071,3,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),(1070,3,0,'PERFORMANCELOG_TABLE_INTERVAL',0,NULL),(1069,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(1068,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME14',0,'OUTPUT_BUFFER_ROWS'),(1067,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID14',0,'OUTPUT_BUFFER_ROWS'),(1066,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(1065,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME13',0,'INPUT_BUFFER_ROWS'),(1064,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID13',0,'INPUT_BUFFER_ROWS'),(1063,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(1062,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME12',0,'ERRORS'),(1061,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID12',0,'ERRORS'),(1060,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(1059,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME11',0,'LINES_REJECTED'),(1058,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID11',0,'LINES_REJECTED'),(1057,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(1056,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME10',0,'LINES_OUTPUT'),(1055,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID10',0,'LINES_OUTPUT'),(1054,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(1053,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME9',0,'LINES_INPUT'),(1052,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID9',0,'LINES_INPUT'),(1051,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(1050,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME8',0,'LINES_UPDATED'),(1049,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID8',0,'LINES_UPDATED'),(1048,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(1047,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME7',0,'LINES_WRITTEN'),(1046,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID7',0,'LINES_WRITTEN'),(1045,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(1044,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME6',0,'LINES_READ'),(1043,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID6',0,'LINES_READ'),(1042,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(1041,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME5',0,'STEP_COPY'),(1040,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID5',0,'STEP_COPY'),(1039,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(1038,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(1037,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID4',0,'STEPNAME'),(1036,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(1035,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(1034,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID3',0,'TRANSNAME'),(1033,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(1032,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME2',0,'LOGDATE'),(1031,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID2',0,'LOGDATE'),(1030,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(1029,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME1',0,'SEQ_NR'),(1028,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID1',0,'SEQ_NR'),(1027,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(1026,3,0,'PERFORMANCE_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(1025,3,0,'PERFORMANCE_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(1024,3,0,'PERFORMANCE_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(1023,3,0,'PERFORMANCE_LOG_TABLE_TABLE_NAME',0,NULL),(1022,3,0,'PERFORMANCE_LOG_TABLE_SCHEMA_NAME',0,NULL),(1021,3,0,'PERFORMANCE_LOG_TABLE_CONNECTION_NAME',0,NULL),(1020,3,0,'STEP_LOG_TABLE_FIELD_ENABLED13',0,'N'),(1019,3,0,'STEP_LOG_TABLE_FIELD_NAME13',0,'LOG_FIELD'),(1018,3,0,'STEP_LOG_TABLE_FIELD_ID13',0,'LOG_FIELD'),(1017,3,0,'STEP_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(1016,3,0,'STEP_LOG_TABLE_FIELD_NAME12',0,'ERRORS'),(1015,3,0,'STEP_LOG_TABLE_FIELD_ID12',0,'ERRORS'),(1014,3,0,'STEP_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(1013,3,0,'STEP_LOG_TABLE_FIELD_NAME11',0,'LINES_REJECTED'),(1012,3,0,'STEP_LOG_TABLE_FIELD_ID11',0,'LINES_REJECTED'),(1011,3,0,'STEP_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(1010,3,0,'STEP_LOG_TABLE_FIELD_NAME10',0,'LINES_OUTPUT'),(1009,3,0,'STEP_LOG_TABLE_FIELD_ID10',0,'LINES_OUTPUT'),(1008,3,0,'STEP_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(1007,3,0,'STEP_LOG_TABLE_FIELD_NAME9',0,'LINES_INPUT'),(1006,3,0,'STEP_LOG_TABLE_FIELD_ID9',0,'LINES_INPUT'),(1005,3,0,'STEP_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(1004,3,0,'STEP_LOG_TABLE_FIELD_NAME8',0,'LINES_UPDATED'),(1003,3,0,'STEP_LOG_TABLE_FIELD_ID8',0,'LINES_UPDATED'),(1002,3,0,'STEP_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(1001,3,0,'STEP_LOG_TABLE_FIELD_NAME7',0,'LINES_WRITTEN'),(1000,3,0,'STEP_LOG_TABLE_FIELD_ID7',0,'LINES_WRITTEN'),(999,3,0,'STEP_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(998,3,0,'STEP_LOG_TABLE_FIELD_NAME6',0,'LINES_READ'),(997,3,0,'STEP_LOG_TABLE_FIELD_ID6',0,'LINES_READ'),(996,3,0,'STEP_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(995,3,0,'STEP_LOG_TABLE_FIELD_NAME5',0,'STEP_COPY'),(994,3,0,'STEP_LOG_TABLE_FIELD_ID5',0,'STEP_COPY'),(993,3,0,'STEP_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(992,3,0,'STEP_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),(991,3,0,'STEP_LOG_TABLE_FIELD_ID4',0,'STEPNAME'),(990,3,0,'STEP_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(989,3,0,'STEP_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),(988,3,0,'STEP_LOG_TABLE_FIELD_ID3',0,'TRANSNAME'),(987,3,0,'STEP_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(986,3,0,'STEP_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),(985,3,0,'STEP_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),(984,3,0,'STEP_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(983,3,0,'STEP_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(982,3,0,'STEP_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(981,3,0,'STEP_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(980,3,0,'STEP_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(979,3,0,'STEP_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(978,3,0,'STEP_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(977,3,0,'STEP_LOG_TABLE_TABLE_NAME',0,NULL),(976,3,0,'STEP_LOG_TABLE_SCHEMA_NAME',0,NULL),(975,3,0,'STEP_LOG_TABLE_CONNECTION_NAME',0,NULL),(974,3,0,'TRANSLOG_TABLE_SIZE_LIMIT',0,NULL),(973,3,0,'TRANSLOG_TABLE_INTERVAL',0,NULL),(972,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED19',0,'N'),(971,3,0,'TRANS_LOG_TABLE_FIELD_NAME19',0,'CLIENT'),(970,3,0,'TRANS_LOG_TABLE_FIELD_ID19',0,'CLIENT'),(969,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED18',0,'N'),(968,3,0,'TRANS_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),(967,3,0,'TRANS_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),(966,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED17',0,'N'),(965,3,0,'TRANS_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),(964,3,0,'TRANS_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),(963,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED16',0,'Y'),(943,3,0,'TRANS_LOG_TABLE_FIELD_ID10',0,'ERRORS'),(944,3,0,'TRANS_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),(945,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED10',0,'Y'),(946,3,0,'TRANS_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),(947,3,0,'TRANS_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),(948,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED11',0,'Y'),(949,3,0,'TRANS_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),(950,3,0,'TRANS_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),(951,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED12',0,'Y'),(952,3,0,'TRANS_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),(953,3,0,'TRANS_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),(954,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED13',0,'Y'),(955,3,0,'TRANS_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),(956,3,0,'TRANS_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),(957,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED14',0,'Y'),(958,3,0,'TRANS_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),(959,3,0,'TRANS_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),(960,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED15',0,'Y'),(961,3,0,'TRANS_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),(962,3,0,'TRANS_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),(941,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED9',0,'Y'),(942,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT9',0,NULL),(940,3,0,'TRANS_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),(939,3,0,'TRANS_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),(938,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT8',0,NULL),(937,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED8',0,'Y'),(936,3,0,'TRANS_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),(935,3,0,'TRANS_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),(934,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT7',0,NULL),(933,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED7',0,'Y'),(932,3,0,'TRANS_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),(930,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT6',0,NULL),(931,3,0,'TRANS_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),(928,3,0,'TRANS_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),(929,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED6',0,'Y'),(927,3,0,'TRANS_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),(925,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED5',0,'Y'),(926,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT5',0,NULL),(924,3,0,'TRANS_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),(923,3,0,'TRANS_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),(922,3,0,'TRANS_LOG_TABLE_FIELD_SUBJECT4',0,NULL),(921,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED4',0,'Y'),(920,3,0,'TRANS_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),(919,3,0,'TRANS_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),(918,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED3',0,'Y'),(917,3,0,'TRANS_LOG_TABLE_FIELD_NAME3',0,'STATUS'),(915,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED2',0,'Y'),(916,3,0,'TRANS_LOG_TABLE_FIELD_ID3',0,'STATUS'),(914,3,0,'TRANS_LOG_TABLE_FIELD_NAME2',0,'TRANSNAME'),(912,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED1',0,'Y'),(913,3,0,'TRANS_LOG_TABLE_FIELD_ID2',0,'TRANSNAME'),(911,3,0,'TRANS_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),(910,3,0,'TRANS_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),(909,3,0,'TRANS_LOG_TABLE_FIELD_ENABLED0',0,'Y'),(908,3,0,'TRANS_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),(907,3,0,'TRANS_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),(906,3,0,'TRANS_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),(905,3,0,'TRANS_LOG_TABLE_TABLE_NAME',0,NULL),(904,3,0,'TRANS_LOG_TABLE_SCHEMA_NAME',0,NULL),(903,3,0,'TRANS_LOG_TABLE_CONNECTION_NAME',0,NULL),(902,3,0,'SLEEP_TIME_FULL',50,NULL),(901,3,0,'SLEEP_TIME_EMPTY',50,NULL),(900,3,0,'TRANSFORMATION_TYPE',0,'Normal'),(899,3,0,'LOG_INTERVAL',0,NULL),(898,3,0,'LOG_SIZE_LIMIT',0,NULL),(897,3,0,'STEP_PERFORMANCE_LOG_TABLE',0,NULL),(895,3,0,'STEP_PERFORMANCE_CAPTURING_DELAY',1000,NULL),(896,3,0,'STEP_PERFORMANCE_CAPTURING_SIZE_LIMIT',0,'100'),(894,3,0,'CAPTURE_STEP_PERFORMANCE',0,'N'),(893,3,0,'SHARED_FILE',0,NULL),(892,3,0,'USING_THREAD_PRIORITIES',0,'Y'),(891,3,0,'FEEDBACK_SIZE',50000,NULL),(890,3,0,'FEEDBACK_SHOWN',0,'Y'),(889,3,0,'UNIQUE_CONNECTIONS',0,'N');
/*!40000 ALTER TABLE `R_TRANS_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_CLUSTER`
--

DROP TABLE IF EXISTS `R_TRANS_CLUSTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_CLUSTER` (
  `ID_TRANS_CLUSTER` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_CLUSTER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_CLUSTER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_CLUSTER`
--

LOCK TABLES `R_TRANS_CLUSTER` WRITE;
/*!40000 ALTER TABLE `R_TRANS_CLUSTER` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_CLUSTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_HOP`
--

DROP TABLE IF EXISTS `R_TRANS_HOP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_HOP` (
  `ID_TRANS_HOP` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP_FROM` int(11) DEFAULT NULL,
  `ID_STEP_TO` int(11) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_HOP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_HOP`
--

LOCK TABLES `R_TRANS_HOP` WRITE;
/*!40000 ALTER TABLE `R_TRANS_HOP` DISABLE KEYS */;
INSERT INTO `R_TRANS_HOP` VALUES (4,2,8,7,1),(5,3,10,9,1);
/*!40000 ALTER TABLE `R_TRANS_HOP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_LOCK`
--

DROP TABLE IF EXISTS `R_TRANS_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_LOCK` (
  `ID_TRANS_LOCK` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `LOCK_MESSAGE` mediumtext,
  `LOCK_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_LOCK`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_LOCK`
--

LOCK TABLES `R_TRANS_LOCK` WRITE;
/*!40000 ALTER TABLE `R_TRANS_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_NOTE`
--

DROP TABLE IF EXISTS `R_TRANS_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_NOTE` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_NOTE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_NOTE`
--

LOCK TABLES `R_TRANS_NOTE` WRITE;
/*!40000 ALTER TABLE `R_TRANS_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_PARTITION_SCHEMA`
--

DROP TABLE IF EXISTS `R_TRANS_PARTITION_SCHEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_PARTITION_SCHEMA` (
  `ID_TRANS_PARTITION_SCHEMA` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_PARTITION_SCHEMA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_PARTITION_SCHEMA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_PARTITION_SCHEMA`
--

LOCK TABLES `R_TRANS_PARTITION_SCHEMA` WRITE;
/*!40000 ALTER TABLE `R_TRANS_PARTITION_SCHEMA` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_PARTITION_SCHEMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_SLAVE`
--

DROP TABLE IF EXISTS `R_TRANS_SLAVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_SLAVE` (
  `ID_TRANS_SLAVE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_SLAVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_SLAVE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_SLAVE`
--

LOCK TABLES `R_TRANS_SLAVE` WRITE;
/*!40000 ALTER TABLE `R_TRANS_SLAVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_SLAVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_TRANS_STEP_CONDITION`
--

DROP TABLE IF EXISTS `R_TRANS_STEP_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_TRANS_STEP_CONDITION` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `ID_CONDITION` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_TRANS_STEP_CONDITION`
--

LOCK TABLES `R_TRANS_STEP_CONDITION` WRITE;
/*!40000 ALTER TABLE `R_TRANS_STEP_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_TRANS_STEP_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_USER`
--

DROP TABLE IF EXISTS `R_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_USER` (
  `ID_USER` bigint(20) NOT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_USER`
--

LOCK TABLES `R_USER` WRITE;
/*!40000 ALTER TABLE `R_USER` DISABLE KEYS */;
INSERT INTO `R_USER` VALUES (1,'admin','2be98afc86aa7f2e4cb79ce71da9fa6d4','Administrator','User manager',1),(2,'guest','2be98afc86aa7f2e4cb79ce77cb97bcce','Guest account','Read-only guest account',1);
/*!40000 ALTER TABLE `R_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_VALUE`
--

DROP TABLE IF EXISTS `R_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_VALUE` (
  `ID_VALUE` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUE_TYPE` varchar(255) DEFAULT NULL,
  `VALUE_STR` varchar(255) DEFAULT NULL,
  `IS_NULL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_VALUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_VALUE`
--

LOCK TABLES `R_VALUE` WRITE;
/*!40000 ALTER TABLE `R_VALUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `R_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_VERSION`
--

DROP TABLE IF EXISTS `R_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_VERSION` (
  `ID_VERSION` bigint(20) NOT NULL,
  `MAJOR_VERSION` int(11) DEFAULT NULL,
  `MINOR_VERSION` int(11) DEFAULT NULL,
  `UPGRADE_DATE` datetime DEFAULT NULL,
  `IS_UPGRADE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_VERSION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_VERSION`
--

LOCK TABLES `R_VERSION` WRITE;
/*!40000 ALTER TABLE `R_VERSION` DISABLE KEYS */;
INSERT INTO `R_VERSION` VALUES (1,5,0,'2015-09-06 21:03:59',1);
/*!40000 ALTER TABLE `R_VERSION` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-23 23:28:07
