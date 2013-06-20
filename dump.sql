-- MySQL dump 10.13  Distrib 5.1.58, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: trollfred_gbook
-- ------------------------------------------------------
-- Server version	5.1.58

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
-- Table structure for table `guest_book`
--

DROP TABLE IF EXISTS `guest_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book` (
  `msgid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'uniq id',
  `username` varchar(40) NOT NULL COMMENT 'name of user',
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'post time',
  `email` varchar(80) NOT NULL,
  `ip` int(10) unsigned NOT NULL COMMENT 'NUMBER -> IP',
  `homepage` tinytext COMMENT 'www.domain.com',
  `message` text NOT NULL,
  `useragent` text,
  PRIMARY KEY (`msgid`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='guest book table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book`
--

LOCK TABLES `guest_book` WRITE;
/*!40000 ALTER TABLE `guest_book` DISABLE KEYS */;
INSERT INTO `guest_book` VALUES (1,'admin','2013-06-18 09:13:53','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(2,'admin','2013-06-18 09:14:04','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(3,'admin','2013-06-18 09:14:06','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(4,'admin','2013-06-18 09:14:07','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(5,'admin','2013-06-18 09:14:08','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(6,'admin','2013-06-18 09:14:09','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(7,'admin','2013-06-18 09:14:10','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(8,'admin','2013-06-18 09:14:11','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(9,'admin','2013-06-18 09:14:12','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(10,'admin','2013-06-18 09:14:13','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(11,'admin','2013-06-18 09:14:14','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(12,'admin','2013-06-18 09:14:14','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(13,'admin','2013-06-18 09:14:16','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(14,'admin','2013-06-18 09:14:16','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(15,'admin','2013-06-18 09:14:17','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(16,'admin','2013-06-18 09:14:18','dkdkdkdk@lkasjdf.ru',3232235777,'http://vk.com','Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!Привет, первое сообщение!!!','MSIE 5.0 (WOWOWOWOW!)'),(17,'admin','2013-06-18 09:14:38','admin@lkasjdf.ru',3232235777,'http://vk.com','Я сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(18,'admin','2013-06-18 09:14:39','admin@lkasjdf.ru',3232235777,'http://vk.com','Я сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(19,'admin','2013-06-18 09:14:41','adm3in@lkasjdf.ru',3232235777,'http://vk.com','Я сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(20,'admin','2013-06-18 09:14:45','adm3in@lkasjdf.ru',3232235777,'http://vk.com','123 сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(21,'radmin','2013-06-18 09:14:52','adm3in@lkasjdf.ru',3232235777,'http://vk.com','123 сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(22,'radmin','2013-06-18 09:15:01','adm3in@lkasjdf.ru',749207809,'http://vk.com','123 сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(23,'radmin','2013-06-18 09:15:02','adm3in@lkasjdf.ru',749207809,'http://vk.com','123 сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(24,'radmin','2013-06-18 09:15:11','adm3in@lkasjdf.ru',749207809,'http://ya.ru','123 сосиска попури очень вкусная внутри!!!!!','MSIE 5.0 (WOWOWOWOW!)'),(25,'radmin','2013-06-18 09:15:17','adm3in@lkasjdf.ru',749207809,'http://ya.ru','123 сосиска попури очень вкусная внутри!!!!!','Google 5.0 (WOWOWOWOW!)'),(26,'radmin','2013-06-18 09:15:18','adm3in@lkasjdf.ru',749207809,'http://ya.ru','123 сосиска попури очень вкусная внутри!!!!!','Google 5.0 (WOWOWOWOW!)'),(27,'radmin','2013-06-18 09:15:25','adm3in@lkasjdf.ru',749207809,'','123 сосиска попури очень вкусная внутри!!!!!','Google 5.0 (WOWOWOWOW!)'),(28,'radmin','2013-06-18 09:15:27','adm3in@lkasjdf.ru',749207809,'','123 сосиска попури очень вкусная внутри!!!!!','Google 5.0 (WOWOWOWOW!)'),(29,'Aliosh','2013-06-18 12:36:26','aliosha@kakakaka.ru',1600067094,'http://yyyyyyyyyyyyyyyyy.ru','lorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkflorem ipsum dkdk a asdfasdfasdf ffkf','Chrome 99 : superior edition (2020200askdf);'),(30,'adfasdf','2013-06-18 12:55:33','asdfafasd@adfasdf.ru',3338665984,'vk.com','VALUES (NULL, :name, CURRENT_TIMESTAMP,				:mail, INET_ATON($ip),					:home, :msg, :ua) ;\"\r\nVALUES (NULL, :name, CURRENT_TIMESTAMP,\r\n					:mail, INET_ATON($ip),\r\n					:home, :msg, :ua) ;\"VALUES (NULL, :name, CURRENT_TIMESTAMP,\r\n					:mail, INET_ATON($ip),\r\n					:home, :msg, :ua) ;\"','Useralfsdgaks dlkf;asd;flasdf '),(31,'adfasdf','2013-06-18 12:56:11','asdfafasd@adfasdf.ru',3338665984,'vk.com','GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG','Useralfsdgaks dlkf;asd;flasdf '),(32,'adfasdf','2013-06-18 13:09:09','asdfafasd@adfasdf.ru',3338665984,'vk.com','GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG','Useralfsdgaks dlkf;asd;flasdf '),(33,'asdfas','2013-06-18 13:11:09','alskdfa@dlf.ru',2130706433,'homepage.dd','messagelksadf','klasd'),(34,'asdfas','2013-06-18 13:11:45','alskdfa@dlf.ru',2130706433,'homepage.dd','messagelksadf','klasd'),(35,'asdfas','2013-06-18 13:11:48','alskdfa@dlf.ru',2130706433,'homepage.dd','messagelksadf','klasd'),(36,'asdfas','2013-06-18 13:12:05','alskdfa@dlf.ru',2130706433,'homepage.dd','messagelksadf','klasd'),(37,'LL','2013-06-18 13:13:30','ldld',2063597569,'vk.com','lol','ldf'),(38,'Alesha','2013-06-18 13:15:26','sobsdaka@fav.ru',3224120321,'vk.com','PDLFKff SDJFL KSDJFLSDKJFLSDKFJ LSKDFJSDLKFJSLDKFJ','User-agent: mlflflflf();'),(39,'Alesha','2013-06-18 13:15:33','sobsdaka@fav.ru',3224120321,'vk.com','PDLFKff SDJFL KSDJFLSDKJFLSDKFJ LSKDFJSDLKFJSLDKFJ','User-agent: mlflflflf();'),(40,'123','2013-06-18 14:17:18','4124',1570602248,'123123','Вводите данные','User-agent: mlflflflf();'),(41,'igor','2013-06-18 14:22:50','ifif@ldkd.ru',1570602248,'vkk.com','Привет с большого бодуна! Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна!Привет с большого бодуна','User-agent: mlflflflf();'),(42,'Azazaza','2013-06-18 14:29:21','djfjf@kfsdf.ru',1570602248,'vk.com','Мдядядядя я не успеваю T_T','93.157.125.8'),(43,'jasldkf','2013-06-18 14:30:07','saldfjkasf#ldksfk.ru',1570602248,'laskdfkasdf.ru','Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите данные Вводите да','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(44,'фоылдвао','2013-06-18 14:39:35','lasdkjf@alskdfj.ru',1570602248,'vk.com','Вводите данныеВводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(45,'asdfas','2013-06-18 14:40:21','asdfasdf',1570602248,'asdfasdf','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(46,'','2013-06-18 14:40:47','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(47,'','2013-06-18 14:41:11','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(48,'','2013-06-18 14:41:39','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(49,'','2013-06-18 14:41:57','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(50,'','2013-06-18 14:42:29','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(51,'','2013-06-18 14:42:52','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(52,'','2013-06-18 14:43:06','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(53,'','2013-06-18 14:44:27','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(54,'','2013-06-18 14:44:41','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(55,'','2013-06-18 14:45:01','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(56,'','2013-06-18 14:45:12','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(57,'dsfasdfasd','2013-06-18 14:45:44','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(58,'','2013-06-18 14:46:27','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:21.0) Gecko/20100101 Firefox/21.0'),(59,'','2013-06-18 14:47:04','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(60,'','2013-06-18 14:47:25','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(61,'','2013-06-18 14:47:39','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(62,'','2013-06-18 14:48:45','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(63,'','2013-06-18 14:49:19','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(64,'','2013-06-18 14:49:31','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(65,'','2013-06-18 14:50:05','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(66,'asdfasdfasdf','2013-06-18 14:50:19','asdf',1570602248,'asdfasdf','Вводите данныеasdfasdf','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(67,'','2013-06-18 14:50:36','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(68,'','2013-06-18 14:50:50','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(69,'','2013-06-18 14:51:02','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(70,'asdfasdf','2013-06-18 14:51:19','asdfsdf',1570602248,'asdfasdf','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(71,'asdfasdf','2013-06-18 14:55:23','adfasdf',1570602248,'asdfasdf','Вводите данныеffff','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(72,'','2013-06-18 14:55:27','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(73,'','2013-06-18 14:57:03','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(74,'','2013-06-18 14:59:36','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(75,'','2013-06-18 14:59:41','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(76,'','2013-06-18 15:01:29','',1570602248,NULL,'Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(77,'laskdjflkajsdf a;sdflk','2013-06-18 15:29:16','asdfa<>!#@fjfj.ru',1570602248,'vk.com','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(78,'alsdffasdf;asdf','2013-06-18 15:33:48','asdfzxcv./nz/xcv.m,(*%02783',1570602248,'vk.com','Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите данные sdfasdf Вводите д','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(79,'fkalskdfasd','2013-06-18 15:38:57','asdalksdjf./,zxmcv@^34.ru',1570602248,'vk.com','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(80,'laksdf','2013-06-18 15:39:34','alsdasd$%^@#$^f@kasdf.ru',1570602248,'vk.com','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(81,'asl;dkfjas','2013-06-18 15:41:34','a;sldfkj2194-185(&)#Q+%@.f.asd.ru',1570602248,'vk.com','Вводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(82,'235235','2013-06-18 15:46:33','asdlfAsdfj@ff.ru',1570602248,'235','Вводите данные Вводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данныеВводите данные','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(83,'XClzxcnv^','2013-06-18 15:47:22','azzcxv@lff.ru',1570602248,'vk.com','<?php\r\n$str = \"<p>this -&gt; &quot;</p>\\n\";\r\n\r\necho htmlspecialchars_decode($str);\r\n\r\n// note that here the quotes aren\'t converted\r\necho htmlspecialchars_decode($str, ENT_NOQUOTES);\r\n?>','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(84,'Igorm','2013-06-18 15:50:11','iggymas@gmail.com',1570602248,'vk.com/id99999999','Certain characters have special significance in HTML, and should be represented by HTML entities if they are to preserve their meanings. This function returns a string with these conversions made. If you require all input substrings that have associated named entities to be translated, use htmlentities() instead.\r\nIf the input string passed to this function and the final document share the same...','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(85,'igorm','2013-06-18 15:52:36','fivafiva@lflfl.ru',1570602248,NULL,'Certain characters have special significance in HTML, and should be represented by HTML entities if they are to preserve their meanings. This function returns a string with these conversions made. If you require all input substrings that have associated named entities to be translated, use htmlentities() instead.\r\n\r\nIf the input string passed to this function and the final document ','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(86,'dmitry','2013-06-18 16:06:26','dm.jo@wat.ru',1570602248,'ya.ru','<i>Вводите данные</i>\r\n<a href=\"vk.com\">link</a>\r\nhfhfhfh\r\nazazazazazaz Hello NY?','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36'),(87,'MickleJowly','2013-06-18 16:15:37','mickle.jovly@rambler.ru',1570602248,'vk.com','Вводите данныеLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Sanctus sea sed takimata ut vero voluptua. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Sanctus sea sed takimata ut vero voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Sanctus sea sed takimata ut vero voluptua.','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36');
/*!40000 ALTER TABLE `guest_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-20 17:07:24