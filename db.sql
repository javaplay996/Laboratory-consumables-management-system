/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm94l73
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm94l73` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm94l73`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm94l73/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm94l73/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm94l73/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `haocaitongji` */

DROP TABLE IF EXISTS `haocaitongji`;

CREATE TABLE `haocaitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `cailiaobianhao` varchar(200) DEFAULT NULL COMMENT '材料编号',
  `haocaimingcheng` varchar(200) DEFAULT NULL COMMENT '耗材名称',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `shiyongzongshu` int(11) NOT NULL COMMENT '使用总数',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='耗材统计';

/*Data for the table `haocaitongji` */

insert  into `haocaitongji`(`id`,`addtime`,`mingcheng`,`cailiaobianhao`,`haocaimingcheng`,`xuenian`,`xueqi`,`shiyongzongshu`,`riqi`) values (61,'2021-03-02 15:11:46','名称1','材料编号1','耗材名称1','学年1','学期1',1,'2021-03-02'),(62,'2021-03-02 15:11:46','名称2','材料编号2','耗材名称2','学年2','学期2',2,'2021-03-02'),(63,'2021-03-02 15:11:46','名称3','材料编号3','耗材名称3','学年3','学期3',3,'2021-03-02'),(64,'2021-03-02 15:11:46','名称4','材料编号4','耗材名称4','学年4','学期4',4,'2021-03-02'),(65,'2021-03-02 15:11:46','名称5','材料编号5','耗材名称5','学年5','学期5',5,'2021-03-02'),(66,'2021-03-02 15:11:46','名称6','材料编号6','耗材名称6','学年6','学期6',6,'2021-03-02');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (21,'2021-03-02 15:11:46','教师1','123456','教师姓名1','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang1.jpg','学院1','职称1','13823888881'),(22,'2021-03-02 15:11:46','教师2','123456','教师姓名2','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang2.jpg','学院2','职称2','13823888882'),(23,'2021-03-02 15:11:46','教师3','123456','教师姓名3','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang3.jpg','学院3','职称3','13823888883'),(24,'2021-03-02 15:11:46','教师4','123456','教师姓名4','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang4.jpg','学院4','职称4','13823888884'),(25,'2021-03-02 15:11:46','教师5','123456','教师姓名5','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang5.jpg','学院5','职称5','13823888885'),(26,'2021-03-02 15:11:46','教师6','123456','教师姓名6','男','http://localhost:8080/jspm94l73/upload/jiaoshi_touxiang6.jpg','学院6','职称6','13823888886');

/*Table structure for table `laoshishenqing` */

DROP TABLE IF EXISTS `laoshishenqing`;

CREATE TABLE `laoshishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaobianhao` varchar(200) NOT NULL COMMENT '材料编号',
  `haocaimingcheng` varchar(200) NOT NULL COMMENT '耗材名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `shiyongxiangmu` longtext COMMENT '使用项目',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='老师申请';

/*Data for the table `laoshishenqing` */

insert  into `laoshishenqing`(`id`,`addtime`,`cailiaobianhao`,`haocaimingcheng`,`shuliang`,`shiyongxiangmu`,`riqi`,`gonghao`,`jiaoshixingming`,`sfsh`,`shhf`) values (41,'2021-03-02 15:11:46','材料编号1','耗材名称1',1,'使用项目1','2021-03-02','工号1','教师姓名1','是',''),(42,'2021-03-02 15:11:46','材料编号2','耗材名称2',2,'使用项目2','2021-03-02','工号2','教师姓名2','是',''),(43,'2021-03-02 15:11:46','材料编号3','耗材名称3',3,'使用项目3','2021-03-02','工号3','教师姓名3','是',''),(44,'2021-03-02 15:11:46','材料编号4','耗材名称4',4,'使用项目4','2021-03-02','工号4','教师姓名4','是',''),(45,'2021-03-02 15:11:46','材料编号5','耗材名称5',5,'使用项目5','2021-03-02','工号5','教师姓名5','是',''),(46,'2021-03-02 15:11:46','材料编号6','耗材名称6',6,'使用项目6','2021-03-02','工号6','教师姓名6','是','');

/*Table structure for table `shiyancailiao` */

DROP TABLE IF EXISTS `shiyancailiao`;

CREATE TABLE `shiyancailiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaobianhao` varchar(200) NOT NULL COMMENT '材料编号',
  `haocaimingcheng` varchar(200) NOT NULL COMMENT '耗材名称',
  `haocaiguige` varchar(200) DEFAULT NULL COMMENT '耗材规格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `suoshuzhuanye` varchar(200) DEFAULT NULL COMMENT '所属专业',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` longtext COMMENT '备注',
  `dengjiyuan` varchar(200) DEFAULT NULL COMMENT '登记员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cailiaobianhao` (`cailiaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实验材料';

/*Data for the table `shiyancailiao` */

insert  into `shiyancailiao`(`id`,`addtime`,`cailiaobianhao`,`haocaimingcheng`,`haocaiguige`,`shuliang`,`suoshuzhuanye`,`dengjiriqi`,`beizhu`,`dengjiyuan`) values (31,'2021-03-02 15:11:46','材料编号1','耗材名称1','耗材规格1',0,'所属专业1','2021-03-02','备注1','登记员1'),(32,'2021-03-02 15:11:46','材料编号2','耗材名称2','耗材规格2',2,'所属专业2','2021-03-02','备注2','登记员2'),(33,'2021-03-02 15:11:46','材料编号3','耗材名称3','耗材规格3',3,'所属专业3','2021-03-02','备注3','登记员3'),(34,'2021-03-02 15:11:46','材料编号4','耗材名称4','耗材规格4',4,'所属专业4','2021-03-02','备注4','登记员4'),(35,'2021-03-02 15:11:46','材料编号5','耗材名称5','耗材规格5',5,'所属专业5','2021-03-02','备注5','登记员5'),(36,'2021-03-02 15:11:46','材料编号6','耗材名称6','耗材规格6',6,'所属专业6','2021-03-02','备注6','登记员6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ztztmgnyx43kqcsvt10f6t57zxgyjs5k','2021-03-02 15:12:09','2021-03-02 16:12:38'),(2,11,'001','xuesheng','学生','56dx4ndfv8nseyayhr0hdg9hf8cd0y5g','2021-03-02 15:12:21','2021-03-02 16:12:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-02 15:11:46');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`zhuanye`,`shouji`) values (11,'2021-03-02 15:11:46','001','001','学生姓名1','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang1.jpg','学院1','专业1','13823888881'),(12,'2021-03-02 15:11:46','学生2','123456','学生姓名2','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang2.jpg','学院2','专业2','13823888882'),(13,'2021-03-02 15:11:46','学生3','123456','学生姓名3','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang3.jpg','学院3','专业3','13823888883'),(14,'2021-03-02 15:11:46','学生4','123456','学生姓名4','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang4.jpg','学院4','专业4','13823888884'),(15,'2021-03-02 15:11:46','学生5','123456','学生姓名5','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang5.jpg','学院5','专业5','13823888885'),(16,'2021-03-02 15:11:46','学生6','123456','学生姓名6','男','http://localhost:8080/jspm94l73/upload/xuesheng_touxiang6.jpg','学院6','专业6','13823888886');

/*Table structure for table `xueshengshenqing` */

DROP TABLE IF EXISTS `xueshengshenqing`;

CREATE TABLE `xueshengshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaobianhao` varchar(200) DEFAULT NULL COMMENT '材料编号',
  `haocaimingcheng` varchar(200) DEFAULT NULL COMMENT '耗材名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `shiyongneirong` longtext COMMENT '使用内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614669152278 DEFAULT CHARSET=utf8 COMMENT='学生申请';

/*Data for the table `xueshengshenqing` */

insert  into `xueshengshenqing`(`id`,`addtime`,`cailiaobianhao`,`haocaimingcheng`,`shuliang`,`shiyongneirong`,`riqi`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (51,'2021-03-02 15:11:46','材料编号1','耗材名称1',1,'使用内容1','2021-03-02','学号1','学生姓名1','是',''),(52,'2021-03-02 15:11:46','材料编号2','耗材名称2',2,'使用内容2','2021-03-02','学号2','学生姓名2','是',''),(53,'2021-03-02 15:11:46','材料编号3','耗材名称3',3,'使用内容3','2021-03-02','学号3','学生姓名3','是',''),(54,'2021-03-02 15:11:46','材料编号4','耗材名称4',4,'使用内容4','2021-03-02','学号4','学生姓名4','是',''),(55,'2021-03-02 15:11:46','材料编号5','耗材名称5',5,'使用内容5','2021-03-02','学号5','学生姓名5','是',''),(56,'2021-03-02 15:11:46','材料编号6','耗材名称6',6,'使用内容6','2021-03-02','学号6','学生姓名6','是',''),(1614669152277,'2021-03-02 15:12:32','材料编号1','耗材名称1',1,'111','2021-02-28','001','学生姓名1','是','1112');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
