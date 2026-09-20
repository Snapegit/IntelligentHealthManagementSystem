-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl37542204
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl37542204`
--

/*!40000 DROP DATABASE IF EXISTS `cl37542204`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl37542204` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl37542204`;

--
-- Table structure for table `bingqingyuce`
--

DROP TABLE IF EXISTS `bingqingyuce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bingqingyuce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juminzhanghao` varchar(200) DEFAULT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `bingqingqingkuang` longtext COMMENT '病情情况',
  `zhenduanxinxi` longtext COMMENT '诊断信息',
  `zhiliaoxinxi` longtext COMMENT '治疗信息',
  `yuhouxinxi` longtext COMMENT '预后信息',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='病情预测';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bingqingyuce`
--

LOCK TABLES `bingqingyuce` WRITE;
/*!40000 ALTER TABLE `bingqingyuce` DISABLE KEYS */;
INSERT INTO `bingqingyuce` VALUES (111,'2024-04-06 04:47:36','居民账号1','居民姓名1','病情情况1','诊断信息1','治疗信息1','预后信息1','2024-04-06'),(112,'2024-04-06 04:47:36','居民账号2','居民姓名2','病情情况2','诊断信息2','治疗信息2','预后信息2','2024-04-06'),(113,'2024-04-06 04:47:36','居民账号3','居民姓名3','病情情况3','诊断信息3','治疗信息3','预后信息3','2024-04-06'),(114,'2024-04-06 04:47:36','居民账号4','居民姓名4','病情情况4','诊断信息4','治疗信息4','预后信息4','2024-04-06'),(115,'2024-04-06 04:47:36','居民账号5','居民姓名5','病情情况5','诊断信息5','治疗信息5','预后信息5','2024-04-06'),(116,'2024-04-06 04:47:36','居民账号6','居民姓名6','病情情况6','诊断信息6','治疗信息6','预后信息6','2024-04-06');
/*!40000 ALTER TABLE `bingqingyuce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdangan`
--

DROP TABLE IF EXISTS `jiankangdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juminzhanghao` varchar(200) NOT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) NOT NULL COMMENT '身高',
  `tizhong` varchar(200) NOT NULL COMMENT '体重',
  `xuexing` varchar(200) NOT NULL COMMENT '血型',
  `yaowuguomin` longtext COMMENT '药物过敏',
  `jiazubingshi` longtext COMMENT '家族病史',
  `zhuyuanjilu` longtext COMMENT '住院记录',
  `qitaxiangqing` longtext COMMENT '其他详情',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='健康档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdangan`
--

LOCK TABLES `jiankangdangan` WRITE;
/*!40000 ALTER TABLE `jiankangdangan` DISABLE KEYS */;
INSERT INTO `jiankangdangan` VALUES (91,'2024-04-06 04:47:36','居民账号1','居民姓名1','性别1','年龄1','身高1','体重1','血型1','药物过敏1','家族病史1','住院记录1','其他详情1','2024-04-06 12:47:36'),(92,'2024-04-06 04:47:36','居民账号2','居民姓名2','性别2','年龄2','身高2','体重2','血型2','药物过敏2','家族病史2','住院记录2','其他详情2','2024-04-06 12:47:36'),(93,'2024-04-06 04:47:36','居民账号3','居民姓名3','性别3','年龄3','身高3','体重3','血型3','药物过敏3','家族病史3','住院记录3','其他详情3','2024-04-06 12:47:36'),(94,'2024-04-06 04:47:36','居民账号4','居民姓名4','性别4','年龄4','身高4','体重4','血型4','药物过敏4','家族病史4','住院记录4','其他详情4','2024-04-06 12:47:36'),(95,'2024-04-06 04:47:36','居民账号5','居民姓名5','性别5','年龄5','身高5','体重5','血型5','药物过敏5','家族病史5','住院记录5','其他详情5','2024-04-06 12:47:36'),(96,'2024-04-06 04:47:36','居民账号6','居民姓名6','性别6','年龄6','身高6','体重6','血型6','药物过敏6','家族病史6','住院记录6','其他详情6','2024-04-06 12:47:36');
/*!40000 ALTER TABLE `jiankangdangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangpingji`
--

DROP TABLE IF EXISTS `jiankangpingji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangpingji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juminzhanghao` varchar(200) NOT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) NOT NULL COMMENT '身高',
  `tizhong` varchar(200) NOT NULL COMMENT '体重',
  `xuexing` varchar(200) NOT NULL COMMENT '血型',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `pingpanshijian` date DEFAULT NULL COMMENT '评判时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='健康评级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangpingji`
--

LOCK TABLES `jiankangpingji` WRITE;
/*!40000 ALTER TABLE `jiankangpingji` DISABLE KEYS */;
INSERT INTO `jiankangpingji` VALUES (101,'2024-04-06 04:47:36','居民账号1','居民姓名1','性别1','年龄1','身高1','体重1','血型1','等级1','2024-04-06'),(102,'2024-04-06 04:47:36','居民账号2','居民姓名2','性别2','年龄2','身高2','体重2','血型2','等级2','2024-04-06'),(103,'2024-04-06 04:47:36','居民账号3','居民姓名3','性别3','年龄3','身高3','体重3','血型3','等级3','2024-04-06'),(104,'2024-04-06 04:47:36','居民账号4','居民姓名4','性别4','年龄4','身高4','体重4','血型4','等级4','2024-04-06'),(105,'2024-04-06 04:47:36','居民账号5','居民姓名5','性别5','年龄5','身高5','体重5','血型5','等级5','2024-04-06'),(106,'2024-04-06 04:47:36','居民账号6','居民姓名6','性别6','年龄6','身高6','体重6','血型6','等级6','2024-04-06');
/*!40000 ALTER TABLE `jiankangpingji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangwenzhen`
--

DROP TABLE IF EXISTS `jiankangwenzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangwenzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `juminzhanghao` varchar(200) DEFAULT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `wenzhenshijian` date DEFAULT NULL COMMENT '问诊时间',
  `neirong` longtext COMMENT '内容',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='健康问诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangwenzhen`
--

LOCK TABLES `jiankangwenzhen` WRITE;
/*!40000 ALTER TABLE `jiankangwenzhen` DISABLE KEYS */;
INSERT INTO `jiankangwenzhen` VALUES (51,'2024-04-06 04:47:35','医生工号1','姓名1','男','19819881111','居民账号1','居民姓名1','2024-04-06','内容1',''),(52,'2024-04-06 04:47:35','医生工号2','姓名2','男','19819881112','居民账号2','居民姓名2','2024-04-06','内容2',''),(53,'2024-04-06 04:47:35','医生工号3','姓名3','男','19819881113','居民账号3','居民姓名3','2024-04-06','内容3',''),(54,'2024-04-06 04:47:35','医生工号4','姓名4','男','19819881114','居民账号4','居民姓名4','2024-04-06','内容4',''),(55,'2024-04-06 04:47:35','医生工号5','姓名5','男','19819881115','居民账号5','居民姓名5','2024-04-06','内容5',''),(56,'2024-04-06 04:47:35','医生工号6','姓名6','男','19819881116','居民账号6','居民姓名6','2024-04-06','内容6','');
/*!40000 ALTER TABLE `jiankangwenzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-06 04:47:37','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common16\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common16\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"社区居民\",\"menuJump\":\"列表\",\"tableName\":\"shequjumin\"}],\"fontClass\":\"icon-user6\",\"menu\":\"社区居民管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\"}],\"fontClass\":\"icon-user8\",\"menu\":\"医生管理\",\"unicode\":\"&#xef9e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"健康问诊\",\"menuJump\":\"列表\",\"tableName\":\"jiankangwenzhen\"}],\"fontClass\":\"icon-common33\",\"menu\":\"健康问诊管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"体检预约\",\"menuJump\":\"列表\",\"tableName\":\"tijianyuyue\"}],\"fontClass\":\"icon-common50\",\"menu\":\"体检预约管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"体检类型\",\"menuJump\":\"列表\",\"tableName\":\"tijianleixing\"}],\"fontClass\":\"icon-common23\",\"menu\":\"体检类型管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"医院信息\",\"menuJump\":\"列表\",\"tableName\":\"yiyuanxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"医院信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"评级\"],\"menu\":\"健康档案\",\"menuJump\":\"列表\",\"tableName\":\"jiankangdangan\"}],\"fontClass\":\"icon-common45\",\"menu\":\"健康档案管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"健康评级\",\"menuJump\":\"列表\",\"tableName\":\"jiankangpingji\"}],\"fontClass\":\"icon-common5\",\"menu\":\"健康评级管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"病情预测\",\"menuJump\":\"列表\",\"tableName\":\"bingqingyuce\"}],\"fontClass\":\"icon-common41\",\"menu\":\"病情预测管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"问卷调查\",\"menuJump\":\"列表\",\"tableName\":\"wenjuandiaocha\"}],\"fontClass\":\"icon-common42\",\"menu\":\"问卷调查管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"问卷回答\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanhuida\"}],\"fontClass\":\"icon-common46\",\"menu\":\"问卷回答管理\",\"unicode\":\"&#xef3d;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"问诊\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\"}],\"menu\":\"医生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"问卷回答\"],\"menu\":\"问卷调查\",\"menuJump\":\"列表\",\"tableName\":\"wenjuandiaocha\"}],\"menu\":\"问卷调查管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"健康问诊\",\"menuJump\":\"列表\",\"tableName\":\"jiankangwenzhen\"}],\"fontClass\":\"icon-common33\",\"menu\":\"健康问诊管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"体检预约\",\"menuJump\":\"列表\",\"tableName\":\"tijianyuyue\"}],\"fontClass\":\"icon-common50\",\"menu\":\"体检预约管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"健康档案\",\"menuJump\":\"列表\",\"tableName\":\"jiankangdangan\"}],\"fontClass\":\"icon-common45\",\"menu\":\"健康档案管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"病情预测\",\"menuJump\":\"列表\",\"tableName\":\"bingqingyuce\"}],\"fontClass\":\"icon-common41\",\"menu\":\"病情预测管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"问卷回答\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanhuida\"}],\"fontClass\":\"icon-common46\",\"menu\":\"问卷回答管理\",\"unicode\":\"&#xef3d;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"问诊\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\"}],\"menu\":\"医生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"问卷回答\"],\"menu\":\"问卷调查\",\"menuJump\":\"列表\",\"tableName\":\"wenjuandiaocha\"}],\"menu\":\"问卷调查管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"社区居民\",\"tableName\":\"shequjumin\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"审核\"],\"menu\":\"健康问诊\",\"menuJump\":\"列表\",\"tableName\":\"jiankangwenzhen\"}],\"fontClass\":\"icon-common33\",\"menu\":\"健康问诊管理\",\"unicode\":\"&#xee6a;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"问诊\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\"}],\"menu\":\"医生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"问卷回答\"],\"menu\":\"问卷调查\",\"menuJump\":\"列表\",\"tableName\":\"wenjuandiaocha\"}],\"menu\":\"问卷调查管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"医生\",\"tableName\":\"yisheng\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shequjumin`
--

DROP TABLE IF EXISTS `shequjumin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shequjumin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juminzhanghao` varchar(200) NOT NULL COMMENT '居民账号',
  `juminmima` varchar(200) NOT NULL COMMENT '居民密码',
  `juminxingming` varchar(200) NOT NULL COMMENT '居民姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `chushengdi` varchar(200) DEFAULT NULL COMMENT '出生地',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `juminzhanghao` (`juminzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社区居民';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shequjumin`
--

LOCK TABLES `shequjumin` WRITE;
/*!40000 ALTER TABLE `shequjumin` DISABLE KEYS */;
INSERT INTO `shequjumin` VALUES (31,'2024-04-06 04:47:35','居民账号1','123456','居民姓名1','file/shequjuminTouxiang1.jpg','男','19819881111','441622200101010001','政治面貌1','出生地1','联系地址1'),(32,'2024-04-06 04:47:35','居民账号2','123456','居民姓名2','file/shequjuminTouxiang2.jpg','男','19819881112','441622200202020002','政治面貌2','出生地2','联系地址2'),(33,'2024-04-06 04:47:35','居民账号3','123456','居民姓名3','file/shequjuminTouxiang3.jpg','男','19819881113','441622200303030003','政治面貌3','出生地3','联系地址3'),(34,'2024-04-06 04:47:35','居民账号4','123456','居民姓名4','file/shequjuminTouxiang4.jpg','男','19819881114','441622200404040004','政治面貌4','出生地4','联系地址4'),(35,'2024-04-06 04:47:35','居民账号5','123456','居民姓名5','file/shequjuminTouxiang5.jpg','男','19819881115','441622200505050005','政治面貌5','出生地5','联系地址5'),(36,'2024-04-06 04:47:35','居民账号6','123456','居民姓名6','file/shequjuminTouxiang6.jpg','男','19819881116','441622200606060006','政治面貌6','出生地6','联系地址6');
/*!40000 ALTER TABLE `shequjumin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianleixing`
--

DROP TABLE IF EXISTS `tijianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tijianleixing` varchar(200) DEFAULT NULL COMMENT '体检类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='体检类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianleixing`
--

LOCK TABLES `tijianleixing` WRITE;
/*!40000 ALTER TABLE `tijianleixing` DISABLE KEYS */;
INSERT INTO `tijianleixing` VALUES (71,'2024-04-06 04:47:36','体检类型1'),(72,'2024-04-06 04:47:36','体检类型2'),(73,'2024-04-06 04:47:36','体检类型3'),(74,'2024-04-06 04:47:36','体检类型4'),(75,'2024-04-06 04:47:36','体检类型5'),(76,'2024-04-06 04:47:36','体检类型6');
/*!40000 ALTER TABLE `tijianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianyuyue`
--

DROP TABLE IF EXISTS `tijianyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tijianxiangmu` varchar(200) DEFAULT NULL COMMENT '体检项目',
  `tijianleixing` varchar(200) DEFAULT NULL COMMENT '体检类型',
  `suoshuyiyuan` varchar(200) DEFAULT NULL COMMENT '所属医院',
  `tijiandidian` varchar(200) DEFAULT NULL COMMENT '体检地点',
  `tijianshijian` datetime DEFAULT NULL COMMENT '体检时间',
  `juminzhanghao` varchar(200) DEFAULT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='体检预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianyuyue`
--

LOCK TABLES `tijianyuyue` WRITE;
/*!40000 ALTER TABLE `tijianyuyue` DISABLE KEYS */;
INSERT INTO `tijianyuyue` VALUES (61,'2024-04-06 04:47:36','体检项目1','体检类型1','所属医院1','体检地点1','2024-04-06 12:47:36','居民账号1','居民姓名1','是',''),(62,'2024-04-06 04:47:36','体检项目2','体检类型2','所属医院2','体检地点2','2024-04-06 12:47:36','居民账号2','居民姓名2','是',''),(63,'2024-04-06 04:47:36','体检项目3','体检类型3','所属医院3','体检地点3','2024-04-06 12:47:36','居民账号3','居民姓名3','是',''),(64,'2024-04-06 04:47:36','体检项目4','体检类型4','所属医院4','体检地点4','2024-04-06 12:47:36','居民账号4','居民姓名4','是',''),(65,'2024-04-06 04:47:36','体检项目5','体检类型5','所属医院5','体检地点5','2024-04-06 12:47:36','居民账号5','居民姓名5','是',''),(66,'2024-04-06 04:47:36','体检项目6','体检类型6','所属医院6','体检地点6','2024-04-06 12:47:36','居民账号6','居民姓名6','是','');
/*!40000 ALTER TABLE `tijianyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'居民账号1','shequjumin','社区居民','texz3r2dg7513d53kmwg5rb9rtjje5q9','2024-04-06 05:12:59','2024-04-06 06:13:00'),(2,1,'admin','users','管理员','6uxt8flh0leutv565rtfhr8lh0lcesk2','2024-04-06 05:16:46','2024-04-06 06:16:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-06 04:47:37','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuandiaocha`
--

DROP TABLE IF EXISTS `wenjuandiaocha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuandiaocha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbiaoti` varchar(200) NOT NULL COMMENT '问卷标题',
  `tupian` longtext COMMENT '图片',
  `wentiyi` varchar(200) NOT NULL COMMENT '问题一',
  `wentier` varchar(200) NOT NULL COMMENT '问题二',
  `wentisan` varchar(200) NOT NULL COMMENT '问题三',
  `wentisi` varchar(200) NOT NULL COMMENT '问题四',
  `wentiwu` varchar(200) DEFAULT NULL COMMENT '问题五',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='问卷调查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuandiaocha`
--

LOCK TABLES `wenjuandiaocha` WRITE;
/*!40000 ALTER TABLE `wenjuandiaocha` DISABLE KEYS */;
INSERT INTO `wenjuandiaocha` VALUES (121,'2024-04-06 04:47:36','问卷标题1','file/1712380670652.jpg','你是否服用任何营养补充剂或保健品？','你是否有眼部疾病或视力问题','你是否有高血压、高血糖或高血脂等慢性疾病？','你是否经常感到疲劳或无力？','你是否有特定的食物过敏','2024-04-06 12:47:36'),(122,'2024-04-06 04:47:36','问卷标题2','file/wenjuandiaochaTupian2.jpg,file/wenjuandiaochaTupian3.jpg,file/wenjuandiaochaTupian4.jpg','问题一2','问题二2','问题三2','问题四2','问题五2','2024-04-06 12:47:36'),(123,'2024-04-06 04:47:36','问卷标题3','file/wenjuandiaochaTupian3.jpg,file/wenjuandiaochaTupian4.jpg,file/wenjuandiaochaTupian5.jpg','问题一3','问题二3','问题三3','问题四3','问题五3','2024-04-06 12:47:36'),(124,'2024-04-06 04:47:36','问卷标题4','file/wenjuandiaochaTupian4.jpg,file/wenjuandiaochaTupian5.jpg,file/wenjuandiaochaTupian6.jpg','问题一4','问题二4','问题三4','问题四4','问题五4','2024-04-06 12:47:36'),(125,'2024-04-06 04:47:36','问卷标题5','file/wenjuandiaochaTupian5.jpg,file/wenjuandiaochaTupian6.jpg,file/wenjuandiaochaTupian7.jpg','问题一5','问题二5','问题三5','问题四5','问题五5','2024-04-06 12:47:36'),(126,'2024-04-06 04:47:36','问卷标题6','file/wenjuandiaochaTupian6.jpg,file/wenjuandiaochaTupian7.jpg,file/wenjuandiaochaTupian8.jpg','问题一6','问题二6','问题三6','问题四6','问题五6','2024-04-06 12:47:36');
/*!40000 ALTER TABLE `wenjuandiaocha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuanhuida`
--

DROP TABLE IF EXISTS `wenjuanhuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuanhuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbiaoti` varchar(200) NOT NULL COMMENT '问卷标题',
  `tupian` longtext COMMENT '图片',
  `wentiyi` varchar(200) NOT NULL COMMENT '问题一',
  `huidayi` varchar(200) DEFAULT NULL COMMENT '回答一',
  `wentier` varchar(200) NOT NULL COMMENT '问题二',
  `huidaer` varchar(200) DEFAULT NULL COMMENT '回答二',
  `wentisan` varchar(200) NOT NULL COMMENT '问题三',
  `huidasan` varchar(200) DEFAULT NULL COMMENT '回答三',
  `wentisi` varchar(200) NOT NULL COMMENT '问题四',
  `huidasi` varchar(200) DEFAULT NULL COMMENT '回答四',
  `wentiwu` varchar(200) DEFAULT NULL COMMENT '问题五',
  `huidawu` varchar(200) DEFAULT NULL COMMENT '回答五',
  `juminzhanghao` varchar(200) DEFAULT NULL COMMENT '居民账号',
  `juminxingming` varchar(200) DEFAULT NULL COMMENT '居民姓名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712380731899 DEFAULT CHARSET=utf8 COMMENT='问卷回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuanhuida`
--

LOCK TABLES `wenjuanhuida` WRITE;
/*!40000 ALTER TABLE `wenjuanhuida` DISABLE KEYS */;
INSERT INTO `wenjuanhuida` VALUES (131,'2024-04-06 04:47:36','问卷标题1','file/wenjuanhuidaTupian1.jpg,file/wenjuanhuidaTupian2.jpg,file/wenjuanhuidaTupian3.jpg','问题一1','是','问题二1','是','问题三1','是','问题四1','是','问题五1','是','居民账号1','居民姓名1',''),(132,'2024-04-06 04:47:36','问卷标题2','file/wenjuanhuidaTupian2.jpg,file/wenjuanhuidaTupian3.jpg,file/wenjuanhuidaTupian4.jpg','问题一2','是','问题二2','是','问题三2','是','问题四2','是','问题五2','是','居民账号2','居民姓名2',''),(133,'2024-04-06 04:47:36','问卷标题3','file/wenjuanhuidaTupian3.jpg,file/wenjuanhuidaTupian4.jpg,file/wenjuanhuidaTupian5.jpg','问题一3','是','问题二3','是','问题三3','是','问题四3','是','问题五3','是','居民账号3','居民姓名3',''),(134,'2024-04-06 04:47:36','问卷标题4','file/wenjuanhuidaTupian4.jpg,file/wenjuanhuidaTupian5.jpg,file/wenjuanhuidaTupian6.jpg','问题一4','是','问题二4','是','问题三4','是','问题四4','是','问题五4','是','居民账号4','居民姓名4',''),(135,'2024-04-06 04:47:36','问卷标题5','file/wenjuanhuidaTupian5.jpg,file/wenjuanhuidaTupian6.jpg,file/wenjuanhuidaTupian7.jpg','问题一5','是','问题二5','是','问题三5','是','问题四5','是','问题五5','是','居民账号5','居民姓名5',''),(136,'2024-04-06 04:47:36','问卷标题6','file/wenjuanhuidaTupian6.jpg,file/wenjuanhuidaTupian7.jpg,file/wenjuanhuidaTupian8.jpg','问题一6','是','问题二6','是','问题三6','是','问题四6','是','问题五6','是','居民账号6','居民姓名6',''),(1712380731898,'2024-04-06 05:18:51','问卷标题1','file/1712380670652.jpg','你是否服用任何营养补充剂或保健品？','是','你是否有眼部疾病或视力问题','否','你是否有高血压、高血糖或高血脂等慢性疾病？','是','你是否经常感到疲劳或无力？','否','你是否有特定的食物过敏','是','居民账号1','居民姓名1','正常');
/*!40000 ALTER TABLE `wenjuanhuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `yishengmima` varchar(200) NOT NULL COMMENT '医生密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` longtext COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `suoshuyiyuan` varchar(200) DEFAULT NULL COMMENT '所属医院',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `chushengdi` varchar(200) DEFAULT NULL COMMENT '出生地',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `wenzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '问诊状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (41,'2024-04-06 04:47:35','医生工号1','123456','姓名1','file/yishengZhaopian1.jpg','男','19819881111','441622200101010001','所属医院1','政治面貌1','出生地1','联系地址1','不可问诊'),(42,'2024-04-06 04:47:35','医生工号2','123456','姓名2','file/yishengZhaopian2.jpg','男','19819881112','441622200202020002','所属医院2','政治面貌2','出生地2','联系地址2','不可问诊'),(43,'2024-04-06 04:47:35','医生工号3','123456','姓名3','file/yishengZhaopian3.jpg','男','19819881113','441622200303030003','所属医院3','政治面貌3','出生地3','联系地址3','不可问诊'),(44,'2024-04-06 04:47:35','医生工号4','123456','姓名4','file/yishengZhaopian4.jpg','男','19819881114','441622200404040004','所属医院4','政治面貌4','出生地4','联系地址4','不可问诊'),(45,'2024-04-06 04:47:35','医生工号5','123456','姓名5','file/yishengZhaopian5.jpg','男','19819881115','441622200505050005','所属医院5','政治面貌5','出生地5','联系地址5','不可问诊'),(46,'2024-04-06 04:47:35','医生工号6','123456','姓名6','file/yishengZhaopian6.jpg','男','19819881116','441622200606060006','所属医院6','政治面貌6','出生地6','联系地址6','不可问诊');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanxinxi`
--

DROP TABLE IF EXISTS `yiyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanxinxi`
--

LOCK TABLES `yiyuanxinxi` WRITE;
/*!40000 ALTER TABLE `yiyuanxinxi` DISABLE KEYS */;
INSERT INTO `yiyuanxinxi` VALUES (81,'2024-04-06 04:47:36','医院名称1'),(82,'2024-04-06 04:47:36','医院名称2'),(83,'2024-04-06 04:47:36','医院名称3'),(84,'2024-04-06 04:47:36','医院名称4'),(85,'2024-04-06 04:47:36','医院名称5'),(86,'2024-04-06 04:47:36','医院名称6');
/*!40000 ALTER TABLE `yiyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 16:24:43
