# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 127.0.0.1    Database: m_department
# ------------------------------------------------------
# Server version 5.5.30

#
# Source for table m_answertie
#

DROP TABLE IF EXISTS `m_answertie`;
CREATE TABLE `m_answertie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieid` int(11) DEFAULT NULL COMMENT '帖子id',
  `limits` int(11) DEFAULT NULL COMMENT '1:用户2:医生',
  `authorid` int(11) DEFAULT NULL COMMENT '作者id',
  `content` varchar(255) DEFAULT NULL COMMENT '回帖内容',
  `relaytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '回帖时间',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `name` varchar(50) DEFAULT NULL COMMENT '回复者名字',
  PRIMARY KEY (`id`),
  KEY `tieid` (`tieid`),
  KEY `limits` (`limits`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='回帖';

#
# Dumping data for table m_answertie
#

LOCK TABLES `m_answertie` WRITE;
/*!40000 ALTER TABLE `m_answertie` DISABLE KEYS */;
INSERT INTO `m_answertie` VALUES (1,20,1,12,'dasdadad','2015-11-05 20:33:46',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (2,20,1,12,'vxcvxcv','2015-11-05 20:34:55',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (3,20,1,12,'评论评论评论评论论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论论评论评论评论评论评论评论评论 评论评论评论评论评论评论评论评论论评论评论评论评论论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论','2015-11-05 20:35:00',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (4,20,1,12,'dasdasda','2015-11-05 21:24:38',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (5,20,1,12,'dasdasda','2015-11-05 21:24:44',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (6,20,1,12,'dasdasda','2015-11-05 21:24:46',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (7,20,1,12,'打死打打大师大师打死打打','2015-11-05 21:37:30',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (8,20,1,12,'第三方斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬上','2015-11-05 21:37:36',NULL,'fly123');
INSERT INTO `m_answertie` VALUES (9,20,1,12,'打死打打','2015-11-05 21:37:50',NULL,'fly123');
/*!40000 ALTER TABLE `m_answertie` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_appointment
#

DROP TABLE IF EXISTS `m_appointment`;
CREATE TABLE `m_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `apinumber` varchar(255) DEFAULT NULL COMMENT '预约号',
  `apitime` varchar(255) DEFAULT NULL COMMENT '预约时间段',
  `apidepartment` int(11) DEFAULT NULL COMMENT '预约科室',
  `content` varchar(255) DEFAULT NULL COMMENT '预约内容',
  `regtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生成时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `doctorid` (`doctorid`),
  KEY `apidepartment` (`apidepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约表';

#
# Dumping data for table m_appointment
#

LOCK TABLES `m_appointment` WRITE;
/*!40000 ALTER TABLE `m_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_appointment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_assess
#

DROP TABLE IF EXISTS `m_assess`;
CREATE TABLE `m_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointmentid` int(11) DEFAULT NULL COMMENT '挂号id',
  `fwtdscores` float(6,3) NOT NULL DEFAULT '0.000' COMMENT '服务态度得分',
  `jzgxscores` float(6,3) NOT NULL DEFAULT '0.000' COMMENT '就诊功效得分',
  `jzshscores` float(6,3) NOT NULL DEFAULT '0.000' COMMENT '就诊实惠得分',
  `totalscores` float(6,3) NOT NULL DEFAULT '0.000' COMMENT '总得分',
  `suggestions` varchar(255) DEFAULT NULL COMMENT '患者建议',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  PRIMARY KEY (`id`),
  KEY `appointmentid` (`appointmentid`),
  KEY `userid` (`userid`),
  KEY `doctorid` (`doctorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户评价表';

#
# Dumping data for table m_assess
#

LOCK TABLES `m_assess` WRITE;
/*!40000 ALTER TABLE `m_assess` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_assess` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_department
#

DROP TABLE IF EXISTS `m_department`;
CREATE TABLE `m_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '科室名称',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '科室介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='科室表';

#
# Dumping data for table m_department
#

LOCK TABLES `m_department` WRITE;
/*!40000 ALTER TABLE `m_department` DISABLE KEYS */;
INSERT INTO `m_department` VALUES (1,'心血管内科',NULL);
INSERT INTO `m_department` VALUES (2,'神经内科',NULL);
INSERT INTO `m_department` VALUES (3,'呼吸内科',NULL);
INSERT INTO `m_department` VALUES (4,'肾内科',NULL);
INSERT INTO `m_department` VALUES (5,'内分泌科',NULL);
INSERT INTO `m_department` VALUES (6,'消化内科',NULL);
INSERT INTO `m_department` VALUES (7,'血液内科',NULL);
INSERT INTO `m_department` VALUES (8,'急诊科',NULL);
INSERT INTO `m_department` VALUES (9,'普外科',NULL);
INSERT INTO `m_department` VALUES (10,'泌尿外科',NULL);
INSERT INTO `m_department` VALUES (11,'心胸外科',NULL);
INSERT INTO `m_department` VALUES (12,'肝胆外科',NULL);
INSERT INTO `m_department` VALUES (13,'骨外科',NULL);
INSERT INTO `m_department` VALUES (14,'神经外科',NULL);
INSERT INTO `m_department` VALUES (15,'脊椎外科',NULL);
INSERT INTO `m_department` VALUES (16,'整型外科',NULL);
INSERT INTO `m_department` VALUES (17,'妇产科',NULL);
INSERT INTO `m_department` VALUES (18,'儿科',NULL);
INSERT INTO `m_department` VALUES (19,'儿童保健科',NULL);
INSERT INTO `m_department` VALUES (20,'眼科',NULL);
INSERT INTO `m_department` VALUES (21,'麻醉科',NULL);
INSERT INTO `m_department` VALUES (22,'重症医学科',NULL);
INSERT INTO `m_department` VALUES (23,'感染性疾病科',NULL);
INSERT INTO `m_department` VALUES (24,'功能科',NULL);
INSERT INTO `m_department` VALUES (25,'检验科',NULL);
INSERT INTO `m_department` VALUES (26,'保健科',NULL);
INSERT INTO `m_department` VALUES (27,'口腔科',NULL);
INSERT INTO `m_department` VALUES (28,'耳鼻喉科',NULL);
INSERT INTO `m_department` VALUES (29,'皮肤科',NULL);
INSERT INTO `m_department` VALUES (30,'康复骨伤科',NULL);
INSERT INTO `m_department` VALUES (31,'肿瘤外科',NULL);
INSERT INTO `m_department` VALUES (32,'肿瘤内科',NULL);
INSERT INTO `m_department` VALUES (33,'中医科',NULL);
INSERT INTO `m_department` VALUES (34,'放射科',NULL);
/*!40000 ALTER TABLE `m_department` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_distribute
#

DROP TABLE IF EXISTS `m_distribute`;
CREATE TABLE `m_distribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fwtdscale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '服务态度比例',
  `jzgxscale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '就诊功效比例',
  `jzshscale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '就诊实惠比例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='综合得分比例分配';

#
# Dumping data for table m_distribute
#

LOCK TABLES `m_distribute` WRITE;
/*!40000 ALTER TABLE `m_distribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_distribute` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_doctor
#

DROP TABLE IF EXISTS `m_doctor`;
CREATE TABLE `m_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `certnum` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `profession` varchar(255) DEFAULT NULL COMMENT '职位',
  `department` int(11) DEFAULT NULL COMMENT '科室',
  `worknum` varchar(255) DEFAULT NULL COMMENT '工作证件号',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `career` varchar(255) DEFAULT NULL COMMENT '职业生涯',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '0:男,1:女',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(255) DEFAULT NULL COMMENT '号码',
  `curenum` int(11) DEFAULT NULL COMMENT '就诊次数',
  `monthscores` int(11) DEFAULT NULL COMMENT '月综合得分',
  `yearscores` int(11) DEFAULT NULL COMMENT '年综合得分',
  `popularynum` int(11) DEFAULT NULL COMMENT '人气值',
  `activitynum` int(11) DEFAULT NULL COMMENT '活跃值',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '医生自我介绍',
  `glory` varchar(255) DEFAULT NULL COMMENT '荣耀',
  `limits` int(11) NOT NULL DEFAULT '2' COMMENT '权限',
  `photourl` varchar(255) DEFAULT '/manage/style/image/default.jpg' COMMENT '照片地址',
  PRIMARY KEY (`id`),
  KEY `limits` (`limits`),
  KEY `department` (`department`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='医生表';

#
# Dumping data for table m_doctor
#

LOCK TABLES `m_doctor` WRITE;
/*!40000 ALTER TABLE `m_doctor` DISABLE KEYS */;
INSERT INTO `m_doctor` VALUES (1,'syzhen',NULL,'Ty05QvRHtpXznm/uafeiMg==',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'/manage/style/image/default.jpg');
/*!40000 ALTER TABLE `m_doctor` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_doctormsg
#

DROP TABLE IF EXISTS `m_doctormsg`;
CREATE TABLE `m_doctormsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorId` int(11) DEFAULT NULL COMMENT '医生id',
  `isready` tinyint(3) DEFAULT '0' COMMENT '0:未读,1:已读',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `sendtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发送时间',
  `userId` int(11) DEFAULT NULL COMMENT '发送者用户id',
  PRIMARY KEY (`id`),
  KEY `doctorId` (`doctorId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生消息表';

#
# Dumping data for table m_doctormsg
#

LOCK TABLES `m_doctormsg` WRITE;
/*!40000 ALTER TABLE `m_doctormsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_doctormsg` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_history
#

DROP TABLE IF EXISTS `m_history`;
CREATE TABLE `m_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '病例内容',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='病例表';

#
# Dumping data for table m_history
#

LOCK TABLES `m_history` WRITE;
/*!40000 ALTER TABLE `m_history` DISABLE KEYS */;
INSERT INTO `m_history` VALUES (1,NULL,'a');
/*!40000 ALTER TABLE `m_history` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_limits
#

DROP TABLE IF EXISTS `m_limits`;
CREATE TABLE `m_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitsname` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `limit` tinyint(3) DEFAULT '1' COMMENT '权限等级',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `limit` (`limit`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='权限表';

#
# Dumping data for table m_limits
#

LOCK TABLES `m_limits` WRITE;
/*!40000 ALTER TABLE `m_limits` DISABLE KEYS */;
INSERT INTO `m_limits` VALUES (1,'用户',1,'用户管理权限');
INSERT INTO `m_limits` VALUES (2,'医生',2,'医生管里权限');
INSERT INTO `m_limits` VALUES (3,'医院',3,'医院管理权限');
INSERT INTO `m_limits` VALUES (4,'卫生局',4,'卫生局管理权限');
INSERT INTO `m_limits` VALUES (5,'系统管理员',5,'系统管理员权限');
INSERT INTO `m_limits` VALUES (6,'备注权限',6,'备注');
/*!40000 ALTER TABLE `m_limits` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_manager
#

DROP TABLE IF EXISTS `m_manager`;
CREATE TABLE `m_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `limits` int(11) DEFAULT NULL COMMENT '权限',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `limits` (`limits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

#
# Dumping data for table m_manager
#

LOCK TABLES `m_manager` WRITE;
/*!40000 ALTER TABLE `m_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_manager` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_news
#

DROP TABLE IF EXISTS `m_news`;
CREATE TABLE `m_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `categoryid` int(11) DEFAULT NULL COMMENT '新闻类别',
  `url` varchar(255) DEFAULT NULL COMMENT '新闻url',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '新闻描述',
  `releasetime` date NOT NULL DEFAULT '0000-00-00' COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `categoryid` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='新闻表';

#
# Dumping data for table m_news
#

LOCK TABLES `m_news` WRITE;
/*!40000 ALTER TABLE `m_news` DISABLE KEYS */;
INSERT INTO `m_news` VALUES (1,'江西省儿童医院等代表夺得第一届全国细菌耐药监测“中星杯”知识!',1,'http://www.120news.org/a/jiankang/15041.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (2,'台医师：喝咖啡治头痛不一定有效!',1,'http://www.120news.org/a/jiankang/15040.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (3,'雀巢健康儿童嘉年华活动在郑州成功举办!',1,'http://www.120news.org/a/jiankang/15038.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (4,'薛湖镇举办妇幼保健知识培训讲座!',1,'http://www.120news.org/a/jiankang/15035.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (5,'中医药不必用“诺奖”为自己贴金!',1,'http://www.120news.org/a/yiliao/20151013/14724.html',NULL,'2015-10-13');
INSERT INTO `m_news` VALUES (6,'铜陵：省级远程医疗示范基地落户市立医院!',1,'http://www.120news.org/a/yiliao/20151013/14720.html',NULL,'2015-10-13');
INSERT INTO `m_news` VALUES (7,'80%政府定价取消 医疗服务价格改革年内试点!',1,'http://www.120news.org/a/redian/14854.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (8,'【健康教育】胰腺癌的防治!',1,'http://www.120news.org/a/jiankang/15034.html',NULL,'2015-10-12');
INSERT INTO `m_news` VALUES (9,'呼吁：同性恋不需要被治疗!',1,'http://www.120news.org/a/redian/14857.html',NULL,'2015-10-13');
INSERT INTO `m_news` VALUES (10,'医疗服务价格改革意见有望年内下发!',1,'http://www.120news.org/a/redian/14852.html',NULL,'2015-10-22');
INSERT INTO `m_news` VALUES (11,'【健康教育】胰腺癌的防治!',2,'http://www.120news.org/a/jiankang/15034.html',NULL,'2015-10-12');
INSERT INTO `m_news` VALUES (12,'呼吁：同性恋不需要被治疗!',2,'http://www.120news.org/a/redian/14857.html',NULL,'2015-10-13');
INSERT INTO `m_news` VALUES (13,'铜陵：省级远程医疗示范基地落户市立医院!',2,'http://www.120news.org/a/yiliao/20151013/14720.html',NULL,'2015-10-13');
/*!40000 ALTER TABLE `m_news` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_newscategory
#

DROP TABLE IF EXISTS `m_newscategory`;
CREATE TABLE `m_newscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '类目名称',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻类目表';

#
# Dumping data for table m_newscategory
#

LOCK TABLES `m_newscategory` WRITE;
/*!40000 ALTER TABLE `m_newscategory` DISABLE KEYS */;
INSERT INTO `m_newscategory` VALUES (1,'新闻','热门医疗新闻');
INSERT INTO `m_newscategory` VALUES (2,'政策','医疗政策');
INSERT INTO `m_newscategory` VALUES (3,'话题','热门话题');
/*!40000 ALTER TABLE `m_newscategory` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_regist
#

DROP TABLE IF EXISTS `m_regist`;
CREATE TABLE `m_regist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ghnumber` varchar(255) NOT NULL DEFAULT '' COMMENT '挂号号码',
  `ghtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '挂号时间',
  `userId` int(11) DEFAULT NULL COMMENT '挂号用户',
  `doctorId` int(11) DEFAULT NULL COMMENT '挂号医生',
  `ksId` int(11) DEFAULT NULL COMMENT '挂号科室',
  `content` varchar(255) DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `cureprocess` varchar(500) DEFAULT NULL COMMENT '治疗过程',
  PRIMARY KEY (`id`),
  KEY `doctorId` (`doctorId`),
  KEY `userId` (`userId`),
  KEY `ksId` (`ksId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='挂号表';

#
# Dumping data for table m_regist
#

LOCK TABLES `m_regist` WRITE;
/*!40000 ALTER TABLE `m_regist` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_regist` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_staticres
#

DROP TABLE IF EXISTS `m_staticres`;
CREATE TABLE `m_staticres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicalname` varchar(255) DEFAULT NULL COMMENT '医院名称',
  `medicalurl` varchar(255) DEFAULT NULL COMMENT '医院url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='静态医院资源表';

#
# Dumping data for table m_staticres
#

LOCK TABLES `m_staticres` WRITE;
/*!40000 ALTER TABLE `m_staticres` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_staticres` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_tie
#

DROP TABLE IF EXISTS `m_tie`;
CREATE TABLE `m_tie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `limits` int(11) DEFAULT NULL COMMENT '1:用户,2:医生',
  `authorid` int(11) DEFAULT NULL COMMENT '医生id',
  `name` varchar(50) DEFAULT NULL COMMENT '发帖者名字',
  `kemu` varchar(50) DEFAULT NULL COMMENT '科目',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `pubtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发帖时间',
  `jiajing` tinyint(1) DEFAULT '0' COMMENT '0:未加精,1:加精',
  `zhiding` tinyint(1) DEFAULT '0' COMMENT '0:未置顶,1:置顶',
  `ifpermit` int(11) DEFAULT '0' COMMENT '是否结贴',
  `dengji` varchar(20) DEFAULT '3' COMMENT '结贴的等级：优，良，一般，差',
  `beizhu` varchar(20) DEFAULT NULL COMMENT '科目类别',
  `znumb` int(11) DEFAULT '0' COMMENT '赞的次数',
  PRIMARY KEY (`id`),
  KEY `limits` (`limits`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户帖子';

#
# Dumping data for table m_tie
#

LOCK TABLES `m_tie` WRITE;
/*!40000 ALTER TABLE `m_tie` DISABLE KEYS */;
INSERT INTO `m_tie` VALUES (1,'123',NULL,NULL,NULL,'儿科','43432','2015-11-03 22:35:56',0,0,1,'1','18',1);
INSERT INTO `m_tie` VALUES (2,'123',NULL,NULL,NULL,'儿科','43424','2015-11-04 08:28:40',0,1,1,'3','18',1);
INSERT INTO `m_tie` VALUES (3,'儿童感冒',NULL,NULL,NULL,'儿科','热认为','2015-11-04 08:29:35',0,0,1,'2','18',1);
INSERT INTO `m_tie` VALUES (4,'儿童感冒',NULL,NULL,NULL,'儿科','热认为','2015-11-04 08:34:06',1,1,1,'3','18',0);
INSERT INTO `m_tie` VALUES (5,'小孩发热',NULL,NULL,NULL,'儿科','怎么发是','2015-11-04 08:34:41',0,0,1,'4','18',1);
INSERT INTO `m_tie` VALUES (6,'小孩发热',1,12,'fly123','儿科','怎么发是','2015-11-04 08:37:41',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (7,'小孩长痱子',1,12,'fly123','儿科','肿么办','2015-11-04 08:38:13',1,1,1,'1','18',10);
INSERT INTO `m_tie` VALUES (8,'小二咳嗽怎么办',1,12,'fly123','儿科','求帮助','2015-11-05 09:24:01',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (9,'小二咳嗽怎么办',1,12,'fly123','儿科','求帮助','2015-11-05 09:25:22',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (10,'小二咳嗽怎么办',1,12,'fly123','放射科','求帮助','2015-11-05 09:36:06',0,0,1,'3','5',0);
INSERT INTO `m_tie` VALUES (11,'312312',1,12,'fly123','儿科','喂喂喂','2015-11-05 09:36:23',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (12,'312312',1,12,'fly123','儿科','喂喂喂','2015-11-05 09:38:24',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (13,'小儿长痱子',1,12,'fly123','儿科','好多啊！！','2015-11-05 09:38:58',0,0,1,'3','18',0);
INSERT INTO `m_tie` VALUES (14,'123',NULL,NULL,NULL,'儿科','43432','2015-11-03 22:35:56',0,0,1,'1','18',0);
INSERT INTO `m_tie` VALUES (15,'123',NULL,NULL,NULL,'儿科','43424','2015-11-04 08:28:40',0,1,1,'3','18',0);
INSERT INTO `m_tie` VALUES (16,'儿童感冒',NULL,NULL,NULL,'儿科','热认为','2015-11-04 08:29:35',0,0,1,'2','18',0);
INSERT INTO `m_tie` VALUES (17,'儿童感冒',NULL,NULL,NULL,'儿科','热认为','2015-11-04 08:34:06',1,1,0,'3','18',0);
INSERT INTO `m_tie` VALUES (18,'小孩发热',NULL,NULL,NULL,'儿科','怎么发是','2015-11-04 08:34:41',0,0,0,'4','18',0);
INSERT INTO `m_tie` VALUES (19,'小孩发热',1,12,'fly123','儿科','怎么发是','2015-11-04 08:37:41',0,0,0,'3','18',0);
INSERT INTO `m_tie` VALUES (20,'小孩长痱子',1,12,'fly123','儿科','肿么办','2015-11-04 08:38:13',1,1,0,'1','18',21);
INSERT INTO `m_tie` VALUES (21,'小二咳嗽怎么办',1,12,'fly123','儿科','求帮助','2015-11-05 09:24:01',0,0,0,'3','18',0);
INSERT INTO `m_tie` VALUES (22,'小二咳嗽怎么办',1,12,'fly123','儿科','求帮助','2015-11-05 09:25:22',0,0,0,'3','18',0);
INSERT INTO `m_tie` VALUES (23,'小二咳嗽怎么办',1,12,'fly123','放射科','求帮助','2015-11-05 09:36:06',0,0,0,'3','5',0);
INSERT INTO `m_tie` VALUES (24,'312312',1,12,'fly123','儿科','喂喂喂','2015-11-05 09:36:23',0,0,0,'3','18',0);
INSERT INTO `m_tie` VALUES (25,'312312',1,12,'fly123','儿科','喂喂喂','2015-11-05 09:38:24',0,0,0,'3','18',0);
INSERT INTO `m_tie` VALUES (26,'小儿长痱子',1,12,'fly123','儿科','好多啊！！','2015-11-05 09:38:58',0,0,0,'3','18',0);
/*!40000 ALTER TABLE `m_tie` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_user
#

DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `medicalnum` varchar(255) DEFAULT NULL COMMENT '医疗号',
  `certnum` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `regtime` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '0:男,1:女,2:未知',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT NULL COMMENT '住址',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `limits` int(3) DEFAULT '1' COMMENT '用户权限',
  `descriptions` varchar(255) DEFAULT NULL COMMENT '自我介绍',
  `photourl` varchar(255) DEFAULT '/web/style/image/default.jpg' COMMENT '用户照片',
  PRIMARY KEY (`id`),
  KEY `limits` (`limits`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Dumping data for table m_user
#

LOCK TABLES `m_user` WRITE;
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` VALUES (11,'hkc2b','sdf','Ty05QvRHtpXznm/uafeiMg==',NULL,NULL,'2015-11-01 21:42:13',1,123,'123','ewrwe','89078979@qq.com',NULL,NULL,NULL);
INSERT INTO `m_user` VALUES (12,'fly123','樊质军','ETu5ZhVz0LHKzFlhWxnHpg==',NULL,NULL,'2015-11-03 23:04:33',0,20,'湖北黄石','18271692863','362483167@qq.com',1,NULL,NULL);
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_usermsg
#

DROP TABLE IF EXISTS `m_usermsg`;
CREATE TABLE `m_usermsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `isready` tinyint(3) NOT NULL DEFAULT '0' COMMENT '信息是否阅读,0: 未读,1:已读',
  `content` varchar(255) DEFAULT NULL COMMENT '信息内容',
  `sendtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发送时间',
  `doctorId` int(11) DEFAULT NULL COMMENT '发送者医生id',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `doctorId` (`doctorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户消息表';

#
# Dumping data for table m_usermsg
#

LOCK TABLES `m_usermsg` WRITE;
/*!40000 ALTER TABLE `m_usermsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_usermsg` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table m_zan
#

DROP TABLE IF EXISTS `m_zan`;
CREATE TABLE `m_zan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limits` int(11) DEFAULT NULL COMMENT '1:用户2:医生',
  `authorid` int(11) DEFAULT NULL COMMENT '作者Id',
  `tieid` int(11) DEFAULT NULL COMMENT '帖子id',
  PRIMARY KEY (`id`),
  KEY `limits` (`limits`),
  KEY `tieid` (`tieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赞';

#
# Dumping data for table m_zan
#

LOCK TABLES `m_zan` WRITE;
/*!40000 ALTER TABLE `m_zan` DISABLE KEYS */;
INSERT INTO `m_zan` VALUES (8,1,12,20);
INSERT INTO `m_zan` VALUES (9,1,12,2);
INSERT INTO `m_zan` VALUES (10,1,12,3);
INSERT INTO `m_zan` VALUES (11,1,12,5);
/*!40000 ALTER TABLE `m_zan` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table m_answertie
#

ALTER TABLE `m_answertie`
ADD CONSTRAINT `m_answertie_ibfk_1` FOREIGN KEY (`tieid`) REFERENCES `m_tie` (`id`),
ADD CONSTRAINT `m_answertie_ibfk_2` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`);

#
#  Foreign keys for table m_appointment
#

ALTER TABLE `m_appointment`
ADD CONSTRAINT `m_appointment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `m_user` (`id`),
ADD CONSTRAINT `m_appointment_ibfk_2` FOREIGN KEY (`doctorid`) REFERENCES `m_doctor` (`id`),
ADD CONSTRAINT `m_appointment_ibfk_3` FOREIGN KEY (`apidepartment`) REFERENCES `m_department` (`id`);

#
#  Foreign keys for table m_assess
#

ALTER TABLE `m_assess`
ADD CONSTRAINT `m_assess_ibfk_1` FOREIGN KEY (`appointmentid`) REFERENCES `m_appointment` (`id`),
ADD CONSTRAINT `m_assess_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `m_user` (`id`),
ADD CONSTRAINT `m_assess_ibfk_3` FOREIGN KEY (`doctorid`) REFERENCES `m_doctor` (`id`);

#
#  Foreign keys for table m_doctor
#

ALTER TABLE `m_doctor`
ADD CONSTRAINT `m_doctor_ibfk_1` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`),
ADD CONSTRAINT `m_doctor_ibfk_2` FOREIGN KEY (`department`) REFERENCES `m_department` (`id`);

#
#  Foreign keys for table m_doctormsg
#

ALTER TABLE `m_doctormsg`
ADD CONSTRAINT `m_doctormsg_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `m_doctor` (`id`),
ADD CONSTRAINT `m_doctormsg_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `m_user` (`id`);

#
#  Foreign keys for table m_history
#

ALTER TABLE `m_history`
ADD CONSTRAINT `m_history_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `m_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

#
#  Foreign keys for table m_manager
#

ALTER TABLE `m_manager`
ADD CONSTRAINT `m_manager_ibfk_1` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`);

#
#  Foreign keys for table m_news
#

ALTER TABLE `m_news`
ADD CONSTRAINT `m_news_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `m_newscategory` (`id`);

#
#  Foreign keys for table m_regist
#

ALTER TABLE `m_regist`
ADD CONSTRAINT `m_regist_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `m_doctor` (`id`),
ADD CONSTRAINT `m_regist_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `m_user` (`id`),
ADD CONSTRAINT `m_regist_ibfk_3` FOREIGN KEY (`ksId`) REFERENCES `m_department` (`id`);

#
#  Foreign keys for table m_tie
#

ALTER TABLE `m_tie`
ADD CONSTRAINT `m_tie_ibfk_1` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`);

#
#  Foreign keys for table m_user
#

ALTER TABLE `m_user`
ADD CONSTRAINT `m_user_ibfk_1` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`);

#
#  Foreign keys for table m_usermsg
#

ALTER TABLE `m_usermsg`
ADD CONSTRAINT `m_usermsg_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `m_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
ADD CONSTRAINT `m_usermsg_ibfk_2` FOREIGN KEY (`doctorId`) REFERENCES `m_doctor` (`id`);

#
#  Foreign keys for table m_zan
#

ALTER TABLE `m_zan`
ADD CONSTRAINT `m_zan_ibfk_1` FOREIGN KEY (`limits`) REFERENCES `m_limits` (`id`),
ADD CONSTRAINT `m_zan_ibfk_2` FOREIGN KEY (`tieid`) REFERENCES `m_tie` (`id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
