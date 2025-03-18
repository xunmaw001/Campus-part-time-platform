-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm7plgu
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='投诉反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-20 06:01:13',1,1,'提问1','回复1',1),(92,'2021-01-20 06:01:13',2,2,'提问2','回复2',2),(93,'2021-01-20 06:01:13',3,3,'提问3','回复3',3),(94,'2021-01-20 06:01:13',4,4,'提问4','回复4',4),(95,'2021-01-20 06:01:13',5,5,'提问5','回复5',5),(96,'2021-01-20 06:01:13',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm7plgu/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7plgu/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7plgu/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenjianzhi`
--

DROP TABLE IF EXISTS `discussremenjianzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenjianzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='热门兼职评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenjianzhi`
--

LOCK TABLES `discussremenjianzhi` WRITE;
/*!40000 ALTER TABLE `discussremenjianzhi` DISABLE KEYS */;
INSERT INTO `discussremenjianzhi` VALUES (131,'2021-01-20 06:01:13',1,1,'评论内容1','回复内容1'),(132,'2021-01-20 06:01:13',2,2,'评论内容2','回复内容2'),(133,'2021-01-20 06:01:13',3,3,'评论内容3','回复内容3'),(134,'2021-01-20 06:01:13',4,4,'评论内容4','回复内容4'),(135,'2021-01-20 06:01:13',5,5,'评论内容5','回复内容5'),(136,'2021-01-20 06:01:13',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussremenjianzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangjia`
--

DROP TABLE IF EXISTS `discussshangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商家评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangjia`
--

LOCK TABLES `discussshangjia` WRITE;
/*!40000 ALTER TABLE `discussshangjia` DISABLE KEYS */;
INSERT INTO `discussshangjia` VALUES (121,'2021-01-20 06:01:13',1,1,'评论内容1','回复内容1'),(122,'2021-01-20 06:01:13',2,2,'评论内容2','回复内容2'),(123,'2021-01-20 06:01:13',3,3,'评论内容3','回复内容3'),(124,'2021-01-20 06:01:13',4,4,'评论内容4','回复内容4'),(125,'2021-01-20 06:01:13',5,5,'评论内容5','回复内容5'),(126,'2021-01-20 06:01:13',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianzhijiedan`
--

DROP TABLE IF EXISTS `jianzhijiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianzhijiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) DEFAULT NULL COMMENT '兼职名称',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zongxinzi` varchar(200) DEFAULT NULL COMMENT '总薪资',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='兼职接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianzhijiedan`
--

LOCK TABLES `jianzhijiedan` WRITE;
/*!40000 ALTER TABLE `jianzhijiedan` DISABLE KEYS */;
INSERT INTO `jianzhijiedan` VALUES (51,'2021-01-20 06:01:13','兼职名称1','专业1','分类1','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian1.jpg','总薪资1','商家编号1','联系电话1','工作地点1','申请内容1','2021-01-20','学号1','学生姓名1','手机1','否',''),(52,'2021-01-20 06:01:13','兼职名称2','专业2','分类2','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian2.jpg','总薪资2','商家编号2','联系电话2','工作地点2','申请内容2','2021-01-20','学号2','学生姓名2','手机2','否',''),(53,'2021-01-20 06:01:13','兼职名称3','专业3','分类3','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian3.jpg','总薪资3','商家编号3','联系电话3','工作地点3','申请内容3','2021-01-20','学号3','学生姓名3','手机3','否',''),(54,'2021-01-20 06:01:13','兼职名称4','专业4','分类4','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian4.jpg','总薪资4','商家编号4','联系电话4','工作地点4','申请内容4','2021-01-20','学号4','学生姓名4','手机4','否',''),(55,'2021-01-20 06:01:13','兼职名称5','专业5','分类5','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian5.jpg','总薪资5','商家编号5','联系电话5','工作地点5','申请内容5','2021-01-20','学号5','学生姓名5','手机5','否',''),(56,'2021-01-20 06:01:13','兼职名称6','专业6','分类6','http://localhost:8080/ssm7plgu/upload/jianzhijiedan_tupian6.jpg','总薪资6','商家编号6','联系电话6','工作地点6','申请内容6','2021-01-20','学号6','学生姓名6','手机6','否','');
/*!40000 ALTER TABLE `jianzhijiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianzhirenwu`
--

DROP TABLE IF EXISTS `jianzhirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianzhirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) DEFAULT NULL COMMENT '兼职名称',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `renwumingcheng` varchar(200) NOT NULL COMMENT '任务名称',
  `renwuyaoqiu` varchar(200) DEFAULT NULL COMMENT '任务要求',
  `zongxinzi` varchar(200) DEFAULT NULL COMMENT '总薪资',
  `renwuneirong` longtext COMMENT '任务内容',
  `renwufujian` varchar(200) DEFAULT NULL COMMENT '任务附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='兼职任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianzhirenwu`
--

LOCK TABLES `jianzhirenwu` WRITE;
/*!40000 ALTER TABLE `jianzhirenwu` DISABLE KEYS */;
INSERT INTO `jianzhirenwu` VALUES (71,'2021-01-20 06:01:13','兼职名称1','商家编号1','任务名称1','任务要求1','总薪资1','任务内容1','','2021-01-20','学号1','学生姓名1'),(72,'2021-01-20 06:01:13','兼职名称2','商家编号2','任务名称2','任务要求2','总薪资2','任务内容2','','2021-01-20','学号2','学生姓名2'),(73,'2021-01-20 06:01:13','兼职名称3','商家编号3','任务名称3','任务要求3','总薪资3','任务内容3','','2021-01-20','学号3','学生姓名3'),(74,'2021-01-20 06:01:13','兼职名称4','商家编号4','任务名称4','任务要求4','总薪资4','任务内容4','','2021-01-20','学号4','学生姓名4'),(75,'2021-01-20 06:01:13','兼职名称5','商家编号5','任务名称5','任务要求5','总薪资5','任务内容5','','2021-01-20','学号5','学生姓名5'),(76,'2021-01-20 06:01:13','兼职名称6','商家编号6','任务名称6','任务要求6','总薪资6','任务内容6','','2021-01-20','学号6','学生姓名6');
/*!40000 ALTER TABLE `jianzhirenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-20 06:01:13','标题1','http://localhost:8080/ssm7plgu/upload/news_picture1.jpg','内容1'),(112,'2021-01-20 06:01:13','标题2','http://localhost:8080/ssm7plgu/upload/news_picture2.jpg','内容2'),(113,'2021-01-20 06:01:13','标题3','http://localhost:8080/ssm7plgu/upload/news_picture3.jpg','内容3'),(114,'2021-01-20 06:01:13','标题4','http://localhost:8080/ssm7plgu/upload/news_picture4.jpg','内容4'),(115,'2021-01-20 06:01:13','标题5','http://localhost:8080/ssm7plgu/upload/news_picture5.jpg','内容5'),(116,'2021-01-20 06:01:13','标题6','http://localhost:8080/ssm7plgu/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenjianzhi`
--

DROP TABLE IF EXISTS `remenjianzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenjianzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) NOT NULL COMMENT '兼职名称',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zongxinzi` int(11) NOT NULL COMMENT '总薪资',
  `zhangduanqi` varchar(200) DEFAULT NULL COMMENT '长短期',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `kaishishijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `gongzuoshizhang` int(11) NOT NULL COMMENT '工作时长',
  `jianzhiyaoqiu` varchar(200) DEFAULT NULL COMMENT '兼职要求',
  `jianzhijieshao` longtext COMMENT '兼职介绍',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='热门兼职';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenjianzhi`
--

LOCK TABLES `remenjianzhi` WRITE;
/*!40000 ALTER TABLE `remenjianzhi` DISABLE KEYS */;
INSERT INTO `remenjianzhi` VALUES (31,'2021-01-20 06:01:13','兼职名称1','专业1','分类1','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian1.jpg',1,'长期','工作地点1','工作时间1','开始时间1',1,'兼职要求1','兼职介绍1','商家编号1','商家名称1','联系人1','联系电话1','2021-01-20 14:01:13',1),(32,'2021-01-20 06:01:13','兼职名称2','专业2','分类2','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian2.jpg',2,'长期','工作地点2','工作时间2','开始时间2',2,'兼职要求2','兼职介绍2','商家编号2','商家名称2','联系人2','联系电话2','2021-01-20 14:01:13',2),(33,'2021-01-20 06:01:13','兼职名称3','专业3','分类3','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian3.jpg',3,'长期','工作地点3','工作时间3','开始时间3',3,'兼职要求3','兼职介绍3','商家编号3','商家名称3','联系人3','联系电话3','2021-01-20 14:01:13',3),(34,'2021-01-20 06:01:13','兼职名称4','专业4','分类4','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian4.jpg',4,'长期','工作地点4','工作时间4','开始时间4',4,'兼职要求4','兼职介绍4','商家编号4','商家名称4','联系人4','联系电话4','2021-01-20 14:01:13',4),(35,'2021-01-20 06:01:13','兼职名称5','专业5','分类5','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian5.jpg',5,'长期','工作地点5','工作时间5','开始时间5',5,'兼职要求5','兼职介绍5','商家编号5','商家名称5','联系人5','联系电话5','2021-01-20 14:01:13',5),(36,'2021-01-20 06:01:13','兼职名称6','专业6','分类6','http://localhost:8080/ssm7plgu/upload/remenjianzhi_tupian6.jpg',6,'长期','工作地点6','工作时间6','开始时间6',6,'兼职要求6','兼职介绍6','商家编号6','商家名称6','联系人6','联系电话6','2021-01-20 14:01:13',6);
/*!40000 ALTER TABLE `remenjianzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) NOT NULL COMMENT '商家编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `shangjialeixing` varchar(200) NOT NULL COMMENT '商家类型',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiabianhao` (`shangjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2021-01-20 06:01:13','商家1','123456','商家名称1','商家类型1','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian1.jpg','联系人1','13823888881','商家地址1','商家介绍1'),(22,'2021-01-20 06:01:13','商家2','123456','商家名称2','商家类型2','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian2.jpg','联系人2','13823888882','商家地址2','商家介绍2'),(23,'2021-01-20 06:01:13','商家3','123456','商家名称3','商家类型3','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian3.jpg','联系人3','13823888883','商家地址3','商家介绍3'),(24,'2021-01-20 06:01:13','商家4','123456','商家名称4','商家类型4','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian4.jpg','联系人4','13823888884','商家地址4','商家介绍4'),(25,'2021-01-20 06:01:13','商家5','123456','商家名称5','商家类型5','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian5.jpg','联系人5','13823888885','商家地址5','商家介绍5'),(26,'2021-01-20 06:01:13','商家6','123456','商家名称6','商家类型6','http://localhost:8080/ssm7plgu/upload/shangjia_shangjiatupian6.jpg','联系人6','13823888886','商家地址6','商家介绍6');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-20 06:01:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanchengpingjia`
--

DROP TABLE IF EXISTS `wanchengpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanchengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) DEFAULT NULL COMMENT '兼职名称',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `zongxinzi` varchar(200) DEFAULT NULL COMMENT '总薪资',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwuyaoqiu` varchar(200) DEFAULT NULL COMMENT '任务要求',
  `wanchengshijian` date DEFAULT NULL COMMENT '完成时间',
  `fujianxinxi` varchar(200) DEFAULT NULL COMMENT '附件信息',
  `jianzhipingjia` longtext NOT NULL COMMENT '兼职评价',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='完成评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanchengpingjia`
--

LOCK TABLES `wanchengpingjia` WRITE;
/*!40000 ALTER TABLE `wanchengpingjia` DISABLE KEYS */;
INSERT INTO `wanchengpingjia` VALUES (81,'2021-01-20 06:01:13','兼职名称1','商家编号1','总薪资1','任务名称1','任务要求1','2021-01-20','','兼职评价1','内容详情1','学号1','学生姓名1','否','','未支付'),(82,'2021-01-20 06:01:13','兼职名称2','商家编号2','总薪资2','任务名称2','任务要求2','2021-01-20','','兼职评价2','内容详情2','学号2','学生姓名2','否','','未支付'),(83,'2021-01-20 06:01:13','兼职名称3','商家编号3','总薪资3','任务名称3','任务要求3','2021-01-20','','兼职评价3','内容详情3','学号3','学生姓名3','否','','未支付'),(84,'2021-01-20 06:01:13','兼职名称4','商家编号4','总薪资4','任务名称4','任务要求4','2021-01-20','','兼职评价4','内容详情4','学号4','学生姓名4','否','','未支付'),(85,'2021-01-20 06:01:13','兼职名称5','商家编号5','总薪资5','任务名称5','任务要求5','2021-01-20','','兼职评价5','内容详情5','学号5','学生姓名5','否','','未支付'),(86,'2021-01-20 06:01:13','兼职名称6','商家编号6','总薪资6','任务名称6','任务要求6','2021-01-20','','兼职评价6','内容详情6','学号6','学生姓名6','否','','未支付');
/*!40000 ALTER TABLE `wanchengpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (41,'2021-01-20 06:01:13','学生1','123456','学生姓名1','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang1.jpg','专业1','13823888881','773890001@qq.com'),(42,'2021-01-20 06:01:13','学生2','123456','学生姓名2','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang2.jpg','专业2','13823888882','773890002@qq.com'),(43,'2021-01-20 06:01:13','学生3','123456','学生姓名3','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang3.jpg','专业3','13823888883','773890003@qq.com'),(44,'2021-01-20 06:01:13','学生4','123456','学生姓名4','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang4.jpg','专业4','13823888884','773890004@qq.com'),(45,'2021-01-20 06:01:13','学生5','123456','学生姓名5','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang5.jpg','专业5','13823888885','773890005@qq.com'),(46,'2021-01-20 06:01:13','学生6','123456','学生姓名6','男','http://localhost:8080/ssm7plgu/upload/xuesheng_touxiang6.jpg','专业6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengzixun`
--

DROP TABLE IF EXISTS `xueshengzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '咨询标题',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `zixunneirong` longtext COMMENT '咨询内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengzixun`
--

LOCK TABLES `xueshengzixun` WRITE;
/*!40000 ALTER TABLE `xueshengzixun` DISABLE KEYS */;
INSERT INTO `xueshengzixun` VALUES (61,'2021-01-20 06:01:13','咨询标题1','商家编号1','商家名称1','2021-01-20','咨询内容1','学号1','学生姓名1','手机1','否',''),(62,'2021-01-20 06:01:13','咨询标题2','商家编号2','商家名称2','2021-01-20','咨询内容2','学号2','学生姓名2','手机2','否',''),(63,'2021-01-20 06:01:13','咨询标题3','商家编号3','商家名称3','2021-01-20','咨询内容3','学号3','学生姓名3','手机3','否',''),(64,'2021-01-20 06:01:13','咨询标题4','商家编号4','商家名称4','2021-01-20','咨询内容4','学号4','学生姓名4','手机4','否',''),(65,'2021-01-20 06:01:13','咨询标题5','商家编号5','商家名称5','2021-01-20','咨询内容5','学号5','学生姓名5','手机5','否',''),(66,'2021-01-20 06:01:13','咨询标题6','商家编号6','商家名称6','2021-01-20','咨询内容6','学号6','学生姓名6','手机6','否','');
/*!40000 ALTER TABLE `xueshengzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanye` (`zhuanye`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (11,'2021-01-20 06:01:13','专业1'),(12,'2021-01-20 06:01:13','专业2'),(13,'2021-01-20 06:01:13','专业3'),(14,'2021-01-20 06:01:13','专业4'),(15,'2021-01-20 06:01:13','专业5'),(16,'2021-01-20 06:01:13','专业6');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 15:08:41
