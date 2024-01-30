/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootul0e4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootul0e4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootul0e4`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootul0e4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootul0e4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootul0e4/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingpiaoxinxi` */

DROP TABLE IF EXISTS `dingpiaoxinxi`;

CREATE TABLE `dingpiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `guanguangriqi` date DEFAULT NULL COMMENT '观光日期',
  `gerenpiaojia` varchar(200) DEFAULT NULL COMMENT '个人票价',
  `goumaipiaoshu` varchar(200) DEFAULT NULL COMMENT '购买票数',
  `zongfeiyong` varchar(200) DEFAULT NULL COMMENT '总费用',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shengchengdingdanshijian` datetime DEFAULT NULL COMMENT '生成订单时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618625409074 DEFAULT CHARSET=utf8 COMMENT='订票信息';

/*Data for the table `dingpiaoxinxi` */

insert  into `dingpiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`guanguangriqi`,`gerenpiaojia`,`goumaipiaoshu`,`zongfeiyong`,`yonghuming`,`shengchengdingdanshijian`,`sfsh`,`shhf`,`ispay`) values (31,'2021-04-17 10:01:11','订单编号1','景点名称1','2021-04-17','个人票价1','购买票数1','总费用1','用户名1','2021-04-17 10:01:11','是','','未支付'),(32,'2021-04-17 10:01:11','订单编号2','景点名称2','2021-04-17','个人票价2','购买票数2','总费用2','用户名2','2021-04-17 10:01:11','是','','未支付'),(33,'2021-04-17 10:01:11','订单编号3','景点名称3','2021-04-17','个人票价3','购买票数3','总费用3','用户名3','2021-04-17 10:01:11','是','','未支付'),(34,'2021-04-17 10:01:11','订单编号4','景点名称4','2021-04-17','个人票价4','购买票数4','总费用4','用户名4','2021-04-17 10:01:11','是','','未支付'),(35,'2021-04-17 10:01:11','订单编号5','景点名称5','2021-04-17','个人票价5','购买票数5','总费用5','用户名5','2021-04-17 10:01:11','是','','未支付'),(36,'2021-04-17 10:01:11','订单编号6','景点名称6','2021-04-17','个人票价6','购买票数6','总费用6','用户名6','2021-04-17 10:01:11','是','','未支付'),(1618625194908,'2021-04-17 10:06:34','20214171062524264897','景点名称1','2021-04-18','1','2','2','用户1','2021-04-17 10:06:25','否',NULL,'已支付'),(1618625409073,'2021-04-17 10:10:08','20214171093436935085','景点名称2','2021-04-18','2','2','4','xiongwei','2021-04-17 10:09:35','否',NULL,'已支付');

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618625342725 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (61,'2021-04-17 10:01:11',1,1,'用户名1','评论内容1','回复内容1'),(62,'2021-04-17 10:01:11',2,2,'用户名2','评论内容2','回复内容2'),(63,'2021-04-17 10:01:11',3,3,'用户名3','评论内容3','回复内容3'),(64,'2021-04-17 10:01:11',4,4,'用户名4','评论内容4','回复内容4'),(65,'2021-04-17 10:01:11',5,5,'用户名5','评论内容5','回复内容5'),(66,'2021-04-17 10:01:11',6,6,'用户名6','评论内容6','回复内容6'),(1618625171657,'2021-04-17 10:06:10',21,11,'用户1','挺好玩的',NULL),(1618625342724,'2021-04-17 10:09:02',22,1618625269748,'xiongwei','我也觉得挺好玩的',NULL);

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiantese` varchar(200) DEFAULT NULL COMMENT '景点特色',
  `fuwubaozhang` varchar(200) DEFAULT NULL COMMENT '服务保障',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `gerenpiaojia` int(11) DEFAULT NULL COMMENT '个人票价',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `lvyouluxian` longtext COMMENT '旅游路线',
  `yudingxuzhi` longtext COMMENT '预订须知',
  `ruheyuding` longtext COMMENT '如何预订',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiantese`,`fuwubaozhang`,`gongyingshang`,`gerenpiaojia`,`jingdianjieshao`,`lvyouluxian`,`yudingxuzhi`,`ruheyuding`,`jingdiantupian`,`thumbsupnum`,`crazilynum`) values (21,'2021-04-17 10:01:11','景点名称1','景点特色1','服务保障1','供应商1',1,'景点介绍1','旅游路线1','预订须知1','如何预订1','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian1.jpg',1,1),(22,'2021-04-17 10:01:11','景点名称2','景点特色2','服务保障2','供应商2',2,'景点介绍2','旅游路线2','预订须知2','如何预订2','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian2.jpg',2,2),(23,'2021-04-17 10:01:11','景点名称3','景点特色3','服务保障3','供应商3',3,'景点介绍3','旅游路线3','预订须知3','如何预订3','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian3.jpg',3,3),(24,'2021-04-17 10:01:11','景点名称4','景点特色4','服务保障4','供应商4',4,'景点介绍4','旅游路线4','预订须知4','如何预订4','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian4.jpg',4,4),(25,'2021-04-17 10:01:11','景点名称5','景点特色5','服务保障5','供应商5',5,'景点介绍5','旅游路线5','预订须知5','如何预订5','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian5.jpg',5,5),(26,'2021-04-17 10:01:11','景点名称6','景点特色6','服务保障6','供应商6',6,'景点介绍6','旅游路线6','预订须知6','如何预订6','http://localhost:8080/springbootul0e4/upload/jingdianxinxi_jingdiantupian6.jpg',6,6);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景点资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-04-17 10:01:11','标题1','简介1','http://localhost:8080/springbootul0e4/upload/news_picture1.jpg','内容1'),(52,'2021-04-17 10:01:11','标题2','简介2','http://localhost:8080/springbootul0e4/upload/news_picture2.jpg','内容2'),(53,'2021-04-17 10:01:11','标题3','简介3','http://localhost:8080/springbootul0e4/upload/news_picture3.jpg','内容3'),(54,'2021-04-17 10:01:11','标题4','简介4','http://localhost:8080/springbootul0e4/upload/news_picture4.jpg','内容4'),(55,'2021-04-17 10:01:11','标题5','简介5','http://localhost:8080/springbootul0e4/upload/news_picture5.jpg','内容5'),(56,'2021-04-17 10:01:11','标题6','简介6','http://localhost:8080/springbootul0e4/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','od5navvt58a2sfnpxso25scol1512y0w','2021-04-17 10:05:04','2021-04-17 11:05:53'),(2,1618625269748,'xiongwei','yonghu','用户','vyoskaocf7a5hj0hdy1s33vwf0p6nosg','2021-04-17 10:08:03','2021-04-17 11:08:45'),(3,1,'abo','users','管理员','lhi99edijeshcymdffzx64woziqppr4q','2021-04-17 10:14:13','2021-04-17 11:14:13');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 10:01:11');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618625269749 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-17 10:01:11','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang1.jpg'),(12,'2021-04-17 10:01:11','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang2.jpg'),(13,'2021-04-17 10:01:11','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang3.jpg'),(14,'2021-04-17 10:01:11','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang4.jpg'),(15,'2021-04-17 10:01:11','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang5.jpg'),(16,'2021-04-17 10:01:11','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootul0e4/upload/yonghu_touxiang6.jpg'),(1618625269748,'2021-04-17 10:07:49','xiongwei','123','1',NULL,'12312312321',NULL,NULL);

/*Table structure for table `yonghupingjia` */

DROP TABLE IF EXISTS `yonghupingjia`;

CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `guanguangriqi` varchar(200) DEFAULT NULL COMMENT '观光日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `pingjianeirong` longtext COMMENT '评价内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618625591136 DEFAULT CHARSET=utf8 COMMENT='用户评价';

/*Data for the table `yonghupingjia` */

insert  into `yonghupingjia`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`guanguangriqi`,`yonghuming`,`pingjianeirong`,`sfsh`,`shhf`) values (41,'2021-04-17 10:01:11','订单编号1','景点名称1','观光日期1','用户名1','评价内容1','是',''),(42,'2021-04-17 10:01:11','订单编号2','景点名称2','观光日期2','用户名2','评价内容2','是',''),(43,'2021-04-17 10:01:11','订单编号3','景点名称3','观光日期3','用户名3','评价内容3','是',''),(44,'2021-04-17 10:01:11','订单编号4','景点名称4','观光日期4','用户名4','评价内容4','是',''),(45,'2021-04-17 10:01:11','订单编号5','景点名称5','观光日期5','用户名5','评价内容5','是',''),(46,'2021-04-17 10:01:11','订单编号6','景点名称6','观光日期6','用户名6','评价内容6','是',''),(1618625591135,'2021-04-17 10:13:10','20214171093436935085','景点名称2','2021-04-18','xiongwei','<p>我觉得挺不错的</p>','否',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
