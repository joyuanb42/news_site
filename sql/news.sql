/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80032
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 80032
File Encoding         : 65001

Date: 2024-06-13 12:02:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add author', '7', 'add_author');
INSERT INTO `auth_permission` VALUES ('26', 'Can change author', '7', 'change_author');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete author', '7', 'delete_author');
INSERT INTO `auth_permission` VALUES ('28', 'Can view author', '7', 'view_author');
INSERT INTO `auth_permission` VALUES ('29', 'Can add news', '8', 'add_news');
INSERT INTO `auth_permission` VALUES ('30', 'Can change news', '8', 'change_news');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete news', '8', 'delete_news');
INSERT INTO `auth_permission` VALUES ('32', 'Can view news', '8', 'view_news');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$720000$llGhQWDoflh1yURGX11lbA$GkFbhnw1R62vYTE7MD1MsL9gWqjPx700VTr2pCkKAv4=', '2024-06-12 11:38:40.326578', '1', 'zhangsan', '', '', '123@qq.com', '1', '1', '2024-06-10 02:24:32.501432');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2024-06-10 03:25:39.615238', '1', 'test', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2024-06-10 03:25:52.099828', '1', 'test', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2024-06-10 03:30:11.771453', '1', '张三', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2024-06-10 05:50:08.555560', '2', 'test', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2024-06-10 06:16:45.143072', '3', 'test2', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2024-06-10 06:54:57.774389', '3', 'test2', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2024-06-10 06:55:09.099597', '2', 'test', '2', '[{\"changed\": {\"fields\": [\"Content\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2024-06-10 07:37:45.520793', '2', 'test', '2', '[]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2024-06-10 07:38:39.743766', '4', '迎返程客流高峰 全国铁路加开旅客列车1071列', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2024-06-10 09:05:46.347801', '2', 'test修改', '2', '[{\"changed\": {\"fields\": [\"Title\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2024-06-10 09:06:28.361591', '5', '新疆是个好地方——透视天山南北文旅热', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2024-06-10 09:07:24.292502', '6', '端午民俗游热度持续攀升', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2024-06-10 09:10:40.566959', '7', 'test', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2024-06-10 09:10:52.498467', '7', 'test', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2024-06-10 15:02:23.880660', '2', 'test修改', '2', '[{\"changed\": {\"fields\": [\"Author\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2024-06-11 08:18:54.618737', '8', '测试', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2024-06-12 11:41:05.428112', '9', '增加', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2024-06-12 11:41:51.245963', '9', '修改', '2', '[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Author\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2024-06-12 11:42:20.818657', '9', '修改', '3', '', '8', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'news', 'author');
INSERT INTO `django_content_type` VALUES ('8', 'news', 'news');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2024-06-10 02:13:22.308683');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2024-06-10 02:13:22.629755');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2024-06-10 02:13:22.711773');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2024-06-10 02:13:22.716775');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2024-06-10 02:13:22.721776');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2024-06-10 02:13:22.769786');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2024-06-10 02:13:22.807795');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2024-06-10 02:13:22.821798');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2024-06-10 02:13:22.825799');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2024-06-10 02:13:22.861807');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2024-06-10 02:13:22.862807');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2024-06-10 02:13:22.866808');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2024-06-10 02:13:22.907817');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2024-06-10 02:13:22.945825');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2024-06-10 02:13:22.956828');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2024-06-10 02:13:22.960830');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0012_alter_user_first_name_max_length', '2024-06-10 02:13:22.998838');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2024-06-10 02:13:23.021843');
INSERT INTO `django_migrations` VALUES ('19', 'news', '0001_initial', '2024-06-10 03:24:49.998805');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `news_author`
-- ----------------------------
DROP TABLE IF EXISTS `news_author`;
CREATE TABLE `news_author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of news_author
-- ----------------------------
INSERT INTO `news_author` VALUES ('1', '张三', '20', '123@qq.com');

-- ----------------------------
-- Table structure for `news_news`
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `publisher_date` datetime(6) NOT NULL,
  `author` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES ('2', 'test修改', '123修改', '2024-06-10 05:50:08.554560', '张三');
INSERT INTO `news_news` VALUES ('4', '迎返程客流高峰 全国铁路加开旅客列车1071列', '6月10日，全国铁路预计发送旅客1590万人次，计划加开旅客列车1071列，铁路迎来返程客流高峰。6月9日，全国铁路发送旅客1249.1万人次，铁路运输安全平稳有序。\r\n\r\n各地铁路部门加大旅客服务保障力度，优化进出站流线，增加安检、验证通道和引导力量，加强老幼病残孕重点旅客服务，强化与公交、地铁、出租车等交通方式协同联动，努力为旅客提供良好出行体验。\r\n\r\n铁路部门提示，铁路12306网站（含手机客户端）是官方唯一火车票网络售票渠道，请广大旅客朋友一定要通过官方渠道购票。\r\n\r\n铁路部门将根据客流需求和车票预售、候补购票情况，灵活动态安排运力投放，有出行需求的旅客请留意车站公告，或通过铁路12306网站（含手机客户端）查询列车开行信息。\r\n\r\n节日期间，铁路旅客集中出行需求大，请旅客朋友合理安排行程，尽可能错峰出行，预留充足时间进站候车，严格按照车票规定的始发、终到站乘车，旅途中加强自身健康防护，共同维护良好出行环境。（来源：中国铁路）', '2024-06-10 07:38:39.741766', '央视新闻');
INSERT INTO `news_news` VALUES ('5', '新疆是个好地方——透视天山南北文旅热', '新疆，拥有占国土面积六分之一的辽阔土地。“三山夹两盆”的特殊地形孕育出高山峡谷、森林草原、河流湖泊、戈壁大漠等绚丽壮美的自然景观，连通东西的地理位置塑造了厚重多元的人文历史沉淀，赋予了新疆得天独厚的旅游资源。\r\n\r\n　　今年以来，新疆旅游市场实现游客量、旅游收入双增长。6月1日，被誉为“中国最美公路”之一的新疆独库公路恢复全线通车，又一个旅游旺季即将到来。\r\n\r\n初夏午后，阿尔泰山苍翠欲滴，牛羊成群。新疆哈巴河县齐巴尔镇吉林新村人头攒动，来自五湖四海的游客走进电视剧《我的阿勒泰》拍摄地，寻找“诗与远方”。　阿勒泰的火爆是新疆旅游依托独特资源优势发展势头良好的表现之一。新疆现有6处世界文化遗产地，3项世界级非物质文化遗产，101项国家级非物质文化遗产，133处全国重点文物保护单位，717个A级旅游景区。在可可托海国家矿山公园景区，游客可以聆听共和国“功勋矿”的故事，沉浸式体验红色旅游；在克拉玛依市乌尔禾区，低空飞行、无人区穿越、越野骑行等特种旅游项目惊险刺激；在喀什古城，身着当地特色服饰，化着精致“古丽”妆，拍摄漂亮旅行写真成为旅游新风尚。', '2024-06-10 09:06:28.360591', '央视新闻');
INSERT INTO `news_news` VALUES ('6', '端午民俗游热度持续攀升', '端午假期，国内文旅市场继续火热。吃粽子、观龙舟、看表演……传统民俗与旅游经济结合愈发紧密，成为消费市场不断升温的缩影。\r\n\r\n　　游客沉浸式体验民俗文化，感受历史脉搏。民俗游成为多地发展文旅的重要抓手。\r\n\r\n　　国潮风盛行\r\n\r\n　　今年端午，湖北宜昌推出“国潮端午”盛宴，通过打造更多沉浸式、互动式、体验式消费新场景，让传统文化潜移默化融入消费全过程。在端午游园会，汉服巡游、龙舟体验、夜游等活动让人沉浸式感受传统节日氛围。\r\n\r\n　　音舞诗画《楚辞里的中国》以新国风演绎传统文化。一帘轻纱、万瞬光华，纱幕光影与屈祠楼宇融为一体，形成梦幻绚烂的舞台背景。以全息投影技术为主的轻量化舞台，将《楚辞》浪漫意境呈现于艺术舞台。\r\n\r\n　　山东临清宛园景区推出了包粽子、编织五彩绳、端午画额、射五毒等体验活动，让游客在欣赏美景的同时，开启一段别开生面的民俗文化之旅。\r\n\r\n　　游客们身着各式汉服沉浸式体验蹴鞠、对弈、掷环、升级版跳房子游戏，感受古人的智慧与快乐。宛园景区副总经理李文静表示：“我们以端午节为契机，将端午民俗和非遗体验相结合，融入景区特色，营造互动式的民俗体验新场景，在传承传统文化的同时，也为游客带来别具一格的新体验。”\r\n\r\n　　龙舟赛火热\r\n\r\n　　赛龙舟是端午的传统习俗之一。近年来，多地积极发展龙舟经济。\r\n\r\n　　家住湖南汨罗、在武汉工作的游客张劲松，得知今年在湖北秭归举办的传统龙舟抢红夺标大赛，将邀请中国端午节申遗“三省四地”群众参赛，早早便来到了秭归。水上龙舟竞渡还没开赛，张先生便先体验了一把旱地赛龙舟，和家人一起玩得十分开心。\r\n\r\n　　“秭归的龙舟文化和体验项目很丰富。”张劲松表示，在秭归，不仅看到了木雕龙舟、草编龙舟、龙舟竞渡图案的刺绣及皮雕，还看到各种各样“舟小龙”文创产品。\r\n\r\n　　鼓声阵阵，挥桨激浪、急刹转弯……6月8日广东海珠湿地龙船景开幕式上，全程高燃的叠滘龙船表演令观众热血澎湃，极速漂移过弯、灵活甩尾等高难度竞技，赢得河涌岸上欢呼声一片。除了龙船表演，“中华战舞”——潮汕英歌舞也前来助兴。\r\n\r\n　　广州海珠区龙舟协会理事陈诒添介绍，今年龙船景，参赛的国际龙舟队和本地村民一样，特别钟意在海珠湿地进行龙舟训练。这里河面宽敞，而且以广州塔为背景，满目绿意、鸟飞鱼跃，划龙舟别有一番趣味。\r\n\r\n　　在龙船景期间的各项赛事中，40支队伍、1200名划手将持续上演26轮水上“狂飙”。其中在龙舟邀请赛中，涵盖女子队、企业代表队、国际队伍的10支龙舟队齐聚海珠湿地，上演了别开生面的赛龙夺锦。', '2024-06-10 09:07:24.290503', '央视新闻');
INSERT INTO `news_news` VALUES ('8', '测试', '12154', '2024-06-11 08:18:54.617690', '赵元博');
