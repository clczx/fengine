-- MySQL dump 10.13  Distrib 5.6.10, for osx10.7 (i386)
--
-- Host: localhost    Database: fengine
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Current Database: `fengine`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fengine` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fengine`;

--
-- Table structure for table `all_loan_items`
--

DROP TABLE IF EXISTS `all_loan_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_loan_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) NOT NULL,
  `loan_title` varchar(255) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `loan_term` int(11) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `min_investment` int(11) DEFAULT '0',
  `dest_url` varchar(1024) NOT NULL,
  `loan_type` varchar(50) DEFAULT NULL,
  `credit_rating` varchar(10) DEFAULT NULL,
  `site_id` varchar(10) NOT NULL DEFAULT '',
  `item_endtime` bigint(18) DEFAULT NULL,
  `progress_rate` int(11) DEFAULT NULL,
  `item_status` tinyint(3) NOT NULL,
  `overdue` tinyint(1) DEFAULT '0',
  `baddebt` tinyint(1) DEFAULT '0',
  `update_time` bigint(18) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_site_status` (`site_id`,`item_status`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_loan_items`
--

LOCK TABLES `all_loan_items` WRITE;
/*!40000 ALTER TABLE `all_loan_items` DISABLE KEYS */;
INSERT INTO `all_loan_items` VALUES (1,'13090418460053990501780016125814','站内周转 经常提起还款 多谢支持',100000,5,10,0,'Detail.aspx?sid=13090418460053990501780016125814','缺钱','19','my089',NULL,2,0,0,0,1378292168),(2,'13090418311127390830260015283703','短期周转2个月_1309041831',4000,2,11,0,'Detail.aspx?sid=13090418311127390830260015283703','缺钱','9','my089',NULL,22,0,0,0,1378292168),(3,'13090418082075790843310018164778','短期周转1个月_1309041808',18000,1,10,0,'Detail.aspx?sid=13090418082075790843310018164778','缺钱','18','my089',NULL,8,0,0,0,1378292169),(4,'13090418040383590861620016363423','短期周转1个月_1309041804',5000,1,10,0,'Detail.aspx?sid=13090418040383590861620016363423','缺钱','14','my089',NULL,0,0,0,0,1378292169),(5,'13090417340939890994100011751918','短期周转1个月_1309041736',5000,1,9,0,'Detail.aspx?sid=13090417340939890994100011751918','缺钱','9','my089',NULL,14,0,0,0,1378292169),(6,'13090417310144590430200013819453','短期周转1个月_1309041731',13600,1,10,0,'Detail.aspx?sid=13090417310144590430200013819453','缺钱','19','my089',NULL,32,0,0,0,1378292169),(7,'13081522382737790317000014932574','短期周转1个月_1309041715',30000,1,10,0,'Detail.aspx?sid=13081522382737790317000014932574','缺钱','14','my089',NULL,23,0,0,0,1378292169),(8,'13090415560611790407700013571612','短期周转3个月_1309041605',96000,3,11,0,'Detail.aspx?sid=13090415560611790407700013571612','缺钱','18','my089',NULL,32,0,0,0,1378292169),(9,'13090415512138290884250012607910','短期周转1个月_1309041551',3500,1,10,0,'Detail.aspx?sid=13090415512138290884250012607910','缺钱','7','my089',NULL,28,0,0,0,1378292169),(10,'13090415372882090743280011492942','净值安全标',9700,3,9,0,'Detail.aspx?sid=13090415372882090743280011492942','缺钱','16','my089',NULL,11,0,0,0,1378292169),(11,'24628','企业业务扩大，需资金周转，请多帮助',300000,12,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394899),(12,'24839','知名贸易型公司，需扩大经营，望支持',600000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394899),(13,'25601','优质企业员工购买大件物品',80000,36,17,0,'','PERSONAL','D1','dianrong',NULL,100,0,0,0,1378394899),(14,'25216','上市公司企业高管，装修新房，望支持',20000,18,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394899),(15,'25205','业内资深空调系统工程公司，新签大额合同，急需资金采购原材料',200000,18,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394899),(16,'24843','知名零售公司，需扩大经营，望支持',200000,12,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394899),(17,'24837','知名物业公司扩大业务，需融资望支持！',200000,12,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394899),(18,'24621','国家机关党委书记房屋装修需求资金，望支持',100000,18,19,0,'','PERSONAL','D5','dianrong',NULL,100,0,0,0,1378394899),(19,'24626','老牌企业为扩大生产需要资金支持',300000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394899),(20,'24811','大型化学公司继续扩大经营，第二次来贷款啦。有借有还，再借不难！',1000000,3,14,0,'','BUSINESS','B5','dianrong',NULL,100,0,0,0,1378394899),(21,'24806','本地大型物流公司，扩大经营需融资，望支持',300000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394899),(22,'24627','公司订单增多，急需资金周转，望支持！ ',500000,12,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394899),(23,'24255','国际品牌服饰公司，因大额订单，需要部分资金，望支持',250000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394899),(24,'24248','资产过亿企业现因公司业务扩大，需要小部分资金周转',800000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394899),(25,'24238','知名餐饮公司高层管理人员急需资金，望支持。',45000,12,19,0,'','PERSONAL','D5','dianrong',NULL,100,0,0,0,1378394899),(26,'24230','珠宝公司，已有大量订单，需融资  ',400000,12,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394899),(27,'23618','知名汽车模具生产型企业，扩大业务范围需要资金，希望多多支持，谢谢',200000,18,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394899),(28,'24023','大型热力电器设配公司短期资金周转',2000000,6,12,0,'','BUSINESS','B1','dianrong',NULL,100,0,0,0,1378394899),(29,'24207','医疗生产商因天热冰袋订单急增，需融资购买原材料，望支持。',120000,12,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394899),(30,'23827','公司业务扩大，需资金周转，望支持！',800000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394899),(31,'23822','外企经理贷款',250000,18,17,0,'','PERSONAL','D2','dianrong',NULL,100,0,0,0,1378394899),(32,'23055','沪上知名装修公司扩大经营',400000,12,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394899),(33,'23056','沪上知名旅行社，扩大经营需融资',600000,12,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394899),(34,'22408','沪上知名珠宝行业，扩大经营需融资，望支持',500000,12,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394900),(35,'16806','新网店进货资金周转',11000,12,19,0,'','PERSONAL','D5','dianrong',NULL,100,0,0,0,1378394900),(36,'23076','医药制造科技公司扩大生产需资金周转',400000,18,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(37,'23011','沪上知名家具公司扩大经营，需融资',400000,12,20,0,'','BUSINESS','E3','dianrong',NULL,100,0,0,0,1378394900),(38,'23016','知名餐饮企业扩大经营',800000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394900),(39,'22413','知名汽车4S店增加汽车修理设备',100000,18,20,0,'','BUSINESS','E3','dianrong',NULL,100,0,0,0,1378394900),(40,'22604','生产贸易型企业因购买原材料需要资金周转',300000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(41,'22417','大型化学品批发零售企业，高利润高回报',1000000,3,14,0,'','BUSINESS','B5','dianrong',NULL,100,0,0,0,1378394900),(42,'22206','市政环保公司购买设备，需要资金，望支持',200000,18,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(43,'22007','贸易型企业储备货物需要资金周转',400000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394900),(44,'21401','扩大企业经营',200000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(45,'22008','有借有还，短期借款，短借短还，',3000,6,22,0,'','PERSONAL','F2','dianrong',NULL,100,0,0,0,1378394900),(46,'22006','新接锅炉厂订单，需要融资购买原材料',60000,18,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(47,'21834','外企职员在职深造，望支持',20000,9,18,0,'','PERSONAL','D3','dianrong',NULL,100,0,0,0,1378394900),(48,'21831','新接某知名造船厂螺帽螺钉订单，需融资望支持。',400000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394900),(49,'21823','资深计算机企业扩大经营范围需要资金',300000,18,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394900),(50,'21802','塑胶制品公司资金周转',500000,12,22,0,'','BUSINESS','F1','dianrong',NULL,100,0,0,0,1378394900),(51,'21002','担保标-企业高管为爱装修新房',250000,18,20,0,'','PERSONAL','E2','dianrong',NULL,100,0,0,0,1378394900),(52,'20601','贸易型企业需要资金扩张',300000,18,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(53,'20402','制造型企业，增加产能需要资金',150000,18,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394900),(54,'21005','大型零售企业淡季资金周转，短借短还',1000000,3,21,0,'','BUSINESS','E4','dianrong',NULL,100,0,0,0,1378394900),(55,'20405','担保标-给小孩新房装修需要贷点钱',300000,18,13,0,'','PERSONAL','B4','dianrong',NULL,100,0,0,0,1378394900),(56,'20406','公司扩大经营购买原材料',150000,18,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(57,'18862','大型露天温泉度假村扩大经营',800000,12,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(58,'18858','资深广告策划公司，业务拓展有资金需求',300000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(59,'18220','知名宠物医院购医疗设备',350000,12,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(60,'18209','家庭日用品公司开发新产品',60000,9,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(61,'18002','连锁美容院购买美容器材',400000,12,19,0,'','BUSINESS','E1','dianrong',NULL,100,0,0,0,1378394900),(62,'17610','高新科技生产线流动设备采购',100000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(63,'17407','房产抵押，建筑公司临时资金周转。房产价值超过250万！',2000000,3,20,0,'','BUSINESS','E3','dianrong',NULL,100,0,0,0,1378394900),(64,'16217','上海本地、公司职员，收入稳定，因新房装修，还缺一部分资金，尝试借贷，望支持！',25000,9,20,0,'','PERSONAL','E3','dianrong',NULL,100,0,0,0,1378394900),(65,'16816','大型不锈钢厂开拓国际业务',600000,12,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(66,'16809','大型棉纺厂囤货需要资金',350000,18,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(67,'16808','高利润企业扩大规模需资金，企业经营9年，行业利润较高，名下有资产',600000,12,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(68,'16403','知名大型餐饮企业流动资金贷款',500000,18,18,0,'','BUSINESS','D3','dianrong',NULL,100,0,0,0,1378394900),(69,'16219','多家银行信用卡礼品配送商扩大经营',500000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(70,'16052','公司扩大经营，需资金周转',600000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(71,'16051','工程环保新材料需要进货',300000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(72,'14606','企业流动资金贷款',300000,18,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(73,'14604','资深物流公司扩大经营',300000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(74,'14407','餐饮公司扩大经营',200000,12,21,0,'','BUSINESS','E5','dianrong',NULL,100,0,0,0,1378394900),(75,'13601','购买玉器玉饰',200000,6,21,0,'','PERSONAL','E4','dianrong',NULL,100,0,0,0,1378394900),(76,'13203','想去东南亚度蜜月, 大家帮忙',10000,18,17,0,'','PERSONAL','D2','dianrong',NULL,100,0,0,0,1378394900),(77,'12602','出国留学生活费准备，请大家多帮忙',8400,18,18,0,'','PERSONAL','D4','dianrong',NULL,100,0,0,0,1378394900),(78,'13013','婚宴的费用需要借调',13000,18,18,0,'','PERSONAL','D3','dianrong',NULL,100,0,0,0,1378394900),(79,'13011','品牌服装店扩大经营',60000,12,20,0,'','BUSINESS','E2','dianrong',NULL,100,0,0,0,1378394900),(80,'12603','婚房装修帮忙啊',35000,12,15,0,'','PERSONAL','C3','dianrong',NULL,100,0,0,0,1378394900),(81,'12604','为了个人发展，想要读研，请支持！',11000,18,17,0,'','PERSONAL','D2','dianrong',NULL,100,0,0,0,1378394900),(82,'12206','沪上知名连锁小吃餐饮新店发展需流动资金',500000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(83,'11214','资金周转，望支持。',15000,12,10,0,'','PERSONAL','A3','dianrong',NULL,100,0,0,0,1378394900),(84,'11213','房屋装修',12000,12,12,0,'','PERSONAL','B1','dianrong',NULL,100,0,0,0,1378394900),(85,'11210','原材料进货',300000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(86,'11211','公司进货需要资金',300000,18,19,0,'','BUSINESS','D5','dianrong',NULL,100,0,0,0,1378394900),(87,'11203','经营性贷款',200000,18,18,0,'','BUSINESS','D4','dianrong',NULL,100,0,0,0,1378394900),(88,'11013','就差3000了，大家帮帮忙吧！',3000,12,9,0,'','PERSONAL','A1','dianrong',NULL,100,0,0,0,1378394900),(89,'11014','九州丰泽测试',2500,3,12,0,'','PERSONAL','B2','dianrong',NULL,100,0,0,0,1378394900),(90,'11016','九州丰泽测试',2500,12,9,0,'','PERSONAL','A1','dianrong',NULL,100,0,0,0,1378394900);
/*!40000 ALTER TABLE `all_loan_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apscheduler_jobs`
--

DROP TABLE IF EXISTS `apscheduler_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apscheduler_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trigger` blob NOT NULL,
  `func_ref` varchar(1024) NOT NULL,
  `args` blob NOT NULL,
  `kwargs` blob NOT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `misfire_grace_time` int(11) NOT NULL,
  `coalesce` tinyint(1) NOT NULL,
  `max_runs` int(11) DEFAULT NULL,
  `max_instances` int(11) DEFAULT NULL,
  `next_run_time` datetime NOT NULL,
  `runs` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apscheduler_jobs`
--

LOCK TABLES `apscheduler_jobs` WRITE;
/*!40000 ALTER TABLE `apscheduler_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `apscheduler_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_engine_jobs`
--

DROP TABLE IF EXISTS `index_engine_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_engine_jobs` (
  `job_name` varchar(50) NOT NULL,
  `update_time` bigint(18) NOT NULL,
  KEY `index_jobname` (`job_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_engine_jobs`
--

LOCK TABLES `index_engine_jobs` WRITE;
/*!40000 ALTER TABLE `index_engine_jobs` DISABLE KEYS */;
INSERT INTO `index_engine_jobs` VALUES ('index_job',1378468184);
/*!40000 ALTER TABLE `index_engine_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_items`
--

DROP TABLE IF EXISTS `loan_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_title` varchar(255) NOT NULL DEFAULT '',
  `loan_amount` int(11) NOT NULL,
  `loan_term` int(11) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `min_investment` int(11) DEFAULT '0',
  `dest_url` varchar(1024) NOT NULL,
  `loan_type` varchar(50) DEFAULT NULL,
  `credit_rating` varchar(10) DEFAULT NULL,
  `progress_rate` int(11) DEFAULT NULL,
  `site_id` varchar(10) NOT NULL DEFAULT '',
  `unique_id` varchar(255) NOT NULL,
  `item_endtime` bigint(18) DEFAULT NULL,
  `update_time` bigint(18) NOT NULL,
  `item_status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_site_status` (`site_id`,`item_status`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_items`
--

LOCK TABLES `loan_items` WRITE;
/*!40000 ALTER TABLE `loan_items` DISABLE KEYS */;
INSERT INTO `loan_items` VALUES (1,'企业业务扩大，需资金周转，请多帮助',300000,12,20,100,'','BUSINESS','E2',100,'dianrong','24628',1379045160,1378394899,0),(2,'知名贸易型公司，需扩大经营，望支持',600000,18,18,100,'','BUSINESS','D3',100,'dianrong','24839',1378892555,1378394899,0),(3,'优质企业员工购买大件物品',80000,36,17,100,'','PERSONAL','D1',100,'dianrong','25601',1379482452,1378394899,0),(4,'上市公司企业高管，装修新房，望支持',20000,18,19,100,'','BUSINESS','E1',100,'dianrong','25216',1379052898,1378394899,0),(5,'业内资深空调系统工程公司，新签大额合同，急需资金采购原材料',200000,18,18,100,'','BUSINESS','D4',100,'dianrong','25205',1378888119,1378394899,0),(6,'知名零售公司，需扩大经营，望支持',200000,12,19,100,'','BUSINESS','E1',100,'dianrong','24843',1378954226,1378394899,0),(7,'知名物业公司扩大业务，需融资望支持！',200000,12,19,100,'','BUSINESS','E1',100,'dianrong','24837',1378806463,1378394899,0),(8,'国家机关党委书记房屋装修需求资金，望支持',100000,18,19,100,'','PERSONAL','D5',100,'dianrong','24621',1378437664,1378394899,0),(9,'老牌企业为扩大生产需要资金支持',300000,12,18,100,'','BUSINESS','D4',100,'dianrong','24626',1378463207,1378394899,0),(10,'大型化学公司继续扩大经营，第二次来贷款啦。有借有还，再借不难！',1000000,3,14,100,'','BUSINESS','B5',100,'dianrong','24811',1377765255,1378394899,0),(11,'本地大型物流公司，扩大经营需融资，望支持',300000,18,18,100,'','BUSINESS','D3',100,'dianrong','24806',1378104709,1378394899,0),(12,'公司订单增多，急需资金周转，望支持！ ',500000,12,19,100,'','BUSINESS','D5',100,'dianrong','24627',1377766492,1378394899,0),(13,'国际品牌服饰公司，因大额订单，需要部分资金，望支持',250000,18,19,100,'','BUSINESS','D5',100,'dianrong','24255',1377876697,1378394899,0),(14,'资产过亿企业现因公司业务扩大，需要小部分资金周转',800000,12,18,100,'','BUSINESS','D4',100,'dianrong','24248',1377522392,1378394899,0),(15,'知名餐饮公司高层管理人员急需资金，望支持。',45000,12,19,100,'','PERSONAL','D5',100,'dianrong','24238',1377240287,1378394899,0),(16,'珠宝公司，已有大量订单，需融资  ',400000,12,19,100,'','BUSINESS','E1',100,'dianrong','24230',1378347665,1378394899,0),(17,'知名汽车模具生产型企业，扩大业务范围需要资金，希望多多支持，谢谢',200000,18,19,100,'','BUSINESS','E1',100,'dianrong','23618',1377506211,1378394899,0),(18,'大型热力电器设配公司短期资金周转',2000000,6,12,100,'','BUSINESS','B1',100,'dianrong','24023',1377069924,1378394899,0),(19,'医疗生产商因天热冰袋订单急增，需融资购买原材料，望支持。',120000,12,19,100,'','BUSINESS','D5',100,'dianrong','24207',1377500299,1378394899,0),(20,'公司业务扩大，需资金周转，望支持！',800000,12,18,100,'','BUSINESS','D4',100,'dianrong','23827',1376993092,1378394899,0),(21,'外企经理贷款',250000,18,17,100,'','PERSONAL','D2',100,'dianrong','23822',1376485305,1378394899,0),(22,'沪上知名装修公司扩大经营',400000,12,18,100,'','BUSINESS','D3',100,'dianrong','23055',1376485169,1378394899,0),(23,'沪上知名旅行社，扩大经营需融资',600000,12,18,100,'','BUSINESS','D3',100,'dianrong','23056',1376043542,1378394899,0),(24,'沪上知名珠宝行业，扩大经营需融资，望支持',500000,12,18,100,'','BUSINESS','D3',100,'dianrong','22408',1376390208,1378394900,0),(25,'新网店进货资金周转',11000,12,19,100,'','PERSONAL','D5',100,'dianrong','16806',1375774843,1378394900,0),(26,'医药制造科技公司扩大生产需资金周转',400000,18,20,100,'','BUSINESS','E2',100,'dianrong','23076',1375987924,1378394900,0),(27,'沪上知名家具公司扩大经营，需融资',400000,12,20,100,'','BUSINESS','E3',100,'dianrong','23011',1375987701,1378394900,0),(28,'知名餐饮企业扩大经营',800000,18,18,100,'','BUSINESS','D3',100,'dianrong','23016',1375774181,1378394900,0),(29,'知名汽车4S店增加汽车修理设备',100000,18,20,100,'','BUSINESS','E3',100,'dianrong','22413',1375350773,1378394900,0),(30,'生产贸易型企业因购买原材料需要资金周转',300000,12,18,100,'','BUSINESS','D4',100,'dianrong','22604',1375433790,1378394900,0),(31,'大型化学品批发零售企业，高利润高回报',1000000,3,14,100,'','BUSINESS','B5',100,'dianrong','22417',1375351198,1378394900,0),(32,'市政环保公司购买设备，需要资金，望支持',200000,18,18,100,'','BUSINESS','D4',100,'dianrong','22206',1375939660,1378394900,0),(33,'贸易型企业储备货物需要资金周转',400000,18,18,100,'','BUSINESS','D3',100,'dianrong','22007',1375250297,1378394900,0),(34,'扩大企业经营',200000,12,18,100,'','BUSINESS','D4',100,'dianrong','21401',1376036680,1378394900,0),(35,'有借有还，短期借款，短借短还，',3000,6,22,100,'','PERSONAL','F2',100,'dianrong','22008',1374645278,1378394900,0),(36,'新接锅炉厂订单，需要融资购买原材料',60000,18,20,100,'','BUSINESS','E2',100,'dianrong','22006',1375169604,1378394900,0),(37,'外企职员在职深造，望支持',20000,9,18,100,'','PERSONAL','D3',100,'dianrong','21834',1374221899,1378394900,0),(38,'新接某知名造船厂螺帽螺钉订单，需融资望支持。',400000,18,18,100,'','BUSINESS','D3',100,'dianrong','21831',1374744400,1378394900,0),(39,'资深计算机企业扩大经营范围需要资金',300000,18,19,100,'','BUSINESS','E1',100,'dianrong','21823',1375177764,1378394900,0),(40,'塑胶制品公司资金周转',500000,12,22,100,'','BUSINESS','F1',100,'dianrong','21802',1373882756,1378394900,0),(41,'担保标-企业高管为爱装修新房',250000,18,20,100,'','PERSONAL','E2',100,'dianrong','21002',1373682748,1378394900,0),(42,'贸易型企业需要资金扩张',300000,18,18,100,'','BUSINESS','D4',100,'dianrong','20601',1374832182,1378394900,0),(43,'制造型企业，增加产能需要资金',150000,18,19,100,'','BUSINESS','E1',100,'dianrong','20402',1374487491,1378394900,0),(44,'大型零售企业淡季资金周转，短借短还',1000000,3,21,100,'','BUSINESS','E4',100,'dianrong','21005',1373620975,1378394900,0),(45,'担保标-给小孩新房装修需要贷点钱',300000,18,13,100,'','PERSONAL','B4',100,'dianrong','20405',1373425738,1378394900,0),(46,'公司扩大经营购买原材料',150000,18,20,100,'','BUSINESS','E2',100,'dianrong','20406',1374216137,1378394900,0),(47,'大型露天温泉度假村扩大经营',800000,12,18,100,'','BUSINESS','D4',100,'dianrong','18862',1372931357,1378394900,0),(48,'资深广告策划公司，业务拓展有资金需求',300000,18,19,100,'','BUSINESS','D5',100,'dianrong','18858',1374218223,1378394900,0),(49,'知名宠物医院购医疗设备',350000,12,19,100,'','BUSINESS','D5',100,'dianrong','18220',1372760800,1378394900,0),(50,'家庭日用品公司开发新产品',60000,9,20,100,'','BUSINESS','E2',100,'dianrong','18209',1371975855,1378394900,0),(51,'连锁美容院购买美容器材',400000,12,19,100,'','BUSINESS','E1',100,'dianrong','18002',1371890412,1378394900,0),(52,'高新科技生产线流动设备采购',100000,18,19,100,'','BUSINESS','D5',100,'dianrong','17610',1371106791,1378394900,0),(53,'房产抵押，建筑公司临时资金周转。房产价值超过250万！',2000000,3,20,100,'','BUSINESS','E3',100,'dianrong','17407',1370598834,1378394900,0),(54,'上海本地、公司职员，收入稳定，因新房装修，还缺一部分资金，尝试借贷，望支持！',25000,9,20,100,'','PERSONAL','E3',100,'dianrong','16217',1371552672,1378394900,0),(55,'大型不锈钢厂开拓国际业务',600000,12,19,100,'','BUSINESS','D5',100,'dianrong','16816',1371107217,1378394900,0),(56,'大型棉纺厂囤货需要资金',350000,18,20,100,'','BUSINESS','E2',100,'dianrong','16809',1370339349,1378394900,0),(57,'高利润企业扩大规模需资金，企业经营9年，行业利润较高，名下有资产',600000,12,20,100,'','BUSINESS','E2',100,'dianrong','16808',1370337086,1378394900,0),(58,'知名大型餐饮企业流动资金贷款',500000,18,18,100,'','BUSINESS','D3',100,'dianrong','16403',1371106934,1378394900,0),(59,'多家银行信用卡礼品配送商扩大经营',500000,18,19,100,'','BUSINESS','D5',100,'dianrong','16219',1370336820,1378394900,0),(60,'公司扩大经营，需资金周转',600000,18,19,100,'','BUSINESS','D5',100,'dianrong','16052',1369812741,1378394900,0),(61,'工程环保新材料需要进货',300000,18,19,100,'','BUSINESS','D5',100,'dianrong','16051',1369720735,1378394900,0),(62,'企业流动资金贷款',300000,18,20,100,'','BUSINESS','E2',100,'dianrong','14606',1369824781,1378394900,0),(63,'资深物流公司扩大经营',300000,18,19,100,'','BUSINESS','D5',100,'dianrong','14604',1368202256,1378394900,0),(64,'餐饮公司扩大经营',200000,12,21,100,'','BUSINESS','E5',100,'dianrong','14407',1367424656,1378394900,0),(65,'购买玉器玉饰',200000,6,21,100,'','PERSONAL','E4',100,'dianrong','13601',1371529753,1378394900,0),(66,'想去东南亚度蜜月, 大家帮忙',10000,18,17,100,'','PERSONAL','D2',100,'dianrong','13203',1367856656,1378394900,0),(67,'出国留学生活费准备，请大家多帮忙',8400,18,18,100,'','PERSONAL','D4',100,'dianrong','12602',1367079056,1378394900,0),(68,'婚宴的费用需要借调',13000,18,18,100,'','PERSONAL','D3',100,'dianrong','13013',1367079056,1378394900,0),(69,'品牌服装店扩大经营',60000,12,20,100,'','BUSINESS','E2',100,'dianrong','13011',1367079056,1378394900,0),(70,'婚房装修帮忙啊',35000,12,15,100,'','PERSONAL','C3',100,'dianrong','12603',1366215056,1378394900,0),(71,'为了个人发展，想要读研，请支持！',11000,18,17,100,'','PERSONAL','D2',100,'dianrong','12604',1366215056,1378394900,0),(72,'沪上知名连锁小吃餐饮新店发展需流动资金',500000,18,19,100,'','BUSINESS','D5',100,'dianrong','12206',1365610256,1378394900,0),(73,'资金周转，望支持。',15000,12,10,100,'','PERSONAL','A3',100,'dianrong','11214',1365091856,1378394900,0),(74,'房屋装修',12000,12,12,100,'','PERSONAL','B1',100,'dianrong','11213',1365091856,1378394900,0),(75,'原材料进货',300000,18,19,100,'','BUSINESS','D5',100,'dianrong','11210',1364746256,1378394900,0),(76,'公司进货需要资金',300000,18,19,100,'','BUSINESS','D5',100,'dianrong','11211',1364746256,1378394900,0),(77,'经营性贷款',200000,18,18,100,'','BUSINESS','D4',100,'dianrong','11203',1364573456,1378394900,0),(78,'就差3000了，大家帮帮忙吧！',3000,12,9,100,'','PERSONAL','A1',100,'dianrong','11013',1364400656,1378394900,0),(79,'九州丰泽测试',2500,3,12,100,'','PERSONAL','B2',100,'dianrong','11014',1364832656,1378394900,0),(80,'九州丰泽测试',2500,12,9,100,'','PERSONAL','A1',100,'dianrong','11016',1364832656,1378394900,0);
/*!40000 ALTER TABLE `loan_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-08 21:01:11
