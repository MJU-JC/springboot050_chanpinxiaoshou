/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot60m3k
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot60m3k` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot60m3k`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261805366 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-24 18:47:42',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-24 18:47:42',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-24 18:47:42',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-24 18:47:42',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-24 18:47:42',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-24 18:47:42',6,'宇宙银河系月球1号','月某','13823888886','是'),(1619261805365,'2021-04-24 18:56:44',1619261761781,'广东省梅州市梅江区江南街道白马四巷作新小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262094089 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261995371 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-04-24 18:47:42',1,1,'提问1','回复1',1),(62,'2021-04-24 18:47:42',2,2,'提问2','回复2',2),(63,'2021-04-24 18:47:42',3,3,'提问3','回复3',3),(64,'2021-04-24 18:47:42',4,4,'提问4','回复4',4),(65,'2021-04-24 18:47:42',5,5,'提问5','回复5',5),(66,'2021-04-24 18:47:42',6,6,'提问6','回复6',6),(1619261936328,'2021-04-24 18:58:56',1619261761781,NULL,'请问现在下单什么时候发货',NULL,0),(1619261995370,'2021-04-24 18:59:54',1619261761781,1,NULL,'明天',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot60m3k/upload/1619261575143.jpg'),(2,'picture2','http://localhost:8080/springboot60m3k/upload/1619261729010.jpg'),(3,'picture3','http://localhost:8080/springboot60m3k/upload/1619261740330.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262179417 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (41,'2021-04-24 18:47:42','订单编号1','商品名称1','商品分类1','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian1.jpg','评价内容1','2021-04-24','用户名1','手机1','是',''),(42,'2021-04-24 18:47:42','订单编号2','商品名称2','商品分类2','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian2.jpg','评价内容2','2021-04-24','用户名2','手机2','是',''),(43,'2021-04-24 18:47:42','订单编号3','商品名称3','商品分类3','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian3.jpg','评价内容3','2021-04-24','用户名3','手机3','是',''),(44,'2021-04-24 18:47:42','订单编号4','商品名称4','商品分类4','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian4.jpg','评价内容4','2021-04-24','用户名4','手机4','是',''),(45,'2021-04-24 18:47:42','订单编号5','商品名称5','商品分类5','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian5.jpg','评价内容5','2021-04-24','用户名5','手机5','是',''),(46,'2021-04-24 18:47:42','订单编号6','商品名称6','商品分类6','1','http://localhost:8080/springboot60m3k/upload/dingdanpingjia_tianjiatupian6.jpg','评价内容6','2021-04-24','用户名6','手机6','是',''),(1619262179416,'2021-04-24 19:02:58','20214241859628187604','肖战马克杯','杯子','5','http://localhost:8080/springboot60m3k/upload/1619262169673.jpg','物流很快，杯子不错','2021-04-24','1','12312312312','是','感谢支持');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-24 18:47:42',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-24 18:47:42',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-24 18:47:42',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-24 18:47:42',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-24 18:47:42',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-24 18:47:42',6,6,'用户名6','评论内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619261721182 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-24 18:47:42','标题1','简介1','http://localhost:8080/springboot60m3k/upload/1619261527803.jpg','<p>内容1</p>'),(112,'2021-04-24 18:47:42','标题2','简介2','http://localhost:8080/springboot60m3k/upload/1619261540196.jpg','<p>内容2</p>'),(113,'2021-04-24 18:47:42','标题3','简介3','http://localhost:8080/springboot60m3k/upload/1619261548087.jpg','<p>内容3</p>'),(114,'2021-04-24 18:47:42','标题4','简介4','http://localhost:8080/springboot60m3k/upload/news_picture4.jpg','内容4'),(115,'2021-04-24 18:47:42','标题5','简介5','http://localhost:8080/springboot60m3k/upload/1619261558167.jpg','<p>内容5</p>'),(116,'2021-04-24 18:47:42','标题6','简介6','http://localhost:8080/springboot60m3k/upload/1619261567518.jpg','<p>内容6</p>'),(1619261721181,'2021-04-24 18:55:20','商品优惠资讯','商品优惠活动','http://localhost:8080/springboot60m3k/upload/1619261698998.jpg','<p>全场商品参与618优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/springboot60m3k/upload/1619261719470.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262100720 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619261947031,'2021-04-24 18:59:06','20214241859628187604','shangpinxinxi',1619261761781,1619261686914,'肖战马克杯','http://localhost:8080/springboot60m3k/upload/1619261672280.jpg',3,59,59,177,177,1,'已完成','广东省梅州市梅江区江南街道白马四巷作新小学','12312312312','陈一'),(1619262100719,'2021-04-24 19:01:39','20214241913975053973','shangpinxinxi',1619261761781,34,'商品名称4','http://localhost:8080/springboot60m3k/upload/1619261506637.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','广东省梅州市梅江区江南街道白马四巷作新小学','12312312312','陈一');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261659178 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-24 18:47:42','商品分类1'),(22,'2021-04-24 18:47:42','商品分类2'),(23,'2021-04-24 18:47:42','商品分类3'),(24,'2021-04-24 18:47:42','商品分类4'),(25,'2021-04-24 18:47:42','商品分类5'),(26,'2021-04-24 18:47:42','商品分类6'),(1619261652794,'2021-04-24 18:54:12','杯子'),(1619261659177,'2021-04-24 18:54:18','抱枕');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261686915 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2021-04-24 18:47:42','商品名称1','商品分类1','http://localhost:8080/springboot60m3k/upload/1619261475591.jpg','规格1','<p>商品详情1</p>','2021-04-24 18:51:08',2,99.9,1,99),(32,'2021-04-24 18:47:42','商品名称2','商品分类2','http://localhost:8080/springboot60m3k/upload/1619261483739.jpg','规格2','<p>商品详情2</p>','2021-04-24 18:51:19',3,99.9,2,99),(34,'2021-04-24 18:47:42','商品名称4','商品分类4','http://localhost:8080/springboot60m3k/upload/1619261506637.jpg','规格4','<p>商品详情4</p>','2021-04-24 19:01:47',20,99.9,6,0),(35,'2021-04-24 18:47:42','商品名称5','商品分类5','http://localhost:8080/springboot60m3k/upload/1619261495458.jpg','规格5','<p>商品详情5</p>','2021-04-24 18:56:08',8,99.9,5,99),(36,'2021-04-24 18:47:42','商品名称6','商品分类6','http://localhost:8080/springboot60m3k/upload/shangpinxinxi_tupian6.jpg','规格6','商品详情6','2021-04-24 18:47:42',6,99.9,6,99),(1619261686914,'2021-04-24 18:54:46','肖战马克杯','杯子','http://localhost:8080/springboot60m3k/upload/1619261672280.jpg','单支装','<p>商品介绍</p><p><img src=\"http://localhost:8080/springboot60m3k/upload/1619261685304.jpg\"></p>','2021-04-24 18:59:14',7,59,5,47);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261910841 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','b7u7cl5kbxpwjrwfebkjpiic7lkt3u5p','2021-04-24 18:49:35','2021-04-24 20:03:16'),(2,1619261761781,'1','yonghu','用户','c4wh61yhi3erm088yy23wdz7uz1wln7k','2021-04-24 18:56:07','2021-04-24 20:02:22');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-04-24 18:47:42');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262013246 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`shuliang`,`jiage`,`zongjine`,`riqi`,`beizhu`) values (51,'2021-04-24 18:47:42','商品名称1','商品分类1','http://localhost:8080/springboot60m3k/upload/xiaoshoutongji_tupian1.jpg','规格1',1,1,1,'2021-04-24','备注1'),(52,'2021-04-24 18:47:42','商品名称2','商品分类2','http://localhost:8080/springboot60m3k/upload/1619261519026.jpg','规格2',2,2,4,'2021-04-24','备注2'),(53,'2021-04-24 18:47:42','商品名称3','商品分类3','http://localhost:8080/springboot60m3k/upload/xiaoshoutongji_tupian3.jpg','规格3',3,3,3,'2021-04-24','备注3'),(54,'2021-04-24 18:47:42','商品名称4','商品分类4','http://localhost:8080/springboot60m3k/upload/xiaoshoutongji_tupian4.jpg','规格4',4,4,4,'2021-04-24','备注4'),(55,'2021-04-24 18:47:42','商品名称5','商品分类5','http://localhost:8080/springboot60m3k/upload/xiaoshoutongji_tupian5.jpg','规格5',5,5,5,'2021-04-24','备注5'),(56,'2021-04-24 18:47:42','商品名称6','商品分类6','http://localhost:8080/springboot60m3k/upload/xiaoshoutongji_tupian6.jpg','规格6',6,6,36,'2021-04-29','备注6'),(1619262013245,'2021-04-24 19:00:12','肖战马克杯','杯子','http://localhost:8080/springboot60m3k/upload/1619261672280.jpg','单支装',3,59,177,'2021-04-24',NULL);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261761782 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (11,'2021-04-24 18:47:42','用户1','123456','姓名1','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-04-24 18:47:42','用户2','123456','姓名2','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-04-24 18:47:42','用户3','123456','姓名3','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-04-24 18:47:42','用户4','123456','姓名4','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-04-24 18:47:42','用户5','123456','姓名5','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-04-24 18:47:42','用户6','123456','姓名6','http://localhost:8080/springboot60m3k/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1619261761781,'2021-04-24 18:56:01','1','11','陈一','http://localhost:8080/springboot60m3k/upload/1619261776340.jpg','女','12312312312',623.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
