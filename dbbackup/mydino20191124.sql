-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydino
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add drone category',7,'add_dronecategory'),(26,'Can change drone category',7,'change_dronecategory'),(27,'Can delete drone category',7,'delete_dronecategory'),(28,'Can view drone category',7,'view_dronecategory'),(29,'Can add pilot',8,'add_pilot'),(30,'Can change pilot',8,'change_pilot'),(31,'Can delete pilot',8,'delete_pilot'),(32,'Can view pilot',8,'view_pilot'),(33,'Can add drone',9,'add_drone'),(34,'Can change drone',9,'change_drone'),(35,'Can delete drone',9,'delete_drone'),(36,'Can view drone',9,'view_drone'),(37,'Can add competition',10,'add_competition'),(38,'Can change competition',10,'change_competition'),(39,'Can delete competition',10,'delete_competition'),(40,'Can view competition',10,'view_competition'),(41,'Can add users',11,'add_users'),(42,'Can change users',11,'change_users'),(43,'Can delete users',11,'delete_users'),(44,'Can view users',11,'view_users'),(45,'Can add users details',12,'add_usersdetails'),(46,'Can change users details',12,'change_usersdetails'),(47,'Can delete users details',12,'delete_usersdetails'),(48,'Can view users details',12,'view_usersdetails'),(49,'Can add users passwords',13,'add_userspasswords'),(50,'Can change users passwords',13,'change_userspasswords'),(51,'Can delete users passwords',13,'delete_userspasswords'),(52,'Can view users passwords',13,'view_userspasswords');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials_users`
--

DROP TABLE IF EXISTS `credentials_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `inserted_timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials_users`
--

LOCK TABLES `credentials_users` WRITE;
/*!40000 ALTER TABLE `credentials_users` DISABLE KEYS */;
INSERT INTO `credentials_users` VALUES (1,'pejvak61','2019-11-22 17:32:14.314365'),(2,'amoha','2019-11-22 17:42:26.208624'),(3,'Nahid','2019-11-23 21:57:45.978877'),(4,'samira','2019-11-23 21:57:54.797953');
/*!40000 ALTER TABLE `credentials_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials_usersdetails`
--

DROP TABLE IF EXISTS `credentials_usersdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials_usersdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_title` varchar(30) NOT NULL,
  `user_first_name` varchar(25) NOT NULL,
  `user_last_name` varchar(40) NOT NULL,
  `user_birthdate` date NOT NULL,
  `inserted_timestamp` datetime(6) NOT NULL,
  `details_creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `credentials_usersdet_details_creator_id_57bf61cd_fk_credentia` (`details_creator_id`),
  KEY `credentials_usersdet_user_id_a08f1ba4_fk_credentia` (`user_id`),
  CONSTRAINT `credentials_usersdet_details_creator_id_57bf61cd_fk_credentia` FOREIGN KEY (`details_creator_id`) REFERENCES `credentials_users` (`id`),
  CONSTRAINT `credentials_usersdet_user_id_a08f1ba4_fk_credentia` FOREIGN KEY (`user_id`) REFERENCES `credentials_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials_usersdetails`
--

LOCK TABLES `credentials_usersdetails` WRITE;
/*!40000 ALTER TABLE `credentials_usersdetails` DISABLE KEYS */;
INSERT INTO `credentials_usersdetails` VALUES (2,'Peji_Joon','Ali','Mojhammadi','1982-10-05','2019-11-22 21:00:49.787835',1,1),(3,'Ali_joon','Ali','Mojhammadi Touchaei','1982-06-10','2019-11-22 21:09:09.364563',1,2),(4,'NahidKochooloo','Nahid','Islamic','1995-01-01','2019-11-23 21:58:41.313663',1,3),(5,'SamirJJ','Samira','Khoshi','1990-01-01','2019-11-23 21:59:21.851702',1,4),(6,'SamirJJK','Samira','Khoshnoud','1990-01-01','2019-11-23 21:59:51.629530',1,4);
/*!40000 ALTER TABLE `credentials_usersdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials_userspasswords`
--

DROP TABLE IF EXISTS `credentials_userspasswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials_userspasswords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salt` varchar(200) NOT NULL,
  `pwdhash` varchar(200) NOT NULL,
  `inserted_timestamp` datetime(6) NOT NULL,
  `pwd_creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `credentials_userspas_pwd_creator_id_e0fbf85f_fk_credentia` (`pwd_creator_id`),
  KEY `credentials_userspas_user_id_6497a72d_fk_credentia` (`user_id`),
  CONSTRAINT `credentials_userspas_pwd_creator_id_e0fbf85f_fk_credentia` FOREIGN KEY (`pwd_creator_id`) REFERENCES `credentials_users` (`id`),
  CONSTRAINT `credentials_userspas_user_id_6497a72d_fk_credentia` FOREIGN KEY (`user_id`) REFERENCES `credentials_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials_userspasswords`
--

LOCK TABLES `credentials_userspasswords` WRITE;
/*!40000 ALTER TABLE `credentials_userspasswords` DISABLE KEYS */;
INSERT INTO `credentials_userspasswords` VALUES (1,'assadqwdasd','asdqdadqsdadas06545.a55545.44ad','2019-11-22 20:49:45.053849',1,1),(2,'89assadqwdasd','89asdqdadqsdadas06545.a55545.44ad','2019-11-22 20:50:03.828984',1,2),(3,'45assadqwdasd','45asdqdadqsdadas06545.a55545.44ad','2019-11-22 20:55:15.847304',2,1),(4,'88assadqwdasd','88asdqdadqsdadas06545.a55545.44ad','2019-11-22 21:04:37.791738',2,2),(5,'32assadqwdasd','32asdqdadqsdadas06545.a55545.44ad','2019-11-23 22:00:24.677715',1,3),(6,'36assadqwdasd','36asdqdadqsdadas06545.a55545.44ad','2019-11-23 22:00:45.597581',1,4),(7,'44assadqwdasd','44asdqdadqsdadas06545.a55545.44ad','2019-11-23 22:00:54.352637',1,4);
/*!40000 ALTER TABLE `credentials_userspasswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `credentials_vw_usersalldata`
--

DROP TABLE IF EXISTS `credentials_vw_usersalldata`;
/*!50001 DROP VIEW IF EXISTS `credentials_vw_usersalldata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `credentials_vw_usersalldata` AS SELECT 
 1 AS `id`,
 1 AS `username`,
 1 AS `aliasname`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `bdate`,
 1 AS `rec_time_details`,
 1 AS `salt`,
 1 AS `hash`,
 1 AS `rec_time_password`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'credentials','users'),(12,'credentials','usersdetails'),(13,'credentials','userspasswords'),(10,'drones','competition'),(9,'drones','drone'),(7,'drones','dronecategory'),(8,'drones','pilot'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-22 17:29:54.399037'),(2,'auth','0001_initial','2019-11-22 17:29:56.668700'),(3,'admin','0001_initial','2019-11-22 17:30:08.725421'),(4,'admin','0002_logentry_remove_auto_add','2019-11-22 17:30:12.275761'),(5,'admin','0003_logentry_add_action_flag_choices','2019-11-22 17:30:12.451581'),(6,'contenttypes','0002_remove_content_type_name','2019-11-22 17:30:15.418522'),(7,'auth','0002_alter_permission_name_max_length','2019-11-22 17:30:16.650254'),(8,'auth','0003_alter_user_email_max_length','2019-11-22 17:30:18.335516'),(9,'auth','0004_alter_user_username_opts','2019-11-22 17:30:18.389461'),(10,'auth','0005_alter_user_last_login_null','2019-11-22 17:30:19.477339'),(11,'auth','0006_require_contenttypes_0002','2019-11-22 17:30:19.537278'),(12,'auth','0007_alter_validators_add_error_messages','2019-11-22 17:30:19.598217'),(13,'auth','0008_alter_user_username_max_length','2019-11-22 17:30:20.852921'),(14,'auth','0009_alter_user_last_name_max_length','2019-11-22 17:30:24.549111'),(15,'auth','0010_alter_group_name_max_length','2019-11-22 17:30:25.818804'),(16,'auth','0011_update_proxy_permissions','2019-11-22 17:30:25.873746'),(17,'credentials','0001_initial','2019-11-22 17:30:27.384190'),(18,'credentials','0002_auto_20191120_1255','2019-11-22 17:30:36.457838'),(19,'credentials','0003_auto_20191120_1936','2019-11-22 17:30:41.700434'),(20,'credentials','0004_auto_20191120_2006','2019-11-22 17:30:42.138982'),(21,'credentials','0005_auto_20191121_0050','2019-11-22 17:30:46.528457'),(22,'credentials','0006_auto_20191121_0051','2019-11-22 17:30:50.696163'),(23,'drones','0001_initial','2019-11-22 17:30:52.579221'),(24,'sessions','0001_initial','2019-11-22 17:30:59.833744');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drones_competition`
--

DROP TABLE IF EXISTS `drones_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drones_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distance_in_feet` int(11) NOT NULL,
  `distance_achievement_date` datetime(6) NOT NULL,
  `drone_id` int(11) NOT NULL,
  `pilot_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drones_competition_drone_id_4ef19446_fk_drones_drone_id` (`drone_id`),
  KEY `drones_competition_pilot_id_84db5b9e_fk_drones_pilot_id` (`pilot_id`),
  CONSTRAINT `drones_competition_drone_id_4ef19446_fk_drones_drone_id` FOREIGN KEY (`drone_id`) REFERENCES `drones_drone` (`id`),
  CONSTRAINT `drones_competition_pilot_id_84db5b9e_fk_drones_pilot_id` FOREIGN KEY (`pilot_id`) REFERENCES `drones_pilot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drones_competition`
--

LOCK TABLES `drones_competition` WRITE;
/*!40000 ALTER TABLE `drones_competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `drones_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drones_drone`
--

DROP TABLE IF EXISTS `drones_drone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drones_drone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `manufacturing_date` datetime(6) NOT NULL,
  `has_it_competed` tinyint(1) NOT NULL,
  `inserted_timestamp` datetime(6) NOT NULL,
  `drone_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drones_drone_drone_category_id_214d98cf_fk_drones_dr` (`drone_category_id`),
  CONSTRAINT `drones_drone_drone_category_id_214d98cf_fk_drones_dr` FOREIGN KEY (`drone_category_id`) REFERENCES `drones_dronecategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drones_drone`
--

LOCK TABLES `drones_drone` WRITE;
/*!40000 ALTER TABLE `drones_drone` DISABLE KEYS */;
/*!40000 ALTER TABLE `drones_drone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drones_dronecategory`
--

DROP TABLE IF EXISTS `drones_dronecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drones_dronecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drones_dronecategory`
--

LOCK TABLES `drones_dronecategory` WRITE;
/*!40000 ALTER TABLE `drones_dronecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `drones_dronecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drones_pilot`
--

DROP TABLE IF EXISTS `drones_pilot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drones_pilot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `races_count` int(11) NOT NULL,
  `inserted_timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drones_pilot`
--

LOCK TABLES `drones_pilot` WRITE;
/*!40000 ALTER TABLE `drones_pilot` DISABLE KEYS */;
/*!40000 ALTER TABLE `drones_pilot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `credentials_vw_usersalldata`
--

/*!50001 DROP VIEW IF EXISTS `credentials_vw_usersalldata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `credentials_vw_usersalldata` AS select `ald`.`id` AS `id`,`ald`.`username` AS `username`,`ald`.`alias_username` AS `aliasname`,`ald`.`first_name` AS `fname`,`ald`.`last_name` AS `lname`,`ald`.`birthdate` AS `bdate`,`ald`.`rec_time_details` AS `rec_time_details`,`ald`.`salt` AS `salt`,`ald`.`hash` AS `hash`,`ald`.`rec_time_password` AS `rec_time_password` from ((select `ua`.`id` AS `id`,`ua`.`username` AS `username`,`ud`.`user_title` AS `alias_username`,`ud`.`id` AS `detail_id`,`ud`.`user_id` AS `useraccount_id`,`ud`.`user_first_name` AS `first_name`,`ud`.`user_last_name` AS `last_name`,`ud`.`user_birthdate` AS `birthdate`,`ud`.`inserted_timestamp` AS `rec_time_details`,`ud`.`details_creator_id` AS `creator_details`,`up`.`id` AS `id_password`,`up`.`user_id` AS `useraccount_id_pwd`,`up`.`salt` AS `salt`,`up`.`pwdhash` AS `hash`,`up`.`inserted_timestamp` AS `rec_time_password`,`up`.`pwd_creator_id` AS `creator_password` from ((`credentials_users` `ua` left join `credentials_usersdetails` `ud` on((`ua`.`id` = `ud`.`user_id`))) left join `credentials_userspasswords` `up` on((`ua`.`id` = `up`.`user_id`)))) `ald` left join (select `ua`.`id` AS `uid`,max(`ud`.`id`) AS `detail_id`,max(`up`.`id`) AS `id_password` from ((`credentials_users` `ua` left join `credentials_usersdetails` `ud` on((`ua`.`id` = `ud`.`user_id`))) left join `credentials_userspasswords` `up` on((`ua`.`id` = `up`.`user_id`))) group by `ua`.`id`) `lastchanges` on(((`ald`.`id` = `lastchanges`.`uid`) and (`ald`.`detail_id` = `lastchanges`.`detail_id`) and (`ald`.`id_password` = `lastchanges`.`id_password`)))) where ((`ald`.`id` = `lastchanges`.`uid`) and (`ald`.`detail_id` = `lastchanges`.`detail_id`) and (`ald`.`id_password` = `lastchanges`.`id_password`)) */;
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

-- Dump completed on 2019-11-24  1:33:51
