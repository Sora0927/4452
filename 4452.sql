# Host: localhost  (Version: 5.5.40)
# Date: 2015-09-23 12:23:26
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tt_ad"
#

CREATE TABLE `tt_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_ad"
#


#
# Structure for table "tt_asset"
#

CREATE TABLE `tt_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_asset"
#


#
# Structure for table "tt_auth_access"
#

CREATE TABLE `tt_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_auth_access"
#


#
# Structure for table "tt_auth_rule"
#

CREATE TABLE `tt_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

#
# Data for table "tt_auth_rule"
#

INSERT INTO `tt_auth_rule` VALUES (1,'Admin','admin_url','admin/content/default',NULL,'内容管理',1,''),(2,'Api','admin_url','api/guestbookadmin/index',NULL,'所有留言',1,''),(3,'Api','admin_url','api/guestbookadmin/delete',NULL,'删除网站留言',1,''),(4,'Comment','admin_url','comment/commentadmin/index',NULL,'评论管理',1,''),(5,'Comment','admin_url','comment/commentadmin/delete',NULL,'删除评论',1,''),(6,'Comment','admin_url','comment/commentadmin/check',NULL,'评论审核',1,''),(7,'Portal','admin_url','portal/adminpost/index',NULL,'文章管理',1,''),(8,'Portal','admin_url','portal/adminpost/listorders',NULL,'文章排序',1,''),(9,'Portal','admin_url','portal/adminpost/top',NULL,'文章置顶',1,''),(10,'Portal','admin_url','portal/adminpost/recommend',NULL,'文章推荐',1,''),(11,'Portal','admin_url','portal/adminpost/move',NULL,'批量移动',1,''),(12,'Portal','admin_url','portal/adminpost/check',NULL,'文章审核',1,''),(13,'Portal','admin_url','portal/adminpost/delete',NULL,'删除文章',1,''),(14,'Portal','admin_url','portal/adminpost/edit',NULL,'编辑文章',1,''),(15,'Portal','admin_url','portal/adminpost/edit_post',NULL,'提交编辑',1,''),(16,'Portal','admin_url','portal/adminpost/add',NULL,'添加文章',1,''),(17,'Portal','admin_url','portal/adminpost/add_post',NULL,'提交添加',1,''),(18,'Portal','admin_url','portal/adminterm/index',NULL,'分类管理',1,''),(19,'Portal','admin_url','portal/adminterm/listorders',NULL,'文章分类排序',1,''),(20,'Portal','admin_url','portal/adminterm/delete',NULL,'删除分类',1,''),(21,'Portal','admin_url','portal/adminterm/edit',NULL,'编辑分类',1,''),(22,'Portal','admin_url','portal/adminterm/edit_post',NULL,'提交编辑',1,''),(23,'Portal','admin_url','portal/adminterm/add',NULL,'添加分类',1,''),(24,'Portal','admin_url','portal/adminterm/add_post',NULL,'提交添加',1,''),(25,'Portal','admin_url','portal/adminpage/index',NULL,'页面管理',1,''),(26,'Portal','admin_url','portal/adminpage/listorders',NULL,'页面排序',1,''),(27,'Portal','admin_url','portal/adminpage/delete',NULL,'删除页面',1,''),(28,'Portal','admin_url','portal/adminpage/edit',NULL,'编辑页面',1,''),(29,'Portal','admin_url','portal/adminpage/edit_post',NULL,'提交编辑',1,''),(30,'Portal','admin_url','portal/adminpage/add',NULL,'添加页面',1,''),(31,'Portal','admin_url','portal/adminpage/add_post',NULL,'提交添加',1,''),(32,'Admin','admin_url','admin/recycle/default',NULL,'回收站',1,''),(33,'Portal','admin_url','portal/adminpost/recyclebin',NULL,'文章回收',1,''),(34,'Portal','admin_url','portal/adminpost/restore',NULL,'文章还原',1,''),(35,'Portal','admin_url','portal/adminpost/clean',NULL,'彻底删除',1,''),(36,'Portal','admin_url','portal/adminpage/recyclebin',NULL,'页面回收',1,''),(37,'Portal','admin_url','portal/adminpage/clean',NULL,'彻底删除',1,''),(38,'Portal','admin_url','portal/adminpage/restore',NULL,'页面还原',1,''),(39,'Admin','admin_url','admin/extension/default',NULL,'扩展工具',1,''),(40,'Admin','admin_url','admin/backup/default',NULL,'备份管理',1,''),(41,'Admin','admin_url','admin/backup/restore',NULL,'数据还原',1,''),(42,'Admin','admin_url','admin/backup/index',NULL,'数据备份',1,''),(43,'Admin','admin_url','admin/backup/index_post',NULL,'提交数据备份',1,''),(44,'Admin','admin_url','admin/backup/download',NULL,'下载备份',1,''),(45,'Admin','admin_url','admin/backup/del_backup',NULL,'删除备份',1,''),(46,'Admin','admin_url','admin/backup/import',NULL,'数据备份导入',1,''),(47,'Admin','admin_url','admin/plugin/index',NULL,'插件管理',1,''),(48,'Admin','admin_url','admin/plugin/toggle',NULL,'插件启用切换',1,''),(49,'Admin','admin_url','admin/plugin/setting',NULL,'插件设置',1,''),(50,'Admin','admin_url','admin/plugin/setting_post',NULL,'插件设置提交',1,''),(51,'Admin','admin_url','admin/plugin/install',NULL,'插件安装',1,''),(52,'Admin','admin_url','admin/plugin/uninstall',NULL,'插件卸载',1,''),(53,'Admin','admin_url','admin/slide/default',NULL,'幻灯片',1,''),(54,'Admin','admin_url','admin/slide/index',NULL,'幻灯片管理',1,''),(55,'Admin','admin_url','admin/slide/listorders',NULL,'幻灯片排序',1,''),(56,'Admin','admin_url','admin/slide/toggle',NULL,'幻灯片显示切换',1,''),(57,'Admin','admin_url','admin/slide/delete',NULL,'删除幻灯片',1,''),(58,'Admin','admin_url','admin/slide/edit',NULL,'编辑幻灯片',1,''),(59,'Admin','admin_url','admin/slide/edit_post',NULL,'提交编辑',1,''),(60,'Admin','admin_url','admin/slide/add',NULL,'添加幻灯片',1,''),(61,'Admin','admin_url','admin/slide/add_post',NULL,'提交添加',1,''),(62,'Admin','admin_url','admin/slidecat/index',NULL,'幻灯片分类',1,''),(63,'Admin','admin_url','admin/slidecat/delete',NULL,'删除分类',1,''),(64,'Admin','admin_url','admin/slidecat/edit',NULL,'编辑分类',1,''),(65,'Admin','admin_url','admin/slidecat/edit_post',NULL,'提交编辑',1,''),(66,'Admin','admin_url','admin/slidecat/add',NULL,'添加分类',1,''),(67,'Admin','admin_url','admin/slidecat/add_post',NULL,'提交添加',1,''),(68,'Admin','admin_url','admin/ad/index',NULL,'网站广告',1,''),(69,'Admin','admin_url','admin/ad/toggle',NULL,'广告显示切换',1,''),(70,'Admin','admin_url','admin/ad/delete',NULL,'删除广告',1,''),(71,'Admin','admin_url','admin/ad/edit',NULL,'编辑广告',1,''),(72,'Admin','admin_url','admin/ad/edit_post',NULL,'提交编辑',1,''),(73,'Admin','admin_url','admin/ad/add',NULL,'添加广告',1,''),(74,'Admin','admin_url','admin/ad/add_post',NULL,'提交添加',1,''),(75,'Admin','admin_url','admin/link/index',NULL,'友情链接',1,''),(76,'Admin','admin_url','admin/link/listorders',NULL,'友情链接排序',1,''),(77,'Admin','admin_url','admin/link/toggle',NULL,'友链显示切换',1,''),(78,'Admin','admin_url','admin/link/delete',NULL,'删除友情链接',1,''),(79,'Admin','admin_url','admin/link/edit',NULL,'编辑友情链接',1,''),(80,'Admin','admin_url','admin/link/edit_post',NULL,'提交编辑',1,''),(81,'Admin','admin_url','admin/link/add',NULL,'添加友情链接',1,''),(82,'Admin','admin_url','admin/link/add_post',NULL,'提交添加',1,''),(83,'Api','admin_url','api/oauthadmin/setting',NULL,'第三方登陆',1,''),(84,'Api','admin_url','api/oauthadmin/setting_post',NULL,'提交设置',1,''),(85,'Admin','admin_url','admin/menu/default',NULL,'菜单管理',1,''),(86,'Admin','admin_url','admin/navcat/default1',NULL,'前台菜单',1,''),(87,'Admin','admin_url','admin/nav/index',NULL,'菜单管理',1,''),(88,'Admin','admin_url','admin/nav/listorders',NULL,'前台导航排序',1,''),(89,'Admin','admin_url','admin/nav/delete',NULL,'删除菜单',1,''),(90,'Admin','admin_url','admin/nav/edit',NULL,'编辑菜单',1,''),(91,'Admin','admin_url','admin/nav/edit_post',NULL,'提交编辑',1,''),(92,'Admin','admin_url','admin/nav/add',NULL,'添加菜单',1,''),(93,'Admin','admin_url','admin/nav/add_post',NULL,'提交添加',1,''),(94,'Admin','admin_url','admin/navcat/index',NULL,'菜单分类',1,''),(95,'Admin','admin_url','admin/navcat/delete',NULL,'删除分类',1,''),(96,'Admin','admin_url','admin/navcat/edit',NULL,'编辑分类',1,''),(97,'Admin','admin_url','admin/navcat/edit_post',NULL,'提交编辑',1,''),(98,'Admin','admin_url','admin/navcat/add',NULL,'添加分类',1,''),(99,'Admin','admin_url','admin/navcat/add_post',NULL,'提交添加',1,''),(100,'Admin','admin_url','admin/menu/index',NULL,'后台菜单',1,''),(101,'Admin','admin_url','admin/menu/add',NULL,'添加菜单',1,''),(102,'Admin','admin_url','admin/menu/add_post',NULL,'提交添加',1,''),(103,'Admin','admin_url','admin/menu/listorders',NULL,'后台菜单排序',1,''),(104,'Admin','admin_url','admin/menu/export_menu',NULL,'菜单备份',1,''),(105,'Admin','admin_url','admin/menu/edit',NULL,'编辑菜单',1,''),(106,'Admin','admin_url','admin/menu/edit_post',NULL,'提交编辑',1,''),(107,'Admin','admin_url','admin/menu/delete',NULL,'删除菜单',1,''),(108,'Admin','admin_url','admin/menu/lists',NULL,'所有菜单',1,''),(109,'Admin','admin_url','admin/setting/default',NULL,'设置',1,''),(110,'Admin','admin_url','admin/setting/userdefault',NULL,'个人信息',1,''),(111,'Admin','admin_url','admin/user/userinfo',NULL,'修改信息',1,''),(112,'Admin','admin_url','admin/user/userinfo_post',NULL,'修改信息提交',1,''),(113,'Admin','admin_url','admin/setting/password',NULL,'修改密码',1,''),(114,'Admin','admin_url','admin/setting/password_post',NULL,'提交修改',1,''),(115,'Admin','admin_url','admin/setting/site',NULL,'网站信息',1,''),(116,'Admin','admin_url','admin/setting/site_post',NULL,'提交修改',1,''),(117,'Admin','admin_url','admin/route/index',NULL,'路由列表',1,''),(118,'Admin','admin_url','admin/route/add',NULL,'路由添加',1,''),(119,'Admin','admin_url','admin/route/add_post',NULL,'路由添加提交',1,''),(120,'Admin','admin_url','admin/route/edit',NULL,'路由编辑',1,''),(121,'Admin','admin_url','admin/route/edit_post',NULL,'路由编辑提交',1,''),(122,'Admin','admin_url','admin/route/delete',NULL,'路由删除',1,''),(123,'Admin','admin_url','admin/route/ban',NULL,'路由禁止',1,''),(124,'Admin','admin_url','admin/route/open',NULL,'路由启用',1,''),(125,'Admin','admin_url','admin/route/listorders',NULL,'路由排序',1,''),(126,'Admin','admin_url','admin/mailer/default',NULL,'邮箱配置',1,''),(127,'Admin','admin_url','admin/mailer/index',NULL,'SMTP配置',1,''),(128,'Admin','admin_url','admin/mailer/index_post',NULL,'提交配置',1,''),(129,'Admin','admin_url','admin/mailer/active',NULL,'邮件模板',1,''),(130,'Admin','admin_url','admin/mailer/active_post',NULL,'提交模板',1,''),(131,'Admin','admin_url','admin/setting/clearcache',NULL,'清除缓存',1,''),(132,'User','admin_url','user/indexadmin/default',NULL,'用户管理',1,''),(133,'User','admin_url','user/indexadmin/default1',NULL,'用户组',1,''),(134,'User','admin_url','user/indexadmin/index',NULL,'本站用户',1,''),(135,'User','admin_url','user/indexadmin/ban',NULL,'拉黑会员',1,''),(136,'User','admin_url','user/indexadmin/cancelban',NULL,'启用会员',1,''),(137,'User','admin_url','user/oauthadmin/index',NULL,'第三方用户',1,''),(138,'User','admin_url','user/oauthadmin/delete',NULL,'第三方用户解绑',1,''),(139,'User','admin_url','user/indexadmin/default3',NULL,'管理组',1,''),(140,'Admin','admin_url','admin/rbac/index',NULL,'角色管理',1,''),(141,'Admin','admin_url','admin/rbac/member',NULL,'成员管理',1,''),(142,'Admin','admin_url','admin/rbac/authorize',NULL,'权限设置',1,''),(143,'Admin','admin_url','admin/rbac/authorize_post',NULL,'提交设置',1,''),(144,'Admin','admin_url','admin/rbac/roleedit',NULL,'编辑角色',1,''),(145,'Admin','admin_url','admin/rbac/roleedit_post',NULL,'提交编辑',1,''),(146,'Admin','admin_url','admin/rbac/roledelete',NULL,'删除角色',1,''),(147,'Admin','admin_url','admin/rbac/roleadd',NULL,'添加角色',1,''),(148,'Admin','admin_url','admin/rbac/roleadd_post',NULL,'提交添加',1,''),(149,'Admin','admin_url','admin/user/index',NULL,'管理员',1,''),(150,'Admin','admin_url','admin/user/delete',NULL,'删除管理员',1,''),(151,'Admin','admin_url','admin/user/edit',NULL,'管理员编辑',1,''),(152,'Admin','admin_url','admin/user/edit_post',NULL,'编辑提交',1,''),(153,'Admin','admin_url','admin/user/add',NULL,'管理员添加',1,''),(154,'Admin','admin_url','admin/user/add_post',NULL,'添加提交',1,''),(155,'Admin','admin_url','admin/plugin/update',NULL,'插件更新',1,''),(156,'Admin','admin_url','admin/storage/index',NULL,'文件存储',1,''),(157,'Admin','admin_url','admin/storage/setting_post',NULL,'文件存储设置提交',1,''),(158,'Admin','admin_url','admin/slide/ban',NULL,'禁用幻灯片',1,''),(159,'Admin','admin_url','admin/slide/cancelban',NULL,'启用幻灯片',1,''),(160,'Admin','admin_url','admin/user/ban',NULL,'禁用管理员',1,''),(161,'Admin','admin_url','admin/user/cancelban',NULL,'启用管理员',1,'');

#
# Structure for table "tt_comments"
#

CREATE TABLE `tt_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "tt_comments"
#

INSERT INTO `tt_comments` VALUES (1,'posts',1,'index.php?g=&amp;m=article&amp;a=index&amp;id=1',2,0,'test','test@qq.com','2015-09-15 20:54:02','挺好的啊',1,0,'0-1',1),(2,'posts',3,'index.php?g=&amp;m=article&amp;a=index&amp;id=3',2,0,'test','test@qq.com','2015-09-16 14:58:31','safeh',1,0,'0-2',1),(3,'posts',2,'index.php?g=&amp;m=article&amp;a=index&amp;id=2',2,0,'test','test@qq.com','2015-09-16 20:53:06','的闪光点',1,0,'0-3',1),(4,'posts',3,'index.php?g=&amp;m=article&amp;a=index&amp;id=3',2,0,'test','test@qq.com','2015-09-16 21:14:04','dasd',1,0,'0-4',1),(5,'posts',0,'index.php?m=list&amp;a=index&amp;id=3',2,0,'test','test@qq.com','2015-09-16 21:22:19','接口',1,0,'0-5',1),(6,'posts',18,'index.php?g=&amp;m=article&amp;a=index&amp;id=18',1,0,'admin','8888@qq.com','2015-09-22 14:42:13','打算',1,0,'0-6',1),(7,'posts',18,'index.php?g=&amp;m=article&amp;a=index&amp;id=18',1,0,'admin','8888@qq.com','2015-09-22 16:20:14','大地方上覆盖和进口量',1,0,'0-7',1);

#
# Structure for table "tt_common_action_log"
#

CREATE TABLE `tt_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "tt_common_action_log"
#

INSERT INTO `tt_common_action_log` VALUES (1,2,'posts1','Portal-Article-index',5,1442386724,'0.0.0.0'),(2,2,'posts3','Portal-Article-index',20,1442409498,'0.0.0.0'),(3,2,'posts3','Portal-Article-do_like',1,1442322213,'0.0.0.0'),(4,0,'posts2','Portal-Article-index',15,1442407681,'0.0.0.0'),(5,0,'posts3','Portal-Article-index',20,1442408595,'0.0.0.0'),(6,2,'posts2','Portal-Article-index',16,1442408269,'0.0.0.0'),(7,0,'posts4','Portal-Article-index',2,1442409957,'0.0.0.0'),(8,0,'posts5','Portal-Article-index',1,1442410445,'0.0.0.0'),(9,0,'posts13','Portal-Article-index',1,1442410760,'0.0.0.0'),(10,0,'posts11','Portal-Article-index',4,1442896003,'0.0.0.0'),(11,2,'posts7','Portal-Article-index',1,1442412011,'0.0.0.0'),(12,0,'posts17','Portal-Article-index',1,1442893058,'0.0.0.0'),(13,0,'posts18','Portal-Article-index',9,1442910779,'0.0.0.0'),(14,1,'posts18','Portal-Article-index',130,1442910477,'0.0.0.0'),(15,1,'posts14','Portal-Article-index',1,1442897550,'0.0.0.0'),(16,1,'posts12','Portal-Article-index',2,1442897585,'0.0.0.0'),(17,1,'posts17','Portal-Article-index',2,1442910030,'0.0.0.0'),(18,1,'posts9','Portal-Article-index',2,1442909974,'0.0.0.0'),(19,1,'posts19','Portal-Article-index',10,1442910465,'0.0.0.0'),(20,1,'posts16','Portal-Article-index',1,1442910037,'0.0.0.0'),(21,1,'posts3','Portal-Article-index',1,1442910043,'0.0.0.0'),(22,3,'posts18','Portal-Article-index',44,1442911718,'0.0.0.0');

#
# Structure for table "tt_guestbook"
#

CREATE TABLE `tt_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_guestbook"
#


#
# Structure for table "tt_join_us"
#

CREATE TABLE `tt_join_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

#
# Data for table "tt_join_us"
#


#
# Structure for table "tt_links"
#

CREATE TABLE `tt_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "tt_links"
#

INSERT INTO `tt_links` VALUES (1,'http://www.baidu.com','百度','','_blank','',1,0,'',0);

#
# Structure for table "tt_menu"
#

CREATE TABLE `tt_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

#
# Data for table "tt_menu"
#

INSERT INTO `tt_menu` VALUES (1,0,'Admin','Content','default','',0,1,'内容管理','th','',30),(2,1,'Api','Guestbookadmin','index','',1,1,'所有留言','','',0),(3,2,'Api','Guestbookadmin','delete','',1,0,'删除网站留言','','',0),(4,1,'Comment','Commentadmin','index','',1,1,'评论管理','','',0),(5,4,'Comment','Commentadmin','delete','',1,0,'删除评论','','',0),(6,4,'Comment','Commentadmin','check','',1,0,'评论审核','','',0),(7,1,'Portal','AdminPost','index','',1,1,'文章管理','','',1),(8,7,'Portal','AdminPost','listorders','',1,0,'文章排序','','',0),(9,7,'Portal','AdminPost','top','',1,0,'文章置顶','','',0),(10,7,'Portal','AdminPost','recommend','',1,0,'文章推荐','','',0),(11,7,'Portal','AdminPost','move','',1,0,'批量移动','','',1000),(12,7,'Portal','AdminPost','check','',1,0,'文章审核','','',1000),(13,7,'Portal','AdminPost','delete','',1,0,'删除文章','','',1000),(14,7,'Portal','AdminPost','edit','',1,0,'编辑文章','','',1000),(15,14,'Portal','AdminPost','edit_post','',1,0,'提交编辑','','',0),(16,7,'Portal','AdminPost','add','',1,0,'添加文章','','',1000),(17,16,'Portal','AdminPost','add_post','',1,0,'提交添加','','',0),(18,1,'Portal','AdminTerm','index','',0,1,'分类管理','','',2),(19,18,'Portal','AdminTerm','listorders','',1,0,'文章分类排序','','',0),(20,18,'Portal','AdminTerm','delete','',1,0,'删除分类','','',1000),(21,18,'Portal','AdminTerm','edit','',1,0,'编辑分类','','',1000),(22,21,'Portal','AdminTerm','edit_post','',1,0,'提交编辑','','',0),(23,18,'Portal','AdminTerm','add','',1,0,'添加分类','','',1000),(24,23,'Portal','AdminTerm','add_post','',1,0,'提交添加','','',0),(25,1,'Portal','AdminPage','index','',1,1,'页面管理','','',3),(26,25,'Portal','AdminPage','listorders','',1,0,'页面排序','','',0),(27,25,'Portal','AdminPage','delete','',1,0,'删除页面','','',1000),(28,25,'Portal','AdminPage','edit','',1,0,'编辑页面','','',1000),(29,28,'Portal','AdminPage','edit_post','',1,0,'提交编辑','','',0),(30,25,'Portal','AdminPage','add','',1,0,'添加页面','','',1000),(31,30,'Portal','AdminPage','add_post','',1,0,'提交添加','','',0),(32,1,'Admin','Recycle','default','',1,1,'回收站','','',4),(33,32,'Portal','AdminPost','recyclebin','',1,1,'文章回收','','',0),(34,33,'Portal','AdminPost','restore','',1,0,'文章还原','','',1000),(35,33,'Portal','AdminPost','clean','',1,0,'彻底删除','','',1000),(36,32,'Portal','AdminPage','recyclebin','',1,1,'页面回收','','',1),(37,36,'Portal','AdminPage','clean','',1,0,'彻底删除','','',1000),(38,36,'Portal','AdminPage','restore','',1,0,'页面还原','','',1000),(39,0,'Admin','Extension','default','',0,1,'扩展工具','cloud','',40),(40,39,'Admin','Backup','default','',1,1,'备份管理','','',0),(41,40,'Admin','Backup','restore','',1,1,'数据还原','','',0),(42,40,'Admin','Backup','index','',1,1,'数据备份','','',0),(43,42,'Admin','Backup','index_post','',1,0,'提交数据备份','','',0),(44,40,'Admin','Backup','download','',1,0,'下载备份','','',1000),(45,40,'Admin','Backup','del_backup','',1,0,'删除备份','','',1000),(46,40,'Admin','Backup','import','',1,0,'数据备份导入','','',1000),(47,39,'Admin','Plugin','index','',1,1,'插件管理','','',0),(48,47,'Admin','Plugin','toggle','',1,0,'插件启用切换','','',0),(49,47,'Admin','Plugin','setting','',1,0,'插件设置','','',0),(50,49,'Admin','Plugin','setting_post','',1,0,'插件设置提交','','',0),(51,47,'Admin','Plugin','install','',1,0,'插件安装','','',0),(52,47,'Admin','Plugin','uninstall','',1,0,'插件卸载','','',0),(53,39,'Admin','Slide','default','',1,1,'幻灯片','','',1),(54,53,'Admin','Slide','index','',1,1,'幻灯片管理','','',0),(55,54,'Admin','Slide','listorders','',1,0,'幻灯片排序','','',0),(56,54,'Admin','Slide','toggle','',1,0,'幻灯片显示切换','','',0),(57,54,'Admin','Slide','delete','',1,0,'删除幻灯片','','',1000),(58,54,'Admin','Slide','edit','',1,0,'编辑幻灯片','','',1000),(59,58,'Admin','Slide','edit_post','',1,0,'提交编辑','','',0),(60,54,'Admin','Slide','add','',1,0,'添加幻灯片','','',1000),(61,60,'Admin','Slide','add_post','',1,0,'提交添加','','',0),(62,53,'Admin','Slidecat','index','',1,1,'幻灯片分类','','',0),(63,62,'Admin','Slidecat','delete','',1,0,'删除分类','','',1000),(64,62,'Admin','Slidecat','edit','',1,0,'编辑分类','','',1000),(65,64,'Admin','Slidecat','edit_post','',1,0,'提交编辑','','',0),(66,62,'Admin','Slidecat','add','',1,0,'添加分类','','',1000),(67,66,'Admin','Slidecat','add_post','',1,0,'提交添加','','',0),(68,39,'Admin','Ad','index','',1,1,'网站广告','','',2),(69,68,'Admin','Ad','toggle','',1,0,'广告显示切换','','',0),(70,68,'Admin','Ad','delete','',1,0,'删除广告','','',1000),(71,68,'Admin','Ad','edit','',1,0,'编辑广告','','',1000),(72,71,'Admin','Ad','edit_post','',1,0,'提交编辑','','',0),(73,68,'Admin','Ad','add','',1,0,'添加广告','','',1000),(74,73,'Admin','Ad','add_post','',1,0,'提交添加','','',0),(75,39,'Admin','Link','index','',0,1,'友情链接','','',3),(76,75,'Admin','Link','listorders','',1,0,'友情链接排序','','',0),(77,75,'Admin','Link','toggle','',1,0,'友链显示切换','','',0),(78,75,'Admin','Link','delete','',1,0,'删除友情链接','','',1000),(79,75,'Admin','Link','edit','',1,0,'编辑友情链接','','',1000),(80,79,'Admin','Link','edit_post','',1,0,'提交编辑','','',0),(81,75,'Admin','Link','add','',1,0,'添加友情链接','','',1000),(82,81,'Admin','Link','add_post','',1,0,'提交添加','','',0),(83,39,'Api','Oauthadmin','setting','',1,1,'第三方登陆','leaf','',4),(84,83,'Api','Oauthadmin','setting_post','',1,0,'提交设置','','',0),(85,0,'Admin','Menu','default','',1,1,'菜单管理','list','',20),(86,85,'Admin','Navcat','default1','',1,1,'前台菜单','','',0),(87,86,'Admin','Nav','index','',1,1,'菜单管理','','',0),(88,87,'Admin','Nav','listorders','',1,0,'前台导航排序','','',0),(89,87,'Admin','Nav','delete','',1,0,'删除菜单','','',1000),(90,87,'Admin','Nav','edit','',1,0,'编辑菜单','','',1000),(91,90,'Admin','Nav','edit_post','',1,0,'提交编辑','','',0),(92,87,'Admin','Nav','add','',1,0,'添加菜单','','',1000),(93,92,'Admin','Nav','add_post','',1,0,'提交添加','','',0),(94,86,'Admin','Navcat','index','',1,1,'菜单分类','','',0),(95,94,'Admin','Navcat','delete','',1,0,'删除分类','','',1000),(96,94,'Admin','Navcat','edit','',1,0,'编辑分类','','',1000),(97,96,'Admin','Navcat','edit_post','',1,0,'提交编辑','','',0),(98,94,'Admin','Navcat','add','',1,0,'添加分类','','',1000),(99,98,'Admin','Navcat','add_post','',1,0,'提交添加','','',0),(100,85,'Admin','Menu','index','',1,1,'后台菜单','','',0),(101,100,'Admin','Menu','add','',1,0,'添加菜单','','',0),(102,101,'Admin','Menu','add_post','',1,0,'提交添加','','',0),(103,100,'Admin','Menu','listorders','',1,0,'后台菜单排序','','',0),(104,100,'Admin','Menu','export_menu','',1,0,'菜单备份','','',1000),(105,100,'Admin','Menu','edit','',1,0,'编辑菜单','','',1000),(106,105,'Admin','Menu','edit_post','',1,0,'提交编辑','','',0),(107,100,'Admin','Menu','delete','',1,0,'删除菜单','','',1000),(108,100,'Admin','Menu','lists','',1,0,'所有菜单','','',1000),(109,0,'Admin','Setting','default','',0,1,'设置','cogs','',0),(110,109,'Admin','Setting','userdefault','',0,1,'个人信息','','',0),(111,110,'Admin','User','userinfo','',1,1,'修改信息','','',0),(112,111,'Admin','User','userinfo_post','',1,0,'修改信息提交','','',0),(113,110,'Admin','Setting','password','',1,1,'修改密码','','',0),(114,113,'Admin','Setting','password_post','',1,0,'提交修改','','',0),(115,109,'Admin','Setting','site','',1,1,'网站信息','','',0),(116,115,'Admin','Setting','site_post','',1,0,'提交修改','','',0),(117,115,'Admin','Route','index','',1,0,'路由列表','','',0),(118,115,'Admin','Route','add','',1,0,'路由添加','','',0),(119,118,'Admin','Route','add_post','',1,0,'路由添加提交','','',0),(120,115,'Admin','Route','edit','',1,0,'路由编辑','','',0),(121,120,'Admin','Route','edit_post','',1,0,'路由编辑提交','','',0),(122,115,'Admin','Route','delete','',1,0,'路由删除','','',0),(123,115,'Admin','Route','ban','',1,0,'路由禁止','','',0),(124,115,'Admin','Route','open','',1,0,'路由启用','','',0),(125,115,'Admin','Route','listorders','',1,0,'路由排序','','',0),(126,109,'Admin','Mailer','default','',1,1,'邮箱配置','','',0),(127,126,'Admin','Mailer','index','',1,1,'SMTP配置','','',0),(128,127,'Admin','Mailer','index_post','',1,0,'提交配置','','',0),(129,126,'Admin','Mailer','active','',1,1,'邮件模板','','',0),(130,129,'Admin','Mailer','active_post','',1,0,'提交模板','','',0),(131,109,'Admin','Setting','clearcache','',1,1,'清除缓存','','',1),(132,0,'User','Indexadmin','default','',1,1,'用户管理','group','',10),(133,132,'User','Indexadmin','default1','',1,1,'用户组','','',0),(134,133,'User','Indexadmin','index','',1,1,'本站用户','leaf','',0),(135,134,'User','Indexadmin','ban','',1,0,'拉黑会员','','',0),(136,134,'User','Indexadmin','cancelban','',1,0,'启用会员','','',0),(137,133,'User','Oauthadmin','index','',1,1,'第三方用户','leaf','',0),(138,137,'User','Oauthadmin','delete','',1,0,'第三方用户解绑','','',0),(139,132,'User','Indexadmin','default3','',1,1,'管理组','','',0),(140,139,'Admin','Rbac','index','',1,1,'角色管理','','',0),(141,140,'Admin','Rbac','member','',1,0,'成员管理','','',1000),(142,140,'Admin','Rbac','authorize','',1,0,'权限设置','','',1000),(143,142,'Admin','Rbac','authorize_post','',1,0,'提交设置','','',0),(144,140,'Admin','Rbac','roleedit','',1,0,'编辑角色','','',1000),(145,144,'Admin','Rbac','roleedit_post','',1,0,'提交编辑','','',0),(146,140,'Admin','Rbac','roledelete','',1,1,'删除角色','','',1000),(147,140,'Admin','Rbac','roleadd','',1,1,'添加角色','','',1000),(148,147,'Admin','Rbac','roleadd_post','',1,0,'提交添加','','',0),(149,139,'Admin','User','index','',1,1,'管理员','','',0),(150,149,'Admin','User','delete','',1,0,'删除管理员','','',1000),(151,149,'Admin','User','edit','',1,0,'管理员编辑','','',1000),(152,151,'Admin','User','edit_post','',1,0,'编辑提交','','',0),(153,149,'Admin','User','add','',1,0,'管理员添加','','',1000),(154,153,'Admin','User','add_post','',1,0,'添加提交','','',0),(155,47,'Admin','Plugin','update','',1,0,'插件更新','','',0),(156,39,'Admin','Storage','index','',1,1,'文件存储','','',0),(157,156,'Admin','Storage','setting_post','',1,0,'文件存储设置提交','','',0),(158,54,'Admin','Slide','ban','',1,0,'禁用幻灯片','','',0),(159,54,'Admin','Slide','cancelban','',1,0,'启用幻灯片','','',0),(160,149,'Admin','User','ban','',1,0,'禁用管理员','','',0),(161,149,'Admin','User','cancelban','',1,0,'启用管理员','','',0);

#
# Structure for table "tt_nav"
#

CREATE TABLE `tt_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "tt_nav"
#

INSERT INTO `tt_nav` VALUES (1,1,0,'首页','','home','',1,0,'0-1'),(2,1,0,'校内生活','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','',1,0,'0-2'),(3,1,0,'校外生活','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','',1,0,'0-3'),(4,1,0,'志愿者招募','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}','',1,0,'0-4'),(5,1,0,'最新新闻','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','',1,0,'0-5'),(6,1,0,'金牌排名','','/index.php?m=phb&a=index&id=16','',1,0,'0-6'),(7,1,2,'校内兼职','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"8\";}}','',1,0,'0-2-7'),(8,1,2,'自习族','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"10\";}}','',1,0,'0-2-8'),(9,1,2,'校内交易','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"15\";}}','',1,0,'0-2-9'),(10,1,3,'校外兼职','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"16\";}}','',1,0,'0-3-10'),(11,1,3,'创业','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"21\";}}','',1,0,'0-3-11'),(12,1,3,'娱乐','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"20\";}}','',1,0,'0-3-12'),(13,1,3,'校外招聘','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"19\";}}','',1,0,'0-3-13'),(14,1,4,'校内招募','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"22\";}}','',1,0,'0-4-14'),(15,1,4,'校外招募','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"23\";}}','',1,0,'0-4-15'),(16,1,2,'拼车党','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"9\";}}','',1,0,'0-2-16'),(17,1,2,'讲座','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"7\";}}','',1,0,'0-2-17');

#
# Structure for table "tt_nav_cat"
#

CREATE TABLE `tt_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "tt_nav_cat"
#

INSERT INTO `tt_nav_cat` VALUES (1,'主导航',1,'主导航');

#
# Structure for table "tt_oauth_user"
#

CREATE TABLE `tt_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_oauth_user"
#


#
# Structure for table "tt_options"
#

CREATE TABLE `tt_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tt_options"
#

INSERT INTO `tt_options` VALUES (1,'member_email_active','{\"title\":\"\\u63a8\\u63a8\\u7f51\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea\\u63a8\\u63a8\\u7f51<br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662f\\u63a8\\u63a8\\u7f51\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; \\u63a8\\u63a8\\u7f51 \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}',1),(2,'site_options','{\"site_name\":\"\\u63a8\\u63a8\\u7f51\",\"site_host\":\"http:\\/\\/localhost\\/\",\"site_tpl\":\"simplebootx\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\",\"site_admin_email\":\"8888@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"\\u63a8\\u63a8\\u7f51\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\\u63a8\\u63a8\\u7f51\",\"urlmode\":\"0\",\"html_suffix\":\"\",\"comment_time_interval\":60}',1),(3,'cmf_settings','{\"banned_usernames\":\"\"}',1);

#
# Structure for table "tt_plugins"
#

CREATE TABLE `tt_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='插件表';

#
# Data for table "tt_plugins"
#


#
# Structure for table "tt_posts"
#

CREATE TABLE `tt_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  `isactive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,非活动，1，活动',
  `activecount` int(11) NOT NULL DEFAULT '0' COMMENT '活动总人数',
  `applycount` int(11) NOT NULL DEFAULT '0' COMMENT '报名人数',
  `activefinishtime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `activestarttime` datetime DEFAULT NULL COMMENT '活动开始时间',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "tt_posts"
#

INSERT INTO `tt_posts` VALUES (1,1,'','','2015-09-15 20:52:17','<p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">1947年出生，四川人，早年留学美国，2002年起兼任中科院遥感应用研究所所长，现任北京师范大学资源与环境学院副院长，遥感与地理信息系统研究中心主任。国内遥感领域泰斗级专家。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　这几天，院士李小文颇有些苦恼。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　被强推到聚光灯下的不自在，源自他在中国科学院大学讲座的一张照片走红网络。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　4月18日，这张照片被贴到<span class=\"infoMblog \" style=\"position: relative; z-index: 9;\"><a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/pagerenren#pref=qqcom.keyword\" rel=\"pagerenren\" reltitle=\"人人网\" target=\"_blank\" style=\"outline: none; color: rgb(0, 0, 0); text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(83, 109, 166);\">人人网</a></span>上，照片里，蓄着胡须的李小文穿着黑色外套，没穿袜子的脚上蹬着一双布鞋，不经意地跷着二郎腿，低头念着发言稿。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　山村老人形象与院士身份形成的强烈反差，让网友惊叹，“一派仙风道骨，完全就是古龙笔下的侠士。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文传奇的经历一层层被剥开，网络上充满了排山倒海的惊叹之声。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“李小文”作为关键词，迅速排在了搜索引擎的第一位；他在科学网开设的博客，成了一周热门博客第一名，点击量迅速超过了400万次。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有网友说，照片里的李小文像《天龙八部》里的扫地僧，低调、沉默，却有着惊人天分和盖世神功。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　而在照片的“背后”，熟悉李小文的人却觉得莫名其妙，作为国内遥感领域泰斗级专家，李小文在学术界早就是人尽皆知的“技术宅”和“优质叔”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>“红人”的烦恼</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　电话里，李小文说“冷一冷”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　媒体和网友的持续关注成了他的负担。他希望用这种方式让舆论的山洪消退。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文的声音低沉而果断，这种气场与照片里“看似作脱贫报告的老人”似乎格格不入，只有在提到网友对他的评价时，他才哈哈一笑，“谢谢网友们。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　18日的那场讲座在李小文看来，这只算一次与学生们的闲谈，没什么特别。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　如果不是因为那张照片，媒体蜂拥而至，他能平静地研究遥感领域“流形”与“分形”的区别，或者继续研究环保部和国土部发布的全国土壤污染状况调查公报。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　67岁的老人有自己对付新闻的高招。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有时，他会在电话里赔笑，“理解一下，理解一下”；有时他会用商量的语气说，“再等等，等这波热点过去吧”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文了解新闻的传播规律，希望赶紧出个新闻，为自己那张被热炒的照片降降温，过了两天温度没降，他又略带委屈地向记者解释，“本以为这两天热度会过去的”，然后在邮件里和记者商量，能不能以文会友。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文说记者四处寻他让他很不好意思，自己文字不好，写文章有些词不达意，向记者请教文章该写成什么样子才算合格。其实李小文在谦虚，他用几句简单的古文，就可以解释复杂的遥感原理。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　博客里，近百名网友给李小文留言，说他红了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文不做回应，只以“敬答好友”为题留下博文，里面只有一个链接，是河南贫困县舞阳县的贴吧。4月初，舞阳县中小学数千名教师停课罢工，抗议政府克扣工资，一直没得到回应。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有网友揣测李小文的本意，他不希望自己作为院士因为一张照片走红，而是希望更多的普通教师的合法权益，得到应有的关注。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>“扫地僧”的修为</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　貌不惊人，盖世神功。这是网友认为李小文像《天龙八部》里扫地僧的理由。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在北师大地理学与遥感科学学院教授谢云看来，李小文是国内遥感界泰斗级的专家。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　但第一次见面让谢云很意外。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　当时，学院里一名老教师即将退休，为了让学院在遥感领域进一步发展，领导邀请了在中科院遥感所的李小文，“那时他才53岁，已经有那么多成果了，在我们眼里那就是偶像。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　一天，谢云下楼时，发现迎面上楼的男子穿着白衬衫黑裤子，手里拎着上世纪80年代流行的半圆形黑包，脚上是一双布鞋，“特别土，我还想这人来我们这儿有什么事，别人告诉我才知道，他就是大名鼎鼎的李小文。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　偶像的这身装扮，让谢云很意外。他后来听同事讲，李小文第一次到学院报到，就因为这身装束，被门卫挡在了外面，以为他是来推销的农民。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　谢云说，这么多年不管冬夏，李小文都穿布鞋，冬天穿的是大厚布棉鞋。虽然系里好几个老师也穿，“但他们都穿袜子，李院士不爱穿。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在学生王易的印象里，每次见到李老师，脚上都是一双布鞋，甚至裤腿也会挽起来，和网上流传的照片几乎一模一样。她纳闷，为什么这一次老师会出名，“这些都是我们见惯了的。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“扫地僧”更值得称道的是他在学术上的修炼和勤勉。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2005年，李小文在中科院遥感应用研究所做所长，白天在研究所上班，晚上回北师大做课题。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　地遥学院晚上11点关门，李小文经常忙到很晚，每次回来都要叫值班室帮忙开门。李小文去找系主任，当时有个口号是“要把北师大办成国际一流大学”，他问系主任，“咱不是要办成国际一流大学吗？你在美国时，看哪个国际一流大学晚上11点钟就把门锁了？”后来院里开会，把钥匙分给了李小文一把，再也不影响他忙到半夜了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　后来，李小文接连承担两个大的国家项目，作为其中的首席科学家，忙到2011年，累得生病住进了医院。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　对于这次住院，谢云觉得是李小文太不关心自己。他的两个女儿在国外读书，妻子也在国外，独自在家，没有严格的作息规律，一天到晚吃点米粥、咸菜就行。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在谢云印象里，李小文此前还住过一次院，医生诊断结果是营养不良，“这个年代了，院士还能得营养不良。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>爱打赌的教书匠</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文做的是遥感基础研究。波士顿大学地理系主任Strahler教授曾评价，李小文是这一领域最顶尖的两三位科学家之一。除了很多被广泛引用的研究论文，李小文的快乐来自学生。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有人曾问李小文喜欢带什么样的学生，李小文的观点是“有教无类”，“只要愿意跟我念书的，我都愿意带。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　学生胡荣海说，李小文在讲解遥感知识时，特别擅长比喻，遥感观测力学中有“尺度”效应，李小文是这样解释的：观测就和看美女一样，太远了什么都看不清，太近了看到她的毛孔又不美了，只有不远不近时，才是最美的。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　他善于用古诗词解释复杂的遥感理论。谈到遥感的优势，李小文引用苏东坡《题西林壁》诗：“横看成岭侧成峰，远近高低各不同。不识<span class=\"infoMblog\" style=\"position: relative; z-index: 9;\"><a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/lushanlvyouju#pref=qqcom.keyword\" rel=\"lushanlvyouju\" reltitle=\"庐山\" target=\"_blank\" style=\"outline: none; color: rgb(0, 0, 0); text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(83, 109, 166);\">庐山</a></span>真面目，只缘身在此山中。”讲到遥感的大气纠正，他引用“扬州八怪”之一的金冬心的诗：“夕阳方照桃花坞，柳絮飞来片片红。”讲到自己的成名作“遥感几何光学模型”，他说其实就是韩愈《早春呈水部张十八员外》一诗中的“草色遥看近却无”，春草直生，远看绿色浓郁，但站到近处看，绿色就没有那么浓密了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文喜欢和学生打赌，学生们也知道，老师和自己打赌另有用意。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　他从来不反对学生的意见，哪怕是特别幼稚的想法，他也会让学生试一试，而打赌更能坚定学生尝试的决心。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有一次，一名学生在实验观测中发现，太阳可以从东北方向升起、西北方向落下。李小文起初认为这有悖于人们的常识，为了给学生一个发现真理的机会，他就和这个学生打赌。师生俩分头查阅资料，仔细论证。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　最终，学生赢了老师。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　他曾在博客里提到“老师合格的标准”：就是让学生做自己的掘墓人。他举了一个例子，“柯达发明了数码相机，反而成了自己(彩卷)的掘墓人。这有什么不好呢？如果柯达吃了亏，那是自己转轨太慢。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>带酒壶的“令狐冲”</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　早年在美国留学，闲暇时，李小文最喜欢读金庸的武侠小说。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　他更喜欢金庸笔下《笑傲江湖》里的令狐冲，自己在性格上有点像令狐冲。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　和令狐冲一样，李小文也喜欢喝酒，以前一天能喝一斤。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　他说自己没有太大的欲求，能有二锅头相伴，足够了。学生们证实，李老师白酒不离身。他有个酒壶，里面随时装着二锅头。“就算看见他在校园里喝也不觉得稀奇。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　后来喝酒伤了身体，学生胡荣海说，他2012年入学时，李老师已经不怎么喝了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　王海辉和李小文相识多年，在他眼里，这位院士的性格里，有侠客的影子。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　王海辉记得，自己刚去美国那一年，带去的钱快花完了，在网上和李小文说了说，李小文立刻让正在美国的妻子跟王海辉联系，先借一点钱应急。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2009年，地质学家嵇少丞在网上发帖，帮一名羌族妇女找工作，李小文看见后，帮她在成都一所学校的人事部门找到一个岗位，只是因为妇女不想离开北川，最后才没成行。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　谢云做过几年副院长，李小文总叫他“谢院长”，谢云听着别扭，和李小文商量能不能叫自己“谢老师”，李小文不同意，“你不是我的老师，我不能这么叫。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文把师生关系看得很认真。在遥感领域之外，他还会和学生讨论金钱观。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　一名学生记得，李小文在课堂上曾说，钱的作用在本质上是“非线性和非单调性”的。对比较贫困的青年学生来说，很少一点钱，也许就能帮助他选择正确的人生道路，或是拯救一条生命，产生比较好的社会效益。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　几年前，李小文拿出李嘉诚基金会奖励自己的钱，在母校成都电子科技大学设立了“李谦”奖助学金。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李谦是李小文的长女。她出生时家里条件差，营养不良，出麻疹并发了肺炎，不到2岁就去世了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　对于这助学金，李小文解释“自己有口酒喝，就感觉进了‘非线性区’，没什么负担，就捐了。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>博主“黄老邪”</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　博客是李小文的一片自留地。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在博客里，他自称黄老邪；在北师大，他和所有学生都在一个QQ群里，群的名字叫“桃花岛”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“黄老邪”的邪常表现为语出惊人。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有一年，李小文作为中心主任，出现在北师大遥感和GIS(地理信息系统)中心迎新生的晚会上。“为什么读了遥感或者地理信息系统这个专业？”李小文希望新生讲讲。当一位女同学说是父亲替她填的专业志愿时，李小文站了起来，手一挥，大声说，“向你爸爸问好！”举座大笑。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　几天前，一名考上了中科院研究生的学生向李小文诉苦，自己就要去成都读书，担心这个专业毕业后不好找工作。李小文说，是山地所吗？好啊，九寨沟、四姑娘，找出点办法来防治滑坡、泥石流，英雄救美。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在博客里，他对热点新闻发表的观点也常常让人意外。看到酒店招聘员工要求喝马桶水的新闻，李小文说，换做自己一定认真清洗马桶，舀一碗水喝下去，“但还要再舀一碗，让面试官也喝下去”；武汉“抱火哥”走红，他说“抱火哥”如果不得到应有的表彰，甚至合同期满解聘，“那肯定是有人疯了”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在学术江湖里，侠士也经常“以武会友”。博客里，他会时不时针对遥感领域的问题“和某某人掐一架”，或摆个擂台分胜负。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　地质学家嵇少丞评价说，比起小说里黄老邪的“七分邪气，三分正气”，李小文邪气不重，是个有大爱的人。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　汶川地震后第二天，李小文在自己的博客上“道歉”，说大家都关注汶川的灾情，“但到现在我们还出不了一幅图。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　看见温总理去灾区，飞机上工作的照片还是地图，而不是遥感出的现势图，李小文说，“我们搞遥感的，真是恨不得打个地洞钻下去，就算地震殉国算了。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文的一名博友说，李小文多少有些魏晋文人的风骨，而这种风骨，就是现在学术界缺少的真性情，是学者本分的回归和做学问应有的那种心态。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　李小文大学时期的校友戴绍基说，李小文的言行，维护了传统知识分子的风骨，本色、随性，这种影响甚至比他在遥感领域做出的贡献更可贵。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　如今，李小文的博客更成为了学生和同行答疑解惑的平台。隔三差五，就有人在博客里留下专业问题等待答复，李小文会挑出其中一部分解答。如果问题繁琐，他会主动要求对方留下邮箱地址，邮件里，他最爱用的落款是，小文。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　A22-A23版/新京报记者 贾鹏 实习生 罗婷 曹忆蕾 北京报道</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; font-size: 15.9995994567871px; white-space: normal; background-color: rgb(255, 255, 255);\">　　(原标题：李小文 特立独行的“布鞋院士”)</p><p><br/></p>','院士穿布鞋讲课走红 曾被保安当农民挡门外(图)','　4月18日，院士李小文在中国科学院大学做讲座时被拍的一张照片走红网络。照片里，他黑衣蓄胡、光脚穿布鞋，被网友称为“仙风道骨”。 网络供图',1,1,'2015-09-15 20:50:48',NULL,0,NULL,'',1,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(2,1,'','','2015-09-15 21:00:40','<p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>宝藏之谜</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>史海钩沉</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">清人所著的史料中确有张献忠千船沉银的记载。《蜀碧》记载：“（张）献忠闻（杨）展兵势甚盛，大惧，率兵10数万，装金宝数千艘，顺流东下，与展决战。”相传1646年，清军入川，张献忠“携历年所抢”的千船金银财宝率部向川西突围。但转移途中猝遇地主武装杨展，张献忠的运宝船队大败，千船金银沉入江底，张献忠只带少数亲军突围成功。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">《蜀难纪实》中对沉银有更多细节的记载：“张献忠部队从水路出川时，由于银两太多，木船载不下，于是张献忠命令工匠做了许多木头的夹槽，把银锭放在里面，让其漂流而下，打算在江流狭窄的地段再打捞上来。但后来部队遭到阻击，江船阻塞江道，所以大部分银两沉入江中。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">彭山江口镇境内水域到底有多少张献忠的沉银？《蜀难纪实》记载：“累亿万，载盈百艘”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">张献忠携千船金银珠宝从成都顺水南下，在眉山市彭山区江口镇一带遭到川西官僚杨展突袭，千船金银珠宝绝大部分沉落江中。几百年来，这一传说让江口镇成为一些人淘金向往之地，但张献忠的宝藏到底在哪儿？这一直是个谜。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">昨日，成都商报记者从彭山区警方、检察院等多个部门了解到，该区破获了一起公安部督办的盗掘、贩卖文物案，多名省内外的犯罪嫌疑人被刑拘。检方称，据专家初步估计，一级以上珍贵文物有多件，其中有金狮、金印、金册子等，其价值估计过亿……</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">这一切，背后可能牵涉着近400年来的惊天秘密——张献忠稀世宝藏。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>一则消息</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>张献忠稀世宝藏被盗掘</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>检方称涉案文物有金印金册</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">一则六百余字的消息，让像谜一样的张献忠宝藏又回到公众视野。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">今年6月25日，彭山区检察院官网刊登了一则消息——《彭山检察院主动介入张献忠稀世宝藏被盗掘案》。消息显示，2015年5月5日，彭山区人民检察院侦监科主动提前介入彭山区公安局侦办的盗掘“江口沉银——张献忠沉宝遗址”重大案件。该案系多个团伙作案，涉案人员众多……作案时间从2011年至2015年4月，长达4年之久；涉案文物据专家初步估计，一级以上珍贵文物有多件，其中有金狮、金印、金册子等，其价值估计过亿……目前，彭山区公安局已以盗掘古文化遗址、倒卖文物罪刑拘了25人。其中主要涉案人员有彭山人王某、何某某涉嫌盗掘古文化遗址罪。湖北人袁某某、成都人杜某某涉嫌倒卖文物罪。至此，张献忠沉宝在彭山区境内这一考古谜团终于逐渐浮出水面。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">成都商报记者从彭山区检察院证实，该消息是彭山区检察院发布，一位工作人员表示，目前部分案件已移交至检方，但不便透露更多细节。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>彭山警方</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>此案公安部督办</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>已鉴定出部分真文物</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">9月14日，成都商报记者从彭山区公安局了解到，检方将该案称为“张献忠稀世宝藏案”，警方则将该案称为“5·1特大盗掘、倒卖文物案”。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">彭山区公安局相关部门负责人透露，“5·1特大盗掘、倒卖文物案”事发彭山区“江口沉银遗址”，属公安部督办案件，因涉案人员众多，身份复杂，公安部和国家文物局的相关人员已到过彭山督办此案，目前，此案正在进一步侦查中。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">对于涉案文物是否有金狮、金印和金册子等，这位负责人称，文物鉴定工作一直在持续，部分文物鉴定结果已出炉，有真文物，但具体有哪些真的不知道，昨日又送了一批文物进行鉴定。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">昨日，成都商报记者从彭山区文管所了解到，此次涉案的部分文物鉴定结果已出来，有部分银锭是国家二、三级文物，这些银锭应该都和张献忠有关。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">对于该案，彭山区文管所称，一两年前文管部门就发现有人在彭山区“江口沉银遗址”附近盗掘，将此情况汇报给公安后，由于盗掘分子在水下作业，取证困难等原因，所以今年才破获。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">此外，成都商报记者也和部分该案当事人的代理律师取得联系。其中一名律师介绍，他的当事人牵涉的罪名为倒卖文物，“该案仍处案侦阶段，还没有移送检察机关。牵涉的倒卖物，目前也在等待鉴定结果。目前案件最大的争议点为倒卖物孰真孰假。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>文物专家</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>若涉案文物为真</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>能证明张献忠宝藏就在彭山</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">彭山区文管所所长吴天文表示，如果涉案文物都是真的，可以和史书上记录有关张献忠在江口作战、稀世珍宝沉落岷江等相互印证，也就是说，能证明张献忠的宝藏就沉落在彭山的岷江中。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">吴天文举例称，2011年，岷江彭山段河道里出土了一页残缺的金封册，经鉴定为国家一级文物，此次涉案的金册子如果是完整的一套的话，其历史、文物价值将更高。根据吴天文提供的图片显示，一页残缺金封册上刻着29个字。“长12厘米、宽10厘米，重730克，有尔湖广武昌………（24字）残。”吴天文猜测这是当时张献忠在成都建立大西国后颁布的法令的第一页，因为残缺无法获知金册上全部内容，估计是类似皇宫里面需要遵守什么制度等。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">“如果涉案文物能全部追回来，张献忠更多的珍宝就将重见天日。”由于尚未得到更多消息，吴天文也盼望着早日见到这些文物，“无论从历史文化还是研究价值而言，都是一笔不可估算的宝藏。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>成都商报记者实地探访“江口沉银遗址”</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>曾出土金牌金册等文物 多指向张献忠</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">让众多盗掘文物者惦记的“江口沉银遗址”从表面上看，并不神秘，如果说通俗点，江口沉银遗址就只是一段长约两公里的岷江河道。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">彭山区文管所资料显示，“江口沉银遗址”位于彭山区江口镇，是一处保存较为完整的古代战场遗址，对研究明代社会、经济、文化等有非常重要的意义，2010年被眉山市人民政府公布为市级文物保护单位。“江口沉银遗址”保护范围及建设控制地带：东至公路，西至河堤，南至岷江大桥南1000米，北至双江汇合处向北500米，南北外延500米。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">昨日，成都商报记者驱车从彭山城区出发，一过岷江大桥，就看见一些文管部门等张贴的通告，称有部分人无视国法，在河道内乱采乱挖、盗掘国家文物，给文物保护单位造成了严重的破坏，为保护好市级文物保护单位江口沉银遗址，确保文物安全，严禁在河道内爆破、钻探、挖掘等。彭山区江口镇双江村村委会外墙上也张贴着一则彭山区法院、彭山区检察院、眉山市公安局彭山分局和彭山区文化广电新闻出版局四部门“敦促在江口沉银遗址实施盗掘、倒卖文物的犯罪嫌疑人投案自首”的通告。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">江口古镇位于武阳江、锦江与岷江交汇处，水路运输十分便利，古时为商旅云集之地，曾船桅如林。据《彭山县志》载：“顺治三年四月，明参将杨展占领嘉定（今乐山(<a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/vleshan#pref=qqcom.keyword\" target=\"_blank\" style=\"outline: none; color: rgb(0, 0, 0); text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(83, 109, 166);\">微博</a>)市中区）后，沿江而上攻占彭山。秋，张献忠部与杨展决战于江口镇，张部战船被焚，沉没过半，伤亡惨重，败回成都。”“乾隆五十九年，冬季，渔者于江口河中获刀鞘一具，转报总督孙士毅，派员赴江口打捞数日，获银万两并珠宝玉器等物。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">彭山区文管所的资料显示，上世纪90年代，彭山打鱼捞沙者曾捞起过明代银锭、金银器等。2005年，江口古镇岷江河道出土明代银锭，其形制与堑刻铭文表明为崇祯时期所征解的税银。而且与张献忠曾转战四川、湖北、湖南的路线及所占地点十分吻合。充分证实了张献忠江口镇沉银之说，并为之提供了有力的实物证据，同时为研究明代的政治、经济提供了重要依据。之后，此地陆续出土了金牌、金册、银币、银锭、铜盘、银簪及碎银等，其中为国家珍贵文物，且与张献忠有关的，如西王赏功币、金牌充分证实了张献忠江口镇沉银之说，并提供了有力的实物证据，为研究明代历史、经济、文化提供了重要实物资料。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>一名巡护员的讲述</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>最猖獗时，两公里江面有十余艘船“寻宝”</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">站在“江口沉银遗址”碑处，望着滔滔岷江水，51岁的郭建华感慨，现在晚上巡护起来省心多了。郭建华是彭山区江口镇双江村支书，自小长于此处，不过，从2014年4月起，他又多了个身份，江口沉银遗址看护员。郭建华介绍，聘请他的是当地文管部门。他需要每天驾驶摩托车，在入夜后沿彭山区岷江大桥至江口镇两江汇合处来回巡逻，巡逻江段约两公里左右。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">2014年5月起，郭建华注意到，每到夜深人静时，就会有船只从不同方向驶来，目的地只有一个：“江口沉银遗址”外百米左右的岷江江心位置。这些船只到了江心后就抛锚固定，郭建华明白，那些“寻宝人”又出现了。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">由于缺乏水上交通工具，再加上没有执法权，郭建华只能隔空喊话，要求对方赶紧将船开走，“这种喊话有时有效果，有时则没效果。在这种情况下，郭建华只得拨打110报警。派出所民警赶到后，对方随即逃之夭夭。”郭建华回忆，在当看护员的一年多时间里，最猖獗的是冬春枯水季节，“有时一晚上，两公里江面上有十多艘船在‘寻宝’。前脚刚撵走，转个身这些船又回来了。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">岸边距离江心超过百米，郭建华曾看见有人在船上奋力收绳子，绳子的另一头则淹没在滔滔江水中。郭建华听说，那是有人身着潜水服在江下寻宝，只需拉几下绳子，船上的人就会迅速拉动绳子，拉上“寻宝人”或其他物品。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">不过，这样的状况在今年四五月份戛然而止。当时，也正是警方对“江口沉银遗址”盗掘、贩卖行为收网的时间节点。据郭建华讲述，仅双江村就有11位村民被警方带走。迄今仅1人被释放回来。“回来的那位据说是因涉案不深。回来后该村民很快就外出打工。具体情况我也不是很清楚。”他说。</p><p><br/></p>','彭山破获特大盗卖文物案 或证实张献忠沉银地址(图)','彭山破获特大盗卖文物案 或证实张献忠沉银地址(图)',1,1,'2015-09-15 21:00:00',NULL,0,NULL,'',1,'{\"thumb\":\"\"}',2,0,0,0,0,0,1,NULL,NULL),(3,1,'','','2015-09-15 21:02:09','<p><a href=\"http://cd.qq.com/a/20150915/010345.htm?tu_type=18&tp=1#\" style=\"outline: none; color: rgb(0, 0, 0); text-decoration: none;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701063_1200x1000_0.png\" id=\"galleryPic\" style=\"border: none; vertical-align: bottom; opacity: 1; max-width: 640px; width: 313px; background: rgb(0, 0, 0);\"/></a><a id=\"preArrow\" title=\"上一张\" hidefocus=\"true\" class=\"contextDiv\" bosszone=\"photoShowPre\" style=\"cursor: pointer; width: 320px; height: 202px; position: absolute; top: 0px; z-index: 2; outline: none; color: rgb(205, 0, 0); text-decoration: underline; zoom: 1; left: 0px; background: url(http://mat1.gtimg.com/www/curls/images/s.png) no-repeat;\"><span id=\"preArrow_A\" style=\"display: inline-block; width: 24px; height: 43px; position: absolute; top: 101px; margin-top: -22px; visibility: visible; left: 16px; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) 0px -50px no-repeat;\"></span></a><a id=\"nextArrow\" title=\"下一张\" hidefocus=\"true\" class=\"contextDiv\" bosszone=\"photoShowNext\" style=\"cursor: pointer; width: 320px; height: 202px; position: absolute; top: 0px; z-index: 2; outline: none; right: 0px; background: url(http://mat1.gtimg.com/www/curls/images/s.png) no-repeat;\"><span id=\"nextArrow_A\" style=\"display: inline-block; width: 24px; height: 43px; position: absolute; top: 101px; margin-top: -22px; visibility: hidden; right: 16px; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) -30px -50px no-repeat;\"></span></a></p><p>江口沉银遗址出土的银锭</p><p><span class=\"num_Cur\" style=\"font-size: 18px; margin: 0px 2px;\">1</span>/<span class=\"num_Count\" style=\"margin: 0px 2px;\">11</span></p><p><a class=\"g-btn g-btn-left\" id=\"g_btn_left\" hidefocus=\"true\" style=\"display: inline-block; opacity: 0.7; width: 10px; height: 20px; outline: none; margin-right: 8px; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) 0px 0px no-repeat;\"></a><a class=\"g-btn g-btn-play\" id=\"g_btn_play\" hidefocus=\"true\" bosszone=\"MaskShowBt\" style=\"display: inline-block; opacity: 0.7; width: 20px; height: 20px; outline: none; margin-right: 8px; background: url(http://mat1.gtimg.com/news/dc/images/g_btn_play.png) no-repeat;\"></a><a class=\"g-btn g-btn-right\" id=\"g_btn_right\" hidefocus=\"true\" style=\"display: inline-block; opacity: 0.7; width: 10px; height: 20px; outline: none; margin-right: 8px; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) -16px 0px no-repeat;\"></a></p><p>隐藏<strong style=\"position: absolute; width: 0px; height: 0px; top: 9px; margin-left: 3px; border-width: 4px; border-style: solid; font-size: 0px; line-height: 0; border-color: rgb(153, 153, 153) transparent transparent;\"></strong></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701063_200x200_0.png\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701064_200x200_0.png\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701060_116x86_0.jpg\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701061_200x200_0.png\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701062_200x200_0.png\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137010/13701065_200x200_0.png\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li><li><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"><img src=\"http://img1.gtimg.com/13/1370/137044/13704448_200x200_0.jpg\" style=\"border: none; vertical-align: bottom; height: 60px; max-width: 640px;\"/></a></p></li></ul><p><a hidefocus=\"true\" class=\"\" style=\"outline: none; display: block; width: 80px; height: 60px; overflow: hidden;\"></a></p><p><a class=\"galleryList-btn galleryList-btn-l\" id=\"galleryList_btn_l\" hidefocus=\"true\" bosszone=\"photoShowUp\" style=\"display: inline-block; position: absolute; top: 30px; width: 22px; z-index: 3; height: 22px; opacity: 0.6; transition: opacity 0.5s ease; left: 5px; outline: none; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) 0px -23px no-repeat;\"></a><a class=\"galleryList-btn galleryList-btn-r\" id=\"galleryList_btn_r\" hidefocus=\"true\" bosszone=\"photoShowDown\" style=\"display: inline-block; position: absolute; top: 30px; width: 22px; z-index: 3; height: 22px; opacity: 0.6; transition: opacity 0.5s ease; right: 3px; outline: none; background: url(http://mat1.gtimg.com/news/dc/images/s_gallery_2012110702.png) -30px -23px no-repeat;\"></a></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">成都商报记者 蒋麟 张柄尧 摄影报道</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">9月13日上午，华西城市读本记者来到了巴中市中心医院妇产科，产房内的窗台上堆满了婴儿用品，躺在床上的熊和春疲惫不堪，全身浮肿，连说话的声音都很细小，床旁边还有两架婴儿床，里面正甜甜的睡着两个孩子，丈夫向超在一旁给孩子兑着奶一边介绍道：“这是老大和老三，她们身体状况良好，就抱出了保温箱，老二和老四还在保温箱里。”<br/></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>愁</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>妻子全身水肿，老四肺部发育不全</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">据向超介绍，妻子连日来都睡不好，贫血和肥胖引起的高血压更是让她吃尽了苦头，一动头就晕，她现在全身水肿，昨天还输了血。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">记者问起孩子的状况，向超告诉记者，目前，老大和老三身体状况还好，就是老四肺部发育还不完全，还需要在保温箱里一段时间。“由于是提前生产，她奶水也还没有，孩子目前都是吃的奶粉。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">巴中市中心医院产科主任陈义介绍，熊和春一进医院就占据了四个高危，多胞胎、体重大于80公斤、妊娠期高血压和贫血，所以医院特别重视。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">“我从她32周时就开始监测，一直到36周，由我亲自主刀进行剖腹产，为她配备了最专业的团队进行手术，目前母子情况良好，她的高血压也在控制治疗，孩子属于早产，器官发育不成熟是正常的，保温箱里的老二和老四已经脱离呼吸机了，不久也会抱出保温箱。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">对于四“千金”的喂养问题，陈义提出了自己的建议，由于是四胞胎母亲奶水肯定不够，可以采取两个孩子母乳喂养，两个孩子奶粉喂养，不建议母乳和奶粉混合喂养。“如果混合喂养，容易造成‘乳头错觉’，使母乳喂养失败。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>喜</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\"><strong>各界献爱心，四个娃是爸最大动力</strong></p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">自华西都市报曝光后，向超一家受到了广泛关注，大家很关心四姐妹的成长，知道向超的家庭情况后，社会爱心人士纷纷捐款捐物，贡献自己的一份力量。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">向超介绍，巴中(<a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/scbzfb#pref=qqcom.keyword\" target=\"_blank\" style=\"outline: none; color: rgb(0, 0, 0); text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(83, 109, 166);\">微博</a>)市中心医院产科为熊和春提供了单间产房，和免费陪床，还有费用的适当减免。巴中市妇联还送来了奶粉，衣服，和5000元成长基金。某宝贝专卖店也送来了奶粉和纸尿裤。“成都有一个奶粉厂家正在联系我，愿意提供四姐妹一年的奶粉供应，我们正在接洽。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">也有不少社会爱心人士通过华西城市读本热线，要向四姐妹献出一份爱心。巴中市通江县民政局表示，通过当地乡人民政府申请低保，可以向乡人民政府申请临时救，还可以通过乡人民政府向通江县民政局申请医疗救助。</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">大家对四姐妹的取名很关心，向超表示自己很看好“冰清玉洁”这四个字，有可能就取这个名字了。“这四个字很适合女孩子用，又连贯，等一等再和妻子商量商量。”</p><p style=\"margin-top: 0px; margin-bottom: 29px; padding: 0px; line-height: 28px; font-family: 宋体, Arial, sans-serif; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">对于四姐妹的教育，向超表示，他和妻子受教育程度都不高，想孩子好好念书。“我和老婆都没念过好多书，但我希望孩子将来能接受好的教育，目前的状况我不能出去挣钱，四个孩子需要我照顾，孩子可能就在乡下读幼园，等大一点了我就可以出去挣钱了，为了她们我更努力挣钱，她们就是我最大的动力。”</p><p><br/></p>','巴中妈妈诞下四胞胎续：取名暂定“冰清玉洁”(图)','什么是幸福的烦恼？24岁的向超对此深有体会。2015年9月10日妻子熊和春生下了四胞胎女儿（详见《352万分之一概率 巴中90后妈妈诞下四“千金”》 ）。奶粉钱的开销就难倒了这位新爸爸，对于务工的一家人来说，在感受满满幸福的同时也倍感压力。',1,1,'2015-09-15 21:00:43',NULL,0,NULL,'',2,'{\"thumb\":\"http:\\/\\/img1.gtimg.com\\/13\\/1370\\/137009\\/13700960_980x1200_0.jpg\",\"photo\":[{\"url\":\"http:\\/\\/img1.gtimg.com\\/13\\/1370\\/137009\\/13700960_980x1200_0.jpg\",\"alt\":\"\"}]}',3,1,0,0,0,0,1,NULL,NULL),(4,1,'','','2015-09-16 21:24:24','<p>大啊萨达大大啊萨达大大啊萨达大</p>','大啊萨达大','大啊萨达大大啊萨达大',1,1,'2015-09-16 21:24:14',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(5,1,'','斯蒂芬规划局看了','2015-09-16 21:24:35','<p>斯蒂芬规划局看了斯蒂芬规划局看了斯蒂芬规划局看了</p>','斯蒂芬规划局看了','斯蒂芬规划局看了斯蒂芬规划局看了',1,1,'2015-09-16 21:24:25',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(6,1,'','','2015-09-16 21:30:28','<p><span style=\"font-size:16px;font-family:仿宋\">西博会志愿者招募</span><span style=\"font-size:16px;font-family:仿宋\">西博会志愿者招募</span><span style=\"font-size:16px;font-family:仿宋\">西博会志愿者招募</span></p>','西博会志愿者招募','西博会志愿者招募',1,1,'2015-09-16 21:30:14',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',0,0,0,0,0,0,1,NULL,NULL),(7,1,'','','2015-09-16 21:30:42','<p><span style=\"font-size:16px;font-family:仿宋\">生命关怀协会志愿者招募</span><span style=\"font-size:16px;font-family:仿宋\">生命关怀协会志愿者招募</span><span style=\"font-size:16px;font-family:仿宋\">生命关怀协会志愿者招募</span><span style=\"font-size:16px;font-family:仿宋\">生命关怀协会志愿者招募</span></p>','生命关怀协会志愿者招募','生命关怀协会志愿者招募',1,1,'2015-09-16 21:30:29',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(8,1,'','','2015-09-16 21:31:12','<p>足球队招募足球队招募足球队招募足球队招募</p>','足球队招募','足球队招募',1,1,'2015-09-16 21:30:44',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',0,0,0,0,0,0,1,NULL,NULL),(9,1,'','','2015-09-16 21:31:25','<p>篮球队招募拉拉队篮球队招募拉拉队篮球队招募拉拉队篮球队招募拉拉队</p>','篮球队招募拉拉队','篮球队招募拉拉队篮球队招募拉拉队',1,1,'2015-09-16 21:31:13',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(10,1,'','','2015-09-16 21:31:45','<p>布鞋院士来院上课布鞋院士来院上课布鞋院士来院上课布鞋院士来院上课</p>','布鞋院士来院上课','布鞋院士来院上课',1,1,'2015-09-16 21:31:27',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',0,0,0,0,0,0,1,NULL,NULL),(11,1,'','','2015-09-16 21:32:08','<p>诚聘校园记者一名诚聘校园记者一名诚聘校园记者一名诚聘校园记者一名</p>','诚聘校园记者一名','诚聘校园记者一名',1,1,'2015-09-16 21:31:47',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(12,1,'','','2015-09-16 21:32:21','<p>周五回家拼车周五回家拼车周五回家拼车周五回家拼车</p>','周五回家拼车','周五回家拼车',1,1,'2015-09-16 21:32:10',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(13,1,'','','2015-09-16 21:32:45','<p>出手二手电脑一台，价格1000人民币</p>','出手二手电脑一台','出手二手电脑一台',1,1,'2015-09-16 21:32:23',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(14,1,'','','2015-09-16 21:33:04','<p>招聘发单员招聘发单员，50一小时</p>','招聘发单员','招聘发单员',1,1,'2015-09-16 21:32:47',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(15,1,'','','2015-09-16 21:42:23','<h1 style=\"margin: 0px; padding: 0px; border: 0px; line-height: 40px; font-family: 黑体; font-size: 20px; color: rgb(255, 255, 255); font-weight: normal; white-space: normal; background-color: rgb(23, 25, 46);\"><span id=\"slide_title\" style=\"margin: 0px; padding: 0px;\">泰国母子炫富成瘾 出门配几斤首饰 还喝心灵鸡汤</span></h1><h1 style=\"margin: 0px; padding: 0px; border: 0px; line-height: 40px; font-family: 黑体; font-size: 20px; color: rgb(255, 255, 255); font-weight: normal; white-space: normal; background-color: rgb(23, 25, 46);\"><span id=\"slide_title\" style=\"margin: 0px; padding: 0px;\">泰国母子炫富成瘾 出门配几斤首饰 还喝心灵鸡汤</span></h1><h1 style=\"margin: 0px; padding: 0px; border: 0px; line-height: 40px; font-family: 黑体; font-size: 20px; color: rgb(255, 255, 255); font-weight: normal; white-space: normal; background-color: rgb(23, 25, 46);\"><span id=\"slide_title\" style=\"margin: 0px; padding: 0px;\">泰国母子炫富成瘾 出门配几斤首饰 还喝心灵鸡汤</span></h1><p><br/></p>','泰国母子炫富成瘾 出门配几斤首饰 还喝心灵鸡汤','泰国母子炫富成瘾 出门配几斤首饰 还喝心灵鸡汤',1,1,'2015-09-16 20:22:22',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',0,0,0,0,0,0,1,NULL,NULL),(16,1,'','','2015-09-16 21:42:56','<h1 id=\"h1title\" class=\"ep-h1\" style=\"padding: 0px; margin: 0px; font-size: 26px; line-height: 31px; letter-spacing: -1px; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中国将迎来负利率时代:1万元存一年净亏25元</h1><h1 id=\"h1title\" class=\"ep-h1\" style=\"padding: 0px; margin: 0px; font-size: 26px; line-height: 31px; letter-spacing: -1px; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中国将迎来负利率时代:1万元存一年净亏25元</h1><h1 id=\"h1title\" class=\"ep-h1\" style=\"padding: 0px; margin: 0px; font-size: 26px; line-height: 31px; letter-spacing: -1px; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中国将迎来负利率时代:1万元存一年净亏25元</h1><h1 id=\"h1title\" class=\"ep-h1\" style=\"padding: 0px; margin: 0px; font-size: 26px; line-height: 31px; letter-spacing: -1px; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中国将迎来负利率时代:1万元存一年净亏25元</h1><p><br/></p>','中国将迎来负利率时代:1万元存一年净亏25元','中国将迎来负利率时代:1万元存一年净亏25元中国将迎来负利率时代:1万元存一年净亏25元',1,1,'2015-09-16 21:42:29',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,0,0,1,NULL,NULL),(17,1,'','','2015-09-16 21:43:20','<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, 微软雅黑, SimSun, 宋体, &#39;Arial Narrow&#39;, serif; font-size: 14px; line-height: 28px; background-color: rgb(255, 255, 255);\">日前，一组中国女孩在清莱白庙拍摄的汉服写真红遍了泰国，众多泰国网民也对此称赞不绝。而当白庙主人察霖猜老师看到其中一张侧卧的照片时，他表示非常的不满，称这样的动作、姿态并不适合在这白庙里拍。察霖猜老师还称，允许来庙中拍照，但是也要考虑合适性。</span></p>','中国女子泰国白庙侧卧照引庙主不满','中国女子泰国白庙侧卧照引庙主不满',1,1,'2015-09-16 21:42:57',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',2,0,0,0,0,0,1,NULL,NULL),(18,1,'','','2015-09-22 12:22:45','<p>国庆去九寨沟报名组团啦！</p>','国庆去九寨沟报名组团啦！','国庆去九寨沟报名组团啦！国庆去九寨沟报名组团啦！',1,1,'2015-09-22 12:21:24',NULL,0,NULL,'',2,'{\"thumb\":\"\"}',3,0,0,0,1,20,1,'2015-09-30 12:21:00','2015-09-22 12:21:24'),(19,1,'大神讲座','大神讲座','2015-09-22 16:18:25','<p>大神讲座大神讲座大神讲座大神讲座大神讲座</p>','大神讲座','大神讲座',1,1,'2015-09-22 16:17:00',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0,0,0,1,60,1,'2015-09-22 16:17:35','2015-09-22 16:17:35');

#
# Structure for table "tt_role"
#

CREATE TABLE `tt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "tt_role"
#

INSERT INTO `tt_role` VALUES (1,'超级管理员',0,1,'拥有网站最高管理员权限！',1329633709,1329633709,0),(2,'普通管理员',NULL,1,'',1442323051,0,0);

#
# Structure for table "tt_role_user"
#

CREATE TABLE `tt_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_role_user"
#


#
# Structure for table "tt_route"
#

CREATE TABLE `tt_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_route"
#


#
# Structure for table "tt_slide"
#

CREATE TABLE `tt_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_slide"
#


#
# Structure for table "tt_slide_cat"
#

CREATE TABLE `tt_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tt_slide_cat"
#


#
# Structure for table "tt_term_relationships"
#

CREATE TABLE `tt_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "tt_term_relationships"
#

INSERT INTO `tt_term_relationships` VALUES (1,1,1,0,1),(2,2,2,0,1),(3,3,2,0,1),(4,4,4,0,1),(5,5,4,0,1),(6,6,23,0,1),(7,7,23,0,1),(8,8,22,0,1),(9,9,22,0,1),(10,10,7,0,1),(11,11,8,0,1),(12,12,9,0,1),(13,13,15,0,1),(14,14,19,0,1),(15,15,2,0,1),(16,16,6,0,1),(17,17,6,0,1),(18,18,9,0,1),(19,19,7,0,1);

#
# Structure for table "tt_terms"
#

CREATE TABLE `tt_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "tt_terms"
#

INSERT INTO `tt_terms` VALUES (1,'列表演示','','article','',0,0,'0-1','','','','list','article',0,1),(2,'瀑布流','','article','',0,0,'0-2','','','','list_masonry','article',0,1),(3,'校内生活','','article','',0,0,'0-3','','','','list_masonry','article',0,1),(4,'校外生活','','article','',0,0,'0-4','','','','list','article',0,1),(5,'志愿者招募','','article','',0,0,'0-5','','','','list','article',0,1),(6,'最新新闻','','article','',0,0,'0-6','','','','list','article',0,1),(7,'讲座类','','article','',3,0,'0-3-7','','','','list','article',0,1),(8,'校内兼职类','','article','校内兼职类',3,0,'0-3-8','','','','list','article',0,1),(9,'拼车党','','article','拼车党',3,0,'0-3-9','','','','list','article',0,1),(10,'自习族','','article','自习族',3,0,'0-3-10','','','','list','article',0,1),(11,'约旅游','','article','约旅游',3,0,'0-3-11','','','','list','article',0,1),(12,'美食狂','','article','美食狂',3,0,'0-3-12','','','','list','article',0,1),(13,'购物狂','','article','购物狂',3,0,'0-3-13','','','','list','article',0,1),(14,'借车类','','article','借车类',3,0,'0-3-14','','','','list','article',0,1),(15,'校内交易类','','article','校内交易类',3,0,'0-3-15','','','','list','article',0,1),(16,'校外兼职类','','article','校外兼职类',4,0,'0-4-16','','','','list','article',0,1),(17,'旅游攻略','','article','旅游攻略',4,0,'0-4-17','','','','list','article',0,1),(18,'美食攻略','','article','美食攻略',4,0,'0-4-18','','','','list','article',0,1),(19,'招聘类','','article','招聘类',4,0,'0-4-19','','','','list','article',0,1),(20,'娱乐类','','article','娱乐类',4,0,'0-4-20','','','','list','article',0,1),(21,'创业类','','article','创业类',4,0,'0-4-21','','','','list','article',0,1),(22,'校内招募','','article','校内招募',5,0,'0-5-22','','','','list','article',0,1),(23,'校外招募','','article','校外招募',5,0,'0-5-23','','','','list','article',0,1);

#
# Structure for table "tt_user_favorites"
#

CREATE TABLE `tt_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "tt_user_favorites"
#

INSERT INTO `tt_user_favorites` VALUES (1,2,'诚聘校园记者一名','/index.php?g=portal&amp;m=article&amp;a=index&amp;id=11',NULL,'posts',11,1442411568);

#
# Structure for table "tt_users"
#

CREATE TABLE `tt_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；tt_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tt_users"
#

INSERT INTO `tt_users` VALUES (1,'admin','cdf020c7e19221232f297a57a5a743894a0e4a801fc3c996','admin','8888@qq.com','',NULL,0,NULL,NULL,'0.0.0.0','2015-09-22 16:29:12','2015-09-15 08:43:54','',1,0,1),(3,'test','cdf020c7e19221232f297a57a5a743894a0e4a801fc3c996','test','test@qq.com','',NULL,0,NULL,NULL,'0.0.0.0','2015-09-22 16:33:17','2015-09-22 16:31:07','',1,0,2);
