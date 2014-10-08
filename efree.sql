-- MySQL dump 10.11
--
-- Host: localhost    Database: efree
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny5

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
-- Table structure for table `ef_article`
--

DROP TABLE IF EXISTS `ef_article`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_article` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `source` enum('original','copied','translational') NOT NULL,
  `copySite` varchar(60) NOT NULL,
  `copyURL` varchar(255) NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `status` varchar(20) NOT NULL default 'normal',
  `type` varchar(30) NOT NULL,
  `views` mediumint(5) unsigned NOT NULL default '0',
  `sticky` enum('0','1','2','3') NOT NULL default '0',
  `order` smallint(5) unsigned NOT NULL,
  `link` varchar(255) NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `order` (`order`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_article`
--

LOCK TABLES `ef_article` WRITE;
/*!40000 ALTER TABLE `ef_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_block`
--

DROP TABLE IF EXISTS `ef_block`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_block` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `template` varchar(30) NOT NULL default 'default',
  `type` varchar(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_block`
--

LOCK TABLES `ef_block` WRITE;
/*!40000 ALTER TABLE `ef_block` DISABLE KEYS */;
INSERT INTO `ef_block` VALUES (1,'default','latestArticle','最新文章','{\"category\":\"0\",\"limit\":\"7\"}'),(2,'default','hotArticle','热门文章','{\"category\":\"0\",\"limit\":\"7\"}'),(3,'default','latestProduct','最新产品','{\"category\":\"0\",\"limit\":\"3\",\"image\":\"show\"}'),(4,'default','hotProduct','热门产品','{\"category\":\"0\",\"limit\":\"3\",\"image\":\"show\"}'),(5,'default','slide','幻灯片',''),(6,'default','articleTree','文章分类','{\"showChildren\":\"0\"}'),(7,'default','productTree','产品分类','{\"showChildren\":\"0\"}'),(8,'default','blogTree','博客分类','{\"showChildren\":\"1\"}'),(9,'default','contact','联系我们',''),(10,'default','about','公司简介',''),(11,'default','links','友情链接',''),(12,'default','header','网站头部',''),(13,'default','followUs','关注我们','');
/*!40000 ALTER TABLE `ef_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_book`
--

DROP TABLE IF EXISTS `ef_book`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_book` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `type` enum('book','chapter','article') NOT NULL,
  `parent` smallint(5) unsigned NOT NULL default '0',
  `path` char(255) NOT NULL default '',
  `grade` tinyint(3) unsigned NOT NULL default '0',
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `views` mediumint(5) unsigned NOT NULL default '0',
  `order` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `order` (`order`),
  KEY `parent` (`parent`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_book`
--

LOCK TABLES `ef_book` WRITE;
/*!40000 ALTER TABLE `ef_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_category`
--

DROP TABLE IF EXISTS `ef_category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_category` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `name` char(30) NOT NULL default '',
  `alias` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `parent` smallint(5) unsigned NOT NULL default '0',
  `path` char(255) NOT NULL default '',
  `grade` tinyint(3) unsigned NOT NULL default '0',
  `order` smallint(5) unsigned NOT NULL default '0',
  `type` char(30) NOT NULL,
  `readonly` enum('0','1') NOT NULL default '0',
  `moderators` varchar(255) NOT NULL,
  `threads` smallint(5) NOT NULL,
  `posts` smallint(5) NOT NULL,
  `postedBy` varchar(30) NOT NULL,
  `postedDate` datetime NOT NULL,
  `postID` mediumint(9) NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tree` (`type`),
  KEY `order` (`order`),
  KEY `parent` (`parent`),
  KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_category`
--

LOCK TABLES `ef_category` WRITE;
/*!40000 ALTER TABLE `ef_category` DISABLE KEYS */;
INSERT INTO `ef_category` VALUES (1,'儿童艺术品私人定制','','','',0,',1,',1,10,'product','0','',0,0,'','2014-10-08 21:30:30',0,0,''),(2,'儿童美味定制食物','','','',0,',2,',1,20,'product','0','',0,0,'','2014-10-08 21:30:30',0,0,''),(3,'儿童体验式旅游','','','',0,',3,',1,30,'product','0','',0,0,'','2014-10-08 21:30:30',0,0,''),(4,'儿童玩具','','','',0,',4,',1,40,'product','0','',0,0,'','2014-10-08 21:30:30',0,0,'');
/*!40000 ALTER TABLE `ef_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_config`
--

DROP TABLE IF EXISTS `ef_config`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_config` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `owner` char(30) NOT NULL default '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL default '',
  `key` char(30) default NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_config`
--

LOCK TABLES `ef_config` WRITE;
/*!40000 ALTER TABLE `ef_config` DISABLE KEYS */;
INSERT INTO `ef_config` VALUES (1,'system','common','global','version','3.0'),(32,'system','common','site','lang','zh-cn'),(10,'system','common','product','currency','￥'),(17,'system','common','site','lastUpload','1412776595'),(9,'system','common','nav','top','[{\"type\":\"system\",\"article\":\"0\",\"product\":\"0\",\"system\":\"home\",\"title\":\"\\u9996\\u9875\",\"url\":\"\",\"key\":\"0\",\"target\":\"\",\"class\":\"nav-system-home\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"1\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u827a\\u672f\\u54c1\\u79c1\\u4eba\\u5b9a\\u5236\",\"url\":\"\\/product\\/c1.html\",\"key\":\"1\",\"target\":\"\",\"class\":\"nav-product-1\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"2\",\"system\":\"company\",\"title\":\"\\u513f\\u7ae5\\u7f8e\\u5473\\u5b9a\\u5236\\u98df\\u7269\",\"url\":\"\\/product\\/c2.html\",\"key\":\"2\",\"target\":\"\",\"class\":\"nav-product-2\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"3\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u4f53\\u9a8c\\u5f0f\\u65c5\\u6e38\",\"url\":\"\\/product\\/c3.html\",\"key\":\"3\",\"target\":\"\",\"class\":\"nav-product-3\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"4\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u73a9\\u5177\",\"url\":\"\\/product\\/c4.html\",\"key\":\"4\",\"target\":\"\",\"class\":\"nav-product-4\",\"children\":[]}]'),(8,'system','common','site','logo','{\"fileID\":\"3\",\"pathname\":\"201410\\/f_552fed48a3ef1727c05a84408bd06eca.jpg\",\"webPath\":\"\\/data\\/upload\\/201410\\/f_552fed48a3ef1727c05a84408bd06eca.jpg\",\"addedBy\":\"admin\",\"addedDate\":\"2014-10-08 21:40:39\"}'),(12,'system','common','slides','1','{\"title\":\"\",\"titleColor\":\"#FFF\",\"mainLink\":\"\",\"backgroundType\":\"image\",\"backgroundColor\":\"#114DAD\",\"height\":\"100\",\"label\":[\"\"],\"buttonClass\":[\"primary\"],\"buttonUrl\":[\"\"],\"buttonTarget\":[\"\"],\"summary\":\"\",\"uid\":\"54353fba6874d\",\"image\":\"\\/data\\/upload\\/201410\\/f_f706e64693394c754ec8cb6a00fe7587.jpg\",\"createdDate\":1412775890}'),(14,'system','common','slides','2','{\"title\":\"\",\"titleColor\":\"#FFF\",\"mainLink\":\"\",\"backgroundType\":\"image\",\"backgroundColor\":\"#114DAD\",\"height\":\"100\",\"label\":[\"\"],\"buttonClass\":[\"primary\"],\"buttonUrl\":[\"\"],\"buttonTarget\":[\"\"],\"summary\":\"\",\"id\":\"14\",\"image\":\"\\/data\\/upload\\/201410\\/f_c833bfd06a0e75735149d3cb369a799d.jpg\",\"uid\":\"543541f0262e3\",\"createdDate\":1412776440}'),(29,'system','common','site','type','portal'),(30,'system','common','site','name','蝉知企业门户系统'),(31,'system','common','site','moduleEnabled','user,message'),(33,'system','common','site','copyright',''),(34,'system','common','site','keywords',''),(35,'system','common','site','indexKeywords',''),(36,'system','common','site','slogan',''),(37,'system','common','site','desc',''),(38,'system','common','site','icp',''),(39,'system','common','site','icpLink','http://www.miitbeian.gov.cn');
/*!40000 ALTER TABLE `ef_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_down`
--

DROP TABLE IF EXISTS `ef_down`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_down` (
  `id` int(10) NOT NULL auto_increment,
  `account` char(30) default NULL,
  `file` mediumint(5) default NULL,
  `ip` char(15) NOT NULL,
  `time` datetime NOT NULL,
  `referer` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fileID` (`file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_down`
--

LOCK TABLES `ef_down` WRITE;
/*!40000 ALTER TABLE `ef_down` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_down` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_file`
--

DROP TABLE IF EXISTS `ef_file`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_file` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL default '0',
  `width` smallint(5) unsigned NOT NULL default '0',
  `height` smallint(5) unsigned NOT NULL default '0',
  `objectType` char(20) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL default '',
  `addedDate` datetime NOT NULL,
  `public` enum('1','0') NOT NULL default '1',
  `downloads` mediumint(8) unsigned NOT NULL default '0',
  `extra` varchar(255) NOT NULL,
  `primary` enum('1','0') default '0',
  `editor` enum('1','0') NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_file`
--

LOCK TABLES `ef_file` WRITE;
/*!40000 ALTER TABLE `ef_file` DISABLE KEYS */;
INSERT INTO `ef_file` VALUES (1,'201410/f_35ced4f870ad70d1f81adb62a6437beb.jpg','4789_600x600','jpg',318201,600,600,'product',1,'admin','2014-10-08 21:36:09','1',0,'','0','0'),(2,'201410/f_8fe638337ef41e7aa3fe41de4fd4f6f0.jpg','4790_600x600','jpg',411858,600,600,'product',1,'admin','2014-10-08 21:36:56','1',0,'','0','0'),(3,'201410/f_552fed48a3ef1727c05a84408bd06eca.jpg','logo','jpg',582613,80,80,'logo',0,'admin','2014-10-08 21:40:39','1',0,'','0','0'),(4,'201410/f_f706e64693394c754ec8cb6a00fe7587.jpg','web_banner1','jpg',49068,1184,330,'slide',0,'admin','2014-10-08 21:44:49','1',0,'','0','0'),(5,'201410/f_1d0daf1c027da61bf2724e1c937b3010.jpg','web_banner1 (1)','jpg',49068,1184,330,'slide',0,'admin','2014-10-08 21:53:16','1',0,'','0','0'),(6,'201410/f_898655bb34b4c33fb0bf56908c064521.jpg','web_banner1','jpg',49068,1184,330,'slide',0,'admin','2014-10-08 21:53:32','1',0,'','0','0'),(7,'201410/f_c833bfd06a0e75735149d3cb369a799d.jpg','web_banner2','jpg',130654,1184,330,'slide',0,'admin','2014-10-08 21:53:58','1',0,'','0','0'),(8,'201410/f_2e85e258e90edace185aad311cde6974.jpg','4606_600x600','jpg',30731,600,600,'product',2,'admin','2014-10-08 21:56:34','1',0,'','0','0');
/*!40000 ALTER TABLE `ef_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_layout`
--

DROP TABLE IF EXISTS `ef_layout`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_layout` (
  `template` varchar(30) NOT NULL default 'default',
  `page` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `blocks` text NOT NULL,
  UNIQUE KEY `layout` (`template`,`page`,`region`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_layout`
--

LOCK TABLES `ef_layout` WRITE;
/*!40000 ALTER TABLE `ef_layout` DISABLE KEYS */;
INSERT INTO `ef_layout` VALUES ('default','all','top','[{\"id\":\"12\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','index_index','top','[{\"id\":\"5\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','index_index','middle','[{\"id\":\"5\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"3\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"4\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"}]'),('default','index_index','bottom','[{\"id\":\"11\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','company_index','side','[{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"13\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','article_browse','side','[{\"id\":\"6\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','article_view','side','[{\"id\":\"6\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','product_browse','side','[{\"id\":\"4\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"7\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','product_view','side','[{\"id\":\"4\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"7\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','message_index','side','[{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','blog_index','side','[{\"id\":\"8\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','blog_view','side','[{\"id\":\"8\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','page_index','side','[{\"id\":\"2\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'),('default','page_view','side','[{\"id\":\"2\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]');
/*!40000 ALTER TABLE `ef_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_message`
--

DROP TABLE IF EXISTS `ef_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_message` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `type` char(20) NOT NULL,
  `objectType` varchar(30) NOT NULL default '',
  `objectID` mediumint(8) unsigned NOT NULL default '0',
  `account` char(30) default NULL,
  `from` char(30) NOT NULL,
  `to` char(30) NOT NULL,
  `phone` char(30) NOT NULL,
  `email` varchar(90) NOT NULL,
  `qq` char(30) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `status` char(20) NOT NULL,
  `public` enum('0','1') NOT NULL default '1',
  `readed` enum('0','1') NOT NULL,
  `receiveEmail` enum('0','1') NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `status` (`status`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_message`
--

LOCK TABLES `ef_message` WRITE;
/*!40000 ALTER TABLE `ef_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_oauth`
--

DROP TABLE IF EXISTS `ef_oauth`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_oauth` (
  `account` varchar(30) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `openID` varchar(60) NOT NULL,
  UNIQUE KEY `account` (`account`,`provider`,`openID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_oauth`
--

LOCK TABLES `ef_oauth` WRITE;
/*!40000 ALTER TABLE `ef_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_package`
--

DROP TABLE IF EXISTS `ef_package`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_package` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL default 'extension',
  `site` varchar(150) NOT NULL,
  `chanzhiCompatible` varchar(100) NOT NULL,
  `templateCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `name` (`name`),
  KEY `addedTime` (`installedTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_package`
--

LOCK TABLES `ef_package` WRITE;
/*!40000 ALTER TABLE `ef_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_product`
--

DROP TABLE IF EXISTS `ef_product`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_product` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `mall` varchar(255) NOT NULL,
  `brand` varchar(100) default NULL,
  `model` char(30) default NULL,
  `color` char(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `unit` char(20) NOT NULL,
  `price` float(8,2) NOT NULL,
  `promotion` float(8,2) NOT NULL,
  `amount` mediumint(8) unsigned default NULL,
  `keywords` varchar(150) NOT NULL,
  `desc` text NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `status` varchar(20) NOT NULL default 'normal',
  `views` mediumint(5) unsigned NOT NULL default '0',
  `sticky` enum('0','1','2','3') NOT NULL default '0',
  `order` smallint(5) unsigned NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `order` (`order`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_product`
--

LOCK TABLES `ef_product` WRITE;
/*!40000 ALTER TABLE `ef_product` DISABLE KEYS */;
INSERT INTO `ef_product` VALUES (1,'儿童艺术品私人定制','','',' WOOYOU吾幼唯品','','','中国厦门','',158.00,138.00,50,'','','<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">用一个挂钟：记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n如果说，有一种物品兼具故事性和叙事性的双重意义，那么你家墙上那个安安静静的挂钟，是不是这种物品？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n挂钟不仅是一件家具，更是一件艺术品。定在墙上的飞鸟，或是自由自在的金鱼，亦或是置于角落的旋转木马，它们仿佛能够让时间停滞，让内心沉静，去感受个性化制作的魅力。它们更能让你与家人朋友一起记录萌宝的成长，分享快乐。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">挂钟详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>油画布、松木框</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>无框画时钟</td>\n<td><strong>流行元素：</strong>DIY喷绘</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539135690909295122\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY喷绘</h5>\n<p>充满童趣的画作与高科技相融合带来不一样的视觉感受，让我拥有一份特别的礼物。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539284918552775240\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">工艺精准</h5>\n<p>采用爱普生高精度喷头写真机将画面打印在420克纯棉油画布上，待晾干后紧绷在松木内框上，可水洗方便打理，永久鲜艳如新！</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14091241929386229271081\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">无框画工艺</h5>\n<p>反面压扣处理，精巧 美观显档次！背面为空心无板材，环保健康轻巧耐用，不翘 边，不变形</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539463400359243065\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">原创设计</h5>\n<p>孩子们的画制作的时钟，精美而富有意义，保留下美好的回忆，创造不一样的生活。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539664023402039376\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539773024064654930\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095540595724758973326\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095540727562930570545\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon1\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px 10px no-repeat;\">安装方法</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095426981639542340997\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon2\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -52px no-repeat;\">工艺说明</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427361320237079240\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>','admin','','2014-10-08 21:34:18','2014-10-08 21:34:18','normal',8,'0',1,'',''),(2,'宁夏中宁枸杞蜂蜜500g','','','','','','','瓶',48.00,38.00,99,'','','<img src=\"http://mallms.wooyou.com.cn/imageupload/14019540580818507648910\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540669091849458144\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540760569604199551\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540832135229505783\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540900532260113714\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540987358521347693\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541060127699364934\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541133965633518688\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541246652723375986\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541357864914575042\" alt=\"\" style=\"height:auto;\" />','admin','','2014-10-08 21:56:10','2014-10-08 21:56:10','normal',0,'0',2,'','');
/*!40000 ALTER TABLE `ef_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_product_custom`
--

DROP TABLE IF EXISTS `ef_product_custom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_product_custom` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `product` mediumint(8) unsigned NOT NULL default '0',
  `label` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  `order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `label` (`product`,`label`),
  KEY `product` (`product`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_product_custom`
--

LOCK TABLES `ef_product_custom` WRITE;
/*!40000 ALTER TABLE `ef_product_custom` DISABLE KEYS */;
INSERT INTO `ef_product_custom` VALUES (1,1,'风格','原创设计',0),(2,1,'材料','油画布、松木框',1),(3,2,'','',0);
/*!40000 ALTER TABLE `ef_product_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_relation`
--

DROP TABLE IF EXISTS `ef_relation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_relation` (
  `type` char(20) NOT NULL,
  `id` mediumint(9) NOT NULL,
  `category` smallint(5) NOT NULL,
  UNIQUE KEY `relation` (`type`,`id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_relation`
--

LOCK TABLES `ef_relation` WRITE;
/*!40000 ALTER TABLE `ef_relation` DISABLE KEYS */;
INSERT INTO `ef_relation` VALUES ('product',1,1),('product',2,2);
/*!40000 ALTER TABLE `ef_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_reply`
--

DROP TABLE IF EXISTS `ef_reply`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_reply` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `thread` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `author` char(30) NOT NULL,
  `editor` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `hidden` enum('0','1') NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `thread` (`thread`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_reply`
--

LOCK TABLES `ef_reply` WRITE;
/*!40000 ALTER TABLE `ef_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_tag`
--

DROP TABLE IF EXISTS `ef_tag`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_tag` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `tag` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `rank` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tag` (`tag`),
  KEY `rank` (`rank`),
  KEY `link` (`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_tag`
--

LOCK TABLES `ef_tag` WRITE;
/*!40000 ALTER TABLE `ef_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_thread`
--

DROP TABLE IF EXISTS `ef_thread`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_thread` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `board` mediumint(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `readonly` tinyint(1) NOT NULL default '0',
  `views` smallint(5) unsigned NOT NULL default '0',
  `stick` enum('0','1','2','3') NOT NULL default '0',
  `replies` smallint(6) NOT NULL,
  `repliedBy` varchar(30) NOT NULL,
  `repliedDate` datetime NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `hidden` enum('0','1') NOT NULL default '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `category` (`board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_thread`
--

LOCK TABLES `ef_thread` WRITE;
/*!40000 ALTER TABLE `ef_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_user`
--

DROP TABLE IF EXISTS `ef_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_user` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `account` char(30) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `realname` char(30) NOT NULL default '',
  `nickname` char(60) NOT NULL default '',
  `admin` enum('no','common','super') NOT NULL default 'no',
  `avatar` char(30) NOT NULL default '',
  `birthday` date NOT NULL,
  `gender` enum('f','m','u') NOT NULL default 'u',
  `email` char(90) NOT NULL default '',
  `skype` char(90) NOT NULL,
  `qq` char(20) NOT NULL default '',
  `yahoo` char(90) NOT NULL default '',
  `gtalk` char(90) NOT NULL default '',
  `wangwang` char(90) NOT NULL default '',
  `site` varchar(100) NOT NULL,
  `mobile` char(11) NOT NULL default '',
  `phone` char(20) NOT NULL default '',
  `company` varchar(255) NOT NULL,
  `address` char(120) NOT NULL default '',
  `zipcode` char(10) NOT NULL default '',
  `visits` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `last` datetime NOT NULL,
  `fails` tinyint(3) unsigned NOT NULL default '0',
  `referer` varchar(255) NOT NULL,
  `join` datetime NOT NULL,
  `reset` char(64) NOT NULL,
  `locked` datetime NOT NULL,
  `public` varchar(30) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `admin` (`admin`),
  KEY `account` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_user`
--

LOCK TABLES `ef_user` WRITE;
/*!40000 ALTER TABLE `ef_user` DISABLE KEYS */;
INSERT INTO `ef_user` VALUES (1,'admin','86f3059b228c8acf99e69734b6bb32cc','admin','','super','','0000-00-00','u','','','','','','','','','','','','',1,'10.0.2.2','2014-10-08 21:27:58',0,'','2014-10-08 21:27:51','','0000-00-00 00:00:00','0');
/*!40000 ALTER TABLE `ef_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_wx_message`
--

DROP TABLE IF EXISTS `ef_wx_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_wx_message` (
  `id` mediumint(10) unsigned NOT NULL auto_increment,
  `public` smallint(3) NOT NULL,
  `wid` char(64) NOT NULL,
  `to` varchar(50) NOT NULL,
  `from` varchar(50) NOT NULL,
  `response` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `type` char(30) NOT NULL,
  `replied` tinyint(3) NOT NULL default '0',
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_wx_message`
--

LOCK TABLES `ef_wx_message` WRITE;
/*!40000 ALTER TABLE `ef_wx_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_wx_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_wx_public`
--

DROP TABLE IF EXISTS `ef_wx_public`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_wx_public` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `account` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `appID` char(30) NOT NULL,
  `appSecret` char(32) NOT NULL,
  `url` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `primary` tinyint(3) NOT NULL default '0',
  `type` enum('subscribe','service') NOT NULL,
  `status` enum('wait','normal') NOT NULL,
  `certified` enum('1','0') NOT NULL default '0',
  `addedDate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_wx_public`
--

LOCK TABLES `ef_wx_public` WRITE;
/*!40000 ALTER TABLE `ef_wx_public` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_wx_public` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ef_wx_response`
--

DROP TABLE IF EXISTS `ef_wx_response`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ef_wx_response` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `public` smallint(3) NOT NULL,
  `key` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `type` enum('text','news','link') NOT NULL default 'text',
  `source` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `key` (`public`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ef_wx_response`
--

LOCK TABLES `ef_wx_response` WRITE;
/*!40000 ALTER TABLE `ef_wx_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `ef_wx_response` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-08 14:02:01
