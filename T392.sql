/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t392`;
CREATE DATABASE IF NOT EXISTS `t392` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t392`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '询问问题111111111', '2023-04-03 07:47:18', NULL, NULL, 2, 1, '2023-04-03 07:47:19'),
	(2, 1, NULL, NULL, '回复内容11111', '2023-04-03 07:47:29', NULL, 2, '2023-04-03 07:47:30');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(103, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-03 06:38:29'),
	(104, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-03 06:38:29'),
	(105, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-03 06:38:29'),
	(106, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-03 06:38:29'),
	(107, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-03 06:38:29'),
	(108, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-03 06:38:29'),
	(109, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-03 06:38:29'),
	(110, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-03 06:38:29'),
	(111, 'hangban_types', '航班状态', 1, '正常', NULL, NULL, '2023-04-03 06:38:29'),
	(112, 'hangban_types', '航班状态', 2, '航班取消', NULL, NULL, '2023-04-03 06:38:29'),
	(113, 'jipiao_types', '航班类型', 1, '航班类型1', NULL, NULL, '2023-04-03 06:38:29'),
	(114, 'jipiao_types', '航班类型', 2, '航班类型2', NULL, NULL, '2023-04-03 06:38:29'),
	(115, 'jipiao_types', '航班类型', 3, '航班类型3', NULL, NULL, '2023-04-03 06:38:29'),
	(116, 'jipiao_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-03 06:38:29'),
	(117, 'jipiao_order_types', '订单类型', 101, '已预约', NULL, NULL, '2023-04-03 06:38:29'),
	(118, 'jipiao_order_types', '订单类型', 102, '已退票', NULL, NULL, '2023-04-03 06:38:29'),
	(119, 'jipiao_order_types', '订单类型', 103, '待取票', NULL, NULL, '2023-04-03 06:38:29'),
	(120, 'jipiao_order_types', '订单类型', 104, '已取票', NULL, NULL, '2023-04-03 06:38:29'),
	(121, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-03 06:38:29'),
	(122, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-03 06:38:29'),
	(123, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-03 06:38:29'),
	(124, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-03 06:38:29'),
	(125, 'news_types', '新闻类型', 3, '新闻类型3', NULL, NULL, '2023-04-03 06:38:29');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', 276, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(2, '帖子标题2', 2, NULL, '发布内容2', 402, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(3, '帖子标题3', 3, NULL, '发布内容3', 200, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(4, '帖子标题4', 3, NULL, '发布内容4', 401, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 232, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(6, '帖子标题6', 2, NULL, '发布内容6', 435, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(7, '帖子标题7', 2, NULL, '发布内容7', 395, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 16, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 373, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(10, '帖子标题10', 2, NULL, '发布内容10', 90, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(11, '帖子标题11', 1, NULL, '发布内容11', 349, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(12, '帖子标题12', 3, NULL, '发布内容12', 43, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(13, '帖子标题13', 2, NULL, '发布内容13', 363, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(14, '帖子标题14', 3, NULL, '发布内容14', 480, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(15, NULL, 1, NULL, '登录后才可查看数据详情页', 14, 2, '2023-04-03 07:40:44', NULL, '2023-04-03 07:40:44'),
	(16, NULL, NULL, 1, '222222222222222', 14, 2, '2023-04-03 07:47:41', NULL, '2023-04-03 07:47:41'),
	(17, NULL, 1, NULL, '666', 14, 2, '2024-08-13 07:04:40', NULL, '2024-08-13 07:04:40');

DROP TABLE IF EXISTS `jipiao`;
CREATE TABLE IF NOT EXISTS `jipiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jipiao_name` varchar(200) DEFAULT NULL COMMENT '航班标题 Search111 ',
  `jipiao_photo` varchar(200) DEFAULT NULL COMMENT '航班照片',
  `jipiao_types` int DEFAULT NULL COMMENT '航班类型 Search111',
  `jipiao_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `jipiao_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `jipiao_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `jipiao_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `zuowei_number` int DEFAULT NULL COMMENT '座位',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `hangban_types` int DEFAULT NULL COMMENT '航班状态 Search111',
  `jipiao_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `jipiao_content` longtext COMMENT '航班详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='航班信息';

DELETE FROM `jipiao`;
INSERT INTO `jipiao` (`id`, `jipiao_name`, `jipiao_photo`, `jipiao_types`, `jipiao_new_money`, `jipiao_chufadi`, `jipiao_mudidi`, `jipiao_time`, `zuowei_number`, `shangxia_types`, `hangban_types`, `jipiao_delete`, `jipiao_content`, `create_time`) VALUES
	(1, '航班标题1', 'upload/jipiao1.jpg', 1, 321.76, '出发地1', '目的地1', '2023-04-03 06:38:39', 20, 1, 1, 1, '航班详情1', '2023-04-03 06:38:39'),
	(2, '航班标题2', 'upload/jipiao2.jpg', 3, 73.91, '出发地2', '目的地2', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情2', '2023-04-03 06:38:39'),
	(3, '航班标题3', 'upload/jipiao3.jpg', 2, 142.30, '出发地3', '目的地3', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情3', '2023-04-03 06:38:39'),
	(4, '航班标题4', 'upload/jipiao4.jpg', 3, 248.59, '出发地4', '目的地4', '2023-04-03 06:38:39', 20, 1, 1, 1, '航班详情4', '2023-04-03 06:38:39'),
	(5, '航班标题5', 'upload/jipiao5.jpg', 1, 33.81, '出发地5', '目的地5', '2023-04-03 06:38:39', 20, 1, 1, 1, '航班详情5', '2023-04-03 06:38:39'),
	(6, '航班标题6', 'upload/jipiao6.jpg', 3, 399.54, '出发地6', '目的地6', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情6', '2023-04-03 06:38:39'),
	(7, '航班标题7', 'upload/jipiao7.jpg', 3, 497.62, '出发地7', '目的地7', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情7', '2023-04-03 06:38:39'),
	(8, '航班标题8', 'upload/jipiao8.jpg', 2, 245.57, '出发地8', '目的地8', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情8', '2023-04-03 06:38:39'),
	(9, '航班标题9', 'upload/jipiao9.jpg', 1, 317.00, '出发地9', '目的地9', '2023-04-03 06:38:39', 20, 1, 1, 1, '航班详情9', '2023-04-03 06:38:39'),
	(10, '航班标题10', 'upload/jipiao10.jpg', 2, 218.25, '出发地10', '目的地10', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情10', '2023-04-03 06:38:39'),
	(11, '航班标题11', 'upload/jipiao11.jpg', 2, 407.30, '出发地11', '目的地11', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情11', '2023-04-03 06:38:39'),
	(12, '航班标题12', 'upload/jipiao12.jpg', 2, 382.31, '出发地12', '目的地12', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情12', '2023-04-03 06:38:39'),
	(13, '航班标题13', 'upload/jipiao13.jpg', 3, 184.55, '出发地13', '目的地13', '2023-04-03 06:38:39', 40, 1, 2, 1, '航班详情13', '2023-04-03 06:38:39'),
	(14, '航班标题14', 'upload/jipiao14.jpg', 1, 347.72, '出发地14', '目的地14', '2023-04-03 06:38:39', 20, 1, 2, 1, '航班详情14', '2023-04-03 06:38:39');

DROP TABLE IF EXISTS `jipiao_collection`;
CREATE TABLE IF NOT EXISTS `jipiao_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jipiao_id` int DEFAULT NULL COMMENT '航班',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jipiao_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='航班收藏';

DELETE FROM `jipiao_collection`;
INSERT INTO `jipiao_collection` (`id`, `jipiao_id`, `yonghu_id`, `jipiao_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(2, 2, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(3, 3, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(5, 5, 2, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(6, 6, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(7, 7, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(8, 8, 2, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(9, 9, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(10, 10, 2, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(11, 11, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(12, 12, 2, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(13, 13, 2, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(14, 14, 3, 1, '2023-04-03 06:38:39', '2023-04-03 06:38:39'),
	(15, 7, 1, 1, '2023-04-03 07:40:12', '2023-04-03 07:40:12'),
	(16, 13, 1, 1, '2024-08-13 07:04:48', '2024-08-13 07:04:48');

DROP TABLE IF EXISTS `jipiao_order`;
CREATE TABLE IF NOT EXISTS `jipiao_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jipiao_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `jipiao_id` int DEFAULT NULL COMMENT '机票',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jipiao_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `jipiao_order_types` int DEFAULT NULL COMMENT '订单类型  Search111 ',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '预定座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='机票预订';

DELETE FROM `jipiao_order`;
INSERT INTO `jipiao_order` (`id`, `jipiao_order_uuid_number`, `jipiao_id`, `yonghu_id`, `jipiao_order_true_price`, `jipiao_order_types`, `buy_zuowei_number`, `buy_zuowei_time`, `insert_time`, `create_time`) VALUES
	(1, '1680506886036', 13, 1, 369.10, 104, '16,26', '2023-04-03', '2023-04-03 07:28:06', '2023-04-03 07:28:06'),
	(2, '1680507622703', 14, 1, 695.44, 104, '4,5', '2023-04-03', '2023-04-03 07:40:23', '2023-04-03 07:40:23');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='民航新闻';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻标题1', 2, 'upload/news1.jpg', '2023-04-03 06:38:39', '新闻详情1', '2023-04-03 06:38:39'),
	(2, '新闻标题2', 2, 'upload/news2.jpg', '2023-04-03 06:38:39', '新闻详情2', '2023-04-03 06:38:39'),
	(3, '新闻标题3', 1, 'upload/news3.jpg', '2023-04-03 06:38:39', '新闻详情3', '2023-04-03 06:38:39'),
	(4, '新闻标题4', 1, 'upload/news4.jpg', '2023-04-03 06:38:39', '新闻详情4', '2023-04-03 06:38:39'),
	(5, '新闻标题5', 2, 'upload/news5.jpg', '2023-04-03 06:38:39', '新闻详情5', '2023-04-03 06:38:39'),
	(6, '新闻标题6', 3, 'upload/news6.jpg', '2023-04-03 06:38:39', '新闻详情6', '2023-04-03 06:38:39'),
	(7, '新闻标题7', 1, 'upload/news7.jpg', '2023-04-03 06:38:39', '新闻详情7', '2023-04-03 06:38:39'),
	(8, '新闻标题8', 1, 'upload/news8.jpg', '2023-04-03 06:38:39', '新闻详情8', '2023-04-03 06:38:39'),
	(9, '新闻标题9', 2, 'upload/news9.jpg', '2023-04-03 06:38:39', '新闻详情9', '2023-04-03 06:38:39'),
	(10, '新闻标题10', 3, 'upload/news10.jpg', '2023-04-03 06:38:39', '新闻详情10', '2023-04-03 06:38:39'),
	(11, '新闻标题11', 1, 'upload/news11.jpg', '2023-04-03 06:38:39', '新闻详情11', '2023-04-03 06:38:39'),
	(12, '新闻标题12', 2, 'upload/news12.jpg', '2023-04-03 06:38:39', '新闻详情12', '2023-04-03 06:38:39'),
	(13, '新闻标题13', 2, 'upload/news13.jpg', '2023-04-03 06:38:39', '新闻详情13', '2023-04-03 06:38:39'),
	(14, '新闻标题14', 3, 'upload/news14.jpg', '2023-04-03 06:38:39', '新闻详情14', '2023-04-03 06:38:39');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'lnxws3wl6fzzp2pbdt25s58szrh53qaq', '2023-04-03 06:42:29', '2024-08-13 08:04:30'),
	(2, 1, 'admin', 'users', '管理员', '6s9lscadto9ndthf82g93cmw11vv7vwm', '2023-04-03 07:12:06', '2024-08-13 08:03:32');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-03 06:38:29');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `sex_types`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'upload/yonghu1.jpg', '17703786901', '410224199010102001', 1, 9118.55, 1, '2023-04-03 06:38:39'),
	(2, '用户2', '123456', '用户姓名2', 'upload/yonghu2.jpg', '17703786902', '410224199010102002', 1, 962.45, 1, '2023-04-03 06:38:39'),
	(3, '用户3', '123456', '用户姓名3', 'upload/yonghu3.jpg', '17703786903', '410224199010102003', 2, 87.28, 1, '2023-04-03 06:38:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
