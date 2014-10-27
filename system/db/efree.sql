/*
 Navicat MySQL Data Transfer

 Source Server         : 192.168.1.16
 Source Server Version : 50613
 Source Host           : 192.168.1.16
 Source Database       : efree

 Target Server Version : 50613
 File Encoding         : utf-8

 Date: 10/27/2014 14:25:04 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ef_article`
-- ----------------------------
DROP TABLE IF EXISTS `ef_article`;
CREATE TABLE `ef_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
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
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `type` varchar(30) NOT NULL,
  `views` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL,
  `link` varchar(255) NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_block`
-- ----------------------------
DROP TABLE IF EXISTS `ef_block`;
CREATE TABLE `ef_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(30) NOT NULL DEFAULT 'default',
  `type` varchar(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_block`
-- ----------------------------
BEGIN;
INSERT INTO `ef_block` VALUES ('1', 'default', 'latestArticle', '最新文章', '{\"category\":\"0\",\"limit\":\"7\"}'), ('2', 'default', 'hotArticle', '热门文章', '{\"category\":\"0\",\"limit\":\"7\"}'), ('3', 'default', 'latestProduct', '最新产品', '{\"icon\":\"icon-th\",\"category\":\"0\",\"limit\":\"16\",\"image\":\"1\",\"moreText\":\"\",\"moreUrl\":\"\",\"iconColor\":\"\",\"borderColor\":\"\",\"titleColor\":\"\",\"titleBackground\":\"\",\"textColor\":\"\",\"linkColor\":\"\",\"backgroundColor\":\"\"}'), ('4', 'default', 'hotProduct', '热门产品', '{\"category\":\"0\",\"limit\":\"3\",\"image\":\"show\"}'), ('5', 'default', 'slide', '幻灯片', ''), ('6', 'default', 'articleTree', '文章分类', '{\"showChildren\":\"0\"}'), ('7', 'default', 'productTree', '产品分类', '{\"showChildren\":\"0\"}'), ('8', 'default', 'blogTree', '博客分类', '{\"showChildren\":\"1\"}'), ('9', 'default', 'contact', '联系我们', ''), ('10', 'default', 'about', '公司简介', ''), ('11', 'default', 'links', '友情链接', ''), ('12', 'default', 'header', '网站头部', ''), ('13', 'default', 'followUs', '关注我们', ''), ('14', 'shop', 'slide', '幻灯片', ''), ('15', 'shop', 'hotProduct', '热门产品', '{\"icon\":\"icon-th\",\"limit\":\"16\",\"image\":\"1\",\"moreText\":\"\\u66f4\\u591a\",\"moreUrl\":\"\",\"iconColor\":\"\",\"borderColor\":\"\",\"titleColor\":\"\",\"titleBackground\":\"\",\"textColor\":\"\",\"linkColor\":\"\",\"backgroundColor\":\"\"}'), ('16', 'shop', 'latestProduct', '最新产品', '{\"icon\":\"icon-th\",\"limit\":\"16\",\"image\":\"1\",\"moreText\":\"\\u66f4\\u591a\",\"moreUrl\":\"\",\"iconColor\":\"\",\"borderColor\":\"\",\"titleColor\":\"\",\"titleBackground\":\"\",\"textColor\":\"\",\"linkColor\":\"\",\"backgroundColor\":\"\"}'), ('17', 'shop', 'header', '网站头部', ''), ('18', 'shop', 'productTree', '产品分类', '{\"icon\":\"icon-folder-close\",\"showChildren\":\"1\",\"iconColor\":\"\",\"borderColor\":\"\",\"titleColor\":\"\",\"titleBackground\":\"\",\"textColor\":\"\",\"linkColor\":\"\",\"backgroundColor\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `ef_book`
-- ----------------------------
DROP TABLE IF EXISTS `ef_book`;
CREATE TABLE `ef_book` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `type` enum('book','chapter','article') NOT NULL,
  `parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `views` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `parent` (`parent`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ef_cart`;
CREATE TABLE `ef_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL COMMENT '商品ID',
  `price` decimal(11,0) DEFAULT NULL COMMENT '商品单价',
  `number` int(11) DEFAULT NULL COMMENT '商品数量',
  `addedBy` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `addedDate` datetime DEFAULT NULL COMMENT '创建时间',
  `status` varchar(255) COLLATE utf8_bin DEFAULT 'normal',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`product`,`price`,`addedBy`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='购物车';

-- ----------------------------
--  Records of `ef_cart`
-- ----------------------------
BEGIN;
INSERT INTO `ef_cart` VALUES ('533', '1', '138', '1', 'admin', '2014-10-12 17:27:38', 'normal'), ('535', '3', '28', '1', 'admin', '2014-10-12 17:46:13', 'normal'), ('537', '11', '38', '22', 'admin', '2014-10-15 11:35:07', 'normal'), ('538', '10', '220', '6', 'admin', '2014-10-14 15:01:18', 'normal'), ('539', '2', '38', '1', 'admin', '2014-10-16 10:33:02', 'normal');
COMMIT;

-- ----------------------------
--  Table structure for `ef_category`
-- ----------------------------
DROP TABLE IF EXISTS `ef_category`;
CREATE TABLE `ef_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL,
  `readonly` enum('0','1') NOT NULL DEFAULT '0',
  `moderators` varchar(255) NOT NULL,
  `threads` smallint(5) NOT NULL,
  `posts` smallint(5) NOT NULL,
  `postedBy` varchar(30) NOT NULL,
  `postedDate` datetime NOT NULL,
  `postID` mediumint(9) NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tree` (`type`),
  KEY `order` (`order`),
  KEY `parent` (`parent`),
  KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_category`
-- ----------------------------
BEGIN;
INSERT INTO `ef_category` VALUES ('1', '儿童艺术品私人定制', '', '', '', '0', ',1,', '1', '10', 'product', '0', '', '0', '0', '', '2014-10-08 21:30:30', '0', '0', ''), ('2', '儿童美味定制食物', '', '', '', '0', ',2,', '1', '20', 'product', '0', '', '0', '0', '', '2014-10-08 21:30:30', '0', '0', ''), ('3', '儿童体验式旅游', '', '', '', '0', ',3,', '1', '30', 'product', '0', '', '0', '0', '', '2014-10-08 21:30:30', '0', '0', ''), ('4', '儿童玩具', '', '', '', '0', ',4,', '1', '40', 'product', '0', '', '0', '0', '', '2014-10-08 21:30:30', '0', '0', '');
COMMIT;

-- ----------------------------
--  Table structure for `ef_config`
-- ----------------------------
DROP TABLE IF EXISTS `ef_config`;
CREATE TABLE `ef_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) DEFAULT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_config`
-- ----------------------------
BEGIN;
INSERT INTO `ef_config` VALUES ('1', 'system', 'common', 'global', 'version', '3.0'), ('77', 'system', 'common', 'site', 'lang', 'zh-cn'), ('10', 'system', 'common', 'product', 'currency', '￥'), ('69', 'system', 'common', 'site', 'lastUpload', '1412947339'), ('9', 'system', 'common', 'nav', 'top', '[{\"type\":\"system\",\"article\":\"0\",\"product\":\"0\",\"system\":\"home\",\"title\":\"\\u9996\\u9875\",\"url\":\"\",\"key\":\"0\",\"target\":\"\",\"class\":\"nav-system-home\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"1\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u827a\\u672f\\u54c1\\u79c1\\u4eba\\u5b9a\\u5236\",\"url\":\"\\/product\\/c1.html\",\"key\":\"1\",\"target\":\"\",\"class\":\"nav-product-1\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"2\",\"system\":\"company\",\"title\":\"\\u513f\\u7ae5\\u7f8e\\u5473\\u5b9a\\u5236\\u98df\\u7269\",\"url\":\"\\/product\\/c2.html\",\"key\":\"2\",\"target\":\"\",\"class\":\"nav-product-2\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"3\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u4f53\\u9a8c\\u5f0f\\u65c5\\u6e38\",\"url\":\"\\/product\\/c3.html\",\"key\":\"3\",\"target\":\"\",\"class\":\"nav-product-3\",\"children\":[]},{\"type\":\"product\",\"article\":\"0\",\"product\":\"4\",\"system\":\"home\",\"title\":\"\\u513f\\u7ae5\\u73a9\\u5177\",\"url\":\"\\/product\\/c4.html\",\"key\":\"4\",\"target\":\"\",\"class\":\"nav-product-4\",\"children\":[]}]'), ('8', 'system', 'common', 'site', 'logo', '{\"fileID\":\"3\",\"pathname\":\"201410\\/f_552fed48a3ef1727c05a84408bd06eca.jpg\",\"webPath\":\"\\/data\\/upload\\/201410\\/f_552fed48a3ef1727c05a84408bd06eca.jpg\",\"addedBy\":\"admin\",\"addedDate\":\"2014-10-08 21:40:39\"}'), ('12', 'system', 'common', 'slides', '1', '{\"title\":\"\",\"titleColor\":\"#FFF\",\"mainLink\":\"\",\"backgroundType\":\"image\",\"backgroundColor\":\"#114DAD\",\"height\":\"100\",\"label\":[\"\"],\"buttonClass\":[\"primary\"],\"buttonUrl\":[\"\"],\"buttonTarget\":[\"\"],\"summary\":\"\",\"uid\":\"54353fba6874d\",\"image\":\"\\/data\\/upload\\/201410\\/f_f706e64693394c754ec8cb6a00fe7587.jpg\",\"createdDate\":1412775890}'), ('14', 'system', 'common', 'slides', '2', '{\"title\":\"\",\"titleColor\":\"#FFF\",\"mainLink\":\"\",\"backgroundType\":\"image\",\"backgroundColor\":\"#114DAD\",\"height\":\"100\",\"label\":[\"\"],\"buttonClass\":[\"primary\"],\"buttonUrl\":[\"\"],\"buttonTarget\":[\"\"],\"summary\":\"\",\"id\":\"14\",\"image\":\"\\/data\\/upload\\/201410\\/f_c833bfd06a0e75735149d3cb369a799d.jpg\",\"uid\":\"543541f0262e3\",\"createdDate\":1412776440}'), ('74', 'system', 'common', 'site', 'type', 'portal'), ('75', 'system', 'common', 'site', 'name', '吾幼唯品'), ('76', 'system', 'common', 'site', 'moduleEnabled', 'user,message'), ('78', 'system', 'common', 'site', 'copyright', ''), ('79', 'system', 'common', 'site', 'keywords', ''), ('80', 'system', 'common', 'site', 'indexKeywords', ''), ('81', 'system', 'common', 'site', 'slogan', ''), ('82', 'system', 'common', 'site', 'desc', ''), ('83', 'system', 'common', 'site', 'icp', ''), ('84', 'system', 'common', 'site', 'icpLink', 'http://www.miitbeian.gov.cn'), ('70', 'system', 'common', 'template', 'name', 'shop'), ('71', 'system', 'common', 'template', 'theme', 'wooyou'), ('72', 'system', 'common', 'template', 'parser', 'default'), ('73', 'system', 'common', 'template', 'customTheme', 'wooyou');
COMMIT;

-- ----------------------------
--  Table structure for `ef_consignee`
-- ----------------------------
DROP TABLE IF EXISTS `ef_consignee`;
CREATE TABLE `ef_consignee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(30) COLLATE utf8_bin DEFAULT '-1' COMMENT '会员ID',
  `name` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '姓名',
  `address` varchar(512) COLLATE utf8_bin DEFAULT '' COMMENT '详细地址',
  `mobile` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '手机号',
  `telephone` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '座机号',
  `zipcode` varchar(12) COLLATE utf8_bin DEFAULT '' COMMENT '邮政编码',
  `addedDate` datetime DEFAULT NULL COMMENT '创建时间',
  `default` enum('0','1') COLLATE utf8_bin DEFAULT '0' COMMENT '是否默认地址',
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '0' COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='收货地址信息表';

-- ----------------------------
--  Records of `ef_consignee`
-- ----------------------------
BEGIN;
INSERT INTO `ef_consignee` VALUES ('1', 'admin', '陈聪智', '福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 11:40:07', '0', '0'), ('2', 'admin', '张三', '福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 13:59:33', '0', '0'), ('3', 'admin', '陈聪智', '福建省厦门市福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 11:40:07', '1', '0'), ('4', 'admin', '张三', '福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 13:59:33', '0', '0'), ('5', 'admin', '陈聪智', '福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 11:40:07', '0', '0'), ('6', 'admin', '张三', '福建省厦门市思明区民族路47号海峡电子商务创业园3号电梯5楼博远科', '15275428175', '', '361000', '2014-10-27 13:59:33', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ef_down`
-- ----------------------------
DROP TABLE IF EXISTS `ef_down`;
CREATE TABLE `ef_down` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` char(30) DEFAULT NULL,
  `file` mediumint(5) DEFAULT NULL,
  `ip` char(15) NOT NULL,
  `time` datetime NOT NULL,
  `referer` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fileID` (`file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_file`
-- ----------------------------
DROP TABLE IF EXISTS `ef_file`;
CREATE TABLE `ef_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `objectType` char(20) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `public` enum('1','0') NOT NULL DEFAULT '1',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `primary` enum('1','0') DEFAULT '0',
  `editor` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_file`
-- ----------------------------
BEGIN;
INSERT INTO `ef_file` VALUES ('1', '201410/f_35ced4f870ad70d1f81adb62a6437beb.jpg', '4789_600x600', 'jpg', '318201', '600', '600', 'product', '1', 'admin', '2014-10-08 21:36:09', '1', '0', '', '0', '0'), ('2', '201410/f_8fe638337ef41e7aa3fe41de4fd4f6f0.jpg', '4790_600x600', 'jpg', '411858', '600', '600', 'product', '1', 'admin', '2014-10-08 21:36:56', '1', '0', '', '0', '0'), ('3', '201410/f_552fed48a3ef1727c05a84408bd06eca.jpg', 'logo', 'jpg', '582613', '80', '80', 'logo', '0', 'admin', '2014-10-08 21:40:39', '1', '0', '', '0', '0'), ('4', '201410/f_f706e64693394c754ec8cb6a00fe7587.jpg', 'web_banner1', 'jpg', '49068', '1184', '330', 'slide', '0', 'admin', '2014-10-08 21:44:49', '1', '0', '', '0', '0'), ('5', '201410/f_1d0daf1c027da61bf2724e1c937b3010.jpg', 'web_banner1 (1)', 'jpg', '49068', '1184', '330', 'slide', '0', 'admin', '2014-10-08 21:53:16', '1', '0', '', '0', '0'), ('6', '201410/f_898655bb34b4c33fb0bf56908c064521.jpg', 'web_banner1', 'jpg', '49068', '1184', '330', 'slide', '0', 'admin', '2014-10-08 21:53:32', '1', '0', '', '0', '0'), ('7', '201410/f_c833bfd06a0e75735149d3cb369a799d.jpg', 'web_banner2', 'jpg', '130654', '1184', '330', 'slide', '0', 'admin', '2014-10-08 21:53:58', '1', '0', '', '0', '0'), ('8', '201410/f_2e85e258e90edace185aad311cde6974.jpg', '4606_600x600', 'jpg', '30731', '600', '600', 'product', '2', 'admin', '2014-10-08 21:56:34', '1', '0', '', '0', '0'), ('9', '201410/f_067b2cfb806953e753076e782d11581a.jpg', '4751_496x496', 'jpg', '77697', '496', '496', 'product', '3', 'admin', '2014-10-09 22:10:20', '1', '0', '', '1', '0'), ('10', '201410/f_572427b6e71d9e5b9c310622672cc286.jpg', '4695_496x496', 'jpg', '196791', '496', '496', 'product', '4', 'admin', '2014-10-09 22:14:07', '1', '0', '', '1', '0'), ('11', '201410/f_0f6d994f31b7ff77350a02edc7564d41.jpg', '4708_496x496', 'jpg', '86729', '496', '496', 'product', '5', 'admin', '2014-10-09 22:15:49', '1', '0', '', '1', '0'), ('12', '201410/f_6d29862c78f995f12ad2412d882b5be0.jpg', '4731_496x496', 'jpg', '291079', '496', '496', 'product', '6', 'admin', '2014-10-09 22:17:18', '1', '0', '', '1', '0'), ('18', '201410/f_9ed6c5b8316f595eca1e12b3728a8a4a.jpg', '4683_496x496', 'jpg', '148701', '496', '496', 'product', '7', 'admin', '2014-10-10 21:22:18', '1', '0', '', '0', '0'), ('14', '201410/f_c8c21a289905dccb9105072479ec7ad0.jpg', '4793_496x496', 'jpg', '185765', '496', '496', 'product', '8', 'admin', '2014-10-09 22:21:44', '1', '0', '', '1', '0'), ('15', '201410/f_5d0cce52ba577140e4436b2509755489.jpg', '4723_496x496', 'jpg', '64309', '496', '496', 'product', '9', 'admin', '2014-10-09 22:23:40', '1', '0', '', '1', '0'), ('16', '201410/f_e4a036e3281ce80dfdf11c6cfedfbf18.jpg', '4667_496x496', 'jpg', '90945', '496', '496', 'product', '10', 'admin', '2014-10-09 22:25:00', '1', '0', '', '1', '0'), ('17', '201410/f_a9588f7aed0ccb801e769d536475a41a.jpg', '4689_496x496', 'jpg', '338190', '496', '496', 'product', '11', 'admin', '2014-10-09 22:27:15', '1', '0', '', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ef_layout`
-- ----------------------------
DROP TABLE IF EXISTS `ef_layout`;
CREATE TABLE `ef_layout` (
  `template` varchar(30) NOT NULL DEFAULT 'default',
  `page` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `blocks` text NOT NULL,
  UNIQUE KEY `layout` (`template`,`page`,`region`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_layout`
-- ----------------------------
BEGIN;
INSERT INTO `ef_layout` VALUES ('default', 'all', 'top', '[{\"id\":\"12\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'index_index', 'top', '[{\"id\":\"5\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'index_index', 'middle', '[{\"id\":\"5\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"3\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"4\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"}]'), ('default', 'index_index', 'bottom', '[{\"id\":\"11\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'company_index', 'side', '[{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"13\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'article_browse', 'side', '[{\"id\":\"6\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'article_view', 'side', '[{\"id\":\"6\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'product_browse', 'side', '[{\"id\":\"4\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"7\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'product_view', 'side', '[{\"id\":\"4\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"7\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'message_index', 'side', '[{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'blog_index', 'side', '[{\"id\":\"8\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'blog_view', 'side', '[{\"id\":\"8\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'page_index', 'side', '[{\"id\":\"2\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('default', 'page_view', 'side', '[{\"id\":\"2\",\"grid\":\"\",\"titleless\":0,\"borderless\":0},{\"id\":\"9\",\"grid\":\"\",\"titleless\":0,\"borderless\":0}]'), ('shop', 'index_index', 'middle', '[{\"id\":\"14\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"16\",\"grid\":\"12\",\"titleless\":\"\",\"borderless\":\"\"}]'), ('shop', 'all', 'top', '[{\"id\":\"17\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"}]'), ('shop', 'product_browse', 'side', '[{\"id\":\"18\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"}]'), ('wooyou', 'product_view', 'side', '[{\"id\":\"18\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"15\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"}]'), ('shop', 'product_view', 'side', '[{\"id\":\"18\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"},{\"id\":\"15\",\"grid\":\"0\",\"titleless\":\"\",\"borderless\":\"\"}]');
COMMIT;

-- ----------------------------
--  Table structure for `ef_message`
-- ----------------------------
DROP TABLE IF EXISTS `ef_message`;
CREATE TABLE `ef_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(20) NOT NULL,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) DEFAULT NULL,
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
  `public` enum('0','1') NOT NULL DEFAULT '1',
  `readed` enum('0','1') NOT NULL,
  `receiveEmail` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `ef_oauth`;
CREATE TABLE `ef_oauth` (
  `account` varchar(30) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `openID` varchar(60) NOT NULL,
  UNIQUE KEY `account` (`account`,`provider`,`openID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_order`
-- ----------------------------
DROP TABLE IF EXISTS `ef_order`;
CREATE TABLE `ef_order` (
  `id` varchar(14) COLLATE utf8_bin NOT NULL COMMENT '订单编号',
  `status` char(4) COLLATE utf8_bin DEFAULT NULL COMMENT '订单状态',
  `subs` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '子订单',
  `cost` decimal(11,2) DEFAULT '0.00' COMMENT '总花费',
  `addedBy` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `addedDate` datetime DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='订单表';

-- ----------------------------
--  Table structure for `ef_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ef_order_detail`;
CREATE TABLE `ef_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(14) DEFAULT NULL COMMENT '订单ID',
  `product` int(11) DEFAULT NULL COMMENT '商品ID',
  `price` decimal(11,2) DEFAULT NULL COMMENT '商品单价',
  `number` int(11) DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='订单明细表';

-- ----------------------------
--  Table structure for `ef_package`
-- ----------------------------
DROP TABLE IF EXISTS `ef_package`;
CREATE TABLE `ef_package` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `chanzhiCompatible` varchar(100) NOT NULL,
  `templateCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `name` (`name`),
  KEY `addedTime` (`installedTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_product`
-- ----------------------------
DROP TABLE IF EXISTS `ef_product`;
CREATE TABLE `ef_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `mall` varchar(255) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `model` char(30) DEFAULT NULL,
  `color` char(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `unit` char(20) NOT NULL,
  `price` float(8,2) NOT NULL,
  `promotion` float(8,2) NOT NULL,
  `amount` mediumint(8) unsigned DEFAULT NULL,
  `keywords` varchar(150) NOT NULL,
  `desc` text NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `views` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_product`
-- ----------------------------
BEGIN;
INSERT INTO `ef_product` VALUES ('1', '儿童艺术品私人定制', '', '', ' WOOYOU吾幼唯品', '', '', '中国厦门', '', '158.00', '138.00', '50', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">用一个挂钟：记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n如果说，有一种物品兼具故事性和叙事性的双重意义，那么你家墙上那个安安静静的挂钟，是不是这种物品？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n挂钟不仅是一件家具，更是一件艺术品。定在墙上的飞鸟，或是自由自在的金鱼，亦或是置于角落的旋转木马，它们仿佛能够让时间停滞，让内心沉静，去感受个性化制作的魅力。它们更能让你与家人朋友一起记录萌宝的成长，分享快乐。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">挂钟详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>油画布、松木框</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>无框画时钟</td>\n<td><strong>流行元素：</strong>DIY喷绘</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539135690909295122\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY喷绘</h5>\n<p>充满童趣的画作与高科技相融合带来不一样的视觉感受，让我拥有一份特别的礼物。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539284918552775240\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">工艺精准</h5>\n<p>采用爱普生高精度喷头写真机将画面打印在420克纯棉油画布上，待晾干后紧绷在松木内框上，可水洗方便打理，永久鲜艳如新！</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14091241929386229271081\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">无框画工艺</h5>\n<p>反面压扣处理，精巧 美观显档次！背面为空心无板材，环保健康轻巧耐用，不翘 边，不变形</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539463400359243065\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">原创设计</h5>\n<p>孩子们的画制作的时钟，精美而富有意义，保留下美好的回忆，创造不一样的生活。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539664023402039376\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095539773024064654930\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095540595724758973326\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095540727562930570545\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon1\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px 10px no-repeat;\">安装方法</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095426981639542340997\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon2\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -52px no-repeat;\">工艺说明</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427361320237079240\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-08 21:34:18', '2014-10-08 21:34:18', 'normal', '171', '0', '1', '', ''), ('2', '宁夏中宁枸杞蜂蜜500g', '', '', '', '', '', '', '瓶', '48.00', '38.00', '99', '', '', '<img src=\"http://mallms.wooyou.com.cn/imageupload/14019540580818507648910\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540669091849458144\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540760569604199551\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540832135229505783\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540900532260113714\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019540987358521347693\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541060127699364934\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541133965633518688\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541246652723375986\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14019541357864914575042\" alt=\"\" style=\"height:auto;\" />', 'admin', '', '2014-10-08 21:56:10', '2014-10-08 21:56:10', 'normal', '4', '0', '2', '', ''), ('3', '20克超轻粘土25色套装', '', '', '', '', '', '中国厦门', '盒', '38.00', '28.20', '100', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><p><br />\n</p>\n<p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n五颜六色的粘土是不是非常的漂亮，用它们装饰你的小世界，让小朋友的生活更加多姿多彩，充满想象力。</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n锻炼动手能力，让孩子亲身体会创造的乐趣，亲手打造小脑袋里的大世界。培养孩子的丰富的创造力，发挥孩子的无限创意，孩子们的天马行空，给他一块粘土，他会还你一个世界。</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>超轻土</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：手工</strong></td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<p><br />\n</p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097327810253093542516\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097327888802726337091\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097328043848296991139\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097328134612356177715\" alt=\"\" style=\"height:auto;\" /></p>\n<p><br />\n</p>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon1\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px 10px no-repeat;\">温馨提示</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097328790897020955747\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097329121459090258804\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', 'admin', '2014-10-09 22:10:01', '2014-10-14 15:56:25', 'normal', '164', '0', '3', '', ''), ('4', '涂鸦麻底女式帆布鞋DIY定制', '', '', '', '36~44', '', '中国厦门', '双', '250.00', '220.00', '199', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n乐乐小朋友的苹果树做的布鞋是不是很棒呢。想拥有一双如此特别的布鞋吗？和哇卡一起行动吧。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span></p>\n<p>跨界运动风与慵懒风，呈现创新年轻的设计感。采用更大面积和空间涂鸦设计，让整双鞋看起来更加夺目。</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>PC材质</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>喷绘</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td width=\"238\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158193018440099265\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">高品质棉麻围边</h5>\n<p>具有极其优异的耐磨性。</p>\n</div>\n</td>\n<td width=\"546\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158294677329334000\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">牛筋大底</h5>\n<p>超强抓力精心防滑设计，采用优质牛筋材质弹性好，耐磨且舒适，有轻盈的脚感。</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158402720269633345\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">松紧带设计</h5>\n<p>方便穿脱、舒适感极佳。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158510506148140758\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">猪皮鞋垫</h5>\n<p>质地柔软舒适，猪皮良好的吸汗透气性，保证裸足穿着的舒适度，同事还具有很强的防菌抗臭性能。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158668498707216854\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158762214410720122\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097158913134724583234\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097159007933178825936\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097159116535266838266\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097159952258981453721\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:13:45', '2014-10-09 22:13:45', 'normal', '8', '0', '4', '', ''), ('5', 'DIY手工本子/牛皮纸笔记本', '', '', '', '', '白', '中国厦门', '幅', '50.00', '40.00', '299', '', '', '<h2 style=\"font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-weight:500;color:#333333;font-size:20px;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n拥有一本精致的笔记本，记录下生活中的美好瞬间，拥有更美好的人生，是不是很棒呢？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n真正的流行不是歇斯底里，而是纯粹的个人风格，呈现创新年轻的设计感。采用空间涂鸦设计，让你的生活更加多彩。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>250g铜版纸</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>喷绘</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14096425667023834662263\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">PVC磨砂板</h5>\n<p>质轻、环保、高弹(抗冲击）、防滑、<br />\n防水。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14096426030505291448713\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">荷兰白卡</h5>\n<p>无杂质、双面亚光、高挺度、高滑度、手感好，吸墨性<br />\n较好，印刷效果好。</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14096426204106777161533\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">古铜色包角</h5>\n<p>古铜色护角，古典美观，精致典雅，更好的保<br />\n护笔记本</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14096426349230779558094\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">金属护环、护角</h5>\n<p>古铜色护环、护圈灵活方便，简洁美观，增添笔<br />\n记本的整体装饰效果</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096424825420639232820\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096424953660002776737\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096425352139287022251\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096426780378847335250\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096427074743413509765\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096427271533641586847\" alt=\"\" style=\"height:auto;\" /></p>\n<div class=\"sub\" style=\"padding:10px 0px;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>', 'admin', '', '2014-10-09 22:15:35', '2014-10-09 22:15:35', 'normal', '0', '0', '5', '', ''), ('6', '可爱陀螺手工包DIY创意玩具', '', '', '', '', '', '中国厦门', '盒', '16.00', '10.00', '122', '', '', '<h2 style=\"font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-weight:500;color:#333333;font-size:20px;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n自己动手制作的玩具，是不是更有意义呢？能使我们学会珍惜自己的劳动成果。也能让我们会体到制作玩具的快乐，亲手做陀螺是个很不错的选择。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n真正的开心快乐不是在于玩具有多昂贵，也不是玩具有多新潮，而是孩子们和爸爸妈妈在亲手制作玩具过程中得到的快乐与真实。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>海绵纸</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>DIY</td>\n<td><strong>流行元素：</strong>手工包</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095583600006431704188\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">多色海绵纸</h5>\n<p>五颜六色的海绵纸，鲜艳、夺目，吸引<br />\n着孩子们的目光。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095593809651497984853\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY手工</h5>\n<p>孩子的世界，有些天马行空，也有些不可思议，但这是他们最真实的想法，这是在没有接受过多的思维定式才有的纯真。</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095593918755646483431\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">温暖的毛线</h5>\n<p>彩色的海绵纸环绕在一起，让我的心感到阵阵的温暖， 保留下这美好的一刻。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095594066708731991742\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">雪糕棒</h5>\n<p>简单的材料，制作出精美而富有意义人偶，创造美<br />\n好的回忆。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095594989949524678423\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095595080488157562422\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095596444302963343447\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095596584453248440576\" alt=\"\" style=\"height:auto;\" /></p>\n<p><br />\n</p>\n<h2 class=\"icon1\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px 10px no-repeat;\">安装方法</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097458377264227910381\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>', 'admin', 'admin', '2014-10-09 22:17:04', '2014-10-10 21:37:32', 'normal', '280', '0', '6', '', ''), ('7', '纯白T恤亲子衫个性定制', '', '', '吾幼', '', '白', '中国厦门', '件', '180.00', '150.00', '129', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n和爸爸妈妈一起穿亲子装是不是很幸福呢？哇卡和爸爸妈妈就很幸福哦。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n跨界运动风与休闲风，呈现创新年轻的设计感。采用空间涂鸦设计，让T恤看起来更加夺目。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>棉布</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>喷绘</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td width=\"280\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097307547425250181864\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY喷绘</h5>\n<p>那微微向上仰起的头，像是在凝视远方一样，给人一种\"高贵\"的感觉</p>\n</div>\n</td>\n<td width=\"504\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097307672966769342210\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">原创设计</h5>\n<p>太阳、白云、长颈鹿到小人再到草地，简洁明确，层次感<br />\n鲜明，给人感觉很和谐</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097307773888363932648\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">天然纯棉</h5>\n<p>纯棉面料舒适透气，手感柔软，夏天必备首选。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097307941338970482697\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">经典时尚领圈</h5>\n<p>领口平整，采用高密度织带 加密技术，保证领口不变形</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097308476803305618362\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097311271988980500957\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097312820318452201453\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097312899843957685431\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097312996274995984783\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097313071561512767398\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:18:33', '2014-10-09 22:18:33', 'normal', '8', '0', '7', '', ''), ('8', '高清纯棉油画布无框挂钟DIY定制', '', '', '', '', '', '厦门', '幅', '168.00', '138.00', '122', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">用一个挂钟：记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n如果说，有一种物品兼具故事性和叙事性的双重意义，那么你家墙上那个安安静静的挂钟，是不是这种物品？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n挂钟不仅是一件家具，更是一件艺术品。定在墙上的飞鸟，或是自由自在的金鱼，亦或是置于角落的旋转木马，它们仿佛能够让时间停滞，让内心沉静，去感受个性化制作的魅力。它们更能让你与家人朋友一起记录萌宝的成长，分享快乐。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">挂钟详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>油画布、松木框</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>无框画时钟</td>\n<td><strong>流行元素：</strong>DIY喷绘</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095531076437624502180\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY喷绘</h5>\n<p>充满童趣的画作与高科技相融合带来不一样的视觉感受，让我拥有一份特别的礼物。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095531416685562900820\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">工艺精准</h5>\n<p>采用爱普生高精度喷头写真机将画面打印在420克纯棉油画布上，待晾干后紧绷在松木内框上，可水洗方便打理，永久鲜艳如新！</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14091241929386229271081\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">无框画工艺</h5>\n<p>反面压扣处理，精巧 美观显档次！背面为空心无板材，环保健康轻巧耐用，不翘 边，不变形</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14095531712618495424367\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">原创设计</h5>\n<p>孩子们的画制作的时钟，精美而富有意义，保留下美好的回忆，创造不一样的生活。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095532201474583252477\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095532541050037814227\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14095536983229388775693\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14095533120216399821989\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon1\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px 10px no-repeat;\">安装方法</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095426981639542340997\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:21:25', '2014-10-09 22:21:25', 'normal', '4', '0', '8', '', ''), ('9', '咖啡杯马克杯DIY定制创意礼物', '', '', '', '', '白色', '中国厦门', '杯', '100.00', '80.00', '177', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n当你们想喝杯暖暖的热牛奶时，是不是希望有一个漂亮的杯子让你们的心更加的温暖呢？哇卡经常就会有这样的心里哦。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n一份真心的礼物，来至于美好的祝福，亲手DIY一个漂亮的马克杯送给家人朋友，暖暖的很温馨。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>陶瓷</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>热装印</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td width=\"280\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097408816462679794766\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">马克杯</h5>\n<p>新款附小勺杯、个性、高档，强化瓷处理，爱意融融，送给最亲爱的家人朋友。</p>\n</div>\n</td>\n<td width=\"504\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097409120622153786809\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">高档瓷质</h5>\n<p>无毒、无异味、无静电，三无产品放心使用。</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097409764564775278786\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">热转印技术</h5>\n<p>采用成熟的热装印技术，真实还原照片，不错位，色牢度高。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097409848562581280710\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">原创设计</h5>\n<p>小艺术家的美丽图画，增添了创造性和艺术性，是实用与艺术的完美结合。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097410005959695655371\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097410099791667519463\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097410193793825404629\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097410274358680557461\" alt=\"\" style=\"height:auto;\" /></p>\n<p><br />\n</p>\n<p><br />\n</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:23:12', '2014-10-09 22:23:12', 'normal', '28', '0', '9', '', ''), ('10', '全自动长柄双层雨伞DIY定制', '', '', '', '', '', '中国厦门', '把', '250.00', '220.00', '121', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n暖调子的长颈鹿、草地、还有太阳，是不是给人一种很有爱的感觉呢？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n真正的流行不是歇斯底里，而是纯粹的个人风格，呈现创新年轻的设计感。采用空间涂鸦设计，让你的生活更加多彩。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td><strong>上市时间：</strong>2014年夏季</td>\n<td><strong>材料：</strong>碰击布</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>喷绘</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096447246199283919362\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096447440455569492460\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096448118000042844949\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096448326314816942264\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14096448581628628913189\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14096448743104096031726\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14091246365718391527089\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:24:43', '2014-10-09 22:24:43', 'normal', '151', '0', '10', '', ''), ('11', '小巧可爱台历个性DIY定制', '', '', '', '', '白', '中国厦门', '本', '48.00', '38.00', '123', '', '', '<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/icon.png) 0px -768px no-repeat;\">记录成长，分享快乐</h2>\n<div class=\"textbox\" style=\"padding:15px;\"><div class=\"subtext nobor\"><p><span style=\"color:#E60012;\">哇卡想问你们</span><br />\n当你忘记今天是什么特别的日子时，你会想到什么，哇卡呢，回想起日历，那你们呢？</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">哇卡想告诉你们</span><br />\n小作者凭着感觉和记忆画出了自己经验里所认知的东西，用笔大胆，色彩明快。这一幅幅的奇思妙想做成日历，记录着生活中的点点滴滴。</p>\n<p>&nbsp;</p>\n<p><span style=\"color:#E60012;\">商品详情</span></p>\n<div class=\"pro-info\" style=\"padding:20px 30px;background:url(http://mall.wooyou.com.cn/images/infobg.jpg) no-repeat;\"><table style=\"width:878px;\"><tbody><tr><td width=\"184\"><strong>品牌：</strong>&nbsp;WOOYOU吾幼唯品</td>\n<td width=\"165\"><strong>上市时间：</strong>2014年夏季</td>\n<td width=\"212\"><strong>材料：</strong>哑粉纸、布纹纸板</td>\n</tr>\n<tr><td><strong>风格：</strong>原创设计</td>\n<td><strong>工艺：</strong>喷绘</td>\n<td><strong>流行元素：</strong>DIY</td>\n</tr>\n<tr><td><strong>图案：</strong>个性定制</td>\n<td><strong>产地：</strong>中国厦门</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"waka-intr\" style=\"margin:15px 0px;padding:25px 10px 0px 110px;background:url(http://mall.wooyou.com.cn/images/waka.png) no-repeat;\"><div class=\"intr-info\" style=\"padding:10px;\"><h3 style=\"font-family:inherit;font-weight:500;margin-left:0px;\">听哇卡我给你介绍细节</h3>\n<table style=\"width:799px;\"><tbody><tr><td width=\"276\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097285710480784184217\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">DIY喷绘</h5>\n<p>真正的流行不是copy，而是纯粹的个人风格是追求创意的生活态度</p>\n</div>\n</td>\n<td width=\"508\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14097285958491973878429\" alt=\"\" style=\"height:auto;\" /><br />\n<div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">多功能日历</h5>\n<p>底座使用布纹纸包装，更显档次，质感出众，更加耐磨。</p>\n</div>\n</td>\n</tr>\n<tr><td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097286364910782467161\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">惠普Indigo印刷</h5>\n<p>色彩鲜艳，环保哑粉纸尽显品质质感；圈装材质，简单牢固，美观大方。</p>\n</div>\n</td>\n<td><img src=\"http://mallms.wooyou.com.cn/imageupload/14097286286048288680517\" alt=\"\" style=\"height:auto;\" /><div class=\"picinfo\"><h5 style=\"font-family:inherit;font-weight:500;color:#02519F;font-size:16px;\">多功能日历</h5>\n<p>特殊日期定制，自由标记功能；背面有与众不同图案<br />\n定制属于自己的纪念册。</p>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div class=\"pro-zhanshi\"><p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097287682065587273800\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097287915628421610348\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288218144921033602\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097290815620782338308\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288590618261579533\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288668625099589965\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288757353024249329\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288834621851784506\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097288913730683630776\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097289171891282928265\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097289263148569919980\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097289463638042214934\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097289577983920412236\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097289697881807312905\" alt=\"\" style=\"height:auto;\" /></p>\n<p><img src=\"http://mallms.wooyou.com.cn/imageupload/14097290249103463424379\" alt=\"\" style=\"height:auto;\" /><img src=\"http://mallms.wooyou.com.cn/imageupload/14097290484662790037641\" alt=\"\" style=\"height:auto;\" /></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"sub\" style=\"padding:10px 0px;color:#666666;font-family:tahoma, arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;\"><h2 class=\"icon3\" style=\"font-family:inherit;font-weight:500;color:#333333;font-size:20px;background:url(http://mall.wooyou.com.cn/images/detail-icon.png) 0px -134px no-repeat;\">图片要求</h2>\n<p class=\"tu\"><img src=\"http://mallms.wooyou.com.cn/imageupload/14095427665724392533323\" alt=\"\" style=\"height:auto;\" /></p>\n</div>', 'admin', '', '2014-10-09 22:26:42', '2014-10-09 22:26:42', 'normal', '83', '0', '11', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `ef_product_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ef_product_custom`;
CREATE TABLE `ef_product_custom` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `label` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  `order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`product`,`label`),
  KEY `product` (`product`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_product_custom`
-- ----------------------------
BEGIN;
INSERT INTO `ef_product_custom` VALUES ('1', '1', '风格', '原创设计', '0'), ('2', '1', '材料', '油画布、松木框', '1'), ('3', '2', '', '', '0'), ('15', '3', '', '', '0'), ('5', '4', '', '', '0'), ('6', '5', '', '', '0'), ('14', '6', '', '', '0'), ('8', '7', '', '', '0'), ('9', '8', '', '', '0'), ('10', '9', '', '', '0'), ('11', '10', '', '', '0'), ('12', '11', '', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ef_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ef_relation`;
CREATE TABLE `ef_relation` (
  `type` char(20) NOT NULL,
  `id` mediumint(9) NOT NULL,
  `category` smallint(5) NOT NULL,
  UNIQUE KEY `relation` (`type`,`id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_relation`
-- ----------------------------
BEGIN;
INSERT INTO `ef_relation` VALUES ('product', '1', '1'), ('product', '2', '2'), ('product', '3', '1'), ('product', '4', '1'), ('product', '5', '1'), ('product', '6', '1'), ('product', '7', '1'), ('product', '8', '1'), ('product', '9', '1'), ('product', '10', '1'), ('product', '11', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ef_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ef_reply`;
CREATE TABLE `ef_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `thread` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `author` char(30) NOT NULL,
  `editor` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `hidden` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ef_tag`;
CREATE TABLE `ef_tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `rank` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `rank` (`rank`),
  KEY `link` (`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_thread`
-- ----------------------------
DROP TABLE IF EXISTS `ef_thread`;
CREATE TABLE `ef_thread` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `board` mediumint(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `views` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stick` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `replies` smallint(6) NOT NULL,
  `repliedBy` varchar(30) NOT NULL,
  `repliedDate` datetime NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `hidden` enum('0','1') NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_user`
-- ----------------------------
DROP TABLE IF EXISTS `ef_user`;
CREATE TABLE `ef_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '',
  `nickname` char(60) NOT NULL DEFAULT '',
  `admin` enum('no','common','super') NOT NULL DEFAULT 'no',
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `gender` enum('f','m','u') NOT NULL DEFAULT 'u',
  `email` char(90) NOT NULL DEFAULT '',
  `skype` char(90) NOT NULL,
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `site` varchar(100) NOT NULL,
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL,
  `address` char(120) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `last` datetime NOT NULL,
  `fails` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL,
  `join` datetime NOT NULL,
  `reset` char(64) NOT NULL,
  `locked` datetime NOT NULL,
  `public` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin` (`admin`),
  KEY `account` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ef_user`
-- ----------------------------
BEGIN;
INSERT INTO `ef_user` VALUES ('1', 'admin', '86f3059b228c8acf99e69734b6bb32cc', 'admin', '', 'super', '', '0000-00-00', 'u', '', '', '', '', '', '', '', '', '', '', '', '', '20', '127.0.0.1', '2014-10-27 09:44:57', '0', '', '2014-10-08 21:27:51', '', '0000-00-00 00:00:00', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ef_wx_message`
-- ----------------------------
DROP TABLE IF EXISTS `ef_wx_message`;
CREATE TABLE `ef_wx_message` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `public` smallint(3) NOT NULL,
  `wid` char(64) NOT NULL,
  `to` varchar(50) NOT NULL,
  `from` varchar(50) NOT NULL,
  `response` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `type` char(30) NOT NULL,
  `replied` tinyint(3) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_wx_public`
-- ----------------------------
DROP TABLE IF EXISTS `ef_wx_public`;
CREATE TABLE `ef_wx_public` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `appID` char(30) NOT NULL,
  `appSecret` char(32) NOT NULL,
  `url` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `primary` tinyint(3) NOT NULL DEFAULT '0',
  `type` enum('subscribe','service') NOT NULL,
  `status` enum('wait','normal') NOT NULL,
  `certified` enum('1','0') NOT NULL DEFAULT '0',
  `addedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ef_wx_response`
-- ----------------------------
DROP TABLE IF EXISTS `ef_wx_response`;
CREATE TABLE `ef_wx_response` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `public` smallint(3) NOT NULL,
  `key` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `type` enum('text','news','link') NOT NULL DEFAULT 'text',
  `source` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`public`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
