-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: patdoctor
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add advancederivatives',6,'add_advancederivatives'),(17,'Can change advancederivatives',6,'change_advancederivatives'),(18,'Can delete advancederivatives',6,'delete_advancederivatives'),(19,'Can add healthhistory',7,'add_healthhistory'),(20,'Can change healthhistory',7,'change_healthhistory'),(21,'Can delete healthhistory',7,'delete_healthhistory'),(22,'Can add amendments',8,'add_amendments'),(23,'Can change amendments',8,'change_amendments'),(24,'Can delete amendments',8,'delete_amendments'),(25,'Can add procedure',9,'add_procedure'),(26,'Can change procedure',9,'change_procedure'),(27,'Can delete procedure',9,'delete_procedure'),(28,'Can add inpatientdetails',10,'add_inpatientdetails'),(29,'Can change inpatientdetails',10,'change_inpatientdetails'),(30,'Can delete inpatientdetails',10,'delete_inpatientdetails'),(31,'Can add doctornote',11,'add_doctornote'),(32,'Can change doctornote',11,'change_doctornote'),(33,'Can delete doctornote',11,'delete_doctornote'),(34,'Can add patientproblems',12,'add_patientproblems'),(35,'Can change patientproblems',12,'change_patientproblems'),(36,'Can delete patientproblems',12,'delete_patientproblems'),(37,'Can add vaccines',13,'add_vaccines'),(38,'Can change vaccines',13,'change_vaccines'),(39,'Can delete vaccines',13,'delete_vaccines'),(40,'Can add referalls',14,'add_referalls'),(41,'Can change referalls',14,'change_referalls'),(42,'Can delete referalls',14,'delete_referalls'),(43,'Can add vitals',15,'add_vitals'),(44,'Can change vitals',15,'change_vitals'),(45,'Can delete vitals',15,'delete_vitals'),(46,'Can add socialhistory',16,'add_socialhistory'),(47,'Can change socialhistory',16,'change_socialhistory'),(48,'Can delete socialhistory',16,'delete_socialhistory'),(49,'Can add patient allert',17,'add_patientallert'),(50,'Can change patient allert',17,'change_patientallert'),(51,'Can delete patient allert',17,'delete_patientallert'),(52,'Can add testsresults',18,'add_testsresults'),(53,'Can change testsresults',18,'change_testsresults'),(54,'Can delete testsresults',18,'delete_testsresults'),(55,'Can add alert',19,'add_alert'),(56,'Can change alert',19,'change_alert'),(57,'Can delete alert',19,'delete_alert'),(58,'Can add visitreson',20,'add_visitreson'),(59,'Can change visitreson',20,'change_visitreson'),(60,'Can delete visitreson',20,'delete_visitreson'),(61,'Can add symtomes',21,'add_symtomes'),(62,'Can change symtomes',21,'change_symtomes'),(63,'Can delete symtomes',21,'delete_symtomes'),(64,'Can add familyhistory',22,'add_familyhistory'),(65,'Can change familyhistory',22,'change_familyhistory'),(66,'Can delete familyhistory',22,'delete_familyhistory'),(67,'Can add allerirs',23,'add_allerirs'),(68,'Can change allerirs',23,'change_allerirs'),(69,'Can delete allerirs',23,'delete_allerirs'),(70,'Can add reportfiles',24,'add_reportfiles'),(71,'Can change reportfiles',24,'change_reportfiles'),(72,'Can delete reportfiles',24,'delete_reportfiles'),(73,'Can add patient status',25,'add_patientstatus'),(74,'Can change patient status',25,'change_patientstatus'),(75,'Can delete patient status',25,'delete_patientstatus'),(76,'Can add goals',26,'add_goals'),(77,'Can change goals',26,'change_goals'),(78,'Can delete goals',26,'delete_goals'),(79,'Can add medications',27,'add_medications'),(80,'Can change medications',27,'change_medications'),(81,'Can delete medications',27,'delete_medications'),(82,'Can add illnesssymtoms',28,'add_illnesssymtoms'),(83,'Can change illnesssymtoms',28,'change_illnesssymtoms'),(84,'Can delete illnesssymtoms',28,'delete_illnesssymtoms'),(85,'Can add laboratorist',29,'add_laboratorist'),(86,'Can change laboratorist',29,'change_laboratorist'),(87,'Can delete laboratorist',29,'delete_laboratorist'),(88,'Can add doctors',30,'add_doctors'),(89,'Can change doctors',30,'change_doctors'),(90,'Can delete doctors',30,'delete_doctors'),(91,'Can add nurse',31,'add_nurse'),(92,'Can change nurse',31,'change_nurse'),(93,'Can delete nurse',31,'delete_nurse'),(94,'Can add user',32,'add_user'),(95,'Can change user',32,'change_user'),(96,'Can delete user',32,'delete_user'),(97,'Can add usertypes',33,'add_usertypes'),(98,'Can change usertypes',33,'change_usertypes'),(99,'Can delete usertypes',33,'delete_usertypes'),(100,'Can add patient',34,'add_patient'),(101,'Can change patient',34,'change_patient'),(102,'Can delete patient',34,'delete_patient'),(103,'Can add pharmacist',35,'add_pharmacist'),(104,'Can change pharmacist',35,'change_pharmacist'),(105,'Can delete pharmacist',35,'delete_pharmacist'),(106,'Can add profile',36,'add_profile'),(107,'Can change profile',36,'change_profile'),(108,'Can delete profile',36,'delete_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_usermanagement_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usermanagement_user_id` FOREIGN KEY (`user_id`) REFERENCES `usermanagement_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'contenttypes','contenttype'),(6,'patientmanagement','advancederivatives'),(19,'patientmanagement','alert'),(23,'patientmanagement','allerirs'),(8,'patientmanagement','amendments'),(11,'patientmanagement','doctornote'),(22,'patientmanagement','familyhistory'),(26,'patientmanagement','goals'),(7,'patientmanagement','healthhistory'),(28,'patientmanagement','illnesssymtoms'),(10,'patientmanagement','inpatientdetails'),(27,'patientmanagement','medications'),(17,'patientmanagement','patientallert'),(12,'patientmanagement','patientproblems'),(25,'patientmanagement','patientstatus'),(9,'patientmanagement','procedure'),(14,'patientmanagement','referalls'),(24,'patientmanagement','reportfiles'),(16,'patientmanagement','socialhistory'),(21,'patientmanagement','symtomes'),(18,'patientmanagement','testsresults'),(13,'patientmanagement','vaccines'),(20,'patientmanagement','visitreson'),(15,'patientmanagement','vitals'),(5,'sessions','session'),(30,'usermanagement','doctors'),(29,'usermanagement','laboratorist'),(31,'usermanagement','nurse'),(34,'usermanagement','patient'),(35,'usermanagement','pharmacist'),(36,'usermanagement','profile'),(32,'usermanagement','user'),(33,'usermanagement','usertypes');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-05-13 07:52:18.495000'),(2,'contenttypes','0002_remove_content_type_name','2019-05-13 07:52:19.666000'),(3,'auth','0001_initial','2019-05-13 07:52:24.010000'),(4,'auth','0002_alter_permission_name_max_length','2019-05-13 07:52:24.400000'),(5,'auth','0003_alter_user_email_max_length','2019-05-13 07:52:24.670000'),(6,'auth','0004_alter_user_username_opts','2019-05-13 07:52:24.840000'),(7,'auth','0005_alter_user_last_login_null','2019-05-13 07:52:24.931000'),(8,'auth','0006_require_contenttypes_0002','2019-05-13 07:52:24.971000'),(9,'auth','0007_alter_validators_add_error_messages','2019-05-13 07:52:25.021000'),(10,'auth','0008_alter_user_username_max_length','2019-05-13 07:52:25.111000'),(11,'usermanagement','0001_initial','2019-05-13 07:52:49.437000'),(12,'admin','0001_initial','2019-05-13 07:52:51.670000'),(13,'admin','0002_logentry_remove_auto_add','2019-05-13 07:52:51.750000'),(14,'patientmanagement','0001_initial','2019-05-13 07:52:59.396000'),(15,'patientmanagement','0002_auto_20190513_1322','2019-05-13 07:53:33.919000'),(16,'sessions','0001_initial','2019-05-13 07:53:34.454000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0m32pqzfo06xifn3afxwjy0y9l2x4l5x','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 08:07:14.332000'),('1t0dfjfiz2a72o9qhfw63d3ha16yn69x','YzE4YjIyNWQ4YTM0NDk2NTI3NmM2ZjI0MjU2ZTgyNGQyYTU1ZDU2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2019-05-28 07:55:04.254000'),('1xpa9lxuo4oqh3nk1y9nv0ish94uu6n5','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-27 11:34:19.936000'),('27t9qx9elpfbmmeqe0gqdehfa65gbigd','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 06:46:12.527000'),('6vifzijhfq4kn543ut0pnv13sogxkg1u','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 06:34:30.884000'),('ags4lvvuwsgx3l2fvchxo5pkd02bamza','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 06:20:21.440000'),('bjybnimsy81cyko7539j09oan8g7rt1z','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 08:14:49.151000'),('jva24qgvakbx8icirgg96i7rnssatj3u','YzE4YjIyNWQ4YTM0NDk2NTI3NmM2ZjI0MjU2ZTgyNGQyYTU1ZDU2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2019-05-28 05:32:20.646000'),('o1mqurulqwsprgecy1jtv3opd4fm6e9b','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 07:01:03.271000'),('onropu572iykyvbpkjdjlkup543pe5p2','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-27 11:03:38.667000'),('p3gt5jxfugx6msdpmka2qxirt8kfwv5e','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 08:09:24.652000'),('qu6y04ktl5b2bz4fiexlbfc9ahtafc61','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 05:39:09.691000'),('xro1k84qgpuqdlmfnyutujdx9p6gj8mx','NTRiOTI2MTRkMWVhMWU3YTEzNmY2ZjdmZWQxMDhmNjU0ZWM4NDZiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlMGVmMDhkNWI0NTNlZGM5YzUyNzliNWJlMGVmNGE4YWRiM2VkMzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-28 03:52:39.411000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_advancederivatives`
--

DROP TABLE IF EXISTS `patientmanagement_advancederivatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_advancederivatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `derivatives` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_ad_patient_id_4ccce354_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_ad_patient_id_4ccce354_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_advancederivatives`
--

LOCK TABLES `patientmanagement_advancederivatives` WRITE;
/*!40000 ALTER TABLE `patientmanagement_advancederivatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_advancederivatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_alert`
--

DROP TABLE IF EXISTS `patientmanagement_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientalert` longtext NOT NULL,
  `visiabilitytype` varchar(20) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_al_patient_id_8d1026bb_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_al_patient_id_8d1026bb_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_alert`
--

LOCK TABLES `patientmanagement_alert` WRITE;
/*!40000 ALTER TABLE `patientmanagement_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_allerirs`
--

DROP TABLE IF EXISTS `patientmanagement_allerirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_allerirs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alergytype` varchar(20) DEFAULT NULL,
  `allergien` varchar(80) DEFAULT NULL,
  `reaction` longtext,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_al_patient_id_eb904db0_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_al_patient_id_eb904db0_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_allerirs`
--

LOCK TABLES `patientmanagement_allerirs` WRITE;
/*!40000 ALTER TABLE `patientmanagement_allerirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_allerirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_amendments`
--

DROP TABLE IF EXISTS `patientmanagement_amendments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_amendments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amendmentssource` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `statusdescription` varchar(150) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_am_patient_id_75b988e1_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_am_patient_id_75b988e1_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_amendments`
--

LOCK TABLES `patientmanagement_amendments` WRITE;
/*!40000 ALTER TABLE `patientmanagement_amendments` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_amendments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_doctornote`
--

DROP TABLE IF EXISTS `patientmanagement_doctornote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_doctornote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes` varchar(150) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_do_patient_id_9a0f9557_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_do_patient_id_9a0f9557_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_doctornote`
--

LOCK TABLES `patientmanagement_doctornote` WRITE;
/*!40000 ALTER TABLE `patientmanagement_doctornote` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_doctornote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_familyhistory`
--

DROP TABLE IF EXISTS `patientmanagement_familyhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_familyhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relationtype` varchar(20) DEFAULT NULL,
  `description` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `updtedon` datetime(6) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_fa_patient_id_becc11e9_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_fa_patient_id_becc11e9_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_familyhistory`
--

LOCK TABLES `patientmanagement_familyhistory` WRITE;
/*!40000 ALTER TABLE `patientmanagement_familyhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_familyhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_goals`
--

DROP TABLE IF EXISTS `patientmanagement_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `fromdated` date NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_go_patient_id_743c494e_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_go_patient_id_743c494e_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_goals`
--

LOCK TABLES `patientmanagement_goals` WRITE;
/*!40000 ALTER TABLE `patientmanagement_goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_healthhistory`
--

DROP TABLE IF EXISTS `patientmanagement_healthhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_healthhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `updtedon` datetime(6) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_he_patient_id_3d1b92d7_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_he_patient_id_3d1b92d7_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_healthhistory`
--

LOCK TABLES `patientmanagement_healthhistory` WRITE;
/*!40000 ALTER TABLE `patientmanagement_healthhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_healthhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_illnesssymtoms`
--

DROP TABLE IF EXISTS `patientmanagement_illnesssymtoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_illnesssymtoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symptoncode` varchar(50) DEFAULT NULL,
  `sysmtomdescription` longtext NOT NULL,
  `fromwhen` date NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_il_patient_id_7decebab_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_il_patient_id_7decebab_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_illnesssymtoms`
--

LOCK TABLES `patientmanagement_illnesssymtoms` WRITE;
/*!40000 ALTER TABLE `patientmanagement_illnesssymtoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_illnesssymtoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_inpatientdetails`
--

DROP TABLE IF EXISTS `patientmanagement_inpatientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_inpatientdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admintdate` date NOT NULL,
  `dischargedate` date NOT NULL,
  `admissiontype` varchar(50) DEFAULT NULL,
  `dischargesummary` longtext NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_in_patient_id_294de23c_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_in_patient_id_294de23c_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_inpatientdetails`
--

LOCK TABLES `patientmanagement_inpatientdetails` WRITE;
/*!40000 ALTER TABLE `patientmanagement_inpatientdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_inpatientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_medications`
--

DROP TABLE IF EXISTS `patientmanagement_medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_medications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicinname` varchar(150) DEFAULT NULL,
  `doesage` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `usagedirections` longtext NOT NULL,
  `refills` varchar(50) DEFAULT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `labelofmedication` varchar(50) DEFAULT NULL,
  `notes` longtext NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_me_patient_id_22987103_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_me_patient_id_22987103_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_medications`
--

LOCK TABLES `patientmanagement_medications` WRITE;
/*!40000 ALTER TABLE `patientmanagement_medications` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_patientallert`
--

DROP TABLE IF EXISTS `patientmanagement_patientallert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_patientallert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientalert` longtext NOT NULL,
  `visiabilitytype` varchar(20) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_pa_patient_id_65df8074_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_pa_patient_id_65df8074_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_patientallert`
--

LOCK TABLES `patientmanagement_patientallert` WRITE;
/*!40000 ALTER TABLE `patientmanagement_patientallert` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_patientallert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_patientproblems`
--

DROP TABLE IF EXISTS `patientmanagement_patientproblems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_patientproblems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems` varchar(500) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `fromdate` date NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_pa_patient_id_59315c9a_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_pa_patient_id_59315c9a_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_patientproblems`
--

LOCK TABLES `patientmanagement_patientproblems` WRITE;
/*!40000 ALTER TABLE `patientmanagement_patientproblems` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_patientproblems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_patientstatus`
--

DROP TABLE IF EXISTS `patientmanagement_patientstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_patientstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `healthstatus` varchar(150) DEFAULT NULL,
  `effectivedate` date NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_pa_patient_id_db5fb174_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_pa_patient_id_db5fb174_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_patientstatus`
--

LOCK TABLES `patientmanagement_patientstatus` WRITE;
/*!40000 ALTER TABLE `patientmanagement_patientstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_patientstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_procedure`
--

DROP TABLE IF EXISTS `patientmanagement_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_procedure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procedurecodetype` varchar(50) DEFAULT NULL,
  `procedurecode` varchar(500) DEFAULT NULL,
  `procedure` varchar(150) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_pr_patient_id_05f2b9c9_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_pr_patient_id_05f2b9c9_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_procedure`
--

LOCK TABLES `patientmanagement_procedure` WRITE;
/*!40000 ALTER TABLE `patientmanagement_procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_referalls`
--

DROP TABLE IF EXISTS `patientmanagement_referalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_referalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorname` varchar(50) DEFAULT NULL,
  `doctorcontact` varchar(50) DEFAULT NULL,
  `doctoremail` varchar(254) DEFAULT NULL,
  `doctornote` varchar(50) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_re_patient_id_6574417b_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_re_patient_id_6574417b_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_referalls`
--

LOCK TABLES `patientmanagement_referalls` WRITE;
/*!40000 ALTER TABLE `patientmanagement_referalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_referalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_reportfiles`
--

DROP TABLE IF EXISTS `patientmanagement_reportfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_reportfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_re_patient_id_b572e824_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_re_patient_id_b572e824_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_reportfiles`
--

LOCK TABLES `patientmanagement_reportfiles` WRITE;
/*!40000 ALTER TABLE `patientmanagement_reportfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_reportfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_socialhistory`
--

DROP TABLE IF EXISTS `patientmanagement_socialhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_socialhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_type` varchar(20) DEFAULT NULL,
  `description` longtext NOT NULL,
  `fromwhen` date NOT NULL,
  `updtedon` datetime(6) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_so_patient_id_295ddf26_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_so_patient_id_295ddf26_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_socialhistory`
--

LOCK TABLES `patientmanagement_socialhistory` WRITE;
/*!40000 ALTER TABLE `patientmanagement_socialhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_socialhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_symtomes`
--

DROP TABLE IF EXISTS `patientmanagement_symtomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_symtomes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icdcod` varchar(500) DEFAULT NULL,
  `symtomdescription` varchar(500) DEFAULT NULL,
  `fromdated` date NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_sy_patient_id_3f7c03e7_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_sy_patient_id_3f7c03e7_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_symtomes`
--

LOCK TABLES `patientmanagement_symtomes` WRITE;
/*!40000 ALTER TABLE `patientmanagement_symtomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_symtomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_testsresults`
--

DROP TABLE IF EXISTS `patientmanagement_testsresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_testsresults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testcode` varchar(500) DEFAULT NULL,
  `resultumber` varchar(50) DEFAULT NULL,
  `resultunit` varchar(50) DEFAULT NULL,
  `notes` longtext NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_te_patient_id_24a52392_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_te_patient_id_24a52392_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_testsresults`
--

LOCK TABLES `patientmanagement_testsresults` WRITE;
/*!40000 ALTER TABLE `patientmanagement_testsresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_testsresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_vaccines`
--

DROP TABLE IF EXISTS `patientmanagement_vaccines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_vaccines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `takendate` date NOT NULL,
  `vaccinecode` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `v_status` varchar(20) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_va_patient_id_780a40a9_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_va_patient_id_780a40a9_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_vaccines`
--

LOCK TABLES `patientmanagement_vaccines` WRITE;
/*!40000 ALTER TABLE `patientmanagement_vaccines` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_vaccines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_visitreson`
--

DROP TABLE IF EXISTS `patientmanagement_visitreson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_visitreson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_vi_patient_id_50d66570_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_vi_patient_id_50d66570_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_visitreson`
--

LOCK TABLES `patientmanagement_visitreson` WRITE;
/*!40000 ALTER TABLE `patientmanagement_visitreson` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_visitreson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmanagement_vitals`
--

DROP TABLE IF EXISTS `patientmanagement_vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientmanagement_vitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `height_inch` double DEFAULT NULL,
  `heartrate` double DEFAULT NULL,
  `temprature` double DEFAULT NULL,
  `oxisaturation` double DEFAULT NULL,
  `diastolicbp` double DEFAULT NULL,
  `systolicbp` double DEFAULT NULL,
  `glucose` double DEFAULT NULL,
  `resporitoryrate` double DEFAULT NULL,
  `bmi` double DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patientmanagement_vi_patient_id_148cdd1a_fk_usermanag` (`patient_id`),
  CONSTRAINT `patientmanagement_vi_patient_id_148cdd1a_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmanagement_vitals`
--

LOCK TABLES `patientmanagement_vitals` WRITE;
/*!40000 ALTER TABLE `patientmanagement_vitals` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmanagement_vitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_doctors`
--

DROP TABLE IF EXISTS `usermanagement_doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_doctors` (
  `doc_id` int(11) NOT NULL,
  `is_booked` varchar(4) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `Experience` varchar(100) NOT NULL,
  `Licence_number` varchar(100) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `pro_id` (`pro_id`),
  CONSTRAINT `usermanagement_docto_pro_id_b78f7fd4_fk_usermanag` FOREIGN KEY (`pro_id`) REFERENCES `usermanagement_profile` (`id`),
  CONSTRAINT `usermanagement_doctors_doc_id_d59a3098_fk_usermanagement_user_id` FOREIGN KEY (`doc_id`) REFERENCES `usermanagement_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_doctors`
--

LOCK TABLES `usermanagement_doctors` WRITE;
/*!40000 ALTER TABLE `usermanagement_doctors` DISABLE KEYS */;
INSERT INTO `usermanagement_doctors` VALUES (2,'no','Dermatology','7 years 0 months','44444444',2),(7,'no','Obstetrics & Gynecology','10 years 10 months','29634FG9787757',8),(9,'no','Otolaryngology','14 years 9 months','74568374653',10),(10,'no','Internal Medicine-Pediatrics','11 years 10 months','374392084793t87',11),(11,'no','Emergency Medicine','3 years 3 months','0000000000',12),(12,'no','Heart Transplant Cardiology','20 years 7 months','8888888888888',13);
/*!40000 ALTER TABLE `usermanagement_doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_laboratorist`
--

DROP TABLE IF EXISTS `usermanagement_laboratorist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_laboratorist` (
  `lab_user_id` int(11) NOT NULL,
  `licence_number` varchar(100) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lab_user_id`),
  UNIQUE KEY `pro_id` (`pro_id`),
  CONSTRAINT `usermanagement_labor_lab_user_id_376889b4_fk_usermanag` FOREIGN KEY (`lab_user_id`) REFERENCES `usermanagement_user` (`id`),
  CONSTRAINT `usermanagement_labor_pro_id_0c2447aa_fk_usermanag` FOREIGN KEY (`pro_id`) REFERENCES `usermanagement_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_laboratorist`
--

LOCK TABLES `usermanagement_laboratorist` WRITE;
/*!40000 ALTER TABLE `usermanagement_laboratorist` DISABLE KEYS */;
INSERT INTO `usermanagement_laboratorist` VALUES (5,'6363535',5);
/*!40000 ALTER TABLE `usermanagement_laboratorist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_nurse`
--

DROP TABLE IF EXISTS `usermanagement_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_nurse` (
  `nurse_user_id` int(11) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `licence_number` varchar(100) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nurse_user_id`),
  UNIQUE KEY `pro_id` (`pro_id`),
  CONSTRAINT `usermanagement_nurse_nurse_user_id_3770bf5c_fk_usermanag` FOREIGN KEY (`nurse_user_id`) REFERENCES `usermanagement_user` (`id`),
  CONSTRAINT `usermanagement_nurse_pro_id_b91cd858_fk_usermanag` FOREIGN KEY (`pro_id`) REFERENCES `usermanagement_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_nurse`
--

LOCK TABLES `usermanagement_nurse` WRITE;
/*!40000 ALTER TABLE `usermanagement_nurse` DISABLE KEYS */;
INSERT INTO `usermanagement_nurse` VALUES (3,'Burn nursing','14 years 8 months','9999999999',3);
/*!40000 ALTER TABLE `usermanagement_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_patient`
--

DROP TABLE IF EXISTS `usermanagement_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_patient` (
  `UHID` varchar(50) NOT NULL,
  `is_refered` tinyint(1) NOT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `maritial_status` varchar(50) DEFAULT NULL,
  `ethnicity` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `emergencycontactfname` varchar(50) DEFAULT NULL,
  `emergencycontactlname` varchar(50) DEFAULT NULL,
  `emergencycontactno` varchar(50) DEFAULT NULL,
  `emergencyrelationship` varchar(200) DEFAULT NULL,
  `familyDoctorName` varchar(50) DEFAULT NULL,
  `familycontactno` varchar(50) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `pat_id` int(11) NOT NULL,
  PRIMARY KEY (`UHID`),
  UNIQUE KEY `pat_id` (`pat_id`),
  CONSTRAINT `usermanagement_patie_pat_id_3a6a812a_fk_usermanag` FOREIGN KEY (`pat_id`) REFERENCES `usermanagement_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_patient`
--

LOCK TABLES `usermanagement_patient` WRITE;
/*!40000 ALTER TABLE `usermanagement_patient` DISABLE KEYS */;
INSERT INTO `usermanagement_patient` VALUES ('LHMR-00-00000001',0,'farmer','A+','Single','Asian','1997-03-05','22 years 2 months 8 days','alwal','suchitra','hyd','Telangana','India','500072','bhanu','potturi','+91 8654747754','best friend','hima','+91 9779789879','ddddd',7);
/*!40000 ALTER TABLE `usermanagement_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_patient_doc_link`
--

DROP TABLE IF EXISTS `usermanagement_patient_doc_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_patient_doc_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(50) NOT NULL,
  `doctors_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usermanagement_patient_d_patient_id_doctors_id_dcec1f4a_uniq` (`patient_id`,`doctors_id`),
  KEY `usermanagement_patie_doctors_id_07b68cbf_fk_usermanag` (`doctors_id`),
  CONSTRAINT `usermanagement_patie_doctors_id_07b68cbf_fk_usermanag` FOREIGN KEY (`doctors_id`) REFERENCES `usermanagement_doctors` (`doc_id`),
  CONSTRAINT `usermanagement_patie_patient_id_6411384e_fk_usermanag` FOREIGN KEY (`patient_id`) REFERENCES `usermanagement_patient` (`UHID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_patient_doc_link`
--

LOCK TABLES `usermanagement_patient_doc_link` WRITE;
/*!40000 ALTER TABLE `usermanagement_patient_doc_link` DISABLE KEYS */;
INSERT INTO `usermanagement_patient_doc_link` VALUES (1,'LHMR-00-00000001',2);
/*!40000 ALTER TABLE `usermanagement_patient_doc_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_pharmacist`
--

DROP TABLE IF EXISTS `usermanagement_pharmacist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_pharmacist` (
  `pharma_user_id` int(11) NOT NULL,
  `licence_number` varchar(100) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pharma_user_id`),
  UNIQUE KEY `pro_id` (`pro_id`),
  CONSTRAINT `usermanagement_pharm_pharma_user_id_af608647_fk_usermanag` FOREIGN KEY (`pharma_user_id`) REFERENCES `usermanagement_user` (`id`),
  CONSTRAINT `usermanagement_pharm_pro_id_5277c87f_fk_usermanag` FOREIGN KEY (`pro_id`) REFERENCES `usermanagement_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_pharmacist`
--

LOCK TABLES `usermanagement_pharmacist` WRITE;
/*!40000 ALTER TABLE `usermanagement_pharmacist` DISABLE KEYS */;
INSERT INTO `usermanagement_pharmacist` VALUES (4,'65824765289374',4);
/*!40000 ALTER TABLE `usermanagement_pharmacist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_profile`
--

DROP TABLE IF EXISTS `usermanagement_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) DEFAULT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) DEFAULT NULL,
  `middle_name` varchar(300) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `reset_time` datetime(6) NOT NULL,
  `Qualification` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usermanagement_profi_user_id_2a63c878_fk_usermanag` (`user_id`),
  KEY `usermanagement_profi_user_type_id_430b060c_fk_usermanag` (`user_type_id`),
  CONSTRAINT `usermanagement_profi_user_id_2a63c878_fk_usermanag` FOREIGN KEY (`user_id`) REFERENCES `usermanagement_user` (`id`),
  CONSTRAINT `usermanagement_profi_user_type_id_430b060c_fk_usermanag` FOREIGN KEY (`user_type_id`) REFERENCES `usermanagement_usertypes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_profile`
--

LOCK TABLES `usermanagement_profile` WRITE;
/*!40000 ALTER TABLE `usermanagement_profile` DISABLE KEYS */;
INSERT INTO `usermanagement_profile` VALUES (1,'demomano@gmail.com','sai','dinesh','ad','91 7207189415','male',0,'2019-05-13 07:57:35.829000','be',1,3),(2,'dinesh.doctor@gmail.com','bhupathi','D','dinesh','+91 8888888888','Male',0,'2019-05-13 07:59:54.971000','BAMS,BUMS',2,6),(3,'sdsghvc@gmail.com','dinesh','a','bhupathi','+91 8275628658','Male',0,'2019-05-13 08:01:22.814000','BSc (Post Basic)',3,5),(4,'dinesh@gmail.com','bhupathi','a','dinesh','91 4765289476','Male',0,'2019-05-13 08:06:51.460000','Bachelor of Occupational Theraphy,Bachelor of Optometry and Opthalmic Technology,BUMS',4,4),(5,'bhupathi@gmail.com','dinesh','A','bhupathi','+91 4765248973','Male',0,'2019-05-13 08:08:52.933000','BAMS,BDS,BHMS',5,1),(6,'huhu@gmail.com','dinesh','ssssssss','ggggg','+91 5768746876','Male',0,'2019-05-13 08:09:55.519000','undergraduate',6,2),(7,'dineshdcruz780@gmail.com','rohan','chary','sai','+91 9959557710','Male',0,'2019-05-13 09:29:03.270000',NULL,NULL,7),(8,'doc@gmail.com','Sai wrfwerf','Dwefd','Rohan','+91 1323321231','Male',0,'2019-05-13 11:12:22.750000','BDS',7,6),(9,'bupathidiaan@gmail.com','bhupathi','dinesh','ad','91 9959557710','male',0,'2019-05-14 05:51:09.504000','be',8,3),(10,'gt@gmail.com','aaa','aa','aa','+91 6666666666','Female',0,'2019-05-14 06:47:01.520000','BAMS,DNB',9,6),(11,'hdfg@gmail.com','ccc','ccc','ccc','+91 5465829','Other',0,'2019-05-14 06:49:02.251000','BAMS,DNB',10,6),(12,'xxyyqq@gmail.com','www','yy','xx','+91 9999999999','Male',0,'2019-05-14 06:49:55.984000','BAMS,BHMS',11,6),(13,'hhh@gmail.com','hh h','hhh','hh h','+91 7777777777','Male',0,'2019-05-14 08:04:51.051000','BHMS,DNB',12,6);
/*!40000 ALTER TABLE `usermanagement_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_user`
--

DROP TABLE IF EXISTS `usermanagement_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_reset` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_user`
--

LOCK TABLES `usermanagement_user` WRITE;
/*!40000 ALTER TABLE `usermanagement_user` DISABLE KEYS */;
INSERT INTO `usermanagement_user` VALUES (1,'2019-05-14 08:14:49.030000',0,'','','',0,1,'2019-05-13 07:57:35.531000','dinesh','pbkdf2_sha256$36000$SUWQm79ULBMg$nsjrSET5JK0Ah/UPLIPdEQEPQfTUhDbefSclVHORmwk=',0),(2,'2019-05-13 10:53:22.153000',0,'','','',0,1,'2019-05-13 07:59:54.761000','dineshD','pbkdf2_sha256$36000$qGXIBS9BYwft$t3O5HgGQmhjT8/FKJy+sgElnGlAQ3SyRX6MSJSy4o4w=',0),(3,'2019-05-13 08:04:46.600000',0,'','','',0,1,'2019-05-13 08:01:22.672000','dineshN','pbkdf2_sha256$36000$4KOAbgNtMyfw$5NG/u3gy7sR7Fgwdkd6x6HuXCzT3nxEMucSUaPlw1+g=',0),(4,'2019-05-13 08:11:37.224000',0,'','','',0,1,'2019-05-13 08:06:51.270000','dineshP','pbkdf2_sha256$36000$mebkI1FVeNle$U6kZhMpudIdfL/gEFAQIC0v8JRnHbytIX2TU+6QC02A=',0),(5,'2019-05-13 08:12:11.426000',0,'','','',0,1,'2019-05-13 08:08:52.701000','dineshL','pbkdf2_sha256$36000$UrXW2SlcSey2$ybihWbRW6XvWujvuVVcExuwzcZC3Kg3J7m2gpaEmORM=',0),(6,'2019-05-13 09:26:31.637000',0,'','','',0,1,'2019-05-13 08:09:55.289000','dineshR','pbkdf2_sha256$36000$ffbd3V8DjFGd$LuJE3YVx8G4gS7ehLlA8k9MstRF/MS7SzQ7FiKFTqeI=',0),(7,'2019-05-13 11:12:44.942000',0,'','','',0,1,'2019-05-13 11:12:22.570000','dineshd1','pbkdf2_sha256$36000$jAUi76OdUbB3$JqZXk41+kmOvHhaAHkuqZYwLrV/09L6A73Ezkbgy6sY=',0),(8,NULL,0,'','','',0,1,'2019-05-14 05:44:04.583000','rana','pbkdf2_sha256$36000$MOZd7vVpGR88$c8zMbxFFDHH8ocVc3tTCE8JudMFdpIBxYe+tgmyuBV8=',1),(9,NULL,0,'','','',0,1,'2019-05-14 06:47:01.315000','huhuhuh','pbkdf2_sha256$36000$hIdFj4KKoG4U$YJK80+Uee6mFFypOquLsxXq3bUjalnzfAtclQFWHG88=',1),(10,NULL,0,'','','',0,1,'2019-05-14 06:49:02.056000','erhfbe','pbkdf2_sha256$36000$BiKx783Xh54g$8s5KsWeA3dr+pU6ASQlAxG0onnN69dQvWoHFmrcfseI=',1),(11,NULL,0,'','','',0,1,'2019-05-14 06:49:55.736000','nj','pbkdf2_sha256$36000$ETkhhNDD6BNr$yk4H7jwhfeP6xUHoeiyO8F2Bmoq99QHIVuzOQxIQemo=',1),(12,NULL,0,'','','',0,1,'2019-05-14 08:04:50.878000','hh','pbkdf2_sha256$36000$XYs2sQqKqAek$91GYntnc63a6EtL59sOu/4NhUxJusBWZcB97hfxFsXs=',1);
/*!40000 ALTER TABLE `usermanagement_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_user_groups`
--

DROP TABLE IF EXISTS `usermanagement_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usermanagement_user_groups_user_id_group_id_d79ad12f_uniq` (`user_id`,`group_id`),
  KEY `usermanagement_user_groups_group_id_8a5e23fc_fk_auth_group_id` (`group_id`),
  CONSTRAINT `usermanagement_user__user_id_681d81f7_fk_usermanag` FOREIGN KEY (`user_id`) REFERENCES `usermanagement_user` (`id`),
  CONSTRAINT `usermanagement_user_groups_group_id_8a5e23fc_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_user_groups`
--

LOCK TABLES `usermanagement_user_groups` WRITE;
/*!40000 ALTER TABLE `usermanagement_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usermanagement_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_user_user_permissions`
--

DROP TABLE IF EXISTS `usermanagement_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usermanagement_user_user_user_id_permission_id_b36c426b_uniq` (`user_id`,`permission_id`),
  KEY `usermanagement_user__permission_id_94e34351_fk_auth_perm` (`permission_id`),
  CONSTRAINT `usermanagement_user__permission_id_94e34351_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `usermanagement_user__user_id_c5c2e762_fk_usermanag` FOREIGN KEY (`user_id`) REFERENCES `usermanagement_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_user_user_permissions`
--

LOCK TABLES `usermanagement_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `usermanagement_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `usermanagement_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagement_usertypes`
--

DROP TABLE IF EXISTS `usermanagement_usertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagement_usertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Role_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagement_usertypes`
--

LOCK TABLES `usermanagement_usertypes` WRITE;
/*!40000 ALTER TABLE `usermanagement_usertypes` DISABLE KEYS */;
INSERT INTO `usermanagement_usertypes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);
/*!40000 ALTER TABLE `usermanagement_usertypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-15 10:40:46
