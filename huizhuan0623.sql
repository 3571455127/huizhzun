/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : huizhuan

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-06-23 17:00:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cosmo_access
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_access`;
CREATE TABLE `cosmo_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_access
-- ----------------------------
INSERT INTO `cosmo_access` VALUES ('2', '162', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '160', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '157', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '156', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '155', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '154', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '153', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '152', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '151', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '150', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '149', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '148', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '147', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '146', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '145', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '142', '3', '127', '');
INSERT INTO `cosmo_access` VALUES ('2', '140', '3', '126', '');
INSERT INTO `cosmo_access` VALUES ('2', '139', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '129', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '128', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '127', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '126', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '107', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '88', '3', '81', '');
INSERT INTO `cosmo_access` VALUES ('2', '81', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '30', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '28', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '27', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '26', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '25', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '24', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '23', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '22', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '21', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '19', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '18', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '17', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '16', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '15', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '14', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '13', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '12', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '11', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '8', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '7', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '5', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '4', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '3', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '2', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '1', '1', '0', '');

-- ----------------------------
-- Table structure for cosmo_article
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_article`;
CREATE TABLE `cosmo_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_article
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_attachment`;
CREATE TABLE `cosmo_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=845 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_attachment
-- ----------------------------
INSERT INTO `cosmo_attachment` VALUES ('47', '6', '2', '0', 'section-banner.jpg', '/Uploads/201609/57d77651b1e91.jpg', '115208', 'jpg', '1', '0', '1', '1473738321', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('49', '1', '20', '0', '111.jpg', '/Uploads/201609/57d7aca38e5b2.jpg', '263261', 'jpg', '1', '0', '1', '1473752227', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('50', '1', '1', '0', '111.jpg', '/Uploads/201609/57d7acb5403bd.jpg', '263261', 'jpg', '1', '0', '1', '1473752245', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('51', '1', '1', '0', '100.jpg', '/Uploads/201609/57d7ad6b8feda.jpg', '125034', 'jpg', '1', '0', '1', '1473752427', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('52', '1', '21', '21', '111.jpg', '/Uploads/201609/57d7adc076422.jpg', '124810', 'jpg', '1', '0', '1', '1473752512', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('53', '1', '21', '21', '112.jpg', '/Uploads/201609/57d7adf17a5c5.jpg', '67987', 'jpg', '1', '0', '1', '1473752561', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('54', '1', '21', '21', '113.jpg', '/Uploads/201609/57d7ae1725ae7.jpg', '91141', 'jpg', '1', '0', '1', '1473752599', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('55', '1', '22', '22', '112.png', '/Uploads/201609/57d7af4e1a660.png', '3417', 'png', '1', '0', '1', '1473752910', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('56', '1', '22', '22', '113.png', '/Uploads/201609/57d7af79e8d24.png', '3857', 'png', '1', '0', '1', '1473752953', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('57', '1', '22', '22', '114.png', '/Uploads/201609/57d7afd9163c6.png', '4951', 'png', '1', '0', '1', '1473753049', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('58', '1', '22', '22', '114.png', '/Uploads/201609/57d7aff417586.png', '4951', 'png', '1', '0', '1', '1473753076', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('59', '1', '25', '25', '100.jpg', '/Uploads/201609/57d7bd53a3317.jpg', '106191', 'jpg', '1', '1', '1', '1473756499', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('60', '1', '25', '0', '100.jpg', '/Uploads/201609/57d7bd7d8a634.jpg', '106191', 'jpg', '1', '0', '1', '1473756541', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('61', '1', '27', '0', '123.png', '/Uploads/201609/57d7bdcc5b647.png', '486625', 'png', '1', '0', '1', '1473756620', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('62', '1', '29', '0', '111.jpg', '/Uploads/201609/57d7c3e5ccfe6.jpg', '99280', 'jpg', '1', '0', '1', '1473758181', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('63', '1', '30', '0', '100.jpg', '/Uploads/201609/57d7d1a94bba9.jpg', '106191', 'jpg', '1', '0', '1', '1473761705', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('64', '1', '20', '20', 'gf.jpg', '/Uploads/201609/57e227e5e4e00.jpg', '387475', 'jpg', '1', '0', '1', '1474439141', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('65', '1', '22', '22', 'Business-license-.jpg', '/Uploads/201609/57e229a0970b3.jpg', '192521', 'jpg', '1', '0', '1', '1474439584', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('66', '1', '22', '22', 'Guizhou-peak-API-certificate-.jpg', '/Uploads/201609/57e229a1ae022.jpg', '160635', 'jpg', '1', '0', '1', '1474439585', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('67', '1', '22', '22', 'ISO9001.jpg', '/Uploads/201609/57e229a2d1e9b.jpg', '194187', 'jpg', '1', '0', '1', '1474439586', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('68', '1', '22', '22', 'ISO-Ts29001.jpg', '/Uploads/201609/57e229a3ee013.jpg', '197449', 'jpg', '1', '0', '1', '1474439587', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('69', '1', '22', '22', 'NS-1-0129.jpg', '/Uploads/201609/57e229a507cb7.jpg', '227557', 'jpg', '1', '0', '1', '1474439589', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('70', '1', '22', '22', 'Safety-production-standardization-of-three-enterpr', '/Uploads/201609/57e229a620396.jpg', '82650', 'jpg', '1', '0', '1', '1474439590', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('71', '1', '22', '22', 'Guizhou-peak-API-specification-Q1-certificate--249', '/Uploads/201609/57e229a763de7.jpg', '30152', 'jpg', '1', '0', '1', '1474439591', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('110', '230', '1', '7', 'banner02.jpg', '/Uploads/201610/57ff29b63dbfc.jpg', '75669', 'jpg', '1', '0', '1', '1476340150', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('111', '2', '1', '0', '摄图网-在阳光下的新闻.jpg', '/Uploads/201701/58732d7db355b.jpg', '130953', 'jpg', '1', '0', '1', '1483943293', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('112', '6', '2', '0', '摄图网-晚餐海鲜盛宴.jpg', '/Uploads/201701/58732fa5dda84.jpg', '161039', 'jpg', '1', '0', '1', '1483943845', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('119', '7', '25', '0', '摄图网-商务客服形象.jpg', '/Uploads/201701/587339e9ed827.jpg', '53864', 'jpg', '1', '0', '1', '1483946473', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('121', '4', '30', '0', '摄图网-海边美丽的世界.jpg', '/Uploads/201701/587344c52a3f1.jpg', '119628', 'jpg', '1', '0', '1', '1483949253', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('129', '2', '0', '0', 'lgz2_meitu_1_j9hc_meitu_1_ci9g.jpg', '/Uploads/201701/58734b7abe5fa.jpg', '189728', 'jpg', '1', '0', '1', '1483950970', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('148', '6', '2', '0', 'IMG_4506.jpg', '/Uploads/201703/58b6351e3ad5c.jpg', '76070', 'jpg', '1', '0', '1', '1488336158', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('154', '2', '1', '0', '图层-2.jpg', '/Uploads/201703/58b63ba1ee9e1.jpg', '98171', 'jpg', '1', '0', '1', '1488337825', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('155', '2', '45', '0', '摄图网-商务人士讨论开会-(1).jpg', '/Uploads/201703/58b640c09b5b6.jpg', '151904', 'jpg', '1', '0', '1', '1488339136', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('156', '1', '25', '0', '摄图网-智能生活.jpg', '/Uploads/201703/58b6686b1d939.jpg', '37351', 'jpg', '1', '0', '1', '1488349291', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('157', '2', '0', '0', 'banner-assort1.jpg', '/Uploads/201704/58e6ec915b58f.jpg', '202610', 'jpg', '1', '0', '1', '1491528849', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('158', '4', '2', '0', '图层-3.jpg', '/Uploads/201704/58e7613f8df35.jpg', '106702', 'jpg', '1', '0', '1', '1491558719', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('159', '1', '30', '0', '图层-1.jpg', '/Uploads/201704/58e884f98d444.jpg', '37406', 'jpg', '1', '0', '1', '1491633401', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('578', '10', '0', '0', 'b1.png', '/Uploads/201806/5b2a0152006a6.png', '83453', 'png', '1', '1', '3', '1529479506', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('218', '1', '77', '77', 'GFC-888B.jpg', '/Uploads/201705/590bdd4db1cc9.jpg', '13640', 'jpg', '1', '0', '1', '1493949773', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('219', '1', '77', '77', 'GFC-888a.png', '/Uploads/201705/590bdd5f00ee9.png', '15201', 'png', '1', '0', '1', '1493949791', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('220', '1', '77', '77', 'GFC-888c.png', '/Uploads/201705/590bdd6018587.png', '7378', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('221', '1', '77', '77', 'GFC-888f.png', '/Uploads/201705/590bdd6062453.png', '6315', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('222', '1', '77', '77', 'GFC-888A-1.png', '/Uploads/201705/590be5d6c608c.png', '118805', 'png', '1', '0', '1', '1493951958', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('223', '1', '77', '77', '未标题-2.jpg', '/Uploads/201705/590be5e96a5d1.jpg', '18787', 'jpg', '1', '0', '1', '1493951977', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('224', '230', '1', '7', 'banner01.jpg', '/Uploads/201705/59101012d93da.jpg', '103808', 'jpg', '1', '0', '1', '1494224914', '119.129.75.206', '1');
INSERT INTO `cosmo_attachment` VALUES ('355', '0', '0', '0', '0.png', '/Uploads/201709/59b7b01ff13a2.png', '61223', 'png', '1', '0', '2', '1505210399', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('353', '6', '0', '0', '0.png', '/Uploads/201709/59b7afca7ff33.png', '61223', 'png', '1', '1', '2', '1505210314', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('354', '0', '0', '0', '0.png', '/Uploads/201709/59b7afcdb8536.png', '61223', 'png', '1', '0', '2', '1505210317', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('732', '230', '2', '11', 'banner.jpg', '/Uploads/201810/5bcda1f4e634a.jpg', '187224', 'jpg', '1', '0', '3', '1540202996', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('761', '230', '1', '7', '20181212155424.jpg', '/Uploads/201812/5c10befba9726.jpg', '1374989', 'jpg', '1', '0', '2', '1544601339', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('321', '1', '74', '74', 'wenyoung whiteboard production line.jpg', '/Uploads/201705/5926796e10f5a.jpg', '144687', 'jpg', '1', '0', '1', '1495693678', '192.154.105.114', '1');
INSERT INTO `cosmo_attachment` VALUES ('329', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (2).jpg', '/Uploads/201705/5927bdd30d8f4.jpg', '56555', 'jpg', '1', '1', '1', '1495776723', '113.70.215.251', '0');
INSERT INTO `cosmo_attachment` VALUES ('328', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (1).jpg', '/Uploads/201705/5927bdc98cfe9.jpg', '65250', 'jpg', '1', '1', '1', '1495776713', '113.70.215.251', '0');
INSERT INTO `cosmo_attachment` VALUES ('342', '6', '0', '0', 'WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c23d419a8.jpg', '60758', 'jpg', '1', '1', '1', '1495777853', '83.217.10.126', '0');
INSERT INTO `cosmo_attachment` VALUES ('349', '1', '74', '74', 'introduction of wenyoung stationery2.jpg', '/Uploads/201705/5928f0030778e.jpg', '127536', 'jpg', '1', '0', '1', '1495855107', '113.70.215.251', '1');
INSERT INTO `cosmo_attachment` VALUES ('350', '1', '0', '0', 'wenyang showroom.jpg', '/Uploads/201706/593faea04b0da.jpg', '142339', 'jpg', '1', '0', '1', '1497345696', '116.20.230.213', '0');
INSERT INTO `cosmo_attachment` VALUES ('351', '1', '74', '74', 'wenyang showroom.jpg', '/Uploads/201706/593faec12ff48.jpg', '142339', 'jpg', '1', '0', '1', '1497345729', '116.20.230.213', '1');
INSERT INTO `cosmo_attachment` VALUES ('409', '6', '0', '0', '0.png', '/Uploads/201709/59b8aced05856.png', '35249', 'png', '1', '1', '2', '1505275117', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('417', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8cd8141914.jpg', '84311', 'jpg', '1', '1', '2', '1505283457', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('418', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8ce1581272.jpg', '84311', 'jpg', '1', '1', '2', '1505283605', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('419', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8cedaa5c01.jpg', '84311', 'jpg', '1', '1', '2', '1505283802', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('421', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board (1).jpg', '/Uploads/201709/59b8cf9f95ecb.jpg', '38975', 'jpg', '1', '0', '2', '1505283999', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('422', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8cf9fca9cd.jpg', '742239', 'jpg', '1', '0', '2', '1505283999', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('423', '6', '0', '0', '309_2643139_09fba13da3b54e3.png', '/Uploads/201709/59b8cfad39e08.png', '230378', 'png', '1', '0', '2', '1505284013', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('424', '6', '0', '0', 'HTB1M_HiKXXXXXXJXVXXq6xXFXXX0.jpg', '/Uploads/201709/59b8cfbc5efe2.jpg', '61473', 'jpg', '1', '0', '2', '1505284028', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('425', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8cfcd5bac9.jpg', '18482', 'jpg', '1', '0', '2', '1505284045', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('426', '6', '0', '0', 'HTB1M_HiKXXXXXXJXVXXq6xXFXXX0.jpg', '/Uploads/201709/59b8cfd8eec3a.jpg', '61473', 'jpg', '1', '0', '2', '1505284056', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('427', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8cfe02dff7.jpg', '742239', 'jpg', '1', '0', '2', '1505284064', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('428', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8cfe8e1d54.jpg', '18482', 'jpg', '1', '0', '2', '1505284072', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('429', '6', '0', '0', '40X40cm-Magnetic-Dry-Erase-Glass-Writing-Board.jpg', '/Uploads/201709/59b8cff3ab4a1.jpg', '154404', 'jpg', '1', '0', '2', '1505284083', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('430', '6', '0', '0', '40X40cm-Magnetic-Dry-Erase-Glass-Writing-Board (1)', '/Uploads/201709/59b8cff3c211d.jpg', '154404', 'jpg', '1', '0', '2', '1505284083', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('431', '6', '0', '0', '309_2643139_09fba13da3b54e3.png', '/Uploads/201709/59b8cffe974c1.png', '230378', 'png', '1', '0', '2', '1505284094', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('432', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8d00a938be.jpg', '742239', 'jpg', '1', '0', '2', '1505284106', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('433', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board (1).jpg', '/Uploads/201709/59b8d01bda138.jpg', '38975', 'jpg', '1', '0', '2', '1505284123', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('434', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8d03401e84.jpg', '18482', 'jpg', '1', '1', '2', '1505284148', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('435', '6', '0', '0', 'HTB1UaHSJVXXXXaSXXXXq6xXFXXXQ.jpg', '/Uploads/201709/59b8d0450cabd.jpg', '29769', 'jpg', '1', '1', '2', '1505284165', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('451', '6', '0', '0', '3.jpg', '/Uploads/201709/59b8f2ae5ac1f.jpg', '85809', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('452', '6', '0', '0', '4.jpg', '/Uploads/201709/59b8f2ae760e3.jpg', '87302', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('450', '6', '0', '0', '2.jpg', '/Uploads/201709/59b8f2ae43947.jpg', '93677', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('449', '6', '0', '0', '1.jpg', '/Uploads/201709/59b8f2ae1fe4e.jpg', '55797', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('467', '6', '0', '0', '0.png', '/Uploads/201709/59b8fa9caae88.png', '35664', 'png', '1', '1', '2', '1505295004', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('505', '6', '0', '0', '1.jpg', '/Uploads/201709/59b9e30ec0a55.jpg', '45074', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('506', '6', '0', '0', '2.jpg', '/Uploads/201709/59b9e30ed8e7d.jpg', '67536', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('507', '6', '0', '0', '3.jpg', '/Uploads/201709/59b9e30eeffd7.jpg', '175764', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('681', '6', '0', '0', 'p20.png', '/Uploads/201806/5b2b12c71877c.png', '15493', 'png', '1', '0', '3', '1529549511', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('680', '6', '0', '0', 'con031.png', '/Uploads/201806/5b2b12bd8c8bb.png', '77209', 'png', '1', '0', '3', '1529549501', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('679', '6', '0', '0', 'con03.png', '/Uploads/201806/5b2b12bd7de58.png', '69872', 'png', '1', '0', '3', '1529549501', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('678', '6', '0', '0', 'con03.png', '/Uploads/201806/5b2b12b135370.png', '69872', 'png', '1', '1', '3', '1529549489', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('524', '6', '0', '0', '0.png', '/Uploads/201709/59b9e543252fc.png', '57477', 'png', '1', '1', '2', '1505355075', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('554', '6', '0', '0', '1.jpg', '/Uploads/201709/59b9e9b2365be.jpg', '66657', 'jpg', '1', '0', '2', '1505356210', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('555', '6', '0', '0', '2.jpg', '/Uploads/201709/59b9e9b257497.jpg', '59811', 'jpg', '1', '0', '2', '1505356210', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('556', '6', '0', '0', '3.jpg', '/Uploads/201709/59b9e9b33c819.jpg', '134414', 'jpg', '1', '0', '2', '1505356211', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('702', '230', '1', '7', 'banner.jpg', '/Uploads/201810/5bc85571c69ff.jpg', '1378680', 'jpg', '1', '0', '3', '1539855729', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('747', '6', '0', '0', '01-GD2.JPG', '/Uploads/201811/5beb9cab3c267.jpg', '153256', 'jpg', '1', '1', '4', '1542167723', '61.140.24.141', '0');
INSERT INTO `cosmo_attachment` VALUES ('762', '230', '1', '7', 'new_20181212155636.jpg', '/Uploads/201812/5c10c091376c2.jpg', '1629902', 'jpg', '1', '0', '2', '1544601745', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('763', '230', '1', '7', 'new_20181212155636.jpg', '/Uploads/201812/5c10c0dad639c.jpg', '758583', 'jpg', '1', '0', '2', '1544601818', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('764', '230', '1', '7', '20181212161857.jpg', '/Uploads/201812/5c10c6375975b.jpg', '1724677', 'jpg', '1', '0', '2', '1544603191', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('765', '230', '1', '7', '20181212161857.jpg', '/Uploads/201812/5c10c6c04a34e.jpg', '468255', 'jpg', '1', '0', '2', '1544603328', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('768', '230', '1', '7', '20181217165919.jpg', '/Uploads/201812/5c1765b6c33a7.jpg', '514815', 'jpg', '1', '0', '2', '1545037238', '157.61.159.48', '1');
INSERT INTO `cosmo_attachment` VALUES ('770', '230', '1', '7', '20181217170909.jpg', '/Uploads/201812/5c1767d2ee058.jpg', '501013', 'jpg', '1', '0', '2', '1545037778', '157.61.159.48', '1');
INSERT INTO `cosmo_attachment` VALUES ('778', '2', '0', '0', 'Family-members-visit-the-workshop.jpg', '/Uploads/201812/5c25a1f918130.jpg', '142598', 'jpg', '1', '0', '2', '1545970169', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('779', '2', '0', '0', 'Family-members-visit-the-workshop2.jpg', '/Uploads/201812/5c25a1fa3cd5b.jpg', '159655', 'jpg', '1', '0', '2', '1545970170', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('780', '2', '0', '0', 'General-manager\'s-speech.jpg', '/Uploads/201812/5c25a1fa9d2a9.jpg', '98679', 'jpg', '1', '0', '2', '1545970170', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('781', '2', '0', '0', 'Gifts-from-guests.jpg', '/Uploads/201812/5c25a1fc0589f.jpg', '128097', 'jpg', '1', '0', '2', '1545970172', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('782', '2', '0', '0', 'Gifts-from-guestsjpg.jpg', '/Uploads/201812/5c25a1fc78b44.jpg', '110460', 'jpg', '1', '0', '2', '1545970172', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('785', '2', '0', '0', 'Lion-dance.jpg', '/Uploads/201812/5c25a1fe7a8f8.jpg', '124782', 'jpg', '1', '0', '2', '1545970174', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('786', '2', '0', '0', 'Martial-arts-performance.jpg', '/Uploads/201812/5c25a1ff4718a.jpg', '144587', 'jpg', '1', '0', '2', '1545970175', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('787', '2', '0', '0', 'Staff-chorus.jpg', '/Uploads/201812/5c25a20002906.jpg', '99679', 'jpg', '1', '0', '2', '1545970176', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('788', '2', '0', '0', 'Staff-dance-performance.jpg', '/Uploads/201812/5c25a2008a443.jpg', '161741', 'jpg', '1', '0', '2', '1545970176', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('824', '2', '0', '0', 'news1.jpg', '/Uploads/201904/5cab0cc0b2fe4.jpg', '3841319', 'jpg', '1', '0', '4', '1554713792', '40.83.76.20', '0');
INSERT INTO `cosmo_attachment` VALUES ('838', '1', '108', '108', '未标题-1_03.jpg', '/Uploads/202002/5e572dc846e82.jpg', '13712', 'jpg', '1', '0', '2', '1582771656', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('837', '230', '2', '11', 'banner.jpg', '/Uploads/202002/5e572b8ca43bb.jpg', '223163', 'jpg', '1', '0', '2', '1582771084', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('836', '230', '0', '0', '5dd2735194d4c.jpg', '/Uploads/201912/5dfc6fb6afa98.jpg', '709285', 'jpg', '1', '0', '2', '1576824758', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('839', '230', '1', '7', 'banner.png', '/Uploads/202003/5e685e88ed49c.png', '164439', 'png', '1', '0', '2', '1583898248', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('840', '1', '74', '74', 'application.png', '/Uploads/202003/5e6861a87726d.png', '74790', 'png', '1', '0', '2', '1583899048', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('841', '1', '112', '112', 'about.png', '/Uploads/202003/5e68620aded51.png', '174919', 'png', '1', '0', '2', '1583899146', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('842', '1', '112', '112', 'abouts.png', '/Uploads/202003/5e68629b5c085.png', '158513', 'png', '1', '0', '2', '1583899291', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('843', '1', '74', '74', 'application.png', '/Uploads/202003/5e6862b7441fd.png', '52254', 'png', '1', '0', '2', '1583899319', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('844', '230', '2', '11', 'banner.png', '/Uploads/202003/5e6862da3e52c.png', '91279', 'png', '1', '0', '2', '1583899354', '27.45.146.101', '1');

-- ----------------------------
-- Table structure for cosmo_block
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_block`;
CREATE TABLE `cosmo_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_block
-- ----------------------------
INSERT INTO `cosmo_block` VALUES ('1', 'inf', 'Company information', '0', '', 'Sichuan Huida through mechanical equipment manufacturing Co., Ltd. is a professional engaged in kitchen equipment, kitchen lampblack purification processing and large-scale commercial kitchen equipment R &amp; D and production enterprises');
INSERT INTO `cosmo_block` VALUES ('2', 'code', 'code', '0', '', '');

-- ----------------------------
-- Table structure for cosmo_case
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_case`;
CREATE TABLE `cosmo_case` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` text NOT NULL,
  `msgb` text NOT NULL,
  `msgc` mediumtext NOT NULL,
  `msgd` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_case
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_category
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_category`;
CREATE TABLE `cosmo_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_category
-- ----------------------------
INSERT INTO `cosmo_category` VALUES ('74', 'professionals', 'professionals', '', '0', '1', 'Page', '0', '74', '0', '', '', '', '3', '0', '0', '0', '', '0', '/professionals.html', 'AboutUs', 'AboutUs', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('78', 'Ultrasonic Welding System- Adv', 'UltrasonicWeldingSystemAdv', '', '0', '1', 'Page', '0', '78', '0', '', '', '', '5', '0', '0', '0', '', '0', '/UltrasonicWeldingSystemAdv.html', 'contact', 'contact', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('110', 'Why Choose CONPROFE', 'WhyChooseCONPROFE', '', '0', '1', 'Page', '0', '110', '0', '', '', '', '6', '0', '0', '0', '', '0', '/WhyChooseCONPROFE.html', '', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('111', 'Contact Us', 'ContactUs', '', '0', '1', 'Page', '0', '111', '0', '', '', '', '7', '0', '0', '0', '', '0', '/ContactUs.html', '', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('103', 'THANKS', 'thanks', '', '0', '1', 'Page', '0', '103', '0', '', '', '', '100', '0', '0', '0', '', '0', '/thanks.html', 'thank', 'thank', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('108', 'Working Principle', 'WorkingPrinciple', '', '0', '1', 'Page', '0', '108', '0', '', '', '', '4', '0', '0', '0', '', '0', '/WorkingPrinciple.html', 'service', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('112', 'ABOUT US', 'ABOUTUS', '', '0', '1', 'Page', '0', '112', '0', '', '', '', '0', '0', '0', '0', '', '0', '/ABOUTUS.html', '', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('113', 'Product', 'Product', '', '0', '6', 'Product', '0', '113', '0', '', '', '', '0', '0', '0', '0', '', '0', '/Product.html', '', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('114', 'Certificated', 'Certificated', '', '0', '1', 'Page', '0', '114', '0', '', '', '', '7', '0', '0', '0', '', '0', '/Certificated.html', '', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for cosmo_config
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_config`;
CREATE TABLE `cosmo_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_config
-- ----------------------------
INSERT INTO `cosmo_config` VALUES ('site_name', '网站名称', '2', 'Conprofe Technology Group Co.,Ltd', '1');
INSERT INTO `cosmo_config` VALUES ('site_url', '网站网址', '2', '/index.php', '1');
INSERT INTO `cosmo_config` VALUES ('site_email', '站点邮箱', '2', 'jiawei.zhao@conprofe.com', '1');
INSERT INTO `cosmo_config` VALUES ('seo_keywords', '关键词', '2', '', '1');
INSERT INTO `cosmo_config` VALUES ('seo_description', '网站简介', '2', '', '1');
INSERT INTO `cosmo_config` VALUES ('mail_type', '邮件发送模式', '4', '1', '0');
INSERT INTO `cosmo_config` VALUES ('mail_server', '邮件服务器', '4', 'smtp.exmail.qq.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_port', '邮件发送端口', '4', '465', '0');
INSERT INTO `cosmo_config` VALUES ('mail_from', '发件人地址', '4', 'sender@cosmoing.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_auth', 'AUTH LOGIN验证', '4', '1', '0');
INSERT INTO `cosmo_config` VALUES ('mail_user', '验证用户名', '4', 'sender@cosmoing.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_password', '验证密码', '4', 'Aqg3JZ7UFkz7by4X', '0');
INSERT INTO `cosmo_config` VALUES ('attach_maxsize', '允许上传附件大小', '5', '5200000', '0');
INSERT INTO `cosmo_config` VALUES ('attach_allowext', '允许上传附件类型', '5', 'jpg,jpeg,gif,png,doc,docx,rar,zip,swf,pdf', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_enable', '是否开启图片水印', '5', '0', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text', '水印文字内容', '5', '', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_size', '文字大小', '5', '18', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_color', 'watemard_text_color', '5', '#FFFFFF', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_face', '字体', '5', 'elephant.ttf', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_minwidth', '图片最小宽度', '5', '300', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_minheight', '水印最小高度', '5', '300', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_img', '水印图片名称', '5', 'mark.png', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pct', '水印透明度', '5', '80', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_quality', 'JPEG 水印质量', '5', '100', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pospadding', '水印边距', '5', '10', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pos', '水印位置', '5', '9', '0');
INSERT INTO `cosmo_config` VALUES ('PAGE_LISTROWS', '列表分页数', '6', '15', '0');
INSERT INTO `cosmo_config` VALUES ('URL_MODEL', 'URL访问模式', '6', '2', '0');
INSERT INTO `cosmo_config` VALUES ('URL_PATHINFO_DEPR', '参数分割符', '6', '/', '0');
INSERT INTO `cosmo_config` VALUES ('URL_HTML_SUFFIX', 'URL伪静态后缀', '6', '.html', '0');
INSERT INTO `cosmo_config` VALUES ('TOKEN_ON', '令牌验证', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('TOKEN_NAME', '令牌表单字段', '6', '__hash__', '0');
INSERT INTO `cosmo_config` VALUES ('TMPL_CACHE_ON', '模板编译缓存', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('TMPL_CACHE_TIME', '模板缓存有效期', '6', '-1', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_CACHE_ON', '静态缓存', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_CACHE_TIME', '缓存有效期', '6', '60', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_READ_TYPE', '缓存读取方式', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_FILE_SUFFIX', '静态文件后缀', '6', '.html', '0');
INSERT INTO `cosmo_config` VALUES ('ADMIN_ACCESS', 'ADMIN_ACCESS', '6', '5e2fa5274ed57f6a4b17f3d5c474c1e2', '0');
INSERT INTO `cosmo_config` VALUES ('DEFAULT_THEME', '默认模板', '6', 'Default', '0');
INSERT INTO `cosmo_config` VALUES ('HOME_ISHTML', '首页生成html', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('URL_URLRULE', 'URL', '6', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html:::{$catdir}.html|{$catdir}-{$page}.html', '0');
INSERT INTO `cosmo_config` VALUES ('DEFAULT_LANG', '默认语言', '6', 'cn', '0');
INSERT INTO `cosmo_config` VALUES ('member_register', '允许新会员注册', '3', '0', '1');
INSERT INTO `cosmo_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '1');
INSERT INTO `cosmo_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '1');
INSERT INTO `cosmo_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '1');
INSERT INTO `cosmo_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', ' 欢迎您注册成为ainaphp用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}', '1');
INSERT INTO `cosmo_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', '尊敬的用户{username}，请点击进入<a href=\"{url}\">重置密码</a>,或者将网址复制到浏览器：{url}（链接3天内有效）。<br>感谢您对本站的支持。<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename}<br>此邮件为系统自动邮件，无需回复。', '1');
INSERT INTO `cosmo_config` VALUES ('LAYOUT_ON', '布局模板', '6', '1', '0');
INSERT INTO `cosmo_config` VALUES ('ADMIN_VERIFY', '后台登陆验证码', '6', '1', '0');
INSERT INTO `cosmo_config` VALUES ('name', '公司名称', '1', 'Conprofe Technology Group Co., Ltd.', '0');
INSERT INTO `cosmo_config` VALUES ('address', '公司地址', '1', '1st,2nd floor, Menji Building C, Parage Electronic Industrial Park, No.8, 2nd Nanyu Rd, Science City, Hi-tech Development Zone, Guangzhou', '0');
INSERT INTO `cosmo_config` VALUES ('phone', '电话', '1', '(KR/JP)Dongxuan Nan:+86 13825119999', '0');
INSERT INTO `cosmo_config` VALUES ('email', '邮箱', '1', 'dongxuan.nan@conprofetech.com', '0');
INSERT INTO `cosmo_config` VALUES ('cop', '版权', '1', 'No.6, 2nd Nanyun Rd, Science City, Hi-tech Development Zone, Guangzhou, Guangdong, PRC', '0');
INSERT INTO `cosmo_config` VALUES ('google', 'Google主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('facebook', 'Facebook主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('ins', 'INS主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('youtube', 'Youtube主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('twitter', 'Twitter主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('dianhua', '电话2', '1', '(EN)Ken Shi:+86 13064180202', '0');
INSERT INTO `cosmo_config` VALUES ('emaila', '邮箱2', '1', 'yiyuan.shi@conprofetech.com', '0');
INSERT INTO `cosmo_config` VALUES ('gwdz', '官网地址', '1', 'www.conprofetech.com', '0');
INSERT INTO `cosmo_config` VALUES ('shield', '屏蔽关键词空格隔开', '1', 'ranking seo SEO', '0');

-- ----------------------------
-- Table structure for cosmo_dbsource
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_dbsource`;
CREATE TABLE `cosmo_dbsource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) unsigned NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_dbsource
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_download
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_download`;
CREATE TABLE `cosmo_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_download
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_field
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_field`;
CREATE TABLE `cosmo_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_field
-- ----------------------------
INSERT INTO `cosmo_field` VALUES ('1', '1', 'title', '标题', '', '1', '3', '80', '', '标题必填3-80个字', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('2', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('3', '1', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('4', '1', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'jpg,jpeg,gif,doc,rar,zip,xls\',\n)', '1', '', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('5', '2', 'catid', '栏目', '', '1', '1', '6', 'digits', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('6', '2', 'title', '标题', '', '1', '0', '0', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('7', '2', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('8', '2', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('9', '2', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('10', '2', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('11', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('12', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('13', '2', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('14', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '0');
INSERT INTO `cosmo_field` VALUES ('15', '3', 'name', '网站名称', '', '1', '2', '50', '', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '1', '1', '0');
INSERT INTO `cosmo_field` VALUES ('16', '3', 'logo', '网站LOGO', '', '0', '0', '0', '', '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)', '1', '', '2', '1', '0');
INSERT INTO `cosmo_field` VALUES ('17', '3', 'siteurl', '网站地址', '', '1', '10', '150', 'url', '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '0');
INSERT INTO `cosmo_field` VALUES ('18', '3', 'typeid', '友情链接分类', '', '0', '0', '0', '', '', '', 'typeid', 'array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('19', '3', 'linktype', '链接类型', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'文字链接|1\r\nLOGO链接|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('20', '3', 'siteinfo', '站点简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '0');
INSERT INTO `cosmo_field` VALUES ('21', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('22', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('23', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('24', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('25', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `cosmo_field` VALUES ('26', '4', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('27', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('28', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('29', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('30', '4', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('31', '5', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('32', '5', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('33', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('34', '5', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('35', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `cosmo_field` VALUES ('36', '5', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('37', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('38', '5', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('39', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('40', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('41', '4', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '9', '1', '0');
INSERT INTO `cosmo_field` VALUES ('42', '6', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('43', '6', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('44', '6', 'keywords', 'Model', '', '0', '0', '80', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('45', '6', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('46', '6', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '0', '1');
INSERT INTO `cosmo_field` VALUES ('47', '6', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('48', '6', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('49', '6', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('50', '6', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('51', '6', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('54', '6', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '11', '1', '0');
INSERT INTO `cosmo_field` VALUES ('130', '11', 'cont', '内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'kindeditor\\\',\n  \\\'toolbar\\\' => \\\'basic\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'0\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '10', '1', '0');
INSERT INTO `cosmo_field` VALUES ('56', '6', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '13', '1', '0');
INSERT INTO `cosmo_field` VALUES ('120', '11', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('121', '11', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('58', '4', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '12', '1', '0');
INSERT INTO `cosmo_field` VALUES ('59', '7', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('60', '7', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('61', '7', 'name', 'Name', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('62', '7', 'com', 'Company', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `cosmo_field` VALUES ('63', '7', 'phone', 'Phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('64', '7', 'email', 'Email', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('67', '7', 'message', 'message', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'mediumtext\\\',\n  \\\'rows\\\' => \\\'10\\\',\n  \\\'cols\\\' => \\\'150\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('71', '5', 'address', 'address', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('72', '5', 'phone', 'phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('73', '5', 'fax', 'fax', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('74', '5', 'email', 'email', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('127', '11', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('128', '11', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('126', '11', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('125', '11', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('122', '11', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('123', '11', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('124', '11', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `cosmo_field` VALUES ('93', '7', 'title', '主题', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('94', '8', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('95', '8', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('96', '8', 'title', '推送邮箱', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('97', '8', 'remark', '备注', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('129', '11', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('117', '10', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('116', '10', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('114', '10', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('115', '10', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('113', '10', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `cosmo_field` VALUES ('112', '10', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('111', '10', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('109', '10', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('110', '10', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('118', '10', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('119', '10', 'download', 'PDF等文件上传', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'PDF等文件上传\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'10\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt,pdf\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '4', '1', '0');
INSERT INTO `cosmo_field` VALUES ('131', '7', 'files', '附件', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('132', '7', 'forward', '来源页面', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('133', '1', 'cont', 'pc内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'Xheditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'500\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'1\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '1', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('134', '1', 'pcont', '移动端内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'Xheditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'1\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '1', '', '0', '0', '0');
INSERT INTO `cosmo_field` VALUES ('135', '7', 'country', 'country', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('136', '7', 'account', 'account', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('137', '6', 'cont', '内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'Xheditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'1\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '5', '1', '0');

-- ----------------------------
-- Table structure for cosmo_history
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_history`;
CREATE TABLE `cosmo_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cont` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_history
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_jobs
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_jobs`;
CREATE TABLE `cosmo_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_lang
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_lang`;
CREATE TABLE `cosmo_lang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_lang
-- ----------------------------
INSERT INTO `cosmo_lang` VALUES ('1', '中文', 'cn', 'cn.gif', '1', '', '', '1');

-- ----------------------------
-- Table structure for cosmo_link
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_link`;
CREATE TABLE `cosmo_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_link
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_log
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_log`;
CREATE TABLE `cosmo_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=644 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_log
-- ----------------------------
INSERT INTO `cosmo_log` VALUES ('289', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539842386');
INSERT INTO `cosmo_log` VALUES ('288', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539746482');
INSERT INTO `cosmo_log` VALUES ('286', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539656612');
INSERT INTO `cosmo_log` VALUES ('287', '1', '0', 'duanya', '密码错误:admin123!@3', '127.0.0.1', '1539746474');
INSERT INTO `cosmo_log` VALUES ('290', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539929948');
INSERT INTO `cosmo_log` VALUES ('291', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1540179827');
INSERT INTO `cosmo_log` VALUES ('292', '0', '0', 'admin', '登录成功', '127.0.0.1', '1540203777');
INSERT INTO `cosmo_log` VALUES ('293', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540456989');
INSERT INTO `cosmo_log` VALUES ('294', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540460630');
INSERT INTO `cosmo_log` VALUES ('295', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540533850');
INSERT INTO `cosmo_log` VALUES ('296', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782268');
INSERT INTO `cosmo_log` VALUES ('297', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782346');
INSERT INTO `cosmo_log` VALUES ('298', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782391');
INSERT INTO `cosmo_log` VALUES ('299', '1', '0', 'huizhuan', '密码错误:huizhuan#321', '61.140.27.219', '1540782497');
INSERT INTO `cosmo_log` VALUES ('300', '1', '0', 'huizhuan', '密码错误:osd@huizhuan.cn#321', '61.140.27.219', '1540782504');
INSERT INTO `cosmo_log` VALUES ('301', '0', '0', 'admin', '登录成功', '113.109.79.212', '1540782515');
INSERT INTO `cosmo_log` VALUES ('302', '0', '0', 'huizhuan', '登录成功', '61.140.27.219', '1540782649');
INSERT INTO `cosmo_log` VALUES ('303', '0', '0', 'huizhuan', '登录成功', '61.140.27.219', '1540785584');
INSERT INTO `cosmo_log` VALUES ('304', '0', '0', 'huizhuan', '登录成功', '61.140.27.219', '1540785584');
INSERT INTO `cosmo_log` VALUES ('305', '0', '0', 'admin', '登录成功', '61.140.25.140', '1541142527');
INSERT INTO `cosmo_log` VALUES ('306', '1', '0', 'huizhuan', '密码错误:guangdaun#321', '61.140.25.140', '1541148167');
INSERT INTO `cosmo_log` VALUES ('307', '0', '0', 'huizhuan', '登录成功', '113.109.79.114', '1541148173');
INSERT INTO `cosmo_log` VALUES ('308', '1', '0', 'admin', '密码错误:admin', '113.109.77.80', '1541486749');
INSERT INTO `cosmo_log` VALUES ('309', '0', '0', 'admin', '登录成功', '113.109.76.37', '1541661616');
INSERT INTO `cosmo_log` VALUES ('310', '1', '0', 'huizhuan', '密码错误:guangdaun#123', '61.140.24.141', '1542165045');
INSERT INTO `cosmo_log` VALUES ('311', '1', '0', 'huizhuan', '密码错误:guangdaun#321', '61.140.24.141', '1542165048');
INSERT INTO `cosmo_log` VALUES ('312', '0', '0', 'huizhuan', '登录成功', '113.109.77.113', '1542165169');
INSERT INTO `cosmo_log` VALUES ('313', '1', '0', 'admin', '密码错误:admin', '113.119.111.101', '1542682252');
INSERT INTO `cosmo_log` VALUES ('314', '1', '0', 'admin', '密码错误:admin', '113.119.111.101', '1542682275');
INSERT INTO `cosmo_log` VALUES ('315', '0', '0', 'huizhuan', '登录成功', '61.140.27.103', '1542682299');
INSERT INTO `cosmo_log` VALUES ('316', '0', '0', 'admin', '登录成功', '61.140.26.193', '1543471584');
INSERT INTO `cosmo_log` VALUES ('317', '1', '0', 'admin', '密码错误:cosmop321!', '125.95.12.58', '1544495602');
INSERT INTO `cosmo_log` VALUES ('318', '0', '0', 'admin', '登录成功', '125.95.12.58', '1544495615');
INSERT INTO `cosmo_log` VALUES ('319', '0', '0', 'admin', '登录成功', '27.45.146.101', '1544601280');
INSERT INTO `cosmo_log` VALUES ('320', '0', '0', 'admin', '登录成功', '157.61.159.48', '1545037110');
INSERT INTO `cosmo_log` VALUES ('321', '0', '0', 'admin', '登录成功', '120.83.154.194', '1545383370');
INSERT INTO `cosmo_log` VALUES ('322', '0', '0', 'admin', '登录成功', '120.83.155.3', '1545969723');
INSERT INTO `cosmo_log` VALUES ('323', '0', '0', 'admin', '登录成功', '120.83.155.14', '1546050031');
INSERT INTO `cosmo_log` VALUES ('324', '0', '0', 'admin', '登录成功', '120.83.155.14', '1546054556');
INSERT INTO `cosmo_log` VALUES ('325', '0', '0', 'admin', '登录成功', '221.4.174.100', '1546498499');
INSERT INTO `cosmo_log` VALUES ('326', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546569076');
INSERT INTO `cosmo_log` VALUES ('327', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546617417');
INSERT INTO `cosmo_log` VALUES ('328', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546653765');
INSERT INTO `cosmo_log` VALUES ('329', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546668347');
INSERT INTO `cosmo_log` VALUES ('330', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1546668627');
INSERT INTO `cosmo_log` VALUES ('331', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1546675838');
INSERT INTO `cosmo_log` VALUES ('332', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546737392');
INSERT INTO `cosmo_log` VALUES ('333', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546753459');
INSERT INTO `cosmo_log` VALUES ('334', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546822535');
INSERT INTO `cosmo_log` VALUES ('335', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1546824360');
INSERT INTO `cosmo_log` VALUES ('336', '0', '0', 'admin', '登录成功', '221.4.174.154', '1546831114');
INSERT INTO `cosmo_log` VALUES ('337', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1546842151');
INSERT INTO `cosmo_log` VALUES ('338', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1546843991');
INSERT INTO `cosmo_log` VALUES ('339', '0', '0', 'admin', '登录成功', '221.4.174.154', '1546844425');
INSERT INTO `cosmo_log` VALUES ('340', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546845920');
INSERT INTO `cosmo_log` VALUES ('341', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1546874308');
INSERT INTO `cosmo_log` VALUES ('342', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546909041');
INSERT INTO `cosmo_log` VALUES ('343', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546915996');
INSERT INTO `cosmo_log` VALUES ('344', '0', '0', 'huizhuan', '登录成功', '149.28.243.186', '1546924937');
INSERT INTO `cosmo_log` VALUES ('345', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546929237');
INSERT INTO `cosmo_log` VALUES ('346', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546939155');
INSERT INTO `cosmo_log` VALUES ('347', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1546995071');
INSERT INTO `cosmo_log` VALUES ('348', '0', '0', 'admin', '登录成功', '221.4.174.45', '1547027610');
INSERT INTO `cosmo_log` VALUES ('349', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547081796');
INSERT INTO `cosmo_log` VALUES ('350', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1547107721');
INSERT INTO `cosmo_log` VALUES ('351', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1547168927');
INSERT INTO `cosmo_log` VALUES ('352', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1547170039');
INSERT INTO `cosmo_log` VALUES ('353', '0', '0', 'huizhuan', '登录成功', '157.61.158.134', '1547213260');
INSERT INTO `cosmo_log` VALUES ('354', '0', '0', 'huizhuan', '登录成功', '157.61.158.134', '1547283679');
INSERT INTO `cosmo_log` VALUES ('355', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547344603');
INSERT INTO `cosmo_log` VALUES ('356', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1547392388');
INSERT INTO `cosmo_log` VALUES ('357', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1547431942');
INSERT INTO `cosmo_log` VALUES ('358', '0', '0', 'huizhuan', '登录成功', '149.28.243.186', '1547443781');
INSERT INTO `cosmo_log` VALUES ('359', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547455319');
INSERT INTO `cosmo_log` VALUES ('360', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547514535');
INSERT INTO `cosmo_log` VALUES ('361', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547603891');
INSERT INTO `cosmo_log` VALUES ('362', '0', '0', 'huizhuan', '登录成功', '157.61.158.77', '1547639457');
INSERT INTO `cosmo_log` VALUES ('363', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547686772');
INSERT INTO `cosmo_log` VALUES ('364', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1547711264');
INSERT INTO `cosmo_log` VALUES ('365', '0', '0', 'huizhuan', '登录成功', '157.61.158.116', '1547729900');
INSERT INTO `cosmo_log` VALUES ('366', '0', '0', 'huizhuan', '登录成功', '157.61.158.116', '1547774332');
INSERT INTO `cosmo_log` VALUES ('367', '0', '0', 'huizhuan', '登录成功', '157.61.158.116', '1547812858');
INSERT INTO `cosmo_log` VALUES ('368', '0', '0', 'huizhuan', '登录成功', '157.61.158.51', '1547859871');
INSERT INTO `cosmo_log` VALUES ('369', '0', '0', 'huizhuan', '登录成功', '157.61.158.51', '1547906581');
INSERT INTO `cosmo_log` VALUES ('370', '0', '0', 'huizhuan', '登录成功', '157.61.158.51', '1547955994');
INSERT INTO `cosmo_log` VALUES ('371', '0', '0', 'huizhuan', '登录成功', '157.61.158.40', '1548029424');
INSERT INTO `cosmo_log` VALUES ('372', '0', '0', 'huizhuan', '登录成功', '157.61.158.40', '1548084409');
INSERT INTO `cosmo_log` VALUES ('373', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1548135773');
INSERT INTO `cosmo_log` VALUES ('374', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1548152024');
INSERT INTO `cosmo_log` VALUES ('375', '0', '0', 'huizhuan', '登录成功', '157.61.158.61', '1548168186');
INSERT INTO `cosmo_log` VALUES ('376', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1548214057');
INSERT INTO `cosmo_log` VALUES ('377', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1548228015');
INSERT INTO `cosmo_log` VALUES ('378', '0', '0', 'huizhuan', '登录成功', '157.61.158.33', '1548256021');
INSERT INTO `cosmo_log` VALUES ('379', '0', '0', 'huizhuan', '登录成功', '157.61.158.33', '1548288980');
INSERT INTO `cosmo_log` VALUES ('380', '0', '0', 'huizhuan', '登录成功', '157.61.158.33', '1548342765');
INSERT INTO `cosmo_log` VALUES ('381', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1548380553');
INSERT INTO `cosmo_log` VALUES ('382', '0', '0', 'huizhuan', '登录成功', '157.61.158.40', '1548427317');
INSERT INTO `cosmo_log` VALUES ('383', '0', '0', 'huizhuan', '登录成功', '157.61.158.40', '1548467544');
INSERT INTO `cosmo_log` VALUES ('384', '0', '0', 'huizhuan', '登录成功', '157.61.158.40', '1548492082');
INSERT INTO `cosmo_log` VALUES ('385', '0', '0', 'huizhuan', '登录成功', '157.61.158.42', '1548504963');
INSERT INTO `cosmo_log` VALUES ('386', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548555397');
INSERT INTO `cosmo_log` VALUES ('387', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548582635');
INSERT INTO `cosmo_log` VALUES ('388', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548686208');
INSERT INTO `cosmo_log` VALUES ('389', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548754199');
INSERT INTO `cosmo_log` VALUES ('390', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548770037');
INSERT INTO `cosmo_log` VALUES ('391', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548819557');
INSERT INTO `cosmo_log` VALUES ('392', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1548950376');
INSERT INTO `cosmo_log` VALUES ('393', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1549109673');
INSERT INTO `cosmo_log` VALUES ('394', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1549209862');
INSERT INTO `cosmo_log` VALUES ('395', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1549294135');
INSERT INTO `cosmo_log` VALUES ('396', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1549897350');
INSERT INTO `cosmo_log` VALUES ('397', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1549952977');
INSERT INTO `cosmo_log` VALUES ('398', '0', '0', 'huizhuan', '登录成功', '157.61.158.74', '1550067131');
INSERT INTO `cosmo_log` VALUES ('399', '0', '0', 'huizhuan', '登录成功', '149.28.31.22', '1550294694');
INSERT INTO `cosmo_log` VALUES ('400', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1550455162');
INSERT INTO `cosmo_log` VALUES ('401', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1551246514');
INSERT INTO `cosmo_log` VALUES ('402', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1551320643');
INSERT INTO `cosmo_log` VALUES ('403', '0', '0', 'huizhuan', '登录成功', '52.141.38.119', '1551420068');
INSERT INTO `cosmo_log` VALUES ('404', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1551860582');
INSERT INTO `cosmo_log` VALUES ('405', '0', '0', 'huizhuan', '登录成功', '157.61.158.35', '1552097046');
INSERT INTO `cosmo_log` VALUES ('406', '0', '0', 'huizhuan', '登录成功', '157.61.158.170', '1552223606');
INSERT INTO `cosmo_log` VALUES ('407', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1552283212');
INSERT INTO `cosmo_log` VALUES ('408', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1552283422');
INSERT INTO `cosmo_log` VALUES ('409', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1552542171');
INSERT INTO `cosmo_log` VALUES ('410', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1552552311');
INSERT INTO `cosmo_log` VALUES ('411', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1552881018');
INSERT INTO `cosmo_log` VALUES ('412', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1553163865');
INSERT INTO `cosmo_log` VALUES ('413', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1553477959');
INSERT INTO `cosmo_log` VALUES ('414', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1553763269');
INSERT INTO `cosmo_log` VALUES ('415', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1554043188');
INSERT INTO `cosmo_log` VALUES ('416', '0', '0', 'huizhuan', '登录成功', '40.83.76.20', '1554085434');
INSERT INTO `cosmo_log` VALUES ('417', '0', '0', 'huizhuan', '登录成功', '149.248.56.171', '1554194148');
INSERT INTO `cosmo_log` VALUES ('418', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554260869');
INSERT INTO `cosmo_log` VALUES ('419', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554287546');
INSERT INTO `cosmo_log` VALUES ('420', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554339153');
INSERT INTO `cosmo_log` VALUES ('421', '0', '0', 'huizhuan', '登录成功', '125.95.12.59', '1554342986');
INSERT INTO `cosmo_log` VALUES ('422', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1554429785');
INSERT INTO `cosmo_log` VALUES ('423', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1554474462');
INSERT INTO `cosmo_log` VALUES ('424', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1554560344');
INSERT INTO `cosmo_log` VALUES ('425', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1554611436');
INSERT INTO `cosmo_log` VALUES ('426', '0', '0', 'huizhuan', '登录成功', '40.83.76.20', '1554685974');
INSERT INTO `cosmo_log` VALUES ('427', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554693129');
INSERT INTO `cosmo_log` VALUES ('428', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554865376');
INSERT INTO `cosmo_log` VALUES ('429', '0', '0', 'admin', '登录成功', '221.4.174.192', '1554947468');
INSERT INTO `cosmo_log` VALUES ('430', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1554947932');
INSERT INTO `cosmo_log` VALUES ('431', '0', '0', 'huizhuan', '登录成功', '149.248.56.171', '1555062668');
INSERT INTO `cosmo_log` VALUES ('432', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1555239198');
INSERT INTO `cosmo_log` VALUES ('433', '0', '0', 'huizhuan', '登录成功', '66.42.100.254', '1555256233');
INSERT INTO `cosmo_log` VALUES ('434', '0', '0', 'huizhuan', '登录成功', '52.141.38.119', '1555291198');
INSERT INTO `cosmo_log` VALUES ('435', '0', '0', 'huizhuan', '登录成功', '52.141.38.119', '1555294463');
INSERT INTO `cosmo_log` VALUES ('436', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1555315583');
INSERT INTO `cosmo_log` VALUES ('437', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1555315591');
INSERT INTO `cosmo_log` VALUES ('438', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555319094');
INSERT INTO `cosmo_log` VALUES ('439', '1', '0', 'admin', '密码错误:admin', '27.102.115.183', '1555383675');
INSERT INTO `cosmo_log` VALUES ('440', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555383702');
INSERT INTO `cosmo_log` VALUES ('441', '0', '0', 'huizhuan', '登录成功', '149.248.56.171', '1555394772');
INSERT INTO `cosmo_log` VALUES ('442', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555399164');
INSERT INTO `cosmo_log` VALUES ('443', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555399632');
INSERT INTO `cosmo_log` VALUES ('444', '0', '0', 'huizhuan', '登录成功', '155.138.212.88', '1555852412');
INSERT INTO `cosmo_log` VALUES ('445', '0', '0', 'huizhuan', '登录成功', '52.231.201.132', '1555911636');
INSERT INTO `cosmo_log` VALUES ('446', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1556159473');
INSERT INTO `cosmo_log` VALUES ('447', '0', '0', 'huizhuan', '登录成功', '149.248.56.171', '1556175326');
INSERT INTO `cosmo_log` VALUES ('448', '0', '0', 'huizhuan', '登录成功', '52.141.35.221', '1556509010');
INSERT INTO `cosmo_log` VALUES ('449', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1556592465');
INSERT INTO `cosmo_log` VALUES ('450', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1556605506');
INSERT INTO `cosmo_log` VALUES ('451', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1557132925');
INSERT INTO `cosmo_log` VALUES ('452', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1557135031');
INSERT INTO `cosmo_log` VALUES ('453', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1557392571');
INSERT INTO `cosmo_log` VALUES ('454', '0', '0', 'huizhuan', '登录成功', '40.83.76.20', '1557713363');
INSERT INTO `cosmo_log` VALUES ('455', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1557978547');
INSERT INTO `cosmo_log` VALUES ('456', '0', '0', 'huizhuan', '登录成功', '47.244.22.99', '1558333599');
INSERT INTO `cosmo_log` VALUES ('457', '0', '0', 'huizhuan', '登录成功', '40.83.76.20', '1558339185');
INSERT INTO `cosmo_log` VALUES ('458', '0', '0', 'huizhuan', '登录成功', '185.224.248.218', '1558943290');
INSERT INTO `cosmo_log` VALUES ('459', '0', '0', 'huizhuan', '登录成功', '52.231.30.157', '1559282405');
INSERT INTO `cosmo_log` VALUES ('460', '0', '0', 'admin', '登录成功', '221.4.174.99', '1559283010');
INSERT INTO `cosmo_log` VALUES ('461', '0', '0', 'huizhuan', '登录成功', '221.4.174.99', '1559283247');
INSERT INTO `cosmo_log` VALUES ('462', '0', '0', 'huizhuan', '登录成功', '221.4.174.99', '1559283401');
INSERT INTO `cosmo_log` VALUES ('463', '0', '0', 'huizhuan', '登录成功', '40.83.76.20', '1559291730');
INSERT INTO `cosmo_log` VALUES ('464', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1559529858');
INSERT INTO `cosmo_log` VALUES ('465', '0', '0', 'huizhuan', '登录成功', '125.95.12.58', '1559627748');
INSERT INTO `cosmo_log` VALUES ('466', '0', '0', 'huizhuan', '登录成功', '172.104.162.187', '1560136974');
INSERT INTO `cosmo_log` VALUES ('467', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1560734025');
INSERT INTO `cosmo_log` VALUES ('468', '0', '0', 'huizhuan', '登录成功', '172.104.162.187', '1561361610');
INSERT INTO `cosmo_log` VALUES ('469', '1', '0', 'aotong26', '密码错误:huizhuan#321', '213.183.41.176', '1561448220');
INSERT INTO `cosmo_log` VALUES ('470', '1', '0', 'aotong26', '密码错误:huizhuan#321', '213.183.41.176', '1561448225');
INSERT INTO `cosmo_log` VALUES ('471', '1', '0', 'aotong26', '密码错误:huizhuan#321', '213.183.41.176', '1561448229');
INSERT INTO `cosmo_log` VALUES ('472', '0', '0', 'huizhuan', '登录成功', '213.183.41.176', '1561448234');
INSERT INTO `cosmo_log` VALUES ('473', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1561964411');
INSERT INTO `cosmo_log` VALUES ('474', '0', '0', 'admin', '登录成功', '221.4.174.190', '1562205921');
INSERT INTO `cosmo_log` VALUES ('475', '0', '0', 'admin', '登录成功', '127.0.0.1', '1567409137');
INSERT INTO `cosmo_log` VALUES ('476', '0', '0', 'admin', '登录成功', '127.0.0.1', '1571794054');
INSERT INTO `cosmo_log` VALUES ('477', '0', '0', 'admin', '登录成功', '127.0.0.1', '1571795257');
INSERT INTO `cosmo_log` VALUES ('478', '0', '0', 'admin', '登录成功', '127.0.0.1', '1573025352');
INSERT INTO `cosmo_log` VALUES ('479', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1574308463');
INSERT INTO `cosmo_log` VALUES ('480', '0', '0', 'admin', '登录成功', '127.0.0.1', '1574308471');
INSERT INTO `cosmo_log` VALUES ('481', '0', '0', 'admin', '登录成功', '127.0.0.1', '1576808960');
INSERT INTO `cosmo_log` VALUES ('482', '1', '0', 'admin', '密码错误:cosmon0321!', '127.0.0.1', '1577409612');
INSERT INTO `cosmo_log` VALUES ('483', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577409622');
INSERT INTO `cosmo_log` VALUES ('484', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577417910');
INSERT INTO `cosmo_log` VALUES ('485', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577756084');
INSERT INTO `cosmo_log` VALUES ('486', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577774682');
INSERT INTO `cosmo_log` VALUES ('487', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577947996');
INSERT INTO `cosmo_log` VALUES ('488', '0', '0', 'admin', '登录成功', '127.0.0.1', '1578042472');
INSERT INTO `cosmo_log` VALUES ('489', '0', '0', 'admin', '登录成功', '127.0.0.1', '1581558660');
INSERT INTO `cosmo_log` VALUES ('490', '0', '0', 'admin', '登录成功', '127.0.0.1', '1582687546');
INSERT INTO `cosmo_log` VALUES ('491', '0', '0', 'admin', '登录成功', '27.45.146.101', '1582769045');
INSERT INTO `cosmo_log` VALUES ('492', '0', '0', 'admin', '登录成功', '127.0.0.1', '1582783785');
INSERT INTO `cosmo_log` VALUES ('493', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1582797386');
INSERT INTO `cosmo_log` VALUES ('494', '0', '0', 'admin', '登录成功', '27.45.146.101', '1582855810');
INSERT INTO `cosmo_log` VALUES ('495', '0', '0', 'admin', '登录成功', '27.45.146.101', '1582871739');
INSERT INTO `cosmo_log` VALUES ('496', '0', '0', 'admin', '登录成功', '27.45.146.101', '1582872145');
INSERT INTO `cosmo_log` VALUES ('497', '1', '0', 'huizhuan', '密码错误:huizhuan#321', '27.45.146.101', '1582872299');
INSERT INTO `cosmo_log` VALUES ('498', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1582872330');
INSERT INTO `cosmo_log` VALUES ('499', '0', '0', 'admin', '登录成功', '27.45.146.101', '1582883244');
INSERT INTO `cosmo_log` VALUES ('500', '0', '0', 'huizhuan', '登录成功', '157.61.159.12', '1582943900');
INSERT INTO `cosmo_log` VALUES ('501', '0', '0', 'huizhuan', '登录成功', '157.61.159.12', '1582963549');
INSERT INTO `cosmo_log` VALUES ('502', '0', '0', 'admin', '登录成功', '27.45.146.101', '1583132230');
INSERT INTO `cosmo_log` VALUES ('503', '0', '0', 'admin', '登录成功', '27.45.146.101', '1583291798');
INSERT INTO `cosmo_log` VALUES ('504', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583291914');
INSERT INTO `cosmo_log` VALUES ('505', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583308249');
INSERT INTO `cosmo_log` VALUES ('506', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583309447');
INSERT INTO `cosmo_log` VALUES ('507', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583372974');
INSERT INTO `cosmo_log` VALUES ('508', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583475288');
INSERT INTO `cosmo_log` VALUES ('509', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583717818');
INSERT INTO `cosmo_log` VALUES ('510', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583739237');
INSERT INTO `cosmo_log` VALUES ('511', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583739239');
INSERT INTO `cosmo_log` VALUES ('512', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583739240');
INSERT INTO `cosmo_log` VALUES ('513', '0', '0', 'admin', '登录成功', '27.45.146.101', '1583898058');
INSERT INTO `cosmo_log` VALUES ('514', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583906152');
INSERT INTO `cosmo_log` VALUES ('515', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583906154');
INSERT INTO `cosmo_log` VALUES ('516', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1583983633');
INSERT INTO `cosmo_log` VALUES ('517', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1584080618');
INSERT INTO `cosmo_log` VALUES ('518', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1584092349');
INSERT INTO `cosmo_log` VALUES ('519', '0', '0', 'huizhuan', '登录成功', '113.109.50.81', '1584173821');
INSERT INTO `cosmo_log` VALUES ('520', '0', '0', 'huizhuan', '登录成功', '157.61.158.237', '1584286017');
INSERT INTO `cosmo_log` VALUES ('521', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1584323149');
INSERT INTO `cosmo_log` VALUES ('522', '0', '0', 'admin', '登录成功', '27.45.146.101', '1584323602');
INSERT INTO `cosmo_log` VALUES ('523', '0', '0', 'huizhuan', '登录成功', '116.21.12.181', '1584325472');
INSERT INTO `cosmo_log` VALUES ('524', '0', '0', 'admin', '登录成功', '27.45.146.101', '1584338771');
INSERT INTO `cosmo_log` VALUES ('525', '1', '0', 'admin!', '密码错误:cosmo0321', '27.45.146.101', '1584340348');
INSERT INTO `cosmo_log` VALUES ('526', '0', '0', 'admin', '登录成功', '27.45.146.101', '1584340377');
INSERT INTO `cosmo_log` VALUES ('527', '0', '0', 'admin', '登录成功', '27.45.146.101', '1584588699');
INSERT INTO `cosmo_log` VALUES ('528', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1584601704');
INSERT INTO `cosmo_log` VALUES ('529', '0', '0', 'admin', '登录成功', '27.45.146.101', '1584608253');
INSERT INTO `cosmo_log` VALUES ('530', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1585276976');
INSERT INTO `cosmo_log` VALUES ('531', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1585280158');
INSERT INTO `cosmo_log` VALUES ('532', '0', '0', 'huizhuan', '登录成功', '157.61.158.243', '1585334559');
INSERT INTO `cosmo_log` VALUES ('533', '0', '0', 'huizhuan', '登录成功', '157.61.158.243', '1585334560');
INSERT INTO `cosmo_log` VALUES ('534', '0', '0', 'huizhuan', '登录成功', '157.61.158.243', '1585334587');
INSERT INTO `cosmo_log` VALUES ('535', '0', '0', 'huizhuan', '登录成功', '157.61.158.243', '1585363358');
INSERT INTO `cosmo_log` VALUES ('536', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1585562213');
INSERT INTO `cosmo_log` VALUES ('537', '0', '0', 'admin', '登录成功', '27.45.146.101', '1585563828');
INSERT INTO `cosmo_log` VALUES ('538', '0', '0', 'admin', '登录成功', '27.45.146.101', '1585565812');
INSERT INTO `cosmo_log` VALUES ('539', '0', '0', 'huizhuan', '登录成功', '157.61.158.240', '1585753888');
INSERT INTO `cosmo_log` VALUES ('540', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586411003');
INSERT INTO `cosmo_log` VALUES ('541', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586411022');
INSERT INTO `cosmo_log` VALUES ('542', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586503091');
INSERT INTO `cosmo_log` VALUES ('543', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586503526');
INSERT INTO `cosmo_log` VALUES ('544', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586768926');
INSERT INTO `cosmo_log` VALUES ('545', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1586848183');
INSERT INTO `cosmo_log` VALUES ('546', '0', '0', 'huizhuan', '登录成功', '59.42.236.127', '1586853095');
INSERT INTO `cosmo_log` VALUES ('547', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1587006996');
INSERT INTO `cosmo_log` VALUES ('548', '0', '0', 'huizhuan', '登录成功', '172.104.32.227', '1587363332');
INSERT INTO `cosmo_log` VALUES ('549', '0', '0', 'huizhuan', '登录成功', '172.104.32.227', '1587363333');
INSERT INTO `cosmo_log` VALUES ('550', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1587368955');
INSERT INTO `cosmo_log` VALUES ('551', '0', '0', 'huizhuan', '登录成功', '116.21.15.150', '1587459518');
INSERT INTO `cosmo_log` VALUES ('552', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1587535197');
INSERT INTO `cosmo_log` VALUES ('553', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1587718308');
INSERT INTO `cosmo_log` VALUES ('554', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1587967091');
INSERT INTO `cosmo_log` VALUES ('555', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1587978420');
INSERT INTO `cosmo_log` VALUES ('556', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1588141778');
INSERT INTO `cosmo_log` VALUES ('557', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1588144386');
INSERT INTO `cosmo_log` VALUES ('558', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1588490168');
INSERT INTO `cosmo_log` VALUES ('559', '0', '0', 'admin', '登录成功', '27.45.146.101', '1588644689');
INSERT INTO `cosmo_log` VALUES ('560', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1588645838');
INSERT INTO `cosmo_log` VALUES ('561', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1588649064');
INSERT INTO `cosmo_log` VALUES ('562', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1588925871');
INSERT INTO `cosmo_log` VALUES ('563', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589167728');
INSERT INTO `cosmo_log` VALUES ('564', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1589193262');
INSERT INTO `cosmo_log` VALUES ('565', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1589247068');
INSERT INTO `cosmo_log` VALUES ('566', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589251486');
INSERT INTO `cosmo_log` VALUES ('567', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1589267364');
INSERT INTO `cosmo_log` VALUES ('568', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589508234');
INSERT INTO `cosmo_log` VALUES ('569', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589763313');
INSERT INTO `cosmo_log` VALUES ('570', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1589770206');
INSERT INTO `cosmo_log` VALUES ('571', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589858068');
INSERT INTO `cosmo_log` VALUES ('572', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589879222');
INSERT INTO `cosmo_log` VALUES ('573', '0', '0', 'huizhuan', '登录成功', '23.105.192.70', '1589966487');
INSERT INTO `cosmo_log` VALUES ('574', '0', '0', 'huizhuan', '登录成功', '59.42.238.143', '1590021328');
INSERT INTO `cosmo_log` VALUES ('575', '0', '0', 'huizhuan', '登录成功', '59.42.238.143', '1590027330');
INSERT INTO `cosmo_log` VALUES ('576', '0', '0', 'huizhuan', '登录成功', '116.21.13.74', '1590125889');
INSERT INTO `cosmo_log` VALUES ('577', '0', '0', 'huizhuan', '登录成功', '116.21.12.242', '1590368087');
INSERT INTO `cosmo_log` VALUES ('578', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1590394132');
INSERT INTO `cosmo_log` VALUES ('579', '0', '0', 'huizhuan', '登录成功', '59.42.237.97', '1590454707');
INSERT INTO `cosmo_log` VALUES ('580', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590487727');
INSERT INTO `cosmo_log` VALUES ('581', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590540860');
INSERT INTO `cosmo_log` VALUES ('582', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590544572');
INSERT INTO `cosmo_log` VALUES ('583', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590628450');
INSERT INTO `cosmo_log` VALUES ('584', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590649193');
INSERT INTO `cosmo_log` VALUES ('585', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590713192');
INSERT INTO `cosmo_log` VALUES ('586', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1590971816');
INSERT INTO `cosmo_log` VALUES ('587', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1590998223');
INSERT INTO `cosmo_log` VALUES ('588', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591057856');
INSERT INTO `cosmo_log` VALUES ('589', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591089300');
INSERT INTO `cosmo_log` VALUES ('590', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591145497');
INSERT INTO `cosmo_log` VALUES ('591', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591166087');
INSERT INTO `cosmo_log` VALUES ('592', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1591180901');
INSERT INTO `cosmo_log` VALUES ('593', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591232577');
INSERT INTO `cosmo_log` VALUES ('594', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591316573');
INSERT INTO `cosmo_log` VALUES ('595', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591316618');
INSERT INTO `cosmo_log` VALUES ('596', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591336623');
INSERT INTO `cosmo_log` VALUES ('597', '0', '0', 'huizhuan', '登录成功', '113.66.216.92', '1591510644');
INSERT INTO `cosmo_log` VALUES ('598', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591576783');
INSERT INTO `cosmo_log` VALUES ('599', '0', '0', 'huizhuan', '登录成功', '104.250.131.79', '1591597899');
INSERT INTO `cosmo_log` VALUES ('600', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591662852');
INSERT INTO `cosmo_log` VALUES ('601', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591686288');
INSERT INTO `cosmo_log` VALUES ('602', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591749738');
INSERT INTO `cosmo_log` VALUES ('603', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591835302');
INSERT INTO `cosmo_log` VALUES ('604', '0', '0', 'huizhuan', '登录成功', '89.187.161.220', '1591841959');
INSERT INTO `cosmo_log` VALUES ('605', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1591842211');
INSERT INTO `cosmo_log` VALUES ('606', '0', '0', 'admin', '登录成功', '172.104.113.23', '1591842224');
INSERT INTO `cosmo_log` VALUES ('607', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591843120');
INSERT INTO `cosmo_log` VALUES ('608', '0', '0', 'huizhuan', '登录成功', '27.45.146.101', '1591860807');
INSERT INTO `cosmo_log` VALUES ('609', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1591921287');
INSERT INTO `cosmo_log` VALUES ('610', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1591955947');
INSERT INTO `cosmo_log` VALUES ('611', '0', '0', 'huizhuan', '登录成功', '113.66.216.79', '1592028389');
INSERT INTO `cosmo_log` VALUES ('612', '0', '0', 'huizhuan', '登录成功', '113.66.216.79', '1592101373');
INSERT INTO `cosmo_log` VALUES ('613', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592181151');
INSERT INTO `cosmo_log` VALUES ('614', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592181272');
INSERT INTO `cosmo_log` VALUES ('615', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592188984');
INSERT INTO `cosmo_log` VALUES ('616', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592191548');
INSERT INTO `cosmo_log` VALUES ('617', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592192609');
INSERT INTO `cosmo_log` VALUES ('618', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592192609');
INSERT INTO `cosmo_log` VALUES ('619', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592201863');
INSERT INTO `cosmo_log` VALUES ('620', '0', '0', 'admin', '登录成功', '27.45.146.101', '1592211494');
INSERT INTO `cosmo_log` VALUES ('621', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592267205');
INSERT INTO `cosmo_log` VALUES ('622', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592277666');
INSERT INTO `cosmo_log` VALUES ('623', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592302843');
INSERT INTO `cosmo_log` VALUES ('624', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592354745');
INSERT INTO `cosmo_log` VALUES ('625', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592354849');
INSERT INTO `cosmo_log` VALUES ('626', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592386381');
INSERT INTO `cosmo_log` VALUES ('627', '0', '0', 'huizhuan', '登录成功', '120.236.185.42', '1592439881');
INSERT INTO `cosmo_log` VALUES ('628', '0', '0', 'huizhuan', '登录成功', '183.62.248.146', '1592442091');
INSERT INTO `cosmo_log` VALUES ('629', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592474004');
INSERT INTO `cosmo_log` VALUES ('630', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592474004');
INSERT INTO `cosmo_log` VALUES ('631', '0', '0', 'huizhuan', '登录成功', '183.62.248.146', '1592527321');
INSERT INTO `cosmo_log` VALUES ('632', '0', '0', 'huizhuan', '登录成功', '183.62.248.146', '1592557622');
INSERT INTO `cosmo_log` VALUES ('633', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592560795');
INSERT INTO `cosmo_log` VALUES ('634', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592563402');
INSERT INTO `cosmo_log` VALUES ('635', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592613702');
INSERT INTO `cosmo_log` VALUES ('636', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592699212');
INSERT INTO `cosmo_log` VALUES ('637', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592739007');
INSERT INTO `cosmo_log` VALUES ('638', '0', '0', 'huizhuan', '登录成功', '157.61.158.94', '1592756174');
INSERT INTO `cosmo_log` VALUES ('639', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592786462');
INSERT INTO `cosmo_log` VALUES ('640', '0', '0', 'huizhuan', '登录成功', '172.104.113.23', '1592805763');
INSERT INTO `cosmo_log` VALUES ('641', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592829629');
INSERT INTO `cosmo_log` VALUES ('642', '0', '0', 'huizhuan', '登录成功', '118.193.40.181', '1592873273');
INSERT INTO `cosmo_log` VALUES ('643', '0', '0', 'admin', '登录成功', '127.0.0.1', '1592901844');

-- ----------------------------
-- Table structure for cosmo_mailbox
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_mailbox`;
CREATE TABLE `cosmo_mailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_mailbox
-- ----------------------------
INSERT INTO `cosmo_mailbox` VALUES ('9', '1', '2', 'admin', '/_9.html', '0', '1546831139', '1583132306', '0', 'sales@conprofetech.com', '');

-- ----------------------------
-- Table structure for cosmo_menu
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_menu`;
CREATE TABLE `cosmo_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_menu
-- ----------------------------
INSERT INTO `cosmo_menu` VALUES ('1', '0', 'Index', 'main', 'menuid=42', '1', '1', '0', '快捷入口', '', '0');
INSERT INTO `cosmo_menu` VALUES ('2', '0', 'Config', '', 'menuid=50', '1', '1', '0', '系统设置', '系统设置', '2');
INSERT INTO `cosmo_menu` VALUES ('3', '0', 'Category', '', 'menuid=17', '1', '1', '0', '内容管理', '模型管理', '1');
INSERT INTO `cosmo_menu` VALUES ('5', '0', 'User', '', 'menuid=9', '1', '1', '0', '会员管理', '', '90');
INSERT INTO `cosmo_menu` VALUES ('7', '0', 'Template', 'index', 'menuid=60', '1', '1', '0', '界面管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('8', '50', 'Config', 'sys', '', '1', '1', '0', '系统参数', '', '0');
INSERT INTO `cosmo_menu` VALUES ('9', '5', 'User', '', '', '1', '1', '0', '会员资料管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('10', '9', 'User', 'add', '', '1', '1', '0', '添加会员', '', '0');
INSERT INTO `cosmo_menu` VALUES ('11', '5', 'Role', '', '', '1', '1', '0', '会员组管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('12', '11', 'Role', 'add', '', '1', '1', '0', '添加会员组', '', '0');
INSERT INTO `cosmo_menu` VALUES ('13', '5', 'Node', '', '', '1', '1', '0', '权限节点管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('14', '13', 'Node', 'add', '', '1', '1', '0', '添加权限节点', '', '0');
INSERT INTO `cosmo_menu` VALUES ('15', '39', 'Menu', 'add', '', '1', '1', '0', '添加菜单', '', '0');
INSERT INTO `cosmo_menu` VALUES ('16', '3', 'Module', '', '', '1', '1', '0', '模型管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('17', '3', 'Category', '', '', '1', '1', '0', '页面管理', '分类管理', '1');
INSERT INTO `cosmo_menu` VALUES ('18', '16', 'Module', 'add', '', '1', '1', '0', '添加模型', '', '0');
INSERT INTO `cosmo_menu` VALUES ('19', '17', 'Category', 'add', '', '1', '1', '0', '添加栏目', '', '0');
INSERT INTO `cosmo_menu` VALUES ('20', '3', 'Article', '', '', '1', '0', '0', '文章管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('21', '20', 'Article', 'add', '', '1', '1', '0', '添加文章', '', '0');
INSERT INTO `cosmo_menu` VALUES ('23', '2', 'Posid', '', '', '1', '1', '0', '推荐位管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('24', '23', 'Posid', 'add', '', '1', '1', '0', '添加推荐位', '', '0');
INSERT INTO `cosmo_menu` VALUES ('28', '2', 'Type', '', '', '1', '1', '0', '类别管理', '', '6');
INSERT INTO `cosmo_menu` VALUES ('29', '50', 'Config', 'mail', '', '1', '1', '0', '系统邮箱', '', '0');
INSERT INTO `cosmo_menu` VALUES ('30', '50', 'Config', 'attach', '', '1', '1', '0', '附件配置', '', '0');
INSERT INTO `cosmo_menu` VALUES ('31', '17', 'Category', 'repair_cache', '', '1', '0', '0', '恢复栏目数据', '', '0');
INSERT INTO `cosmo_menu` VALUES ('39', '2', 'Menu', '', '', '1', '1', '0', '后台管理菜单', '后台管理菜单', '11');
INSERT INTO `cosmo_menu` VALUES ('40', '2', 'Index', 'password', '', '1', '1', '0', '修改密码', '', '2');
INSERT INTO `cosmo_menu` VALUES ('41', '2', 'Index', 'profile', '', '1', '1', '0', '个人资料', '', '3');
INSERT INTO `cosmo_menu` VALUES ('42', '1', 'Index', 'main', '', '1', '1', '0', '后台首页', '', '1');
INSERT INTO `cosmo_menu` VALUES ('43', '17', 'Category', 'add', '&type=1', '1', '1', '0', '添加外部链接', '', '0');
INSERT INTO `cosmo_menu` VALUES ('44', '2', 'Database', '', '', '1', '0', '0', '数据库管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('45', '44', 'Database', 'query', '', '1', '1', '0', '执行SQL语句', '', '0');
INSERT INTO `cosmo_menu` VALUES ('46', '44', 'Database', 'recover', '', '1', '1', '0', '恢复数据库', '', '0');
INSERT INTO `cosmo_menu` VALUES ('47', '1', 'Index', 'cache', 'menuid=47', '1', '0', '0', '更新缓存', '', '5');
INSERT INTO `cosmo_menu` VALUES ('48', '51', 'Module', 'add', 'type=2', '1', '1', '0', '创建模块', '', '0');
INSERT INTO `cosmo_menu` VALUES ('50', '2', 'Config', '', '', '1', '1', '0', '站点配置', '', '0');
INSERT INTO `cosmo_menu` VALUES ('52', '28', 'Type', 'add', '', '1', '1', '0', '添加类别', '', '0');
INSERT INTO `cosmo_menu` VALUES ('53', '1', 'Link', 'index', '', '1', '1', '0', '友情链接', '', '10');
INSERT INTO `cosmo_menu` VALUES ('54', '53', 'Link', 'add', '', '1', '1', '0', '添加链接', '', '0');
INSERT INTO `cosmo_menu` VALUES ('59', '50', 'Config', 'add', '', '1', '1', '0', '添加系统变量', '', '99');
INSERT INTO `cosmo_menu` VALUES ('60', '7', 'Template', 'index', '', '1', '1', '0', '界面管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('62', '60', 'Template', 'index', 'type=css', '1', '1', '0', 'CSS管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('63', '60', 'Template', 'index', 'type=js', '1', '1', '0', 'JS管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('67', '2', 'Urlrule', 'index', '', '1', '0', '0', 'URL规则', '', '0');
INSERT INTO `cosmo_menu` VALUES ('68', '67', 'Urlrule', 'add', '', '1', '1', '0', '添加规则', '', '0');
INSERT INTO `cosmo_menu` VALUES ('69', '2', 'Dbsource', 'index', '', '1', '0', '0', 'DB数据源', '', '0');
INSERT INTO `cosmo_menu` VALUES ('70', '69', 'Dbsource', 'add', '', '1', '1', '0', '添加数据源', '', '0');
INSERT INTO `cosmo_menu` VALUES ('71', '2', 'Lang', 'index', '', '1', '0', '0', '多语言管理', '语言管理', '0');
INSERT INTO `cosmo_menu` VALUES ('72', '71', 'Lang', 'add', '', '1', '0', '0', '添加语言', '', '0');
INSERT INTO `cosmo_menu` VALUES ('73', '71', 'Lang', 'param', '', '1', '0', '0', '设置语言包', '', '0');
INSERT INTO `cosmo_menu` VALUES ('74', '1', 'Block', 'index', '', '1', '1', '0', '碎片管理', '', '3');
INSERT INTO `cosmo_menu` VALUES ('75', '74', 'Block', 'add', '', '1', '1', '0', '添加碎片', '', '0');
INSERT INTO `cosmo_menu` VALUES ('77', '1', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '4');
INSERT INTO `cosmo_menu` VALUES ('78', '77', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');
INSERT INTO `cosmo_menu` VALUES ('83', '1', 'Log', 'index', '', '1', '1', '0', '后台登陆日志', '', '83');
INSERT INTO `cosmo_menu` VALUES ('84', '1', 'Config', '', '', '1', '1', '0', '站点配置', '', '2');
INSERT INTO `cosmo_menu` VALUES ('85', '3', 'Case', 'index', '', '1', '0', '0', '案例管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('86', '85', 'Case', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('87', '3', 'Jobs', 'index', '', '1', '0', '0', '招聘管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('88', '87', 'Jobs', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('89', '3', 'Product', 'index', '', '1', '1', '0', 'Product', 'Product', '3');
INSERT INTO `cosmo_menu` VALUES ('90', '89', 'Product', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('91', '3', 'Message', 'index', '', '1', '1', '0', '留言管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('92', '91', 'Message', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('93', '3', 'Mailbox', 'index', '', '1', '1', '0', '邮箱管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('94', '93', 'Mailbox', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('98', '97', 'Download', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('97', '3', 'Download', 'index', '', '1', '0', '0', '下载管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('99', '3', 'History', 'index', '', '1', '0', '0', 'History', '', '99');
INSERT INTO `cosmo_menu` VALUES ('100', '99', 'History', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('101', '3', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('102', '101', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');
INSERT INTO `cosmo_menu` VALUES ('103', '3', 'Page', 'edit', 'id=112', '1', '1', '0', 'About Conprofe Technology Group', 'About Conprofe Technology Group', '2');
INSERT INTO `cosmo_menu` VALUES ('104', '3', 'Page', 'edit', 'id=74', '1', '1', '0', 'our professionals', 'our professionals', '4');
INSERT INTO `cosmo_menu` VALUES ('105', '3', 'Page', 'edit', 'id=108', '1', '1', '0', 'Ultrasonic Welding System - Working Principle', 'Ultrasonic Welding System - Working Principle', '5');
INSERT INTO `cosmo_menu` VALUES ('106', '3', 'Page', 'edit', 'id=78', '1', '1', '0', 'Ultrasonic Welding System- Advantages', 'Ultrasonic Welding System- Advantages', '6');
INSERT INTO `cosmo_menu` VALUES ('107', '3', 'Page', 'edit', 'id=110', '1', '1', '0', 'Why Choose CONPROFE', 'Why Choose CONPROFE', '7');
INSERT INTO `cosmo_menu` VALUES ('108', '3', 'Page', 'edit', 'id=114', '1', '1', '0', 'Certificated', 'Certificated', '8');

-- ----------------------------
-- Table structure for cosmo_message
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_message`;
CREATE TABLE `cosmo_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `com` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `dep` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `files` varchar(80) NOT NULL DEFAULT '',
  `forward` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `account` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_message
-- ----------------------------
INSERT INTO `cosmo_message` VALUES ('525', '0', '0', '', '', '0', '1582714517', '1582714517', '1', 'sfsfds', 'sdfsfs', '13922341786', '123@qq.com', '', '', 'asdadasdadasd', '[]asdadasdadasd', '', '', 'asdasda', '');
INSERT INTO `cosmo_message` VALUES ('526', '0', '0', '', '/_526.html', '0', '1582786898', '1582786924', '0', 'dasdad', 'asdadasd', '13922341786', '123@qq.com', '', '', 'asdadasdasdasdasdasdadadada', '[中国广东]asdadasdasdasdasdasdadadada', '', 'http://huizhuan.test.yige-tech.com/index.php?g=Admin&amp;m=Message&amp;a=index&amp;menuid=91', 'asdasdasd', 'adadasd');
INSERT INTO `cosmo_message` VALUES ('527', '0', '0', '', '', '0', '1583041958', '1583041958', '1', 'K c Shah', '', '9898458463', 'cossetint.techs@gmail.com', '', '', 'In process to develop Mask making machines', '[]In process to develop Mask making machines', '', '', 'India', 'What\'s up');
INSERT INTO `cosmo_message` VALUES ('528', '0', '0', '', '', '0', '1583042185', '1583042185', '1', 'K c Shah', '', '9898458463', 'cossetint.techs@gmail.com', '', '', 'In process to develop Mask making machines', '[]In process to develop Mask making machines', '', '', 'India', 'What\'s up');
INSERT INTO `cosmo_message` VALUES ('529', '0', '0', '', '', '0', '1583042251', '1583042251', '1', 'K c Shah', '', '9898458463', 'cossetint.techs@gmail.com', '', '', 'In process to develop Mask making machines', '[]In process to develop Mask making machines', '', '', 'India', 'What\'s up');
INSERT INTO `cosmo_message` VALUES ('530', '0', '0', '', '', '0', '1583194451', '1583194451', '1', 'Sherman How', '', '82183820', 'shermanpegasus@gmail.com', '', '', 'Hi, I am interested in your company surgical masks and medical equipment making machine to be imported into Singapore.\r\n\r\nMay I know the price and is it possible to ship over.\r\n\r\nOur company objective is to make cheap , reliable and affordable medical aids supply for healthcare, pharmacy and country citizens. \r\n\r\nThank u and awaiting for your prompt reply.\r\n', '[]Hi, I am interested in your company surgical masks and medical equipment making machine to be imported into Singapore.\r\n\r\nMay I know the price and is it possible to ship over.\r\n\r\nOur company objective is to make cheap , reliable and affordable medical a', '', '', 'Singapore', 'Wechat: sherman_how');
INSERT INTO `cosmo_message` VALUES ('531', '0', '0', '', '', '0', '1583425652', '1583425652', '1', 'Sonu goswami ', 'Samsung Galaxy ', '8739954581', 'Sanjay@gmail.com ', '', '', 'Hello sar thanks', '[]Hello sar thanks', '', '', 'Bhart', '558432196743');
INSERT INTO `cosmo_message` VALUES ('532', '0', '0', '', '', '0', '1584323534', '1584323534', '1', 'test', '', '12345678911', '123@qq.com', '', '', 'Message For Max Prefab', '[]Message For Max Prefab', '', '', 'sfdfsfsfsf', 'sfsfsfd');
INSERT INTO `cosmo_message` VALUES ('533', '0', '0', '', '', '0', '1584323675', '1584323675', '1', 'test', 'csfddsf', '12345678911', '123@qq.com', '', '', 'sfdsfsfsfsfsdfsdf', '[]sfdsfsfsfsfsdfsdf', '', '', 'asfsafsafs', 'afsdfsf');
INSERT INTO `cosmo_message` VALUES ('534', '0', '0', '', '', '0', '1584613224', '1584613224', '1', 'Zach Liang', '', '12345678', 'zach.liang@fsqhyl.com', '', '', '这是一个测试询盘\r\n这是一个测试询盘\r\n这是一个测试询盘', '[]这是一个测试询盘\r\n这是一个测试询盘\r\n这是一个测试询盘', '', '', 'china', '');
INSERT INTO `cosmo_message` VALUES ('535', '0', '0', '', '', '0', '1584614536', '1584614536', '1', 'Zach Liang', '', '12345678', 'zach.liang@fsqhyl.com', '', '', 'this is a test message\r\nthis is a test message\r\nthis is a test message', '[]this is a test message\r\nthis is a test message\r\nthis is a test message', '', '', '中国', '');
INSERT INTO `cosmo_message` VALUES ('546', '0', '0', '', '', '0', '1585806850', '1585806850', '1', 'Irene Reyes', '', '2538961195', 'glovelady@excelsupplycompany.com', '', '', 'Please send me cost for N95 machine and can you ship this airfreight.\r\n Please email how much this machine can produce per hour and ease of use.  How many workers we need to operate.  Can we do 24 hours operation?', '[]Please send me cost for N95 machine and can you ship this airfreight.\r\n Please email how much this machine can produce per hour and ease of use.  How many workers we need to operate.  Can we do 24 hours operation?', '', '', 'United States', 'Excelsupplycompany.com');
INSERT INTO `cosmo_message` VALUES ('545', '0', '0', '', '', '0', '1585739676', '1585739676', '1', 'sam', '', '+886910965780', 'hiraholdingltd@gmail.com', '', '', 'we needultrasonic weld generator for earloop welding machine 20 pice', '[]we needultrasonic weld generator for earloop welding machine 20 pice', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('547', '0', '0', '', '', '0', '1586252247', '1586252247', '1', 'mustafa düger', '', '05325460070', 'mduger@ortotek.com', '', '', 'We are located in Turkey ,we are looking for 15K 20K Non-Woven Mask Ultrasonic Welding Machine.\r\nDo you sell it?and what is the your sales price?\r\n\r\n\r\n\r\nBest regards,\r\nMustafa Duger\r\nOrtotek Ltd Sti\r\nZiya gokalp cad.68/21  06600 Kolej-Ankara/ Turkey\r\nPhone;+90 312 4301830\r\nFax;+90 312 4301832', '[]We are located in Turkey ,we are looking for 15K 20K Non-Woven Mask Ultrasonic Welding Machine.\r\nDo you sell it?and what is the your sales price?\r\n\r\n\r\n\r\nBest regards,\r\nMustafa Duger\r\nOrtotek Ltd Sti\r\nZiya gokalp cad.68/21  06600 Kolej-Ankara/ Turkey\r\nPh', '', '', '', 'www.ortotek.com');
INSERT INTO `cosmo_message` VALUES ('548', '0', '0', '', '', '0', '1586441134', '1586441134', '1', 'kadir', '', '+905067160937', 'kadirseyfeli@tekniksa.com.tr', '', '', 'can you send me price for 3 storey mask ultrasonic welding machines we are thinking to buy 5 pieces  and ımportant one is how long does shipment takes. ', '[土耳其XX]can you send me price for 3 storey mask ultrasonic welding machines we are thinking to buy 5 pieces  and ımportant one is how long does shipment takes. ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('549', '0', '0', '', '', '0', '1586441166', '1586441166', '1', 'kadir', '', '+905067160937', 'kadirseyfeli@tekniksa.com.tr', '', '', 'can you send me price for 3 storey mask ultrasonic welding machines we are thinking to buy 5 pieces  and ımportant one is how long does shipment takes. ', '[]can you send me price for 3 storey mask ultrasonic welding machines we are thinking to buy 5 pieces  and ımportant one is how long does shipment takes. ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('550', '0', '0', '', '', '0', '1586456597', '1586456597', '1', 'Guilherme Fagundes', '', '+5512996697254', 'gumfagundes@gmail.com', '', '', 'Hello,\r\n\r\nI would like to have a few more information regarding your machine.\r\n- how fast could you delivery this machine here in Brazil?\r\n- do you guys would install it here?\r\n- what is the cost of this model?\r\n- ordering more than 1 machine, how fast can you delivery it in Brazil?\r\n\r\nI have a huge demand for those masks, so I need the machine as soon as possible. I am also interested and second-hand machines.\r\n\r\nThanks,\r\n\r\nGuilherme M Fagundes', '[]Hello,\r\n\r\nI would like to have a few more information regarding your machine.\r\n- how fast could you delivery this machine here in Brazil?\r\n- do you guys would install it here?\r\n- what is the cost of this model?\r\n- ordering more than 1 machine, how fast ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('551', '0', '0', '', '', '0', '1586489424', '1586489424', '1', 'Ted Mun', '', '82-1052983203', 'tedmun@empas.com', '', '', 'Hi,\r\nWe are looking for Ultrasonic welding tools for 3D mask manufacturing equipments which will be about 100 sets.\r\nPlease reply to me if you could supply ultasonic welding tools for us.\r\n\r\nThanks\r\nTed Mun\r\ntedmun@empas.com\r\nT)82-1052983203', '[韩国XX]Hi,\r\nWe are looking for Ultrasonic welding tools for 3D mask manufacturing equipments which will be about 100 sets.\r\nPlease reply to me if you could supply ultasonic welding tools for us.\r\n\r\nThanks\r\nTed Mun\r\ntedmun@empas.com\r\nT)82-1052983203', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('552', '0', '0', '', '', '0', '1586516082', '1586516082', '1', 'Dr jamal hamed', '', '00962799797679', 'jqtwsh123@hotmail.com', '', '', 'Dear\r\nWe need to buy \r\nUltrasonic weld generator \r\n15 Khz\r\n3200 Watts\r\n220V 50hz\r\nTransducer \r\nFlange \r\nHorn size 180X140X25 mm\r\nFace mask machine \r\nContenuas running\r\nReg', '[]Dear\r\nWe need to buy \r\nUltrasonic weld generator \r\n15 Khz\r\n3200 Watts\r\n220V 50hz\r\nTransducer \r\nFlange \r\nHorn size 180X140X25 mm\r\nFace mask machine \r\nContenuas running\r\nReg', '', '', 'Jordan', '');
INSERT INTO `cosmo_message` VALUES ('553', '0', '0', '', '', '0', '1586516114', '1586516114', '1', 'Dr jamal hamed', '', '00962799797679', 'jqtwsh123@hotmail.com', '', '', 'Dear\r\nWe need to buy \r\nUltrasonic weld generator \r\n15 Khz\r\n3200 Watts\r\n220V 50hz\r\nTransducer \r\nFlange \r\nHorn size 180X140X25 mm\r\nFace mask machine \r\nContenuas running\r\nReg', '[]Dear\r\nWe need to buy \r\nUltrasonic weld generator \r\n15 Khz\r\n3200 Watts\r\n220V 50hz\r\nTransducer \r\nFlange \r\nHorn size 180X140X25 mm\r\nFace mask machine \r\nContenuas running\r\nReg', '', '', 'Jordan', '');
INSERT INTO `cosmo_message` VALUES ('554', '0', '0', '', '', '0', '1586574216', '1586574216', '1', 'Thomasblict', '', '86923939799', 'raphaePandanype@gmail.com', '', '', 'Hello!  conprofetech.cn \r\n \r\nDid you know that it is possible to send commercial offer wholly legal? \r\nWe sell a new legal method of sending letter through feedback forms. Such forms are located on many sites. \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nEmail - feedbackform@make-success.com', '[奥地利XX]Hello!  conprofetech.cn \r\n \r\nDid you know that it is possible to send commercial offer wholly legal? \r\nWe sell a new legal method of sending letter through feedback forms. Such forms are located on many sites. \r\nWhen such messages are sent, no pers', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('555', '0', '0', '', '', '0', '1586865088', '1586865088', '1', 'Murari Lal', '', '+918587988876', 'murari.lal@kripaautomation.com', '', '', 'We need some mask welding machine.', '[印度马哈拉施特拉]We need some mask welding machine.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('556', '0', '0', '', '', '0', '1586865133', '1586865133', '1', 'Murari Lal', '', '+918587988876', 'murari.lal@kripaautomation.com', '', '', 'We need some mask welding machine.', '[印度马哈拉施特拉]We need some mask welding machine.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('557', '0', '0', '', '', '0', '1587222024', '1587222024', '1', 'Roberto Gotti', '', '3296947110', 'roberto.gotti@powertech-automation.it', '', '', 'Can we have a budget offer for surgical mask ultrasonic welding complete system.', '[意大利XX]Can we have a budget offer for surgical mask ultrasonic welding complete system.', '', '', 'Italy', 'www.powertech-automation.it');
INSERT INTO `cosmo_message` VALUES ('558', '0', '0', '', '', '0', '1587239612', '1587239612', '1', 'Murat gürbüz', '', '+905327431688', 'murat.gurbuz@msmuratmakina.com', '', '', 'Hi face mask ultrasonic set 20.000 khz 2000 watt', '[]Hi face mask ultrasonic set 20.000 khz 2000 watt', '', '', 'Turkey', '');
INSERT INTO `cosmo_message` VALUES ('559', '0', '0', '', '', '0', '1587241283', '1587241283', '1', 'Murat gürbüz', '', '+905327431688', 'murat.gurbuz@msmuratmakina.com', '', '', 'Ultrasonic generator booster and horn full suit we need 20 khz 2000 watt price expects regards   \r\n\r\n\r\nIs the technical values I write that I will use in the manufacture of face masks, how and how do I want the quality of your products and how i want the price', '[]Ultrasonic generator booster and horn full suit we need 20 khz 2000 watt price expects regards   \r\n\r\n\r\nIs the technical values I write that I will use in the manufacture of face masks, how and how do I want the quality of your products and how i want th', '', '', 'Turkey', '');
INSERT INTO `cosmo_message` VALUES ('560', '0', '0', '', '', '0', '1587366671', '1587366671', '1', 'Victor Hugo Zavala', '', '+52 3311520797', 'victor_zavala@yahoo.com', '', '', 'I would like to source a spare ultrasonic welding tool, as one of the heads on the mask machine I am working on was defective or damaged.\r\nThe only information I could gather is a number in the body, 207116, and the operating info from the driver,  40%, 19,892 Hz. The other two parameters are in Chinese.\r\nCould you please help me to quote the spare?\r\nThanks, Victor', '[]I would like to source a spare ultrasonic welding tool, as one of the heads on the mask machine I am working on was defective or damaged.\r\nThe only information I could gather is a number in the body, 207116, and the operating info from the driver,  40%,', '', '', 'Mexico', '');
INSERT INTO `cosmo_message` VALUES ('561', '0', '0', '', '', '0', '1587482788', '1587482788', '1', 'taylan gürken', '', '00905324621121', 'noyamekatronik@gmail.com', '', '', 'Hi , \r\n\r\nwe  need 20 set  20 khz   2000 watt   ultrasonic welding set  include genarator,convertor,booster and horn  for mask machine \r\n\r\nkindly  waiting your offer with price and delivery time \r\n\r\nregards \r\n\r\nTAYLAN GURKNEN', '[土耳其XX]Hi , \r\n\r\nwe  need 20 set  20 khz   2000 watt   ultrasonic welding set  include genarator,convertor,booster and horn  for mask machine \r\n\r\nkindly  waiting your offer with price and delivery time \r\n\r\nregards \r\n\r\nTAYLAN GURKNEN', '', '', '', 'www.noyamak.com');
INSERT INTO `cosmo_message` VALUES ('562', '0', '0', '', '', '0', '1587548688', '1587548688', '1', 'Adem', '', '0770165027', 'yasaradem03@gmail.com', '', '', 'Bonjour je me permet de vous contacter car je ovuler savoir 2 machine sa coute combien', '[法国XX]Bonjour je me permet de vous contacter car je ovuler savoir 2 machine sa coute combien', '', '', 'Alencon', '');
INSERT INTO `cosmo_message` VALUES ('563', '0', '0', '', '', '0', '1587548814', '1587548814', '1', 'Adem', '', '0770165027', 'yasaradem03@gmail.com', '', '', 'Bonjour je me permet de vous contacter car je ovuler savoir 2 machine sa coute combien', '[]Bonjour je me permet de vous contacter car je ovuler savoir 2 machine sa coute combien', '', '', 'Alencon', '');
INSERT INTO `cosmo_message` VALUES ('564', '0', '0', '', '', '0', '1587565534', '1587565534', '1', 'Chad ', '', '2486866955', 'Chad@digital edialoft.com', '', '', 'Cost ', '[]Cost ', '', '', 'Usa', '');
INSERT INTO `cosmo_message` VALUES ('565', '0', '0', '', '', '0', '1587716141', '1587716141', '1', 'Mehmet', '', '+905300155013', 'Multitechtr@gmail.com', '', '', 'Ultrasonic welding machine ', '[土耳其XX]Ultrasonic welding machine ', '', '', 'Turkey', '');
INSERT INTO `cosmo_message` VALUES ('566', '0', '0', '', '', '0', '1588145206', '1588145206', '1', 'Byung-in Lee', '', '061962048645+82 10 2939 0331', 'preslee@elanvision.com', '', '', 'We are preparing to assemble mask welding systems, and we need your quotation for:\r\n\r\n300 ultrasonic transducers\r\nand\r\n300 ultrasonic generators, 2000W 20KHz.\r\n\r\nPlease send your CIF Korea prices, shipment lead time, warranty conditions and payment terms by email to:\r\n\r\npreslee@pcbsclean.com and preslee@elanvision.com\r\n\r\nPlease also quote your conditions for sample dispatch (2-5 pcs each).\r\n\r\nIn case of payment by PayPal, do you use the option \"Pay After Delivery\"?\r\n\r\nBest Regards\r\nByung-in Lee\r\nDaedeok PSD Co., Ltd.\r\nPaju-City, Korea\r\n', '[]We are preparing to assemble mask welding systems, and we need your quotation for:\r\n\r\n300 ultrasonic transducers\r\nand\r\n300 ultrasonic generators, 2000W 20KHz.\r\n\r\nPlease send your CIF Korea prices, shipment lead time, warranty conditions and payment term', '', '', '', 'http://pcbsclean.com');
INSERT INTO `cosmo_message` VALUES ('567', '0', '0', '', '', '0', '1588145388', '1588145388', '1', 'Byung-in Lee', '', '061962048645+82 10 2939 0331', 'preslee@elanvision.com', '', '', 'We are preparing to assemble mask welding systems, and we need your quotation for:\r\n\r\n300 ultrasonic transducers\r\nand\r\n300 ultrasonic generators, 2000W 20KHz.\r\n\r\nPlease send your CIF Korea prices, shipment lead time, warranty conditions and payment terms by email to:\r\n\r\npreslee@pcbsclean.com and preslee@elanvision.com\r\n\r\nPlease also quote your conditions for sample dispatch (2-5 pcs each).\r\n\r\nIn case of payment by PayPal, do you use the option \"Pay After Delivery\"?\r\n\r\nBest Regards\r\nByung-in Lee\r\nDaedeok PSD Co., Ltd.\r\nPaju-City, Korea\r\n', '[]We are preparing to assemble mask welding systems, and we need your quotation for:\r\n\r\n300 ultrasonic transducers\r\nand\r\n300 ultrasonic generators, 2000W 20KHz.\r\n\r\nPlease send your CIF Korea prices, shipment lead time, warranty conditions and payment term', '', '', '', 'http://pcbsclean.com');
INSERT INTO `cosmo_message` VALUES ('568', '0', '0', '', '', '0', '1588172439', '1588172439', '1', 'David Galindo', '', '(+34) 638182396', 'david.galindo@eme-es.com', '', '', 'Hi, \r\n\r\nWe are interested in several US welding system for mask manufacturing application. For both spot welding of ear strap, and side sealing (longer surface).\r\n\r\nCould provide us with your proposal?\r\n\r\nBest\r\nDavid', '[]Hi, \r\n\r\nWe are interested in several US welding system for mask manufacturing application. For both spot welding of ear strap, and side sealing (longer surface).\r\n\r\nCould provide us with your proposal?\r\n\r\nBest\r\nDavid', '', '', '', 'www.eme-es.com');
INSERT INTO `cosmo_message` VALUES ('569', '0', '0', '', '', '0', '1588172469', '1588172469', '1', 'David Galindo', '', '(+34) 638182396', 'david.galindo@eme-es.com', '', '', 'Hi, \r\n\r\nWe are interested in several US welding system for mask manufacturing application. For both spot welding of ear strap, and side sealing (longer surface).\r\n\r\nCould provide us with your proposal?\r\n\r\nBest\r\nDavid', '[]Hi, \r\n\r\nWe are interested in several US welding system for mask manufacturing application. For both spot welding of ear strap, and side sealing (longer surface).\r\n\r\nCould provide us with your proposal?\r\n\r\nBest\r\nDavid', '', '', '', 'www.eme-es.com');
INSERT INTO `cosmo_message` VALUES ('570', '0', '0', '', '', '0', '1588225322', '1588225322', '1', 'Fernand Rico', '', '954 881 5117', 'ferico@bellsouth.net', '', '', 'hi \' \r\nhow much is the price automatic mask machine', '[美国佛罗里达]hi \' \r\nhow much is the price automatic mask machine', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('571', '0', '0', '', '', '0', '1588225379', '1588225379', '1', 'Fernand Rico', '', '954 881 5117', 'ferico@bellsouth.net', '', '', 'hi \' \r\nhow much is the price automatic mask machine', '[]hi \' \r\nhow much is the price automatic mask machine', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('572', '0', '0', '', '', '0', '1588225514', '1588225514', '1', 'Fernand Rico', '', '954 881 5117', 'ferico@bellsouth.net', '', '', 'hi  \r\nhow much is the price automatic mask machine.\r\n\r\nThank you\r\n\r\nFernando Rico', '[]hi  \r\nhow much is the price automatic mask machine.\r\n\r\nThank you\r\n\r\nFernando Rico', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('573', '0', '0', '', '', '0', '1588226486', '1588226486', '1', 'Nader Amin', '', '05346648528', 'nader.kharazi@gmail.com', '', '', 'Dear Ken Shi ,\r\n\r\nHope you are doing well,\r\n\r\nWe are a machinery producer based in Istanbul, Turkey.\r\n\r\nRecently, we start the manufacturing of machinery for Surgical Mask production lines.\r\n\r\nTherefore, we need to get Ultrasonic welding units as per below. Kindly please provide us a quotation.\r\n\r\nPlease give me your best price Because I want to sell your products in Turkey.\r\n\r\nThere are many customers in my hand so please give me the best price.\r\n\r\n \r\n\r\n4 sets……….(20kHz 2000W)\r\n\r\n1 set……….(15kHz 2600W)', '[]Dear Ken Shi ,\r\n\r\nHope you are doing well,\r\n\r\nWe are a machinery producer based in Istanbul, Turkey.\r\n\r\nRecently, we start the manufacturing of machinery for Surgical Mask production lines.\r\n\r\nTherefore, we need to get Ultrasonic welding units as per be', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('574', '0', '0', '', '', '0', '1588265829', '1588265829', '1', 'GUILLERMO ARDILA', '', '+573107999203', 'gerencia@vanderpet.com', '', '', 'I NEED ultrasonic sistem 3000 watts 110 volt for manufature LN95MASK\r\n\r\nworking power we need AC110V 60Hz\r\n\r\n', '[]I NEED ultrasonic sistem 3000 watts 110 volt for manufature LN95MASK\r\n\r\nworking power we need AC110V 60Hz\r\n\r\n', '', '', '', 'www.vanderpet.com');
INSERT INTO `cosmo_message` VALUES ('575', '0', '0', '', '', '0', '1588266771', '1588266771', '1', 'Fernand Rico', '', '954 881 5117', 'ferico@bellsouth.net', '', '', 'Hi\r\nI need price  ultrasonic system 2500 watt 110V.\r\n60Hz. por made mask protector \r\n\r\nThank you\r\n\r\nFernado Rico', '[美国佛罗里达]Hi\r\nI need price  ultrasonic system 2500 watt 110V.\r\n60Hz. por made mask protector \r\n\r\nThank you\r\n\r\nFernado Rico', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('576', '0', '0', '', '', '0', '1588266975', '1588266975', '1', 'Fernand Rico', '', '954 881 5117', 'ferico@bellsouth.net', '', '', 'Hi\r\nI need price  ultrasonic system 2500 watt 110V.\r\n60Hz. por made mask protector \r\n\r\nThank you\r\n\r\nFernado Rico', '[美国佛罗里达]Hi\r\nI need price  ultrasonic system 2500 watt 110V.\r\n60Hz. por made mask protector \r\n\r\nThank you\r\n\r\nFernado Rico', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('577', '0', '0', '', '', '0', '1588269916', '1588269916', '1', 'Enrico Sadi', '', '+393483392395', 'enricosadi@yahoo.com', '', '', 'Need a way to change percent of power on your ultrasonic generator. Menu password is 168, but I can\'t change the % of power, fixed at 40%. Also please advise procedure to set up the machine \r\nThanks\r\nEnrico Sadi', '[]Need a way to change percent of power on your ultrasonic generator. Menu password is 168, but I can\'t change the % of power, fixed at 40%. Also please advise procedure to set up the machine \r\nThanks\r\nEnrico Sadi', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('578', '0', '0', '', '', '0', '1588322752', '1588322752', '1', 'H. KIRKIAN', '', '00963944731673', 'kirkian@hotmail.com', '', '', 'Dear Sirs,\r\nWe are trading company from the middle east and we are interested in your ultrasonic welding systems for face mask machines.\r\n\r\nPlease send us by e-mail brochure and information about these ultrasonic welding systems.\r\nBest regards,\r\nH. KIRKIAN', '[]Dear Sirs,\r\nWe are trading company from the middle east and we are interested in your ultrasonic welding systems for face mask machines.\r\n\r\nPlease send us by e-mail brochure and information about these ultrasonic welding systems.\r\nBest regards,\r\nH. KIRK', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('579', '0', '0', '', '', '0', '1588436492', '1588436492', '1', 'Serkan ozkan', '', '05312873974', 'serkanozkan@brossocks.com', '', '', 'Dear Sir/Madame\r\nwe start to make medical mask production machines . Therefore we need ultrasonic welding equipment. Technical specs max 20 khz.2000 watt. horn width 20 mm length 100-110mm. could you send an offer for 20 sets of machine?\r\nbest regards', '[土耳其XX]Dear Sir/Madame\r\nwe start to make medical mask production machines . Therefore we need ultrasonic welding equipment. Technical specs max 20 khz.2000 watt. horn width 20 mm length 100-110mm. could you send an offer for 20 sets of machine?\r\nbest rega', '', '', 'Turkey', 'www.brossocks.com');
INSERT INTO `cosmo_message` VALUES ('580', '0', '0', '', '', '0', '1588563022', '1588563022', '1', '黄穎强', '', '18938153813', 'sales@manming.com', '', '', '另要口罩绳,執漏的手動机資料', '[]另要口罩绳,執漏的手動机資料', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('581', '0', '0', '', '', '0', '1588563207', '1588563207', '1', '黄穎强', '', '18938153813', 'sales@manming.com', '', '', '另要口罩绳,執漏的手動机資料', '[]另要口罩绳,執漏的手動机資料', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('582', '0', '0', '', '', '0', '1588563263', '1588563263', '1', '黄穎强', '', '18938153813', 'sales@manming.com', '', '', '另要口罩绳,執漏的手動机資料', '[中国香港]另要口罩绳,執漏的手動机資料', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('583', '0', '0', '', '', '0', '1588563645', '1588563645', '1', '黃穎強', '', '+852-39553800', 'hy@mamning.com', '', '', '想購買一個超聲波焊接系統', '[中国香港]想購買一個超聲波焊接系統', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('584', '0', '0', '', '', '0', '1588592410', '1588592410', '1', 'Jamileh ', '', '+989127037335', 'iamileh.gazchi.69@gmail.com', '', '', 'To whom it may concern, \r\nLooking for a fast deliver ultra sonic welding mask making machine. \r\nThank you ', '[]To whom it may concern, \r\nLooking for a fast deliver ultra sonic welding mask making machine. \r\nThank you ', '', '', 'Iran', ' Jamileh.gazchi.69@gmail.com ');
INSERT INTO `cosmo_message` VALUES ('585', '0', '0', '', '', '0', '1588627210', '1588627210', '1', 'Eric Jones', '', '416-385-3200', 'eric@talkwithwebvisitor.com', '', '', 'Hello, my name’s Eric and I just ran across your website at conprofetech.cn...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=conprofetech.cn\r\n', '[]Hello, my name’s Eric and I just ran across your website at conprofetech.cn...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nB', '', '', '', 'www.talkwithwebvisitor.com');
INSERT INTO `cosmo_message` VALUES ('586', '0', '0', '', '', '0', '1588763548', '1588763548', '1', 'Raymond 	Brown', '', '82812793754', 'info@thecctvhub.com', '', '', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\n3M 1860, 9502, 9501, 3ply, KN95, KN99, N95 masks \r\nProtective masks \r\nEye mask \r\nProtective cap \r\nDisinfectant \r\nHand sanitiser \r\nMedical alcohol \r\nEye protection \r\nDisposable latex gloves \r\nProtective suit \r\nIR non-contact thermometers \r\nHuman body thermal cameras \r\n \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\nAdvantages of thermal imaging detection: \r\n \r\n1. Intuitive, efficient and convenient, making users directly \"see\" the temperature variation. \r\n2. Thermal condition of different locations for comprehensive analysis, providing more information for judgment \r\n3. Avoiding judgment errors, reducing labor costs, and discovering poor heat dissipation and hidden trouble points \r\n4. PC software for data analysis and report output \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nRaymond', '[]Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\n3M 1860, 9502, 9501, 3ply, KN95, KN99, N95 masks \r\nProtective masks \r\nEye mask \r\nProtective cap \r\nDisinfectant \r\nHand sanitiser \r\nMedical alcohol \r\nEye protection \r\nDi', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('587', '0', '0', '', '', '0', '1588767817', '1588767817', '1', 'Chris Gearing', '', '724-366-2025', 'cgearing@specialtyconduit.com', '', '', 'Hello,\r\nWe have a mask machine that has your equipment on it and are looking to buy a few spare parts. \r\nThe one transducer has a number of 238253 is this a part number? Also looking for 1 (UW20-1A-JX-030106) and 1 (UW-1A-CF-017962). \r\nThank you', '[]Hello,\r\nWe have a mask machine that has your equipment on it and are looking to buy a few spare parts. \r\nThe one transducer has a number of 238253 is this a part number? Also looking for 1 (UW20-1A-JX-030106) and 1 (UW-1A-CF-017962). \r\nThank you', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('588', '0', '0', '', '', '0', '1588767920', '1588767920', '1', 'Chris Gearing', '', '724-366-2025', 'cgearing@specialtyconduit.com', '', '', 'Hello,\r\nWe have a mask machine that has your equipment on it and are looking to buy a few spare parts. \r\nThe one transducer has a number of 238253 is this a part number? Also looking for 1 (UW20-1A-JX-030106) and 1 (UW-1A-CF-017962). \r\nThank you', '[]Hello,\r\nWe have a mask machine that has your equipment on it and are looking to buy a few spare parts. \r\nThe one transducer has a number of 238253 is this a part number? Also looking for 1 (UW20-1A-JX-030106) and 1 (UW-1A-CF-017962). \r\nThank you', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('589', '0', '0', '', '', '0', '1588816029', '1588816029', '1', 'KWE S. KIM/MR.', '', '82-10-5226-1151', 'kskind5454@hanmail.net', '', '', 'We are looking for ultrasonic welding system(transducer + ultrasonic generator) : 70 sets.\r\n\r\nRated power : 2500w\r\nWorking frequency : 20KHz\r\nWorking power : AC220v/60Hz\r\n\r\nPlease inform us person incharge with e-mail enable us to send\r\ntransducer drawing for your quote.\r\n\r\nbrgds\r\nKwe S. Kim/President', '[]We are looking for ultrasonic welding system(transducer + ultrasonic generator) : 70 sets.\r\n\r\nRated power : 2500w\r\nWorking frequency : 20KHz\r\nWorking power : AC220v/60Hz\r\n\r\nPlease inform us person incharge with e-mail enable us to send\r\ntransducer drawi', '', '', '', 'N/A');
INSERT INTO `cosmo_message` VALUES ('590', '0', '0', '', '', '0', '1588818994', '1588818994', '1', 'KWE S. KIM/MR.', '', '82-10-5226-1151', 'kskind5454@hanmail.net', '', '', 'DEAR SIRS,\r\n\r\nPLEASE INFORM US PERSON IN CHARGE WITH E-MAIL ADDRESS\r\nENABLE US TO SEND INQUIRY FOR ULRASONIC WELDING SYSTEM\r\nWITH DRAWINGS.\r\n\r\nBRGDS\r\nKWE S KIM/PRESIDENT', '[韩国首尔]DEAR SIRS,\r\n\r\nPLEASE INFORM US PERSON IN CHARGE WITH E-MAIL ADDRESS\r\nENABLE US TO SEND INQUIRY FOR ULRASONIC WELDING SYSTEM\r\nWITH DRAWINGS.\r\n\r\nBRGDS\r\nKWE S KIM/PRESIDENT', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('591', '0', '0', '', '', '0', '1588882649', '1588882649', '1', 'Jossy ', '', '091 9961571344', 'info@jgtoolings.com', '', '', '', '[]', '', '', 'India', '');
INSERT INTO `cosmo_message` VALUES ('592', '0', '0', '', '', '0', '1588882806', '1588882806', '1', 'Jossy ', '', '091 9961571344', 'info@jgtoolings.com', '', '', 'Please send me the price list ', '[]Please send me the price list ', '', '', 'India', 'Please ');
INSERT INTO `cosmo_message` VALUES ('593', '0', '0', '', '', '0', '1588885736', '1588885736', '1', 'Dave Willis', '', '87278928452', 'no-reply@gmaill.com', '', '', 'Hello, \r\n \r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need: \r\n \r\n-3ply Disposable Masks \r\n-KN95 masks and N95 masks with FDA, CE certificate \r\n-Gloves, Gowns \r\n-Sanitizing Wipes, Hand Sanitizer \r\n-Face Shields \r\n-Orla and No Touch Thermometers \r\n \r\n \r\nDetails: \r\nWe are based in the US \r\nAll products are produced in China \r\nWe are shipping out every day. \r\nMinimum order size varies by product \r\nWe can prepare container loads and ship via AIR or SEA. \r\n \r\nPlease reply back with the product you need , the quantity needed, and the best contact phone number to call you \r\ndavewillis2008@gmail.com \r\n \r\nThank you \r\n \r\nDave Willis \r\nProduct Specialist', '[]Hello, \r\n \r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need: \r\n \r\n-3ply Disposable Masks \r\n-KN95 masks and N95 masks with FDA, CE certificate \r\n-Gloves, Gowns \r\n-Sanitizing Wipes, Hand Sanitize', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('594', '0', '0', '', '', '0', '1588931787', '1588931787', '1', 'A.k.Gupta', '', '91 9818231855', 'universal_gzb@hotmail.com', '', '', 'Kindly quote for  1kw and 2kw , 20khz ultrasonic system ( generator and welding tool)  for mask manufacturing machine.\r\n\r\n                                          Thanks & Regards\r\n                                           A.K.Gupta\r\n                                          For universal Electronics & Engineers', '[]Kindly quote for  1kw and 2kw , 20khz ultrasonic system ( generator and welding tool)  for mask manufacturing machine.\r\n\r\n                                          Thanks &amp; Regards\r\n                                           A.K.Gupta\r\n             ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('595', '0', '0', '', '', '0', '1588932484', '1588932484', '1', 'A.k.Gupta', '', '91 9818231855', 'universal_gzb@hotmail.com', '', '', 'Kindly quote for  1kw and 2kw , 20khz ultrasonic system ( generator and welding tool)  for mask manufacturing machine.\r\n\r\n                                          Thanks & Regards\r\n                                           A.K.Gupta\r\n                                          For universal Electronics & Engineers', '[]Kindly quote for  1kw and 2kw , 20khz ultrasonic system ( generator and welding tool)  for mask manufacturing machine.\r\n\r\n                                          Thanks &amp; Regards\r\n                                           A.K.Gupta\r\n             ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('596', '0', '0', '', '', '0', '1589026094', '1589026094', '1', 'Gireesh', '', '00918589840285', 'gireesh@sabazu.com', '', '', 'Hi\r\n\r\nWe are looking for reliable  \r\nSupplier for ultrasonic welding machine.\r\nWe are manufacturing Nonwoven bag and mask machines\r\n\r\nCould you send your products specifications with price \r\n\r\nPresently  we have  lot of requirement for 4 ply mask  machine \r\n\r\nThanks\r\nGireesh Raghavan ', '[]Hi\r\n\r\nWe are looking for reliable  \r\nSupplier for ultrasonic welding machine.\r\nWe are manufacturing Nonwoven bag and mask machines\r\n\r\nCould you send your products specifications with price \r\n\r\nPresently  we have  lot of requirement for 4 ply mask  machi', '', '', 'India ', 'Www.sabazu.com');
INSERT INTO `cosmo_message` VALUES ('597', '0', '0', '', '', '0', '1589038148', '1589038148', '1', 'Giovanni Alotta', '', '00393477578804', 'G.alotta@algecopower.it', '', '', 'hello, our company has bought an automatic mask production machine that still has to start from China to arrive in Italy. I would like to buy some spare parts to have available in case of malfunction. Your company has recommended me for ultrasound, I ask you if you can provide us with a complete spare set and what data you need for an offer\r\nthanks', '[]hello, our company has bought an automatic mask production machine that still has to start from China to arrive in Italy. I would like to buy some spare parts to have available in case of malfunction. Your company has recommended me for ultrasound, I as', '', '', 'Italy', '');
INSERT INTO `cosmo_message` VALUES ('598', '0', '0', '', '', '0', '1589091264', '1589091264', '1', 'Gireesh', '', '+918589840285', 'gireesh@sabazu.com', '', '', 'Dear All,\r\n\r\nwe are looking for reliable ultrasonic welding kit supplier for our bag making and mask making machine,\r\n\r\ncould you end your product specification and price \r\n\r\n\r\nThanks\r\n\r\nGireesh Raghavan\r\n', '[]Dear All,\r\n\r\nwe are looking for reliable ultrasonic welding kit supplier for our bag making and mask making machine,\r\n\r\ncould you end your product specification and price \r\n\r\n\r\nThanks\r\n\r\nGireesh Raghavan\r\n', '', '', '', 'www.sabazu.com');
INSERT INTO `cosmo_message` VALUES ('599', '0', '0', '', '', '0', '1589180636', '1589180636', '1', 'John Stark ', '', '3606055683', '1965thundarbyrd@gmail.com ', '', '', 'Please send information about mask making machines both flat masks and N95 shaped maskes .My work area is 32 x13.5 feet. Please send estimate for cost of 1 machine each style of mask. Point of entry Seattle WA . Delivery end point is 98239 Coupeville WA.\r\nTHANK YOU\r\nBEST REGARDS \r\nJOHN STARK', '[]Please send information about mask making machines both flat masks and N95 shaped maskes .My work area is 32 x13.5 feet. Please send estimate for cost of 1 machine each style of mask. Point of entry Seattle WA . Delivery end point is 98239 Coupeville WA', '', '', 'USA', 'FB JRSTARKnitwear and Designs');
INSERT INTO `cosmo_message` VALUES ('600', '0', '0', '', '', '0', '1589193321', '1589193321', '1', 'yang, heejoon', '', '+86-10-5328-6833', 'joon@cleson.co.kr', '', '', 'Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '[]Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('601', '0', '0', '', '', '0', '1589193351', '1589193351', '1', 'yang, heejoon', '', '+86-10-5328-6833', 'joon@cleson.co.kr', '', '', 'Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '[]Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('602', '0', '0', '', '', '0', '1589193503', '1589193503', '1', 'yang, heejoon', '', '+82-10-5328-6833', 'joon@cleson.co.kr', '', '', 'Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '[]Request an estimate of the ultrasonic welder used in masking machines.\r\n\r\n15khz /2000-3000w 50set\r\n20kz/1,500w to 2,500w 100set\r\n\r\nPlease recommend w(output). It\'s efficient.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('603', '0', '0', '', '', '0', '1589195747', '1589195747', '1', 'yang, heejoon', '', '+82-10-5328-6833', 'joon@cleson.co.kr', '', '', '\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '[]\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('604', '0', '0', '', '', '0', '1589195959', '1589195959', '1', 'yang, heejoon', '', '+82-10-5328-6833', 'joon@cleson.co.kr', '', '', '\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '[]\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('605', '0', '0', '', '', '0', '1589241301', '1589241301', '1', 'yang, heejoon', '', '+82-10-5328-6833', 'joon@cleson.co.kr', '', '', '\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '[]\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('606', '0', '0', '', '', '0', '1589241669', '1589241669', '1', 'yang, heejoon', '', '+82-10-5328-6833', 'joon@cleson.co.kr', '', '', '\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '[]\r\nmaskmachine use\r\n\r\n15khz\r\n20khz\r\n\r\nultrasonic welder \r\n\r\nI want a consultation.', '', '', '', 'www.cleson.co.kr');
INSERT INTO `cosmo_message` VALUES ('607', '0', '0', '', '', '0', '1589279224', '1589279224', '1', 'Eric Jones', '', '416-385-3200', 'eric@talkwithwebvisitor.com', '', '', 'My name’s Eric and I just came across your website - conprofetech.cn - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like conprofetech.cn will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=conprofetech.cn\r\n', '[]My name’s Eric and I just came across your website - conprofetech.cn - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\n', '', '', '', 'www.talkwithwebvisitor.com');
INSERT INTO `cosmo_message` VALUES ('608', '0', '0', '', '', '0', '1589279950', '1589279950', '1', 'M.Abdul Hafez Alkaraki', '', '+963944243443', 'akaraki@nat-net.com', '', '', 'Dear Sirs,\r\nHope you are doing well,\r\n\r\nWould you please provide me prices for ultrasonic generator and transducer for  non-woven face mask,\r\n\r\nThanks for your cooperation,\r\n\r\nBest regards,\r\nM.Abdul Hafez Alkaraki', '[]Dear Sirs,\r\nHope you are doing well,\r\n\r\nWould you please provide me prices for ultrasonic generator and transducer for  non-woven face mask,\r\n\r\nThanks for your cooperation,\r\n\r\nBest regards,\r\nM.Abdul Hafez Alkaraki', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('609', '0', '0', '', '', '0', '1589292332', '1589292332', '1', 'Stephen l hogan', '', '8312506752', 'Ubaldo_fries@yahoo.com', '', '', '', '[]', '', '', 'Usa', 'Carpoodea.com');
INSERT INTO `cosmo_message` VALUES ('610', '0', '0', '', '', '0', '1589292464', '1589292464', '1', 'Stephen l hogan', '', '8312506752', 'Ubaldo_fries@yahoo.com', '', '', '', '[]', '', '', 'Usa', 'Carpoodea.com');
INSERT INTO `cosmo_message` VALUES ('611', '0', '0', '', '', '0', '1589292528', '1589292528', '1', 'Stephen l hogan', '', '8312506752', 'Ubaldo_fries@yahoo.com', '', '', '', '[]', '', '', 'Usa', 'Carpoodea.com');
INSERT INTO `cosmo_message` VALUES ('612', '0', '0', '', '', '0', '1589292667', '1589292667', '1', 'Stephen l hogan', '', '8312506752', 'Ubaldo_fries@yahoo.com', '', '', '', '[]', '', '', 'Usa', 'Carpoodea.com');
INSERT INTO `cosmo_message` VALUES ('613', '0', '0', '', '', '0', '1589318601', '1589318601', '1', 'Jose Alberto alvarez Mogrovejo', '', '+51980495978', 'jose.alvarez@softys.com', '', '', 'Hi, I\'m softys peru, I need information about your ultrasound CNC generators, I can\'t find anything on the net, we have a machine with 4 teams of your brand.\r\nI will greatly appreciate your support.\r\nFault manual, operation, etc.\r\n\r\nThank you\r\n\r\n* UW20-1A-JX-084299', '[]Hi, I\'m softys peru, I need information about your ultrasound CNC generators, I can\'t find anything on the net, we have a machine with 4 teams of your brand.\r\nI will greatly appreciate your support.\r\nFault manual, operation, etc.\r\n\r\nThank you\r\n\r\n* UW20-', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('614', '0', '0', '', '', '0', '1589318826', '1589318826', '1', 'Jose Alberto alvarez Mogrovejo', '', '+51980495978', 'jose.alvarez@softys.com', '', '', 'Hi, I\'m softys peru, I need information about your ultrasound CNC generators, I can\'t find anything on the net, we have a machine with 4 teams of your brand.\r\nI will greatly appreciate your support.\r\nFault manual, operation, etc.\r\n\r\nThank you\r\n\r\n* UW20-1A-JX-084299', '[]Hi, I\'m softys peru, I need information about your ultrasound CNC generators, I can\'t find anything on the net, we have a machine with 4 teams of your brand.\r\nI will greatly appreciate your support.\r\nFault manual, operation, etc.\r\n\r\nThank you\r\n\r\n* UW20-', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('615', '0', '0', '', '', '0', '1589333480', '1589333480', '1', 'Wulan', '', '+628113311847', 'Sri.wulandari@gudanggaramtbk.com', '', '', 'Hi sir \r\n\r\nWe are from Indonesia and trying to get a manual welder. \r\nWould you please send me an offer to sri.wulandari@gudanggaramtbk.com', '[]Hi sir \r\n\r\nWe are from Indonesia and trying to get a manual welder. \r\nWould you please send me an offer to sri.wulandari@gudanggaramtbk.com', '', '', 'Indonesia', '');
INSERT INTO `cosmo_message` VALUES ('616', '0', '0', '', '', '0', '1589437171', '1589437171', '1', 'Apeksha Bhardwaj', '', '510-862-9714', 'Apeksha@apple.com', '', '', 'Please contact me via email for further information regarding Apple’s  interest in USWs. ', '[]Please contact me via email for further information regarding Apple’s  interest in USWs. ', '', '', 'USA', '');
INSERT INTO `cosmo_message` VALUES ('617', '0', '0', '', '', '0', '1589489369', '1589489369', '1', 'LeonardHet', '', '88262834644', 'supernaturaltruthfromheaven@gmail.com', '', '', 'Global Pestilence, Financial Meltdown, Weather Disasters, Nations Prepping For War, Famine and more. Doesn’t that sound Tribulational? The Last Days are here, and since you bought the Rapture lie, you’re caught by surprise. \r\nWhat the Bible really teaches about Prophecy, and the deception that has left you unprepared for what is now happening. We have print and video on what is occurring, but we only want to hear from sincere Christians who are clustering underground. To hear more send your name, and postal mailing address, and we’ll mail you the location our underground websites. \r\nSupernaturaltruthfromheaven@gmail.com', '[]Global Pestilence, Financial Meltdown, Weather Disasters, Nations Prepping For War, Famine and more. Doesn’t that sound Tribulational? The Last Days are here, and since you bought the Rapture lie, you’re caught by surprise. \r\nWhat the Bible really teach', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('618', '0', '0', '', '', '0', '1589522710', '1589522710', '1', 'R.K.Agarwal', '', '9848497133', 'rkagarwal@suryavanshi.com', '', '', 'Need ultrasonic welding machine for carrying out welding on multilayer rolling machine, for N 95 masks.', '[]Need ultrasonic welding machine for carrying out welding on multilayer rolling machine, for N 95 masks.', '', '', 'India ', 'www.suryavanshi.com');
INSERT INTO `cosmo_message` VALUES ('619', '0', '0', '', '', '0', '1589526142', '1589526142', '1', 'Nicola Saraceno', '', '0039 338 9475999', 'nicola.saraceno@hotmail.it', '', '', 'to Human Resouces Department/Sales Manager\r\n\r\nDear Company Conprofe\r\n\r\nMy name is Nicola Saraceno from Milan, Italy  I am currently responsible for sales in Europe and Northern Italy / Canton Ticino and Malta on behalf of Herrmann Ultrasound for all the main OEMs in the packaging sector (Goglio,\r\nAltopack, TME, OPEM, Cavanna, PFM and others) as well as Key Account Manager for the Coesia Group (GD, Acma, IPA, RA Jones, Volpak ect). I also follow end users like Barilla and many others.\r\n\r\nFor reasons that I can explain, I will contact you, certainly based on the utmost discretion to possibly collaborate for the Euroepan market and Italy / Ticino / Malta market.\r\n\r\nHere are my private contact references for any communication\r\n\r\nDott. Nicola Saraceno\r\nvia Maria Montessori 11\r\n20094 Corsico (Milan)\r\nEmail: nicola.saraceno@hotmail.it\r\nTel. +39 338 9475999', '[]to Human Resouces Department/Sales Manager\r\n\r\nDear Company Conprofe\r\n\r\nMy name is Nicola Saraceno from Milan, Italy  I am currently responsible for sales in Europe and Northern Italy / Canton Ticino and Malta on behalf of Herrmann Ultrasound for all the', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('620', '0', '0', '', '', '0', '1589591216', '1589591216', '1', 'TommyCam', '', '88837831972', 'markandrew897@gmail.com', '', '', 'Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.', '[]Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('621', '0', '0', '', '', '0', '1589606519', '1589606519', '1', 'MikeInded', '', '84368587632', 'no-reply@hilkom-digital.de', '', '', 'hi there \r\nI have just checked conprofetech.cn for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '[]hi there \r\nI have just checked conprofetech.cn for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly report', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('622', '0', '0', '', '', '0', '1589636230', '1589636230', '1', 'Luis Jaramillo', '', '593984167061', 'ljaramillog@unipackecuador.com', '', '', 'Please quote and send details for the appropriate ultrasonic welding system for three layer flat facial  masks production.\r\nBest regards,\r\nLuis Alberto Jaramillo\r\nUNIPACK S.A.', '[]Please quote and send details for the appropriate ultrasonic welding system for three layer flat facial  masks production.\r\nBest regards,\r\nLuis Alberto Jaramillo\r\nUNIPACK S.A.', '', '', 'Ecuador', '');
INSERT INTO `cosmo_message` VALUES ('623', '0', '0', '', '', '0', '1589721315', '1589721315', '1', 'Sunilkumar Rathi', '', '+919979852680', 'sunilkumar_rathi@welspun.com', '', '', 'Dear sir,\r\nKindly send the offer for utrasonic generators and horn usedfor Surgical mask 3layer sealing\r\nEar loop sealing\r\nWe have automatic Surgical mask machine from  China', '[]Dear sir,\r\nKindly send the offer for utrasonic generators and horn usedfor Surgical mask 3layer sealing\r\nEar loop sealing\r\nWe have automatic Surgical mask machine from  China', '', '', 'India', 'Welspun.com');
INSERT INTO `cosmo_message` VALUES ('624', '0', '0', '', '', '0', '1589874818', '1589874818', '1', 'Deane Ecolin', '', '+971521053677', 'decolin@numexhealthcare.com', '', '', 'Dear Ken,\r\n\r\nGreetings!\r\n\r\nWe are interested with your ultrasound generator +head.\r\nCould you please let us know the best price and fastest delivery time?\r\n\r\n( these are the ultrasound welding generator + Head available in our mask making machine)\r\n•	UW-20-1A-JX (V 6.2)       Qty:1\r\n•	UW-20-1A-CF (V 6.2)       Qty:1\r\n', '[]Dear Ken,\r\n\r\nGreetings!\r\n\r\nWe are interested with your ultrasound generator +head.\r\nCould you please let us know the best price and fastest delivery time?\r\n\r\n( these are the ultrasound welding generator + Head available in our mask making machine)\r\n•	UW', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('625', '0', '0', '', '', '0', '1589912035', '1589912035', '1', 'Ryan Osentoski', '', '19892140630', 'rjosentoski@gmail.com', '', '', 'Running a mask ear welding machine. Was welding fine had a short large enough to shut down machine power supply. When reset cannot get a weld to occur. Showing no errors but power supply is on are there any voltage tests that can be done?', '[]Running a mask ear welding machine. Was welding fine had a short large enough to shut down machine power supply. When reset cannot get a weld to occur. Showing no errors but power supply is on are there any voltage tests that can be done?', '', '', 'United States', '');
INSERT INTO `cosmo_message` VALUES ('626', '0', '0', '', '', '0', '1590058017', '1590058017', '1', 'Kseniya', '', '+7 (926) 420 41 69', 'ks@yudix.ru', '', '', 'Dear Sirs, \r\n\r\nWe are interested in your system to weld the ear loop (4 points of welding). \r\nThe required capacity is 2600 W.\r\nCould you send us the quotation with the indication of HS code and weight of the unit?\r\n\r\nBest regards,\r\nSoboleva Kseniya\r\n', '[]Dear Sirs, \r\n\r\nWe are interested in your system to weld the ear loop (4 points of welding). \r\nThe required capacity is 2600 W.\r\nCould you send us the quotation with the indication of HS code and weight of the unit?\r\n\r\nBest regards,\r\nSoboleva Kseniya\r\n', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('627', '0', '0', '', '', '0', '1590074896', '1590074896', '1', 'Claudia Ortega', '', '+524491865604', 'clauortegavillarreal@hotmail.com', '', '', 'Good Morning to all, \r\n\r\nI´m Claudia from Grupo Melange Guntra Mexico, \r\ncan you please send me the PO for Ultrasonic Welding Machine? \r\n\r\nI´ll stay attentive \r\nbest regards\r\nclaudia ', '[]Good Morning to all, \r\n\r\nI´m Claudia from Grupo Melange Guntra Mexico, \r\ncan you please send me the PO for Ultrasonic Welding Machine? \r\n\r\nI´ll stay attentive \r\nbest regards\r\nclaudia ', '', '', '', 'www.grupomelange.com');
INSERT INTO `cosmo_message` VALUES ('628', '0', '0', '', '', '0', '1590084922', '1590084922', '1', 'Marcos Freitas', '', '+5519998640333', 'freitas.m.6@pg.com', '', '', 'Hi! I am from P&G Brazil and we have just purchased a mask line machine from Gester (China). Our machine came with the 3 Conprofe ultrassonics systems below. I would like to access some more information about this system. CAn you please share tech documetnation, operations manual, training material, tech drawing, stack details or anything else you have for this equipment?\r\nI also would like to get a quote for an spare system if possible.\r\n\r\nUW20-1A-CF 135780\r\nUW20-1A-JX 104337\r\nUW20-1A-JX 104349\r\n\r\nThanks a lot.\r\nMarcos', '[]Hi! I am from P&amp;G Brazil and we have just purchased a mask line machine from Gester (China). Our machine came with the 3 Conprofe ultrassonics systems below. I would like to access some more information about this system. CAn you please share tech d', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('629', '0', '0', '', '', '0', '1590099580', '1590099580', '1', 'DOMENICO MAIELLO', '', '+39 0818269364', 'info@biodiagram.com', '', '', 'Dear ,\r\nI purchased a mask production machine that uses your Ultrasonic Welding System that does not work.\r\nDo you have the possibility of selling spare parts, such as the transducer, sonotrade, head welding .... also in Europe?\r\nThanks\r\nMaiello Domenico', '[]Dear ,\r\nI purchased a mask production machine that uses your Ultrasonic Welding System that does not work.\r\nDo you have the possibility of selling spare parts, such as the transducer, sonotrade, head welding .... also in Europe?\r\nThanks\r\nMaiello Domenic', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('630', '0', '0', '', '', '0', '1590189328', '1590189328', '1', 'Carlos Diaz', '', '511998736384', 'cdiaz@marsar.net', '', '', 'Im Carlos Diaz , from Fabrica Marsar  , Lima Peru , please we are looking for HAND HELD UTRASINIC WELDING SYSTEM, we need this device for use for welding process of PP Fasbric with PP tapes  ( slings)\r\n\r\nPlease let me know about the options you will suggest to us , delivery time and best Price  please check atachment video .\r\nPlease let me know , do you have machinery for welding ear loops at cup masks and  metal nose bridge machinery\r\n\r\nIll be waiting for your news\r\n', '[]Im Carlos Diaz , from Fabrica Marsar  , Lima Peru , please we are looking for HAND HELD UTRASINIC WELDING SYSTEM, we need this device for use for welding process of PP Fasbric with PP tapes  ( slings)\r\n\r\nPlease let me know about the options you will sug', '', '', '', 'www.cintasenlazo.com');
INSERT INTO `cosmo_message` VALUES ('631', '0', '0', '', '', '0', '1590190025', '1590190025', '1', 'Carlos Diaz', '', '511998736384', 'cdiaz@marsar.net', '', '', 'Im Carlos Diaz , from Fabrica Marsar  , Lima Peru , please we are looking for HAND HELD UTRASINIC WELDING SYSTEM, we need this device for use for welding process of PP Fasbric with PP tapes  ( slings)\r\n\r\nPlease let me know about the options you will suggest to us , delivery time and best Price  please check atachment video .\r\nPlease let me know , do you have machinery for welding ear loops at cup masks and  metal nose bridge machinery\r\n\r\nIll be waiting for your news\r\n', '[]Im Carlos Diaz , from Fabrica Marsar  , Lima Peru , please we are looking for HAND HELD UTRASINIC WELDING SYSTEM, we need this device for use for welding process of PP Fasbric with PP tapes  ( slings)\r\n\r\nPlease let me know about the options you will sug', '', '', '', 'www.cintasenlazo.com');
INSERT INTO `cosmo_message` VALUES ('632', '0', '0', '', '', '0', '1590243348', '1590243348', '1', 'Edain Limon Diaz', '', '0452226930213', 'edain.limon@engineering.medlim.com.mx', '', '', 'good day\r\n\r\nI am looking for ultrasound equipment to integrate them into three-layer mouthpiece machines can you quote me please and send me a technical file.', '[]good day\r\n\r\nI am looking for ultrasound equipment to integrate them into three-layer mouthpiece machines can you quote me please and send me a technical file.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('633', '0', '0', '', '', '0', '1590268910', '1590268910', '1', 'Marizney Briceno', '', '4792626545', 'marizney_2231@hotmail.com', '', '', 'Estoy interesada en esta máquina soldadora', '[]Estoy interesada en esta máquina soldadora', '', '', 'Estados unidos', '');
INSERT INTO `cosmo_message` VALUES ('634', '0', '0', '', '', '0', '1590288537', '1590288537', '1', 'Ramachandran Vaidyanathan', '', '9840236534', 'vaidy70@gmail.com', '', '', 'Need all set of ultraonic unit a wity mould transducer and welding units for making Making N 95 automatic and semi automatic machines. \r\n\r\nVaidy ', '[]Need all set of ultraonic unit a wity mould transducer and welding units for making Making N 95 automatic and semi automatic machines. \r\n\r\nVaidy ', '', '', 'India ', 'www.arrowmachinetools.com');
INSERT INTO `cosmo_message` VALUES ('635', '0', '0', '', '', '0', '1590349165', '1590349165', '1', 'Tarek', '', '+965 966 619 77', 'Tarekmunir@yahoo.com', '', '', 'I need altra sound machine\r\nFor mask \r\nI need price\r\nSpcification \r\nAvlabilaty ', '[]I need altra sound machine\r\nFor mask \r\nI need price\r\nSpcification \r\nAvlabilaty ', '', '', 'Kuwait', 'tarekmunir@yahoo.com');
INSERT INTO `cosmo_message` VALUES ('636', '0', '0', '', '', '0', '1590349264', '1590349264', '1', 'Tarek', '', '+965 966 619 77', 'Tarekmunir@yahoo.com', '', '', 'I need ultrsonic\r\nFor mask \r\nI need price\r\nSpcification \r\nAvlabilaty ', '[]I need ultrsonic\r\nFor mask \r\nI need price\r\nSpcification \r\nAvlabilaty ', '', '', 'Kuwait', 'tarekmunir@yahoo.com');
INSERT INTO `cosmo_message` VALUES ('637', '0', '0', '', '', '0', '1590394576', '1590394576', '1', 'Aleksey Krylov', '', '8(967)713-73-13', 'krylov_av@zamavt.ru', '', '', 'Good day, our company has purchased equipment that includes a conprofe uw20-1A-JX-158902 ultrasonic welding device. Can you send to us manual?', '[]Good day, our company has purchased equipment that includes a conprofe uw20-1A-JX-158902 ultrasonic welding device. Can you send to us manual?', '', '', 'Russia', '');
INSERT INTO `cosmo_message` VALUES ('638', '0', '0', '', '', '0', '1590407639', '1590407639', '1', 'Mohanad', '', '+201013268762', 'mohanadjissry@gmail.com', '', '', 'i need ultrasonic unit  horne width 10-12cm \r\n heavy-duty\r\nplease reply me asap', '[]i need ultrasonic unit  horne width 10-12cm \r\n heavy-duty\r\nplease reply me asap', '', '', 'Egypt', 'non');
INSERT INTO `cosmo_message` VALUES ('639', '0', '0', '', '', '0', '1590438123', '1590438123', '1', 'Balamurali Jayaraman', '', '09840795910', 'jbm@mayuraenterprise.com', '', '', 'we are searchin the ultasonic for welding or bonding for the medica nonwoven fabric(PPEsuit)', '[]we are searchin the ultasonic for welding or bonding for the medica nonwoven fabric(PPEsuit)', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('640', '0', '0', '', '', '0', '1590503399', '1590503399', '1', 'Tarek', '', '+965 966 619 77', 'Tarekmunir@yahoo.com', '', '', 'I need ultrsonic welding mask\r\n3 leair flat mask', '[]I need ultrsonic welding mask\r\n3 leair flat mask', '', '', 'Kuwait', '');
INSERT INTO `cosmo_message` VALUES ('641', '0', '0', '', '', '0', '1590582254', '1590582254', '1', 'Tuğçe Saka', '', '00905349289585', 'tugceesaka@gmail.com', '', '', 'Dear Sir or Madam,\r\n\r\nWe kindly request you to share with us commercial price for 2 pieces 20 khz/2000W ultrasonic mask welding machine ultrasonic generator + transducer + horn.\r\n\r\nBest regards\r\nTuğçe Saka\r\n\r\n', '[]Dear Sir or Madam,\r\n\r\nWe kindly request you to share with us commercial price for 2 pieces 20 khz/2000W ultrasonic mask welding machine ultrasonic generator + transducer + horn.\r\n\r\nBest regards\r\nTuğçe Saka\r\n\r\n', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('642', '0', '0', '', '', '0', '1590602859', '1590602859', '1', 'Taras Novak', '', '+380913223492', 'tarasnovak@mail.ua', '', '', 'Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manual for setting it up, maintanance and so on. It is written Conprofe UW20-1A-CF-065093 on it.\r\nThank you in advance. Best regards from Ukraine, Taras Novak', '[]Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manu', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('643', '0', '0', '', '', '0', '1590602933', '1590602933', '1', 'Taras Novak', '', '+380913223492', 'tarasnovak@mail.ua', '', '', 'Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manual for setting it up, maintanance and so on. It is written Conprofe UW20-1A-CF-065093 on it.\r\nThank you in advance. Best regards from Ukraine, Taras Novak', '[]Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manu', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('644', '0', '0', '', '', '0', '1590603051', '1590603051', '1', 'Taras Novak', '', '+380913223492', 'tarasnovak@mail.ua', '', '', 'Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manual for setting it up, maintanance and so on. It is written Conprofe UW20-1A-CF-065093 on it.\r\nThank you in advance. Best regards from Ukraine, Taras Novak', '[]Hello. My name is Taras Novak and I am ukrainian engeneer. On our plant have recently installed mashines for making masks. They include ultrasonic modules produced by your firm. It is malfunction very often. I would like to ask you to send me a pdf manu', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('645', '0', '0', '', '', '0', '1590622884', '1590622884', '1', 'Jatin Haria', '', '442082360960', 'Jatin@healthcaredirect.co.uk', '', '', 'Looking for a machine to weld headbands NOT earloops on N95 face masks', '[]Looking for a machine to weld headbands NOT earloops on N95 face masks', '', '', 'UK', '');
INSERT INTO `cosmo_message` VALUES ('646', '0', '0', '', '', '0', '1590625364', '1590625364', '1', 'Wesley Scott', '', '519-745-1002', 'wscott@rescumask.com', '', '', 'I have purchased a machine for making masks with 3 of your welders.  I am located in Canada and our power is 60hz.  Will your welders operate reliably on 60hz?', '[]I have purchased a machine for making masks with 3 of your welders.  I am located in Canada and our power is 60hz.  Will your welders operate reliably on 60hz?', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('647', '0', '0', '', '', '0', '1590632334', '1590632334', '1', 'Steve French', '', '87529315411', 's.french@drivetheleads.com', '', '', 'Impressive site. No doubt your clients appreciate your services and the time invested in your digital presence. I did however notice your business does not have a very strong LinkedIn presence. \r\n \r\nAs you know, LinkedIn is the number one business social network and the best tool for networking and business growth. \r\n \r\nMy company Drivetheleads.com uses LinkedIn networking exclusively for growth hacking on behalf of clients. The targeting is simply amazing. \r\n \r\nCan we schedule a quick demo or I can shoot you over an explainer video that reviews how my team can easily help expand your client base in a super affordable way? \r\n \r\nThanks. \r\nSteve French \r\ns.french@drivetheleads.com \r\nhttp://www.drivetheleads.com', '[]Impressive site. No doubt your clients appreciate your services and the time invested in your digital presence. I did however notice your business does not have a very strong LinkedIn presence. \r\n \r\nAs you know, LinkedIn is the number one business socia', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('648', '0', '0', '', '', '0', '1590650264', '1590650264', '1', 'CharlesFlesy', '', '82635422392', 'lawtonads2020@gmail.com', '', '', 'Good day, do you have a viable project that requires funding? Due to Covid-19, we offer loans at 1% interest. For more details, send message to info@simpleloanslimited.co.uk', '[]Good day, do you have a viable project that requires funding? Due to Covid-19, we offer loans at 1% interest. For more details, send message to info@simpleloanslimited.co.uk', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('649', '0', '0', '', '', '0', '1590670600', '1590670600', '1', 'Prince Taylor', '', '83419288281', 'prance.gold.arbitrage@gmail.com', '', '', 'Hi! \r\nI\'m Prince Taylor. \r\n \r\nI contacted you with an invitation for investment program witch you will definitely win. \r\n \r\nThe winning project I\'m here to invite you is called \"Prance Gold Arbitrage (PGA)\". \r\n \r\nPGA is a proprietary system that creates profits between cryptocurrency exchanges through an automated trading program. \r\n \r\nThe absolute winning mechanism \"PGA\" gave everyone the opportunity to invest in there systems for a limited time. \r\n \r\nYou have chance to join from only $ 1000 and your assets grow with automated transactions every day! \r\n \r\nInvestors who participated in this program are doubling their assets in just a few months. \r\nBelieve or not is your choice. \r\nBut don\'t miss it, because it\'s your last chance. \r\nSign up for free now! \r\n \r\nRegister Invitation code \r\nhttps://portal.prancegoldholdings.com/signup?ref=prince \r\n \r\nAbout us \r\nhttps://www.dropbox.com/s/0h2sjrmk7brhzce/PGA_EN_cmp.pdf?dl=0 \r\n \r\nPGA Plans \r\nhttps://www.dropbox.com/s/lmwgolvjdde3g8n/plans_en_cmp.pdf?dl=0 \r\n \r\nMovie \r\nhttps://www.youtube.com/watch?v=9054gGRtjX8', '[]Hi! \r\nI\'m Prince Taylor. \r\n \r\nI contacted you with an invitation for investment program witch you will definitely win. \r\n \r\nThe winning project I\'m here to invite you is called &quot;Prance Gold Arbitrage (PGA)&quot;. \r\n \r\nPGA is a proprietary system th', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('650', '0', '0', '', '', '0', '1590674041', '1590674041', '1', 'Paulo chrtine', '', '4986988661', 'Cristhinepaul@outlook.de', '', '', 'Hello can you help about this is product', '[]Hello can you help about this is product', '', '', 'Germany', 'Facebook');
INSERT INTO `cosmo_message` VALUES ('651', '0', '0', '', '', '0', '1590703495', '1590703495', '1', 'Peter Corden', '', '82476341387', 'no-reply@monkeydigital.co', '', '', 'Hi There \r\nafter reviewing your conprofetech.cn website, we recommend our new 1 month SEO max Plan, as the best solution to rank efficiently, which will guarantee a positive SEO trend in just 1 month of work. One time payment, no subscriptions. \r\n \r\nMore details about our plan here: \r\nhttps://www.monkeydigital.co/product/seo-max-package/ \r\n \r\nthank you \r\nMonkey Digital \r\nsupport@monkeydigital.co', '[]Hi There \r\nafter reviewing your conprofetech.cn website, we recommend our new 1 month SEO max Plan, as the best solution to rank efficiently, which will guarantee a positive SEO trend in just 1 month of work. One time payment, no subscriptions. \r\n \r\nMor', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('652', '0', '0', '', '', '0', '1590728741', '1590728741', '1', 'RENAUD LEGER', '', '003223956790', 'renaud@labo4.be', '', '', 'Dear Sir or Madam,\r\n\r\nCan you give me more info about your material.\r\n\r\nWe are modifying a mask machine and we need to use ultrasound welding. Can you help us in this project?\r\n\r\nRegards,\r\nRenaud LEGER', '[]Dear Sir or Madam,\r\n\r\nCan you give me more info about your material.\r\n\r\nWe are modifying a mask machine and we need to use ultrasound welding. Can you help us in this project?\r\n\r\nRegards,\r\nRenaud LEGER', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('653', '0', '0', '', '', '0', '1590728816', '1590728816', '1', 'RENAUD LEGER', '', '003223956790', 'renaud@labo4.be', '', '', 'Dear Sir or Madam,\r\n\r\nCan you give me more info about your material.\r\n\r\nWe are modifying a mask machine and we need to use ultrasound welding. Can you help us in this project?\r\n\r\nRegards,\r\nRenaud LEGER', '[]Dear Sir or Madam,\r\n\r\nCan you give me more info about your material.\r\n\r\nWe are modifying a mask machine and we need to use ultrasound welding. Can you help us in this project?\r\n\r\nRegards,\r\nRenaud LEGER', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('654', '0', '0', '', '', '0', '1590734152', '1590734152', '1', 'Davide', '', '+39 333 9182813', 'info@smartcolor.it', '', '', 'We have 5 of your solution in Italy for soldering chirurgical mask, please can you support to configure.\r\n\r\nThanks', '[]We have 5 of your solution in Italy for soldering chirurgical mask, please can you support to configure.\r\n\r\nThanks', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('655', '0', '0', '', '', '0', '1590735256', '1590735256', '1', 'Davide', '', '+39 333 9182813', 'info@smartcolor.it', '', '', 'We have 5 of your solution in Italy for soldering chirurgical mask, please can you support to configure.\r\n\r\nThanks', '[]We have 5 of your solution in Italy for soldering chirurgical mask, please can you support to configure.\r\n\r\nThanks', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('656', '0', '0', '', '', '0', '1590736164', '1590736164', '1', 'abdul majeed', '', '00917012776582', 'info@traiac.in', '', '', 'Hi. i need 20k ultrasonic generator for non woven surgical mask machine. \r\nquantity:  4 nos\r\nsend me the best quote \r\nregards. \r\n', '[]Hi. i need 20k ultrasonic generator for non woven surgical mask machine. \r\nquantity:  4 nos\r\nsend me the best quote \r\nregards. \r\n', '', '', '', 'www.traiac.in');
INSERT INTO `cosmo_message` VALUES ('657', '0', '0', '', '', '0', '1590744601', '1590744601', '1', 'Ceyhun Kırtaş', '', '05424208776', 'ceyhunkirtas@gmail.com', '', '', 'Hi,I am writing from Turkey.The ultrasonic machine which we have bought from you,isn’t working.The machine asks for password,what is it’s password or how can I reset it?\r\n   Also  Can you send a mail which include user guide and a instruction that explains the things to do when it became broken?\r\nThanks.\r\nYours sincerely  \r\n\r\n', '[]Hi,I am writing from Turkey.The ultrasonic machine which we have bought from you,isn’t working.The machine asks for password,what is it’s password or how can I reset it?\r\n   Also  Can you send a mail which include user guide and a instruction that expla', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('658', '0', '0', '', '', '0', '1590749070', '1590749070', '1', 'Pavel Navoshchik', '', '+79817574565', 'screpy@yandex.ru', '', '', 'Good afternoon!\r\nCan I get a user guide for an automatic ultrasound generator?', '[]Good afternoon!\r\nCan I get a user guide for an automatic ultrasound generator?', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('659', '0', '0', '', '', '0', '1590755062', '1590755062', '1', 'Firat Acar', '', '+905322921908', 'firatcanacar@gmail.com', '', '', 'Hi,\r\n\r\nMy name is Firat from Turkey. We are machinery manufacturer. \r\n\r\nWe need ultrasonic welding generators/sets(2000w) for mask making machines. \r\n\r\nCould you please send me fob or cif(Istanbul/Turkey) prices fot 3 sets (if available for your mmq). \r\n\r\nBest Regards\r\nFirat\r\n+905322921908 (Whatsapp)', '[]Hi,\r\n\r\nMy name is Firat from Turkey. We are machinery manufacturer. \r\n\r\nWe need ultrasonic welding generators/sets(2000w) for mask making machines. \r\n\r\nCould you please send me fob or cif(Istanbul/Turkey) prices fot 3 sets (if available for your mmq). \r', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('660', '0', '0', '', '', '0', '1590817470', '1590817470', '1', 'Ramesh', '', '+919841873419', 'rm@dkgroups.com', '', '', 'Hi,\r\n\r\nI need FOB price and delivery timeline for the below\r\n\r\n15khz 2600W - 10pcs\r\n20khz 2000W - 10pcs\r\n\r\nRequirement - Immediate\r\n\r\n', '[]Hi,\r\n\r\nI need FOB price and delivery timeline for the below\r\n\r\n15khz 2600W - 10pcs\r\n20khz 2000W - 10pcs\r\n\r\nRequirement - Immediate\r\n\r\n', '', '', '', 'https://dkgroups.com/');
INSERT INTO `cosmo_message` VALUES ('661', '0', '0', '', '', '0', '1590978956', '1590978956', '1', 'Rawat ', '', '+66905921541', 'rawatweerakasem@gmail.com', '', '', 'I need information about the machine( High Quality Conprofe 20K Ultrasonic)', '[]I need information about the machine( High Quality Conprofe 20K Ultrasonic)', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('662', '0', '0', '', '', '0', '1590981002', '1590981002', '1', 'Prapas Sukpanpotaram', '', '+66882591409', 'prapasmail@gmail.com', '', '', 'We need to know about lift time of the machine . How  long it need to be  serviced of replancement parts ? and the cost of service parts. \r\nWith Best Regards\r\nPrapas', '[]We need to know about lift time of the machine . How  long it need to be  serviced of replancement parts ? and the cost of service parts. \r\nWith Best Regards\r\nPrapas', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('663', '0', '0', '', '', '0', '1591032982', '1591032982', '1', 'cabir kaldirim', '', '(549) 294 97 64', 'mustafa61ocak55@hotmail.com', '', '', 'ULTRASONİK KAYNAK MAKİNESİ ', '[]ULTRASONİK KAYNAK MAKİNESİ ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('664', '0', '0', '', '', '0', '1591033098', '1591033098', '1', 'cabir kaldirim', '', '(549) 294 97 64', 'mustafa61ocak55@hotmail.com', '', '', 'ULTRASONİK KAYNAK MAKİNESİ ', '[]ULTRASONİK KAYNAK MAKİNESİ ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('665', '0', '0', '', '', '0', '1591036837', '1591036837', '1', 'RONALD WAMBEDE', '', '+256788235134', 'rwambe@gmail.com', '', '', '', '[]', '', '', 'Uganda', '');
INSERT INTO `cosmo_message` VALUES ('666', '0', '0', '', '', '0', '1591151754', '1591151754', '1', 'ParkSungWoo', '', '010-9035-7015', 'swpark@trump-vina.com', '', '', 'Good morning\r\nI am using your UltraSonic product.\r\nI have a question.\r\n\r\nI want to increase the ultrasonic power\r\nWhat is the default password?\r\n\r\nModel: UW20-1A-CF-083260 (2020-04-10 V6.6)\r\n\r\nThanks.', '[]Good morning\r\nI am using your UltraSonic product.\r\nI have a question.\r\n\r\nI want to increase the ultrasonic power\r\nWhat is the default password?\r\n\r\nModel: UW20-1A-CF-083260 (2020-04-10 V6.6)\r\n\r\nThanks.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('667', '0', '0', '', '', '0', '1591188106', '1591188106', '1', 'caliniuc LIVIU', '', '0744542353', 'liviu.caliniuc@gmail.com', '', '', 'Please send me manual for ultrasonic  UW20-1A-JX- 053823', '[]Please send me manual for ultrasonic  UW20-1A-JX- 053823', '', '', 'România', '');
INSERT INTO `cosmo_message` VALUES ('668', '0', '0', '', '', '0', '1591194904', '1591194904', '1', 'Tom Montgomery', '', '+1-603-205-3393', 't.montgomery@rsarobot.it', '', '', 'Dear Sir or Madam,\r\n\r\nCongratulations on your company\'s many years of success. \r\n\r\nDoes your company have a repair/maintenance operation in the USA to service your Sonic welders?\r\n\r\nPlease advise.\r\n\r\nI look forward to your reply.\r\n\r\nTom Montgomery', '[ 美国]Dear Sir or Madam,\r\n\r\nCongratulations on your company\'s many years of success. \r\n\r\nDoes your company have a repair/maintenance operation in the USA to service your Sonic welders?\r\n\r\nPlease advise.\r\n\r\nI look forward to your reply.\r\n\r\nTom Montgomery', '', '', '', 'www.rsarobot.it/en');
INSERT INTO `cosmo_message` VALUES ('669', '0', '0', '', '', '0', '1591471284', '1591471284', '1', 'Shahed sikder', '', '+966531374434', 'shahedsikder6767@Gmail.com', '', '', '', '[ 美国]', '', '', 'Bangladesh ', 'Shahedsikder34@Gmail.com');
INSERT INTO `cosmo_message` VALUES ('670', '0', '0', '', '', '0', '1591482517', '1591482517', '1', 'Kemal', '', '05469576986 ', 'fiberlaser3@gmail.com ', '', '', 'Ürünüm arızalandı ön panel kartı arızalandı lütfen ama lütfen bana yardımcı olun', '[]Ürünüm arızalandı ön panel kartı arızalandı lütfen ama lütfen bana yardımcı olun', '', '', 'Turkey ', '');
INSERT INTO `cosmo_message` VALUES ('671', '0', '0', '', '', '0', '1591520171', '1591520171', '1', 'BORIS EFFRONT', '', '+41793730800', 'effronb@gmail.com', '', '', 'Sir, \r\nI have medical mask machine from Skilt with your components. \r\nWhy are they using  2 different welding components , \"20K UW20-1A-CF\" and \"20K UW20-1A-JX\" ? \r\nWhat is the difference between the 2 components? Are they reliable?\r\nWhich parts should be part of maintenance plan? \r\nThanks\r\n', '[]Sir, \r\nI have medical mask machine from Skilt with your components. \r\nWhy are they using  2 different welding components , &quot;20K UW20-1A-CF&quot; and &quot;20K UW20-1A-JX&quot; ? \r\nWhat is the difference between the 2 components? Are they reliable?\r', '', '', 'Switzerland', '');
INSERT INTO `cosmo_message` VALUES ('672', '0', '0', '', '', '0', '1591531799', '1591531799', '1', 'Mike', '', '0041919357050', 'sanclemente@sanclemente.ch', '', '', 'I would like to ask you for an ultrasonic welder for a face mask machine: transducer and generator.\r\n\r\nCould you send me an offer plus Express shipping costs?\r\n\r\nThank you!\r\n\r\nBest regards,\r\n\r\nMike Moghini\r\nTamaro Drinks SA', '[]I would like to ask you for an ultrasonic welder for a face mask machine: transducer and generator.\r\n\r\nCould you send me an offer plus Express shipping costs?\r\n\r\nThank you!\r\n\r\nBest regards,\r\n\r\nMike Moghini\r\nTamaro Drinks SA', '', '', 'Switzerland', '');
INSERT INTO `cosmo_message` VALUES ('673', '0', '0', '', '', '0', '1591532231', '1591532231', '1', 'Mike Moghini', '', '0041919357050', 'sanclemente@sanclemente.ch', '', '', 'I would like to ask you for an offer in relation to an ultrasonic welder for 3 ply face mask. Could send me an offer plus Express shipping cost?\r\n\r\nThank you!\r\n\r\nBest regards,\r\n\r\nMike Moghini\r\nTamaro Drinks SA', '[]I would like to ask you for an offer in relation to an ultrasonic welder for 3 ply face mask. Could send me an offer plus Express shipping cost?\r\n\r\nThank you!\r\n\r\nBest regards,\r\n\r\nMike Moghini\r\nTamaro Drinks SA', '', '', 'Switzerland', '');
INSERT INTO `cosmo_message` VALUES ('674', '0', '0', '', '', '0', '1591542086', '1591542086', '1', 'Carlos Alberto Botina', '', '57 3006234595', 'gerenciacabal2@gmail.com', '', '', 'Me interesa comprar equipo de soldadura ultrasonica para instalar en maquina para hacer tapabocas y para pegar los cauchos.\r\nPor favor informenos los precios.\r\n\r\nGracias\r\n\r\n\r\n', '[ 哥伦比亚]Me interesa comprar equipo de soldadura ultrasonica para instalar en maquina para hacer tapabocas y para pegar los cauchos.\r\nPor favor informenos los precios.\r\n\r\nGracias\r\n\r\n\r\n', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('675', '0', '0', '', '', '0', '1591587766', '1591587766', '1', 'Rathnayaka', '', '0718356956', 'sudathrathnayaka771@gmail.com', '', '', '', '[ 德国]', '', '', 'sri lanka', '');
INSERT INTO `cosmo_message` VALUES ('676', '0', '0', '', '', '0', '1591587798', '1591587798', '1', 'Rathnayaka', '', '0718356956', 'sudathrathnayaka771@gmail.com', '', '', '', '[]', '', '', 'sri lanka', '');
INSERT INTO `cosmo_message` VALUES ('677', '0', '0', '', '', '0', '1591604028', '1591604028', '1', 'Gabriel Ionescu', '', '+40727323812', 'u4gabriel@gmail.com', '', '', 'Hello,\r\nI have a broken ultrasonic source and I need to know if you can provide the software in order to connect via RS232 with the source.\r\nThe ID of source is UW20-1A-JX-114555\r\nThank you,\r\nGabriel ', '[ 罗马尼亚]Hello,\r\nI have a broken ultrasonic source and I need to know if you can provide the software in order to connect via RS232 with the source.\r\nThe ID of source is UW20-1A-JX-114555\r\nThank you,\r\nGabriel ', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('678', '0', '0', '', '', '0', '1591650453', '1591650453', '1', 'Salvador Gomez', '', '81 12868997', 'salvador.gomez@thortextiles.com', '', '', 'We hace an ultrasónico system welding UW20-1A-JX...and UW20-1A+CF.\r\n\r\nWe are experienced dime problema yo adjust ir Jeep working...Aldo we nerd ti check and repair modules and ultrasónic Converter.\r\n\r\nDo You have any repair ir sale Office here in México..??\r\n\r\nI Will waiting for tour news.\r\nThanks un avance.\r\nBest Regards', '[]We hace an ultrasónico system welding UW20-1A-JX...and UW20-1A+CF.\r\n\r\nWe are experienced dime problema yo adjust ir Jeep working...Aldo we nerd ti check and repair modules and ultrasónic Converter.\r\n\r\nDo You have any repair ir sale Office here in México', '', '', 'Mexico', '');
INSERT INTO `cosmo_message` VALUES ('679', '0', '0', '', '', '0', '1591650534', '1591650534', '1', 'Salvador Gomez', '', '81 12868997', 'salvador.gomez@thortextiles.com', '', '', 'We hace an ultrasónico system welding UW20-1A-JX...and UW20-1A+CF.\r\n\r\nWe are experienced dime problema yo adjust ir Jeep working...Aldo we nerd ti check and repair modules and ultrasónic Converter.\r\n\r\nDo You have any repair ir sale Office here in México..??\r\n\r\nI Will waiting for tour news.\r\nThanks un avance.\r\nBest Regards', '[]We hace an ultrasónico system welding UW20-1A-JX...and UW20-1A+CF.\r\n\r\nWe are experienced dime problema yo adjust ir Jeep working...Aldo we nerd ti check and repair modules and ultrasónic Converter.\r\n\r\nDo You have any repair ir sale Office here in México', '', '', 'Mexico', '');
INSERT INTO `cosmo_message` VALUES ('680', '0', '0', '', '', '0', '1591705285', '1591705285', '1', 'Николай', '', '+79286562607', 'nikolay-yazovskikh@yandex.ru', '', '', 'CONPROFE UW20-1A-CF не включается. Пришлите инструкцию на английском языке.', '[ 俄罗斯]CONPROFE UW20-1A-CF не включается. Пришлите инструкцию на английском языке.', '', '', '', 'no');
INSERT INTO `cosmo_message` VALUES ('681', '0', '0', '', '', '0', '1591714310', '1591714310', '1', 'Carlos Alberto Botina', '', '3006234595', 'gerenciacabal2@gmail.com', '', '', 'Cordial greeting\r\nI need to buy\r\n1  ultrasound machine   20 khz 2000w\r\n 4  ultrasound machines 15khz 2400W , \r\nto be used in mouth cap machines,\r\nplease quote me since I am in Colombia, I am in Cali.', '[ 哥伦比亚]Cordial greeting\r\nI need to buy\r\n1  ultrasound machine   20 khz 2000w\r\n 4  ultrasound machines 15khz 2400W , \r\nto be used in mouth cap machines,\r\nplease quote me since I am in Colombia, I am in Cali.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('682', '0', '0', '', '', '0', '1591730377', '1591730377', '1', 'Komalinisk', '', '85476826539', 'no-replylef@gmail.com', '', '', 'Greetings, I was just visiting your site and wondering about \r\nthe payment method currently offered by you to your customers? \r\n \r\n \r\nI work for Amald.Com and we can serve your business by offering credit card and various local payment methods (eNets, Net Banking, Alipay, CUP, SEPA, SOFORT..etc) to accept online payments. \r\n \r\n \r\nOur pricing start with 1.5% for Local Payments and 2.5% for \r\ncredit card payments. \r\n \r\nJoin free consultancy  on info@amald.com for all your Payment Industry related queries. \r\n \r\nRegards, \r\nKomal', '[ 意大利]Greetings, I was just visiting your site and wondering about \r\nthe payment method currently offered by you to your customers? \r\n \r\n \r\nI work for Amald.Com and we can serve your business by offering credit card and various local payment methods (eNet', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('683', '0', '0', '', '', '0', '1591795493', '1591795493', '1', 'Eric Jones', '', '416-385-3200', 'eric@talkwithwebvisitor.com', '', '', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - conprofetech.cn - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across conprofetech.cn, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=conprofetech.cn\r\n', '[ 北美地区]Cool website!\r\n\r\nMy name’s Eric, and I just found your site - conprofetech.cn - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me a', '', '', '', 'www.talkwithwebvisitor.com');
INSERT INTO `cosmo_message` VALUES ('686', '0', '0', '', '', '0', '1591896023', '1591896023', '1', 'Aurelian Moraru', '', '+40722244283', 'amoraru@promar.ro', '', '', 'Hi, I need your technical assistance for make the adjustments for an ultrasonic welding system for an automatic mask making machine coming from your company. \r\nPlease contact me.\r\nThank you,\r\nAurelian', '[ 罗马尼亚]Hi, I need your technical assistance for make the adjustments for an ultrasonic welding system for an automatic mask making machine coming from your company. \r\nPlease contact me.\r\nThank you,\r\nAurelian', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('687', '0', '0', '', '', '0', '1591925867', '1591925867', '1', 'Gaspar', '', '+541140693256', 'gagarcia@softys.com', '', '', 'Hello we have a ultrasonic equipment uw20 20khz 2000w,\r\nit has a problem, the frequency rise to 20100 or more and it loose its function.\r\nHow can I access to the configuration (i need password) or some help to solve this problem...', '[ 阿根廷]Hello we have a ultrasonic equipment uw20 20khz 2000w,\r\nit has a problem, the frequency rise to 20100 or more and it loose its function.\r\nHow can I access to the configuration (i need password) or some help to solve this problem...', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('688', '0', '0', '', '', '0', '1591938190', '1591938190', '1', 'Raffaele Leggiero', '', '+393939951967', 'raffaele.leggiero@ditechsrl.com', '', '', 'Hi, I have your generator purchased in China.\r\nplease send technical manual and information.\r\nwe are interested in making mask machines.\r\nThank you. Raffaele Leggiero', '[ 意大利]Hi, I have your generator purchased in China.\r\nplease send technical manual and information.\r\nwe are interested in making mask machines.\r\nThank you. Raffaele Leggiero', '', '', '', 'www.ditechsrl.com');
INSERT INTO `cosmo_message` VALUES ('689', '0', '0', '', '', '0', '1591979248', '1591979248', '1', 'VIcto', '', '526646277326', 'fbc6646985083@gmail.com', '', '', 'Hello\r\n\r\nCould you send a quotation of a Ultrasonic Welding UW20-1A-CF?\r\n\r\nFOB  San Diego CA USA 92173\r\n\r\nCan work at 220V @ 60 Hz?\r\n\r\nThank you', '[ 墨西哥]Hello\r\n\r\nCould you send a quotation of a Ultrasonic Welding UW20-1A-CF?\r\n\r\nFOB  San Diego CA USA 92173\r\n\r\nCan work at 220V @ 60 Hz?\r\n\r\nThank you', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('690', '0', '0', '', '', '0', '1591991066', '1591991066', '1', 'Leon', '', '3116302306', 'lemar1955@hotmail.com', '', '', 'Price and more information,please try the mail.', '[ 哥伦比亚]Price and more information,please try the mail.', '', '', 'Colombia', '');
INSERT INTO `cosmo_message` VALUES ('691', '0', '0', '', '', '0', '1592025520', '1592025520', '1', 'Eric Jones', '', '416-385-3200', 'eric@talkwithwebvisitor.com', '', '', 'My name’s Eric and I just found your site conprofetech.cn.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=conprofetech.cn\r\n', '[ 美国加州]My name’s Eric and I just found your site conprofetech.cn.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nTalk With ', '', '', '', 'www.talkwithwebvisitor.com');
INSERT INTO `cosmo_message` VALUES ('692', '0', '0', '', '', '0', '1592031966', '1592031966', '1', 'Aneta Arthur', '', '81867956568', 'arthur@choose2help.org', '', '', 'Hello, \r\n \r\nMy son born January 5th 2020 requires a serious head surgery due to the fusion of the cranial suture (craniosynostosis). I cannot afford to pay for the series of costly medical expenses. We only have 6 weeks to get everything organized before he undergoes the surgery. I have no other option but to ask you to help me help my son. We are gathering the funds through a verified charity: \r\n \r\nhttps://choose2help.org/arthur.html \r\n \r\n \r\nThank you for your support. Aneta.', '[]Hello, \r\n \r\nMy son born January 5th 2020 requires a serious head surgery due to the fusion of the cranial suture (craniosynostosis). I cannot afford to pay for the series of costly medical expenses. We only have 6 weeks to get everything organized befor', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('693', '0', '0', '', '', '0', '1592068638', '1592068638', '1', 'Md. Jahangir Kabir', '', '01916801680', 'impresslabel@yahoo.com ', '', '', '3 Ply Surgical Mask full Auto Machine , How much price, and send Production Capacity details.', '[ 孟加拉]3 Ply Surgical Mask full Auto Machine , How much price, and send Production Capacity details.', '', '', 'Bangladesh', '');
INSERT INTO `cosmo_message` VALUES ('694', '0', '0', '', '', '0', '1592068956', '1592068956', '1', 'Md. Jahangir Kabir', '', '01916801680', 'impresslabel@yahoo.com ', '', '', '3 Ply Surgical Mask full Auto Machine , How much price, and send Production Capacity details.', '[ 孟加拉]3 Ply Surgical Mask full Auto Machine , How much price, and send Production Capacity details.', '', '', 'Bangladesh', '');
INSERT INTO `cosmo_message` VALUES ('695', '0', '0', '', '', '0', '1592189209', '1592189209', '1', 'Elias Douek', '', '5512470974', 'elias@grupoqualtus.mx', '', '', 'Hello, we are looking for options to upgrade the 6 ultrasonic sets in our 3 ply  face mask machines\r\n\r\nPlease provide pricing and availability or lead time\r\n\r\nThank you very much ', '[]Hello, we are looking for options to upgrade the 6 ultrasonic sets in our 3 ply  face mask machines\r\n\r\nPlease provide pricing and availability or lead time\r\n\r\nThank you very much ', '', '', 'México', 'cubre-bocas.mx ');
INSERT INTO `cosmo_message` VALUES ('696', '0', '0', '', '', '0', '1592324947', '1592324947', '1', 'Eric Jones', '', '416-385-3200', 'eric@talkwithwebvisitor.com', '', '', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at conprofetech.cn.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=conprofetech.cn\r\n', '[ 美国]Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at conprofetech.cn.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out ', '', '', '', 'www.talkwithwebvisitor.com');
INSERT INTO `cosmo_message` VALUES ('697', '0', '0', '', '', '0', '1592334040', '1592334040', '1', 'BERAT BANICAR', '', '+905322898951', 'berat.banicar@bonysocks.com', '', '', 'hello,\r\n\r\nits berat from turkey. i would like to buy ultrasonic from you, can i have details for your ultrasonic with certificates?\r\n\r\nwechat: beratbanicar (+90 532 289 8951)\r\n\r\nb.r,\r\n\r\nberat', '[ 土耳其]hello,\r\n\r\nits berat from turkey. i would like to buy ultrasonic from you, can i have details for your ultrasonic with certificates?\r\n\r\nwechat: beratbanicar (+90 532 289 8951)\r\n\r\nb.r,\r\n\r\nberat', '', '', '', 'WECHAT beratbanicar');
INSERT INTO `cosmo_message` VALUES ('698', '0', '0', '', '', '0', '1592349960', '1592349960', '1', 'Alejandro Garcia', '', '0445560950741', 'alejandro-garcia-mendoza@hotmail.com', '', '', 'I want to quote ultrasound equipment \r\nModel: UW20-1A-CF/UW20-1A-JX , Model: UW20-1A-CFF/UW20-1A-JXF and Model: UW28-1D-JXS', '[ 墨西哥]I want to quote ultrasound equipment \r\nModel: UW20-1A-CF/UW20-1A-JX , Model: UW20-1A-CFF/UW20-1A-JXF and Model: UW28-1D-JXS', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('699', '0', '0', '', '', '0', '1592369715', '1592369715', '1', 'Nandasiri', '', '+94775403309', 'nandasirigunasekara@yahoo.com', '', '', 'Please send us English operating manual for this ultrasonic machine.Thanks', '[]Please send us English operating manual for this ultrasonic machine.Thanks', '', '', 'sri lanka', '');
INSERT INTO `cosmo_message` VALUES ('700', '0', '0', '', '', '0', '1592380628', '1592380628', '1', 'Pernaton Philippe ', '', '0033610035976', 'G2mdirection@orange.fr', '', '', 'Good morning \r\nWe have product conprofe for welding mask machine in france .\r\nHave problems on model UW20 1A JX 163225 , can you help us quickly please ?\r\nPhilippe PERNATON ', '[]Good morning \r\nWe have product conprofe for welding mask machine in france .\r\nHave problems on model UW20 1A JX 163225 , can you help us quickly please ?\r\nPhilippe PERNATON ', '', '', 'France', '');
INSERT INTO `cosmo_message` VALUES ('701', '0', '0', '', '', '0', '1592402563', '1592402563', '1', 'Danilo', '', '+393358119641', 'danilo.ferrari@chimeraoro.it', '', '', 'We have a machine with 5 UW20-1A-CF/UW20-1A-JX, but we don\'t have any instruction manual for that. The machine supplier has not sent them with the machine. Could You send us the manual in english please?\r\n\r\nBest regards\r\n\r\nDanilo Ferrari\r\nChimera Oro Srl', '[ 意大利]We have a machine with 5 UW20-1A-CF/UW20-1A-JX, but we don\'t have any instruction manual for that. The machine supplier has not sent them with the machine. Could You send us the manual in english please?\r\n\r\nBest regards\r\n\r\nDanilo Ferrari\r\nChimera Or', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('702', '0', '0', '', '', '0', '1592437254', '1592437254', '1', 'Aleksander Fernando Paes', '', '5511972054642', 'aleksander.paes@saint-gobain.com', '', '', 'please, would you like to know if there is any representative in Brazil?  no need for replacement or maintenance', '[]please, would you like to know if there is any representative in Brazil?  no need for replacement or maintenance', '', '', 'Brazil ', '');
INSERT INTO `cosmo_message` VALUES ('703', '0', '0', '', '', '0', '1592463451', '1592463451', '1', 'Eric Kwan ', '', '852-91028229', 'forecaremed@gmail.com', '', '', 'Dear Sirs,\r\nI would like to receive some information about the ultrasonic welding system from you.  As we have four machine in Hong Kong producing flat type face masks. \r\n\r\nWith regards\r\nEric Kwan\r\n  \r\n', '[]Dear Sirs,\r\nI would like to receive some information about the ultrasonic welding system from you.  As we have four machine in Hong Kong producing flat type face masks. \r\n\r\nWith regards\r\nEric Kwan\r\n  \r\n', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('704', '0', '0', '', '', '0', '1592464308', '1592464308', '1', 'Parag', '', '8826804063', 'paragkumarsharma10@gmail.com', '', '', 'Need technical support, we are buying many mask making machines.\r\nWe supply these machines in India.', '[]Need technical support, we are buying many mask making machines.\r\nWe supply these machines in India.', '', '', 'India', 'www.angelindiaimpex.com');
INSERT INTO `cosmo_message` VALUES ('705', '0', '0', '', '', '0', '1592498023', '1592498023', '1', 'Desmond Mogakwe', '', '+27834399361', 'mogakwethabo1@gmail.com', '', '', 'I am interested in buying this machine and want the quotation', '[]I am interested in buying this machine and want the quotation', '', '', '', 'https://www.facebook.com/settings?tab=account&section=username');
INSERT INTO `cosmo_message` VALUES ('706', '0', '0', '', '', '0', '1592499131', '1592499131', '1', 'Muhammad shafiq', '', '0565638347', 'cottontrend@gmail.com', '', '', 'Hi\r\nWe have UW20-1A-CF-043101\r\n2020-3-25 V6-2 \r\nFrom the first day we get this ultrasonic generator the power not increase or decrease from 60% pls guide', '[]Hi\r\nWe have UW20-1A-CF-043101\r\n2020-3-25 V6-2 \r\nFrom the first day we get this ultrasonic generator the power not increase or decrease from 60% pls guide', '', '', 'United Arab Emirates', '');
INSERT INTO `cosmo_message` VALUES ('707', '0', '0', '', '', '0', '1592504089', '1592504089', '1', 'David', '', '919-730-0897', 'deastwood09@gmail.com', '', '', 'I am interested in 20K Ultra sonic welding machine.  I can not find the user manual in English.  Would you please send me a copy.  I have a version in Chinese but I am having difficulties reading it.  This is the user, safety and installation manual.  Thank you.', '[ 美国]I am interested in 20K Ultra sonic welding machine.  I can not find the user manual in English.  Would you please send me a copy.  I have a version in Chinese but I am having difficulties reading it.  This is the user, safety and installation manual.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('708', '0', '0', '', '', '0', '1592515749', '1592515749', '1', 'CharlesBrito', '', '82746515239', 'atrixxtrix@gmail.com', '', '', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB', '[]Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgi', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('709', '0', '0', '', '', '0', '1592517510', '1592517510', '1', 'Lucia Ferreira', '', '00000000', 'keziajjmmgg@gmail.com', '', '', '', '[ 巴西]', '', '', 'Brasil', 'Jsjsjajaj.com');
INSERT INTO `cosmo_message` VALUES ('710', '0', '0', '', '', '0', '1592523104', '1592523104', '1', 'José Rivera', '', '15 5585816224', 'jaramon. Rivera@gmail.com', '', '', 'I am need a quotation of the ultrasonic system for mask machine. The width of the transducer is 6 in, I am waiting for your response. ', '[]I am need a quotation of the ultrasonic system for mask machine. The width of the transducer is 6 in, I am waiting for your response. ', '', '', 'Mexico', '');
INSERT INTO `cosmo_message` VALUES ('711', '0', '0', '', '', '0', '1592565384', '1592565384', '1', 'John Brooks', '', '83217618332', 'swetmangdudley@gmail.com', '', '', 'My name is John Brooks of AAA Structured Finance Ltd , Thank you for your time, my company offers project financing and lending services, do you have any project that requires funding at the moment? We are ready to work with you on a more transparent approach. \r\n \r\nBest regards, \r\nJohn Brooks \r\nPrincipal Partner \r\nAAA Structured Finance Ltd \r\nE-mail: brooksjohn801@gmail.com', '[ 意大利]My name is John Brooks of AAA Structured Finance Ltd , Thank you for your time, my company offers project financing and lending services, do you have any project that requires funding at the moment? We are ready to work with you on a more transparen', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('712', '0', '0', '', '', '0', '1592571304', '1592571304', '1', 'Stepan', '', '+79312306280', 'zakupki@omi-ko.ru', '', '', 'Hello! \r\n\r\nI\'m interested in ultrasonic welding device for 3ply machine.\r\nText me in WeChat, please.', '[ 俄罗斯]Hello! \r\n\r\nI\'m interested in ultrasonic welding device for 3ply machine.\r\nText me in WeChat, please.', '', '', '', '');
INSERT INTO `cosmo_message` VALUES ('713', '0', '0', '', '', '0', '1592593734', '1592593734', '1', 'Md Salah Uddin', '', '+971501781904', 'sales@bushramed.com', '', '', 'Hi, \r\nI am interested to order ultrasonic generator for surgical face mask and kn95 masks. \r\n\r\nHow can I order online?\r\nWould you please provide alibaba website link?\r\n\r\nbest regards, \r\nSalah\r\nDubai', '[ 阿联酋]Hi, \r\nI am interested to order ultrasonic generator for surgical face mask and kn95 masks. \r\n\r\nHow can I order online?\r\nWould you please provide alibaba website link?\r\n\r\nbest regards, \r\nSalah\r\nDubai', '', '', '', 'www.bushramed.com');
INSERT INTO `cosmo_message` VALUES ('714', '0', '0', '', '', '0', '1592601410', '1592601410', '1', 'Mario', '', '3013429690', 'kilosjas.2106@gmail.com', '', '', '', '[ 哥伦比亚]', '', '', 'colonbia', 'Kilosjas.2106@gmail.com');
INSERT INTO `cosmo_message` VALUES ('715', '0', '0', '', '', '0', '1592648797', '1592648797', '1', 'Tayfun', '', '00905334821800', 'taygin@tayfunltd.com', '', '', 'I want 20 hz 2000 w ultrasonik\r\n20-15 hz 2600 w ultrasonik', '[]I want 20 hz 2000 w ultrasonik\r\n20-15 hz 2600 w ultrasonik', '', '', 'Turkey', 'Tayfunltd.com');
INSERT INTO `cosmo_message` VALUES ('716', '0', '0', '', '', '0', '1592749191', '1592749191', '1', 'Farooq alam khan Khan', '', '03112666376', 'farooq.fie@gmail.com', '', '', 'Please send me the quotation of ultrasonic welding system ', '[]Please send me the quotation of ultrasonic welding system ', '', '', 'Pakistan', '');
INSERT INTO `cosmo_message` VALUES ('717', '0', '0', '', '', '0', '1592851043', '1592851043', '1', 'Brian P Sanchez', '', '208-867-5206', '5re73r551rm@classesmail.com', '', '', 'Working good', '[ 尼日利亚]Working good', '', '', 'Us', 'lisatcouture.com');
INSERT INTO `cosmo_message` VALUES ('718', '0', '0', '', '', '0', '1592851403', '1592851403', '1', 'richurd gardner', '', '1-603-400-9184', 'rick.gardner@smiths-medical.com', '', '', 'Can you please prove pricing and delivery for one  Model UW20-1A-CF and one Model UW20-1A-JX', '[ 美国]Can you please prove pricing and delivery for one  Model UW20-1A-CF and one Model UW20-1A-JX', '', '', '', 'www.smiths-medical.com');

-- ----------------------------
-- Table structure for cosmo_module
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_module`;
CREATE TABLE `cosmo_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_module
-- ----------------------------
INSERT INTO `cosmo_module` VALUES ('1', '单页模型', 'Page', '单页模型', '1', '1', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('2', '文章管理', 'Article', '新闻文章', '1', '1', '1', 'id,catid,url,title,username,hits,keywords,description,thumb,createtime,status,listorder', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('3', '友情链接', 'Link', '友情链接', '2', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('4', '案例管理', 'Case', '案例', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('5', '招聘管理', 'Jobs', '招聘', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('6', '产品管理', 'Product', '产品', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('7', '留言管理', 'Message', '留言', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('8', '邮箱管理', 'Mailbox', '邮箱管理', '1', '0', '0', '*', '', '0', '1', '', '1');
INSERT INTO `cosmo_module` VALUES ('10', '下载管理', 'Download', '下载管理', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('11', 'History', 'History', 'History', '1', '0', '0', '*', '', '0', '1', '', '0');

-- ----------------------------
-- Table structure for cosmo_node
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_node`;
CREATE TABLE `cosmo_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_node
-- ----------------------------
INSERT INTO `cosmo_node` VALUES ('1', 'Admin', '后台管理', '1', '后台项目', '0', '0', '1', '0');
INSERT INTO `cosmo_node` VALUES ('2', 'Index', '后台默认', '1', '', '0', '1', '2', '1');
INSERT INTO `cosmo_node` VALUES ('3', 'Config', '站点配置', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('4', 'index', '站点配置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('5', 'sys', '系统参数', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('7', 'add', '添加变量', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('8', 'Menu', '菜单管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('11', 'index', '默认动作', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('12', 'Public', '全局操作', '1', '', '0', '1', '2', '0');
INSERT INTO `cosmo_node` VALUES ('13', 'index', '默认', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('14', 'add', '添加', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('15', 'edit', '编辑', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('16', 'insert', '插入', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('17', 'attach', '附件设置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('18', 'mail', '系统邮箱', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('19', 'Posid', '推荐位', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('21', 'update', '更新', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('22', 'status', '状态', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('23', 'deleteall', '批量删除', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('24', 'delete', '删除', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('25', 'listorder', '排序', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('26', 'password', '修改密码', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('27', 'profile', '个人资料', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('28', 'cache', '更新缓存', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('30', 'main', '系统信息', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('40', 'Urlrule', 'URL规则', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('48', 'Dbsource', 'DB数据源', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('55', 'Type', '类别管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('65', 'Lang', '多语言管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('75', 'Database', '数据库管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('76', 'docommand', '优化操作', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('77', 'backup', '备份', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('78', 'recover', '恢复', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('79', 'query', 'sql查询', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('80', 'doquery', '运行sql', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('81', 'Category', '栏目管理', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('88', 'repair_cache', '修复栏目数据', '1', '', '0', '81', '3', '3');
INSERT INTO `cosmo_node` VALUES ('90', 'Module', '模型管理', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('98', 'Field', '模型字段', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('107', 'Page', '单页模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('110', 'Article', '文章模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('116', 'Link', '友情链接', '1', '', '0', '1', '2', '4');
INSERT INTO `cosmo_node` VALUES ('121', 'User', '会员管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('122', 'Role', '会员组管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('123', 'Node', '节点管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('124', 'Access', '授权查询', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('126', 'Template', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('127', 'Theme', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('128', 'Block', '碎片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('129', 'Slide', '幻灯片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('139', 'statusallok', '批量审核', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('140', 'images', '媒体文件', '1', '', '0', '126', '3', '7');
INSERT INTO `cosmo_node` VALUES ('142', 'index', '列表', '1', '', '0', '127', '3', '7');
INSERT INTO `cosmo_node` VALUES ('145', 'picmanage', '图片管理', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('146', 'addpic', '添加图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('147', 'editpic', '编辑图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('148', 'insertpic', '插入图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('149', 'updatepic', '更新图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('150', 'listorder', '图片排序', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('151', 'Attachment', '附件管理', '1', '', '0', '1', '2', '0');
INSERT INTO `cosmo_node` VALUES ('152', 'index', '默认操作', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('153', 'upload', '上传文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('154', 'filelist', '浏览文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('155', 'delfile', '删除文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('156', 'cleanfile', '清理文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('157', 'dosite', '保存配置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('158', 'testmail', '邮件测试', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('159', 'product', '产品模型', '1', '产品模型', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('160', 'Message', '留言模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('161', 'Case', '案例模型', '1', 'Case', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('162', 'deletepic', '删除图片', '1', '删除图片', '0', '129', '3', '7');

-- ----------------------------
-- Table structure for cosmo_online
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_online`;
CREATE TABLE `cosmo_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_online
-- ----------------------------
INSERT INTO `cosmo_online` VALUES ('d91aedda94e69f6435c943263488e165', '0', '', '127.0.0.1', '1592901835', '4');

-- ----------------------------
-- Table structure for cosmo_page
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_page`;
CREATE TABLE `cosmo_page` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cont` text NOT NULL,
  `pcont` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_page
-- ----------------------------
INSERT INTO `cosmo_page` VALUES ('1', '关于我们', '', '', '', '<p>\r\n	<span style=\"line-height:2;\">&nbsp; &nbsp;Sichuan Hui Da Tong (Phedaton) Mechanical Equipment Manufacturing Co., Ltd Is located at Chongzhou Industrial port in&nbsp;T EDA, an industrial concentration development area in Sichuan. Established in the year of 2012 with a registered capital of 11 million&nbsp;yuan, Now we’ve reached an annual turnover of $ 90 million, at the same time, we have obtained the import &amp; export certificates issued by the Ministry of Foreign Trade and Economic Cooperation and General Administration of Customs of PRC.</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;We are mainly engaged in research, production and sales of dish-washing machine. With an innovation-driven culture, we’ve been dedicating in laser cutter, Automatic welding machine as well as Highland field kitchen car. Our major products have been widely used for cleaning.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">Featured with advanced technology, reliable performance and high durability, our Phedaton products earn good reputation. We&nbsp;have 2 in-house manufacturing plants and 2 exhibition centers and over 100 staffs around Chengdu, China.&nbsp;Honored as “High-Tech Enterprise”, we have acquired more than 15 National patents,&nbsp;among which two patents are Municipal Science and Technology Progress Award.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;Apart from the 2 manufacturing plants, we have a robotics lab, a heavy equipment production base (built by a joint effort with Sichuan Xihe Mechanical and Electrical Equipment Manufacturing Co.,Ltd), and an automation equipment lab (built by a joint effort with Sichuan Agricultural University).Based on a disciplined and professional R&amp;D and production team, we produce and deliver quality products as well as projects, receiving strongly positive feedbacks from clients.</span> \r\n</p>', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('2', '新闻中心', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('3', '案例中心', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('4', '联系我们', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('5', '关于茅台510', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('6', '关于茅台510', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('14', 'product', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('24', 'Video', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('25', 'Micro Hi-Fi', '/Uploads/201609/57d7bd53a3317.jpg', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('27', 'MCB1533', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('39', '联系我们', '', '', '', '<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	如有咨询事项，请联系技术客服QQ&nbsp;：3341822209<br />\r\n公司：贵州高峰石油机械股份有限公司<br />\r\n地址：贵州省贵阳市观山湖区长岭南路22号<br />\r\n邮编：550081\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		<span style=\"padding:0px;margin:0px;font-weight:700;\">国内</span><br />\r\n电话：86-851-84668339<br />\r\n86-851-84810952<br />\r\n传真：86-851-84668503<br />\r\n86-851-84810845<br />\r\n邮箱：xsb1@gaofeng-petro.com\r\n	</p>\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		&nbsp;\r\n	</p>\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"padding:0px;margin:0px;font-weight:700;\">国际</span><br />\r\n电话：86-851-87995502<br />\r\n传真：86-851-87995503<br />\r\n邮箱：sales@gaofeng-petro.com<br />\r\n网址：<a href=\"http://www.gaofeng-petro.com/\" style=\"padding:0px;margin:0px;color:#006FA8;\">www.gaofeng-petro.com</a>\r\n</div>', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('77', 'Highlight', '', '', '', '<p>\r\n	<table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#FFFFFF\">\r\n		<tbody>\r\n			<tr>\r\n				<td rowspan=\"3\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5d6c608c.png\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n				<td style=\"vertical-align:bottom;\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5e96a5d1.jpg\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"height:50%;\">\r\n					<h3 style=\"box-sizing:border-box;margin:20px 0px 1rem;padding:0.8rem 0px 1.5rem;font-family:Arial;font-weight:500;line-height:1.1;color:#4EB136;font-size:24px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#4EB136;white-space:normal;background-color:#FFFFFF;\">\r\n						<span style=\"line-height:3;\">Mobile Flipchart Easel</span> \r\n					</h3>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Board Size:70x100cm(28\"x40\")</span></strong><strong><span style=\"font-size:16px;\"></span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;\"></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">Max Height:195cm(78\")</span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><span style=\"line-height:1.5;\">Board: H</span></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">igh quality lacquered steel sheet surface with magnetic, aluminum frame, ABS corner;</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong style=\"color:#333333;font-family:Arial;line-height:20px;white-space:normal;background-color:#FFFFFF;\"><span style=\"font-size:16px;line-height:1.5;\">S</span></strong><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;line-height:1.5;\">tand: Steel tube,five star let,dia 5cm castor with brake,height adjustable.Round base dia 68cm(26.7\");</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:16px;line-height:1.5;\"><strong>Accessories: 1 pcs magnetic eraser,3 pcs magnets;</strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Extra Choice: Extention bar.</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"font-size:14px;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Packing:1set/ctn,0.096cbm/pcs,&nbsp;</span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">G.W.:15.7kgs/set;</span></strong> \r\n					</p>\r\n<br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('78', 'Ultrasonic Welding System - Working Principle', '', 'whiteboard inquiry', 'get a quote for the whiteboard products series', '', '', '0', '<h3>Ultrasonic Welding System- Advantages</h3>                        <div class=\"content clearfix\">                            <div class=\"left col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/adva.png\" alt=\"\" /></div>                                <h6>Mask machine production advantages</h6>                                <div class=\"boxs\">                                    <p>Safe</p>                                    <ul>                                        <li>No solvents, adhesives or other auxiliary materials required</li>                                        <li>No pollution</li>                                        <li>Environmental-friendly</li>                                    </ul>                                </div>                                <div class=\"boxs\">                                    <p>Intelligent</p>                                    <ul>                                        <li>Automatic frequency search, automatic frequency tracking, no need for manual                                            adjustment</li>                                        <li>No Ultrasonic amplitude is stepless and adjustable from 0% - 100% ,                                            intelligently matching of different product types</li>                                        <li>More than 300 welding records</li>                                    </ul>                                </div>                                <div class=\"boxs\">                                    <p>Efficient</p>                                    <ul>                                        <li>Replace manual welding</li>                                        <li>Increase efficiency</li>                                        <li>Lower the cost</li>                                    </ul>                                </div>                            </div>                            <div class=\"right col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/adva.png\" alt=\"\" /></div>                                <h6>Advantages of ultrasonic machining</h6>                                <div class=\"boxs\">                                    <ul>                                        <li>Easy to achieve ultrasonic machining without replacing the customer\'s                                            machine tool spindle</li>                                        <li>Especially suitable for precision machining of hard and brittle materials.                                            Can improve machining accuracy and machining efficiency and extend tool                                            life.                                        </li>                                        <li>It is installed on the machine table and has a modular design to adapt to                                            different types of machine tools and machining centers</li>                                    </ul>                                </div>                                <a class=\"ad-contact\" href=\"#contact\">get free tquote</a>                            </div>                        </div>', '');
INSERT INTO `cosmo_page` VALUES ('74', 'AboutUs', '', 'China whiteboard,glass whiteboard,flip chart ,whiteboard manufacturer', 'WeYoung -China whiteboard,glass whiteboard,flip chart manufacturer', '<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5928f0030778e.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:16px;line-height:26.6667px;white-space:normal;\">Established\r\n in Foshan in 1993, one of the most famous industrial cities in China, \r\nWenyang Stationery Manufacturing Co., Ltd. is a manufacturer and \r\nexporter specializing in whiteboards, notice boards, chalk boards, \r\nflip chart easels, whiteboard stands, print racks, magazine stands, \r\nnewspaper stands. Our factory covers an area of 25,000 square meters. As\r\n one of the biggest whiteboard manufacturers and whiteboard standards \r\nsetters in China, we are one of the best producers with the highest \r\nquality standards,and got the certificate of ISO9001:2008,BV CERT,TUV \r\nCERT,SGS CERT.</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5926796e10f5a.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">So far, the products have been exported to\r\n50 countries including USA, Germany, Japan, Australia, UAE, etc. We have\r\nestablished good business relationships with many of the world’s multinational\r\ncompanies such as 3M, Comix,and be a supplier of 2012 LONDON OLYMPIC GAMES and\r\n2016 RIO OLYMPIC GAMES.</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201706/593faec12ff48.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">During the past 24 years, our company has\r\nadhered to the management concept of trust and cooperation, superior product\r\nquality and corporate cultural development for our personnel. Our corporate\r\nvision attracts a group of highly skilled technicians and professional\r\nmanagement staff that are eager and ready to serve our customers.&nbsp; As a result, our product quality meets\r\nworld-class standards. We also offer OEM and custom made services wherein we\r\ntailor the product according to the specifications and design of our clients. </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">Honesty as the foundation, credit standing\r\nas rule, quality and quantity assured, development together. We sincerely would\r\nlike to cooperate with you on the basis of mutual benefit. You are warmly\r\nwelcome to visit us.</span> \r\n</p>\r\n<br />', '', '0', '<div class=\"col-lg-6 col-md-6 col-sm-6\"><img src=\"/Public/www/images/probg.png\" alt=\"\" /></div>                    <div class=\"txts col-lg-6 col-md-6 col-sm-6\">                        <h6>The Information You Want To Know -from our professionals.</h6>                        <ul>                            <li>No MOQ: customers can order according to demand.</li>                            <li>Regular terms of sale: EXW.</li>                            <li>Export orders: generally shipped by sea, urgent orders                                are specially treated according to customer needs.</li>                            <li>Production cycle: different for each order,                                depending on the actual order product.</li>                            <li>Payment method: 100% will be paid                                in one lump sum before delivery.                            </li>                        </ul>                    </div>', '<h3>Application - Mask Ultrasonic Welding</h3>            <div class=\"title\">Applications: Mask/Medical Protective Clothing</div>            <div class=\"box clearfix\">                <div class=\"left\">                    <ul>                        <li>① Nose bridge welding</li>                        <li>② Welding after hemming</li>                        <li>③ Breathing valve welding </li>                        <li>④ Multilayer rolling welding</li>                        <li>⑤ Ear-loop welding </li>                    </ul>                </div>                <div class=\"right\">                    <img src=\"/Uploads/202003/5e6862b7441fd.png\" alt=\"\" />                </div>                <div class=\"logo-g\"><img src=\"/Public/wap/image/logo-g.png\" alt=\"\" /></div>            </div>');
INSERT INTO `cosmo_page` VALUES ('103', 'Thanks', '', '', '', '', '', '0', '', '');
INSERT INTO `cosmo_page` VALUES ('108', 'Ultrasonic Advantages', '', '', '', '', '', '0', ' <h3>Ultrasonic Welding System - Working Principle</h3>                        <div class=\"content clearfix\">                            <div class=\"img col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/working.png\" alt=\"\" /></div>                            </div>                            <div class=\"txt col-lg-6 col-md-6 col-sm-6\">                                <ul>                                    <li>Ultrasonic generator transforms low-frequency alternating current into                                        high-frequency alternating current, and transforms electric energy into                                        mechanical energy through the transducer</li>                                    <li>When the welding head acts on the contact surface of thermoplastic, it will                                        produce tens of thousands of high frequency vibrations per second</li>                                    <li>The high frequency vibration transmits ultrasonic energy to welding area , local                                        high temperature is created due to mechanical force and friction between the                                        plastic parts</li>                                    <li>Pressure lasts for a few seconds, ultrasonic welding making it solidify, forming                                        a solid molecular chain and realizing welding</li>                                </ul>                            </div>                        </div>', '<h3>Ultrasonic Welding System- Advantages</h3>            <div class=\"list\">                <div class=\"box clearfix\">                    <div class=\"box-img\">                        <img src=\"/Uploads/202002/5e572dc846e82.jpg\" alt=\"\" />                    </div>                    <ul>                        <li>No solvents, adhesives or other auxiliary materials required</li>                        <li>No pollution</li>                        <li>Environmental-friendly</li>                    </ul>                </div>                <div class=\"box clearfix\">                    <div class=\"box-img\">                        <img src=\"/Public/wap/image/advantages2.png\" alt=\"\" />                    </div>                    <ul>                        <li>Automatic frequency search, automatic                            frequency tracking, no need for manual adjustment</li>                        <li>Ultrasonic amplitude is stepless and                            adjustable from 0% - 100% , intelligently                            matching of different product types</li>                        <li>More than 300 welding records</li>                    </ul>                </div>                <div class=\"box clearfix\">                    <div class=\"box-img\">                        <img src=\"/Public/wap/image/advantages3.png\" alt=\"\" />                    </div>                    <ul>                        <li>Replace manual welding</li>                        <li>Increase efficiency</li>                        <li>Lower the cost</li>                    </ul>                </div>            </div>');
INSERT INTO `cosmo_page` VALUES ('110', 'Ultrasonic Parameters', '', '', '', '', '', '0', '<h3>Why Choose CONPROFE</h3>                    <div class=\"content\">                        <!-- 奇 左图右文 -->                        <div class=\"box clearfix\">                            <div class=\"imgs col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/choose.png\" alt=\"\" /></div>                            </div>                            <div class=\"txt col-lg-6  col-md-6 col-sm-6\">                                <h6>Advantages of ultrasonic machining</h6>                                <ul>                                    <li>Easy to achieve ultrasonic machining without replacing the customer\'s machine                                        tool                                        spindle</li>                                    <li>Especially suitable for precision machining of hard and brittle materials. Can                                        improve machining accuracy and machining efficiency and extend tool life.                                    </li>                                    <li> It is installed on the machine table and has a modular design to adapt to                                        different                                        types of machine tools and machining centers                                    </li>                                </ul>                            </div>                        </div>                        <!-- 偶 右图左文-->                        <div class=\"box clearfix\">                            <div class=\"txt col-lg-6  col-md-6 col-sm-6\">                                <h6>Advantages of ultrasonic machining</h6>                                <ul>                                    <li>Easy to achieve ultrasonic machining without replacing the customer\'s machine                                        tool                                        spindle</li>                                    <li>Especially suitable for precision machining of hard and brittle materials. Can                                        improve machining accuracy and machining efficiency and extend tool life.                                    </li>                                    <li> It is installed on the machine table and has a modular design to adapt to                                        different                                        types of machine tools and machining centers                                    </li>                                </ul>                            </div>                            <div class=\"imgs col-lg-6 col-md-6 col-sm-6 \">                                <div class=\"box-img\"><img src=\"/Public/www/images/choose.png\" alt=\"\" /></div>                            </div>                        </div>                        <div class=\"box clearfix\">                            <div class=\"imgs col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/choose.png\" alt=\"\" /></div>                            </div>                            <div class=\"txt col-lg-6  col-md-6 col-sm-6\">                                <h6>Advantages of ultrasonic machining</h6>                                <ul>                                    <li>Easy to achieve ultrasonic machining without replacing the customer\'s machine                                        tool                                        spindle</li>                                    <li>Especially suitable for precision machining of hard and brittle materials. Can                                        improve machining accuracy and machining efficiency and extend tool life.                                    </li>                                    <li> It is installed on the machine table and has a modular design to adapt to                                        different                                        types of machine tools and machining centers                                    </li>                                </ul>                            </div>                        </div>                        <div class=\"box clearfix\">                            <div class=\"txt col-lg-6  col-md-6 col-sm-6\">                                <h6>Advantages of ultrasonic machining</h6>                                <ul>                                    <li>Easy to achieve ultrasonic machining without replacing the customer\'s machine                                        tool                                        spindle</li>                                    <li>Especially suitable for precision machining of hard and brittle materials. Can                                        improve machining accuracy and machining efficiency and extend tool life.                                    </li>                                    <li> It is installed on the machine table and has a modular design to adapt to                                        different                                        types of machine tools and machining centers                                    </li>                                </ul>                            </div>                            <div class=\"imgs col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/choose.png\" alt=\"\" /></div>                            </div>                        </div>                    </div>                    <a class=\"ad-contact\" href=\"#contact\">get free tquote</a>', '');
INSERT INTO `cosmo_page` VALUES ('114', 'Certificated', '', '', '', '', '', '0', '<!-- number -->        <div class=\"number\">            <div class=\"container\">                <div class=\"row\">                    <div class=\"col-lg-3 col-md-3 col-sm-3 \">                        <span class=\"counter num\" data-counter-time=\"2000\" data-counter-delay=\"100\">200</span><em>+</em>                        <p>DMG MAZAK FAUNC</p>                    </div>                    <div class=\"col-lg-3 col-md-3 col-sm-3\">                        <span class=\"counter num\" data-counter-time=\"2000\" data-counter-delay=\"100\">50</span><em>+</em>                        <p>ZOLLER HAIMER SPERONI</p>                    </div>                    <div class=\"col-lg-3 col-md-3 col-sm-3\">                        <span class=\"counter num\" data-counter-time=\"2000\" data-counter-delay=\"100\">300</span><em>+</em>                        <p>Core patents<br />                            (domestic / international)</p>                    </div>                    <div class=\"col-lg-3 col-md-3 col-sm-3\">                        <span class=\"counter num\" data-counter-time=\"2000\" data-counter-delay=\"100\">1,000</span><em>+</em>                        <p>Employees</p>                    </div>                </div>            </div>        </div>        <!-- Certificated -->        <div class=\"certificated\">            <div class=\"container\">                <div class=\"row\">                    <h3>We Are Trusted And Certificated By</h3>                    <div class=\"content clearfix\">                        <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">                            <div class=\"box-img\"><img src=\"/Public/www/images/cer1.png\" alt=\"\" /></div>                        </div>                        <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">                            <div class=\"box-img\"><img src=\"/Public/www/images/cer2.png\" alt=\"\" /></div>                        </div>                        <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">                            <div class=\"box-img\"><img src=\"/Public/www/images/cer3.png\" alt=\"\" /></div>                        </div>                    </div>                </div>            </div>        </div>', '');
INSERT INTO `cosmo_page` VALUES ('111', 'Contact Us', '', '', '', '', '', '0', '<div class=\"clearfix\">                      <div class=\"left col-lg-6 col-md-6\">                                <div class=\"box\">                                    <p>Name <span>*</span></p>                                    <input type=\"text\" name=\"name\" />                                </div>                                <div class=\"box\">                                    <p>Company <span>*</span></p>                                    <input type=\"text\" name=\"company\" />                                </div>                                <div class=\"box\">                                    <p> Cellphone <span>*</span></p>                                    <input type=\"text\" name=\"phone\" />                                </div>                                <div class=\"box\">                                    <p> Website or Social Media Account</p>                                    <input type=\"text\" name=\"account\" />                                </div>                                <div class=\"box\">                                    <p> Country <span>*</span></p>                                    <input type=\"text\" name=\"country\" />                                </div>                            </div>                            <div class=\"right col-lg-6 col-md-6\">                                <div class=\"box\">                                    <p> Email <span>*</span></p>                                    <input type=\"text\" name=\"email\" />                                </div>                                <div class=\"box\">                                    <p> Message for Max Prefab </p>                                    <textarea name=\"message\"></textarea></div></div></div>', '<div class=\"clearfix\"><div class=\"left\"><div class=\"box\"><p>Name <span>*</span></p>                            <input type=\"text\" name=\"name\" />                        </div>                        <div class=\"box\">                            <p>Company <span>*</span></p>                            <input type=\"text\" name=\"company\" />                        </div>                        <div class=\"box\">                            <p> Cellphone <span>*</span></p>                            <input type=\"text\" name=\"phone\" />                        </div>                        <div class=\"box\">                            <p> Website or Social Media Account</p>                            <input type=\"text\" name=\"account\" />                        </div>                        <div class=\"box\">                            <p> Country <span>*</span></p>                            <input type=\"text\" name=\"counntry\" />                        </div>                    </div>                    <div class=\"right\">                        <div class=\"box\">                            <p> Email <span>*</span></p>                            <input type=\"text\" name=\"email\" />                        </div>                        <div class=\"box\">                            <p> Message for Max Prefab </p>                            <textarea name=\"message\"></textarea></div></div></div>');
INSERT INTO `cosmo_page` VALUES ('112', 'ABOUT US', '', '', '', '', '', '0', '<div class=\"about\">                <div class=\"container\">                    <div class=\"row\">                        <h3>About Conprofe Technology Group</h3>                        <div class=\"content clearfix\">                            <div class=\"txt col-lg-6 col-md-6 col-sm-6\">                                <ul>                                    <!-- start -->                                    <li>                                        <div class=\"box col-lg-2 col-md-2 col-sm-2 col-xs-2\">                                            <div class=\"num\">01</div>                                        </div>                                        <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-10\">                                            <h5>National High-tech Enterprise</h5>                                            <p>Conprofe has a strong technical force, with an independent technical                                                research institute, and HPTE Technology Research Center as well as                                                advanced laboratories</p>                                        </div>                                    </li>                                    <!-- end -->                                    <li>                                        <div class=\"box col-lg-2 col-md-2 col-sm-2 col-xs-2\">                                            <div class=\"num\">02</div>                                        </div>                                        <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-10\">                                            <h5>National High-tech Enterprise</h5>                                            <p>Conprofe has a strong technical force, with an independent technical                                                research institute, and HPTE Technology Research Center as well as                                                advanced laboratories</p>                                        </div>                                    </li>                                    <li>                                        <div class=\"box col-lg-2 col-md-2 col-sm-2 col-xs-2\">                                            <div class=\"num\">03</div>                                        </div>                                        <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-10\">                                            <h5>National High-tech Enterprise</h5>                                            <p>Conprofe has a strong technical force, with an independent technical                                                research institute, and HPTE Technology Research Center as well as                                                advanced laboratories</p>                                        </div>                                    </li>                                </ul>                            </div>                            <div class=\"img col-lg-6 col-md-6 col-sm-6\">                                <div class=\"box-img\"><img src=\"/Public/www/images/abouts.png\" alt=\"\" /></div>                            </div>                        </div>                        <div class=\"about-bottom clearfix\">                            <div class=\"list clearfix col-lg-3 col-md-3 col-sm-6\">                                <div class=\"box-img col-lg-3 col-md-3 col-sm-3 \"><img src=\"/Public/www/images/about-ico.png\" alt=\"\" />                                </div>                                <div class=\"txt col-lg-9\">                                    <h6>Lorem Ipsum</h6>                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor                                        incididunt ut labore et dolore magna aliqua</p>                                </div>                            </div>                            <div class=\"list clearfix col-lg-3 col-md-3 col-sm-6\">                                <div class=\"box-img col-lg-3\"><img src=\"/Public/www/images/about-ico.png\" alt=\"\" /></div>                                <div class=\"txt col-lg-9\">                                    <h6>Lorem Ipsum</h6>                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor                                        incididunt ut labore et dolore magna aliqua</p>                                </div>                            </div>                            <div class=\"list clearfix col-lg-3 col-md-3 col-sm-6\">                                <div class=\"box-img col-lg-3\"><img src=\"/Public/www/images/about-ico.png\" alt=\"\" /></div>                                <div class=\"txt col-lg-9\">                                    <h6>Lorem Ipsum</h6>                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor                                        incididunt ut labore et dolore magna aliqua</p>                                </div>                            </div>                            <div class=\"list clearfix col-lg-3 col-md-3 col-sm-6\">                                <div class=\"box-img col-lg-3\"><img src=\"/Public/www/images/about-ico.png\" alt=\"\" /></div>                                <div class=\"txt col-lg-9\">                                    <h6>Lorem Ipsum</h6>                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor                                        incididunt ut labore et dolore magna aliqua</p>                                </div>                            </div>                        </div>                    </div>                </div>            </div>', '<h3>About Us</h3>        <div class=\"content\">            <p>                Conprofe Technology Group is a leading global manufacturer of green and intelligent manufacturing                solutions, with its headquarters located in Guangzhou Science City and eleven subsidiaries around the                world.            </p>            <p>                Conprofe Technology Group has been adhering to the development concept of &quot;CONVERGING of Global                Resources, PROFESSIONAL as Industry Leader&quot; since it was founded more than decade ago. The group has                developed into three business units of green ultrasonic tools, intelligent equipment and green                ultrasonic CNC machine tools; the products of which cover superhard tools, threading tools, precision                tool holders, green machining, ultrasonic machining, industrial robots,                precision mechanical components, intelligent factory and green ultrasonic CNC machine tools. The group’s                customers mainly come from consumer electronics, automotive, medical equipment, home appliance,                aerospace, general precision manufacturing and so on.            </p>        </div>        <div class=\"box\">            <img src=\"/Uploads/202003/5e68629b5c085.png\" alt=\"\" />        </div>');

-- ----------------------------
-- Table structure for cosmo_posid
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_posid`;
CREATE TABLE `cosmo_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_posid
-- ----------------------------
INSERT INTO `cosmo_posid` VALUES ('1', '首页', '0');

-- ----------------------------
-- Table structure for cosmo_product
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_product`;
CREATE TABLE `cosmo_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` varchar(255) NOT NULL DEFAULT '',
  `msgb` varchar(255) NOT NULL DEFAULT '',
  `msgc` varchar(255) NOT NULL DEFAULT '',
  `msgd` varchar(255) NOT NULL DEFAULT '',
  `msge` varchar(255) NOT NULL DEFAULT '',
  `msgf` varchar(255) NOT NULL DEFAULT '',
  `msgg` mediumtext NOT NULL,
  `msgh` mediumtext NOT NULL,
  `msgi` mediumtext NOT NULL,
  `available_one` mediumtext NOT NULL,
  `available_two` text NOT NULL,
  `model` varchar(255) NOT NULL DEFAULT '',
  `cont` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_product
-- ----------------------------
INSERT INTO `cosmo_product` VALUES ('109', '113', '2', 'admin', 'Ultrasonic welding! Let the mask be the armor protecting life', '', '', '', '', '', '/Product_109.html', '0', '0', '1', '0', '0', '1592898301', '1592898301', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' <div class=\"title\">Ultrasonic welding! Let the mask be the armor protecting life</div>                            <div class=\"txt col-lg-4 col-md-4 col-sm-4\">                                <div class=\"box-img\"><img src=\"/Public/www/images/product1.png\" alt=\"\" /></div>                                <div class=\"table-responsive\">                                    <table class=\"table \">                                        <tbody>                                            <tr>                                                <th>Items</th>                                                <th>Parameters</th>                                            </tr>                                            <tr>                                                <td>Frequency（KHz）</td>                                                <td>20</td>                                            </tr>                                            <tr>                                                <td>Output mode</td>                                                <td>Continuous/Intermittent</td>                                            </tr>                                            <tr>                                                <td>Model</td>                                                <td>UW20-1A-CFF/UW20-1A-JXF</td>                                            </tr>                                            <tr>                                                <td>Maximum power（W）</td>                                                <td>2600</td>                                            </tr>                                            <tr>                                                <td>Dimensions（mm）</td>                                                <td>335(L) x 305(W) x 143(H)</td>                                            </tr>                                            <tr>                                                <td>Weight（Kg）</td>                                                <td>9</td>                                            </tr>                                        </tbody>                                    </table>                                </div>                            </div>                            <div class=\"video col-lg-8 col-md-8 col-sm-8\">                                <div class=\"video-box\">                                    <iframe width=\"100%\" height=\"400\" src=\"https://www.youtube.com/embed/Stm8cuu8eCQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>                                </div>                                <div class=\"imgs clearfix\">                                    <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\"><img src=\"/Public/www/images/product.png\" alt=\"\" /></div>                                    <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\"><img src=\"/Public/www/images/product2.png\" alt=\"\" /></div>                                </div>                            </div>');
INSERT INTO `cosmo_product` VALUES ('110', '113', '2', 'admin', 'Ultrasonic welding! Let the mask be the armor protecting life', '', '', '', '', '', '/Product_110.html', '0', '0', '1', '0', '0', '1592898332', '1592898332', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' <div class=\"title\">Ultrasonic welding! Let the mask be the armor protecting life</div>                            <div class=\"txt col-lg-4 col-md-4 col-sm-4\">                                <div class=\"box-img\"><img src=\"/Public/www/images/product1.png\" alt=\"\" /></div>                                <div class=\"table-responsive\">                                    <table class=\"table \">                                        <tbody>                                            <tr>                                                <th>Items</th>                                                <th>Parameters</th>                                            </tr>                                            <tr>                                                <td>Frequency（KHz）</td>                                                <td>20</td>                                            </tr>                                            <tr>                                                <td>Output mode</td>                                                <td>Continuous/Intermittent</td>                                            </tr>                                            <tr>                                                <td>Model</td>                                                <td>UW20-1A-CFF/UW20-1A-JXF</td>                                            </tr>                                            <tr>                                                <td>Maximum power（W）</td>                                                <td>2600</td>                                            </tr>                                            <tr>                                                <td>Dimensions（mm）</td>                                                <td>335(L) x 305(W) x 143(H)</td>                                            </tr>                                            <tr>                                                <td>Weight（Kg）</td>                                                <td>9</td>                                            </tr>                                        </tbody>                                    </table>                                </div>                            </div>                            <div class=\"video col-lg-8 col-md-8 col-sm-8\">                                <div class=\"video-box\">                                    <iframe width=\"100%\" height=\"400\" src=\"https://www.youtube.com/embed/Stm8cuu8eCQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>                                </div>                                <div class=\"imgs clearfix\">                                    <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\"><img src=\"/Public/www/images/product.png\" alt=\"\" /></div>                                    <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\"><img src=\"/Public/www/images/product2.png\" alt=\"\" /></div>                                </div>                            </div>');
INSERT INTO `cosmo_product` VALUES ('111', '113', '2', 'admin', 'Ultrasonic welding! Let the mask be the armor protecting life', '', '', '', '', '', '/Product_111.html', '0', '0', '1', '0', '0', '1592898361', '1592898361', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<div class=\"title\">Ultrasonic welding! Let the mask be the armor protecting life</div>                            <div class=\"clearfix\">                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"imgs\"> <img src=\"/Public/www/images/porduct5.png\" alt=\"\" /></div>                                </div>                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"imgs\"><img src=\"/Public/www/images/porduct4.png\" alt=\"\" /></div>                                </div>                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"table-responsive\">                                        <table class=\"table \">                                            <tbody>                                                <tr>                                                    <th>Items</th>                                                    <th>Parameters</th>                                                </tr>                                                <tr>                                                    <td>Frequency（KHz）</td>                                                    <td>20</td>                                                </tr>                                                <tr>                                                    <td>Output mode</td>                                                    <td>Continuous/Intermittent</td>                                                </tr>                                                <tr>                                                    <td>Model</td>                                                    <td>UW20-1A-CFF/UW20-1A-JXF</td>                                                </tr>                                                <tr>                                                    <td>Maximum power（W）</td>                                                    <td>2600</td>                                                </tr>                                                <tr>                                                    <td>Dimensions（mm）</td>                                                    <td>335(L) x 305(W) x 143(H)</td>                                                </tr>                                                <tr>                                                    <td>Weight（Kg）</td>                                                    <td>9</td>                                                </tr>                                            </tbody>                                        </table>                                    </div>                                </div>                            </div>');
INSERT INTO `cosmo_product` VALUES ('112', '113', '2', 'admin', 'Ultrasonic welding! Let the mask be the armor protecting life', '', '', '', '', '', '/Product_112.html', '0', '0', '1', '0', '0', '1592898437', '1592898437', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' <div class=\"title\">Ultrasonic welding! Let the mask be the armor protecting life</div>                            <div class=\"clearfix\">                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"imgs\"> <img src=\"/Public/www/images/porduct5.png\" alt=\"\" /></div>                                </div>                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"imgs\"><img src=\"/Public/www/images/porduct4.png\" alt=\"\" /></div>                                </div>                                <div class=\"col-lg-4 col-sm-6 col-md-4\">                                    <div class=\"table-responsive\">                                        <table class=\"table \">                                            <tbody>                                                <tr>                                                    <th>Items</th>                                                    <th>Parameters</th>                                                </tr>                                                <tr>                                                    <td>Frequency（KHz）</td>                                                    <td>20</td>                                                </tr>                                                <tr>                                                    <td>Output mode</td>                                                    <td>Continuous/Intermittent</td>                                                </tr>                                                <tr>                                                    <td>Model</td>                                                    <td>UW20-1A-CFF/UW20-1A-JXF</td>                                                </tr>                                                <tr>                                                    <td>Maximum power（W）</td>                                                    <td>2600</td>                                                </tr>                                                <tr>                                                    <td>Dimensions（mm）</td>                                                    <td>335(L) x 305(W) x 143(H)</td>                                                </tr>                                                <tr>                                                    <td>Weight（Kg）</td>                                                    <td>9</td>                                                </tr>                                            </tbody>                                        </table>                                    </div>                                </div>                            </div>');

-- ----------------------------
-- Table structure for cosmo_role
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_role`;
CREATE TABLE `cosmo_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_role
-- ----------------------------
INSERT INTO `cosmo_role` VALUES ('1', '超级管理员', '1', '超级管理员', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `cosmo_role` VALUES ('2', '管理员', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for cosmo_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_role_user`;
CREATE TABLE `cosmo_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_role_user
-- ----------------------------
INSERT INTO `cosmo_role_user` VALUES ('1', '2');
INSERT INTO `cosmo_role_user` VALUES ('2', '4');

-- ----------------------------
-- Table structure for cosmo_slide
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_slide`;
CREATE TABLE `cosmo_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_slide
-- ----------------------------
INSERT INTO `cosmo_slide` VALUES ('1', '首页banner', '', '', '1', '1920', '747', '5', '1', '0');
INSERT INTO `cosmo_slide` VALUES ('2', '手机版banner', '', '', '1', '750', '805', '5', '1', '0');

-- ----------------------------
-- Table structure for cosmo_slide_data
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_slide_data`;
CREATE TABLE `cosmo_slide_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL COMMENT '简介',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_slide_data
-- ----------------------------
INSERT INTO `cosmo_slide_data` VALUES ('7', '1', 'banner1', '/Uploads/202003/5e685e88ed49c.png', '', '0', '1', '0', '');
INSERT INTO `cosmo_slide_data` VALUES ('11', '2', '03', '/Uploads/202003/5e6862da3e52c.png', '', '0', '1', '0', '');

-- ----------------------------
-- Table structure for cosmo_type
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_type`;
CREATE TABLE `cosmo_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_type
-- ----------------------------
INSERT INTO `cosmo_type` VALUES ('1', '友情链接', '0', '友情链接分类', '1', '0', '1');

-- ----------------------------
-- Table structure for cosmo_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_urlrule`;
CREATE TABLE `cosmo_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_urlrule
-- ----------------------------
INSERT INTO `cosmo_urlrule` VALUES ('1', '0', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html', 'news_1.html|news_1-1.html', '{$catdir}.html|{$catdir}-{$page}.html', 'news.html|news-1.html', '0');

-- ----------------------------
-- Table structure for cosmo_user
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_user`;
CREATE TABLE `cosmo_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_user
-- ----------------------------
INSERT INTO `cosmo_user` VALUES ('4', '2', 'huizhuan', '5251ae25db6f61d493c2b394999b0f50c7b84455', 'osd@huizhuan.cn', '', '', '', '1', '', '', '', '', '', '272', '1540782434', '0', '1592873273', '61.140.27.219', '118.193.40.181', '1', '0.00', '0', '');
INSERT INTO `cosmo_user` VALUES ('2', '1', 'admin', 'fabaa88b6979f99875d10d053a1b128e90920d98', 'info@cosmoing.com', 'admin', '', '', '1', '', '', '', '', '', '104', '1502869825', '0', '1592901844', '122.97.176.27', '127.0.0.1', '1', '0.00', '0', '');
SET FOREIGN_KEY_CHECKS=1;
