/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : db_yabuli

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-30 06:45:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cool_ad
-- ----------------------------
DROP TABLE IF EXISTS `cool_ad`;
CREATE TABLE `cool_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `type_id` tinyint(5) NOT NULL COMMENT '所属位置',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '广告链接',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `sort` int(11) NOT NULL COMMENT '排序',
  `open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  `content` varchar(225) DEFAULT '' COMMENT '广告内容',
  PRIMARY KEY (`ad_id`),
  KEY `plug_ad_adtypeid` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_ad
-- ----------------------------
INSERT INTO `cool_ad` VALUES ('35', '平安融e贷', '10', '/uploads/20171010/e245a1886f7f276c8c3843aefc113aaf.jpg', '#', '1506391556', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('36', '哈尔滨大剧院', '10', '/uploads/20171010/b9f19816b9b71e6f039e67b2c4351a13.jpg', '#.', '1506391739', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('37', '哈尔滨工业大学', '10', '/uploads/20171010/cec4332c551c2475d795ab1ba2d1a520.jpg', '#.', '1506391774', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('38', '阿蒙木业', '10', '/uploads/20171010/35939915f228c59ddd97b813b1b8455b.jpg', '#.', '1506391793', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('39', '晓峰律师', '10', '/uploads/20171010/2bf04fa1a878c6027ea3be15080cd698.jpg', '#.', '1506391809', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('40', '汤火功夫', '10', '/uploads/20171010/9cabdf51c808b13a83442def3386ee69.jpg', '#.', '1506391829', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('41', '积善家香肠工坊', '10', '/uploads/20171010/d4dc617bff4b5b8cbb2b3542a0de25d4.jpg', 'http://www.baidu.com', '1506392144', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('42', '北方艺考', '10', '/uploads/20171010/f011aba52e7381fa1efdb233a2f74578.jpg', '#', '1507639979', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('43', '释尚商城', '10', '/uploads/20171010/419e793035d7057c67b53216990e5c33.jpg', '#', '1507640097', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('44', '格罗斯红酒', '10', '/uploads/20171010/38dbe8238a6252663cd4cbe2f20c6cbc.jpg', '#', '1507640125', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('45', 'picheir', '10', '/uploads/20171010/06d668b2661b367ed15dce90d570a287.jpg', '#', '1507640154', '50', '1', '');
INSERT INTO `cool_ad` VALUES ('46', '哈尔滨轮滑协会', '10', '/uploads/20171010/d3edc11e12d9c3e736235dd203e52917.jpg', '#', '1507640193', '50', '1', '');

-- ----------------------------
-- Table structure for cool_addons
-- ----------------------------
DROP TABLE IF EXISTS `cool_addons`;
CREATE TABLE `cool_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of cool_addons
-- ----------------------------
INSERT INTO `cool_addons` VALUES ('39', 'diyform', '自定义表单', 'thinkph5插件测试', '1', '{\"display\":\"1\"}', 'by wzs', '0.1', '1527496958', '0');

-- ----------------------------
-- Table structure for cool_admin
-- ----------------------------
DROP TABLE IF EXISTS `cool_admin`;
CREATE TABLE `cool_admin` (
  `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `pwd` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `is_open` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`admin_id`),
  KEY `admin_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_admin
-- ----------------------------
INSERT INTO `cool_admin` VALUES ('1', 'admin', '0192023a7bbd73250516f069df18b500', '1', '1109305987@qq.com', '', '18792402229', '127.0.0.1', '1482132862', '0', '1');
INSERT INTO `cool_admin` VALUES ('9', 'wzs28150', '0192023a7bbd73250516f069df18b500', '3', '1003418012@qq.com', null, '18745170304', '127.0.0.1', '1527470238', '0', '0');

-- ----------------------------
-- Table structure for cool_ad_type
-- ----------------------------
DROP TABLE IF EXISTS `cool_ad_type`;
CREATE TABLE `cool_ad_type` (
  `type_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `sort` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_ad_type
-- ----------------------------
INSERT INTO `cool_ad_type` VALUES ('1', '顶部轮播', '1');
INSERT INTO `cool_ad_type` VALUES ('10', '【关于我们】我们合作的客户', '50');

-- ----------------------------
-- Table structure for cool_article
-- ----------------------------
DROP TABLE IF EXISTS `cool_article`;
CREATE TABLE `cool_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `copyfrom` varchar(255) NOT NULL DEFAULT 'CLTPHP',
  `fromlink` varchar(255) NOT NULL DEFAULT 'http://www.cltphp.com/',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_article
-- ----------------------------

-- ----------------------------
-- Table structure for cool_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `cool_auth_group`;
CREATE TABLE `cool_auth_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '全新ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_auth_group
-- ----------------------------
INSERT INTO `cool_auth_group` VALUES ('1', '超级管理员', '1', '0,276,1,2,270,15,16,119,120,121,145,17,149,116,117,118,181,151,18,108,114,112,109,110,111,3,5,128,127,126,4,230,232,129,27,29,161,163,164,162,38,167,182,169,166,28,48,247,248,31,32,249,250,251,45,170,171,175,174,173,46,176,183,179,178,265,206,207,212,208,213,258,259,260,261,262,209,215,214,263,210,217,216,264,211,266,277,189,190,193,192,240,239,241,243,244,245,242,246,274,275,7,9,14,234,13,235,236,237,238,280,196,197,202,198,252,253,254,255,256,203,205,204,257,272,278,267,279,281,282,283,284,285,286,287,288,289,290,291,292,293,294,298,299,', '1465114224');
INSERT INTO `cool_auth_group` VALUES ('2', '管理员', '1', '1,15,16,120,146,40,41,7,8,12,139,11,136,154,137,138,135,25,140,141,142,9,13,157,158,159,160,155,14,156,27,29,37,161,163,164,162,38,167,182,168,169,165,166,35,36,39,28,31,32,33,34,44,45,170,171,172,173,174,175,46,176,183,177,178,179,48,49,281,282,283,284,285,286,287,288,289,290,291,292,293,294,298,299,', '1465114224');
INSERT INTO `cool_auth_group` VALUES ('3', '文章管理员', '1', '27,29,161,163,164,162,38,167,182,169,166,277,189,190,193,192,240,239,241,243,244,245,242,246,7,9,14,234,13,235,236,237,238,', '1465114224');

-- ----------------------------
-- Table structure for cool_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cool_auth_rule`;
CREATE TABLE `cool_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `authopen` tinyint(2) NOT NULL DEFAULT '1',
  `icon` varchar(20) DEFAULT NULL COMMENT '样式',
  `condition` char(100) DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `zt` int(1) DEFAULT NULL,
  `menustatus` tinyint(1) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_auth_rule
-- ----------------------------
INSERT INTO `cool_auth_rule` VALUES ('1', 'System', '系统设置', '1', '1', '0', 'icon-cogs', '', '276', '0', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('2', 'System/system', '系统设置', '1', '1', '0', '', '', '1', '1', '1446535789', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('3', 'Database/database', '数据库管理', '1', '1', '0', 'icon-database', '', '276', '2', '1446535805', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('4', 'Database/restore', '还原数据库', '1', '1', '0', '', '', '3', '10', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('5', 'Database/database', '数据库备份', '1', '1', '0', '', '', '3', '1', '1446535834', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('7', 'Category', '栏目管理', '1', '1', '0', 'icon-list', '', '277', '4', '1446535875', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('9', 'Category/index', '栏目列表', '1', '1', '0', '', '', '7', '0', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('13', 'Category/edit', '操作-修改', '1', '1', '0', '', '', '9', '3', '1446535750', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('14', 'Category/add', '操作-添加', '1', '1', '0', '', '', '9', '0', '1446535750', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('15', 'Auth/adminList', '权限管理', '1', '1', '0', 'icon-lifebuoy', '', '276', '1', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('16', 'Auth/adminList', '管理员列表', '1', '1', '0', '', '', '15', '0', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('17', 'Auth/adminGroup', '用户组列表', '1', '1', '0', '', '', '15', '1', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('18', 'Auth/adminRule', '权限管理', '1', '1', '0', '', '', '15', '2', '1446535750', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('23', 'Help/soft', '软件下载', '1', '1', '0', '', '', '22', '50', '1446711421', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('27', 'Users', '会员管理', '1', '1', '0', 'icon-user', '', '276', '5', '1447231507', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('28', 'Function', '网站功能', '1', '1', '0', 'icon-cog', '', '276', '6', '1447231590', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('29', 'Users/index', '会员列表', '1', '1', '0', '', '', '27', '10', '1447232085', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('31', 'Link/index', '友情链接', '1', '1', '0', '', '', '28', '2', '1447232183', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('32', 'Link/add', '操作-添加', '1', '1', '0', '', '', '31', '1', '1447639935', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('36', 'We/we_menu', '自定义菜单', '1', '1', '0', '', '', '35', '50', '1447842477', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('38', 'Users/userGroup', '会员组', '1', '1', '0', '', '', '27', '50', '1448413248', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('39', 'We/we_menu', '自定义菜单', '1', '1', '0', '', '', '36', '50', '1448501584', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('45', 'Ad/index', '广告管理', '1', '1', '0', '', '', '28', '3', '1450314297', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('46', 'Ad/type', '广告位管理', '1', '1', '0', '', '', '28', '4', '1450314324', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('48', 'Message/index', '留言管理', '1', '1', '0', '', '', '28', '1', '1451267354', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('105', 'System/runsys', '操作-保存', '1', '1', '0', '', '', '6', '50', '1461036331', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('106', 'System/runwesys', '操作-保存', '1', '1', '0', '', '', '10', '50', '1461037680', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('107', 'System/runemail', '操作-保存', '1', '1', '0', '', '', '19', '50', '1461039346', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('108', 'Auth/ruleAdd', '操作-添加', '1', '1', '0', '', '', '18', '0', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('109', 'Auth/ruleState', '操作-状态', '1', '1', '0', '', '', '18', '5', '1461550949', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('110', 'Auth/ruleTz', '操作-验证', '1', '1', '0', '', '', '18', '6', '1461551129', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('111', 'Auth/ruleorder', '操作-排序', '1', '1', '0', '', '', '18', '7', '1461551263', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('112', 'Auth/ruleDel', '操作-删除', '1', '1', '0', '', '', '18', '4', '1461551536', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('114', 'Auth/ruleEdit', '操作-修改', '1', '1', '0', '', '', '18', '2', '1461551913', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('116', 'Auth/groupEdit', '操作-修改', '1', '1', '0', '', '', '17', '3', '1461552326', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('117', 'Auth/groupDel', '操作-删除', '1', '1', '0', '', '', '17', '30', '1461552349', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('118', 'Auth/groupAccess', '操作-权限', '1', '1', '0', '', '', '17', '40', '1461552404', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('119', 'Auth/adminAdd', '操作-添加', '1', '1', '0', '', '', '16', '0', '1461553162', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('120', 'Auth/adminEdit', '操作-修改', '1', '1', '0', '', '', '16', '2', '1461554130', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('121', 'Auth/adminDel', '操作-删除', '1', '1', '0', '', '', '16', '4', '1461554152', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('122', 'System/source_runadd', '操作-添加', '1', '1', '0', '', '', '43', '10', '1461036331', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('123', 'System/source_order', '操作-排序', '1', '1', '0', '', '', '43', '50', '1461037680', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('124', 'System/source_runedit', '操作-改存', '1', '1', '0', '', '', '43', '30', '1461039346', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('125', 'System/source_del', '操作-删除', '1', '1', '0', '', '', '43', '40', '146103934', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('126', 'Database/export', '操作-备份', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('127', 'Database/optimize', '操作-优化', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('128', 'Database/repair', '操作-修复', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('129', 'Database/delSqlFiles', '操作-删除', '1', '1', '0', '', '', '4', '3', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('130', 'System/bxgs_state', '操作-状态', '1', '1', '0', '', '', '67', '5', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('131', 'System/bxgs_edit', '操作-修改', '1', '1', '0', '', '', '67', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('132', 'System/bxgs_runedit', '操作-改存', '1', '1', '0', '', '', '67', '2', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('134', 'System/myinfo_runedit', '个人资料修改', '1', '1', '0', '', '', '68', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('236', 'Category/del', '操作-删除', '1', '1', '0', '', '', '9', '5', '1497424900', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('230', 'Database/restoreData', '操作-还原', '1', '1', '0', '', '', '4', '1', '1497423595', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('145', 'Auth/adminState', '操作-状态', '1', '1', '0', '', '', '16', '5', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('149', 'Auth/groupAdd', '操作-添加', '1', '1', '0', '', '', '17', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('151', 'Auth/groupRunaccess', '操作-权存', '1', '1', '0', '', '', '17', '50', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('153', 'System/bxgs_runadd', '操作-添存', '1', '1', '0', '', '', '66', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('234', 'Category/insert', '操作-添存', '1', '1', '0', '', '', '9', '2', '1497424143', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('240', 'Module/del', '操作-删除', '1', '1', '0', '', '', '190', '4', '1497425850', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('239', 'Module/moduleState', '操作-状态', '1', '1', '0', '', '', '190', '5', '1497425764', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('238', 'page/edit', '单页编辑', '1', '1', '0', '', '', '7', '2', '1497425142', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('237', 'Category/cOrder', '操作-排序', '1', '1', '0', '', '', '9', '6', '1497424979', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('161', 'Users/usersState', '操作-状态', '1', '1', '0', '', '', '29', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('162', 'Users/delall', '操作-全部删除', '1', '1', '0', '', '', '29', '4', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('163', 'Users/edit', '操作-编辑', '1', '1', '0', '', '', '29', '2', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('164', 'Users/usersDel', '操作-删除', '1', '1', '0', '', '', '29', '3', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('247', 'Message/del', '操作-删除', '1', '1', '0', '', '', '48', '1', '1497427449', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('166', 'Users/groupOrder', '操作-排序', '1', '1', '0', '', '', '38', '50', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('167', 'Users/groupAdd', '操作-添加', '1', '1', '0', '', '', '38', '10', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('169', 'Users/groupDel', '操作-删除', '1', '1', '0', '', '', '38', '30', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('170', 'Ad/add', '操作-添加', '1', '1', '0', '', '', '45', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('171', 'Ad/edit', '操作-修改', '1', '1', '0', '', '', '45', '2', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('173', 'Ad/del', '操作-删除', '1', '1', '0', '', '', '45', '5', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('174', 'Ad/adOrder', '操作-排序', '1', '1', '0', '', '', '45', '4', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('175', 'Ad/editState', '操作-状态', '1', '1', '0', '', '', '45', '3', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('176', 'Ad/addType', '操作-添加', '1', '1', '0', '', '', '46', '1', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('252', 'Template/edit', '操作-编辑', '1', '1', '0', '', '', '197', '3', '1497428906', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('178', 'Ad/delType', '操作-删除', '1', '1', '0', '', '', '46', '4', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('179', 'Ad/typeOrder', '操作-排序', '1', '1', '0', '', '', '46', '3', '1461550835', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('180', 'System/source_edit', '操作-修改', '1', '1', '0', '', '', '43', '20', '1461832933', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('181', 'Auth/groupState', '操作-状态', '1', '1', '0', '', '', '17', '50', '1461834340', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('182', 'Users/groupEdit', '操作-修改', '1', '1', '0', '', '', '38', '15', '1461834780', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('183', 'Ad/editType', '操作-修改', '1', '1', '0', '', '', '46', '2', '1461834988', '1', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('188', 'Plug/donation', '捐赠列表', '1', '1', '0', '', '', '187', '50', '1466563673', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('189', 'Module', '模型管理', '1', '1', '0', 'icon-ungroup', '', '277', '3', '1466825363', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('190', 'Module/index', '模型列表', '1', '1', '0', '', '', '189', '1', '1466826681', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('192', 'Module/edit', '操作-修改', '1', '1', '0', '', '', '190', '2', '1467007920', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('193', 'Module/add', '操作-添加', '1', '1', '0', '', '', '190', '1', '1467007955', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('196', 'Template', '模版管理', '1', '1', '0', 'icon-embed2', '', '280', '7', '1481857304', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('197', 'Template/index', '模版管理', '1', '1', '0', '', '', '196', '1', '1481857540', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('198', 'Template/insert', '操作-添存', '1', '1', '0', '', '', '197', '2', '1481857587', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('202', 'Template/add', '操作-添加', '1', '1', '0', '', '', '197', '1', '1481859447', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('203', 'Debris/index', '碎片管理', '1', '1', '0', '', '', '196', '2', '1484797759', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('204', 'Debris/edit', '操作-编辑', '1', '1', '0', '', '', '203', '2', '1484797849', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('205', 'Debris/add', '操作-添加', '1', '1', '0', '', '', '203', '1', '1484797878', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('206', 'Wechat', '微信管理', '1', '1', '0', 'icon-bubbles2', '', '276', '8', '1487063570', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('207', 'Wechat/index', '公众号管理', '1', '1', '0', '', '', '206', '1', '1487063705', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('208', 'Wechat/menu', '菜单管理', '1', '1', '0', '', '', '206', '2', '1487063765', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('209', 'Wechat/text', '文本回复', '1', '1', '0', '', '', '206', '3', '1487063834', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('210', 'Wechat/img', '图文回复', '1', '1', '0', '', '', '206', '4', '1487063858', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('211', 'Wechat/news', '消息推送', '1', '1', '0', '', '', '206', '5', '1487063934', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('212', 'Wechat/weixin', '操作-设置', '1', '1', '0', '', '', '207', '1', '1487064541', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('213', 'Wechat/addMenu', '操作-添加', '1', '1', '0', '', '', '208', '1', '1487149151', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('214', 'Wechat/editText', '操作-编辑', '1', '1', '0', '', '', '209', '2', '1487233984', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('215', 'Wechat/addText', '操作-添加', '1', '1', '0', '', '', '209', '1', '1487234062', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('216', 'Wechat/editImg', '操作-编辑', '1', '1', '0', '', '', '210', '2', '1487318148', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('217', 'Wechat/addImg', '操作-添加', '1', '1', '0', '', '', '210', '1', '1487318175', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('232', 'Database/downFile', '操作-下载', '1', '1', '0', '', '', '4', '2', '1497423744', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('235', 'Category/catUpdate', '操作-该存', '1', '1', '0', '', '', '9', '4', '1497424301', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('241', 'Module/field', '模型字段', '1', '1', '0', '', '', '190', '6', '1497425972', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('242', 'Module/fieldStatus', '操作-状态', '1', '1', '0', '', '', '241', '4', '1497426044', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('243', 'Module/fieldAdd', '操作-添加', '1', '1', '0', '', '', '241', '1', '1497426089', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('244', 'Module/fieldEdit', '操作-修改', '1', '1', '0', '', '', '241', '2', '1497426134', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('245', 'Module/listOrder', '操作-排序', '1', '1', '0', '', '', '241', '3', '1497426179', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('246', 'Module/fieldDel', '操作-删除', '1', '1', '0', '', '', '241', '5', '1497426241', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('248', 'Message/delall', '操作-删除全部', '1', '1', '0', '', '', '48', '2', '1497427534', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('249', 'Link/edit', '操作-编辑', '1', '1', '0', '', '', '31', '2', '1497427694', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('250', 'Link/linkState', '操作-状态', '1', '1', '0', '', '', '31', '3', '1497427734', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('251', 'Link/del', '操作-删除', '1', '1', '0', '', '', '31', '4', '1497427780', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('253', 'Template/update', '操作-改存', '1', '1', '0', '', '', '197', '4', '1497428951', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('254', 'Template/delete', '操作-删除', '1', '1', '0', '', '', '197', '5', '1497429018', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('255', 'Template/images', '媒体文件管理', '1', '1', '0', '', '', '197', '6', '1497429157', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('256', 'Template/imgDel', '操作-文件删除', '1', '1', '0', '', '', '255', '1', '1497429217', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('257', 'Debris/del', '操作-删除', '1', '1', '0', '', '', '203', '3', '1497429416', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('258', 'Wechat/editMenu', '操作-编辑', '1', '1', '0', '', '', '208', '2', '1497429671', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('259', 'Wechat/menuOrder', '操作-排序', '1', '1', '0', '', '', '208', '3', '1497429707', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('260', 'Wechat/menuState', '操作-状态', '1', '1', '0', '', '', '208', '4', '1497429764', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('261', 'Wechat/delMenu', '操作-删除', '1', '1', '0', '', '', '208', '5', '1497429822', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('262', 'Wechat/createMenu', '操作-生成菜单', '1', '1', '0', '', '', '208', '6', '1497429886', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('263', 'Wechat/delText', '操作-删除', '1', '1', '0', '', '', '209', '3', '1497430020', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('264', 'Wechat/delImg', '操作-删除', '1', '1', '0', '', '', '210', '3', '1497430159', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('265', 'Donation/index', '捐赠管理', '1', '1', '0', '', '', '28', '5', '1498101716', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('266', 'Wechat/news', '多图文回复', '1', '1', '0', '', '', '206', '7', '1501221710', '0', '0', null);
INSERT INTO `cool_auth_rule` VALUES ('267', 'Addons/index', '插件管理', '1', '1', '1', 'icon-power-cord', '', '278', '8', '1501466560', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('270', 'System/email', '邮箱配置', '1', '1', '0', '', '', '1', '2', '1502331829', '0', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('272', 'Debris/type', '碎片分类', '1', '1', '1', '', '', '196', '3', '1504082720', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('276', 'index/main.html', '系统', '1', '1', '1', 'icon-cogs', '', '0', '1', '1527305359', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('274', 'Article', '内容管理', '1', '1', '1', 'icon-file-text2', '', '277', '4', '1510670765', null, '0', null);
INSERT INTO `cool_auth_rule` VALUES ('291', 'video/index/catid/47.html', '首页视频', '1', '1', '0', null, '', '286', '0', '1527511789', null, null, '47');
INSERT INTO `cool_auth_rule` VALUES ('277', 'Category/index', '内容', '1', '1', '1', 'icon-cogs', '', '0', '2', '1527311011', '1', '1', null);
INSERT INTO `cool_auth_rule` VALUES ('278', 'Addons/index', '插件', '1', '1', '1', 'icon-cogs', '', '0', '4', '1527393444', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('279', 'Addons/index', '插件列表', '1', '1', '1', '', '', '267', '50', '1527393598', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('280', 'Template/index', '模板', '1', '1', '1', '', '', '0', '3', '1527393790', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('286', 'page/index/catid/41.html', '首页管理', '1', '1', '0', null, '', '274', '0', '1527495578', null, null, '41');
INSERT INTO `cool_auth_rule` VALUES ('287', 'page/index/catid/43.html', '首页banner', '1', '1', '0', null, '', '286', '0', '1527495632', null, null, '43');
INSERT INTO `cool_auth_rule` VALUES ('288', 'page/index/catid/44.html', '活动', '1', '1', '0', null, '', '274', '0', '1527495685', null, null, '44');
INSERT INTO `cool_auth_rule` VALUES ('289', 'page/index/catid/45.html', '首页文字介绍', '1', '1', '0', null, '', '286', '0', '1527496322', null, null, '45');
INSERT INTO `cool_auth_rule` VALUES ('290', 'picture/index/catid/46.html', '酒店图片', '1', '1', '0', null, '', '274', '0', '1527497823', null, null, '46');
INSERT INTO `cool_auth_rule` VALUES ('292', 'picture/index/catid/48.html', '客房', '1', '1', '0', null, '', '290', '0', '1527554369', null, null, '48');
INSERT INTO `cool_auth_rule` VALUES ('293', 'picture/index/catid/49.html', '会议', '1', '1', '0', null, '', '290', '0', '1527554384', null, null, '49');
INSERT INTO `cool_auth_rule` VALUES ('294', 'picture/index/catid/50.html', '休闲娱乐', '1', '1', '0', null, '', '290', '0', '1527554412', null, null, '50');
INSERT INTO `cool_auth_rule` VALUES ('295', 'Yuding/index', '预订管理', '1', '1', '1', 'icon-list', '', '277', '50', '1527577422', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('296', 'Yuding/index?type=1', '客房预订', '1', '1', '1', '', '', '295', '50', '1527577487', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('297', 'Yuding/index?type=2', '会议预订', '1', '1', '1', '', '', '295', '50', '1527577515', null, '1', null);
INSERT INTO `cool_auth_rule` VALUES ('298', 'page/index/catid/51.html', '酒店简介', '1', '1', '0', null, '', '288', '0', '1527579793', null, null, '51');
INSERT INTO `cool_auth_rule` VALUES ('299', 'banner/index/catid/52.html', '酒店简介图片', '1', '1', '0', null, '', '288', '0', '1527579860', null, null, '52');

-- ----------------------------
-- Table structure for cool_banner
-- ----------------------------
DROP TABLE IF EXISTS `cool_banner`;
CREATE TABLE `cool_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_banner
-- ----------------------------
INSERT INTO `cool_banner` VALUES ('1', '43', '1', 'admin', '1', 'color:;font-weight:normal;', '/uploads/20180528/4779cd310e6b72cf75290c43970cc333.jpg', '', '', '', '', '0', '1', '0', '', '0', '1', '0', '1527496056', '0');
INSERT INTO `cool_banner` VALUES ('2', '43', '1', 'admin', '2', 'color:;font-weight:normal;', '/uploads/20180528/8a0fc3bcb8c85300618d54bc788f30b4.jpg', '', '', '', '', '0', '1', '0', '', '0', '2', '0', '1527496092', '0');

-- ----------------------------
-- Table structure for cool_category
-- ----------------------------
DROP TABLE IF EXISTS `cool_category`;
CREATE TABLE `cool_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(100) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_category
-- ----------------------------
INSERT INTO `cool_category` VALUES ('41', '首页管理', 'index', '', '0', '1', 'page', '0', '41,43,45,47', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('43', '首页banner', 'banner', 'index/', '41', '14', 'banner', '0,41', '43', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('44', '活动', 'activity', '', '0', '1', 'page', '0', '44,51,52', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('45', '首页文字介绍', 'index', 'index/', '41', '1', 'page', '0,41', '45', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('46', '酒店图片', 'picture', '', '0', '3', 'picture', '0', '46,48,49,50', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('47', '首页视频', 'video', 'index/', '41', '15', 'video', '0,41', '47', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('48', '客房', 'picture', 'picture/', '46', '3', 'picture', '0,46', '48', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('49', '会议', 'picture', 'picture/', '46', '3', 'picture', '0,46', '49', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('50', '休闲娱乐', 'picture', 'picture/', '46', '3', 'picture', '0,46', '50', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('51', '酒店简介', 'activity', 'activity/', '44', '1', 'page', '0,44', '51', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `cool_category` VALUES ('52', '酒店简介图片', 'activity', 'activity/', '44', '16', 'jdjjtu', '0,44', '52', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');

-- ----------------------------
-- Table structure for cool_config
-- ----------------------------
DROP TABLE IF EXISTS `cool_config`;
CREATE TABLE `cool_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_config
-- ----------------------------
INSERT INTO `cool_config` VALUES ('16', 'is_mark', '0', 'water', '0');
INSERT INTO `cool_config` VALUES ('17', 'mark_txt', '', 'water', '0');
INSERT INTO `cool_config` VALUES ('18', 'mark_img', '/public/upload/public/2017/01-20/10cd966bd5f3549833c09a5c9700a9b8.jpg', 'water', '0');
INSERT INTO `cool_config` VALUES ('19', 'mark_width', '', 'water', '0');
INSERT INTO `cool_config` VALUES ('20', 'mark_height', '', 'water', '0');
INSERT INTO `cool_config` VALUES ('21', 'mark_degree', '54', 'water', '0');
INSERT INTO `cool_config` VALUES ('22', 'mark_quality', '56', 'water', '0');
INSERT INTO `cool_config` VALUES ('23', 'sel', '9', 'water', '0');
INSERT INTO `cool_config` VALUES ('24', 'sms_url', 'https://yunpan.cn/OcRgiKWxZFmjSJ', 'sms', '0');
INSERT INTO `cool_config` VALUES ('25', 'sms_user', '', 'sms', '0');
INSERT INTO `cool_config` VALUES ('26', 'sms_pwd', '访问密码 080e', 'sms', '0');
INSERT INTO `cool_config` VALUES ('27', 'regis_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('28', 'sms_time_out', '1200', 'sms', '0');
INSERT INTO `cool_config` VALUES ('38', '__hash__', '8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453', 'sms', '0');
INSERT INTO `cool_config` VALUES ('39', '__hash__', '8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453', 'sms', '0');
INSERT INTO `cool_config` VALUES ('56', 'sms_appkey', '123456789', 'sms', '0');
INSERT INTO `cool_config` VALUES ('57', 'sms_secretKey', '123456789', 'sms', '0');
INSERT INTO `cool_config` VALUES ('58', 'sms_product', 'CLTPHP', 'sms', '0');
INSERT INTO `cool_config` VALUES ('59', 'sms_templateCode', 'SMS_101234567890', 'sms', '0');
INSERT INTO `cool_config` VALUES ('60', 'smtp_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('61', 'smtp_port', '25', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('62', 'smtp_user', '1050588307@qq.com', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('63', 'smtp_pwd', 'asdasda', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('64', 'regis_smtp_enable', '1', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('65', 'test_eamil', '1003418012@qq.com', 'smtp', '0');
INSERT INTO `cool_config` VALUES ('70', 'forget_pwd_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('71', 'bind_mobile_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('72', 'order_add_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('73', 'order_pay_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('74', 'order_shipping_sms_enable', '1', 'sms', '0');
INSERT INTO `cool_config` VALUES ('88', 'email_id', 'CLTPHP', 'smtp', '0');

-- ----------------------------
-- Table structure for cool_debris
-- ----------------------------
DROP TABLE IF EXISTS `cool_debris`;
CREATE TABLE `cool_debris` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `type_id` int(6) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `addtime` int(13) DEFAULT NULL,
  `sort` int(11) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_debris
-- ----------------------------
INSERT INTO `cool_debris` VALUES ('21', '6', '我们致力于', '<p>致力于提供高端网站建设、淘宝装修、SEO优化、微营销、互动创意设计、UI设计、APP开发、VI设计、FLASH网站、视频制作等一系列专业服务。用我们的激情和智慧，勤奋与努力，帮助中小企业开展网站建设，打开互联网营销局面，深刻影响着品牌视觉的经营模式和营销思路。</p>', '1506156876', '50');
INSERT INTO `cool_debris` VALUES ('22', '6', '我们的优势', '<p>酷创网络拥有多年网络服务经验，拥有实力雄厚的技术研发团队，顶级设计师团队。成功服务过数家知名集团企业、品牌客户，凭借对设计的热爱执着，营销趋势的敏锐洞察和深刻理解，与众多客户在蓬勃的市场经济中互促共生。全心全意做服务一点一滴为客户。</p>', '1506156989', '50');
INSERT INTO `cool_debris` VALUES ('23', '6', '我们的愿景', '<p>酷创网络珍视与客户的每次合作，用心服务，让客户听到我们的声音，以“为客户赢得客户”为己任，用我们的激情和智慧，勤奋与努力，帮助中小企业开展网站建设，打开互联网营销局面，深刻影响着品牌视觉的经营模式和营销思路。始终信奉“全力以赴，互促共生”的公司价值观。</p>', '1506157011', '50');
INSERT INTO `cool_debris` VALUES ('25', '7', '关于我们图片滚动1', '<p><img src=\"/public/static/home/images/story-img.jpg\" title=\"1506172488667379.jpg\" alt=\"story-img.jpg\"/></p>', '1506160387', '50');
INSERT INTO `cool_debris` VALUES ('26', '7', '关于我们图片滚动2', '<p><img src=\"/public/static/home/images/story-img-1.jpg\" title=\"1506172869829351.jpg\" alt=\"story-img-1.jpg\"/></p>', '1506172871', '50');
INSERT INTO `cool_debris` VALUES ('27', '7', '关于我们图片滚动3', '<p><img src=\"/public/static/home/images/story-img-2.jpg\" title=\"1506172990742513.jpg\" alt=\"story-img-2.jpg\"/></p>', '1506172991', '50');

-- ----------------------------
-- Table structure for cool_debris_type
-- ----------------------------
DROP TABLE IF EXISTS `cool_debris_type`;
CREATE TABLE `cool_debris_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `sort` int(1) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_debris_type
-- ----------------------------
INSERT INTO `cool_debris_type` VALUES ('1', '【首页】中部碎片', '1');
INSERT INTO `cool_debris_type` VALUES ('6', '【关于我们】中部碎片', '50');
INSERT INTO `cool_debris_type` VALUES ('7', '【关于我们】图片滚动', '50');

-- ----------------------------
-- Table structure for cool_diyform
-- ----------------------------
DROP TABLE IF EXISTS `cool_diyform`;
CREATE TABLE `cool_diyform` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '' COMMENT '留言标题',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '留言电话',
  `addtime` varchar(15) NOT NULL COMMENT '留言时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=审核 0=不审核',
  `ip` varchar(50) DEFAULT '' COMMENT '留言者IP',
  `content` longtext NOT NULL COMMENT '留言内容',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL COMMENT '留言邮箱',
  `intime` int(11) DEFAULT NULL,
  `outtime` int(11) NOT NULL,
  `partyconame` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `partytel` varchar(255) DEFAULT NULL,
  `partynum` int(11) DEFAULT NULL,
  `partytime` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `roomnum` int(11) DEFAULT NULL,
  `adultnum` int(11) DEFAULT NULL,
  `childrennum` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_diyform
-- ----------------------------
INSERT INTO `cool_diyform` VALUES ('93', '', '18745170304', '1527577105', '0', '127.0.0.1', 'asdasd', 'wzs', '', '1525847040', '1527663480', null, null, null, null, null, '1', null, null, null);
INSERT INTO `cool_diyform` VALUES ('96', '', '', '1527577210', '0', '127.0.0.1', 'adasdad', '', '', null, '0', 'qeqweqwe', 'aadsd', '123123213132', '12', '1525762740', '2', null, null, null);

-- ----------------------------
-- Table structure for cool_diyform_category
-- ----------------------------
DROP TABLE IF EXISTS `cool_diyform_category`;
CREATE TABLE `cool_diyform_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `authopen` tinyint(2) NOT NULL DEFAULT '1',
  `icon` varchar(20) DEFAULT NULL COMMENT '样式',
  `condition` char(100) DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `zt` int(1) DEFAULT NULL,
  `menustatus` tinyint(1) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_diyform_category
-- ----------------------------
INSERT INTO `cool_diyform_category` VALUES ('1', '/addons_execute_diyform-admin-index', '预订管理', '1', '1', '0', 'icon-cogs', '', '0', '0', '1446535750', '1', '1', null);
INSERT INTO `cool_diyform_category` VALUES ('2', '/addons_execute_diyform-admin-yuding?type=1', '客房预订', '1', '1', '0', '', '', '1', '1', '1446535789', '1', '1', null);
INSERT INTO `cool_diyform_category` VALUES ('300', '/addons_execute_diyform-admin-yuding?type=2', '会议预订', '1', '1', '0', null, '', '1', '1', '1446535789', '1', '1', null);

-- ----------------------------
-- Table structure for cool_donation
-- ----------------------------
DROP TABLE IF EXISTS `cool_donation`;
CREATE TABLE `cool_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '捐赠金额',
  `addtime` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_donation
-- ----------------------------
INSERT INTO `cool_donation` VALUES ('3', '高飞', '10.00', '1466566714');
INSERT INTO `cool_donation` VALUES ('4', '王磊', '5.50', '1466566733');
INSERT INTO `cool_donation` VALUES ('5', '一匹忧郁的狼', '11.11', '1466566780');
INSERT INTO `cool_donation` VALUES ('6', '神盾', '50.00', '1467517788');
INSERT INTO `cool_donation` VALUES ('7', '赵云的枪', '20.00', '1469582594');
INSERT INTO `cool_donation` VALUES ('8', '王@楠', '5.00', '1473155340');
INSERT INTO `cool_donation` VALUES ('9', '王宁', '10.00', '1473647377');
INSERT INTO `cool_donation` VALUES ('11', '幽鸣', '100.00', '1483080600');
INSERT INTO `cool_donation` VALUES ('12', '得水', '6.60', '1484874321');
INSERT INTO `cool_donation` VALUES ('13', '挨踢男', '50.00', '1485224098');
INSERT INTO `cool_donation` VALUES ('14', '郭强', '6.60', '1486343033');
INSERT INTO `cool_donation` VALUES ('15', '周超', '5.00', '1487570095');
INSERT INTO `cool_donation` VALUES ('16', '栖息地', '20.00', '1488507544');
INSERT INTO `cool_donation` VALUES ('17', '杨萍', '11.00', '1489368971');
INSERT INTO `cool_donation` VALUES ('18', '杨蹦蹦V587', '20.00', '1490608429');
INSERT INTO `cool_donation` VALUES ('19', '锋行天下', '20.00', '1499765536');
INSERT INTO `cool_donation` VALUES ('20', '周伟', '50.00', '1500014307');
INSERT INTO `cool_donation` VALUES ('21', '王者不荣耀', '20.00', '1500368368');
INSERT INTO `cool_donation` VALUES ('22', '老虎的虎', '5.00', '1500867256');
INSERT INTO `cool_donation` VALUES ('23', '老夫子', '20.00', '1501203253');
INSERT INTO `cool_donation` VALUES ('24', '我是传奇', '20.00', '1501567608');
INSERT INTO `cool_donation` VALUES ('25', '秋心', '10.00', '1501807989');

-- ----------------------------
-- Table structure for cool_field
-- ----------------------------
DROP TABLE IF EXISTS `cool_field`;
CREATE TABLE `cool_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_field
-- ----------------------------
INSERT INTO `cool_field` VALUES ('1', '1', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('2', '1', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '8', '0', '0');
INSERT INTO `cool_field` VALUES ('3', '1', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '97', '1', '1');
INSERT INTO `cool_field` VALUES ('4', '1', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '99', '1', '1');
INSERT INTO `cool_field` VALUES ('5', '1', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '', '98', '1', '1');
INSERT INTO `cool_field` VALUES ('6', '1', 'content', '内容', '', '1', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '0', '', '3', '1', '0');
INSERT INTO `cool_field` VALUES ('7', '2', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('8', '2', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('9', '2', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cool_field` VALUES ('10', '2', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `cool_field` VALUES ('11', '2', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'layedit\',\n)', '1', '', '5', '1', '1');
INSERT INTO `cool_field` VALUES ('12', '2', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '6', '1', '1');
INSERT INTO `cool_field` VALUES ('13', '2', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '10', '0', '0');
INSERT INTO `cool_field` VALUES ('14', '2', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '11', '0', '0');
INSERT INTO `cool_field` VALUES ('15', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '1', '0');
INSERT INTO `cool_field` VALUES ('16', '2', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '13', '1', '1');
INSERT INTO `cool_field` VALUES ('17', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '14', '1', '1');
INSERT INTO `cool_field` VALUES ('18', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `cool_field` VALUES ('19', '2', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '7', '1', '1');
INSERT INTO `cool_field` VALUES ('20', '3', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('21', '3', 'title', '标题', '', '1', '1', '80', 'defaul', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'0\',\n  \'style\' => \'0\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('22', '3', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cool_field` VALUES ('23', '3', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `cool_field` VALUES ('24', '3', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'layedit\',\n)', '1', '', '7', '0', '1');
INSERT INTO `cool_field` VALUES ('25', '3', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '8', '1', '1');
INSERT INTO `cool_field` VALUES ('26', '3', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '10', '0', '0');
INSERT INTO `cool_field` VALUES ('27', '3', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '11', '0', '0');
INSERT INTO `cool_field` VALUES ('28', '3', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '0', '0');
INSERT INTO `cool_field` VALUES ('29', '3', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '13', '0', '1');
INSERT INTO `cool_field` VALUES ('30', '3', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '14', '0', '1');
INSERT INTO `cool_field` VALUES ('31', '3', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '0', '1');
INSERT INTO `cool_field` VALUES ('32', '3', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '9', '1', '1');
INSERT INTO `cool_field` VALUES ('33', '3', 'pic', '图片', '', '1', '0', '0', 'defaul', '', 'pic', 'image', '', '0', '', '5', '1', '0');
INSERT INTO `cool_field` VALUES ('34', '3', 'group', '类型', '', '1', '0', '0', 'defaul', '', 'group', 'select', 'array (\n  \'options\' => \'模型管理|1\n分类管理|2\n内容管理|3\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)', '0', '', '6', '0', '0');
INSERT INTO `cool_field` VALUES ('35', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('36', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('37', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cool_field` VALUES ('38', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `cool_field` VALUES ('39', '4', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'layedit\',\n)', '1', '', '8', '1', '1');
INSERT INTO `cool_field` VALUES ('40', '4', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '9', '1', '1');
INSERT INTO `cool_field` VALUES ('41', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '10', '1', '1');
INSERT INTO `cool_field` VALUES ('42', '4', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '11', '0', '0');
INSERT INTO `cool_field` VALUES ('43', '4', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '0', '0');
INSERT INTO `cool_field` VALUES ('44', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '13', '0', '0');
INSERT INTO `cool_field` VALUES ('45', '4', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '14', '0', '1');
INSERT INTO `cool_field` VALUES ('46', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '15', '1', '1');
INSERT INTO `cool_field` VALUES ('47', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '16', '1', '1');
INSERT INTO `cool_field` VALUES ('48', '4', 'price', '价格', '', '1', '0', '0', 'defaul', '', 'price', 'number', 'array (\n  \'size\' => \'\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'2\',\n  \'default\' => \'0.00\',\n)', '0', '', '5', '1', '0');
INSERT INTO `cool_field` VALUES ('49', '4', 'xinghao', '型号', '', '0', '0', '0', 'defaul', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '6', '1', '0');
INSERT INTO `cool_field` VALUES ('50', '4', 'pics', '图组', '', '0', '0', '0', 'defaul', '', 'pics', 'images', '', '0', '', '7', '1', '0');
INSERT INTO `cool_field` VALUES ('174', '15', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '0', '1');
INSERT INTO `cool_field` VALUES ('173', '15', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '0', '1');
INSERT INTO `cool_field` VALUES ('172', '15', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('170', '14', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '13', '0', '1');
INSERT INTO `cool_field` VALUES ('171', '15', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('169', '14', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '12', '0', '1');
INSERT INTO `cool_field` VALUES ('167', '14', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '10', '0', '0');
INSERT INTO `cool_field` VALUES ('168', '14', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '11', '0', '1');
INSERT INTO `cool_field` VALUES ('166', '14', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '9', '0', '0');
INSERT INTO `cool_field` VALUES ('165', '14', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '8', '0', '0');
INSERT INTO `cool_field` VALUES ('162', '14', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '0', '1');
INSERT INTO `cool_field` VALUES ('163', '14', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '6', '1', '1');
INSERT INTO `cool_field` VALUES ('164', '14', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '7', '1', '1');
INSERT INTO `cool_field` VALUES ('75', '2', 'copyfrom', '来源', '', '0', '0', '0', 'defaul', '', 'copyfrom', 'text', 'array (\n  \'default\' => \'CLTPHP\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '8', '1', '0');
INSERT INTO `cool_field` VALUES ('76', '2', 'fromlink', '来源网址', '', '0', '0', '0', 'defaul', '', 'fromlink', 'text', 'array (\n  \'default\' => \'http://www.cltphp.com/\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '9', '1', '0');
INSERT INTO `cool_field` VALUES ('183', '15', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '13', '1', '1');
INSERT INTO `cool_field` VALUES ('184', '15', 'xwjsp', '小文件视频上传', '', '1', '0', '0', 'defaul', '', 'xwjsp', 'file', 'array (\n  \'upload_allowext\' => \'mp4\',\n)', '0', '', '4', '0', '0');
INSERT INTO `cool_field` VALUES ('182', '15', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '12', '1', '1');
INSERT INTO `cool_field` VALUES ('181', '15', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '11', '0', '1');
INSERT INTO `cool_field` VALUES ('180', '15', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '10', '0', '0');
INSERT INTO `cool_field` VALUES ('179', '15', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '9', '0', '0');
INSERT INTO `cool_field` VALUES ('178', '15', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '8', '0', '0');
INSERT INTO `cool_field` VALUES ('176', '15', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '6', '1', '1');
INSERT INTO `cool_field` VALUES ('177', '15', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '7', '1', '1');
INSERT INTO `cool_field` VALUES ('175', '15', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '0', '1');
INSERT INTO `cool_field` VALUES ('161', '14', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '0', '1');
INSERT INTO `cool_field` VALUES ('160', '14', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '0', '1');
INSERT INTO `cool_field` VALUES ('158', '14', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('159', '14', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('185', '15', 'videourl', '视频名称', '', '1', '0', '0', 'defaul', '', 'videourl', 'text', 'array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `cool_field` VALUES ('186', '3', 'thumbgroup', '组图', '', '1', '0', '0', 'defaul', '', 'thumbgroup', 'images', '', '0', '', '6', '1', '0');
INSERT INTO `cool_field` VALUES ('187', '16', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `cool_field` VALUES ('188', '16', 'title', '标题', '', '1', '1', '80', 'defaul', '标题必须为1-80个字符', 'title', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cool_field` VALUES ('189', '16', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '0', '1');
INSERT INTO `cool_field` VALUES ('190', '16', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '0', '1');
INSERT INTO `cool_field` VALUES ('191', '16', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '0', '1');
INSERT INTO `cool_field` VALUES ('192', '16', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '6', '1', '1');
INSERT INTO `cool_field` VALUES ('193', '16', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '7', '1', '1');
INSERT INTO `cool_field` VALUES ('194', '16', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '8', '0', '0');
INSERT INTO `cool_field` VALUES ('195', '16', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '9', '0', '0');
INSERT INTO `cool_field` VALUES ('196', '16', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '10', '0', '0');
INSERT INTO `cool_field` VALUES ('197', '16', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '11', '0', '1');
INSERT INTO `cool_field` VALUES ('198', '16', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '12', '0', '1');
INSERT INTO `cool_field` VALUES ('199', '16', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '13', '0', '1');

-- ----------------------------
-- Table structure for cool_hooks
-- ----------------------------
DROP TABLE IF EXISTS `cool_hooks`;
CREATE TABLE `cool_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_hooks
-- ----------------------------
INSERT INTO `cool_hooks` VALUES ('1', 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', '1', '0', '', '1');
INSERT INTO `cool_hooks` VALUES ('2', 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', '1', '0', 'ReturnTop', '1');
INSERT INTO `cool_hooks` VALUES ('3', 'documentEditForm', '添加编辑表单的 扩展内容钩子', '1', '0', 'Attachment', '1');
INSERT INTO `cool_hooks` VALUES ('4', 'documentDetailAfter', '文档末尾显示', '1', '0', 'Attachment,SocialComment,Digg', '1');
INSERT INTO `cool_hooks` VALUES ('5', 'documentDetailBefore', '页面内容前显示用钩子', '1', '0', '', '1');
INSERT INTO `cool_hooks` VALUES ('6', 'documentSaveComplete', '保存文档数据后的扩展钩子', '2', '0', 'Attachment', '1');
INSERT INTO `cool_hooks` VALUES ('7', 'documentEditFormContent', '添加编辑表单的内容显示钩子', '1', '0', 'Editor', '1');
INSERT INTO `cool_hooks` VALUES ('8', 'adminArticleEdit', '后台内容编辑页编辑器', '1', '1378982734', 'EditorForAdmin', '1');
INSERT INTO `cool_hooks` VALUES ('13', 'AdminIndex', '首页小格子个性化显示', '1', '1382596073', 'SiteStat,SystemInfo,DevTeam', '1');
INSERT INTO `cool_hooks` VALUES ('14', 'topicComment', '评论提交方式扩展钩子。', '1', '1380163518', 'Editor', '1');
INSERT INTO `cool_hooks` VALUES ('16', 'app_begin', '应用开始', '2', '1384481614', '', '1');

-- ----------------------------
-- Table structure for cool_jdjjtu
-- ----------------------------
DROP TABLE IF EXISTS `cool_jdjjtu`;
CREATE TABLE `cool_jdjjtu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_jdjjtu
-- ----------------------------
INSERT INTO `cool_jdjjtu` VALUES ('1', '52', '1', 'admin', '1', '/uploads/20180529/cb90689964a7c8100b6b82ff4ef9577c.jpg', '', '', '', '', '0', '1', '0', '', '0', '0', '0', '1527580008', '0');
INSERT INTO `cool_jdjjtu` VALUES ('2', '52', '1', 'admin', '2', '/uploads/20180529/fb8903c5a28c1fd10eeab8425002cf46.jpg', '', '', '', '', '0', '1', '0', '', '0', '0', '0', '1527580022', '0');

-- ----------------------------
-- Table structure for cool_link
-- ----------------------------
DROP TABLE IF EXISTS `cool_link`;
CREATE TABLE `cool_link` (
  `link_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `qq` varchar(20) NOT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0禁用1启用',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_link
-- ----------------------------

-- ----------------------------
-- Table structure for cool_message
-- ----------------------------
DROP TABLE IF EXISTS `cool_message`;
CREATE TABLE `cool_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '' COMMENT '留言标题',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '留言电话',
  `addtime` varchar(15) NOT NULL COMMENT '留言时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=审核 0=不审核',
  `ip` varchar(50) DEFAULT '' COMMENT '留言者IP',
  `content` longtext NOT NULL COMMENT '留言内容',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL COMMENT '留言邮箱',
  `intime` int(11) DEFAULT NULL,
  `outtime` int(11) NOT NULL,
  `partyconame` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `partytel` varchar(255) DEFAULT NULL,
  `partynum` int(11) DEFAULT NULL,
  `partytime` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_message
-- ----------------------------
INSERT INTO `cool_message` VALUES ('93', '', '18745170304', '1527577105', '0', '127.0.0.1', 'asdasd', 'wzs', '', '1525847040', '1527663480', null, null, null, null, null, '1');
INSERT INTO `cool_message` VALUES ('96', '', '', '1527577210', '0', '127.0.0.1', 'adasdad', '', '', null, '0', 'qeqweqwe', 'aadsd', '123123213132', '12', '1525762740', '2');

-- ----------------------------
-- Table structure for cool_module
-- ----------------------------
DROP TABLE IF EXISTS `cool_module`;
CREATE TABLE `cool_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` text NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_module
-- ----------------------------
INSERT INTO `cool_module` VALUES ('1', '单页模型', 'page', '关于我们', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('2', '文章模型', 'article', '新闻文章', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('3', '图片模型', 'picture', '图片展示', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('4', '产品模型', 'product', '产品展示', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('14', 'banner', 'banner', 'banner管理', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('15', '视频', 'video', '视频管理', '1', '0', '*', '', '0', '1');
INSERT INTO `cool_module` VALUES ('16', '酒店简介图片', 'jdjjtu', '', '1', '0', '*', '', '0', '1');

-- ----------------------------
-- Table structure for cool_order
-- ----------------------------
DROP TABLE IF EXISTS `cool_order`;
CREATE TABLE `cool_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` char(22) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `price` decimal(10,0) unsigned NOT NULL DEFAULT '0',
  `productlist` mediumtext NOT NULL,
  `note` mediumtext NOT NULL,
  `realname` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(18) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_order
-- ----------------------------

-- ----------------------------
-- Table structure for cool_page
-- ----------------------------
DROP TABLE IF EXISTS `cool_page`;
CREATE TABLE `cool_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_page
-- ----------------------------
INSERT INTO `cool_page` VALUES ('34', '首页', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('41', '首页管理', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('37', '首页banner', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('42', '首页banner', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('43', '首页banner', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('44', '活动', '', '', '0', '0', '0', '', '0', '0', '0', '0', '');
INSERT INTO `cool_page` VALUES ('45', '首页文字介绍', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1527496327', '0', '0', '<p>酒店位于海拔500米依山而建，推窗即景，是景区内海拔<br/> 最高的五星级酒店。酒店大堂面积1000米 ，举架高14米，是目前黑龙江省内面积最大的。<br/> 大堂前后完全采用了玻璃幕墙式设计，大大提高了大堂的采光度和通透度，置身于大堂之中，便可尽赏 <br/> 亚布力的崇山峻岭，雪道跳台亦尽收眼底。<br/></p>');
INSERT INTO `cool_page` VALUES ('51', '酒店简介', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1527579806', '0', '0', '<p>酒店位于海拔500米依山而建，推窗即景，是景区内海拔最高的五星级酒店。酒店大堂面积1000米 ，举架高14米，是目前黑龙江省内面积最大的。 大堂前后完全采用了玻璃幕墙式设计，大大提高了大堂的采光度和通透度，置身于大堂之中，便可尽赏 亚布力的崇山峻岭，雪道跳台亦尽收眼底。</p>');

-- ----------------------------
-- Table structure for cool_picture
-- ----------------------------
DROP TABLE IF EXISTS `cool_picture`;
CREATE TABLE `cool_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(80) NOT NULL DEFAULT '',
  `group` varchar(255) NOT NULL DEFAULT '',
  `thumbgroup` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_picture
-- ----------------------------
INSERT INTO `cool_picture` VALUES ('9', '48', '1', 'admin', '客房', '', '', '', '', '0', '1', '0', '', '0', '0', '0', '1527555412', '0', '/uploads/20180529/beda6a06127314f8ff60275e96038659.jpg', '', '/uploads/20180529/a78d168b92b8ac8e4120e9ce0fe64a9f.png;/uploads/20180529/cd7f72e6b05d9d4fabc3491678c6af2b.png;/uploads/20180529/2f07b5989e644d2265b1033838bc9d42.png;/uploads/20180529/8367c7f8d37837956361eed9ad19e9f4.png;/uploads/20180529/3e4364f4ae91ce8c6dc2ecc0b048c36a.png;');
INSERT INTO `cool_picture` VALUES ('10', '48', '1', 'admin', '客房', '', '', '', '', '0', '1', '0', '', '0', '0', '0', '1527555473', '0', '/uploads/20180529/5c2ede03c2c2ed56c7964cd052226d31.jpg', '', '/uploads/20180529/b3a737a482bce2aa6cbf9cde70f55c75.png;/uploads/20180529/d8918f77f143d12e347f9dbe08eaf4a2.png;/uploads/20180529/4f5d24d42ad63eeb01e5c1d437958b07.png;/uploads/20180529/8c4dc7bf3d1a6a0d9c922f2f403c613b.png;/uploads/20180529/4166233ef4a43af7831c8a8bf7f2d98b.png;');

-- ----------------------------
-- Table structure for cool_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cool_plugin`;
CREATE TABLE `cool_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_plugin
-- ----------------------------
INSERT INTO `cool_plugin` VALUES ('qq', 'QQ登陆', '1.0', 'wzs', 'a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', null, 'QQ登陆插件 ', '1', 'login', 'logo.png', 'N;', null);
INSERT INTO `cool_plugin` VALUES ('wdj', '微点金插件', '1.0', 'wzs', 'a:4:{i:0;a:4:{s:4:\"name\";s:5:\"adpic\";s:5:\"label\";s:12:\"广告图片\";s:4:\"type\";s:5:\"image\";s:5:\"value\";s:0:\"\";}i:1;a:5:{s:4:\"name\";s:11:\"addposition\";s:5:\"label\";s:12:\"广告位置\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:6:\"头部\";i:1;s:6:\"底部\";}s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:3:\"tel\";s:5:\"label\";s:6:\"手机\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:3:\"url\";s:5:\"label\";s:6:\"链接\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:4:{s:5:\"adpic\";s:54:\"/uploads/20171007/52e00e9c36db5a882dd326a71b74d492.gif\";s:11:\"addposition\";s:1:\"2\";s:3:\"tel\";s:11:\"13204660513\";s:3:\"url\";s:22:\"http://www.hrbkcwl.com\";}', '微点金插件', '1', 'wdj', 'logo.png', 'N;', null);

-- ----------------------------
-- Table structure for cool_plus_seoinfo
-- ----------------------------
DROP TABLE IF EXISTS `cool_plus_seoinfo`;
CREATE TABLE `cool_plus_seoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) DEFAULT NULL,
  `alexa_num` varchar(50) DEFAULT NULL,
  `alexa_area_num` varchar(50) DEFAULT NULL,
  `baidu_count` varchar(50) DEFAULT NULL,
  `baidu_fl_count` varchar(50) DEFAULT NULL,
  `sogou_count` varchar(50) DEFAULT NULL,
  `haosou360_count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_plus_seoinfo
-- ----------------------------
INSERT INTO `cool_plus_seoinfo` VALUES ('7', '1511876711', '0', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('8', '1511917151', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('9', '1511955090', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('10', '1512004637', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('11', '1512044941', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('12', '1512110255', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '18', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('13', '1512378085', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '23', '0', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('14', '1512436065', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '21', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('15', '1513147730', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '11', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('16', '1513301005', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '11', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('17', '1513324553', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '11', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('18', '1513347184', '<span style=\'margin-left: 10px;\'>-</span>', '0', '1', '11', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('19', '1515065636', '<span style=\'margin-left: 10px;\'>-</span>', '0', '7', '10', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('20', '1516254684', '<span style=\'margin-left: 10px;\'>-</span>', '0', '7', '5', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('21', '1517187224', '<span style=\'margin-left: 10px;\'>-</span>', '0', '9', '7', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('22', '1518004993', '<span style=\'margin-left: 10px;\'>-</span>', '0', '9', '13', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('23', '1518085695', '<span style=\'margin-left: 10px;\'>-</span>', '0', '9', '13', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('24', '1520563891', '<span style=\'margin-left: 10px;\'>-</span>', '0', '5', '13', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('25', '1521934142', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '14', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('26', '1522766924', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '2', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('27', '1522830581', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '2', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('28', '1522894290', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '2', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('29', '1522977503', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '2', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('30', '1523101514', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '3', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('31', '1523223327', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '4', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('32', '1523779300', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '3', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('33', '1524126017', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '3', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('34', '1524148272', '<span style=\'margin-left: 10px;\'>-</span>', '0', '4', '3', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('35', '1524832241', '<span style=\'margin-left: 10px;\'>-</span>', '0', '5', '4', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('36', '1525312602', '<span style=\'margin-left: 10px;\'>-</span>', '0', '6', '4', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('37', '1527304272', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '7', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('38', '1527387119', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '7', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('39', '1527409204', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '6', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('40', '1527468808', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '7', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('41', '1527493522', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '6', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('42', '1527555107', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '6', '1', '1');
INSERT INTO `cool_plus_seoinfo` VALUES ('43', '1527577434', '<span style=\'margin-left: 10px;\'>-</span>', '0', '19', '6', '1', '1');

-- ----------------------------
-- Table structure for cool_posid
-- ----------------------------
DROP TABLE IF EXISTS `cool_posid`;
CREATE TABLE `cool_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_posid
-- ----------------------------
INSERT INTO `cool_posid` VALUES ('1', '首页推荐', '0');
INSERT INTO `cool_posid` VALUES ('2', '当前分类推荐', '0');

-- ----------------------------
-- Table structure for cool_product
-- ----------------------------
DROP TABLE IF EXISTS `cool_product`;
CREATE TABLE `cool_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `xinghao` varchar(255) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_product
-- ----------------------------

-- ----------------------------
-- Table structure for cool_region
-- ----------------------------
DROP TABLE IF EXISTS `cool_region`;
CREATE TABLE `cool_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3726 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_region
-- ----------------------------
INSERT INTO `cool_region` VALUES ('1', '0', '中国', '0');
INSERT INTO `cool_region` VALUES ('2', '1', '北京', '1');
INSERT INTO `cool_region` VALUES ('3', '1', '安徽', '1');
INSERT INTO `cool_region` VALUES ('4', '1', '福建', '1');
INSERT INTO `cool_region` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `cool_region` VALUES ('6', '1', '广东', '1');
INSERT INTO `cool_region` VALUES ('7', '1', '广西', '1');
INSERT INTO `cool_region` VALUES ('8', '1', '贵州', '1');
INSERT INTO `cool_region` VALUES ('9', '1', '海南', '1');
INSERT INTO `cool_region` VALUES ('10', '1', '河北', '1');
INSERT INTO `cool_region` VALUES ('11', '1', '河南', '1');
INSERT INTO `cool_region` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `cool_region` VALUES ('13', '1', '湖北', '1');
INSERT INTO `cool_region` VALUES ('14', '1', '湖南', '1');
INSERT INTO `cool_region` VALUES ('15', '1', '吉林', '1');
INSERT INTO `cool_region` VALUES ('16', '1', '江苏', '1');
INSERT INTO `cool_region` VALUES ('17', '1', '江西', '1');
INSERT INTO `cool_region` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `cool_region` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `cool_region` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `cool_region` VALUES ('21', '1', '青海', '1');
INSERT INTO `cool_region` VALUES ('22', '1', '山东', '1');
INSERT INTO `cool_region` VALUES ('23', '1', '山西', '1');
INSERT INTO `cool_region` VALUES ('24', '1', '陕西', '1');
INSERT INTO `cool_region` VALUES ('25', '1', '上海', '1');
INSERT INTO `cool_region` VALUES ('26', '1', '四川', '1');
INSERT INTO `cool_region` VALUES ('27', '1', '天津', '1');
INSERT INTO `cool_region` VALUES ('28', '1', '西藏', '1');
INSERT INTO `cool_region` VALUES ('29', '1', '新疆', '1');
INSERT INTO `cool_region` VALUES ('30', '1', '云南', '1');
INSERT INTO `cool_region` VALUES ('31', '1', '浙江', '1');
INSERT INTO `cool_region` VALUES ('32', '1', '重庆', '1');
INSERT INTO `cool_region` VALUES ('33', '1', '香港', '1');
INSERT INTO `cool_region` VALUES ('34', '1', '澳门', '1');
INSERT INTO `cool_region` VALUES ('35', '1', '台湾', '1');
INSERT INTO `cool_region` VALUES ('36', '3', '安庆', '2');
INSERT INTO `cool_region` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `cool_region` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `cool_region` VALUES ('39', '3', '池州', '2');
INSERT INTO `cool_region` VALUES ('40', '3', '滁州', '2');
INSERT INTO `cool_region` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `cool_region` VALUES ('42', '3', '淮北', '2');
INSERT INTO `cool_region` VALUES ('43', '3', '淮南', '2');
INSERT INTO `cool_region` VALUES ('44', '3', '黄山', '2');
INSERT INTO `cool_region` VALUES ('45', '3', '六安', '2');
INSERT INTO `cool_region` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `cool_region` VALUES ('47', '3', '宿州', '2');
INSERT INTO `cool_region` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `cool_region` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `cool_region` VALUES ('50', '3', '宣城', '2');
INSERT INTO `cool_region` VALUES ('51', '3', '亳州', '2');
INSERT INTO `cool_region` VALUES ('52', '2', '北京', '2');
INSERT INTO `cool_region` VALUES ('53', '4', '福州', '2');
INSERT INTO `cool_region` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `cool_region` VALUES ('55', '4', '南平', '2');
INSERT INTO `cool_region` VALUES ('56', '4', '宁德', '2');
INSERT INTO `cool_region` VALUES ('57', '4', '莆田', '2');
INSERT INTO `cool_region` VALUES ('58', '4', '泉州', '2');
INSERT INTO `cool_region` VALUES ('59', '4', '三明', '2');
INSERT INTO `cool_region` VALUES ('60', '4', '厦门', '2');
INSERT INTO `cool_region` VALUES ('61', '4', '漳州', '2');
INSERT INTO `cool_region` VALUES ('62', '5', '兰州', '2');
INSERT INTO `cool_region` VALUES ('63', '5', '白银', '2');
INSERT INTO `cool_region` VALUES ('64', '5', '定西', '2');
INSERT INTO `cool_region` VALUES ('65', '5', '甘南', '2');
INSERT INTO `cool_region` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `cool_region` VALUES ('67', '5', '金昌', '2');
INSERT INTO `cool_region` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `cool_region` VALUES ('69', '5', '临夏', '2');
INSERT INTO `cool_region` VALUES ('70', '5', '陇南', '2');
INSERT INTO `cool_region` VALUES ('71', '5', '平凉', '2');
INSERT INTO `cool_region` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `cool_region` VALUES ('73', '5', '天水', '2');
INSERT INTO `cool_region` VALUES ('74', '5', '武威', '2');
INSERT INTO `cool_region` VALUES ('75', '5', '张掖', '2');
INSERT INTO `cool_region` VALUES ('76', '6', '广州', '2');
INSERT INTO `cool_region` VALUES ('77', '6', '深圳', '2');
INSERT INTO `cool_region` VALUES ('78', '6', '潮州', '2');
INSERT INTO `cool_region` VALUES ('79', '6', '东莞', '2');
INSERT INTO `cool_region` VALUES ('80', '6', '佛山', '2');
INSERT INTO `cool_region` VALUES ('81', '6', '河源', '2');
INSERT INTO `cool_region` VALUES ('82', '6', '惠州', '2');
INSERT INTO `cool_region` VALUES ('83', '6', '江门', '2');
INSERT INTO `cool_region` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `cool_region` VALUES ('85', '6', '茂名', '2');
INSERT INTO `cool_region` VALUES ('86', '6', '梅州', '2');
INSERT INTO `cool_region` VALUES ('87', '6', '清远', '2');
INSERT INTO `cool_region` VALUES ('88', '6', '汕头', '2');
INSERT INTO `cool_region` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `cool_region` VALUES ('90', '6', '韶关', '2');
INSERT INTO `cool_region` VALUES ('91', '6', '阳江', '2');
INSERT INTO `cool_region` VALUES ('92', '6', '云浮', '2');
INSERT INTO `cool_region` VALUES ('93', '6', '湛江', '2');
INSERT INTO `cool_region` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `cool_region` VALUES ('95', '6', '中山', '2');
INSERT INTO `cool_region` VALUES ('96', '6', '珠海', '2');
INSERT INTO `cool_region` VALUES ('97', '7', '南宁', '2');
INSERT INTO `cool_region` VALUES ('98', '7', '桂林', '2');
INSERT INTO `cool_region` VALUES ('99', '7', '百色', '2');
INSERT INTO `cool_region` VALUES ('100', '7', '北海', '2');
INSERT INTO `cool_region` VALUES ('101', '7', '崇左', '2');
INSERT INTO `cool_region` VALUES ('102', '7', '防城港', '2');
INSERT INTO `cool_region` VALUES ('103', '7', '贵港', '2');
INSERT INTO `cool_region` VALUES ('104', '7', '河池', '2');
INSERT INTO `cool_region` VALUES ('105', '7', '贺州', '2');
INSERT INTO `cool_region` VALUES ('106', '7', '来宾', '2');
INSERT INTO `cool_region` VALUES ('107', '7', '柳州', '2');
INSERT INTO `cool_region` VALUES ('108', '7', '钦州', '2');
INSERT INTO `cool_region` VALUES ('109', '7', '梧州', '2');
INSERT INTO `cool_region` VALUES ('110', '7', '玉林', '2');
INSERT INTO `cool_region` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `cool_region` VALUES ('112', '8', '安顺', '2');
INSERT INTO `cool_region` VALUES ('113', '8', '毕节', '2');
INSERT INTO `cool_region` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `cool_region` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `cool_region` VALUES ('116', '8', '黔南', '2');
INSERT INTO `cool_region` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `cool_region` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `cool_region` VALUES ('119', '8', '遵义', '2');
INSERT INTO `cool_region` VALUES ('120', '9', '海口', '2');
INSERT INTO `cool_region` VALUES ('121', '9', '三亚', '2');
INSERT INTO `cool_region` VALUES ('122', '9', '白沙', '2');
INSERT INTO `cool_region` VALUES ('123', '9', '保亭', '2');
INSERT INTO `cool_region` VALUES ('124', '9', '昌江', '2');
INSERT INTO `cool_region` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `cool_region` VALUES ('126', '9', '定安县', '2');
INSERT INTO `cool_region` VALUES ('127', '9', '东方', '2');
INSERT INTO `cool_region` VALUES ('128', '9', '乐东', '2');
INSERT INTO `cool_region` VALUES ('129', '9', '临高县', '2');
INSERT INTO `cool_region` VALUES ('130', '9', '陵水', '2');
INSERT INTO `cool_region` VALUES ('131', '9', '琼海', '2');
INSERT INTO `cool_region` VALUES ('132', '9', '琼中', '2');
INSERT INTO `cool_region` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `cool_region` VALUES ('134', '9', '万宁', '2');
INSERT INTO `cool_region` VALUES ('135', '9', '文昌', '2');
INSERT INTO `cool_region` VALUES ('136', '9', '五指山', '2');
INSERT INTO `cool_region` VALUES ('137', '9', '儋州', '2');
INSERT INTO `cool_region` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `cool_region` VALUES ('139', '10', '保定', '2');
INSERT INTO `cool_region` VALUES ('140', '10', '沧州', '2');
INSERT INTO `cool_region` VALUES ('141', '10', '承德', '2');
INSERT INTO `cool_region` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `cool_region` VALUES ('143', '10', '衡水', '2');
INSERT INTO `cool_region` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `cool_region` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `cool_region` VALUES ('146', '10', '唐山', '2');
INSERT INTO `cool_region` VALUES ('147', '10', '邢台', '2');
INSERT INTO `cool_region` VALUES ('148', '10', '张家口', '2');
INSERT INTO `cool_region` VALUES ('149', '11', '郑州', '2');
INSERT INTO `cool_region` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `cool_region` VALUES ('151', '11', '开封', '2');
INSERT INTO `cool_region` VALUES ('152', '11', '安阳', '2');
INSERT INTO `cool_region` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `cool_region` VALUES ('154', '11', '济源', '2');
INSERT INTO `cool_region` VALUES ('155', '11', '焦作', '2');
INSERT INTO `cool_region` VALUES ('156', '11', '南阳', '2');
INSERT INTO `cool_region` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `cool_region` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `cool_region` VALUES ('159', '11', '商丘', '2');
INSERT INTO `cool_region` VALUES ('160', '11', '新乡', '2');
INSERT INTO `cool_region` VALUES ('161', '11', '信阳', '2');
INSERT INTO `cool_region` VALUES ('162', '11', '许昌', '2');
INSERT INTO `cool_region` VALUES ('163', '11', '周口', '2');
INSERT INTO `cool_region` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `cool_region` VALUES ('165', '11', '漯河', '2');
INSERT INTO `cool_region` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `cool_region` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `cool_region` VALUES ('168', '12', '大庆', '2');
INSERT INTO `cool_region` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `cool_region` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `cool_region` VALUES ('171', '12', '黑河', '2');
INSERT INTO `cool_region` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `cool_region` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `cool_region` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `cool_region` VALUES ('175', '12', '七台河', '2');
INSERT INTO `cool_region` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `cool_region` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `cool_region` VALUES ('178', '12', '绥化', '2');
INSERT INTO `cool_region` VALUES ('179', '12', '伊春', '2');
INSERT INTO `cool_region` VALUES ('180', '13', '武汉', '2');
INSERT INTO `cool_region` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `cool_region` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `cool_region` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `cool_region` VALUES ('184', '13', '黄石', '2');
INSERT INTO `cool_region` VALUES ('185', '13', '荆门', '2');
INSERT INTO `cool_region` VALUES ('186', '13', '荆州', '2');
INSERT INTO `cool_region` VALUES ('187', '13', '潜江', '2');
INSERT INTO `cool_region` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `cool_region` VALUES ('189', '13', '十堰', '2');
INSERT INTO `cool_region` VALUES ('190', '13', '随州', '2');
INSERT INTO `cool_region` VALUES ('191', '13', '天门', '2');
INSERT INTO `cool_region` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `cool_region` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `cool_region` VALUES ('194', '13', '孝感', '2');
INSERT INTO `cool_region` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `cool_region` VALUES ('196', '13', '恩施', '2');
INSERT INTO `cool_region` VALUES ('197', '14', '长沙', '2');
INSERT INTO `cool_region` VALUES ('198', '14', '张家界', '2');
INSERT INTO `cool_region` VALUES ('199', '14', '常德', '2');
INSERT INTO `cool_region` VALUES ('200', '14', '郴州', '2');
INSERT INTO `cool_region` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `cool_region` VALUES ('202', '14', '怀化', '2');
INSERT INTO `cool_region` VALUES ('203', '14', '娄底', '2');
INSERT INTO `cool_region` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `cool_region` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `cool_region` VALUES ('206', '14', '湘西', '2');
INSERT INTO `cool_region` VALUES ('207', '14', '益阳', '2');
INSERT INTO `cool_region` VALUES ('208', '14', '永州', '2');
INSERT INTO `cool_region` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `cool_region` VALUES ('210', '14', '株洲', '2');
INSERT INTO `cool_region` VALUES ('211', '15', '长春', '2');
INSERT INTO `cool_region` VALUES ('212', '15', '吉林', '2');
INSERT INTO `cool_region` VALUES ('213', '15', '白城', '2');
INSERT INTO `cool_region` VALUES ('214', '15', '白山', '2');
INSERT INTO `cool_region` VALUES ('215', '15', '辽源', '2');
INSERT INTO `cool_region` VALUES ('216', '15', '四平', '2');
INSERT INTO `cool_region` VALUES ('217', '15', '松原', '2');
INSERT INTO `cool_region` VALUES ('218', '15', '通化', '2');
INSERT INTO `cool_region` VALUES ('219', '15', '延边', '2');
INSERT INTO `cool_region` VALUES ('220', '16', '南京', '2');
INSERT INTO `cool_region` VALUES ('221', '16', '苏州', '2');
INSERT INTO `cool_region` VALUES ('222', '16', '无锡', '2');
INSERT INTO `cool_region` VALUES ('223', '16', '常州', '2');
INSERT INTO `cool_region` VALUES ('224', '16', '淮安', '2');
INSERT INTO `cool_region` VALUES ('225', '16', '连云港', '2');
INSERT INTO `cool_region` VALUES ('226', '16', '南通', '2');
INSERT INTO `cool_region` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `cool_region` VALUES ('228', '16', '泰州', '2');
INSERT INTO `cool_region` VALUES ('229', '16', '徐州', '2');
INSERT INTO `cool_region` VALUES ('230', '16', '盐城', '2');
INSERT INTO `cool_region` VALUES ('231', '16', '扬州', '2');
INSERT INTO `cool_region` VALUES ('232', '16', '镇江', '2');
INSERT INTO `cool_region` VALUES ('233', '17', '南昌', '2');
INSERT INTO `cool_region` VALUES ('234', '17', '抚州', '2');
INSERT INTO `cool_region` VALUES ('235', '17', '赣州', '2');
INSERT INTO `cool_region` VALUES ('236', '17', '吉安', '2');
INSERT INTO `cool_region` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `cool_region` VALUES ('238', '17', '九江', '2');
INSERT INTO `cool_region` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `cool_region` VALUES ('240', '17', '上饶', '2');
INSERT INTO `cool_region` VALUES ('241', '17', '新余', '2');
INSERT INTO `cool_region` VALUES ('242', '17', '宜春', '2');
INSERT INTO `cool_region` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `cool_region` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `cool_region` VALUES ('245', '18', '大连', '2');
INSERT INTO `cool_region` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `cool_region` VALUES ('247', '18', '本溪', '2');
INSERT INTO `cool_region` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `cool_region` VALUES ('249', '18', '丹东', '2');
INSERT INTO `cool_region` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `cool_region` VALUES ('251', '18', '阜新', '2');
INSERT INTO `cool_region` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `cool_region` VALUES ('253', '18', '锦州', '2');
INSERT INTO `cool_region` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `cool_region` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `cool_region` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `cool_region` VALUES ('257', '18', '营口', '2');
INSERT INTO `cool_region` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `cool_region` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `cool_region` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `cool_region` VALUES ('261', '19', '包头', '2');
INSERT INTO `cool_region` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `cool_region` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `cool_region` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `cool_region` VALUES ('265', '19', '通辽', '2');
INSERT INTO `cool_region` VALUES ('266', '19', '乌海', '2');
INSERT INTO `cool_region` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `cool_region` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `cool_region` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `cool_region` VALUES ('270', '20', '银川', '2');
INSERT INTO `cool_region` VALUES ('271', '20', '固原', '2');
INSERT INTO `cool_region` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `cool_region` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `cool_region` VALUES ('274', '20', '中卫', '2');
INSERT INTO `cool_region` VALUES ('275', '21', '西宁', '2');
INSERT INTO `cool_region` VALUES ('276', '21', '果洛', '2');
INSERT INTO `cool_region` VALUES ('277', '21', '海北', '2');
INSERT INTO `cool_region` VALUES ('278', '21', '海东', '2');
INSERT INTO `cool_region` VALUES ('279', '21', '海南', '2');
INSERT INTO `cool_region` VALUES ('280', '21', '海西', '2');
INSERT INTO `cool_region` VALUES ('281', '21', '黄南', '2');
INSERT INTO `cool_region` VALUES ('282', '21', '玉树', '2');
INSERT INTO `cool_region` VALUES ('283', '22', '济南', '2');
INSERT INTO `cool_region` VALUES ('284', '22', '青岛', '2');
INSERT INTO `cool_region` VALUES ('285', '22', '滨州', '2');
INSERT INTO `cool_region` VALUES ('286', '22', '德州', '2');
INSERT INTO `cool_region` VALUES ('287', '22', '东营', '2');
INSERT INTO `cool_region` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `cool_region` VALUES ('289', '22', '济宁', '2');
INSERT INTO `cool_region` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `cool_region` VALUES ('291', '22', '聊城', '2');
INSERT INTO `cool_region` VALUES ('292', '22', '临沂', '2');
INSERT INTO `cool_region` VALUES ('293', '22', '日照', '2');
INSERT INTO `cool_region` VALUES ('294', '22', '泰安', '2');
INSERT INTO `cool_region` VALUES ('295', '22', '威海', '2');
INSERT INTO `cool_region` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `cool_region` VALUES ('297', '22', '烟台', '2');
INSERT INTO `cool_region` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `cool_region` VALUES ('299', '22', '淄博', '2');
INSERT INTO `cool_region` VALUES ('300', '23', '太原', '2');
INSERT INTO `cool_region` VALUES ('301', '23', '长治', '2');
INSERT INTO `cool_region` VALUES ('302', '23', '大同', '2');
INSERT INTO `cool_region` VALUES ('303', '23', '晋城', '2');
INSERT INTO `cool_region` VALUES ('304', '23', '晋中', '2');
INSERT INTO `cool_region` VALUES ('305', '23', '临汾', '2');
INSERT INTO `cool_region` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `cool_region` VALUES ('307', '23', '朔州', '2');
INSERT INTO `cool_region` VALUES ('308', '23', '忻州', '2');
INSERT INTO `cool_region` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `cool_region` VALUES ('310', '23', '运城', '2');
INSERT INTO `cool_region` VALUES ('311', '24', '西安', '2');
INSERT INTO `cool_region` VALUES ('312', '24', '安康', '2');
INSERT INTO `cool_region` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `cool_region` VALUES ('314', '24', '汉中', '2');
INSERT INTO `cool_region` VALUES ('315', '24', '商洛', '2');
INSERT INTO `cool_region` VALUES ('316', '24', '铜川', '2');
INSERT INTO `cool_region` VALUES ('317', '24', '渭南', '2');
INSERT INTO `cool_region` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `cool_region` VALUES ('319', '24', '延安', '2');
INSERT INTO `cool_region` VALUES ('320', '24', '榆林', '2');
INSERT INTO `cool_region` VALUES ('321', '25', '上海', '2');
INSERT INTO `cool_region` VALUES ('322', '26', '成都', '2');
INSERT INTO `cool_region` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `cool_region` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `cool_region` VALUES ('325', '26', '巴中', '2');
INSERT INTO `cool_region` VALUES ('326', '26', '达州', '2');
INSERT INTO `cool_region` VALUES ('327', '26', '德阳', '2');
INSERT INTO `cool_region` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `cool_region` VALUES ('329', '26', '广安', '2');
INSERT INTO `cool_region` VALUES ('330', '26', '广元', '2');
INSERT INTO `cool_region` VALUES ('331', '26', '乐山', '2');
INSERT INTO `cool_region` VALUES ('332', '26', '凉山', '2');
INSERT INTO `cool_region` VALUES ('333', '26', '眉山', '2');
INSERT INTO `cool_region` VALUES ('334', '26', '南充', '2');
INSERT INTO `cool_region` VALUES ('335', '26', '内江', '2');
INSERT INTO `cool_region` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `cool_region` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `cool_region` VALUES ('338', '26', '雅安', '2');
INSERT INTO `cool_region` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `cool_region` VALUES ('340', '26', '资阳', '2');
INSERT INTO `cool_region` VALUES ('341', '26', '自贡', '2');
INSERT INTO `cool_region` VALUES ('342', '26', '泸州', '2');
INSERT INTO `cool_region` VALUES ('343', '27', '天津', '2');
INSERT INTO `cool_region` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `cool_region` VALUES ('345', '28', '阿里', '2');
INSERT INTO `cool_region` VALUES ('346', '28', '昌都', '2');
INSERT INTO `cool_region` VALUES ('347', '28', '林芝', '2');
INSERT INTO `cool_region` VALUES ('348', '28', '那曲', '2');
INSERT INTO `cool_region` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `cool_region` VALUES ('350', '28', '山南', '2');
INSERT INTO `cool_region` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `cool_region` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `cool_region` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `cool_region` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `cool_region` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `cool_region` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `cool_region` VALUES ('357', '29', '哈密', '2');
INSERT INTO `cool_region` VALUES ('358', '29', '和田', '2');
INSERT INTO `cool_region` VALUES ('359', '29', '喀什', '2');
INSERT INTO `cool_region` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `cool_region` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `cool_region` VALUES ('362', '29', '石河子', '2');
INSERT INTO `cool_region` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `cool_region` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `cool_region` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `cool_region` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `cool_region` VALUES ('367', '30', '昆明', '2');
INSERT INTO `cool_region` VALUES ('368', '30', '怒江', '2');
INSERT INTO `cool_region` VALUES ('369', '30', '普洱', '2');
INSERT INTO `cool_region` VALUES ('370', '30', '丽江', '2');
INSERT INTO `cool_region` VALUES ('371', '30', '保山', '2');
INSERT INTO `cool_region` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `cool_region` VALUES ('373', '30', '大理', '2');
INSERT INTO `cool_region` VALUES ('374', '30', '德宏', '2');
INSERT INTO `cool_region` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `cool_region` VALUES ('376', '30', '红河', '2');
INSERT INTO `cool_region` VALUES ('377', '30', '临沧', '2');
INSERT INTO `cool_region` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `cool_region` VALUES ('379', '30', '文山', '2');
INSERT INTO `cool_region` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `cool_region` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `cool_region` VALUES ('382', '30', '昭通', '2');
INSERT INTO `cool_region` VALUES ('383', '31', '杭州', '2');
INSERT INTO `cool_region` VALUES ('384', '31', '湖州', '2');
INSERT INTO `cool_region` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `cool_region` VALUES ('386', '31', '金华', '2');
INSERT INTO `cool_region` VALUES ('387', '31', '丽水', '2');
INSERT INTO `cool_region` VALUES ('388', '31', '宁波', '2');
INSERT INTO `cool_region` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `cool_region` VALUES ('390', '31', '台州', '2');
INSERT INTO `cool_region` VALUES ('391', '31', '温州', '2');
INSERT INTO `cool_region` VALUES ('392', '31', '舟山', '2');
INSERT INTO `cool_region` VALUES ('393', '31', '衢州', '2');
INSERT INTO `cool_region` VALUES ('394', '32', '重庆', '2');
INSERT INTO `cool_region` VALUES ('395', '33', '香港', '2');
INSERT INTO `cool_region` VALUES ('396', '34', '澳门', '2');
INSERT INTO `cool_region` VALUES ('397', '35', '台湾', '2');
INSERT INTO `cool_region` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `cool_region` VALUES ('399', '36', '大观区', '3');
INSERT INTO `cool_region` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `cool_region` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `cool_region` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `cool_region` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `cool_region` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `cool_region` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `cool_region` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `cool_region` VALUES ('407', '36', '望江县', '3');
INSERT INTO `cool_region` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `cool_region` VALUES ('409', '37', '中市区', '3');
INSERT INTO `cool_region` VALUES ('410', '37', '东市区', '3');
INSERT INTO `cool_region` VALUES ('411', '37', '西市区', '3');
INSERT INTO `cool_region` VALUES ('412', '37', '郊区', '3');
INSERT INTO `cool_region` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `cool_region` VALUES ('414', '37', '五河县', '3');
INSERT INTO `cool_region` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `cool_region` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `cool_region` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `cool_region` VALUES ('418', '38', '无为县', '3');
INSERT INTO `cool_region` VALUES ('419', '38', '含山县', '3');
INSERT INTO `cool_region` VALUES ('420', '38', '和县', '3');
INSERT INTO `cool_region` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `cool_region` VALUES ('422', '39', '东至县', '3');
INSERT INTO `cool_region` VALUES ('423', '39', '石台县', '3');
INSERT INTO `cool_region` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `cool_region` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `cool_region` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `cool_region` VALUES ('427', '40', '天长市', '3');
INSERT INTO `cool_region` VALUES ('428', '40', '明光市', '3');
INSERT INTO `cool_region` VALUES ('429', '40', '来安县', '3');
INSERT INTO `cool_region` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `cool_region` VALUES ('431', '40', '定远县', '3');
INSERT INTO `cool_region` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `cool_region` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `cool_region` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `cool_region` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `cool_region` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `cool_region` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `cool_region` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `cool_region` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `cool_region` VALUES ('440', '41', '界首市', '3');
INSERT INTO `cool_region` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `cool_region` VALUES ('442', '41', '太和县', '3');
INSERT INTO `cool_region` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `cool_region` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `cool_region` VALUES ('445', '42', '相山区', '3');
INSERT INTO `cool_region` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `cool_region` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `cool_region` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `cool_region` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `cool_region` VALUES ('450', '43', '大通区', '3');
INSERT INTO `cool_region` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `cool_region` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `cool_region` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `cool_region` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `cool_region` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `cool_region` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `cool_region` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `cool_region` VALUES ('458', '44', '歙县', '3');
INSERT INTO `cool_region` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `cool_region` VALUES ('460', '44', '黟县', '3');
INSERT INTO `cool_region` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `cool_region` VALUES ('462', '45', '金安区', '3');
INSERT INTO `cool_region` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `cool_region` VALUES ('464', '45', '寿县', '3');
INSERT INTO `cool_region` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `cool_region` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `cool_region` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `cool_region` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `cool_region` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `cool_region` VALUES ('470', '46', '花山区', '3');
INSERT INTO `cool_region` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `cool_region` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `cool_region` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `cool_region` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `cool_region` VALUES ('475', '47', '萧县', '3');
INSERT INTO `cool_region` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `cool_region` VALUES ('477', '47', '泗县', '3');
INSERT INTO `cool_region` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `cool_region` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `cool_region` VALUES ('480', '48', '郊区', '3');
INSERT INTO `cool_region` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `cool_region` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `cool_region` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `cool_region` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `cool_region` VALUES ('485', '49', '三山区', '3');
INSERT INTO `cool_region` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `cool_region` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `cool_region` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `cool_region` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `cool_region` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `cool_region` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `cool_region` VALUES ('492', '50', '广德县', '3');
INSERT INTO `cool_region` VALUES ('493', '50', '泾县', '3');
INSERT INTO `cool_region` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `cool_region` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `cool_region` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `cool_region` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `cool_region` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `cool_region` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `cool_region` VALUES ('500', '52', '东城区', '3');
INSERT INTO `cool_region` VALUES ('501', '52', '西城区', '3');
INSERT INTO `cool_region` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `cool_region` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `cool_region` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `cool_region` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `cool_region` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `cool_region` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `cool_region` VALUES ('508', '52', '房山区', '3');
INSERT INTO `cool_region` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `cool_region` VALUES ('510', '52', '通州区', '3');
INSERT INTO `cool_region` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `cool_region` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `cool_region` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `cool_region` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `cool_region` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `cool_region` VALUES ('516', '52', '密云县', '3');
INSERT INTO `cool_region` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `cool_region` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `cool_region` VALUES ('519', '53', '台江区', '3');
INSERT INTO `cool_region` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `cool_region` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `cool_region` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `cool_region` VALUES ('523', '53', '福清市', '3');
INSERT INTO `cool_region` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `cool_region` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `cool_region` VALUES ('526', '53', '连江县', '3');
INSERT INTO `cool_region` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `cool_region` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `cool_region` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `cool_region` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `cool_region` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `cool_region` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `cool_region` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `cool_region` VALUES ('534', '54', '永定县', '3');
INSERT INTO `cool_region` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `cool_region` VALUES ('536', '54', '武平县', '3');
INSERT INTO `cool_region` VALUES ('537', '54', '连城县', '3');
INSERT INTO `cool_region` VALUES ('538', '55', '延平区', '3');
INSERT INTO `cool_region` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `cool_region` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `cool_region` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `cool_region` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `cool_region` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `cool_region` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `cool_region` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `cool_region` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `cool_region` VALUES ('547', '55', '政和县', '3');
INSERT INTO `cool_region` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `cool_region` VALUES ('549', '56', '福安市', '3');
INSERT INTO `cool_region` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `cool_region` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `cool_region` VALUES ('552', '56', '古田县', '3');
INSERT INTO `cool_region` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `cool_region` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `cool_region` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `cool_region` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `cool_region` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `cool_region` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `cool_region` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `cool_region` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `cool_region` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `cool_region` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `cool_region` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `cool_region` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `cool_region` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `cool_region` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `cool_region` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `cool_region` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `cool_region` VALUES ('569', '58', '南安市', '3');
INSERT INTO `cool_region` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `cool_region` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `cool_region` VALUES ('572', '58', '永春县', '3');
INSERT INTO `cool_region` VALUES ('573', '58', '德化县', '3');
INSERT INTO `cool_region` VALUES ('574', '58', '金门县', '3');
INSERT INTO `cool_region` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `cool_region` VALUES ('576', '59', '三元区', '3');
INSERT INTO `cool_region` VALUES ('577', '59', '永安市', '3');
INSERT INTO `cool_region` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `cool_region` VALUES ('579', '59', '清流县', '3');
INSERT INTO `cool_region` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `cool_region` VALUES ('581', '59', '大田县', '3');
INSERT INTO `cool_region` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `cool_region` VALUES ('583', '59', '沙县', '3');
INSERT INTO `cool_region` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `cool_region` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `cool_region` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `cool_region` VALUES ('587', '60', '思明区', '3');
INSERT INTO `cool_region` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `cool_region` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `cool_region` VALUES ('590', '60', '集美区', '3');
INSERT INTO `cool_region` VALUES ('591', '60', '同安区', '3');
INSERT INTO `cool_region` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `cool_region` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `cool_region` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `cool_region` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `cool_region` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `cool_region` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `cool_region` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `cool_region` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `cool_region` VALUES ('600', '61', '东山县', '3');
INSERT INTO `cool_region` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `cool_region` VALUES ('602', '61', '平和县', '3');
INSERT INTO `cool_region` VALUES ('603', '61', '华安县', '3');
INSERT INTO `cool_region` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `cool_region` VALUES ('605', '62', '城关区', '3');
INSERT INTO `cool_region` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `cool_region` VALUES ('607', '62', '西固区', '3');
INSERT INTO `cool_region` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `cool_region` VALUES ('609', '62', '红古区', '3');
INSERT INTO `cool_region` VALUES ('610', '62', '永登县', '3');
INSERT INTO `cool_region` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `cool_region` VALUES ('612', '63', '白银区', '3');
INSERT INTO `cool_region` VALUES ('613', '63', '平川区', '3');
INSERT INTO `cool_region` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `cool_region` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `cool_region` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `cool_region` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `cool_region` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `cool_region` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `cool_region` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `cool_region` VALUES ('621', '64', '漳县', '3');
INSERT INTO `cool_region` VALUES ('622', '64', '岷县', '3');
INSERT INTO `cool_region` VALUES ('623', '64', '安定区', '3');
INSERT INTO `cool_region` VALUES ('624', '64', '安定区', '3');
INSERT INTO `cool_region` VALUES ('625', '65', '合作市', '3');
INSERT INTO `cool_region` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `cool_region` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `cool_region` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `cool_region` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `cool_region` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `cool_region` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `cool_region` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `cool_region` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `cool_region` VALUES ('634', '67', '金川区', '3');
INSERT INTO `cool_region` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `cool_region` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `cool_region` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `cool_region` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `cool_region` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `cool_region` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `cool_region` VALUES ('641', '68', '肃北', '3');
INSERT INTO `cool_region` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `cool_region` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `cool_region` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `cool_region` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `cool_region` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `cool_region` VALUES ('647', '69', '广河县', '3');
INSERT INTO `cool_region` VALUES ('648', '69', '和政县', '3');
INSERT INTO `cool_region` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `cool_region` VALUES ('650', '69', '积石山', '3');
INSERT INTO `cool_region` VALUES ('651', '70', '成县', '3');
INSERT INTO `cool_region` VALUES ('652', '70', '徽县', '3');
INSERT INTO `cool_region` VALUES ('653', '70', '康县', '3');
INSERT INTO `cool_region` VALUES ('654', '70', '礼县', '3');
INSERT INTO `cool_region` VALUES ('655', '70', '两当县', '3');
INSERT INTO `cool_region` VALUES ('656', '70', '文县', '3');
INSERT INTO `cool_region` VALUES ('657', '70', '西和县', '3');
INSERT INTO `cool_region` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `cool_region` VALUES ('659', '70', '武都区', '3');
INSERT INTO `cool_region` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `cool_region` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `cool_region` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `cool_region` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `cool_region` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `cool_region` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `cool_region` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `cool_region` VALUES ('667', '72', '合水县', '3');
INSERT INTO `cool_region` VALUES ('668', '72', '华池县', '3');
INSERT INTO `cool_region` VALUES ('669', '72', '环县', '3');
INSERT INTO `cool_region` VALUES ('670', '72', '宁县', '3');
INSERT INTO `cool_region` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `cool_region` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `cool_region` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `cool_region` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `cool_region` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `cool_region` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `cool_region` VALUES ('677', '73', '清水县', '3');
INSERT INTO `cool_region` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `cool_region` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `cool_region` VALUES ('680', '73', '武山县', '3');
INSERT INTO `cool_region` VALUES ('681', '73', '张家川', '3');
INSERT INTO `cool_region` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `cool_region` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `cool_region` VALUES ('684', '74', '天祝', '3');
INSERT INTO `cool_region` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `cool_region` VALUES ('686', '75', '高台县', '3');
INSERT INTO `cool_region` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `cool_region` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `cool_region` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `cool_region` VALUES ('690', '75', '肃南', '3');
INSERT INTO `cool_region` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `cool_region` VALUES ('692', '76', '从化市', '3');
INSERT INTO `cool_region` VALUES ('693', '76', '天河区', '3');
INSERT INTO `cool_region` VALUES ('694', '76', '东山区', '3');
INSERT INTO `cool_region` VALUES ('695', '76', '白云区', '3');
INSERT INTO `cool_region` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `cool_region` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `cool_region` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `cool_region` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `cool_region` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `cool_region` VALUES ('701', '76', '花都区', '3');
INSERT INTO `cool_region` VALUES ('702', '76', '增城区', '3');
INSERT INTO `cool_region` VALUES ('703', '76', '从化区', '3');
INSERT INTO `cool_region` VALUES ('704', '76', '市郊', '3');
INSERT INTO `cool_region` VALUES ('705', '77', '福田区', '3');
INSERT INTO `cool_region` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `cool_region` VALUES ('707', '77', '南山区', '3');
INSERT INTO `cool_region` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `cool_region` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `cool_region` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `cool_region` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `cool_region` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `cool_region` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `cool_region` VALUES ('714', '79', '南城区', '3');
INSERT INTO `cool_region` VALUES ('715', '79', '东城区', '3');
INSERT INTO `cool_region` VALUES ('716', '79', '万江区', '3');
INSERT INTO `cool_region` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `cool_region` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `cool_region` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `cool_region` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `cool_region` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `cool_region` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `cool_region` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `cool_region` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `cool_region` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `cool_region` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `cool_region` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `cool_region` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `cool_region` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `cool_region` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `cool_region` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `cool_region` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `cool_region` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `cool_region` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `cool_region` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `cool_region` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `cool_region` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `cool_region` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `cool_region` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `cool_region` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `cool_region` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `cool_region` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `cool_region` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `cool_region` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `cool_region` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `cool_region` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `cool_region` VALUES ('747', '80', '南海区', '3');
INSERT INTO `cool_region` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `cool_region` VALUES ('749', '80', '三水区', '3');
INSERT INTO `cool_region` VALUES ('750', '80', '高明区', '3');
INSERT INTO `cool_region` VALUES ('751', '81', '东源县', '3');
INSERT INTO `cool_region` VALUES ('752', '81', '和平县', '3');
INSERT INTO `cool_region` VALUES ('753', '81', '源城区', '3');
INSERT INTO `cool_region` VALUES ('754', '81', '连平县', '3');
INSERT INTO `cool_region` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `cool_region` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `cool_region` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `cool_region` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `cool_region` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `cool_region` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `cool_region` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `cool_region` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `cool_region` VALUES ('763', '83', '江海区', '3');
INSERT INTO `cool_region` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `cool_region` VALUES ('765', '83', '新会区', '3');
INSERT INTO `cool_region` VALUES ('766', '83', '台山市', '3');
INSERT INTO `cool_region` VALUES ('767', '83', '开平市', '3');
INSERT INTO `cool_region` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `cool_region` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `cool_region` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `cool_region` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `cool_region` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `cool_region` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `cool_region` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `cool_region` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `cool_region` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `cool_region` VALUES ('777', '85', '高州市', '3');
INSERT INTO `cool_region` VALUES ('778', '85', '化州市', '3');
INSERT INTO `cool_region` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `cool_region` VALUES ('780', '85', '电白县', '3');
INSERT INTO `cool_region` VALUES ('781', '86', '梅县', '3');
INSERT INTO `cool_region` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `cool_region` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `cool_region` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `cool_region` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `cool_region` VALUES ('786', '86', '五华县', '3');
INSERT INTO `cool_region` VALUES ('787', '86', '平远县', '3');
INSERT INTO `cool_region` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `cool_region` VALUES ('789', '87', '清城区', '3');
INSERT INTO `cool_region` VALUES ('790', '87', '英德市', '3');
INSERT INTO `cool_region` VALUES ('791', '87', '连州市', '3');
INSERT INTO `cool_region` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `cool_region` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `cool_region` VALUES ('794', '87', '清新县', '3');
INSERT INTO `cool_region` VALUES ('795', '87', '连山', '3');
INSERT INTO `cool_region` VALUES ('796', '87', '连南', '3');
INSERT INTO `cool_region` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `cool_region` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `cool_region` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `cool_region` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `cool_region` VALUES ('801', '88', '金平区', '3');
INSERT INTO `cool_region` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `cool_region` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `cool_region` VALUES ('804', '89', '城区', '3');
INSERT INTO `cool_region` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `cool_region` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `cool_region` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `cool_region` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `cool_region` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `cool_region` VALUES ('810', '90', '武江区', '3');
INSERT INTO `cool_region` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `cool_region` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `cool_region` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `cool_region` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `cool_region` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `cool_region` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `cool_region` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `cool_region` VALUES ('818', '90', '乳源', '3');
INSERT INTO `cool_region` VALUES ('819', '91', '江城区', '3');
INSERT INTO `cool_region` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `cool_region` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `cool_region` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `cool_region` VALUES ('823', '92', '云城区', '3');
INSERT INTO `cool_region` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `cool_region` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `cool_region` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `cool_region` VALUES ('827', '92', '云安县', '3');
INSERT INTO `cool_region` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `cool_region` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `cool_region` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `cool_region` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `cool_region` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `cool_region` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `cool_region` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `cool_region` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `cool_region` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `cool_region` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `cool_region` VALUES ('838', '94', '高要市', '3');
INSERT INTO `cool_region` VALUES ('839', '94', '四会市', '3');
INSERT INTO `cool_region` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `cool_region` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `cool_region` VALUES ('842', '94', '封开县', '3');
INSERT INTO `cool_region` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `cool_region` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `cool_region` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `cool_region` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `cool_region` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `cool_region` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `cool_region` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `cool_region` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `cool_region` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `cool_region` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `cool_region` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `cool_region` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `cool_region` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `cool_region` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `cool_region` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `cool_region` VALUES ('858', '97', '江南区', '3');
INSERT INTO `cool_region` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `cool_region` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `cool_region` VALUES ('861', '97', '马山县', '3');
INSERT INTO `cool_region` VALUES ('862', '97', '上林县', '3');
INSERT INTO `cool_region` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `cool_region` VALUES ('864', '97', '横县', '3');
INSERT INTO `cool_region` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `cool_region` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `cool_region` VALUES ('867', '98', '象山区', '3');
INSERT INTO `cool_region` VALUES ('868', '98', '七星区', '3');
INSERT INTO `cool_region` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `cool_region` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `cool_region` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `cool_region` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `cool_region` VALUES ('873', '98', '全州县', '3');
INSERT INTO `cool_region` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `cool_region` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `cool_region` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `cool_region` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `cool_region` VALUES ('878', '98', '资源县', '3');
INSERT INTO `cool_region` VALUES ('879', '98', '永福县', '3');
INSERT INTO `cool_region` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `cool_region` VALUES ('881', '98', '恭城', '3');
INSERT INTO `cool_region` VALUES ('882', '99', '右江区', '3');
INSERT INTO `cool_region` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `cool_region` VALUES ('884', '99', '平果县', '3');
INSERT INTO `cool_region` VALUES ('885', '99', '西林县', '3');
INSERT INTO `cool_region` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `cool_region` VALUES ('887', '99', '德保县', '3');
INSERT INTO `cool_region` VALUES ('888', '99', '田林县', '3');
INSERT INTO `cool_region` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `cool_region` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `cool_region` VALUES ('891', '99', '田东县', '3');
INSERT INTO `cool_region` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `cool_region` VALUES ('893', '99', '隆林', '3');
INSERT INTO `cool_region` VALUES ('894', '100', '海城区', '3');
INSERT INTO `cool_region` VALUES ('895', '100', '银海区', '3');
INSERT INTO `cool_region` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `cool_region` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `cool_region` VALUES ('898', '101', '江州区', '3');
INSERT INTO `cool_region` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `cool_region` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `cool_region` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `cool_region` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `cool_region` VALUES ('903', '101', '大新县', '3');
INSERT INTO `cool_region` VALUES ('904', '101', '天等县', '3');
INSERT INTO `cool_region` VALUES ('905', '102', '港口区', '3');
INSERT INTO `cool_region` VALUES ('906', '102', '防城区', '3');
INSERT INTO `cool_region` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `cool_region` VALUES ('908', '102', '上思县', '3');
INSERT INTO `cool_region` VALUES ('909', '103', '港北区', '3');
INSERT INTO `cool_region` VALUES ('910', '103', '港南区', '3');
INSERT INTO `cool_region` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `cool_region` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `cool_region` VALUES ('913', '103', '平南县', '3');
INSERT INTO `cool_region` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `cool_region` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `cool_region` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `cool_region` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `cool_region` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `cool_region` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `cool_region` VALUES ('920', '104', '都安', '3');
INSERT INTO `cool_region` VALUES ('921', '104', '罗城', '3');
INSERT INTO `cool_region` VALUES ('922', '104', '巴马', '3');
INSERT INTO `cool_region` VALUES ('923', '104', '环江', '3');
INSERT INTO `cool_region` VALUES ('924', '104', '大化', '3');
INSERT INTO `cool_region` VALUES ('925', '105', '八步区', '3');
INSERT INTO `cool_region` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `cool_region` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `cool_region` VALUES ('928', '105', '富川', '3');
INSERT INTO `cool_region` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `cool_region` VALUES ('930', '106', '合山市', '3');
INSERT INTO `cool_region` VALUES ('931', '106', '象州县', '3');
INSERT INTO `cool_region` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `cool_region` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `cool_region` VALUES ('934', '106', '金秀', '3');
INSERT INTO `cool_region` VALUES ('935', '107', '城中区', '3');
INSERT INTO `cool_region` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `cool_region` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `cool_region` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `cool_region` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `cool_region` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `cool_region` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `cool_region` VALUES ('942', '107', '融安县', '3');
INSERT INTO `cool_region` VALUES ('943', '107', '融水', '3');
INSERT INTO `cool_region` VALUES ('944', '107', '三江', '3');
INSERT INTO `cool_region` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `cool_region` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `cool_region` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `cool_region` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `cool_region` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `cool_region` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `cool_region` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `cool_region` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `cool_region` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `cool_region` VALUES ('954', '109', '藤县', '3');
INSERT INTO `cool_region` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `cool_region` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `cool_region` VALUES ('957', '110', '北流市', '3');
INSERT INTO `cool_region` VALUES ('958', '110', '容县', '3');
INSERT INTO `cool_region` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `cool_region` VALUES ('960', '110', '博白县', '3');
INSERT INTO `cool_region` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `cool_region` VALUES ('962', '111', '南明区', '3');
INSERT INTO `cool_region` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `cool_region` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `cool_region` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `cool_region` VALUES ('966', '111', '白云区', '3');
INSERT INTO `cool_region` VALUES ('967', '111', '小河区', '3');
INSERT INTO `cool_region` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `cool_region` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `cool_region` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `cool_region` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `cool_region` VALUES ('972', '111', '修文县', '3');
INSERT INTO `cool_region` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `cool_region` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `cool_region` VALUES ('975', '112', '关岭', '3');
INSERT INTO `cool_region` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `cool_region` VALUES ('977', '112', '紫云', '3');
INSERT INTO `cool_region` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `cool_region` VALUES ('979', '112', '普定县', '3');
INSERT INTO `cool_region` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `cool_region` VALUES ('981', '113', '大方县', '3');
INSERT INTO `cool_region` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `cool_region` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `cool_region` VALUES ('984', '113', '织金县', '3');
INSERT INTO `cool_region` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `cool_region` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `cool_region` VALUES ('987', '113', '威宁', '3');
INSERT INTO `cool_region` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `cool_region` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `cool_region` VALUES ('990', '114', '水城县', '3');
INSERT INTO `cool_region` VALUES ('991', '114', '盘县', '3');
INSERT INTO `cool_region` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `cool_region` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `cool_region` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `cool_region` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `cool_region` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `cool_region` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `cool_region` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `cool_region` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `cool_region` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `cool_region` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `cool_region` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `cool_region` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `cool_region` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `cool_region` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `cool_region` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `cool_region` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `cool_region` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `cool_region` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `cool_region` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `cool_region` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `cool_region` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `cool_region` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `cool_region` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `cool_region` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `cool_region` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `cool_region` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `cool_region` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `cool_region` VALUES ('1019', '116', '三都', '3');
INSERT INTO `cool_region` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `cool_region` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `cool_region` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `cool_region` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `cool_region` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `cool_region` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `cool_region` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `cool_region` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `cool_region` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `cool_region` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `cool_region` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `cool_region` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `cool_region` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `cool_region` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `cool_region` VALUES ('1034', '118', '印江', '3');
INSERT INTO `cool_region` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `cool_region` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `cool_region` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `cool_region` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `cool_region` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `cool_region` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `cool_region` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `cool_region` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `cool_region` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `cool_region` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `cool_region` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `cool_region` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `cool_region` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `cool_region` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `cool_region` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `cool_region` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `cool_region` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `cool_region` VALUES ('1052', '119', '道真', '3');
INSERT INTO `cool_region` VALUES ('1053', '119', '务川', '3');
INSERT INTO `cool_region` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `cool_region` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `cool_region` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `cool_region` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `cool_region` VALUES ('1058', '137', '市区', '3');
INSERT INTO `cool_region` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `cool_region` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `cool_region` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `cool_region` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `cool_region` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `cool_region` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `cool_region` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `cool_region` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `cool_region` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `cool_region` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `cool_region` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `cool_region` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `cool_region` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `cool_region` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `cool_region` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `cool_region` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `cool_region` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `cool_region` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `cool_region` VALUES ('1077', '137', '其他', '3');
INSERT INTO `cool_region` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `cool_region` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `cool_region` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `cool_region` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `cool_region` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `cool_region` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `cool_region` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `cool_region` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `cool_region` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `cool_region` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `cool_region` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `cool_region` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `cool_region` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `cool_region` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `cool_region` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `cool_region` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `cool_region` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `cool_region` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `cool_region` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `cool_region` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `cool_region` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `cool_region` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `cool_region` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `cool_region` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `cool_region` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `cool_region` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `cool_region` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `cool_region` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `cool_region` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `cool_region` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `cool_region` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `cool_region` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `cool_region` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `cool_region` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `cool_region` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `cool_region` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `cool_region` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `cool_region` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `cool_region` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `cool_region` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `cool_region` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `cool_region` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `cool_region` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `cool_region` VALUES ('1121', '139', '易县', '3');
INSERT INTO `cool_region` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `cool_region` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `cool_region` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `cool_region` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `cool_region` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `cool_region` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `cool_region` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `cool_region` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `cool_region` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `cool_region` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `cool_region` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `cool_region` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `cool_region` VALUES ('1134', '140', '青县', '3');
INSERT INTO `cool_region` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `cool_region` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `cool_region` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `cool_region` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `cool_region` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `cool_region` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `cool_region` VALUES ('1141', '140', '献县', '3');
INSERT INTO `cool_region` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `cool_region` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `cool_region` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `cool_region` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `cool_region` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `cool_region` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `cool_region` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `cool_region` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `cool_region` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `cool_region` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `cool_region` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `cool_region` VALUES ('1153', '141', '围场', '3');
INSERT INTO `cool_region` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `cool_region` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `cool_region` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `cool_region` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `cool_region` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `cool_region` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `cool_region` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `cool_region` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `cool_region` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `cool_region` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `cool_region` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `cool_region` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `cool_region` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `cool_region` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `cool_region` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `cool_region` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `cool_region` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `cool_region` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `cool_region` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `cool_region` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `cool_region` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `cool_region` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `cool_region` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `cool_region` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `cool_region` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `cool_region` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `cool_region` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `cool_region` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `cool_region` VALUES ('1182', '143', '景县', '3');
INSERT INTO `cool_region` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `cool_region` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `cool_region` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `cool_region` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `cool_region` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `cool_region` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `cool_region` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `cool_region` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `cool_region` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `cool_region` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `cool_region` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `cool_region` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `cool_region` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `cool_region` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `cool_region` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `cool_region` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `cool_region` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `cool_region` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `cool_region` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `cool_region` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `cool_region` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `cool_region` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `cool_region` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `cool_region` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `cool_region` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `cool_region` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `cool_region` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `cool_region` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `cool_region` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `cool_region` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `cool_region` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `cool_region` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `cool_region` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `cool_region` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `cool_region` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `cool_region` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `cool_region` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `cool_region` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `cool_region` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `cool_region` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `cool_region` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `cool_region` VALUES ('1224', '147', '任县', '3');
INSERT INTO `cool_region` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `cool_region` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `cool_region` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `cool_region` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `cool_region` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `cool_region` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `cool_region` VALUES ('1231', '147', '威县', '3');
INSERT INTO `cool_region` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `cool_region` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `cool_region` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `cool_region` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `cool_region` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `cool_region` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `cool_region` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `cool_region` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `cool_region` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `cool_region` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `cool_region` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `cool_region` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `cool_region` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `cool_region` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `cool_region` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `cool_region` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `cool_region` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `cool_region` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `cool_region` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `cool_region` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `cool_region` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `cool_region` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `cool_region` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `cool_region` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `cool_region` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `cool_region` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `cool_region` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `cool_region` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `cool_region` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `cool_region` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `cool_region` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `cool_region` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `cool_region` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `cool_region` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `cool_region` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `cool_region` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `cool_region` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `cool_region` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `cool_region` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `cool_region` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `cool_region` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `cool_region` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `cool_region` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `cool_region` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `cool_region` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `cool_region` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `cool_region` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `cool_region` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `cool_region` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `cool_region` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `cool_region` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `cool_region` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `cool_region` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `cool_region` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `cool_region` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `cool_region` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `cool_region` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `cool_region` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `cool_region` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `cool_region` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `cool_region` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `cool_region` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `cool_region` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `cool_region` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `cool_region` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `cool_region` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `cool_region` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `cool_region` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `cool_region` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `cool_region` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `cool_region` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `cool_region` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `cool_region` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `cool_region` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `cool_region` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `cool_region` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `cool_region` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `cool_region` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `cool_region` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `cool_region` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `cool_region` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `cool_region` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `cool_region` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `cool_region` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `cool_region` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `cool_region` VALUES ('1317', '155', '温县', '3');
INSERT INTO `cool_region` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `cool_region` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `cool_region` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `cool_region` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `cool_region` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `cool_region` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `cool_region` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `cool_region` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `cool_region` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `cool_region` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `cool_region` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `cool_region` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `cool_region` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `cool_region` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `cool_region` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `cool_region` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `cool_region` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `cool_region` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `cool_region` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `cool_region` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `cool_region` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `cool_region` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `cool_region` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `cool_region` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `cool_region` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `cool_region` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `cool_region` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `cool_region` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `cool_region` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `cool_region` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `cool_region` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `cool_region` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `cool_region` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `cool_region` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `cool_region` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `cool_region` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `cool_region` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `cool_region` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `cool_region` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `cool_region` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `cool_region` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `cool_region` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `cool_region` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `cool_region` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `cool_region` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `cool_region` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `cool_region` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `cool_region` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `cool_region` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `cool_region` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `cool_region` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `cool_region` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `cool_region` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `cool_region` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `cool_region` VALUES ('1372', '161', '新县', '3');
INSERT INTO `cool_region` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `cool_region` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `cool_region` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `cool_region` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `cool_region` VALUES ('1377', '161', '息县', '3');
INSERT INTO `cool_region` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `cool_region` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `cool_region` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `cool_region` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `cool_region` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `cool_region` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `cool_region` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `cool_region` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `cool_region` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `cool_region` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `cool_region` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `cool_region` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `cool_region` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `cool_region` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `cool_region` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `cool_region` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `cool_region` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `cool_region` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `cool_region` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `cool_region` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `cool_region` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `cool_region` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `cool_region` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `cool_region` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `cool_region` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `cool_region` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `cool_region` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `cool_region` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `cool_region` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `cool_region` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `cool_region` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `cool_region` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `cool_region` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `cool_region` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `cool_region` VALUES ('1412', '166', '范县', '3');
INSERT INTO `cool_region` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `cool_region` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `cool_region` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `cool_region` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `cool_region` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `cool_region` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `cool_region` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `cool_region` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `cool_region` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `cool_region` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `cool_region` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `cool_region` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `cool_region` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `cool_region` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `cool_region` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `cool_region` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `cool_region` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `cool_region` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `cool_region` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `cool_region` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `cool_region` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `cool_region` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `cool_region` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `cool_region` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `cool_region` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `cool_region` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `cool_region` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `cool_region` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `cool_region` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `cool_region` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `cool_region` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `cool_region` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `cool_region` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `cool_region` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `cool_region` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `cool_region` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `cool_region` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `cool_region` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `cool_region` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `cool_region` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `cool_region` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `cool_region` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `cool_region` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `cool_region` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `cool_region` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `cool_region` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `cool_region` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `cool_region` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `cool_region` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `cool_region` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `cool_region` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `cool_region` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `cool_region` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `cool_region` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `cool_region` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `cool_region` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `cool_region` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `cool_region` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `cool_region` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `cool_region` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `cool_region` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `cool_region` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `cool_region` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `cool_region` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `cool_region` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `cool_region` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `cool_region` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `cool_region` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `cool_region` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `cool_region` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `cool_region` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `cool_region` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `cool_region` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `cool_region` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `cool_region` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `cool_region` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `cool_region` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `cool_region` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `cool_region` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `cool_region` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `cool_region` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `cool_region` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `cool_region` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `cool_region` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `cool_region` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `cool_region` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `cool_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `cool_region` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `cool_region` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `cool_region` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `cool_region` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `cool_region` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `cool_region` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `cool_region` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `cool_region` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `cool_region` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `cool_region` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `cool_region` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `cool_region` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `cool_region` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `cool_region` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `cool_region` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `cool_region` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `cool_region` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `cool_region` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `cool_region` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `cool_region` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `cool_region` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `cool_region` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `cool_region` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `cool_region` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `cool_region` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `cool_region` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `cool_region` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `cool_region` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `cool_region` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `cool_region` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `cool_region` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `cool_region` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `cool_region` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `cool_region` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `cool_region` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `cool_region` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `cool_region` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `cool_region` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `cool_region` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `cool_region` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `cool_region` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `cool_region` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `cool_region` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `cool_region` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `cool_region` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `cool_region` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `cool_region` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `cool_region` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `cool_region` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `cool_region` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `cool_region` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `cool_region` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `cool_region` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `cool_region` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `cool_region` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `cool_region` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `cool_region` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `cool_region` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `cool_region` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `cool_region` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `cool_region` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `cool_region` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `cool_region` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `cool_region` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `cool_region` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `cool_region` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `cool_region` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `cool_region` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `cool_region` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `cool_region` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `cool_region` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `cool_region` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `cool_region` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `cool_region` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `cool_region` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `cool_region` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `cool_region` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `cool_region` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `cool_region` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `cool_region` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `cool_region` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `cool_region` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `cool_region` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `cool_region` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `cool_region` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `cool_region` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `cool_region` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `cool_region` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `cool_region` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `cool_region` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `cool_region` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `cool_region` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `cool_region` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `cool_region` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `cool_region` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `cool_region` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `cool_region` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `cool_region` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `cool_region` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `cool_region` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `cool_region` VALUES ('1600', '189', '房县', '3');
INSERT INTO `cool_region` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `cool_region` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `cool_region` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `cool_region` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `cool_region` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `cool_region` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `cool_region` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `cool_region` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `cool_region` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `cool_region` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `cool_region` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `cool_region` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `cool_region` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `cool_region` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `cool_region` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `cool_region` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `cool_region` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `cool_region` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `cool_region` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `cool_region` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `cool_region` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `cool_region` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `cool_region` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `cool_region` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `cool_region` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `cool_region` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `cool_region` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `cool_region` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `cool_region` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `cool_region` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `cool_region` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `cool_region` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `cool_region` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `cool_region` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `cool_region` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `cool_region` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `cool_region` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `cool_region` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `cool_region` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `cool_region` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `cool_region` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `cool_region` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `cool_region` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `cool_region` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `cool_region` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `cool_region` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `cool_region` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `cool_region` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `cool_region` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `cool_region` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `cool_region` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `cool_region` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `cool_region` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `cool_region` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `cool_region` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `cool_region` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `cool_region` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `cool_region` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `cool_region` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `cool_region` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `cool_region` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `cool_region` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `cool_region` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `cool_region` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `cool_region` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `cool_region` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `cool_region` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `cool_region` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `cool_region` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `cool_region` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `cool_region` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `cool_region` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `cool_region` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `cool_region` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `cool_region` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `cool_region` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `cool_region` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `cool_region` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `cool_region` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `cool_region` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `cool_region` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `cool_region` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `cool_region` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `cool_region` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `cool_region` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `cool_region` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `cool_region` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `cool_region` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `cool_region` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `cool_region` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `cool_region` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `cool_region` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `cool_region` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `cool_region` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `cool_region` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `cool_region` VALUES ('1696', '202', '通道', '3');
INSERT INTO `cool_region` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `cool_region` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `cool_region` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `cool_region` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `cool_region` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `cool_region` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `cool_region` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `cool_region` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `cool_region` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `cool_region` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `cool_region` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `cool_region` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `cool_region` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `cool_region` VALUES ('1710', '204', '城步', '3');
INSERT INTO `cool_region` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `cool_region` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `cool_region` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `cool_region` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `cool_region` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `cool_region` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `cool_region` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `cool_region` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `cool_region` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `cool_region` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `cool_region` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `cool_region` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `cool_region` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `cool_region` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `cool_region` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `cool_region` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `cool_region` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `cool_region` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `cool_region` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `cool_region` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `cool_region` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `cool_region` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `cool_region` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `cool_region` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `cool_region` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `cool_region` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `cool_region` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `cool_region` VALUES ('1738', '207', '南县', '3');
INSERT INTO `cool_region` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `cool_region` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `cool_region` VALUES ('1741', '208', '江华', '3');
INSERT INTO `cool_region` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `cool_region` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `cool_region` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `cool_region` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `cool_region` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `cool_region` VALUES ('1747', '208', '道县', '3');
INSERT INTO `cool_region` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `cool_region` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `cool_region` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `cool_region` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `cool_region` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `cool_region` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `cool_region` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `cool_region` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `cool_region` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `cool_region` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `cool_region` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `cool_region` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `cool_region` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `cool_region` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `cool_region` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `cool_region` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `cool_region` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `cool_region` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `cool_region` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `cool_region` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `cool_region` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `cool_region` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `cool_region` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `cool_region` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `cool_region` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `cool_region` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `cool_region` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `cool_region` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `cool_region` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `cool_region` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `cool_region` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `cool_region` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `cool_region` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `cool_region` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `cool_region` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `cool_region` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `cool_region` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `cool_region` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `cool_region` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `cool_region` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `cool_region` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `cool_region` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `cool_region` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `cool_region` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `cool_region` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `cool_region` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `cool_region` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `cool_region` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `cool_region` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `cool_region` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `cool_region` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `cool_region` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `cool_region` VALUES ('1800', '214', '长白', '3');
INSERT INTO `cool_region` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `cool_region` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `cool_region` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `cool_region` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `cool_region` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `cool_region` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `cool_region` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `cool_region` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `cool_region` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `cool_region` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `cool_region` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `cool_region` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `cool_region` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `cool_region` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `cool_region` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `cool_region` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `cool_region` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `cool_region` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `cool_region` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `cool_region` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `cool_region` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `cool_region` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `cool_region` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `cool_region` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `cool_region` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `cool_region` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `cool_region` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `cool_region` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `cool_region` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `cool_region` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `cool_region` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `cool_region` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `cool_region` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `cool_region` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `cool_region` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `cool_region` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `cool_region` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `cool_region` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `cool_region` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `cool_region` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `cool_region` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `cool_region` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `cool_region` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `cool_region` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `cool_region` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `cool_region` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `cool_region` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `cool_region` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `cool_region` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `cool_region` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `cool_region` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `cool_region` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `cool_region` VALUES ('1853', '221', '园区', '3');
INSERT INTO `cool_region` VALUES ('1854', '221', '新区', '3');
INSERT INTO `cool_region` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `cool_region` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `cool_region` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `cool_region` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `cool_region` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `cool_region` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `cool_region` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `cool_region` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `cool_region` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `cool_region` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `cool_region` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `cool_region` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `cool_region` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `cool_region` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `cool_region` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `cool_region` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `cool_region` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `cool_region` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `cool_region` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `cool_region` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `cool_region` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `cool_region` VALUES ('1876', '222', '新区', '3');
INSERT INTO `cool_region` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `cool_region` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `cool_region` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `cool_region` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `cool_region` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `cool_region` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `cool_region` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `cool_region` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `cool_region` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `cool_region` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `cool_region` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `cool_region` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `cool_region` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `cool_region` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `cool_region` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `cool_region` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `cool_region` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `cool_region` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `cool_region` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `cool_region` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `cool_region` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `cool_region` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `cool_region` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `cool_region` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `cool_region` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `cool_region` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `cool_region` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `cool_region` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `cool_region` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `cool_region` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `cool_region` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `cool_region` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `cool_region` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `cool_region` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `cool_region` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `cool_region` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `cool_region` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `cool_region` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `cool_region` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `cool_region` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `cool_region` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `cool_region` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `cool_region` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `cool_region` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `cool_region` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `cool_region` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `cool_region` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `cool_region` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `cool_region` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `cool_region` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `cool_region` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `cool_region` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `cool_region` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `cool_region` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `cool_region` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `cool_region` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `cool_region` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `cool_region` VALUES ('1934', '230', '城区', '3');
INSERT INTO `cool_region` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `cool_region` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `cool_region` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `cool_region` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `cool_region` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `cool_region` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `cool_region` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `cool_region` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `cool_region` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `cool_region` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `cool_region` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `cool_region` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `cool_region` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `cool_region` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `cool_region` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `cool_region` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `cool_region` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `cool_region` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `cool_region` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `cool_region` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `cool_region` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `cool_region` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `cool_region` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `cool_region` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `cool_region` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `cool_region` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `cool_region` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `cool_region` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `cool_region` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `cool_region` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `cool_region` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `cool_region` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `cool_region` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `cool_region` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `cool_region` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `cool_region` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `cool_region` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `cool_region` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `cool_region` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `cool_region` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `cool_region` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `cool_region` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `cool_region` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `cool_region` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `cool_region` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `cool_region` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `cool_region` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `cool_region` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `cool_region` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `cool_region` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `cool_region` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `cool_region` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `cool_region` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `cool_region` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `cool_region` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `cool_region` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `cool_region` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `cool_region` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `cool_region` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `cool_region` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `cool_region` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `cool_region` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `cool_region` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `cool_region` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `cool_region` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `cool_region` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `cool_region` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `cool_region` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `cool_region` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `cool_region` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `cool_region` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `cool_region` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `cool_region` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `cool_region` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `cool_region` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `cool_region` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `cool_region` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `cool_region` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `cool_region` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `cool_region` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `cool_region` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `cool_region` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `cool_region` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `cool_region` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `cool_region` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `cool_region` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `cool_region` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `cool_region` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `cool_region` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `cool_region` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `cool_region` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `cool_region` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `cool_region` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `cool_region` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `cool_region` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `cool_region` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `cool_region` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `cool_region` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `cool_region` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `cool_region` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `cool_region` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `cool_region` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `cool_region` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `cool_region` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `cool_region` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `cool_region` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `cool_region` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `cool_region` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `cool_region` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `cool_region` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `cool_region` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `cool_region` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `cool_region` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `cool_region` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `cool_region` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `cool_region` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `cool_region` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `cool_region` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `cool_region` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `cool_region` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `cool_region` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `cool_region` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `cool_region` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `cool_region` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `cool_region` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `cool_region` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `cool_region` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `cool_region` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `cool_region` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `cool_region` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `cool_region` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `cool_region` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `cool_region` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `cool_region` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `cool_region` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `cool_region` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `cool_region` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `cool_region` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `cool_region` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `cool_region` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `cool_region` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `cool_region` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `cool_region` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `cool_region` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `cool_region` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `cool_region` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `cool_region` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `cool_region` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `cool_region` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `cool_region` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `cool_region` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `cool_region` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `cool_region` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `cool_region` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `cool_region` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `cool_region` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `cool_region` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `cool_region` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `cool_region` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `cool_region` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `cool_region` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `cool_region` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `cool_region` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `cool_region` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `cool_region` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `cool_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `cool_region` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `cool_region` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `cool_region` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `cool_region` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `cool_region` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `cool_region` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `cool_region` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `cool_region` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `cool_region` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `cool_region` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `cool_region` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `cool_region` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `cool_region` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `cool_region` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `cool_region` VALUES ('2115', '250', '清原', '3');
INSERT INTO `cool_region` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `cool_region` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `cool_region` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `cool_region` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `cool_region` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `cool_region` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `cool_region` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `cool_region` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `cool_region` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `cool_region` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `cool_region` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `cool_region` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `cool_region` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `cool_region` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `cool_region` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `cool_region` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `cool_region` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `cool_region` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `cool_region` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `cool_region` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `cool_region` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `cool_region` VALUES ('2137', '253', '义县', '3');
INSERT INTO `cool_region` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `cool_region` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `cool_region` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `cool_region` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `cool_region` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `cool_region` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `cool_region` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `cool_region` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `cool_region` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `cool_region` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `cool_region` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `cool_region` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `cool_region` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `cool_region` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `cool_region` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `cool_region` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `cool_region` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `cool_region` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `cool_region` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `cool_region` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `cool_region` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `cool_region` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `cool_region` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `cool_region` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `cool_region` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `cool_region` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `cool_region` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `cool_region` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `cool_region` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `cool_region` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `cool_region` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `cool_region` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `cool_region` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `cool_region` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `cool_region` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `cool_region` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `cool_region` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `cool_region` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `cool_region` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `cool_region` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `cool_region` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `cool_region` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `cool_region` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `cool_region` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `cool_region` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `cool_region` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `cool_region` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `cool_region` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `cool_region` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `cool_region` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `cool_region` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `cool_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `cool_region` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `cool_region` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `cool_region` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `cool_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `cool_region` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `cool_region` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `cool_region` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `cool_region` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `cool_region` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `cool_region` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `cool_region` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `cool_region` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `cool_region` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `cool_region` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `cool_region` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `cool_region` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `cool_region` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `cool_region` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `cool_region` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `cool_region` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `cool_region` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `cool_region` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `cool_region` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `cool_region` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `cool_region` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `cool_region` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `cool_region` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `cool_region` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `cool_region` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `cool_region` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `cool_region` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `cool_region` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `cool_region` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `cool_region` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `cool_region` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `cool_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `cool_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `cool_region` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `cool_region` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `cool_region` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `cool_region` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `cool_region` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `cool_region` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `cool_region` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `cool_region` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `cool_region` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `cool_region` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `cool_region` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `cool_region` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `cool_region` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `cool_region` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `cool_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `cool_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `cool_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `cool_region` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `cool_region` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `cool_region` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `cool_region` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `cool_region` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `cool_region` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `cool_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `cool_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `cool_region` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `cool_region` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `cool_region` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `cool_region` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `cool_region` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `cool_region` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `cool_region` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `cool_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `cool_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `cool_region` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `cool_region` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `cool_region` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `cool_region` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `cool_region` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `cool_region` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `cool_region` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `cool_region` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `cool_region` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `cool_region` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `cool_region` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `cool_region` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `cool_region` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `cool_region` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `cool_region` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `cool_region` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `cool_region` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `cool_region` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `cool_region` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `cool_region` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `cool_region` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `cool_region` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `cool_region` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `cool_region` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `cool_region` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `cool_region` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `cool_region` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `cool_region` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `cool_region` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `cool_region` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `cool_region` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `cool_region` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `cool_region` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `cool_region` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `cool_region` VALUES ('2295', '275', '大通', '3');
INSERT INTO `cool_region` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `cool_region` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `cool_region` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `cool_region` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `cool_region` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `cool_region` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `cool_region` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `cool_region` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `cool_region` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `cool_region` VALUES ('2305', '277', '门源', '3');
INSERT INTO `cool_region` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `cool_region` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `cool_region` VALUES ('2308', '278', '民和', '3');
INSERT INTO `cool_region` VALUES ('2309', '278', '互助', '3');
INSERT INTO `cool_region` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `cool_region` VALUES ('2311', '278', '循化', '3');
INSERT INTO `cool_region` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `cool_region` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `cool_region` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `cool_region` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `cool_region` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `cool_region` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `cool_region` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `cool_region` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `cool_region` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `cool_region` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `cool_region` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `cool_region` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `cool_region` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `cool_region` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `cool_region` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `cool_region` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `cool_region` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `cool_region` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `cool_region` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `cool_region` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `cool_region` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `cool_region` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `cool_region` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `cool_region` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `cool_region` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `cool_region` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `cool_region` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `cool_region` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `cool_region` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `cool_region` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `cool_region` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `cool_region` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `cool_region` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `cool_region` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `cool_region` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `cool_region` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `cool_region` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `cool_region` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `cool_region` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `cool_region` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `cool_region` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `cool_region` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `cool_region` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `cool_region` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `cool_region` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `cool_region` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `cool_region` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `cool_region` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `cool_region` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `cool_region` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `cool_region` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `cool_region` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `cool_region` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `cool_region` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `cool_region` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `cool_region` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `cool_region` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `cool_region` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `cool_region` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `cool_region` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `cool_region` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `cool_region` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `cool_region` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `cool_region` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `cool_region` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `cool_region` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `cool_region` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `cool_region` VALUES ('2379', '288', '单县', '3');
INSERT INTO `cool_region` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `cool_region` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `cool_region` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `cool_region` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `cool_region` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `cool_region` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `cool_region` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `cool_region` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `cool_region` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `cool_region` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `cool_region` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `cool_region` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `cool_region` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `cool_region` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `cool_region` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `cool_region` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `cool_region` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `cool_region` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `cool_region` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `cool_region` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `cool_region` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `cool_region` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `cool_region` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `cool_region` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `cool_region` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `cool_region` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `cool_region` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `cool_region` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `cool_region` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `cool_region` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `cool_region` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `cool_region` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `cool_region` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `cool_region` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `cool_region` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `cool_region` VALUES ('2415', '292', '费县', '3');
INSERT INTO `cool_region` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `cool_region` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `cool_region` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `cool_region` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `cool_region` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `cool_region` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `cool_region` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `cool_region` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `cool_region` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `cool_region` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `cool_region` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `cool_region` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `cool_region` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `cool_region` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `cool_region` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `cool_region` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `cool_region` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `cool_region` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `cool_region` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `cool_region` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `cool_region` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `cool_region` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `cool_region` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `cool_region` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `cool_region` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `cool_region` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `cool_region` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `cool_region` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `cool_region` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `cool_region` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `cool_region` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `cool_region` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `cool_region` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `cool_region` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `cool_region` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `cool_region` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `cool_region` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `cool_region` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `cool_region` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `cool_region` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `cool_region` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `cool_region` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `cool_region` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `cool_region` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `cool_region` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `cool_region` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `cool_region` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `cool_region` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `cool_region` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `cool_region` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `cool_region` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `cool_region` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `cool_region` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `cool_region` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `cool_region` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `cool_region` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `cool_region` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `cool_region` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `cool_region` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `cool_region` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `cool_region` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `cool_region` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `cool_region` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `cool_region` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `cool_region` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `cool_region` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `cool_region` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `cool_region` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `cool_region` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `cool_region` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `cool_region` VALUES ('2486', '301', '城区', '3');
INSERT INTO `cool_region` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `cool_region` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `cool_region` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `cool_region` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `cool_region` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `cool_region` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `cool_region` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `cool_region` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `cool_region` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `cool_region` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `cool_region` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `cool_region` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `cool_region` VALUES ('2499', '302', '城区', '3');
INSERT INTO `cool_region` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `cool_region` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `cool_region` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `cool_region` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `cool_region` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `cool_region` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `cool_region` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `cool_region` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `cool_region` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `cool_region` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `cool_region` VALUES ('2510', '303', '城区', '3');
INSERT INTO `cool_region` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `cool_region` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `cool_region` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `cool_region` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `cool_region` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `cool_region` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `cool_region` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `cool_region` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `cool_region` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `cool_region` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `cool_region` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `cool_region` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `cool_region` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `cool_region` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `cool_region` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `cool_region` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `cool_region` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `cool_region` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `cool_region` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `cool_region` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `cool_region` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `cool_region` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `cool_region` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `cool_region` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `cool_region` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `cool_region` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `cool_region` VALUES ('2537', '305', '古县', '3');
INSERT INTO `cool_region` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `cool_region` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `cool_region` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `cool_region` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `cool_region` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `cool_region` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `cool_region` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `cool_region` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `cool_region` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `cool_region` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `cool_region` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `cool_region` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `cool_region` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `cool_region` VALUES ('2551', '306', '临县', '3');
INSERT INTO `cool_region` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `cool_region` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `cool_region` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `cool_region` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `cool_region` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `cool_region` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `cool_region` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `cool_region` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `cool_region` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `cool_region` VALUES ('2561', '307', '应县', '3');
INSERT INTO `cool_region` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `cool_region` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `cool_region` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `cool_region` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `cool_region` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `cool_region` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `cool_region` VALUES ('2568', '308', '代县', '3');
INSERT INTO `cool_region` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `cool_region` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `cool_region` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `cool_region` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `cool_region` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `cool_region` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `cool_region` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `cool_region` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `cool_region` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `cool_region` VALUES ('2578', '309', '城区', '3');
INSERT INTO `cool_region` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `cool_region` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `cool_region` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `cool_region` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `cool_region` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `cool_region` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `cool_region` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `cool_region` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `cool_region` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `cool_region` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `cool_region` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `cool_region` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `cool_region` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `cool_region` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `cool_region` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `cool_region` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `cool_region` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `cool_region` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `cool_region` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `cool_region` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `cool_region` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `cool_region` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `cool_region` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `cool_region` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `cool_region` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `cool_region` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `cool_region` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `cool_region` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `cool_region` VALUES ('2607', '311', '户县', '3');
INSERT INTO `cool_region` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `cool_region` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `cool_region` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `cool_region` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `cool_region` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `cool_region` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `cool_region` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `cool_region` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `cool_region` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `cool_region` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `cool_region` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `cool_region` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `cool_region` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `cool_region` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `cool_region` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `cool_region` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `cool_region` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `cool_region` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `cool_region` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `cool_region` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `cool_region` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `cool_region` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `cool_region` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `cool_region` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `cool_region` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `cool_region` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `cool_region` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `cool_region` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `cool_region` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `cool_region` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `cool_region` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `cool_region` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `cool_region` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `cool_region` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `cool_region` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `cool_region` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `cool_region` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `cool_region` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `cool_region` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `cool_region` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `cool_region` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `cool_region` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `cool_region` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `cool_region` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `cool_region` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `cool_region` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `cool_region` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `cool_region` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `cool_region` VALUES ('2656', '317', '华县', '3');
INSERT INTO `cool_region` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `cool_region` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `cool_region` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `cool_region` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `cool_region` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `cool_region` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `cool_region` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `cool_region` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `cool_region` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `cool_region` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `cool_region` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `cool_region` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `cool_region` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `cool_region` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `cool_region` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `cool_region` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `cool_region` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `cool_region` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `cool_region` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `cool_region` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `cool_region` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `cool_region` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `cool_region` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `cool_region` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `cool_region` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `cool_region` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `cool_region` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `cool_region` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `cool_region` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `cool_region` VALUES ('2686', '319', '富县', '3');
INSERT INTO `cool_region` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `cool_region` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `cool_region` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `cool_region` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `cool_region` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `cool_region` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `cool_region` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `cool_region` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `cool_region` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `cool_region` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `cool_region` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `cool_region` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `cool_region` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `cool_region` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `cool_region` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `cool_region` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `cool_region` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `cool_region` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `cool_region` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `cool_region` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `cool_region` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `cool_region` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `cool_region` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `cool_region` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `cool_region` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `cool_region` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `cool_region` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `cool_region` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `cool_region` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `cool_region` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `cool_region` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `cool_region` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `cool_region` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `cool_region` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `cool_region` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `cool_region` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `cool_region` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `cool_region` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `cool_region` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `cool_region` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `cool_region` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `cool_region` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `cool_region` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `cool_region` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `cool_region` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `cool_region` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `cool_region` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `cool_region` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `cool_region` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `cool_region` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `cool_region` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `cool_region` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `cool_region` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `cool_region` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `cool_region` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `cool_region` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `cool_region` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `cool_region` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `cool_region` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `cool_region` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `cool_region` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `cool_region` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `cool_region` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `cool_region` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `cool_region` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `cool_region` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `cool_region` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `cool_region` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `cool_region` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `cool_region` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `cool_region` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `cool_region` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `cool_region` VALUES ('2759', '323', '安县', '3');
INSERT INTO `cool_region` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `cool_region` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `cool_region` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `cool_region` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `cool_region` VALUES ('2764', '324', '理县', '3');
INSERT INTO `cool_region` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `cool_region` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `cool_region` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `cool_region` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `cool_region` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `cool_region` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `cool_region` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `cool_region` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `cool_region` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `cool_region` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `cool_region` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `cool_region` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `cool_region` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `cool_region` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `cool_region` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `cool_region` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `cool_region` VALUES ('2781', '326', '达县', '3');
INSERT INTO `cool_region` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `cool_region` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `cool_region` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `cool_region` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `cool_region` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `cool_region` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `cool_region` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `cool_region` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `cool_region` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `cool_region` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `cool_region` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `cool_region` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `cool_region` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `cool_region` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `cool_region` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `cool_region` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `cool_region` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `cool_region` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `cool_region` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `cool_region` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `cool_region` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `cool_region` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `cool_region` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `cool_region` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `cool_region` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `cool_region` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `cool_region` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `cool_region` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `cool_region` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `cool_region` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `cool_region` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `cool_region` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `cool_region` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `cool_region` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `cool_region` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `cool_region` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `cool_region` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `cool_region` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `cool_region` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `cool_region` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `cool_region` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `cool_region` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `cool_region` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `cool_region` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `cool_region` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `cool_region` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `cool_region` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `cool_region` VALUES ('2829', '331', '马边', '3');
INSERT INTO `cool_region` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `cool_region` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `cool_region` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `cool_region` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `cool_region` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `cool_region` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `cool_region` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `cool_region` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `cool_region` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `cool_region` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `cool_region` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `cool_region` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `cool_region` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `cool_region` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `cool_region` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `cool_region` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `cool_region` VALUES ('2846', '332', '木里', '3');
INSERT INTO `cool_region` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `cool_region` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `cool_region` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `cool_region` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `cool_region` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `cool_region` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `cool_region` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `cool_region` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `cool_region` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `cool_region` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `cool_region` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `cool_region` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `cool_region` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `cool_region` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `cool_region` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `cool_region` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `cool_region` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `cool_region` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `cool_region` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `cool_region` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `cool_region` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `cool_region` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `cool_region` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `cool_region` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `cool_region` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `cool_region` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `cool_region` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `cool_region` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `cool_region` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `cool_region` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `cool_region` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `cool_region` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `cool_region` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `cool_region` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `cool_region` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `cool_region` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `cool_region` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `cool_region` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `cool_region` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `cool_region` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `cool_region` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `cool_region` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `cool_region` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `cool_region` VALUES ('2890', '339', '高县', '3');
INSERT INTO `cool_region` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `cool_region` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `cool_region` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `cool_region` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `cool_region` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `cool_region` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `cool_region` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `cool_region` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `cool_region` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `cool_region` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `cool_region` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `cool_region` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `cool_region` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `cool_region` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `cool_region` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `cool_region` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `cool_region` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `cool_region` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `cool_region` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `cool_region` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `cool_region` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `cool_region` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `cool_region` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `cool_region` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `cool_region` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `cool_region` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `cool_region` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `cool_region` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `cool_region` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `cool_region` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `cool_region` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `cool_region` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `cool_region` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `cool_region` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `cool_region` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `cool_region` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `cool_region` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `cool_region` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `cool_region` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `cool_region` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `cool_region` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `cool_region` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `cool_region` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `cool_region` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `cool_region` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `cool_region` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `cool_region` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `cool_region` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `cool_region` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `cool_region` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `cool_region` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `cool_region` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `cool_region` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `cool_region` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `cool_region` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `cool_region` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `cool_region` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `cool_region` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `cool_region` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `cool_region` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `cool_region` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `cool_region` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `cool_region` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `cool_region` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `cool_region` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `cool_region` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `cool_region` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `cool_region` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `cool_region` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `cool_region` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `cool_region` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `cool_region` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `cool_region` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `cool_region` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `cool_region` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `cool_region` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `cool_region` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `cool_region` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `cool_region` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `cool_region` VALUES ('2970', '348', '索县', '3');
INSERT INTO `cool_region` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `cool_region` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `cool_region` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `cool_region` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `cool_region` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `cool_region` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `cool_region` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `cool_region` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `cool_region` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `cool_region` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `cool_region` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `cool_region` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `cool_region` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `cool_region` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `cool_region` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `cool_region` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `cool_region` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `cool_region` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `cool_region` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `cool_region` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `cool_region` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `cool_region` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `cool_region` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `cool_region` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `cool_region` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `cool_region` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `cool_region` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `cool_region` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `cool_region` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `cool_region` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `cool_region` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `cool_region` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `cool_region` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `cool_region` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `cool_region` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `cool_region` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `cool_region` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `cool_region` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `cool_region` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `cool_region` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `cool_region` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `cool_region` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `cool_region` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `cool_region` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `cool_region` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `cool_region` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `cool_region` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `cool_region` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `cool_region` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `cool_region` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `cool_region` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `cool_region` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `cool_region` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `cool_region` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `cool_region` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `cool_region` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `cool_region` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `cool_region` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `cool_region` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `cool_region` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `cool_region` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `cool_region` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `cool_region` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `cool_region` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `cool_region` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `cool_region` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `cool_region` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `cool_region` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `cool_region` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `cool_region` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `cool_region` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `cool_region` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `cool_region` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `cool_region` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `cool_region` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `cool_region` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `cool_region` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `cool_region` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `cool_region` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `cool_region` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `cool_region` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `cool_region` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `cool_region` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `cool_region` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `cool_region` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `cool_region` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `cool_region` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `cool_region` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `cool_region` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `cool_region` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `cool_region` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `cool_region` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `cool_region` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `cool_region` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `cool_region` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `cool_region` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `cool_region` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `cool_region` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `cool_region` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `cool_region` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `cool_region` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `cool_region` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `cool_region` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `cool_region` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `cool_region` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `cool_region` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `cool_region` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `cool_region` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `cool_region` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `cool_region` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `cool_region` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `cool_region` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `cool_region` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `cool_region` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `cool_region` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `cool_region` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `cool_region` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `cool_region` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `cool_region` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `cool_region` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `cool_region` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `cool_region` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `cool_region` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `cool_region` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `cool_region` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `cool_region` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `cool_region` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `cool_region` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `cool_region` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `cool_region` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `cool_region` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `cool_region` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `cool_region` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `cool_region` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `cool_region` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `cool_region` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `cool_region` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `cool_region` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `cool_region` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `cool_region` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `cool_region` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `cool_region` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `cool_region` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `cool_region` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `cool_region` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `cool_region` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `cool_region` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `cool_region` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `cool_region` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `cool_region` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `cool_region` VALUES ('3121', '369', '景东', '3');
INSERT INTO `cool_region` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `cool_region` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `cool_region` VALUES ('3124', '369', '江城', '3');
INSERT INTO `cool_region` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `cool_region` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `cool_region` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `cool_region` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `cool_region` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `cool_region` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `cool_region` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `cool_region` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `cool_region` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `cool_region` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `cool_region` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `cool_region` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `cool_region` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `cool_region` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `cool_region` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `cool_region` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `cool_region` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `cool_region` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `cool_region` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `cool_region` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `cool_region` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `cool_region` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `cool_region` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `cool_region` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `cool_region` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `cool_region` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `cool_region` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `cool_region` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `cool_region` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `cool_region` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `cool_region` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `cool_region` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `cool_region` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `cool_region` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `cool_region` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `cool_region` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `cool_region` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `cool_region` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `cool_region` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `cool_region` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `cool_region` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `cool_region` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `cool_region` VALUES ('3167', '375', '维西', '3');
INSERT INTO `cool_region` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `cool_region` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `cool_region` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `cool_region` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `cool_region` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `cool_region` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `cool_region` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `cool_region` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `cool_region` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `cool_region` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `cool_region` VALUES ('3178', '376', '金平', '3');
INSERT INTO `cool_region` VALUES ('3179', '376', '河口', '3');
INSERT INTO `cool_region` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `cool_region` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `cool_region` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `cool_region` VALUES ('3183', '377', '云县', '3');
INSERT INTO `cool_region` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `cool_region` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `cool_region` VALUES ('3186', '377', '双江', '3');
INSERT INTO `cool_region` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `cool_region` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `cool_region` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `cool_region` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `cool_region` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `cool_region` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `cool_region` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `cool_region` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `cool_region` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `cool_region` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `cool_region` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `cool_region` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `cool_region` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `cool_region` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `cool_region` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `cool_region` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `cool_region` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `cool_region` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `cool_region` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `cool_region` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `cool_region` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `cool_region` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `cool_region` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `cool_region` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `cool_region` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `cool_region` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `cool_region` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `cool_region` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `cool_region` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `cool_region` VALUES ('3216', '381', '新平', '3');
INSERT INTO `cool_region` VALUES ('3217', '381', '元江', '3');
INSERT INTO `cool_region` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `cool_region` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `cool_region` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `cool_region` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `cool_region` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `cool_region` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `cool_region` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `cool_region` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `cool_region` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `cool_region` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `cool_region` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `cool_region` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `cool_region` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `cool_region` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `cool_region` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `cool_region` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `cool_region` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `cool_region` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `cool_region` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `cool_region` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `cool_region` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `cool_region` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `cool_region` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `cool_region` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `cool_region` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `cool_region` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `cool_region` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `cool_region` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `cool_region` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `cool_region` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `cool_region` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `cool_region` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `cool_region` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `cool_region` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `cool_region` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `cool_region` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `cool_region` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `cool_region` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `cool_region` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `cool_region` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `cool_region` VALUES ('3258', '386', '市区', '3');
INSERT INTO `cool_region` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `cool_region` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `cool_region` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `cool_region` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `cool_region` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `cool_region` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `cool_region` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `cool_region` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `cool_region` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `cool_region` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `cool_region` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `cool_region` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `cool_region` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `cool_region` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `cool_region` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `cool_region` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `cool_region` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `cool_region` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `cool_region` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `cool_region` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `cool_region` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `cool_region` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `cool_region` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `cool_region` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `cool_region` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `cool_region` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `cool_region` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `cool_region` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `cool_region` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `cool_region` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `cool_region` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `cool_region` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `cool_region` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `cool_region` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `cool_region` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `cool_region` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `cool_region` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `cool_region` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `cool_region` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `cool_region` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `cool_region` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `cool_region` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `cool_region` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `cool_region` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `cool_region` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `cool_region` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `cool_region` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `cool_region` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `cool_region` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `cool_region` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `cool_region` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `cool_region` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `cool_region` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `cool_region` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `cool_region` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `cool_region` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `cool_region` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `cool_region` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `cool_region` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `cool_region` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `cool_region` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `cool_region` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `cool_region` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `cool_region` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `cool_region` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `cool_region` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `cool_region` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `cool_region` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `cool_region` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `cool_region` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `cool_region` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `cool_region` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `cool_region` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `cool_region` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `cool_region` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `cool_region` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `cool_region` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `cool_region` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `cool_region` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `cool_region` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `cool_region` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `cool_region` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `cool_region` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `cool_region` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `cool_region` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `cool_region` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `cool_region` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `cool_region` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `cool_region` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `cool_region` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `cool_region` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `cool_region` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `cool_region` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `cool_region` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `cool_region` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `cool_region` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `cool_region` VALUES ('3355', '394', '开县', '3');
INSERT INTO `cool_region` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `cool_region` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `cool_region` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `cool_region` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `cool_region` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `cool_region` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `cool_region` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `cool_region` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `cool_region` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `cool_region` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `cool_region` VALUES ('3366', '395', '东区', '3');
INSERT INTO `cool_region` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `cool_region` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `cool_region` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `cool_region` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `cool_region` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `cool_region` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `cool_region` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `cool_region` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `cool_region` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `cool_region` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `cool_region` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `cool_region` VALUES ('3378', '395', '北区', '3');
INSERT INTO `cool_region` VALUES ('3379', '395', '南区', '3');
INSERT INTO `cool_region` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `cool_region` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `cool_region` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `cool_region` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `cool_region` VALUES ('3384', '397', '台北', '3');
INSERT INTO `cool_region` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `cool_region` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `cool_region` VALUES ('3387', '397', '台中', '3');
INSERT INTO `cool_region` VALUES ('3388', '397', '台南', '3');
INSERT INTO `cool_region` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `cool_region` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `cool_region` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `cool_region` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `cool_region` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `cool_region` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `cool_region` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `cool_region` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `cool_region` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `cool_region` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `cool_region` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `cool_region` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `cool_region` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `cool_region` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `cool_region` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `cool_region` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `cool_region` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `cool_region` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `cool_region` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `cool_region` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `cool_region` VALUES ('3409', '0', '国外', '0');

-- ----------------------------
-- Table structure for cool_role
-- ----------------------------
DROP TABLE IF EXISTS `cool_role`;
CREATE TABLE `cool_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_role
-- ----------------------------
INSERT INTO `cool_role` VALUES ('1', '超级管理员', '1', '超级管理', '0', '0');
INSERT INTO `cool_role` VALUES ('2', '普通管理员', '1', '普通管理员', '0', '0');
INSERT INTO `cool_role` VALUES ('3', '注册用户', '1', '注册用户', '0', '0');
INSERT INTO `cool_role` VALUES ('4', '游客', '1', '游客', '0', '0');

-- ----------------------------
-- Table structure for cool_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cool_role_user`;
CREATE TABLE `cool_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` char(32) DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cool_sys
-- ----------------------------
DROP TABLE IF EXISTS `cool_sys`;
CREATE TABLE `cool_sys` (
  `sys_id` int(36) unsigned NOT NULL,
  `sys_name` char(36) NOT NULL DEFAULT '',
  `sys_url` varchar(36) NOT NULL DEFAULT '',
  `sys_title` varchar(200) NOT NULL,
  `sys_key` varchar(200) NOT NULL,
  `sys_des` varchar(200) NOT NULL,
  `email_open` tinyint(2) NOT NULL COMMENT '邮箱发送是否开启',
  `email_name` varchar(50) NOT NULL COMMENT '发送邮箱账号',
  `email_pwd` varchar(50) NOT NULL COMMENT '发送邮箱密码',
  `email_smtpname` varchar(50) NOT NULL COMMENT 'smtp服务器账号',
  `email_emname` varchar(30) NOT NULL COMMENT '邮件名',
  `email_rename` varchar(30) NOT NULL COMMENT '发件人姓名',
  `wesys_name` varchar(30) NOT NULL COMMENT '微信名称',
  `wesys_number` varchar(30) NOT NULL COMMENT '微信号',
  `wesys_id` varchar(20) NOT NULL COMMENT '微信原始ID',
  `wesys_type` tinyint(2) NOT NULL COMMENT '1=订阅号 2=服务号',
  `wesys_appid` varchar(30) NOT NULL COMMENT '微信appid',
  `wesys_appsecret` varchar(50) NOT NULL COMMENT '微信AppSecret',
  `wesys_token` varchar(50) NOT NULL COMMENT '微信token',
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  PRIMARY KEY (`sys_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_sys
-- ----------------------------
INSERT INTO `cool_sys` VALUES ('1', 'CLTLAYUI', 'http://www.cltphp.com/', 'CLTPHP后台管理系统', 'CLTPHP,CLTPHP后台管理系统，thinkphp,thinkphp后台管理系统', 'CLTPHP后台管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。', '1', '876902658@qq.com', 'maggie198586', 'smtp.qq.com', '876902658', '网站管理员', 'chichu', 'chichu12345', '12231231231231111', '1', '12312312312', '123123123123123', 'weixin', '陕ICP备15008093号', '2015-2020', '南京市白下区虎踞南路40-8号1-4楼', '025-86530015', '1109305987@qq.com');

-- ----------------------------
-- Table structure for cool_system
-- ----------------------------
DROP TABLE IF EXISTS `cool_system`;
CREATE TABLE `cool_system` (
  `id` int(36) unsigned NOT NULL,
  `name` char(36) NOT NULL DEFAULT '',
  `url` varchar(36) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL,
  `key` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `bscads` varchar(255) DEFAULT NULL,
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  `logo` varchar(120) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_system
-- ----------------------------
INSERT INTO `cool_system` VALUES ('1', '亚布力广电国际酒店', 'http://api.hrbkcwl.com', '亚布力广电国际酒店', '亚布力广电国际酒店', '亚布力广电国际酒店', '黑ICP备17007278号-1', '2017', '黑龙江省哈尔滨市道里区森林街68号705室', '黑龙江省哈尔滨市亚布力滑雪旅游度假区', '0451-5398 9898', '1003418012@qq.com', '/uploads/20180529/265b92515c0650e0876cbeaadb802c1f.png');

-- ----------------------------
-- Table structure for cool_users
-- ----------------------------
DROP TABLE IF EXISTS `cool_users`;
CREATE TABLE `cool_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `paypwd` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 男 0 女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `oauth` varchar(10) DEFAULT '' COMMENT '第三方来源 wx weibo alipay',
  `openid` varchar(100) DEFAULT NULL COMMENT '第三方唯一标示',
  `unionid` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `email_validated` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证电子邮箱',
  `username` varchar(50) DEFAULT NULL COMMENT '第三方返回昵称',
  `level` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `token` varchar(64) DEFAULT '' COMMENT '用于app 授权类似于session_id',
  `sign` varchar(255) DEFAULT '' COMMENT '签名',
  `status` varchar(20) DEFAULT 'hide' COMMENT '登录状态',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2596 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_users
-- ----------------------------

-- ----------------------------
-- Table structure for cool_user_level
-- ----------------------------
DROP TABLE IF EXISTS `cool_user_level`;
CREATE TABLE `cool_user_level` (
  `level_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `sort` int(3) DEFAULT '0' COMMENT '排序',
  `bomlimit` int(5) DEFAULT '0' COMMENT '积分下限',
  `toplimit` int(5) DEFAULT '0' COMMENT '积分上限',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_user_level
-- ----------------------------
INSERT INTO `cool_user_level` VALUES ('1', '注册会员', '1', '0', '500');
INSERT INTO `cool_user_level` VALUES ('2', '铜牌会员', '2', '501', '1000');
INSERT INTO `cool_user_level` VALUES ('3', '白银会员', '3', '1001', '2000');
INSERT INTO `cool_user_level` VALUES ('4', '黄金会员', '4', '2001', '3500');
INSERT INTO `cool_user_level` VALUES ('5', '钻石会员', '5', '3501', '5500');
INSERT INTO `cool_user_level` VALUES ('6', '超级VIP', '6', '5500', '99999');

-- ----------------------------
-- Table structure for cool_video
-- ----------------------------
DROP TABLE IF EXISTS `cool_video`;
CREATE TABLE `cool_video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `xwjsp` varchar(80) NOT NULL DEFAULT '',
  `videourl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_video
-- ----------------------------
INSERT INTO `cool_video` VALUES ('1', '47', '1', 'admin', '介绍视频', 'color:;font-weight:normal;', '', '', '', '', '0', '0', '1', '0', '', '0', '0', '0', '1527512235', '0', '', '11_0.mp4');

-- ----------------------------
-- Table structure for cool_visit_day
-- ----------------------------
DROP TABLE IF EXISTS `cool_visit_day`;
CREATE TABLE `cool_visit_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `acctime` int(10) NOT NULL,
  `visitpage` varchar(255) NOT NULL,
  `antepage` varchar(255) NOT NULL,
  `columnid` int(11) NOT NULL DEFAULT '0',
  `listid` int(11) NOT NULL DEFAULT '0',
  `browser` varchar(255) NOT NULL,
  `dizhi` varchar(255) NOT NULL DEFAULT '',
  `network` varchar(100) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `keystr` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3268 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_visit_day
-- ----------------------------
INSERT INTO `cool_visit_day` VALUES ('2146', '123.165.251.30', '1522854628', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2145', '123.165.251.30', '1522854619', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2144', '123.165.251.30', '1522854612', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2143', '123.165.251.30', '1522854611', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2142', '123.165.251.30', '1522854602', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2141', '123.165.251.30', '1522854599', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2140', '123.165.251.30', '1522854598', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2139', '123.165.251.30', '1522854596', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2138', '123.165.251.30', '1522854594', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2137', '123.165.251.30', '1522854592', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2136', '123.165.251.30', '1522854589', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1519', '111.206.198.123', '1519787355', 'http://www.hrbkcwl.com/products_9.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1517', '220.181.108.182', '1519755567', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1518', '111.206.221.33', '1519780753', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2135', '123.165.251.30', '1522854420', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2134', '123.165.251.30', '1522854418', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2133', '123.165.251.30', '1522854416', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2132', '123.165.251.30', '1522854415', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2131', '123.165.251.30', '1522854399', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2130', '123.165.251.30', '1522854395', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2129', '123.165.251.30', '1522854394', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2128', '123.165.251.30', '1522853820', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2127', '123.165.251.30', '1522853817', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2126', '123.165.251.30', '1522853814', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2125', '123.165.251.30', '1522853812', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2124', '123.165.251.30', '1522853810', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2123', '123.165.251.30', '1522853807', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2122', '123.165.251.30', '1522853803', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2121', '123.165.251.30', '1522853784', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2120', '123.165.251.30', '1522853779', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2119', '123.165.251.30', '1522853778', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2118', '123.165.251.30', '1522853776', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2117', '123.165.251.30', '1522853774', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2116', '123.165.251.30', '1522853771', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2115', '123.165.251.30', '1522853760', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2114', '123.165.251.30', '1522853751', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2113', '123.165.251.30', '1522853747', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2112', '123.165.251.30', '1522853740', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2111', '123.165.251.30', '1522853724', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2110', '123.165.251.30', '1522853723', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2109', '123.165.251.30', '1522853721', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2108', '123.165.251.30', '1522853715', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2107', '123.165.251.30', '1522853709', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2106', '123.165.251.30', '1522853705', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2105', '123.165.251.30', '1522853700', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2104', '123.165.251.30', '1522853651', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2103', '123.165.251.30', '1522853644', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2102', '123.165.251.30', '1522853641', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2101', '123.165.251.30', '1522853639', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2100', '123.165.251.30', '1522853638', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2099', '123.165.251.30', '1522853621', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2098', '123.165.251.30', '1522853611', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2097', '123.165.251.30', '1522853609', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2096', '123.165.251.30', '1522853608', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2095', '123.165.251.30', '1522853603', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2094', '123.165.251.30', '1522853601', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2093', '123.165.251.30', '1522853591', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2092', '123.165.251.30', '1522853520', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2091', '123.165.251.30', '1522853471', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2090', '123.165.251.30', '1522853466', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2089', '123.165.251.30', '1522853464', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2088', '123.165.251.30', '1522853462', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2087', '123.165.251.30', '1522853458', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2086', '123.165.251.30', '1522853457', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2085', '123.165.251.30', '1522853456', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2084', '123.165.251.30', '1522853452', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2083', '123.165.251.30', '1522853431', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2082', '123.165.251.30', '1522853403', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2081', '123.165.251.30', '1522853400', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2080', '123.165.251.30', '1522853372', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2079', '123.165.251.30', '1522853336', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2078', '123.165.251.30', '1522851390', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2077', '123.165.251.30', '1522851310', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2076', '123.165.251.30', '1522851308', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2075', '123.165.251.30', '1522851305', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2074', '123.165.251.30', '1522851302', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2073', '123.165.251.30', '1522851299', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2072', '123.165.251.30', '1522851295', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2071', '123.165.251.30', '1522851260', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2070', '123.165.251.30', '1522851243', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2069', '123.165.251.30', '1522851234', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2068', '123.165.251.30', '1522851232', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2067', '123.165.251.30', '1522851230', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2066', '123.165.251.30', '1522851229', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2065', '123.165.251.30', '1522851227', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2063', '123.165.251.30', '1522851162', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2064', '123.165.251.30', '1522851224', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2062', '123.165.251.30', '1522851157', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2061', '123.165.251.30', '1522851150', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2060', '123.165.251.30', '1522851148', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2059', '123.165.251.30', '1522851140', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2058', '123.165.251.30', '1522851137', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2057', '123.165.251.30', '1522851128', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2056', '123.165.251.30', '1522851122', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2055', '123.165.251.30', '1522851116', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2054', '123.165.251.30', '1522851038', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2053', '123.165.251.30', '1522850944', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2052', '123.165.251.30', '1522850870', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2051', '123.165.251.30', '1522850814', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2050', '123.165.251.30', '1522849412', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2049', '123.165.251.30', '1522849400', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2048', '123.165.251.30', '1522847531', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2047', '123.165.251.30', '1522847525', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2046', '123.165.251.30', '1522847513', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2045', '123.165.251.30', '1522847510', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2044', '123.165.251.30', '1522847506', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2043', '123.165.251.30', '1522847501', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2042', '123.165.251.30', '1522847496', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2041', '123.165.251.30', '1522847474', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2040', '123.165.251.30', '1522847420', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2039', '123.165.251.30', '1522847414', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2038', '123.165.251.30', '1522847408', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2037', '123.165.251.30', '1522847241', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2036', '123.165.251.30', '1522847237', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2035', '123.165.251.30', '1522847232', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2034', '123.165.251.30', '1522847229', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2033', '123.165.251.30', '1522847197', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1524', '111.206.221.37', '1519894971', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1523', '182.77.16.39', '1519882122', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1522', '111.206.198.55', '1519867004', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1520', '183.36.114.111', '1519840058', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'b357e09a09706b8c78c6b4ecd3ed3e99');
INSERT INTO `cool_visit_day` VALUES ('1521', '220.181.108.182', '1519860696', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2032', '123.165.251.30', '1522847193', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2031', '123.165.251.30', '1522847191', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2030', '123.165.251.30', '1522847138', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2029', '123.165.251.30', '1522847132', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2028', '123.165.251.30', '1522847131', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2027', '123.165.251.30', '1522847105', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1529', '82.36.205.23', '1519982143', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1527', '220.181.108.123', '1519933508', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1528', '5.92.148.118', '1519975560', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'a917b4470492df465fe58621c7c75a9a');
INSERT INTO `cool_visit_day` VALUES ('1525', '93.157.199.222', '1519926442', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '836d1bdf7203d84be0043f166b06575c');
INSERT INTO `cool_visit_day` VALUES ('1526', '60.54.96.205', '1519929775', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', 'de6d637d0bd368d46f53febc11fc2413');
INSERT INTO `cool_visit_day` VALUES ('2026', '123.165.251.30', '1522847101', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2025', '123.165.251.30', '1522847098', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2024', '123.165.251.30', '1522847002', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2023', '123.165.251.30', '1522846947', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2022', '123.165.251.30', '1522846704', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2021', '123.165.251.30', '1522846692', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1530', '223.206.119.200', '1520056896', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('2020', '123.165.251.30', '1522846590', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2019', '123.165.251.30', '1522846309', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1538', '81.191.178.54', '1520177190', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1537', '186.233.179.7', '1520127786', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1536', '111.206.198.54', '1520120365', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1535', '111.206.198.109', '1520114385', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1533', '111.206.198.69', '1520099211', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1534', '77.28.145.232', '1520102840', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1ef364dd2efc2af45347342e2509c337');
INSERT INTO `cool_visit_day` VALUES ('1532', '123.123.68.218', '1520098840', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'd7bf113c2c5dcdfe9d52bc7237ef5775');
INSERT INTO `cool_visit_day` VALUES ('1531', '123.123.68.218', '1520098835', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=DaqgqhtwbKK-p1y-b6BoKF_aZLa7ZN7NqyX203B8rdlPBTBQZFNfz8m3CYRQfteB', '0', '0', 'Chrome', '', '', '', 'd7bf113c2c5dcdfe9d52bc7237ef5775');
INSERT INTO `cool_visit_day` VALUES ('1551', '39.190.24.9', '1520342069', 'http://www.hrbkcwl.com/', 'http://www.sogou.com/web?query=site:tutuaiai.com  百度权重_百度权重提升_联系Q:1278774066_kyehsdl.com', '0', '0', 'MSIE', '', '', '', '1c33c0b9a8cef84e1b7ebff82f10c5af');
INSERT INTO `cool_visit_day` VALUES ('1549', '59.45.223.108', '1520313373', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1550', '122.114.191.64', '1520313673', 'http://www.hrbkcwl.com/', 'http://www.sogou.com/web?query=site:tutuaiai.com 百度权重_百度权重提升_联系Q:1278774066_kyehsdl.com', '0', '0', 'Other', '', '', '', '7c3855d9d4997dd54ad0901b167ef8ba');
INSERT INTO `cool_visit_day` VALUES ('1539', '123.165.241.132', '1520218005', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '');
INSERT INTO `cool_visit_day` VALUES ('1548', '59.45.223.108', '1520313339', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1547', '59.45.223.108', '1520311910', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1546', '59.45.223.108', '1520311811', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1545', '59.45.223.108', '1520311762', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1544', '59.45.223.108', '1520311735', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1543', '59.45.223.108', '1520311715', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1542', '59.45.223.108', '1520311714', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '03ecc094b551440b7f0a9d68f0119f0c');
INSERT INTO `cool_visit_day` VALUES ('1541', '120.210.207.162', '1520280755', 'http://www.hrbkcwl.com/blogInfo_8_17.html', 'http://www.hrbkcwl.com/', '0', '0', 'MSIE', '', '', '', 'a59ea7dec8fbd9311087471c9e76f499');
INSERT INTO `cool_visit_day` VALUES ('1540', '120.210.207.162', '1520280718', 'http://www.hrbkcwl.com/', 'http://www.sogou.com/web?query=site:tutuaiai.com 百度权重_百度权重提升_联系Q:1278774066_kyehsdl.com', '0', '0', 'MSIE', '', '', '', 'a59ea7dec8fbd9311087471c9e76f499');
INSERT INTO `cool_visit_day` VALUES ('2018', '123.165.251.30', '1522846096', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2017', '123.165.251.30', '1522846093', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2016', '123.165.251.30', '1522846090', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2015', '123.165.251.30', '1522846083', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2014', '123.165.251.30', '1522846029', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2013', '101.199.108.59', '1522845891', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2012', '123.165.251.30', '1522845384', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2011', '123.165.251.30', '1522845381', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2010', '123.165.251.30', '1522845212', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2009', '123.165.251.30', '1522844666', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2008', '123.165.251.30', '1522844659', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2007', '123.165.251.30', '1522844391', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_19_27.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2006', '123.165.251.30', '1522844326', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2005', '123.165.251.30', '1522844299', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2004', '123.165.251.30', '1522844247', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2003', '123.165.251.30', '1522844241', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2002', '123.165.251.30', '1522843607', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2001', '123.165.251.30', '1522843586', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2000', '123.165.251.30', '1522843583', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1999', '123.165.251.30', '1522843578', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1998', '123.165.251.30', '1522843567', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1997', '123.165.251.30', '1522843517', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1996', '123.165.251.30', '1522843393', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1995', '171.13.14.145', '1522843019', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1994', '123.165.251.30', '1522841445', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1993', '123.165.251.30', '1522841428', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1992', '123.165.251.30', '1522841420', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1991', '123.165.251.30', '1522841413', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1990', '123.165.251.30', '1522841403', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1989', '123.165.251.30', '1522841378', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1988', '123.165.251.30', '1522841350', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_12_23.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1987', '123.165.251.30', '1522839822', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_16_23.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1986', '123.165.251.30', '1522839706', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1985', '123.165.251.30', '1522839704', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1984', '123.165.251.30', '1522839621', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1983', '123.165.251.30', '1522839615', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1588', '111.206.198.84', '1520604667', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1587', '218.8.75.107', '1520578791', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1586', '111.206.198.26', '1520577302', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1585', '218.8.75.107', '1520576882', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1584', '1.189.179.231', '1520574826', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1583', '1.189.179.231', '1520565777', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1582', '1.189.179.231', '1520565757', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_11_23.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1581', '1.189.179.231', '1520565674', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_11_23.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1580', '1.189.179.231', '1520565616', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_11_23.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1579', '1.189.179.231', '1520564984', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_11_23.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1569', '113.4.25.48', '1520499418', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1568', '113.4.25.48', '1520499367', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1567', '222.171.139.210', '1520493418', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'MSIE', '', '', '', 'c4af50b300a5e3f3cd175e9782ab4215');
INSERT INTO `cool_visit_day` VALUES ('1566', '222.171.139.210', '1520493162', 'http://www.hrbkcwl.com/', '', '0', '0', 'MSIE', '', '', '', 'c4af50b300a5e3f3cd175e9782ab4215');
INSERT INTO `cool_visit_day` VALUES ('1555', '183.36.114.159', '1520414642', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'b357e09a09706b8c78c6b4ecd3ed3e99');
INSERT INTO `cool_visit_day` VALUES ('1553', '113.0.200.197', '1520410359', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1554', '113.0.200.197', '1520410401', 'http://www.hrbkcwl.com/blog_21.html', 'https://www.baidu.com/s?wd=site:www.hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1552', '122.159.235.252', '1520384510', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1565', '42.102.156.149', '1520492584', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1564', '42.102.156.149', '1520492532', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1563', '42.102.156.149', '1520492170', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1562', '42.102.156.149', '1520492166', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1561', '42.102.156.149', '1520492139', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1560', '42.102.156.149', '1520491827', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/#.', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1559', '42.102.156.149', '1520491808', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1558', '42.102.156.149', '1520491665', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '1b08dd48527afb0cf3d5d17a3c80f9ad');
INSERT INTO `cool_visit_day` VALUES ('1557', '101.199.112.49', '1520469814', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1556', '101.199.108.52', '1520469810', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1578', '1.189.179.231', '1520564794', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'cd19b68c0a13d043ad1b7a895563450b');
INSERT INTO `cool_visit_day` VALUES ('1577', '1.189.179.231', '1520564729', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1576', '1.189.179.231', '1520564721', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1575', '1.189.179.231', '1520563837', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1574', '1.189.179.231', '1520563827', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1573', '1.189.179.231', '1520563795', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1572', '1.189.179.231', '1520563787', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1570', '1.189.179.231', '1520563727', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1571', '1.189.179.231', '1520563774', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1982', '123.165.251.30', '1522836446', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1981', '123.165.251.30', '1522836444', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1980', '123.165.251.30', '1522833699', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1979', '123.165.251.30', '1522833512', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1978', '123.165.251.30', '1522833510', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1977', '123.165.251.30', '1522833455', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1976', '123.165.251.30', '1522833280', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1975', '123.165.251.30', '1522833278', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1974', '123.165.251.30', '1522833273', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1973', '123.165.251.30', '1522833262', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1972', '123.165.251.30', '1522833193', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1971', '123.165.251.30', '1522831172', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1970', '123.165.251.30', '1522831104', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1969', '123.165.251.30', '1522830928', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_17_23.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1968', '123.165.251.30', '1522830797', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1967', '123.165.251.30', '1522830776', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1966', '123.165.251.30', '1522830090', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1965', '123.165.251.30', '1522830088', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1964', '123.165.251.30', '1522830086', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1963', '123.165.251.30', '1522830080', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1962', '123.165.251.30', '1522830079', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1592', '112.103.210.232', '1520661279', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1590', '112.103.210.232', '1520650482', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1591', '112.103.210.232', '1520650537', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1589', '106.120.162.110', '1520618384', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '87889e47c485dda9b9075d0f27311236');
INSERT INTO `cool_visit_day` VALUES ('1961', '123.165.251.30', '1522830071', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1960', '123.165.251.30', '1522830057', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1959', '123.165.251.30', '1522830053', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1958', '123.165.251.30', '1522830052', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1957', '123.165.251.30', '1522830051', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1956', '123.165.251.30', '1522830047', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1955', '123.165.251.30', '1522830021', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1598', '111.206.198.37', '1520749408', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1597', '111.41.173.43', '1520733136', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('1596', '111.41.173.43', '1520733122', 'http://www.hrbkcwl.com/about_2.html', 'https://www.baidu.com/link?url=rXKyVZqVv0MSOjBNTo5pCQRO8eKXIgqraK53vHKDQIYZf18_WFla69btQv18LCp7', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('1595', '111.206.198.90', '1520733106', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1594', '180.149.130.153', '1520731240', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', '88edbdcbef97a94dace210d7add06988');
INSERT INTO `cool_visit_day` VALUES ('1593', '75.51.240.193', '1520719641', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'ab4cad77c906c7fa003b9757970e93b1');
INSERT INTO `cool_visit_day` VALUES ('1954', '123.165.251.30', '1522830019', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1953', '123.165.251.30', '1522830015', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1952', '123.165.251.30', '1522830014', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1951', '123.165.251.30', '1522830012', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1950', '123.165.251.30', '1522830010', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1949', '123.165.251.30', '1522830006', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1618', '14.152.64.154', '1520844540', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'abce981242551cec03d4fe43b00d24f0');
INSERT INTO `cool_visit_day` VALUES ('1617', '113.4.25.49', '1520833911', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1616', '113.0.65.127', '1520815083', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1615', '113.0.65.127', '1520814961', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1614', '113.0.65.127', '1520814023', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', 'http://www.hrbkcwl.com/blog_30.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1613', '113.0.65.127', '1520813728', 'http://www.hrbkcwl.com/home_hyxw_info_id_2_catId_30.html', 'http://www.hrbkcwl.com/blog_30.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1612', '113.0.65.127', '1520813721', 'http://www.hrbkcwl.com/blog_30.html', 'http://www.hrbkcwl.com/blogInfo_1_17.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1611', '113.0.65.127', '1520813553', 'http://www.hrbkcwl.com/blogInfo_1_17.html', 'http://www.hrbkcwl.com/blog_17.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1610', '113.0.65.127', '1520813531', 'http://www.hrbkcwl.com/blogInfo_1_17.html', 'http://www.hrbkcwl.com/blog_17.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1609', '113.0.65.127', '1520813056', 'http://www.hrbkcwl.com/blogInfo_8_17.html', 'http://www.hrbkcwl.com/blog_17.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1608', '113.0.65.127', '1520813049', 'http://www.hrbkcwl.com/blog_17.html', 'http://www.hrbkcwl.com/blog_30.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1607', '113.0.65.127', '1520812890', 'http://www.hrbkcwl.com/blog_30.html', 'http://www.hrbkcwl.com/blog_21.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1606', '113.0.65.127', '1520812884', 'http://www.hrbkcwl.com/blog_21.html', 'http://www.hrbkcwl.com/blog_19.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1605', '113.0.65.127', '1520812854', 'http://www.hrbkcwl.com/blog_19.html', 'http://www.hrbkcwl.com/blog_18.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1604', '113.0.65.127', '1520812770', 'http://www.hrbkcwl.com/blog_18.html', 'http://www.hrbkcwl.com/blog_17.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1603', '113.0.65.127', '1520812721', 'http://www.hrbkcwl.com/blog_17.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1602', '113.0.65.127', '1520812712', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1601', '113.0.65.127', '1520812694', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '0d41a056f09d6eb6220244e1f56599e2');
INSERT INTO `cool_visit_day` VALUES ('1600', '42.120.160.102', '1520802706', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1599', '187.52.194.208', '1520802522', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '971064338897f18915dd8ea8263570be');
INSERT INTO `cool_visit_day` VALUES ('1948', '123.165.251.30', '1522830005', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1946', '123.165.251.30', '1522829994', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1947', '123.165.251.30', '1522830004', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1945', '123.165.251.30', '1522829991', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1944', '123.165.251.30', '1522829990', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1943', '123.165.251.30', '1522829983', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1942', '123.165.251.30', '1522829903', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1941', '123.165.251.30', '1522829899', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1940', '123.165.251.30', '1522829898', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1939', '123.165.251.30', '1522829895', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1938', '123.165.251.30', '1522829894', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1937', '123.165.251.30', '1522829891', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1936', '123.165.251.30', '1522829886', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1622', '112.102.138.232', '1520941396', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('1621', '93.54.116.78', '1520933555', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'cfdb33b0882bea5534d709507dc175a4');
INSERT INTO `cool_visit_day` VALUES ('1620', '60.51.94.94', '1520921939', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', 'de6d637d0bd368d46f53febc11fc2413');
INSERT INTO `cool_visit_day` VALUES ('1619', '111.206.221.4', '1520918816', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1935', '123.165.251.30', '1522829882', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1934', '123.165.251.30', '1522829353', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1629', '201.76.96.163', '1521027103', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'a917b4470492df465fe58621c7c75a9a');
INSERT INTO `cool_visit_day` VALUES ('1628', '112.102.109.169', '1521011557', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Firefox', '', '', '', '41e1c5f11aaff6e7bfcf2c56f186509d');
INSERT INTO `cool_visit_day` VALUES ('1627', '112.102.109.169', '1521011555', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=B-66x3oXYYCOWl2FpZFz0siEQpjFjugOKvzobv5LPbqJMCFxRXRRcyVJgzDFgO4f', '0', '0', 'Firefox', '', '', '', '41e1c5f11aaff6e7bfcf2c56f186509d');
INSERT INTO `cool_visit_day` VALUES ('1626', '101.199.108.59', '1521000301', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1625', '72.224.212.151', '1520995079', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1624', '189.55.167.209', '1520994061', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1623', '70.80.116.172', '1520966866', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('1933', '123.165.251.30', '1522827660', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1932', '123.165.251.30', '1522827659', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1931', '123.165.251.30', '1522827640', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1930', '123.165.251.30', '1522827586', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1929', '123.165.251.30', '1522827560', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1928', '123.165.251.30', '1522826861', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1927', '123.165.251.30', '1522826859', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1926', '123.165.251.30', '1522826849', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1925', '123.165.251.30', '1522826817', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1637', '111.206.198.44', '1521125873', 'http://www.hrbkcwl.com/blog_14.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1636', '42.120.161.38', '1521123305', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1635', '177.18.64.33', '1521119387', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '532c1fe4ef673e1b8990a879b53df89d');
INSERT INTO `cool_visit_day` VALUES ('1633', '42.156.138.62', '1521092149', 'http://www.hrbkcwl.com/blog_30.html', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1634', '223.104.17.202', '1521094037', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=8', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1632', '111.206.221.49', '1521084362', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1631', '112.103.209.174', '1521083848', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=FGfkmWn537yIP4FeVbuckiGWZaxrq28vFFKv1bRyfujjgFHP594l0rM8AXoYf0E3', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1630', '101.226.225.59', '1521075528', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'e8116e6d73ca8d1b6901a64338b92ffe');
INSERT INTO `cool_visit_day` VALUES ('1924', '123.165.251.30', '1522826816', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1923', '123.165.251.30', '1522826815', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1922', '123.165.251.30', '1522826808', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1921', '123.165.251.30', '1522826804', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1920', '123.165.251.30', '1522826681', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1919', '123.165.251.30', '1522826676', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1918', '123.165.251.30', '1522826669', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1917', '123.165.251.30', '1522826664', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1916', '123.165.251.30', '1522826595', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1915', '123.165.251.30', '1522826593', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1914', '123.165.251.30', '1522826589', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1913', '101.199.108.52', '1522826192', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1912', '123.165.251.30', '1522826090', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1911', '123.165.251.30', '1522826087', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1910', '123.165.251.30', '1522826075', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1909', '123.165.251.30', '1522826072', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1908', '123.165.251.30', '1522826067', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1907', '123.165.251.30', '1522826054', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1906', '123.165.251.30', '1522826009', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1905', '123.165.251.30', '1522825880', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1904', '123.165.251.30', '1522825209', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1903', '123.165.251.30', '1522825207', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1902', '123.165.251.30', '1522825203', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1901', '123.165.251.30', '1522825201', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1900', '123.165.251.30', '1522825101', 'http://www.hrbkcwl.com/blog_18.html', 'https://www.baidu.com/link?url=j1kfHK6l1NMOefhZDYP3qanioF0NxWqC6HLMTXPhcI3gc8j-ZeEpscDn_XOo-89k', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1899', '123.165.251.30', '1522825043', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1898', '123.165.251.30', '1522825041', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1896', '111.206.221.28', '1522825035', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1897', '123.165.251.30', '1522825037', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1894', '111.206.221.82', '1522825029', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1895', '123.165.251.30', '1522825034', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1885', '42.102.157.114', '1522768762', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1893', '123.165.251.30', '1522825026', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1884', '112.103.211.46', '1522768099', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1883', '112.103.211.46', '1522768052', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1882', '112.103.211.46', '1522767956', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1881', '112.103.211.46', '1522767943', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1880', '112.103.211.46', '1522767917', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1879', '112.103.211.46', '1522767827', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1878', '112.103.211.46', '1522767791', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1877', '112.103.211.46', '1522767693', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1876', '112.103.211.46', '1522767534', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1875', '112.103.211.46', '1522767398', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1874', '112.103.211.46', '1522767307', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1873', '112.103.211.46', '1522767215', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1872', '112.103.211.46', '1522767155', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1871', '112.103.211.46', '1522767146', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1870', '112.103.211.46', '1522767113', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1869', '112.103.211.46', '1522767105', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1868', '112.103.211.46', '1522767080', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1867', '112.103.211.46', '1522766927', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1866', '112.103.211.46', '1522766815', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1865', '112.103.211.46', '1522766747', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1864', '112.103.211.46', '1522766398', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1863', '188.81.238.138', '1522766130', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1862', '106.120.162.108', '1522764927', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '87889e47c485dda9b9075d0f27311236');
INSERT INTO `cool_visit_day` VALUES ('1860', '111.206.198.7', '1522758493', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1861', '111.206.221.46', '1522758510', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1859', '112.103.211.46', '1522758223', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1858', '112.103.211.46', '1522757987', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1857', '112.103.211.46', '1522757982', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1856', '112.103.211.46', '1522757978', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1855', '112.103.211.46', '1522757977', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1854', '112.103.211.46', '1522757971', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1642', '111.206.221.69', '1521178305', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1853', '112.103.211.46', '1522757960', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1641', '220.181.108.96', '1521171862', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1640', '113.4.25.249', '1521164361', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1639', '113.4.25.249', '1521164346', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=cQ628SHBnxIChEXh84oKy1RKArekFCagTcckSh3cZVBVH6x18R_Gp3rM85B7iRz6', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1638', '94.60.100.67', '1521155776', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '56e05f916c7c2d0277efc34bca90012c');
INSERT INTO `cool_visit_day` VALUES ('1852', '112.103.211.46', '1522757937', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=6j5MPS9rVD0htbz5u15sb94kkIDazkd5jMMcwmItOWqjGBFn0D1zq09y0eUohtpN', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1847', '151.52.187.48', '1522682051', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1846', '42.102.157.114', '1522672145', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1845', '42.102.157.114', '1522664879', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1844', '42.102.157.114', '1522664801', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1843', '42.102.157.114', '1522663951', 'http://www.hrbkcwl.com/', 'http://kcmall.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1841', '111.206.221.28', '1522660059', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1842', '111.206.221.19', '1522660061', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1840', '123.166.228.79', '1522659683', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1839', '123.166.228.79', '1522659667', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1838', '123.166.228.79', '1522659659', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1837', '123.166.228.79', '1522659585', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1836', '123.166.228.79', '1522659582', 'http://www.hrbkcwl.com/#.', 'https://www.baidu.com/link?url=H8SR-agJX3ShAoh-OEFQTY6duAhKzA9XK1T5IafFNk8-FdbXiHslZtvNo4TaeKAv', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1824', '123.165.245.211', '1522589306', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1823', '123.165.245.211', '1522589302', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1822', '123.165.245.211', '1522588673', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1821', '123.165.245.211', '1522588671', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1644', '42.156.137.120', '1521385793', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1643', '36.110.147.80', '1521324674', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '25ad193f20b0bd43b3e8f3790429acad');
INSERT INTO `cool_visit_day` VALUES ('1820', '123.165.245.211', '1522588668', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1819', '123.165.245.211', '1522588592', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1818', '123.165.245.211', '1522588585', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1817', '123.165.245.211', '1522588583', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1816', '123.165.245.211', '1522588524', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1647', '42.156.136.14', '1521468471', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1646', '42.120.161.104', '1521468430', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1645', '111.206.221.102', '1521468146', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1815', '42.102.157.114', '1522588515', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1814', '123.165.245.211', '1522588511', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1813', '42.102.157.114', '1522588510', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1812', '123.165.245.211', '1522588507', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1811', '42.102.157.114', '1522588500', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1742', '111.206.221.85', '1521958212', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1741', '112.103.97.226', '1521957969', 'http://www.hrbkcwl.com/', 'http://hey.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1740', '112.103.97.226', '1521957967', 'http://www.hrbkcwl.com/', 'http://hey.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1739', '112.103.97.226', '1521957883', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=JHhbydG_lIkVmz4fhwOGt4ZeCuA6LBcnIfzTWPAgRLEDHZa-cC5mRRoNMbEXl3xj', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1738', '112.103.97.226', '1521957828', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=JHhbydG_lIkVmz4fhwOGt4ZeCuA6LBcnIfzTWPAgRLEDHZa-cC5mRRoNMbEXl3xj', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1737', '112.103.97.226', '1521948696', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1736', '112.103.97.226', '1521948597', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1648', '103.62.94.110', '1521529948', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'ab4cad77c906c7fa003b9757970e93b1');
INSERT INTO `cool_visit_day` VALUES ('1735', '112.103.97.226', '1521948595', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1734', '112.103.97.226', '1521948593', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1733', '112.103.97.226', '1521948065', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1732', '112.103.97.226', '1521948061', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1731', '112.103.97.226', '1521947679', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1730', '112.103.97.226', '1521947676', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1729', '112.103.97.226', '1521947666', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1728', '112.103.97.226', '1521947663', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1727', '112.103.97.226', '1521947660', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1726', '112.103.97.226', '1521947656', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1725', '112.103.97.226', '1521947644', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1724', '112.103.97.226', '1521947418', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1723', '112.103.97.226', '1521947409', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1722', '112.103.97.226', '1521947408', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1721', '112.103.97.226', '1521947406', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1720', '112.103.97.226', '1521947380', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1719', '112.103.97.226', '1521947349', 'http://www.hrbkcwl.com/case_10.html#', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1718', '112.103.97.226', '1521947308', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_13_23.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1717', '112.103.97.226', '1521946704', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1716', '112.103.97.226', '1521946703', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1715', '112.103.97.226', '1521946700', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1651', '111.206.221.69', '1521715257', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1650', '113.64.110.97', '1521714980', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1649', '113.64.110.97', '1521714952', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=DpRvS91dv0iEi-KtSyEc6r_RNmN9ccWzMNQPs9QTnCbjZKizEKEEwXeHYk_dkso-', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1714', '112.103.97.226', '1521943176', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1713', '171.7.247.34', '1521943132', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('1712', '112.103.97.226', '1521943092', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1711', '112.103.97.226', '1521943034', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1710', '112.103.97.226', '1521943033', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1709', '112.103.97.226', '1521943030', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1708', '112.103.97.226', '1521943013', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1707', '112.103.97.226', '1521942975', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1706', '112.103.97.226', '1521940425', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1705', '112.103.97.226', '1521936294', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_14_23.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1704', '112.103.97.226', '1521935360', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_14_23.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1703', '112.103.97.226', '1521935292', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1702', '112.103.97.226', '1521934677', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1701', '112.103.97.226', '1521934675', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1700', '112.103.97.226', '1521934673', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1699', '112.103.97.226', '1521934672', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1698', '112.103.97.226', '1521934670', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1697', '112.103.97.226', '1521934668', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1696', '112.103.97.226', '1521934634', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1695', '112.103.97.226', '1521934631', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1694', '112.103.97.226', '1521934628', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1693', '112.103.97.226', '1521934627', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1692', '112.103.97.226', '1521934592', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1691', '112.103.97.226', '1521934588', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1690', '112.103.97.226', '1521934585', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1689', '112.103.97.226', '1521934571', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1688', '112.103.97.226', '1521934567', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1687', '112.103.97.226', '1521934564', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1686', '112.103.97.226', '1521934359', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1685', '112.103.97.226', '1521934100', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1684', '112.103.97.226', '1521933420', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1663', '111.206.198.90', '1521796799', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1662', '183.141.124.127', '1521786815', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '838921648c23e0c653458f5744eaf88b');
INSERT INTO `cool_visit_day` VALUES ('1661', '183.141.124.127', '1521786456', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '838921648c23e0c653458f5744eaf88b');
INSERT INTO `cool_visit_day` VALUES ('1660', '183.141.124.127', '1521786433', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '838921648c23e0c653458f5744eaf88b');
INSERT INTO `cool_visit_day` VALUES ('1659', '183.141.124.127', '1521786393', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '838921648c23e0c653458f5744eaf88b');
INSERT INTO `cool_visit_day` VALUES ('1658', '183.141.124.127', '1521786389', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=pvEtKQ8A-8fzjqgtjJURN_NyTLoZO9MmzMMBd7A25J8pkx8yZ5ppR_s0H6nTOKux', '0', '0', 'Chrome', '', '', '', '838921648c23e0c653458f5744eaf88b');
INSERT INTO `cool_visit_day` VALUES ('1657', '110.140.189.21', '1521771725', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '56e05f916c7c2d0277efc34bca90012c');
INSERT INTO `cool_visit_day` VALUES ('1656', '42.184.17.20', '1521767367', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1655', '42.184.17.20', '1521767330', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1654', '42.184.17.20', '1521767297', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1653', '42.184.17.20', '1521767293', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1652', '42.184.17.20', '1521767226', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1683', '112.103.97.226', '1521933407', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1682', '112.103.97.226', '1521933403', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1681', '112.103.97.226', '1521933401', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1680', '112.103.97.226', '1521933397', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1679', '112.103.97.226', '1521933381', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1678', '112.103.97.226', '1521933332', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1677', '112.103.97.226', '1521933322', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1676', '112.103.97.226', '1521933321', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1668', '171.13.14.132', '1521887455', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1667', '101.199.108.52', '1521887452', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1666', '111.206.221.13', '1521886999', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1665', '95.230.91.97', '1521885012', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1ef364dd2efc2af45347342e2509c337');
INSERT INTO `cool_visit_day` VALUES ('1664', '220.181.108.116', '1521860967', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1675', '112.103.97.226', '1521933318', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1674', '112.103.97.226', '1521933315', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1673', '112.103.97.226', '1521933312', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1672', '112.103.97.226', '1521933305', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1670', '112.103.97.226', '1521933199', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1671', '112.103.97.226', '1521933201', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1669', '112.103.97.226', '1521933181', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1810', '123.165.245.211', '1522588291', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1809', '123.165.245.211', '1522588234', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1808', '101.199.108.55', '1522588081', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1799', '111.206.221.105', '1522509730', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1798', '111.206.221.83', '1522509720', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1797', '123.165.252.141', '1522499265', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1796', '123.165.252.141', '1522499233', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1747', '42.156.137.45', '1522077587', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd523abf6426620498a3fb36754b0a4ab');
INSERT INTO `cool_visit_day` VALUES ('1746', '123.166.153.56', '1522038706', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Firefox', '', '', '', 'a45f4686d540a2349ad47a7ae88022c2');
INSERT INTO `cool_visit_day` VALUES ('1744', '220.181.108.104', '1522010812', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1745', '123.166.153.56', '1522038704', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=86plSYll2VmO_376kz5x0UJLUKX5FeIkR8vmqiCDkjyDo73vtBVjihr4J8HZqArh', '0', '0', 'Firefox', '', '', '', 'a45f4686d540a2349ad47a7ae88022c2');
INSERT INTO `cool_visit_day` VALUES ('1743', '95.77.169.51', '1522002915', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '56e05f916c7c2d0277efc34bca90012c');
INSERT INTO `cool_visit_day` VALUES ('1795', '101.199.108.54', '1522499091', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1755', '177.154.249.119', '1522130352', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '836d1bdf7203d84be0043f166b06575c');
INSERT INTO `cool_visit_day` VALUES ('1754', '183.141.120.180', '1522116481', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('1752', '111.206.198.16', '1522115506', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1753', '183.141.120.180', '1522116468', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=iOfn4WYojkVKKRrQbkpu_I8QsoM314i5HFh9kqwBaDW3z4pzYaKiL5FB1tOt2ANc', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('1751', '183.141.120.180', '1522115169', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('1750', '183.141.120.180', '1522115162', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=zxezhp5GeEjgBdH_qS3zvQkSM0o2u_Qzzw0NMzAWvfruxLQrajaXO3IYOLEJqoDv', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('1749', '220.181.108.176', '1522099216', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1748', '125.164.134.78', '1522096601', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1794', '220.181.132.191', '1522498759', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1793', '106.120.162.107', '1522498466', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '87889e47c485dda9b9075d0f27311236');
INSERT INTO `cool_visit_day` VALUES ('1792', '101.199.108.120', '1522498451', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1791', '101.199.112.50', '1522498431', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('1790', '123.165.252.141', '1522497127', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1789', '123.165.252.141', '1522497123', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1788', '123.165.252.141', '1522497122', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1787', '123.165.252.141', '1522497120', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1786', '123.165.252.141', '1522497110', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1785', '123.165.252.141', '1522497105', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1784', '123.165.252.141', '1522497029', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1783', '123.165.252.141', '1522497004', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1782', '123.165.252.141', '1522496982', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1781', '123.165.252.141', '1522496981', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1780', '123.165.252.141', '1522496980', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1779', '123.165.252.141', '1522496979', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1769', '111.206.198.41', '1522331373', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1768', '171.212.23.37', '1522311102', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=vpJZBrPeQYENX2hrRwQSEaZPsyxqBvOb5UZ_6d-HfHoBhQXKmTeum8-58-a0ljOb', '0', '0', 'Chrome', '', '', '', '3200468109407b3655c21b45eeadf780');
INSERT INTO `cool_visit_day` VALUES ('1767', '171.113.88.140', '1522304140', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '89509945bcb71805e417d5b0f6da9f54');
INSERT INTO `cool_visit_day` VALUES ('1766', '111.206.36.19', '1522298538', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('1765', '180.115.101.63', '1522293543', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1764', '180.115.101.63', '1522293493', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1763', '180.115.101.63', '1522293479', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1762', '221.212.38.106', '1522290730', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=j_DIlnDEBZbdTHZpHlFwnxBfunLCf7oiWeE2d-mWuDV9hmmiMjEtyYNqA5kpvB70', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1757', '14.215.176.4', '1522182726', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('1756', '220.181.108.121', '1522175663', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1761', '111.206.221.99', '1522288335', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1760', '218.90.14.124', '1522287038', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1759', '218.90.14.124', '1522287030', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1758', '218.90.14.124', '1522286979', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('1772', '124.236.175.242', '1522400558', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1771', '124.236.175.242', '1522400401', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('1770', '220.181.108.149', '1522389248', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1778', '123.165.252.141', '1522496978', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1777', '123.165.252.141', '1522496972', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1776', '123.165.252.141', '1522496834', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1775', '123.125.143.65', '1522473755', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=OF1B', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('1774', '123.126.113.17', '1522471057', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '25ad193f20b0bd43b3e8f3790429acad');
INSERT INTO `cool_visit_day` VALUES ('1773', '220.181.108.119', '1522443382', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1807', '42.102.157.114', '1522587926', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('1806', '42.102.157.114', '1522587912', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('1805', '42.102.157.114', '1522587863', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('1804', '123.165.245.211', '1522587787', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1803', '123.165.245.211', '1522587781', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1801', '101.199.108.55', '1522551113', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1802', '123.165.245.211', '1522587761', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1800', '101.199.108.52', '1522551099', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('1835', '113.66.108.8', '1522650622', 'http://www.hrbkcwl.com/contact_16.html#.', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', 'f44a5ec3aefe6eb2f77fb8af339a3e0e');
INSERT INTO `cool_visit_day` VALUES ('1834', '113.66.108.8', '1522650609', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', 'f44a5ec3aefe6eb2f77fb8af339a3e0e');
INSERT INTO `cool_visit_day` VALUES ('1833', '113.66.108.8', '1522650585', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'f44a5ec3aefe6eb2f77fb8af339a3e0e');
INSERT INTO `cool_visit_day` VALUES ('1832', '113.66.108.8', '1522650559', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=OrLKsNSNdDvCGH0e1jryBc9RUdUoSCJBqNWZqXbgxXVV7fZDLCCu92vn7RQ_l981', '0', '0', 'Chrome', '', '', '', 'f44a5ec3aefe6eb2f77fb8af339a3e0e');
INSERT INTO `cool_visit_day` VALUES ('1831', '101.88.227.65', '1522645817', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1830', '101.88.227.65', '1522645813', 'http://www.hrbkcwl.com/', 'http://user.ihuyi.com/renzheng_success.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1829', '101.88.227.65', '1522641603', 'http://www.hrbkcwl.com/', 'http://user.ihuyi.com/renzheng_success.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1828', '101.88.227.65', '1522641598', 'http://www.hrbkcwl.com/', 'http://user.ihuyi.com/renzheng_success.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1827', '101.88.227.65', '1522641563', 'http://www.hrbkcwl.com/', 'http://user.ihuyi.com/renzheng_success.html', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('1826', '111.206.221.72', '1522604072', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1825', '111.206.221.32', '1522604061', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1851', '112.103.99.207', '1522721291', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '');
INSERT INTO `cool_visit_day` VALUES ('1850', '177.11.119.58', '1522698278', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('1849', '111.206.198.121', '1522686102', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1848', '111.206.198.96', '1522686091', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('1892', '123.165.251.30', '1522824506', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=BG9KFaACOCcRa7i17pWIHTG-OEvTZ_7oVh12I-HtPIPXYU9nGTMLTJHxntEDzFK9', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1890', '123.165.251.30', '1522813050', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('1891', '111.202.248.165', '1522815831', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '836d1bdf7203d84be0043f166b06575c');
INSERT INTO `cool_visit_day` VALUES ('1889', '123.165.251.30', '1522806284', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1888', '123.165.251.30', '1522805594', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('1887', '220.181.108.76', '1522782126', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('1886', '179.176.177.234', '1522779603', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('2164', '123.165.251.30', '1522893540', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2163', '123.165.251.30', '1522893388', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2162', '123.165.251.30', '1522892568', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2161', '123.165.251.30', '1522890421', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2160', '177.195.30.125', '1522887552', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '880448bb19fc2cd0e0db86c688a4215b');
INSERT INTO `cool_visit_day` VALUES ('2159', '111.206.36.141', '1522882347', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2743', '117.179.5.224', '1522977294', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2742', '117.179.5.224', '1522977272', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2741', '117.179.5.224', '1522977208', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2740', '220.181.108.150', '1522976777', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2739', '117.179.5.224', '1522975675', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2738', '187.57.155.134', '1522961440', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '56e05f916c7c2d0277efc34bca90012c');
INSERT INTO `cool_visit_day` VALUES ('2792', '112.103.97.250', '1523101377', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2791', '112.103.97.250', '1523101355', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2790', '220.181.108.153', '1523059315', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2789', '112.103.97.250', '1523056712', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2788', '119.188.64.4', '1523049153', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '0a9fa37310b9b4b326fe6a58357fb4a0');
INSERT INTO `cool_visit_day` VALUES ('2787', '204.83.35.170', '1523045215', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '249ba73795004bee7a6cb10a78d371f4');
INSERT INTO `cool_visit_day` VALUES ('2786', '42.156.136.19', '1523030515', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '0a27cbfa9ee9dc439201fff18e82f354');
INSERT INTO `cool_visit_day` VALUES ('2822', '64.74.215.88', '1523182996', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2821', '123.166.228.79', '1523163187', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('2820', '123.166.228.79', '1523163163', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=9Ybl7JhuID6VoxUqjXyuEQ1ddhqGLDxUKAUslQtzGyVdmgX1G1OzsNmBIg_2PqMl', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('2819', '117.179.5.224', '1523143944', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2818', '220.181.108.96', '1523139228', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2817', '64.74.215.1', '1523119730', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'ad04bd17ddd14bd98b9f9d6d81261909');
INSERT INTO `cool_visit_day` VALUES ('2835', '123.165.255.103', '1523223478', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2834', '123.165.255.103', '1523223458', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2833', '123.165.255.103', '1523223268', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2832', '123.165.255.103', '1523223249', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2831', '123.125.71.100', '1523213176', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2882', '123.165.255.103', '1523349816', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2881', '123.165.255.103', '1523342674', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2880', '220.181.108.143', '1523300285', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2903', '95.40.105.126', '1523441637', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1ef364dd2efc2af45347342e2509c337');
INSERT INTO `cool_visit_day` VALUES ('2901', '113.5.3.150', '1523432390', 'http://www.hrbkcwl.com/index.html#contact', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '29e9d40db771071fe27b63a5d6caa2b6');
INSERT INTO `cool_visit_day` VALUES ('2902', '123.165.255.103', '1523432844', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2900', '113.5.3.150', '1523432381', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '29e9d40db771071fe27b63a5d6caa2b6');
INSERT INTO `cool_visit_day` VALUES ('2899', '113.5.3.150', '1523432344', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2898', '113.5.3.150', '1523432039', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2897', '123.165.255.103', '1523430614', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'aa9999dcebe05a71a16f22e6bd1dac2a');
INSERT INTO `cool_visit_day` VALUES ('2896', '123.165.255.103', '1523429322', 'http://www.hrbkcwl.com/?from=singlemessage', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2895', '60.219.220.109', '1523429270', 'http://www.hrbkcwl.com/?from=singlemessage', '', '0', '0', 'Other', '', '', '', '05ef821ca6fd3771272d095d1482a242');
INSERT INTO `cool_visit_day` VALUES ('2894', '123.165.255.103', '1523428984', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2893', '113.5.3.150', '1523419307', 'http://www.hrbkcwl.com/blogInfo_1_17.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2891', '123.165.255.103', '1523412804', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2892', '123.165.255.103', '1523414849', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2890', '113.5.3.150', '1523410468', 'http://www.hrbkcwl.com/blogInfo_1_17.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2888', '113.5.3.150', '1523410460', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2889', '113.5.3.150', '1523410464', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2887', '220.181.108.86', '1523401131', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2917', '111.206.221.5', '1523526107', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2916', '111.206.198.40', '1523526101', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('2914', '112.103.211.235', '1523485760', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2915', '220.181.108.174', '1523497085', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2913', '183.36.114.119', '1523476693', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'b357e09a09706b8c78c6b4ecd3ed3e99');
INSERT INTO `cool_visit_day` VALUES ('2912', '189.74.65.23', '1523463732', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('3011', '61.131.78.82', '1524736148', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('3010', '123.151.77.74', '1524726613', 'http://www.hrbkcwl.com/', 'http://art.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Chrome', '', '', '', 'c317c99921b1aaa953073ddb6ed8cd2f');
INSERT INTO `cool_visit_day` VALUES ('3006', '111.41.173.29', '1524666594', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('2985', '14.215.176.11', '1524485070', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2983', '111.206.198.31', '1524480671', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2984', '167.108.54.135', '1524482605', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '7fad9d051ca0cff0771cb23a6d453d69');
INSERT INTO `cool_visit_day` VALUES ('2981', '111.206.198.89', '1524469511', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('2982', '111.206.221.107', '1524469514', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2980', '220.181.108.156', '1524433366', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2977', '220.181.108.78', '1524358290', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2922', '111.206.36.135', '1523590224', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2921', '220.181.108.157', '1523583000', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2919', '220.181.132.193', '1523578359', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('2920', '101.199.108.118', '1523578387', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('2918', '42.156.138.112', '1523563212', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'ec5d3ca305eade2166962c0139efcfa2');
INSERT INTO `cool_visit_day` VALUES ('2973', '101.199.108.118', '1524316774', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2943', '106.11.222.68', '1523979802', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '7861ab0a00054b86b04ca4b103faac2b');
INSERT INTO `cool_visit_day` VALUES ('2937', '123.125.143.136', '1523889938', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2925', '111.206.36.137', '1523721286', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2924', '170.0.206.184', '1523666185', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1e8704b9de07d4dad42399bc9411d327');
INSERT INTO `cool_visit_day` VALUES ('2923', '220.181.108.97', '1523660105', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2936', '42.156.139.77', '1523886227', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'ec5d3ca305eade2166962c0139efcfa2');
INSERT INTO `cool_visit_day` VALUES ('2935', '117.91.2.140', '1523882311', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=A8P2ZKEz01tG_zpSoZOXZnrlE52Pm-g5dWP96Yjr2rNtymGpZH3ZA47WemDr-xMt', '0', '0', 'Chrome', '', '', '', '379e31c90f84be5fa0c13852ec7fe2e9');
INSERT INTO `cool_visit_day` VALUES ('2934', '123.125.143.29', '1523859520', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=YPAC', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2928', '60.50.179.230', '1523802710', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '532c1fe4ef673e1b8990a879b53df89d');
INSERT INTO `cool_visit_day` VALUES ('2926', '220.181.108.151', '1523747443', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2927', '123.125.143.27', '1523782006', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=TOP6', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2933', '43.224.128.210', '1523855896', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '493d1d7907fb053548a14db78bdc78c5');
INSERT INTO `cool_visit_day` VALUES ('2932', '43.224.128.210', '1523855892', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '493d1d7907fb053548a14db78bdc78c5');
INSERT INTO `cool_visit_day` VALUES ('2931', '43.224.128.210', '1523855879', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '493d1d7907fb053548a14db78bdc78c5');
INSERT INTO `cool_visit_day` VALUES ('2930', '43.224.128.210', '1523855770', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '493d1d7907fb053548a14db78bdc78c5');
INSERT INTO `cool_visit_day` VALUES ('2929', '220.181.108.116', '1523851988', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2942', '219.133.46.142', '1523976091', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'a43c3ecdfaf9943cc8103e6dc13e23c4');
INSERT INTO `cool_visit_day` VALUES ('2941', '111.41.169.37', '1523975875', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'b305962aeb6bf26e715fa0ccb6ddaa21');
INSERT INTO `cool_visit_day` VALUES ('2939', '111.206.36.136', '1523938509', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2940', '111.41.169.37', '1523975515', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'b305962aeb6bf26e715fa0ccb6ddaa21');
INSERT INTO `cool_visit_day` VALUES ('2938', '220.181.108.96', '1523914590', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2972', '123.231.122.6', '1524306713', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '7fad9d051ca0cff0771cb23a6d453d69');
INSERT INTO `cool_visit_day` VALUES ('2971', '111.206.198.7', '1524302514', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2970', '111.206.198.35', '1524302512', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('2949', '128.201.222.61', '1524060853', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'a917b4470492df465fe58621c7c75a9a');
INSERT INTO `cool_visit_day` VALUES ('2948', '123.125.143.141', '1524046807', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2947', '221.212.214.88', '1524021807', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('2946', '220.181.108.84', '1524018160', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2945', '101.199.108.120', '1524012149', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('2944', '68.101.103.23', '1524010438', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('2965', '123.165.254.149', '1524223631', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2964', '106.122.186.208', '1524221025', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'be74f85c9a7ce106066ec8cde151980c');
INSERT INTO `cool_visit_day` VALUES ('2963', '106.122.186.208', '1524209050', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', 'be74f85c9a7ce106066ec8cde151980c');
INSERT INTO `cool_visit_day` VALUES ('2962', '106.122.186.208', '1524209037', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'be74f85c9a7ce106066ec8cde151980c');
INSERT INTO `cool_visit_day` VALUES ('2956', '220.181.132.194', '1524129569', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2954', '220.181.108.101', '1524122582', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2955', '123.125.143.30', '1524126025', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=LCJO', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2953', '59.183.186.135', '1524118185', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('2952', '119.39.248.119', '1524112409', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'b305962aeb6bf26e715fa0ccb6ddaa21');
INSERT INTO `cool_visit_day` VALUES ('2951', '221.212.214.118', '1524106742', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('2950', '60.219.134.247', '1524099499', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2961', '106.122.186.208', '1524208946', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=_OPLhFSbf5NBN-Pth4p_2xoFrIBa70-zrZN4egs0H6TtWRcJeCQUfUigziVr5VHS', '0', '0', 'Chrome', '', '', '', 'be74f85c9a7ce106066ec8cde151980c');
INSERT INTO `cool_visit_day` VALUES ('2960', '221.212.214.134', '1524203404', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('2959', '111.206.36.147', '1524175373', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2958', '220.181.108.120', '1524175292', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2957', '89.143.82.95', '1524159938', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'de6d637d0bd368d46f53febc11fc2413');
INSERT INTO `cool_visit_day` VALUES ('2969', '220.181.108.145', '1524259462', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2968', '62.98.52.177', '1524251206', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '880448bb19fc2cd0e0db86c688a4215b');
INSERT INTO `cool_visit_day` VALUES ('2967', '111.206.221.20', '1524243665', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2966', '111.206.198.37', '1524243649', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2976', '113.200.156.206', '1524355415', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('2975', '113.200.156.206', '1524355389', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1013724j/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@320_1004,ta@iphone_2_7.0_11_9.5/baiduid=FB1A6E66297C57A75E43A94079F32AAC/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('2974', '113.200.156.206', '1524355355', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1013724j/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@320_1004,ta@iphone_2_7.0_11_9.5/baiduid=FB1A6E66297C57A75E43A94079F32AAC/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('2979', '118.207.59.186', '1524424991', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('2978', '118.207.59.186', '1524424989', 'http://www.hrbkcwl.com/', 'http://www.so.com/link?m=aHj33tgkPkUuS0iSs9RUKus8zIpLE321keqE2tcdc71uBblDyf/FpyCMAb Xy88uoQWNghbGKHijQdHmvpcSSpgPbw7kCXETcCf65EF IQju4/C5v6MFCU3L8lwz5SQVDwwpTdHAL31nV zAKX8FX5RbKoFAEj1HP09hVdneF ngYgvEf12xXiOnMwicL6Ix1g Ph 00oPFI94HMDj5o0m EOetk=', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('3005', '111.41.173.29', '1524654251', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('2992', '111.206.221.71', '1524562017', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2991', '112.193.126.223', '1524561642', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('2990', '123.125.143.12', '1524543486', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=RBWR', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2989', '221.9.214.246', '1524538486', 'http://www.hrbkcwl.com/', 'http://www.sogou.com/web?query=site:tutuaiai.com  百度权重_百度权重提升_联系Q:1060717655_kyehsdl.com', '0', '0', 'MSIE', '', '', '', '6f79203df8ba6755cc1961c7c38788be');
INSERT INTO `cool_visit_day` VALUES ('2987', '111.206.198.119', '1524531785', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('2988', '111.206.221.93', '1524531786', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2986', '220.181.108.95', '1524518653', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3004', '111.206.221.41', '1524648211', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3003', '111.206.221.77', '1524648209', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3002', '123.151.77.72', '1524639263', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1000953f/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@320_1001,ta@iphone_2_7.0_3_537/baiduid=DC641E45D752C51398802B846E41E06D/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', 'b4f8c3f8781dfe4c7a90f8b0b881e32b');
INSERT INTO `cool_visit_day` VALUES ('3001', '125.39.45.141', '1524639105', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1000953f/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@320_1001,ta@iphone_2_7.0_3_537/baiduid=DC641E45D752C51398802B846E41E06D/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', 'b4f8c3f8781dfe4c7a90f8b0b881e32b');
INSERT INTO `cool_visit_day` VALUES ('3000', '117.136.56.209', '1524637194', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/s?tn=zbios', '0', '0', 'Other', '', '', '', 'f1b497adbceb36a508d0eb681a50a6d5');
INSERT INTO `cool_visit_day` VALUES ('2999', '61.131.78.82', '1524628759', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('2998', '61.131.78.82', '1524628225', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1c9f8f250fec3e7a8a028447e21543eb');
INSERT INTO `cool_visit_day` VALUES ('2997', '175.7.10.208', '1524621103', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('2996', '175.7.10.208', '1524621086', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('2995', '175.7.10.208', '1524621083', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=5TbvONQQDPzQxsu7kfrSxDe83YFW0My62jatCO9OIwFqcHrNtQtBTE661_r94oen', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('2994', '179.216.230.218', '1524618264', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'a917b4470492df465fe58621c7c75a9a');
INSERT INTO `cool_visit_day` VALUES ('2993', '220.181.108.177', '1524614955', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3009', '123.151.77.74', '1524726595', 'http://www.hrbkcwl.com/', 'http://art.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Chrome', '', '', '', 'c317c99921b1aaa953073ddb6ed8cd2f');
INSERT INTO `cool_visit_day` VALUES ('3008', '111.161.57.87', '1524721730', 'http://www.hrbkcwl.com/', 'http://art.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Chrome', '', '', '', 'c317c99921b1aaa953073ddb6ed8cd2f');
INSERT INTO `cool_visit_day` VALUES ('3007', '220.181.108.184', '1524699807', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3014', '111.206.221.46', '1524809620', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3013', '111.206.198.92', '1524809619', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3012', '220.181.108.101', '1524787890', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3019', '111.206.198.117', '1524895391', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3018', '111.206.198.9', '1524895388', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3017', '223.104.17.237', '1524894898', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1014571w/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@1320_1004,ta@iphone_2_7.0_11_9.5/baiduid=FB1A6E66297C57A75E43A94079F32AAC/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('3016', '223.104.17.237', '1524894812', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1014571w/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@1320_1004,ta@iphone_2_7.0_11_9.5/baiduid=FB1A6E66297C57A75E43A94079F32AAC/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('3015', '220.181.108.142', '1524875431', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3021', '219.155.49.182', '1524955217', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/from=1014571w/bd_page_type=1/ssid=0/uid=0/pu=usm@1,sz@1320_1004,ta@iphone_2_7.0_11_9.5/baiduid=FB1A6E66297C57A75E43A94079F32AAC/w=0_10_/t=iphone/l=3/tc?ref=www_iphone', '0', '0', 'Chrome', '', '', '', '51aba3baad8983ff78753984c177def8');
INSERT INTO `cool_visit_day` VALUES ('3020', '220.181.108.118', '1524950195', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3022', '220.181.108.97', '1525035360', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3023', '79.129.32.19', '1525084002', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', 'de6d637d0bd368d46f53febc11fc2413');
INSERT INTO `cool_visit_day` VALUES ('3030', '111.41.173.29', '1525171878', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '31132f5e4b6895d534c4946635b04cbd');
INSERT INTO `cool_visit_day` VALUES ('3029', '111.41.173.29', '1525153082', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '229b5be953397ddae41546ebcaad1afa');
INSERT INTO `cool_visit_day` VALUES ('3028', '111.41.173.29', '1525152907', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '229b5be953397ddae41546ebcaad1afa');
INSERT INTO `cool_visit_day` VALUES ('3027', '111.41.173.29', '1525145887', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'b44abdb2b04927306319185107254f3d');
INSERT INTO `cool_visit_day` VALUES ('3026', '111.41.173.29', '1525144312', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3025', '111.41.173.29', '1525144309', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3024', '220.181.108.114', '1525126118', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3041', '117.179.5.248', '1525356696', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'f31a38776ed6ae63bf01ea720f4f6af8');
INSERT INTO `cool_visit_day` VALUES ('3040', '117.179.5.248', '1525356494', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'ffc173e8ec792b432bb03cb9598884ba');
INSERT INTO `cool_visit_day` VALUES ('3033', '111.41.173.29', '1525266895', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3034', '111.41.173.29', '1525267941', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'ffc173e8ec792b432bb03cb9598884ba');
INSERT INTO `cool_visit_day` VALUES ('3031', '220.181.108.92', '1525217642', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3032', '36.110.147.92', '1525241223', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '25ad193f20b0bd43b3e8f3790429acad');
INSERT INTO `cool_visit_day` VALUES ('3039', '117.179.5.248', '1525356475', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'ffc173e8ec792b432bb03cb9598884ba');
INSERT INTO `cool_visit_day` VALUES ('3038', '111.206.198.224', '1525354849', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3037', '111.206.222.143', '1525354847', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '31986c83f936311d30fe476040d8fb4f');
INSERT INTO `cool_visit_day` VALUES ('3036', '111.41.173.29', '1525354257', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3035', '220.181.108.147', '1525301448', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3046', '123.151.77.91', '1525424780', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'a26f30f7f37d70813799e17cff3b07c9');
INSERT INTO `cool_visit_day` VALUES ('3045', '42.102.227.170', '1525421940', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('3044', '221.212.214.238', '1525399963', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '5b7df0d2e74798dfa7e7fa41ef8a6c53');
INSERT INTO `cool_visit_day` VALUES ('3043', '189.18.65.124', '1525385088', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3042', '220.181.108.79', '1525374508', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3057', '117.179.5.248', '1525534781', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3056', '117.179.5.248', '1525534177', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3055', '117.179.5.248', '1525514529', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3054', '117.179.5.248', '1525508970', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'a0493942c92d0362e201151a56753e58');
INSERT INTO `cool_visit_day` VALUES ('3053', '117.179.5.248', '1525508221', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3052', '117.179.5.248', '1525495399', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3051', '117.179.5.248', '1525491953', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3050', '171.212.227.5', '1525472148', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '6c494daddab9e5100166cf2c70e599f0');
INSERT INTO `cool_visit_day` VALUES ('3049', '171.212.227.5', '1525472141', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '6c494daddab9e5100166cf2c70e599f0');
INSERT INTO `cool_visit_day` VALUES ('3048', '171.212.227.5', '1525472118', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '6c494daddab9e5100166cf2c70e599f0');
INSERT INTO `cool_visit_day` VALUES ('3047', '171.212.227.5', '1525472117', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '6c494daddab9e5100166cf2c70e599f0');
INSERT INTO `cool_visit_day` VALUES ('3206', '112.103.16.250', '1527251661', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '05ef821ca6fd3771272d095d1482a242');
INSERT INTO `cool_visit_day` VALUES ('3205', '167.116.35.67', '1527250826', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '7fad9d051ca0cff0771cb23a6d453d69');
INSERT INTO `cool_visit_day` VALUES ('3204', '123.125.143.193', '1527246936', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=5YVA', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3203', '118.210.189.154', '1527238274', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'ab4cad77c906c7fa003b9757970e93b1');
INSERT INTO `cool_visit_day` VALUES ('3202', '36.231.19.252', '1527228990', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '836d1bdf7203d84be0043f166b06575c');
INSERT INTO `cool_visit_day` VALUES ('3201', '111.206.221.28', '1527228196', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3200', '111.206.221.102', '1527228193', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3064', '42.120.161.110', '1525617228', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '0a27cbfa9ee9dc439201fff18e82f354');
INSERT INTO `cool_visit_day` VALUES ('3063', '122.106.73.81', '1525612632', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1ef364dd2efc2af45347342e2509c337');
INSERT INTO `cool_visit_day` VALUES ('3062', '117.179.5.248', '1525603321', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3060', '112.103.211.250', '1525580231', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('3061', '117.179.5.248', '1525582408', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3059', '117.179.5.248', '1525569693', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3058', '220.181.108.102', '1525565415', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3199', '183.141.111.4', '1527227859', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('3198', '183.141.111.4', '1527227854', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('3197', '183.141.111.4', '1527227749', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=WZAq_ABzDORcR09aub46hxGWcoKJwYXpJTqEmJu4Gkd_RqXwqvEP54EW_cx2DGc-', '0', '0', 'Safari', '', '', '', '3e72e37c46e226fa062a48983af6bc6c');
INSERT INTO `cool_visit_day` VALUES ('3196', '220.181.108.143', '1527224076', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '', '0', '0', 'Safari', '', '', '', 'a83bb7bffeded00618ff6f25af6e26f8');
INSERT INTO `cool_visit_day` VALUES ('3195', '220.181.108.77', '1527193445', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3194', '123.125.143.138', '1527192995', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=AKGD', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3191', '111.41.173.109', '1527164840', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=IS4C3ACW_a8x0daDFwEBGtKOXTShqhjVeTdeaQcDEdW7kqCdRXLzlrhMAkLdljSx', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3190', '111.41.173.109', '1527164824', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=IS4C3ACW_a8x0daDFwEBGtKOXTShqhjVeTdeaQcDEdW7kqCdRXLzlrhMAkLdljSx', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3109', '14.116.133.171', '1525964706', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '6c202122c50a791fe1080cbf61edf0e1');
INSERT INTO `cool_visit_day` VALUES ('3108', '14.203.136.58', '1525958893', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3107', '14.203.136.58', '1525957785', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3106', '14.203.136.58', '1525957746', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3105', '14.203.136.58', '1525957618', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3088', '117.179.5.248', '1525702036', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3087', '117.179.5.248', '1525698213', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3086', '111.206.198.17', '1525672462', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3085', '111.206.198.53', '1525672454', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3084', '221.212.214.38', '1525672292', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'd6e82f97704e23ce63a3de5da5c0347c');
INSERT INTO `cool_visit_day` VALUES ('3083', '221.212.214.38', '1525671270', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'd6e82f97704e23ce63a3de5da5c0347c');
INSERT INTO `cool_visit_day` VALUES ('3082', '111.206.221.4', '1525670455', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3081', '111.206.198.28', '1525670452', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3079', '111.206.221.5', '1525668457', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3080', '111.206.221.48', '1525668468', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3078', '111.32.49.210', '1525667647', 'http://www.hrbkcwl.com/about_2.html#.', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3077', '111.32.49.210', '1525667629', 'http://www.hrbkcwl.com/about_2.html', 'https://www.baidu.com/link?url=rBVP7fUx_3abqQl38yqOx-w4bUl0WN_1RO9jX4qV8N_jg13Blrv_oAfjbKibMt2p', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3076', '220.181.132.197', '1525667591', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('3075', '111.32.49.210', '1525667533', 'http://www.hrbkcwl.com/case_10.html', 'https://www.baidu.com/link?url=Q50toA3erB10gKCuUg6aB3pxTggJV3vahbRLI6baCEUFQnU7eqq_P_ayiW4f_TA_', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3074', '111.32.49.210', '1525667486', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3073', '111.32.49.210', '1525667456', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3072', '111.32.49.210', '1525667340', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=4xRTY2OYFL1MfPyetZpRwgX6minQQTunDvvfCXCxR9PykPqxenkik-04NWFSCwgd', '0', '0', 'Chrome', '', '', '', '71a5bde2c92b45c639922cd6a7364514');
INSERT INTO `cool_visit_day` VALUES ('3071', '221.212.214.38', '1525666498', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('3069', '111.206.198.123', '1525664488', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3070', '221.212.214.38', '1525666464', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('3067', '221.212.214.38', '1525656762', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'd6e82f97704e23ce63a3de5da5c0347c');
INSERT INTO `cool_visit_day` VALUES ('3068', '113.0.65.82', '1525663122', 'http://www.hrbkcwl.com/', 'https://m.baidu.com/', '0', '0', 'Chrome', '', '', '', 'cfa5d77a8f6494166f809d8df1370a78');
INSERT INTO `cool_visit_day` VALUES ('3066', '221.212.214.38', '1525654498', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('3065', '220.181.108.173', '1525638655', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3092', '112.103.211.250', '1525788685', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('3091', '113.5.4.71', '1525739794', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', '1f7770354aa68d3a519adcac8562a483');
INSERT INTO `cool_visit_day` VALUES ('3090', '113.5.4.71', '1525739785', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '1f7770354aa68d3a519adcac8562a483');
INSERT INTO `cool_visit_day` VALUES ('3089', '220.181.108.153', '1525723925', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3104', '14.203.136.58', '1525957614', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3103', '14.203.136.58', '1525957597', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3096', '220.181.132.191', '1525839279', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('3095', '220.181.108.170', '1525810160', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3094', '42.156.138.40', '1525808236', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'ec5d3ca305eade2166962c0139efcfa2');
INSERT INTO `cool_visit_day` VALUES ('3093', '201.25.123.122', '1525799737', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '2aa58e67861dbcbbe87019712ef5c265');
INSERT INTO `cool_visit_day` VALUES ('3102', '83.35.219.237', '1525953901', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '2a2a6ab5a19a2152f458a2861397e0a7');
INSERT INTO `cool_visit_day` VALUES ('3101', '101.109.208.85', '1525952448', 'http://www.hrbkcwl.com/', 'http://seocheckupx.com', '0', '0', 'Chrome', '', '', '', '8bd58ae12544610d54b331b20801f4ac');
INSERT INTO `cool_visit_day` VALUES ('3100', '187.127.224.48', '1525945603', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3099', '110.175.143.65', '1525930680', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Other', '', '', '', '1749ba131c172b3692069fe5cb1d7c8b');
INSERT INTO `cool_visit_day` VALUES ('3097', '220.181.108.157', '1525896886', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3098', '79.168.122.56', '1525900314', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '2de4ea47f51c7455d680141b2f95d94c');
INSERT INTO `cool_visit_day` VALUES ('3184', '111.206.36.10', '1527078710', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3183', '1.58.47.145', '1527071971', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '16d1681bf9bf0522b6c3474bc422cd88');
INSERT INTO `cool_visit_day` VALUES ('3115', '14.116.144.113', '1526132544', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'abce981242551cec03d4fe43b00d24f0');
INSERT INTO `cool_visit_day` VALUES ('3114', '160.20.35.11', '1526127894', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3110', '220.181.108.144', '1526003976', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3113', '14.215.176.15', '1526127626', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3112', '123.165.247.54', '1526103351', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('3111', '220.181.108.115', '1526084336', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3182', '1.58.47.145', '1527071770', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=LTimtwcbkdTagGTJkkwYDkgp1XBK3fZtjtX0TA4RSaf6dtOZF3FF7t5BEklpatUB', '0', '0', 'Chrome', '', '', '', '16d1681bf9bf0522b6c3474bc422cd88');
INSERT INTO `cool_visit_day` VALUES ('3181', '106.121.57.125', '1527066978', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '33dde74a54c78ca87ac8638a87488a0d');
INSERT INTO `cool_visit_day` VALUES ('3141', '123.125.143.152', '1526362254', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3117', '123.125.143.7', '1526213692', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=B363', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3116', '123.125.71.96', '1526153591', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3140', '111.206.221.43', '1526358806', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3139', '111.206.198.30', '1526358794', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3138', '221.212.214.205', '1526358358', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3137', '221.212.214.205', '1526358350', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3136', '221.212.214.205', '1526358343', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3131', '117.179.5.108', '1526307634', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3129', '117.179.5.108', '1526306557', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3130', '180.163.220.42', '1526307527', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '87889e47c485dda9b9075d0f27311236');
INSERT INTO `cool_visit_day` VALUES ('3128', '220.181.132.191', '1526304888', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('3127', '117.179.5.108', '1526304234', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3126', '123.151.77.74', '1526303730', 'http://www.hrbkcwl.com/', 'http://wx.hrbkcwl.com/app/index.php?i=33', '0', '0', 'Chrome', '', '', '', 'c317c99921b1aaa953073ddb6ed8cd2f');
INSERT INTO `cool_visit_day` VALUES ('3125', '31.164.62.70', '1526297565', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '2a2a6ab5a19a2152f458a2861397e0a7');
INSERT INTO `cool_visit_day` VALUES ('3124', '154.72.192.34', '1526284026', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', 'ab4cad77c906c7fa003b9757970e93b1');
INSERT INTO `cool_visit_day` VALUES ('3122', '220.181.132.195', '1526262019', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('3123', '113.10.190.222', '1526262032', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('3121', '123.165.247.54', '1526258158', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('3120', '123.125.71.95', '1526245907', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3119', '94.3.227.170', '1526239790', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3118', '137.226.113.33', '1526236960', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'e9286cc5c170cd8b4aeeab13061729ee');
INSERT INTO `cool_visit_day` VALUES ('3135', '221.212.214.205', '1526358339', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3134', '221.212.214.205', '1526358337', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3133', '221.212.214.205', '1526358285', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=APr-pek2mRTeA0_qLIebCXfd8JoO7fv5Jz7BIlx7M66bvIq2gD8QF3-Z16tP8_iW', '0', '0', 'Chrome', '', '', '', '612220558be72be6b052e539e3ba9bd3');
INSERT INTO `cool_visit_day` VALUES ('3132', '101.199.108.118', '1526322091', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', 'bfe1eb95fafaae03182ba9392a6f2aae');
INSERT INTO `cool_visit_day` VALUES ('3180', '220.181.108.181', '1527048561', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3179', '123.125.143.6', '1527048420', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3170', '113.66.110.168', '1526896788', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('3145', '111.206.198.28', '1526473107', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3144', '111.206.221.44', '1526473099', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3142', '220.181.108.147', '1526438574', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3143', '117.179.5.108', '1526468352', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3150', '119.123.74.21', '1526536403', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('3149', '119.123.74.21', '1526536398', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=9WgZ6jXTZTKAi8PJ6Mcajs50DfErf2SFlTrWELVQxRiqJATae6eC_VE9wCHHpjY-', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('3148', '123.125.143.20', '1526535095', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=IANI', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3147', '14.215.176.14', '1526529099', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3146', '220.181.108.84', '1526512320', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3169', '113.66.110.168', '1526896777', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('3152', '123.125.143.139', '1526620733', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=E98S', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3151', '220.181.108.150', '1526577583', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3155', '220.181.108.152', '1526700017', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3154', '125.124.135.105', '1526698838', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '0e1896f1a38b43e1bc9112aad389788c');
INSERT INTO `cool_visit_day` VALUES ('3153', '125.124.135.105', '1526698829', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=MgediUbqwOnhlDC1SO3u4PJRnDgJUzxZk2w2Aa5jNj4gZcgrckRQ7L-R0dpGbZcG', '0', '0', 'Chrome', '', '', '', '0e1896f1a38b43e1bc9112aad389788c');
INSERT INTO `cool_visit_day` VALUES ('3168', '113.66.110.168', '1526896619', 'http://www.hrbkcwl.com/blogInfo_8_17.html', 'https://www.baidu.com/link?url=SXpQzLDKCZJ65kST26KiZ2_4oB118aK74pSuTcFXrLVBm0pvKVfl7gfHlq4kquxqER0ilCWGGiwOJyE_t97EEa', '0', '0', 'Chrome', '', '', '', '93850993bf8ad204a0b881807a60a383');
INSERT INTO `cool_visit_day` VALUES ('3167', '207.189.0.4', '1526888689', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3166', '66.70.182.118', '1526884552', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3156', '220.181.108.92', '1526772828', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3157', '82.112.130.59', '1526803362', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('3165', '66.70.182.118', '1526884539', 'http://www.hrbkcwl.com/blog_14.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3164', '66.70.182.118', '1526884529', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3163', '66.70.182.118', '1526884521', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3162', '66.70.182.118', '1526884508', 'http://www.hrbkcwl.com/products_9.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3161', '66.70.182.118', '1526884494', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3160', '66.70.182.118', '1526884485', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3158', '220.181.108.83', '1526861925', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3159', '66.70.182.118', '1526884463', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '109950fc9e58f691ee4cf957b36e5358');
INSERT INTO `cool_visit_day` VALUES ('3178', '111.206.221.97', '1527040628', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3177', '111.206.198.83', '1527040612', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3173', '117.136.7.245', '1526986739', 'http://www.hrbkcwl.com/?card_id=pjAxC0zw9AMG0lfvO6KIIoQxiahk', '', '0', '0', 'Other', '', '', '', '05ef821ca6fd3771272d095d1482a242');
INSERT INTO `cool_visit_day` VALUES ('3172', '210.76.42.50', '1526948299', 'http://www.hrbkcwl.com/?card_id=pjAxC0zw9AMG0lfvO6KIIoQxiahk', '', '0', '0', 'Other', '', '', '', '05ef821ca6fd3771272d095d1482a242');
INSERT INTO `cool_visit_day` VALUES ('3171', '220.181.108.108', '1526924252', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3176', '117.28.135.13', '1527038799', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=MS8iZOgU35urBUAG61zJXUmaP-tt3nMNh6p9ulaqeFIz65-4yd5v0g1lQYzhMyjp', '0', '0', 'Chrome', '', '', '', '6c3383cfc658b1ec0651d1babf35dd30');
INSERT INTO `cool_visit_day` VALUES ('3175', '112.102.35.57', '1527037488', 'http://www.hrbkcwl.com/about_2.html', 'https://www.baidu.com/link?url=uorIhpT3rnoSGa4-sdwG3gRD2WjEIVrHOnPidAHGrMB7e285cYMSMkim8rZf52YO', '0', '0', 'Chrome', '', '', '', '4319ab992ff5fd0c09aaa00a48d8c3e9');
INSERT INTO `cool_visit_day` VALUES ('3174', '220.181.132.193', '1527018138', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('3189', '220.181.108.150', '1527136487', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3188', '14.215.176.18', '1527129925', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('3187', '111.206.198.122', '1527124183', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3186', '111.206.221.15', '1527124177', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3185', '117.28.135.13', '1527123853', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=04J7gkG6TFOaIZzooLEOP2QEtSD6Dl6JXZhMLzJrWBi3g9MTInp828bW6FVRU7kx', '0', '0', 'Chrome', '', '', '', '6c3383cfc658b1ec0651d1babf35dd30');
INSERT INTO `cool_visit_day` VALUES ('3193', '111.206.198.71', '1527188791', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3192', '111.206.221.97', '1527188789', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Other', '', '', '', '0d77fbeeb2fabc53405c1c0cba02021e');
INSERT INTO `cool_visit_day` VALUES ('3209', '111.41.173.109', '1527301452', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3208', '111.41.173.109', '1527301398', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3207', '220.181.108.116', '1527285135', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('3215', '127.0.0.1', '1527389614', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3214', '127.0.0.1', '1527389224', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3267', '127.0.0.1', '1527468776', 'http://coolphp.local.com/', '', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('2147', '123.165.251.30', '1522854632', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2148', '123.165.251.30', '1522854637', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2149', '123.165.251.30', '1522854639', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2150', '123.165.251.30', '1522854642', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2151', '123.165.251.30', '1522854900', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2152', '123.165.251.30', '1522854908', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2153', '123.165.251.30', '1522854912', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2154', '123.165.251.30', '1522854914', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2155', '123.165.251.30', '1522854926', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2156', '123.165.251.30', '1522854933', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2157', '123.165.251.30', '1522854953', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2158', '101.199.112.45', '1522856561', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2165', '123.165.251.30', '1522893542', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2166', '123.165.251.30', '1522893559', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2167', '123.165.251.30', '1522893586', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2168', '123.165.251.30', '1522893597', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2169', '123.165.251.30', '1522893602', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2170', '123.165.251.30', '1522893604', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2171', '123.165.251.30', '1522893608', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2172', '123.165.251.30', '1522893617', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2173', '123.165.251.30', '1522893626', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2174', '123.165.251.30', '1522893654', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2175', '123.165.251.30', '1522893657', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2176', '123.165.251.30', '1522893660', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2177', '123.165.251.30', '1522893661', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2178', '123.165.251.30', '1522893662', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2179', '123.165.251.30', '1522893663', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2180', '123.165.251.30', '1522893667', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2181', '123.165.251.30', '1522893712', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2182', '123.165.251.30', '1522893713', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2183', '123.165.251.30', '1522893714', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2184', '123.165.251.30', '1522893716', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2185', '123.165.251.30', '1522893717', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2186', '123.165.251.30', '1522893719', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2187', '123.165.251.30', '1522893722', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2188', '123.165.251.30', '1522894299', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2189', '123.165.251.30', '1522894344', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2190', '123.165.251.30', '1522894347', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2191', '101.199.112.55', '1522894431', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2192', '123.165.251.30', '1522894907', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2193', '123.165.251.30', '1522894931', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2194', '123.165.251.30', '1522894936', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2195', '123.165.251.30', '1522894945', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2196', '123.165.251.30', '1522894950', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2197', '123.165.251.30', '1522894953', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2198', '123.165.251.30', '1522894957', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2199', '123.165.251.30', '1522894967', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2200', '123.165.251.30', '1522894997', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2201', '123.165.251.30', '1522895001', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2202', '123.165.251.30', '1522895006', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2203', '123.165.251.30', '1522895010', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2204', '123.165.251.30', '1522895012', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2205', '123.165.251.30', '1522895017', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2206', '123.165.251.30', '1522895120', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2207', '123.165.251.30', '1522895135', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2208', '123.165.251.30', '1522895142', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2209', '123.165.251.30', '1522895257', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2210', '123.165.251.30', '1522895259', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2211', '123.165.251.30', '1522895334', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2212', '123.165.251.30', '1522895341', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2213', '123.165.251.30', '1522895477', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2214', '123.165.251.30', '1522895500', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2215', '123.165.251.30', '1522895512', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2216', '123.165.251.30', '1522895517', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2217', '123.165.251.30', '1522895518', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2218', '123.165.251.30', '1522895525', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2219', '123.165.251.30', '1522895526', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2220', '123.165.251.30', '1522895528', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2221', '123.165.251.30', '1522895530', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2222', '123.165.251.30', '1522895590', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2223', '123.165.251.30', '1522895596', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2224', '123.165.251.30', '1522895598', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2225', '123.165.251.30', '1522895601', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2226', '123.165.251.30', '1522895604', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2227', '123.165.251.30', '1522895605', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2228', '123.165.251.30', '1522895607', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2229', '123.165.251.30', '1522895639', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2230', '123.165.251.30', '1522895647', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2231', '123.165.251.30', '1522895650', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2232', '123.165.251.30', '1522895653', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2233', '123.165.251.30', '1522895659', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2234', '123.165.251.30', '1522895665', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2235', '123.165.251.30', '1522895678', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2236', '123.165.251.30', '1522895687', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2237', '123.165.251.30', '1522895690', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2238', '123.165.251.30', '1522895697', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2239', '123.165.251.30', '1522895698', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2240', '123.165.251.30', '1522895699', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2241', '123.165.251.30', '1522895797', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2242', '123.165.251.30', '1522895803', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2243', '123.165.251.30', '1522895805', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2244', '123.165.251.30', '1522895811', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2245', '123.165.251.30', '1522895812', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2246', '123.165.251.30', '1522895813', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2247', '123.165.251.30', '1522895816', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2248', '123.165.251.30', '1522895818', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2249', '123.165.251.30', '1522895859', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2250', '123.165.251.30', '1522895867', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2251', '123.165.251.30', '1522895869', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2252', '123.165.251.30', '1522895984', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2253', '123.165.251.30', '1522895985', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2254', '123.165.251.30', '1522895987', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2255', '123.165.251.30', '1522895988', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2256', '123.165.251.30', '1522896948', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2257', '123.165.251.30', '1522896953', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2258', '123.165.251.30', '1522896958', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2259', '123.165.251.30', '1522896997', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2260', '123.165.251.30', '1522897000', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2261', '123.165.251.30', '1522899596', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2262', '123.165.251.30', '1522899631', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2263', '123.165.251.30', '1522899636', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2264', '123.165.251.30', '1522899640', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2265', '123.165.251.30', '1522899644', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2266', '123.165.251.30', '1522899668', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2267', '123.165.251.30', '1522899675', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2268', '123.165.251.30', '1522899680', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2269', '123.165.251.30', '1522899684', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2270', '123.165.251.30', '1522899687', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2271', '123.165.251.30', '1522899689', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2272', '123.165.251.30', '1522899704', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2273', '123.165.251.30', '1522899746', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2274', '123.165.251.30', '1522899768', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2275', '123.165.251.30', '1522899772', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2276', '123.165.251.30', '1522899797', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2277', '123.165.251.30', '1522899799', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2278', '123.165.251.30', '1522899819', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2279', '123.165.251.30', '1522899824', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2280', '123.165.251.30', '1522899826', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2281', '123.165.251.30', '1522899931', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2282', '123.165.251.30', '1522899932', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2283', '123.165.251.30', '1522899961', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2284', '123.165.251.30', '1522899970', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2285', '123.165.251.30', '1522899975', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2286', '123.165.251.30', '1522899977', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2287', '123.165.251.30', '1522899979', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2288', '123.165.251.30', '1522899980', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2289', '123.165.251.30', '1522899983', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2290', '123.165.251.30', '1522899990', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2291', '123.165.251.30', '1522899992', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2292', '123.165.251.30', '1522900022', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2293', '123.165.251.30', '1522900030', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2294', '123.165.251.30', '1522900044', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2295', '123.165.251.30', '1522900050', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2296', '123.165.251.30', '1522900092', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2297', '220.181.108.114', '1522900103', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2298', '123.165.251.30', '1522900117', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2299', '123.165.251.30', '1522900118', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2300', '123.165.251.30', '1522900148', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2301', '123.165.251.30', '1522900150', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2302', '123.165.251.30', '1522900184', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2303', '123.165.251.30', '1522900186', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2304', '123.165.251.30', '1522900196', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2305', '123.165.251.30', '1522900223', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2306', '123.165.251.30', '1522900227', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2307', '123.165.251.30', '1522900246', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2308', '123.165.251.30', '1522900251', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2309', '123.165.251.30', '1522900263', 'http://www.hrbkcwl.com/products_9.html#.', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2310', '123.165.251.30', '1522900268', 'http://www.hrbkcwl.com/products_9.html#.', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2311', '123.165.251.30', '1522900273', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2312', '123.165.251.30', '1522900315', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2313', '123.165.251.30', '1522900317', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2314', '123.165.251.30', '1522900319', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2315', '123.165.251.30', '1522900321', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2316', '123.165.251.30', '1522900323', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2317', '123.165.251.30', '1522900326', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2318', '123.165.251.30', '1522900338', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2319', '123.165.251.30', '1522900348', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2320', '123.165.251.30', '1522900352', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2321', '123.165.251.30', '1522900359', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2322', '123.165.251.30', '1522900362', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2323', '123.165.251.30', '1522900365', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2324', '123.165.251.30', '1522900369', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2325', '123.165.251.30', '1522900390', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2326', '123.165.251.30', '1522900418', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2327', '123.165.251.30', '1522900449', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2328', '123.165.251.30', '1522900451', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2329', '123.165.251.30', '1522900453', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2330', '123.165.251.30', '1522900454', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2331', '123.165.251.30', '1522900460', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2332', '123.165.251.30', '1522900470', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2333', '123.165.251.30', '1522900472', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2334', '123.165.251.30', '1522900478', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2335', '123.165.251.30', '1522900481', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2336', '123.165.251.30', '1522900491', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2337', '123.165.251.30', '1522900582', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2338', '123.165.251.30', '1522900586', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2339', '123.165.251.30', '1522900691', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2340', '123.165.251.30', '1522900696', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2341', '123.165.251.30', '1522900726', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2342', '123.165.251.30', '1522900774', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2343', '123.165.251.30', '1522900779', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2344', '123.165.251.30', '1522900782', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2345', '123.165.251.30', '1522900785', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2346', '123.165.251.30', '1522900788', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2347', '123.165.251.30', '1522900793', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2348', '123.165.251.30', '1522900797', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2349', '123.165.251.30', '1522900865', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2350', '123.165.251.30', '1522900894', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2351', '123.165.251.30', '1522900897', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2352', '123.165.251.30', '1522900898', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2353', '123.165.251.30', '1522900982', 'http://www.hrbkcwl.com/index.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2354', '123.165.251.30', '1522901147', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2355', '123.165.251.30', '1522901198', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2356', '123.165.251.30', '1522901349', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2357', '123.165.251.30', '1522901364', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2358', '123.165.251.30', '1522901642', 'http://www.hrbkcwl.com/', 'https://www.baidu.com/link?url=rF_5Oj43NpjV95SS8g1p9JYsO06_tQ8PYCv3l9oc-T5OLUux0smfO1Ror0VRzltV', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2359', '123.165.251.30', '1522901758', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2360', '123.165.251.30', '1522901764', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2361', '123.165.251.30', '1522901854', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2362', '123.165.251.30', '1522901857', 'http://www.hrbkcwl.com/contact_16.html#content', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2363', '123.165.251.30', '1522901859', 'http://www.hrbkcwl.com/contact_16.html#.', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2364', '123.165.251.30', '1522901862', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2365', '123.165.251.30', '1522901864', 'http://www.hrbkcwl.com/contact_16.html#content', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2366', '123.165.251.30', '1522901870', 'http://www.hrbkcwl.com/contact_16.html#.', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2367', '123.165.251.30', '1522901874', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2368', '123.165.251.30', '1522901912', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2369', '123.165.251.30', '1522901921', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2370', '123.165.251.30', '1522901924', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2371', '123.165.251.30', '1522902150', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2372', '123.165.251.30', '1522902162', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2373', '123.165.251.30', '1522902372', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2374', '123.165.251.30', '1522902452', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2375', '123.165.251.30', '1522902471', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2376', '123.165.251.30', '1522902604', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2377', '123.165.251.30', '1522902647', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2378', '123.165.251.30', '1522903021', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2379', '123.165.251.30', '1522903033', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2380', '123.165.251.30', '1522903112', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2381', '189.228.93.181', '1522904873', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '971064338897f18915dd8ea8263570be');
INSERT INTO `cool_visit_day` VALUES ('2382', '123.165.251.30', '1522908062', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2383', '123.165.251.30', '1522908065', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2384', '123.165.251.30', '1522908095', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2385', '123.165.251.30', '1522908448', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2386', '123.165.251.30', '1522908503', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2387', '123.165.251.30', '1522908626', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2388', '123.165.251.30', '1522908689', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2389', '123.165.251.30', '1522908725', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2390', '123.165.251.30', '1522908840', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2391', '123.165.251.30', '1522908853', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2392', '123.165.251.30', '1522909657', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2393', '123.165.251.30', '1522910058', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2394', '123.165.251.30', '1522910142', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2395', '123.165.251.30', '1522910164', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2396', '123.165.251.30', '1522910189', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2397', '123.165.251.30', '1522910194', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2398', '123.165.251.30', '1522910198', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2399', '123.165.251.30', '1522910203', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2400', '123.165.251.30', '1522910209', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2401', '123.165.251.30', '1522910211', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2402', '123.165.251.30', '1522910271', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2403', '123.165.251.30', '1522910296', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2404', '123.165.251.30', '1522910300', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2405', '123.165.251.30', '1522910303', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2406', '123.165.251.30', '1522910308', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2407', '123.165.251.30', '1522910311', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2408', '123.165.251.30', '1522910313', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2409', '123.165.251.30', '1522910321', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2410', '123.165.251.30', '1522910519', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2411', '123.165.251.30', '1522910533', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2412', '123.165.251.30', '1522910541', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2413', '123.165.251.30', '1522910546', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2414', '123.165.251.30', '1522910555', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2415', '14.215.176.16', '1522910994', 'http://www.hrbkcwl.com/', '', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2416', '123.165.251.30', '1522911611', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2417', '123.165.251.30', '1522912991', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2418', '123.165.251.30', '1522913111', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2419', '123.165.251.30', '1522913125', 'http://www.hrbkcwl.com/contact_16.html#content', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2420', '123.165.251.30', '1522913157', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2421', '123.165.251.30', '1522913158', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2422', '123.165.251.30', '1522913294', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_24_27.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2423', '123.165.251.30', '1522913777', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2424', '123.165.251.30', '1522913781', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2425', '123.165.251.30', '1522913785', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2426', '123.165.251.30', '1522913789', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2427', '123.165.251.30', '1522913793', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2428', '123.165.251.30', '1522913832', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2429', '123.165.251.30', '1522913856', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2430', '123.165.251.30', '1522914000', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2431', '123.165.251.30', '1522914028', 'http://www.hrbkcwl.com/#cbp=/caseInfo_24_27.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2432', '123.165.251.30', '1522914034', 'http://www.hrbkcwl.com/#cbp=/caseInfo_24_27.html', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2433', '123.165.251.30', '1522914052', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2434', '123.165.251.30', '1522914056', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2435', '123.165.251.30', '1522914180', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_26_28.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2436', '123.165.251.30', '1522914275', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_26_28.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2437', '123.165.251.30', '1522914892', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2438', '123.165.251.30', '1522914950', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2439', '123.165.251.30', '1522914959', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2440', '123.165.251.30', '1522915066', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2441', '123.165.251.30', '1522915640', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2442', '123.165.251.30', '1522915645', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2443', '123.165.251.30', '1522915747', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_26_28.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2444', '123.165.251.30', '1522916695', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2445', '123.165.251.30', '1522916698', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2446', '123.165.251.30', '1522916713', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2447', '123.165.251.30', '1522916731', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2448', '123.165.251.30', '1522916753', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2449', '123.165.251.30', '1522916754', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2450', '123.165.251.30', '1522916756', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2451', '123.165.251.30', '1522916775', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2452', '123.165.251.30', '1522916776', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2453', '123.165.251.30', '1522916785', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2454', '123.165.251.30', '1522917414', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2455', '123.165.251.30', '1522917465', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2456', '123.165.251.30', '1522917718', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2457', '123.165.251.30', '1522917752', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2458', '123.165.251.30', '1522917755', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2459', '123.165.251.30', '1522917786', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2460', '123.165.251.30', '1522917865', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2461', '123.165.251.30', '1522917905', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2462', '101.199.112.49', '1522917944', 'http://www.hrbkcwl.com/blog_14.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2463', '123.165.251.30', '1522917976', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2464', '123.165.251.30', '1522918073', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2465', '123.165.251.30', '1522918077', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2466', '123.165.251.30', '1522918122', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2467', '123.165.251.30', '1522918141', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2468', '123.165.251.30', '1522918246', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2469', '123.165.251.30', '1522918460', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2470', '123.165.251.30', '1522918563', 'http://www.hrbkcwl.com/index.html#content', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2471', '123.165.251.30', '1522918610', 'http://www.hrbkcwl.com/index.html#contact', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2472', '123.165.251.30', '1522918701', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2473', '123.165.251.30', '1522918708', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2474', '123.165.251.30', '1522918719', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2475', '123.165.251.30', '1522918724', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2476', '123.165.251.30', '1522918727', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2477', '123.165.251.30', '1522918732', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2478', '123.165.251.30', '1522918734', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2479', '123.165.251.30', '1522918743', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2480', '123.165.251.30', '1522918746', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2481', '123.165.251.30', '1522918747', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2482', '123.165.251.30', '1522918752', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2483', '123.165.251.30', '1522918756', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2484', '123.165.251.30', '1522919142', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2485', '123.165.251.30', '1522919144', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2486', '123.165.251.30', '1522919146', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2487', '123.165.251.30', '1522919155', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2488', '123.165.251.30', '1522919199', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2489', '123.165.251.30', '1522919440', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2490', '123.165.251.30', '1522919544', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2491', '123.165.251.30', '1522919546', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2492', '123.165.251.30', '1522919555', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2493', '123.165.251.30', '1522919559', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2494', '123.165.251.30', '1522919938', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2495', '101.199.112.55', '1522919945', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2496', '123.165.251.30', '1522919949', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2497', '123.165.251.30', '1522919950', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2498', '123.165.251.30', '1522919952', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2499', '123.165.251.30', '1522919955', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2500', '123.165.251.30', '1522919957', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2501', '123.165.251.30', '1522919958', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2502', '123.165.251.30', '1522919959', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2503', '123.165.251.30', '1522919960', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2504', '123.165.251.30', '1522919962', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2505', '123.165.251.30', '1522920061', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2506', '123.165.251.30', '1522920063', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2507', '123.165.251.30', '1522920065', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2508', '123.165.251.30', '1522920066', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2509', '123.165.251.30', '1522920067', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2510', '123.165.251.30', '1522920070', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2511', '123.165.251.30', '1522920233', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2512', '123.165.251.30', '1522920235', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2513', '123.165.251.30', '1522920236', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2514', '123.165.251.30', '1522920237', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2515', '123.165.251.30', '1522920238', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2516', '123.165.251.30', '1522920240', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2517', '123.165.251.30', '1522920244', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2518', '123.165.251.30', '1522920245', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2519', '123.165.251.30', '1522920246', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2520', '123.165.251.30', '1522920290', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2521', '123.165.251.30', '1522920364', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2522', '123.165.251.30', '1522920376', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2523', '123.165.251.30', '1522920451', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2524', '123.165.251.30', '1522920454', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2525', '123.165.251.30', '1522920456', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2526', '123.165.251.30', '1522920460', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2527', '123.165.251.30', '1522920463', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2528', '123.165.251.30', '1522920466', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2529', '123.165.251.30', '1522920467', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2530', '123.165.251.30', '1522920489', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2531', '123.165.251.30', '1522920496', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2532', '123.165.251.30', '1522920497', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2533', '123.165.251.30', '1522920499', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2534', '123.165.251.30', '1522920513', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2535', '123.165.251.30', '1522920519', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2536', '101.199.108.120', '1522920741', 'http://www.hrbkcwl.com/products_9.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2537', '123.165.251.30', '1522921580', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2538', '123.165.251.30', '1522921590', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2539', '123.165.251.30', '1522921618', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2540', '123.165.251.30', '1522921620', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2541', '123.165.251.30', '1522921621', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2542', '123.165.251.30', '1522921622', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2543', '123.165.251.30', '1522921625', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2544', '123.165.251.30', '1522921626', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2545', '123.165.251.30', '1522921630', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2546', '123.165.251.30', '1522921634', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2547', '123.165.251.30', '1522921654', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2548', '123.165.251.30', '1522921655', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2549', '123.165.251.30', '1522921658', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2550', '123.165.251.30', '1522921660', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2551', '123.165.251.30', '1522921878', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2552', '123.165.251.30', '1522921885', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2553', '123.165.251.30', '1522921906', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2554', '123.165.251.30', '1522921907', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2555', '123.165.251.30', '1522921909', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2556', '123.165.251.30', '1522922693', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2557', '123.165.251.30', '1522922695', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2558', '123.165.251.30', '1522922696', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2559', '123.165.251.30', '1522922793', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2560', '123.165.251.30', '1522922841', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2561', '123.165.251.30', '1522922842', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2562', '123.165.251.30', '1522922843', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2563', '123.165.251.30', '1522922845', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2564', '123.165.251.30', '1522922850', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2565', '123.165.251.30', '1522922855', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2566', '123.165.251.30', '1522922877', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2567', '123.165.251.30', '1522922882', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2568', '123.165.251.30', '1522922883', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2569', '123.165.251.30', '1522922908', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2570', '123.165.251.30', '1522922925', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2571', '123.165.251.30', '1522922926', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2572', '123.165.251.30', '1522922930', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2573', '123.165.251.30', '1522922950', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2574', '123.165.251.30', '1522922952', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2575', '123.165.251.30', '1522922954', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2576', '123.165.251.30', '1522922958', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2577', '123.165.251.30', '1522922959', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2578', '123.165.251.30', '1522922960', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2579', '123.165.251.30', '1522922962', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2580', '123.165.251.30', '1522922963', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2581', '123.165.251.30', '1522922965', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2582', '123.165.251.30', '1522923327', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2583', '123.165.251.30', '1522923343', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2584', '123.165.251.30', '1522923345', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2585', '123.165.251.30', '1522923346', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2586', '123.165.251.30', '1522923347', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2587', '123.165.251.30', '1522923349', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2588', '123.165.251.30', '1522923351', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2589', '123.165.251.30', '1522923354', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2590', '123.165.251.30', '1522923397', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2591', '123.165.251.30', '1522923405', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2592', '123.165.251.30', '1522923415', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2593', '123.165.251.30', '1522923417', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2594', '123.165.251.30', '1522923418', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2595', '123.165.251.30', '1522923420', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2596', '123.165.251.30', '1522923421', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2597', '123.165.251.30', '1522923482', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2598', '123.165.251.30', '1522923484', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2599', '123.165.251.30', '1522923500', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2600', '123.165.251.30', '1522923503', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2601', '123.165.251.30', '1522923505', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2602', '123.165.251.30', '1522923507', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2603', '123.165.251.30', '1522923509', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2604', '123.165.251.30', '1522923512', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2605', '123.165.251.30', '1522923516', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2606', '123.165.251.30', '1522923520', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2607', '123.165.251.30', '1522923526', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2608', '123.165.251.30', '1522923528', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2609', '123.165.251.30', '1522923560', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2610', '123.165.251.30', '1522923562', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2611', '123.165.251.30', '1522923563', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2612', '123.165.251.30', '1522923565', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2613', '123.165.251.30', '1522923568', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2614', '123.165.251.30', '1522923571', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2615', '123.165.251.30', '1522923574', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2616', '123.165.251.30', '1522923577', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2617', '123.165.251.30', '1522923579', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2618', '123.165.251.30', '1522923581', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2619', '123.165.251.30', '1522923587', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2620', '123.165.251.30', '1522923595', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2621', '123.165.251.30', '1522923617', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2622', '123.165.251.30', '1522923622', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2623', '123.165.251.30', '1522923628', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2624', '123.165.251.30', '1522923629', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2625', '123.165.251.30', '1522923630', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2626', '123.165.251.30', '1522923632', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2627', '123.165.251.30', '1522923638', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2628', '123.165.251.30', '1522923644', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2629', '123.165.251.30', '1522923646', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2630', '123.165.251.30', '1522923654', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2631', '123.165.251.30', '1522923664', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2632', '123.165.251.30', '1522923686', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2633', '123.165.251.30', '1522923690', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2634', '123.165.251.30', '1522923696', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2635', '123.165.251.30', '1522923701', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2636', '123.165.251.30', '1522923707', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2637', '123.165.251.30', '1522923708', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2638', '123.165.251.30', '1522923712', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2639', '123.165.251.30', '1522923716', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2640', '123.165.251.30', '1522923823', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2641', '123.165.251.30', '1522923826', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2642', '123.165.251.30', '1522923829', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2643', '123.165.251.30', '1522923836', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2644', '123.165.251.30', '1522923838', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2645', '123.165.251.30', '1522923839', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2646', '123.165.251.30', '1522923843', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2647', '123.165.251.30', '1522923875', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2648', '123.165.251.30', '1522923878', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2649', '123.165.251.30', '1522923879', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2650', '123.165.251.30', '1522923880', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2651', '123.165.251.30', '1522923881', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2652', '123.165.251.30', '1522923901', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2653', '123.165.251.30', '1522923906', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2654', '123.165.251.30', '1522923908', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2655', '123.165.251.30', '1522924013', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2656', '123.165.251.30', '1522924030', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2657', '123.165.251.30', '1522924082', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2658', '123.165.251.30', '1522924137', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2659', '123.165.251.30', '1522924197', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2660', '123.165.251.30', '1522924283', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2661', '123.165.251.30', '1522924322', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2662', '123.165.251.30', '1522924391', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2663', '123.165.251.30', '1522924422', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2664', '123.165.251.30', '1522924436', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2665', '123.165.251.30', '1522924447', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2666', '123.165.251.30', '1522924544', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2667', '123.165.251.30', '1522924565', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2668', '123.165.251.30', '1522924594', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2669', '123.165.251.30', '1522924641', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2670', '123.165.251.30', '1522924721', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2671', '123.165.251.30', '1522924744', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2672', '123.165.251.30', '1522924781', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2673', '123.165.251.30', '1522924788', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2674', '123.165.251.30', '1522924853', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2675', '123.165.251.30', '1522924872', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2676', '123.165.251.30', '1522924922', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2677', '123.165.251.30', '1522924932', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2678', '123.165.251.30', '1522924976', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2679', '123.165.251.30', '1522924990', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2680', '123.165.251.30', '1522925014', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2681', '123.165.251.30', '1522925016', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2682', '123.165.251.30', '1522925028', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2683', '123.165.251.30', '1522925064', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2684', '123.165.251.30', '1522925079', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2685', '123.165.251.30', '1522925083', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2686', '123.165.251.30', '1522925085', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2687', '123.165.251.30', '1522925131', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2688', '123.165.251.30', '1522925141', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2689', '123.165.251.30', '1522925165', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2690', '123.165.251.30', '1522925190', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2691', '123.165.251.30', '1522925223', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2692', '123.165.251.30', '1522925225', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2693', '123.165.251.30', '1522925251', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2694', '123.165.251.30', '1522925288', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2695', '123.165.251.30', '1522925309', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2696', '123.165.251.30', '1522925459', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2697', '117.179.5.224', '1522925746', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2698', '117.179.5.224', '1522925835', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2699', '117.179.5.224', '1522925842', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2700', '117.179.5.224', '1522925849', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2701', '117.179.5.224', '1522925855', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2702', '117.179.5.224', '1522925866', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2703', '117.179.5.224', '1522925879', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2704', '123.165.251.30', '1522927815', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2705', '123.165.251.30', '1522927872', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2706', '123.165.251.30', '1522927955', 'http://www.hrbkcwl.com/index.html#', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2707', '123.165.251.30', '1522927986', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2708', '123.165.251.30', '1522927996', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2709', '123.165.251.30', '1522928030', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2710', '123.165.251.30', '1522928037', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2711', '123.165.251.30', '1522928048', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2712', '123.165.251.30', '1522928051', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2713', '123.165.251.30', '1522928054', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2714', '123.165.251.30', '1522928061', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2715', '123.165.251.30', '1522928109', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2716', '123.165.251.30', '1522928110', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2717', '123.165.251.30', '1522928489', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2718', '123.165.251.30', '1522928506', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2719', '123.165.251.30', '1522928512', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2720', '123.165.251.30', '1522928518', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2721', '123.165.251.30', '1522928521', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2722', '123.165.251.30', '1522928525', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2723', '123.165.251.30', '1522928531', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2724', '123.165.251.30', '1522930285', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2725', '123.165.251.30', '1522930299', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2726', '123.165.251.30', '1522930486', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2727', '123.165.251.30', '1522930716', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2728', '123.165.251.30', '1522930718', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2729', '123.165.251.30', '1522935799', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2730', '123.165.251.30', '1522935807', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2731', '123.165.251.30', '1522935810', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2732', '123.165.251.30', '1522935814', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2733', '123.165.251.30', '1522935819', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2734', '123.165.251.30', '1522935935', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2735', '123.165.251.30', '1522936536', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2736', '123.165.251.30', '1522937316', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2737', '123.165.251.30', '1522937334', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2744', '117.179.5.224', '1522977339', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2745', '112.103.97.250', '1522977379', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2746', '117.179.5.224', '1522977428', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2747', '117.179.5.224', '1522977440', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2748', '117.179.5.224', '1522977468', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2749', '117.179.5.224', '1522977470', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2750', '112.103.97.250', '1522977559', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2751', '117.179.5.224', '1522977659', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2752', '117.179.5.224', '1522977664', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2753', '112.103.97.250', '1522977736', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2754', '101.199.108.52', '1522978614', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2755', '117.179.5.224', '1522981012', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2756', '117.179.5.224', '1522982377', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2757', '117.179.5.224', '1522983248', 'http://www.hrbkcwl.com/case_10.html#.', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2758', '117.179.5.224', '1522983467', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2759', '117.179.5.224', '1522983652', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2760', '181.114.82.201', '1522984600', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '1e8704b9de07d4dad42399bc9411d327');
INSERT INTO `cool_visit_day` VALUES ('2761', '112.103.97.250', '1522986675', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2762', '112.103.97.250', '1522986701', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2763', '112.103.97.250', '1522986703', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2764', '112.103.97.250', '1522986704', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2765', '112.103.97.250', '1522986705', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2766', '112.103.97.250', '1522986707', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2767', '112.103.97.250', '1522986710', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2768', '112.103.97.250', '1522986779', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2769', '112.103.97.250', '1522990915', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2770', '221.178.182.22', '1522992211', 'http://www.hrbkcwl.com/', 'http://www.sogou.com/web?query=site:tutuaiai.com  百度权重_百度权重提升_联系Q:1278774066_kyehsdl.com', '0', '0', 'MSIE', '', '', '', 'a59ea7dec8fbd9311087471c9e76f499');
INSERT INTO `cool_visit_day` VALUES ('2771', '123.125.143.11', '1523007000', 'http://www.hrbkcwl.com/', 'http://www.baidu.com/s?wd=O04S', '0', '0', 'Firefox', '', '', '', '22d8b562026492e408a8dc8cfaa00226');
INSERT INTO `cool_visit_day` VALUES ('2772', '112.103.97.250', '1523007380', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2773', '180.108.55.128', '1523021943', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '53d833aaef04677861d2e610f21f130e');
INSERT INTO `cool_visit_day` VALUES ('2774', '112.103.97.250', '1523028880', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2775', '112.103.97.250', '1523028889', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2776', '112.103.97.250', '1523028892', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2777', '112.103.97.250', '1523028895', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2778', '112.103.97.250', '1523028897', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2779', '112.103.97.250', '1523028898', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2780', '112.103.97.250', '1523028903', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2781', '112.103.97.250', '1523028905', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2782', '112.103.97.250', '1523028907', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2783', '112.103.97.250', '1523028909', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2784', '112.103.97.250', '1523028910', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2785', '112.103.97.250', '1523028946', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2793', '112.103.97.250', '1523101428', 'http://www.hrbkcwl.com/#cbp=/home__info_id_12_catId_23.html', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2794', '112.103.97.250', '1523101443', 'http://www.hrbkcwl.com/#', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2795', '112.103.97.250', '1523101480', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2796', '112.103.97.250', '1523101554', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2797', '112.103.97.250', '1523101598', 'http://www.hrbkcwl.com/#', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2798', '117.179.5.224', '1523101713', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2799', '117.179.5.224', '1523101731', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2800', '117.179.5.224', '1523101755', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2801', '117.179.5.224', '1523101765', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2802', '117.179.5.224', '1523101767', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2803', '117.179.5.224', '1523101818', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2804', '117.179.5.224', '1523101821', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2805', '117.179.5.224', '1523101822', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2806', '117.179.5.224', '1523101824', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2807', '117.179.5.224', '1523101826', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', 'abca8730dac419feca37b700e6fbfc6a');
INSERT INTO `cool_visit_day` VALUES ('2808', '112.103.97.250', '1523101915', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2809', '112.103.97.250', '1523101920', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2810', '112.103.97.250', '1523101924', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2811', '112.103.97.250', '1523101926', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2812', '112.103.97.250', '1523101929', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2813', '112.103.97.250', '1523101933', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2814', '112.103.97.250', '1523101936', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2815', '112.103.97.250', '1523103015', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2816', '220.181.132.197', '1523103166', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2823', '64.74.215.88', '1523183041', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2824', '64.74.215.88', '1523183123', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2825', '64.74.215.88', '1523183160', 'http://www.hrbkcwl.com/products_9.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2826', '64.74.215.88', '1523183201', 'http://www.hrbkcwl.com/contact_16.html#content', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2827', '64.74.215.88', '1523183243', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2828', '64.74.215.88', '1523183347', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2829', '64.74.215.88', '1523183393', 'http://www.hrbkcwl.com/blog_14.html', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2830', '64.74.215.88', '1523183560', 'http://www.hrbkcwl.com/index.html#contact', '', '0', '0', 'Safari', '', '', '', 'fbe801d7d693516ebb68a25b376c787a');
INSERT INTO `cool_visit_day` VALUES ('2836', '123.165.255.103', '1523223520', 'http://www.hrbkcwl.com/', '', '0', '0', 'Other', '', '', '', '82c91717c024e0d8b3e85125ba793f8c');
INSERT INTO `cool_visit_day` VALUES ('2837', '123.165.255.103', '1523223562', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2838', '123.165.255.103', '1523223567', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2839', '123.165.255.103', '1523223706', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2840', '123.165.255.103', '1523223869', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2841', '123.165.255.103', '1523223871', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2842', '123.165.255.103', '1523223874', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2843', '123.165.255.103', '1523223877', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2844', '123.165.255.103', '1523223878', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2845', '123.165.255.103', '1523223879', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2846', '123.165.255.103', '1523223881', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2847', '123.165.255.103', '1523223890', 'http://www.hrbkcwl.com/index.html', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2848', '123.165.255.103', '1523223947', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2849', '123.165.255.103', '1523223950', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2850', '123.165.255.103', '1523223953', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2851', '123.165.255.103', '1523223955', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2852', '123.165.255.103', '1523223958', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2853', '123.165.255.103', '1523223961', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2854', '123.165.255.103', '1523223965', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2855', '123.165.255.103', '1523223982', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2856', '123.165.255.103', '1523223983', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2857', '123.165.255.103', '1523223984', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2858', '123.165.255.103', '1523223986', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2859', '123.165.255.103', '1523223987', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2860', '123.165.255.103', '1523223988', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2861', '123.165.255.103', '1523223990', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2862', '123.165.255.103', '1523223996', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2863', '123.165.255.103', '1523223999', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2864', '123.165.255.103', '1523224000', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2865', '123.165.255.103', '1523224001', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2866', '123.165.255.103', '1523224002', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2867', '123.165.255.103', '1523224004', 'http://www.hrbkcwl.com/contact_16.html', 'http://www.hrbkcwl.com/blog_14.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2868', '123.165.255.103', '1523224005', 'http://www.hrbkcwl.com/index.html', 'http://www.hrbkcwl.com/contact_16.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2869', '101.199.108.50', '1523224009', 'http://www.hrbkcwl.com/blog_14.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2870', '101.199.108.120', '1523224033', 'http://www.hrbkcwl.com/contact_16.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2871', '220.181.132.194', '1523224038', 'http://www.hrbkcwl.com/about_2.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2872', '101.199.108.59', '1523224053', 'http://www.hrbkcwl.com/products_9.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2873', '220.181.132.195', '1523224054', 'http://www.hrbkcwl.com/services_13.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2874', '101.199.108.55', '1523224072', 'http://www.hrbkcwl.com/case_10.html', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2875', '123.165.255.103', '1523227679', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/index.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2876', '123.165.255.103', '1523227681', 'http://www.hrbkcwl.com/products_9.html', 'http://www.hrbkcwl.com/about_2.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2877', '123.165.255.103', '1523227682', 'http://www.hrbkcwl.com/case_10.html', 'http://www.hrbkcwl.com/products_9.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2878', '123.165.255.103', '1523227684', 'http://www.hrbkcwl.com/services_13.html', 'http://www.hrbkcwl.com/case_10.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2879', '123.165.255.103', '1523227686', 'http://www.hrbkcwl.com/blog_14.html', 'http://www.hrbkcwl.com/services_13.html', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2883', '220.181.132.195', '1523364652', 'http://www.hrbkcwl.com/', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2884', '123.165.255.103', '1523371455', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('2885', '42.156.137.102', '1523374294', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '0a27cbfa9ee9dc439201fff18e82f354');
INSERT INTO `cool_visit_day` VALUES ('2886', '101.199.108.51', '1523374658', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', 'e2f13a92cdc0d51f5fd7acccb397792b');
INSERT INTO `cool_visit_day` VALUES ('2904', '191.187.4.71', '1523442334', 'http://www.hrbkcwl.com/', 'http://hrbkcwl.com.seocheckupx.net/try.php?u=http://hrbkcwl.com', '0', '0', 'Chrome', '', '', '', '9f4974d1e1fb3483f9949c4b6020d33d');
INSERT INTO `cool_visit_day` VALUES ('2905', '117.179.5.219', '1523445707', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2906', '117.179.5.219', '1523445709', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '084060e99ac04bc025f74bb350716c06');
INSERT INTO `cool_visit_day` VALUES ('2907', '111.206.221.87', '1523447802', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2908', '111.206.221.11', '1523447820', 'http://www.hrbkcwl.com/', '', '0', '0', 'Safari', '', '', '', '56ab9f8fa438dd2485e29360ee827a12');
INSERT INTO `cool_visit_day` VALUES ('2909', '121.5.156.55', '1523448521', 'http://www.hrbkcwl.com/?from=singlemessage', '', '0', '0', 'Other', '', '', '', 'b73985a3ef9219f83a79c12b27a85fd4');
INSERT INTO `cool_visit_day` VALUES ('2910', '103.87.130.133', '1523453122', 'http://www.hrbkcwl.com/', '', '0', '0', 'Chrome', '', '', '', '061e326a95080c83f7bddf76358463ef');
INSERT INTO `cool_visit_day` VALUES ('2911', '123.165.255.103', '1523460820', 'http://www.hrbkcwl.com/about_2.html', 'http://www.hrbkcwl.com/', '0', '0', 'Chrome', '', '', '', '61c7954fc8d81538b10f4051c084eddb');
INSERT INTO `cool_visit_day` VALUES ('3210', '127.0.0.1', '1527301562', 'http://hrbkcwl.local.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3211', '127.0.0.1', '1527301578', 'http://hrbkcwl.local.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3212', '127.0.0.1', '1527301614', 'http://hrbkcwl.local.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3213', '127.0.0.1', '1527303727', 'http://hrbkcwl.local.com/', '', '0', '0', 'Chrome', '', '', '', '2efc806fb74e7f8c5ddbacde358940b8');
INSERT INTO `cool_visit_day` VALUES ('3216', '127.0.0.1', '1527389619', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3217', '127.0.0.1', '1527389681', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3218', '127.0.0.1', '1527389686', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3219', '127.0.0.1', '1527389700', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3220', '127.0.0.1', '1527389702', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3221', '127.0.0.1', '1527389727', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3222', '127.0.0.1', '1527389809', 'http://coolphp.local.com/about_2.html', 'http://coolphp.local.com/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3223', '127.0.0.1', '1527391524', 'http://coolphp.local.com/', '', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3224', '127.0.0.1', '1527391530', 'http://coolphp.local.com/', '', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3225', '127.0.0.1', '1527422656', 'http://coolphp.local.com/index_index.html', 'http://coolphp.local.com/admin/Addons/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3226', '127.0.0.1', '1527423059', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3227', '127.0.0.1', '1527423100', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3228', '127.0.0.1', '1527423164', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3229', '127.0.0.1', '1527423291', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3230', '127.0.0.1', '1527423298', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3231', '127.0.0.1', '1527423381', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3232', '127.0.0.1', '1527423404', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3233', '127.0.0.1', '1527423494', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3234', '127.0.0.1', '1527423534', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3235', '127.0.0.1', '1527423562', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3236', '127.0.0.1', '1527423593', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3237', '127.0.0.1', '1527423603', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3238', '127.0.0.1', '1527423664', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3239', '127.0.0.1', '1527423675', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3240', '127.0.0.1', '1527423687', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3241', '127.0.0.1', '1527423703', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3242', '127.0.0.1', '1527423711', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3243', '127.0.0.1', '1527423780', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3244', '127.0.0.1', '1527423793', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3245', '127.0.0.1', '1527423804', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3246', '127.0.0.1', '1527423808', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3247', '127.0.0.1', '1527424208', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3248', '127.0.0.1', '1527424218', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3249', '127.0.0.1', '1527424229', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3250', '127.0.0.1', '1527424239', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3251', '127.0.0.1', '1527424311', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3252', '127.0.0.1', '1527424314', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3253', '127.0.0.1', '1527424329', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3254', '127.0.0.1', '1527424342', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3255', '127.0.0.1', '1527424354', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3256', '127.0.0.1', '1527424582', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3257', '127.0.0.1', '1527424599', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3258', '127.0.0.1', '1527424650', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3259', '127.0.0.1', '1527424679', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3260', '127.0.0.1', '1527424751', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3261', '127.0.0.1', '1527424763', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3262', '127.0.0.1', '1527425126', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3263', '127.0.0.1', '1527425129', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3264', '127.0.0.1', '1527427494', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3265', '127.0.0.1', '1527429142', 'http://coolphp.local.com/index.html', 'http://coolphp.local.com/admin/index/index.html', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');
INSERT INTO `cool_visit_day` VALUES ('3266', '127.0.0.1', '1527430662', 'http://coolphp.local.com/index_index.html', '', '0', '0', 'Chrome', '', '', '', 'b95a6bd3fdca360352b87616f4a981ff');

-- ----------------------------
-- Table structure for cool_visit_detail
-- ----------------------------
DROP TABLE IF EXISTS `cool_visit_detail`;
CREATE TABLE `cool_visit_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `uv` int(11) NOT NULL DEFAULT '0',
  `ip` int(11) NOT NULL DEFAULT '0',
  `alone` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` int(1) NOT NULL DEFAULT '0',
  `columnid` int(11) NOT NULL DEFAULT '0',
  `listid` int(11) NOT NULL DEFAULT '0',
  `stattime` int(11) NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=753 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_visit_detail
-- ----------------------------
INSERT INTO `cool_visit_detail` VALUES ('23', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1511625600', '');
INSERT INTO `cool_visit_detail` VALUES ('24', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1511625600', '');
INSERT INTO `cool_visit_detail` VALUES ('25', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1511625600', '');
INSERT INTO `cool_visit_detail` VALUES ('26', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1511625600', '');
INSERT INTO `cool_visit_detail` VALUES ('27', 'http://www.hrbkcwl.com/services_13.html', '2', '1', '1', '0', '', '0', '0', '0', '1511625600', '');
INSERT INTO `cool_visit_detail` VALUES ('28', 'http://www.hrbkcwl.com/', '12', '10', '9', '0', '', '0', '0', '0', '1511712000', '');
INSERT INTO `cool_visit_detail` VALUES ('29', 'http://www.hrbkcwl.com/index.html', '2', '2', '1', '0', '', '0', '0', '0', '1511712000', '');
INSERT INTO `cool_visit_detail` VALUES ('30', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1511712000', '');
INSERT INTO `cool_visit_detail` VALUES ('31', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1511712000', '');
INSERT INTO `cool_visit_detail` VALUES ('32', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1511712000', '');
INSERT INTO `cool_visit_detail` VALUES ('33', 'http://www.hrbkcwl.com/', '12', '8', '8', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('34', 'http://www.hrbkcwl.com/index.html', '8', '2', '2', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('35', 'http://www.hrbkcwl.com/blog_14.html', '4', '1', '1', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('36', 'http://www.hrbkcwl.com/home__index_catId_18.html', '4', '1', '1', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('37', 'http://localhost:8088/', '1', '1', '1', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('38', 'http://www.hrbkcwl.com/blogInfo_4_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('39', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1511798400', '');
INSERT INTO `cool_visit_detail` VALUES ('40', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('41', 'http://www.hrbkcwl.com/blogInfo_2_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('42', 'http://www.hrbkcwl.com/about_2.html', '2', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('43', 'http://www.hrbkcwl.com/about_2.html#', '1', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('44', 'http://www.hrbkcwl.com/products_9.html', '2', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('45', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('46', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('47', 'http://www.hrbkcwl.com/blog_14.html', '7', '3', '3', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('48', 'http://www.hrbkcwl.com/blogInfo_4_18.html', '9', '3', '3', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('49', 'http://www.hrbkcwl.com/home__index_catId_18.html', '3', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('50', 'http://www.hrbkcwl.com/blog_18.html', '5', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('51', 'http://www.hrbkcwl.com/blog_19.html', '3', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('52', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '7', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('53', 'http://www.hrbkcwl.com/index.html', '4', '2', '2', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('54', 'http://www.hrbkcwl.com/blog_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('55', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1511884800', '');
INSERT INTO `cool_visit_detail` VALUES ('56', 'http://www.hrbkcwl.com/', '15', '12', '11', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('57', 'http://www.hrbkcwl.com/blog_14.html', '6', '2', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('58', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '4', '3', '2', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('59', 'http://www.hrbkcwl.com/blogInfo_3_17.html', '3', '2', '2', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('60', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('61', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('62', 'http://www.hrbkcwl.com/index.html', '4', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('63', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '4', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('64', 'http://www.hrbkcwl.com/blog_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('65', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('66', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1511971200', '');
INSERT INTO `cool_visit_detail` VALUES ('67', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('68', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '3', '2', '2', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('69', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('70', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('71', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('72', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('73', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512057600', '');
INSERT INTO `cool_visit_detail` VALUES ('74', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1512144000', '');
INSERT INTO `cool_visit_detail` VALUES ('75', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1512144000', '');
INSERT INTO `cool_visit_detail` VALUES ('76', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512144000', '');
INSERT INTO `cool_visit_detail` VALUES ('77', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1512144000', '');
INSERT INTO `cool_visit_detail` VALUES ('78', 'http://www.hrbkcwl.com/blogInfo_2_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1512144000', '');
INSERT INTO `cool_visit_detail` VALUES ('79', 'http://www.hrbkcwl.com/', '9', '9', '9', '0', '', '0', '0', '0', '1512230400', '');
INSERT INTO `cool_visit_detail` VALUES ('80', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512230400', '');
INSERT INTO `cool_visit_detail` VALUES ('81', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1512230400', '');
INSERT INTO `cool_visit_detail` VALUES ('82', 'http://www.hrbkcwl.com/products_9.html', '2', '1', '1', '0', '', '0', '0', '0', '1512230400', '');
INSERT INTO `cool_visit_detail` VALUES ('83', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1512230400', '');
INSERT INTO `cool_visit_detail` VALUES ('84', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1512316800', '');
INSERT INTO `cool_visit_detail` VALUES ('85', 'http://www.hrbkcwl.com/home__index_catId_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1512316800', '');
INSERT INTO `cool_visit_detail` VALUES ('86', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512403200', '');
INSERT INTO `cool_visit_detail` VALUES ('87', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1512403200', '');
INSERT INTO `cool_visit_detail` VALUES ('88', 'http://www.hrbkcwl.com/blog_14.html', '3', '1', '1', '0', '', '0', '0', '0', '1512403200', '');
INSERT INTO `cool_visit_detail` VALUES ('89', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '2', '1', '1', '0', '', '0', '0', '0', '1512403200', '');
INSERT INTO `cool_visit_detail` VALUES ('90', 'http://www.hrbkcwl.com/', '23', '16', '14', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('91', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '3', '2', '1', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('92', 'http://www.hrbkcwl.com/index.html', '5', '3', '3', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('93', 'http://www.hrbkcwl.com/about_2.html', '5', '3', '3', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('94', 'http://www.hrbkcwl.com/products_9.html', '3', '2', '2', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('95', 'http://www.hrbkcwl.com/case_10.html', '5', '3', '3', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('96', 'http://www.hrbkcwl.com/services_13.html', '4', '2', '2', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('97', 'http://www.hrbkcwl.com/blog_14.html', '5', '3', '2', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('98', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('99', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '3', '3', '2', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('100', 'http://www.hrbkcwl.com/services_13.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('101', 'http://www.hrbkcwl.com/contact_16.html', '5', '4', '4', '0', '', '0', '0', '0', '1512489600', '');
INSERT INTO `cool_visit_detail` VALUES ('102', 'http://www.hrbkcwl.com/', '9', '9', '9', '0', '', '0', '0', '0', '1512576000', '');
INSERT INTO `cool_visit_detail` VALUES ('103', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1512576000', '');
INSERT INTO `cool_visit_detail` VALUES ('104', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1512576000', '');
INSERT INTO `cool_visit_detail` VALUES ('105', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1512576000', '');
INSERT INTO `cool_visit_detail` VALUES ('106', 'http://www.hrbkcwl.com/?card_id=pjAxC0zw9AMG0lfvO6KIIoQxiahk', '1', '1', '1', '0', '', '0', '0', '0', '1512576000', '');
INSERT INTO `cool_visit_detail` VALUES ('107', 'http://www.hrbkcwl.com/', '10', '10', '10', '0', '', '0', '0', '0', '1512662400', '');
INSERT INTO `cool_visit_detail` VALUES ('108', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1512662400', '');
INSERT INTO `cool_visit_detail` VALUES ('109', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512662400', '');
INSERT INTO `cool_visit_detail` VALUES ('110', 'http://www.hrbkcwl.com/', '15', '11', '10', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('111', 'http://www.hrbkcwl.com/index.html', '4', '3', '2', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('112', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('113', 'http://www.hrbkcwl.com/products_9.html', '5', '3', '2', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('114', 'http://www.hrbkcwl.com/case_10.html', '3', '3', '2', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('115', 'http://www.hrbkcwl.com/services_13.html', '4', '3', '2', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('116', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('117', 'http://www.hrbkcwl.com/contact_16.html', '4', '3', '2', '0', '', '0', '0', '0', '1512748800', '');
INSERT INTO `cool_visit_detail` VALUES ('118', 'http://www.hrbkcwl.com/', '25', '7', '6', '0', '', '0', '0', '0', '1512835200', '');
INSERT INTO `cool_visit_detail` VALUES ('119', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1512835200', '');
INSERT INTO `cool_visit_detail` VALUES ('120', 'http://www.hrbkcwl.com/', '8', '7', '7', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('121', 'http://www.hrbkcwl.com/?card_id=pjAxC0zw9AMG0lfvO6KIIoQxiahk', '7', '3', '3', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('122', 'http://www.hrbkcwl.com/blogInfo_4_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('123', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('124', 'http://www.hrbkcwl.com/products_9.html', '3', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('125', 'http://www.hrbkcwl.com/case_10.html', '3', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('126', 'http://www.hrbkcwl.com/services_13.html', '3', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('127', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('128', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('129', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1512921600', '');
INSERT INTO `cool_visit_detail` VALUES ('130', 'http://www.hrbkcwl.com/', '13', '11', '11', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('131', 'http://www.hrbkcwl.com/about_2.html', '2', '2', '2', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('132', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('133', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('134', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('135', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('136', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('137', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('138', 'http://www.hrbkcwl.com/blogInfo_3_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1513008000', '');
INSERT INTO `cool_visit_detail` VALUES ('139', 'http://www.hrbkcwl.com/', '10', '8', '8', '0', '', '0', '0', '0', '1513094400', '');
INSERT INTO `cool_visit_detail` VALUES ('140', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1513094400', '');
INSERT INTO `cool_visit_detail` VALUES ('141', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513094400', '');
INSERT INTO `cool_visit_detail` VALUES ('142', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1513094400', '');
INSERT INTO `cool_visit_detail` VALUES ('143', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1513094400', '');
INSERT INTO `cool_visit_detail` VALUES ('144', 'http://www.hrbkcwl.com/', '13', '12', '11', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('145', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('146', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('147', 'http://www.hrbkcwl.com/case_10.html', '2', '2', '2', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('148', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('149', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('150', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('151', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1513180800', '');
INSERT INTO `cool_visit_detail` VALUES ('152', 'http://www.hrbkcwl.com/', '18', '14', '14', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('153', 'http://www.hrbkcwl.com/about_2.html', '4', '3', '3', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('154', 'http://www.hrbkcwl.com/case_10.html', '2', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('155', 'http://www.hrbkcwl.com/blog_14.html', '15', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('156', 'http://www.hrbkcwl.com/blogInfo_2_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('157', 'http://www.hrbkcwl.com/blogInfo_3_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('158', 'http://www.hrbkcwl.com/blogInfo_4_18.html', '2', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('159', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '3', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('160', 'http://www.hrbkcwl.com/index.html', '18', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('161', 'http://www.hrbkcwl.com/blog_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('162', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '3', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('163', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('164', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '4', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('165', 'http://www.hrbkcwl.com/index.html#.', '3', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('166', 'http://www.hrbkcwl.com/home_hyxw_info_id_2_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('167', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('168', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '3', '2', '2', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('169', 'http://www.hrbkcwl.com/blog_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1513267200', '');
INSERT INTO `cool_visit_detail` VALUES ('170', 'http://www.hrbkcwl.com/', '15', '10', '9', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('171', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('172', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('173', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('174', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('175', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('176', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('177', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('178', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1513353600', '');
INSERT INTO `cool_visit_detail` VALUES ('179', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1513440000', '');
INSERT INTO `cool_visit_detail` VALUES ('180', 'http://www.hrbkcwl.com/blog_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1513440000', '');
INSERT INTO `cool_visit_detail` VALUES ('181', 'http://www.hrbkcwl.com/', '9', '9', '8', '0', '', '0', '0', '0', '1513526400', '');
INSERT INTO `cool_visit_detail` VALUES ('182', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1513526400', '');
INSERT INTO `cool_visit_detail` VALUES ('183', 'http://www.hrbkcwl.com/', '9', '8', '8', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('184', 'http://www.hrbkcwl.com/about_2.html', '4', '3', '2', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('185', 'http://www.hrbkcwl.com/products_9.html', '2', '2', '2', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('186', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('187', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('188', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1513612800', '');
INSERT INTO `cool_visit_detail` VALUES ('189', 'http://www.hrbkcwl.com/', '9', '8', '8', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('190', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('191', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('192', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('193', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('194', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('195', 'http://www.hrbkcwl.com/contact_16.html', '3', '2', '2', '0', '', '0', '0', '0', '1513699200', '');
INSERT INTO `cool_visit_detail` VALUES ('196', 'http://www.hrbkcwl.com/', '11', '8', '8', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('197', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('198', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('199', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('200', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('201', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('202', 'http://www.hrbkcwl.com/contact_16.html', '2', '2', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('203', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1513785600', '');
INSERT INTO `cool_visit_detail` VALUES ('204', 'http://www.hrbkcwl.com/', '32', '17', '17', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('205', 'http://www.hrbkcwl.com/about_2.html', '6', '3', '3', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('206', 'http://www.hrbkcwl.com/index.html', '4', '3', '3', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('207', 'http://www.hrbkcwl.com/case_10.html', '4', '2', '2', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('208', 'http://www.hrbkcwl.com/contact_16.html', '2', '2', '2', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('209', 'http://www.hrbkcwl.com/blog_14.html', '3', '2', '2', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('210', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('211', 'http://www.hrbkcwl.com/products_9.html', '8', '3', '3', '0', '', '0', '0', '0', '1513872000', '');
INSERT INTO `cool_visit_detail` VALUES ('212', 'http://www.hrbkcwl.com/', '13', '11', '11', '0', '', '0', '0', '0', '1513958400', '');
INSERT INTO `cool_visit_detail` VALUES ('213', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1513958400', '');
INSERT INTO `cool_visit_detail` VALUES ('214', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1513958400', '');
INSERT INTO `cool_visit_detail` VALUES ('215', 'http://www.hrbkcwl.com/index.html', '2', '2', '2', '0', '', '0', '0', '0', '1513958400', '');
INSERT INTO `cool_visit_detail` VALUES ('216', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1513958400', '');
INSERT INTO `cool_visit_detail` VALUES ('217', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1514044800', '');
INSERT INTO `cool_visit_detail` VALUES ('218', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1514044800', '');
INSERT INTO `cool_visit_detail` VALUES ('219', 'http://www.hrbkcwl.com/', '10', '9', '9', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('220', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('221', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('222', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('223', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('224', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('225', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1514131200', '');
INSERT INTO `cool_visit_detail` VALUES ('226', 'http://www.hrbkcwl.com/', '12', '10', '10', '0', '', '0', '0', '0', '1514217600', '');
INSERT INTO `cool_visit_detail` VALUES ('227', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1514217600', '');
INSERT INTO `cool_visit_detail` VALUES ('228', 'http://www.hrbkcwl.com/', '14', '10', '8', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('229', 'http://www.hrbkcwl.com/index.html', '5', '2', '2', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('230', 'http://www.hrbkcwl.com/blog_14.html', '2', '2', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('231', 'http://www.hrbkcwl.com/blog_17.html', '3', '2', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('232', 'http://www.hrbkcwl.com/blogInfo_1_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('233', 'http://www.hrbkcwl.com/blogInfo_1_17.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('234', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '2', '2', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('235', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('236', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('237', 'http://www.hrbkcwl.com/blogInfo_3_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1514304000', '');
INSERT INTO `cool_visit_detail` VALUES ('238', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1514390400', '');
INSERT INTO `cool_visit_detail` VALUES ('239', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1514476800', '');
INSERT INTO `cool_visit_detail` VALUES ('240', 'http://www.hrbkcwl.com/', '7', '5', '5', '0', '', '0', '0', '0', '1514563200', '');
INSERT INTO `cool_visit_detail` VALUES ('241', 'http://www.hrbkcwl.com/', '9', '7', '7', '0', '', '0', '0', '0', '1514649600', '');
INSERT INTO `cool_visit_detail` VALUES ('242', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('243', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('244', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('245', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('246', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('247', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('248', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('249', 'http://www.hrbkcwl.com/index.html', '2', '1', '1', '0', '', '0', '0', '0', '1514736000', '');
INSERT INTO `cool_visit_detail` VALUES ('250', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1514822400', '');
INSERT INTO `cool_visit_detail` VALUES ('251', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1514908800', '');
INSERT INTO `cool_visit_detail` VALUES ('252', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1514908800', '');
INSERT INTO `cool_visit_detail` VALUES ('253', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1514908800', '');
INSERT INTO `cool_visit_detail` VALUES ('254', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1514995200', '');
INSERT INTO `cool_visit_detail` VALUES ('255', 'http://www.hrbkcwl.com/', '8', '8', '7', '0', '', '0', '0', '0', '1515081600', '');
INSERT INTO `cool_visit_detail` VALUES ('256', 'http://www.hrbkcwl.com/blog_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1515081600', '');
INSERT INTO `cool_visit_detail` VALUES ('257', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1515168000', '');
INSERT INTO `cool_visit_detail` VALUES ('258', 'http://www.hrbkcwl.com/blog_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1515168000', '');
INSERT INTO `cool_visit_detail` VALUES ('259', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1515254400', '');
INSERT INTO `cool_visit_detail` VALUES ('260', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1515254400', '');
INSERT INTO `cool_visit_detail` VALUES ('261', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1515254400', '');
INSERT INTO `cool_visit_detail` VALUES ('262', 'http://www.hrbkcwl.com/blog_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1515254400', '');
INSERT INTO `cool_visit_detail` VALUES ('263', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1515340800', '');
INSERT INTO `cool_visit_detail` VALUES ('264', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1515427200', '');
INSERT INTO `cool_visit_detail` VALUES ('265', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1515427200', '');
INSERT INTO `cool_visit_detail` VALUES ('266', 'http://www.hrbkcwl.com/', '10', '9', '9', '0', '', '0', '0', '0', '1515513600', '');
INSERT INTO `cool_visit_detail` VALUES ('267', 'http://www.hrbkcwl.com/products_9.html', '4', '2', '2', '0', '', '0', '0', '0', '1515513600', '');
INSERT INTO `cool_visit_detail` VALUES ('268', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1515513600', '');
INSERT INTO `cool_visit_detail` VALUES ('269', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1515513600', '');
INSERT INTO `cool_visit_detail` VALUES ('270', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1515513600', '');
INSERT INTO `cool_visit_detail` VALUES ('271', 'http://www.hrbkcwl.com/', '11', '10', '9', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('272', 'http://www.hrbkcwl.com/contact_16.html', '6', '4', '4', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('273', 'http://www.hrbkcwl.com/about_2.html', '8', '3', '3', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('274', 'http://www.hrbkcwl.com/products_9.html', '6', '2', '2', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('275', 'http://www.hrbkcwl.com/case_10.html', '5', '2', '2', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('276', 'http://www.hrbkcwl.com/services_13.html', '5', '2', '2', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('277', 'http://www.hrbkcwl.com/blog_14.html', '4', '1', '1', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('278', 'http://www.hrbkcwl.com/index.html', '6', '2', '2', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('279', 'http://www.hrbkcwl.com/contact_16.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1515600000', '');
INSERT INTO `cool_visit_detail` VALUES ('280', 'http://www.hrbkcwl.com/', '13', '12', '12', '0', '', '0', '0', '0', '1515686400', '');
INSERT INTO `cool_visit_detail` VALUES ('281', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1515686400', '');
INSERT INTO `cool_visit_detail` VALUES ('282', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1515686400', '');
INSERT INTO `cool_visit_detail` VALUES ('283', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1515686400', '');
INSERT INTO `cool_visit_detail` VALUES ('284', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1515686400', '');
INSERT INTO `cool_visit_detail` VALUES ('285', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1515772800', '');
INSERT INTO `cool_visit_detail` VALUES ('286', 'http://www.hrbkcwl.com/blog_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1515772800', '');
INSERT INTO `cool_visit_detail` VALUES ('287', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1515772800', '');
INSERT INTO `cool_visit_detail` VALUES ('288', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1515859200', '');
INSERT INTO `cool_visit_detail` VALUES ('289', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1515859200', '');
INSERT INTO `cool_visit_detail` VALUES ('290', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1515859200', '');
INSERT INTO `cool_visit_detail` VALUES ('291', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1515945600', '');
INSERT INTO `cool_visit_detail` VALUES ('292', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1515945600', '');
INSERT INTO `cool_visit_detail` VALUES ('293', 'http://www.hrbkcwl.com/blog_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1515945600', '');
INSERT INTO `cool_visit_detail` VALUES ('294', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1516032000', '');
INSERT INTO `cool_visit_detail` VALUES ('295', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1516032000', '');
INSERT INTO `cool_visit_detail` VALUES ('296', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1516118400', '');
INSERT INTO `cool_visit_detail` VALUES ('297', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1516118400', '');
INSERT INTO `cool_visit_detail` VALUES ('298', 'http://www.hrbkcwl.com/contact_16.html', '2', '1', '1', '0', '', '0', '0', '0', '1516118400', '');
INSERT INTO `cool_visit_detail` VALUES ('299', 'http://www.hrbkcwl.com/', '9', '7', '5', '0', '', '0', '0', '0', '1516204800', '');
INSERT INTO `cool_visit_detail` VALUES ('300', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1516204800', '');
INSERT INTO `cool_visit_detail` VALUES ('301', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1516204800', '');
INSERT INTO `cool_visit_detail` VALUES ('302', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1516204800', '');
INSERT INTO `cool_visit_detail` VALUES ('303', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1516204800', '');
INSERT INTO `cool_visit_detail` VALUES ('304', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1516291200', '');
INSERT INTO `cool_visit_detail` VALUES ('305', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1516377600', '');
INSERT INTO `cool_visit_detail` VALUES ('306', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1516377600', '');
INSERT INTO `cool_visit_detail` VALUES ('307', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1516464000', '');
INSERT INTO `cool_visit_detail` VALUES ('308', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1516464000', '');
INSERT INTO `cool_visit_detail` VALUES ('309', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1516464000', '');
INSERT INTO `cool_visit_detail` VALUES ('310', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1516550400', '');
INSERT INTO `cool_visit_detail` VALUES ('311', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1516550400', '');
INSERT INTO `cool_visit_detail` VALUES ('312', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1516550400', '');
INSERT INTO `cool_visit_detail` VALUES ('313', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1516636800', '');
INSERT INTO `cool_visit_detail` VALUES ('314', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '2', '2', '2', '0', '', '0', '0', '0', '1516636800', '');
INSERT INTO `cool_visit_detail` VALUES ('315', 'http://www.hrbkcwl.com/', '7', '6', '6', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('316', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('317', 'http://www.hrbkcwl.com/products_9.html', '3', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('318', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('319', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('320', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('321', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1516723200', '');
INSERT INTO `cool_visit_detail` VALUES ('322', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1516809600', '');
INSERT INTO `cool_visit_detail` VALUES ('323', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1516809600', '');
INSERT INTO `cool_visit_detail` VALUES ('324', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1516809600', '');
INSERT INTO `cool_visit_detail` VALUES ('325', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1516896000', '');
INSERT INTO `cool_visit_detail` VALUES ('326', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1516896000', '');
INSERT INTO `cool_visit_detail` VALUES ('327', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1516982400', '');
INSERT INTO `cool_visit_detail` VALUES ('328', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1516982400', '');
INSERT INTO `cool_visit_detail` VALUES ('329', 'http://www.hrbkcwl.com/index.html', '2', '1', '1', '0', '', '0', '0', '0', '1516982400', '');
INSERT INTO `cool_visit_detail` VALUES ('330', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1516982400', '');
INSERT INTO `cool_visit_detail` VALUES ('331', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1517068800', '');
INSERT INTO `cool_visit_detail` VALUES ('332', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1517068800', '');
INSERT INTO `cool_visit_detail` VALUES ('333', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1517068800', '');
INSERT INTO `cool_visit_detail` VALUES ('334', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1517068800', '');
INSERT INTO `cool_visit_detail` VALUES ('335', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1517068800', '');
INSERT INTO `cool_visit_detail` VALUES ('336', 'http://www.hrbkcwl.com/', '12', '8', '7', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('337', 'http://www.hrbkcwl.com/index.html', '13', '3', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('338', 'http://www.hrbkcwl.com/case_10.html', '8', '3', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('339', 'http://www.hrbkcwl.com/blog_14.html', '7', '2', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('340', 'http://www.hrbkcwl.com/blog_30.html', '2', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('341', 'http://www.hrbkcwl.com/home_hyxw_info_id_2_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('342', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '3', '2', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('343', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('344', 'http://www.hrbkcwl.com/products_9.html', '9', '3', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('345', 'http://www.hrbkcwl.com/blogInfo_2_17.html', '2', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('346', 'http://www.hrbkcwl.com/blogInfo_3_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('347', 'http://www.hrbkcwl.com/blog_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('348', 'http://www.hrbkcwl.com/about_2.html', '3', '3', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('349', 'http://www.hrbkcwl.com/services_13.html', '4', '3', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('350', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('351', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '5', '2', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('352', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('353', 'http://www.hrbkcwl.com/contact_16.html', '2', '2', '2', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('354', 'http://www.hrbkcwl.com/products_9.html#.', '3', '1', '1', '0', '', '0', '0', '0', '1517155200', '');
INSERT INTO `cool_visit_detail` VALUES ('355', 'http://www.hrbkcwl.com/', '7', '6', '6', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('356', 'http://www.hrbkcwl.com/contact_16.html', '4', '3', '3', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('357', 'http://www.hrbkcwl.com/blog_14.html', '2', '2', '2', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('358', 'http://www.hrbkcwl.com/#.', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('359', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('360', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('361', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('362', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('363', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1517241600', '');
INSERT INTO `cool_visit_detail` VALUES ('364', 'http://www.hrbkcwl.com/blogInfo_1_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1517328000', '');
INSERT INTO `cool_visit_detail` VALUES ('365', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1517328000', '');
INSERT INTO `cool_visit_detail` VALUES ('366', 'http://www.hrbkcwl.com/', '7', '6', '6', '0', '', '0', '0', '0', '1517328000', '');
INSERT INTO `cool_visit_detail` VALUES ('367', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1517328000', '');
INSERT INTO `cool_visit_detail` VALUES ('368', 'http://www.hrbkcwl.com/', '10', '8', '8', '0', '', '0', '0', '0', '1517414400', '');
INSERT INTO `cool_visit_detail` VALUES ('369', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1517414400', '');
INSERT INTO `cool_visit_detail` VALUES ('370', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1517500800', '');
INSERT INTO `cool_visit_detail` VALUES ('371', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1517587200', '');
INSERT INTO `cool_visit_detail` VALUES ('372', 'http://www.hrbkcwl.com/', '7', '6', '6', '0', '', '0', '0', '0', '1517587200', '');
INSERT INTO `cool_visit_detail` VALUES ('373', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1517587200', '');
INSERT INTO `cool_visit_detail` VALUES ('374', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1517673600', '');
INSERT INTO `cool_visit_detail` VALUES ('375', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1517673600', '');
INSERT INTO `cool_visit_detail` VALUES ('376', 'http://www.hrbkcwl.com/index.html', '2', '1', '1', '0', '', '0', '0', '0', '1517673600', '');
INSERT INTO `cool_visit_detail` VALUES ('377', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1517673600', '');
INSERT INTO `cool_visit_detail` VALUES ('378', 'http://www.hrbkcwl.com/', '8', '6', '6', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('379', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('380', 'http://www.hrbkcwl.com/index.html', '4', '4', '4', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('381', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('382', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('383', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('384', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('385', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('386', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1517760000', '');
INSERT INTO `cool_visit_detail` VALUES ('387', 'http://www.hrbkcwl.com/', '12', '11', '11', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('388', 'http://www.hrbkcwl.com/blog_14.html', '3', '2', '2', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('389', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('390', 'http://www.hrbkcwl.com/about_2.html', '6', '3', '3', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('391', 'http://www.hrbkcwl.com/products_9.html', '7', '4', '4', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('392', 'http://www.hrbkcwl.com/index.html', '4', '3', '3', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('393', 'http://www.hrbkcwl.com/case_10.html', '6', '3', '3', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('394', 'http://www.hrbkcwl.com/services_13.html', '2', '1', '1', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('395', 'http://www.hrbkcwl.com/contact_16.html', '2', '1', '1', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('396', 'http://www.hrbkcwl.com/products_9.html#', '1', '1', '1', '0', '', '0', '0', '0', '1517846400', '');
INSERT INTO `cool_visit_detail` VALUES ('397', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1517932800', '');
INSERT INTO `cool_visit_detail` VALUES ('398', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1517932800', '');
INSERT INTO `cool_visit_detail` VALUES ('399', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518019200', '');
INSERT INTO `cool_visit_detail` VALUES ('400', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1518019200', '');
INSERT INTO `cool_visit_detail` VALUES ('401', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1518105600', '');
INSERT INTO `cool_visit_detail` VALUES ('402', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1518105600', '');
INSERT INTO `cool_visit_detail` VALUES ('403', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518192000', '');
INSERT INTO `cool_visit_detail` VALUES ('404', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1518192000', '');
INSERT INTO `cool_visit_detail` VALUES ('405', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1518192000', '');
INSERT INTO `cool_visit_detail` VALUES ('406', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1518278400', '');
INSERT INTO `cool_visit_detail` VALUES ('407', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518364800', '');
INSERT INTO `cool_visit_detail` VALUES ('408', 'http://www.hrbkcwl.com/', '10', '7', '7', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('409', 'http://www.hrbkcwl.com/case_10.html', '4', '2', '2', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('410', 'http://www.hrbkcwl.com/about_2.html', '3', '1', '1', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('411', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('412', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('413', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1518451200', '');
INSERT INTO `cool_visit_detail` VALUES ('414', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1518537600', '');
INSERT INTO `cool_visit_detail` VALUES ('415', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1518537600', '');
INSERT INTO `cool_visit_detail` VALUES ('416', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1518537600', '');
INSERT INTO `cool_visit_detail` VALUES ('417', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518624000', '');
INSERT INTO `cool_visit_detail` VALUES ('418', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1518624000', '');
INSERT INTO `cool_visit_detail` VALUES ('419', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1518624000', '');
INSERT INTO `cool_visit_detail` VALUES ('420', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1518624000', '');
INSERT INTO `cool_visit_detail` VALUES ('421', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518710400', '');
INSERT INTO `cool_visit_detail` VALUES ('422', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1518710400', '');
INSERT INTO `cool_visit_detail` VALUES ('423', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1518710400', '');
INSERT INTO `cool_visit_detail` VALUES ('424', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1518796800', '');
INSERT INTO `cool_visit_detail` VALUES ('425', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1518883200', '');
INSERT INTO `cool_visit_detail` VALUES ('426', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1518969600', '');
INSERT INTO `cool_visit_detail` VALUES ('427', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1518969600', '');
INSERT INTO `cool_visit_detail` VALUES ('428', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1519056000', '');
INSERT INTO `cool_visit_detail` VALUES ('429', 'http://www.hrbkcwl.com/about_2.html', '2', '2', '2', '0', '', '0', '0', '0', '1519056000', '');
INSERT INTO `cool_visit_detail` VALUES ('430', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1519056000', '');
INSERT INTO `cool_visit_detail` VALUES ('431', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1519142400', '');
INSERT INTO `cool_visit_detail` VALUES ('432', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1519142400', '');
INSERT INTO `cool_visit_detail` VALUES ('433', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1519142400', '');
INSERT INTO `cool_visit_detail` VALUES ('434', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1519228800', '');
INSERT INTO `cool_visit_detail` VALUES ('435', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1519228800', '');
INSERT INTO `cool_visit_detail` VALUES ('436', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1519315200', '');
INSERT INTO `cool_visit_detail` VALUES ('437', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1519315200', '');
INSERT INTO `cool_visit_detail` VALUES ('438', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1519401600', '');
INSERT INTO `cool_visit_detail` VALUES ('439', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1519488000', '');
INSERT INTO `cool_visit_detail` VALUES ('440', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1519488000', '');
INSERT INTO `cool_visit_detail` VALUES ('441', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1519574400', '');
INSERT INTO `cool_visit_detail` VALUES ('442', 'http://www.hrbkcwl.com/', '5', '4', '4', '0', '', '0', '0', '0', '1519660800', '');
INSERT INTO `cool_visit_detail` VALUES ('443', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1519660800', '');
INSERT INTO `cool_visit_detail` VALUES ('444', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1519747200', '');
INSERT INTO `cool_visit_detail` VALUES ('445', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1519747200', '');
INSERT INTO `cool_visit_detail` VALUES ('446', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1519833600', '');
INSERT INTO `cool_visit_detail` VALUES ('447', 'http://www.hrbkcwl.com/blogInfo_7_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1519833600', '');
INSERT INTO `cool_visit_detail` VALUES ('448', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1519920000', '');
INSERT INTO `cool_visit_detail` VALUES ('449', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1520006400', '');
INSERT INTO `cool_visit_detail` VALUES ('450', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1520092800', '');
INSERT INTO `cool_visit_detail` VALUES ('451', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1520092800', '');
INSERT INTO `cool_visit_detail` VALUES ('452', 'http://www.hrbkcwl.com/blogInfo_6_20.html', '1', '1', '1', '0', '', '0', '0', '0', '1520092800', '');
INSERT INTO `cool_visit_detail` VALUES ('453', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1520092800', '');
INSERT INTO `cool_visit_detail` VALUES ('454', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1520179200', '');
INSERT INTO `cool_visit_detail` VALUES ('455', 'http://www.hrbkcwl.com/', '5', '4', '4', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('456', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('457', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('458', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('459', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('460', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('461', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1520265600', '');
INSERT INTO `cool_visit_detail` VALUES ('462', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1520352000', '');
INSERT INTO `cool_visit_detail` VALUES ('463', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1520352000', '');
INSERT INTO `cool_visit_detail` VALUES ('464', 'http://www.hrbkcwl.com/blog_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1520352000', '');
INSERT INTO `cool_visit_detail` VALUES ('465', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1520352000', '');
INSERT INTO `cool_visit_detail` VALUES ('466', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('467', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('468', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('469', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('470', 'http://www.hrbkcwl.com/index.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('471', 'http://www.hrbkcwl.com/contact_16.html', '3', '3', '3', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('472', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('473', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1520438400', '');
INSERT INTO `cool_visit_detail` VALUES ('474', 'http://www.hrbkcwl.com/', '4', '2', '2', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('475', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('476', 'http://www.hrbkcwl.com/products_9.html', '2', '2', '2', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('477', 'http://www.hrbkcwl.com/case_10.html', '3', '3', '2', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('478', 'http://www.hrbkcwl.com/index.html', '3', '1', '1', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('479', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_11_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('480', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_11_23.html', '3', '1', '1', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('481', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1520524800', '');
INSERT INTO `cool_visit_detail` VALUES ('482', 'http://www.hrbkcwl.com/', '3', '2', '2', '0', '', '0', '0', '0', '1520611200', '');
INSERT INTO `cool_visit_detail` VALUES ('483', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1520611200', '');
INSERT INTO `cool_visit_detail` VALUES ('484', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1520697600', '');
INSERT INTO `cool_visit_detail` VALUES ('485', 'http://www.hrbkcwl.com/about_2.html', '3', '3', '3', '0', '', '0', '0', '0', '1520697600', '');
INSERT INTO `cool_visit_detail` VALUES ('486', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1520697600', '');
INSERT INTO `cool_visit_detail` VALUES ('487', 'http://www.hrbkcwl.com/', '5', '3', '3', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('488', 'http://www.hrbkcwl.com/contact_16.html', '2', '2', '2', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('489', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('490', 'http://www.hrbkcwl.com/blog_17.html', '2', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('491', 'http://www.hrbkcwl.com/blog_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('492', 'http://www.hrbkcwl.com/blog_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('493', 'http://www.hrbkcwl.com/blog_21.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('494', 'http://www.hrbkcwl.com/blog_30.html', '2', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('495', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('496', 'http://www.hrbkcwl.com/blogInfo_1_17.html', '2', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('497', 'http://www.hrbkcwl.com/home_hyxw_info_id_2_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('498', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1520784000', '');
INSERT INTO `cool_visit_detail` VALUES ('499', 'http://www.hrbkcwl.com/blogInfo_5_19.html', '1', '1', '1', '0', '', '0', '0', '0', '1520870400', '');
INSERT INTO `cool_visit_detail` VALUES ('500', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1520870400', '');
INSERT INTO `cool_visit_detail` VALUES ('501', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1520956800', '');
INSERT INTO `cool_visit_detail` VALUES ('502', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1520956800', '');
INSERT INTO `cool_visit_detail` VALUES ('503', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1521043200', '');
INSERT INTO `cool_visit_detail` VALUES ('504', 'http://www.hrbkcwl.com/blog_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1521043200', '');
INSERT INTO `cool_visit_detail` VALUES ('505', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1521043200', '');
INSERT INTO `cool_visit_detail` VALUES ('506', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1521129600', '');
INSERT INTO `cool_visit_detail` VALUES ('507', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1521129600', '');
INSERT INTO `cool_visit_detail` VALUES ('508', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1521302400', '');
INSERT INTO `cool_visit_detail` VALUES ('509', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1521388800', '');
INSERT INTO `cool_visit_detail` VALUES ('510', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1521475200', '');
INSERT INTO `cool_visit_detail` VALUES ('511', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1521648000', '');
INSERT INTO `cool_visit_detail` VALUES ('512', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1521648000', '');
INSERT INTO `cool_visit_detail` VALUES ('513', 'http://www.hrbkcwl.com/', '5', '4', '4', '0', '', '0', '0', '0', '1521734400', '');
INSERT INTO `cool_visit_detail` VALUES ('514', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1521734400', '');
INSERT INTO `cool_visit_detail` VALUES ('515', 'http://www.hrbkcwl.com/contact_16.html', '4', '2', '2', '0', '', '0', '0', '0', '1521734400', '');
INSERT INTO `cool_visit_detail` VALUES ('516', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1521734400', '');
INSERT INTO `cool_visit_detail` VALUES ('517', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1521734400', '');
INSERT INTO `cool_visit_detail` VALUES ('518', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1521820800', '');
INSERT INTO `cool_visit_detail` VALUES ('519', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1521820800', '');
INSERT INTO `cool_visit_detail` VALUES ('520', 'http://www.hrbkcwl.com/', '8', '3', '3', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('521', 'http://www.hrbkcwl.com/about_2.html', '10', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('522', 'http://www.hrbkcwl.com/index.html', '15', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('523', 'http://www.hrbkcwl.com/products_9.html', '10', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('524', 'http://www.hrbkcwl.com/case_10.html', '8', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('525', 'http://www.hrbkcwl.com/services_13.html', '5', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('526', 'http://www.hrbkcwl.com/blog_14.html', '5', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('527', 'http://www.hrbkcwl.com/contact_16.html', '3', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('528', 'http://www.hrbkcwl.com/index.html#', '5', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('529', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_14_23.html', '2', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('530', 'http://www.hrbkcwl.com/case_10.html#cbp=/caseInfo_13_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('531', 'http://www.hrbkcwl.com/case_10.html#', '1', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('532', 'http://www.hrbkcwl.com/index.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1521907200', '');
INSERT INTO `cool_visit_detail` VALUES ('533', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1521993600', '');
INSERT INTO `cool_visit_detail` VALUES ('534', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1521993600', '');
INSERT INTO `cool_visit_detail` VALUES ('535', 'http://www.hrbkcwl.com/', '6', '5', '5', '0', '', '0', '0', '0', '1522080000', '');
INSERT INTO `cool_visit_detail` VALUES ('536', 'http://www.hrbkcwl.com/contact_16.html', '2', '1', '1', '0', '', '0', '0', '0', '1522080000', '');
INSERT INTO `cool_visit_detail` VALUES ('537', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1522166400', '');
INSERT INTO `cool_visit_detail` VALUES ('538', 'http://www.hrbkcwl.com/contact_16.html', '4', '2', '2', '0', '', '0', '0', '0', '1522252800', '');
INSERT INTO `cool_visit_detail` VALUES ('539', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1522252800', '');
INSERT INTO `cool_visit_detail` VALUES ('540', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1522252800', '');
INSERT INTO `cool_visit_detail` VALUES ('541', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1522252800', '');
INSERT INTO `cool_visit_detail` VALUES ('542', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1522339200', '');
INSERT INTO `cool_visit_detail` VALUES ('543', 'http://www.hrbkcwl.com/contact_16.html', '2', '1', '1', '0', '', '0', '0', '0', '1522339200', '');
INSERT INTO `cool_visit_detail` VALUES ('544', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('545', 'http://www.hrbkcwl.com/about_2.html', '6', '4', '4', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('546', 'http://www.hrbkcwl.com/products_9.html', '3', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('547', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('548', 'http://www.hrbkcwl.com/services_13.html', '4', '2', '2', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('549', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('550', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('551', 'http://www.hrbkcwl.com/index.html', '3', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('552', 'http://www.hrbkcwl.com/index.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1522425600', '');
INSERT INTO `cool_visit_detail` VALUES ('553', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('554', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('555', 'http://www.hrbkcwl.com/index.html', '10', '4', '3', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('556', 'http://www.hrbkcwl.com/index.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('557', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('558', 'http://www.hrbkcwl.com/products_9.html', '5', '2', '2', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('559', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('560', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1522512000', '');
INSERT INTO `cool_visit_detail` VALUES ('561', 'http://www.hrbkcwl.com/about_2.html', '3', '3', '3', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('562', 'http://www.hrbkcwl.com/', '9', '6', '6', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('563', 'http://www.hrbkcwl.com/contact_16.html', '3', '2', '2', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('564', 'http://www.hrbkcwl.com/contact_16.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('565', 'http://www.hrbkcwl.com/#.', '1', '1', '1', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('566', 'http://www.hrbkcwl.com/products_9.html', '2', '2', '2', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('567', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('568', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('569', 'http://www.hrbkcwl.com/index.html', '2', '1', '1', '0', '', '0', '0', '0', '1522598400', '');
INSERT INTO `cool_visit_detail` VALUES ('570', 'http://www.hrbkcwl.com/about_2.html', '4', '4', '3', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('571', 'http://www.hrbkcwl.com/', '8', '7', '8', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('572', 'http://www.hrbkcwl.com/products_9.html', '2', '2', '1', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('573', 'http://www.hrbkcwl.com/case_10.html', '2', '1', '1', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('574', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('575', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('576', 'http://www.hrbkcwl.com/index.html', '20', '2', '1', '0', '', '0', '0', '0', '1522684800', '');
INSERT INTO `cool_visit_detail` VALUES ('577', 'http://www.hrbkcwl.com/', '10', '7', '6', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('578', 'http://www.hrbkcwl.com/index.html', '54', '3', '2', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('579', 'http://www.hrbkcwl.com/about_2.html', '47', '2', '2', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('580', 'http://www.hrbkcwl.com/products_9.html', '47', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('581', 'http://www.hrbkcwl.com/case_10.html', '42', '2', '2', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('582', 'http://www.hrbkcwl.com/services_13.html', '24', '2', '2', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('583', 'http://www.hrbkcwl.com/blog_14.html', '16', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('584', 'http://www.hrbkcwl.com/blog_18.html', '1', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('585', 'http://www.hrbkcwl.com/contact_16.html', '16', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('586', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_17_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('587', 'http://www.hrbkcwl.com/index.html#', '12', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('588', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_16_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('589', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_12_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('590', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_19_27.html', '1', '1', '1', '0', '', '0', '0', '0', '1522771200', '');
INSERT INTO `cool_visit_detail` VALUES ('591', 'http://www.hrbkcwl.com/', '14', '7', '6', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('592', 'http://www.hrbkcwl.com/about_2.html', '79', '4', '3', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('593', 'http://www.hrbkcwl.com/products_9.html', '76', '3', '3', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('594', 'http://www.hrbkcwl.com/index.html', '117', '2', '2', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('595', 'http://www.hrbkcwl.com/case_10.html', '84', '2', '2', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('596', 'http://www.hrbkcwl.com/services_13.html', '75', '2', '2', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('597', 'http://www.hrbkcwl.com/blog_14.html', '61', '3', '3', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('598', 'http://www.hrbkcwl.com/contact_16.html', '45', '3', '3', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('599', 'http://www.hrbkcwl.com/products_9.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('600', 'http://www.hrbkcwl.com/index.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('601', 'http://www.hrbkcwl.com/contact_16.html#content', '3', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('602', 'http://www.hrbkcwl.com/contact_16.html#.', '2', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('603', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_24_27.html', '1', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('604', 'http://www.hrbkcwl.com/#cbp=/caseInfo_24_27.html', '2', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('605', 'http://www.hrbkcwl.com/index.html#cbp=/caseInfo_26_28.html', '3', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('606', 'http://www.hrbkcwl.com/index.html#', '5', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('607', 'http://www.hrbkcwl.com/index.html#content', '1', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('608', 'http://www.hrbkcwl.com/index.html#contact', '1', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('609', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '5', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('610', 'http://www.hrbkcwl.com/home_hyxw_info_id_9_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1522857600', '');
INSERT INTO `cool_visit_detail` VALUES ('611', 'http://www.hrbkcwl.com/', '10', '6', '6', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('612', 'http://www.hrbkcwl.com/about_2.html', '5', '2', '2', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('613', 'http://www.hrbkcwl.com/case_10.html', '8', '2', '2', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('614', 'http://www.hrbkcwl.com/index.html', '12', '3', '3', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('615', 'http://www.hrbkcwl.com/case_10.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('616', 'http://www.hrbkcwl.com/products_9.html', '3', '1', '1', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('617', 'http://www.hrbkcwl.com/services_13.html', '4', '1', '1', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('618', 'http://www.hrbkcwl.com/blog_14.html', '2', '1', '1', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('619', 'http://www.hrbkcwl.com/contact_16.html', '3', '2', '2', '0', '', '0', '0', '0', '1522944000', '');
INSERT INTO `cool_visit_detail` VALUES ('620', 'http://www.hrbkcwl.com/', '10', '6', '6', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('621', 'http://www.hrbkcwl.com/#cbp=/home__info_id_12_catId_23.html', '1', '1', '1', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('622', 'http://www.hrbkcwl.com/#', '2', '1', '1', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('623', 'http://www.hrbkcwl.com/case_10.html', '3', '2', '2', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('624', 'http://www.hrbkcwl.com/index.html', '6', '3', '3', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('625', 'http://www.hrbkcwl.com/contact_16.html', '2', '2', '2', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('626', 'http://www.hrbkcwl.com/about_2.html', '2', '2', '2', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('627', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('628', 'http://www.hrbkcwl.com/blog_14.html', '2', '2', '2', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('629', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1523030400', '');
INSERT INTO `cool_visit_detail` VALUES ('630', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('631', 'http://www.hrbkcwl.com/index.html', '2', '2', '2', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('632', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('633', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('634', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('635', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('636', 'http://www.hrbkcwl.com/contact_16.html#content', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('637', 'http://www.hrbkcwl.com/home_hyxw_info_id_10_catId_30.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('638', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('639', 'http://www.hrbkcwl.com/index.html#contact', '1', '1', '1', '0', '', '0', '0', '0', '1523116800', '');
INSERT INTO `cool_visit_detail` VALUES ('640', 'http://www.hrbkcwl.com/', '4', '3', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('641', 'http://www.hrbkcwl.com/index.html', '9', '1', '1', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('642', 'http://www.hrbkcwl.com/about_2.html', '7', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('643', 'http://www.hrbkcwl.com/products_9.html', '6', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('644', 'http://www.hrbkcwl.com/case_10.html', '6', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('645', 'http://www.hrbkcwl.com/services_13.html', '6', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('646', 'http://www.hrbkcwl.com/blog_14.html', '6', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('647', 'http://www.hrbkcwl.com/contact_16.html', '5', '2', '2', '0', '', '0', '0', '0', '1523203200', '');
INSERT INTO `cool_visit_detail` VALUES ('648', 'http://www.hrbkcwl.com/', '7', '5', '5', '0', '', '0', '0', '0', '1523289600', '');
INSERT INTO `cool_visit_detail` VALUES ('649', 'http://www.hrbkcwl.com/', '17', '12', '9', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('650', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('651', 'http://www.hrbkcwl.com/blogInfo_1_17.html', '2', '1', '1', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('652', 'http://www.hrbkcwl.com/?from=singlemessage', '3', '3', '3', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('653', 'http://www.hrbkcwl.com/index.html#contact', '1', '1', '1', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('654', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1523376000', '');
INSERT INTO `cool_visit_detail` VALUES ('655', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1523462400', '');
INSERT INTO `cool_visit_detail` VALUES ('656', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1523548800', '');
INSERT INTO `cool_visit_detail` VALUES ('657', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1523635200', '');
INSERT INTO `cool_visit_detail` VALUES ('658', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1523721600', '');
INSERT INTO `cool_visit_detail` VALUES ('659', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1523808000', '');
INSERT INTO `cool_visit_detail` VALUES ('660', 'http://www.hrbkcwl.com/about_2.html', '2', '1', '1', '0', '', '0', '0', '0', '1523808000', '');
INSERT INTO `cool_visit_detail` VALUES ('661', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1523808000', '');
INSERT INTO `cool_visit_detail` VALUES ('662', 'http://www.hrbkcwl.com/', '6', '5', '5', '0', '', '0', '0', '0', '1523894400', '');
INSERT INTO `cool_visit_detail` VALUES ('663', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1523980800', '');
INSERT INTO `cool_visit_detail` VALUES ('664', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1524067200', '');
INSERT INTO `cool_visit_detail` VALUES ('665', 'http://www.hrbkcwl.com/', '6', '6', '6', '0', '', '0', '0', '0', '1524153600', '');
INSERT INTO `cool_visit_detail` VALUES ('666', 'http://www.hrbkcwl.com/contact_16.html', '2', '1', '1', '0', '', '0', '0', '0', '1524153600', '');
INSERT INTO `cool_visit_detail` VALUES ('667', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1524153600', '');
INSERT INTO `cool_visit_detail` VALUES ('668', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1524240000', '');
INSERT INTO `cool_visit_detail` VALUES ('669', 'http://www.hrbkcwl.com/', '3', '2', '2', '0', '', '0', '0', '0', '1524326400', '');
INSERT INTO `cool_visit_detail` VALUES ('670', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1524326400', '');
INSERT INTO `cool_visit_detail` VALUES ('671', 'http://www.hrbkcwl.com/', '7', '7', '7', '0', '', '0', '0', '0', '1524412800', '');
INSERT INTO `cool_visit_detail` VALUES ('672', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1524412800', '');
INSERT INTO `cool_visit_detail` VALUES ('673', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1524499200', '');
INSERT INTO `cool_visit_detail` VALUES ('674', 'http://www.hrbkcwl.com/case_10.html', '2', '2', '2', '0', '', '0', '0', '0', '1524499200', '');
INSERT INTO `cool_visit_detail` VALUES ('675', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1524499200', '');
INSERT INTO `cool_visit_detail` VALUES ('676', 'http://www.hrbkcwl.com/', '12', '10', '10', '0', '', '0', '0', '0', '1524585600', '');
INSERT INTO `cool_visit_detail` VALUES ('677', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1524585600', '');
INSERT INTO `cool_visit_detail` VALUES ('678', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1524585600', '');
INSERT INTO `cool_visit_detail` VALUES ('679', 'http://www.hrbkcwl.com/', '5', '4', '4', '0', '', '0', '0', '0', '1524672000', '');
INSERT INTO `cool_visit_detail` VALUES ('680', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1524758400', '');
INSERT INTO `cool_visit_detail` VALUES ('681', 'http://www.hrbkcwl.com/services_13.html', '2', '2', '2', '0', '', '0', '0', '0', '1524758400', '');
INSERT INTO `cool_visit_detail` VALUES ('682', 'http://www.hrbkcwl.com/', '5', '4', '4', '0', '', '0', '0', '0', '1524844800', '');
INSERT INTO `cool_visit_detail` VALUES ('683', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1524931200', '');
INSERT INTO `cool_visit_detail` VALUES ('684', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1525017600', '');
INSERT INTO `cool_visit_detail` VALUES ('685', 'http://www.hrbkcwl.com/', '7', '5', '2', '0', '', '0', '0', '0', '1525104000', '');
INSERT INTO `cool_visit_detail` VALUES ('686', 'http://www.hrbkcwl.com/', '4', '4', '3', '0', '', '0', '0', '0', '1525190400', '');
INSERT INTO `cool_visit_detail` VALUES ('687', 'http://www.hrbkcwl.com/', '7', '6', '5', '0', '', '0', '0', '0', '1525276800', '');
INSERT INTO `cool_visit_detail` VALUES ('688', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1525363200', '');
INSERT INTO `cool_visit_detail` VALUES ('689', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1525363200', '');
INSERT INTO `cool_visit_detail` VALUES ('690', 'http://www.hrbkcwl.com/', '7', '3', '2', '0', '', '0', '0', '0', '1525449600', '');
INSERT INTO `cool_visit_detail` VALUES ('691', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1525449600', '');
INSERT INTO `cool_visit_detail` VALUES ('692', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1525449600', '');
INSERT INTO `cool_visit_detail` VALUES ('693', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1525449600', '');
INSERT INTO `cool_visit_detail` VALUES ('694', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1525449600', '');
INSERT INTO `cool_visit_detail` VALUES ('695', 'http://www.hrbkcwl.com/', '7', '5', '5', '0', '', '0', '0', '0', '1525536000', '');
INSERT INTO `cool_visit_detail` VALUES ('696', 'http://www.hrbkcwl.com/', '12', '11', '9', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('697', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('698', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('699', 'http://www.hrbkcwl.com/case_10.html', '4', '3', '3', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('700', 'http://www.hrbkcwl.com/about_2.html', '4', '4', '4', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('701', 'http://www.hrbkcwl.com/about_2.html#.', '1', '1', '1', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('702', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1525622400', '');
INSERT INTO `cool_visit_detail` VALUES ('703', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1525708800', '');
INSERT INTO `cool_visit_detail` VALUES ('704', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1525708800', '');
INSERT INTO `cool_visit_detail` VALUES ('705', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1525795200', '');
INSERT INTO `cool_visit_detail` VALUES ('706', 'http://www.hrbkcwl.com/', '9', '8', '8', '0', '', '0', '0', '0', '1525881600', '');
INSERT INTO `cool_visit_detail` VALUES ('707', 'http://www.hrbkcwl.com/index.html', '2', '1', '1', '0', '', '0', '0', '0', '1525881600', '');
INSERT INTO `cool_visit_detail` VALUES ('708', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1525881600', '');
INSERT INTO `cool_visit_detail` VALUES ('709', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1525881600', '');
INSERT INTO `cool_visit_detail` VALUES ('710', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1525968000', '');
INSERT INTO `cool_visit_detail` VALUES ('711', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1526054400', '');
INSERT INTO `cool_visit_detail` VALUES ('712', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1526140800', '');
INSERT INTO `cool_visit_detail` VALUES ('713', 'http://www.hrbkcwl.com/', '14', '12', '12', '0', '', '0', '0', '0', '1526227200', '');
INSERT INTO `cool_visit_detail` VALUES ('714', 'http://www.hrbkcwl.com/', '5', '5', '5', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('715', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('716', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('717', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('718', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('719', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1526313600', '');
INSERT INTO `cool_visit_detail` VALUES ('720', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1526400000', '');
INSERT INTO `cool_visit_detail` VALUES ('721', 'http://www.hrbkcwl.com/', '4', '4', '4', '0', '', '0', '0', '0', '1526486400', '');
INSERT INTO `cool_visit_detail` VALUES ('722', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1526486400', '');
INSERT INTO `cool_visit_detail` VALUES ('723', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1526572800', '');
INSERT INTO `cool_visit_detail` VALUES ('724', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1526659200', '');
INSERT INTO `cool_visit_detail` VALUES ('725', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1526659200', '');
INSERT INTO `cool_visit_detail` VALUES ('726', 'http://www.hrbkcwl.com/', '2', '2', '2', '0', '', '0', '0', '0', '1526745600', '');
INSERT INTO `cool_visit_detail` VALUES ('727', 'http://www.hrbkcwl.com/', '3', '3', '3', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('728', 'http://www.hrbkcwl.com/index.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('729', 'http://www.hrbkcwl.com/about_2.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('730', 'http://www.hrbkcwl.com/products_9.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('731', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('732', 'http://www.hrbkcwl.com/services_13.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('733', 'http://www.hrbkcwl.com/blog_14.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('734', 'http://www.hrbkcwl.com/contact_16.html', '3', '2', '2', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('735', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1526832000', '');
INSERT INTO `cool_visit_detail` VALUES ('736', 'http://www.hrbkcwl.com/', '1', '1', '1', '0', '', '0', '0', '0', '1526918400', '');
INSERT INTO `cool_visit_detail` VALUES ('737', 'http://www.hrbkcwl.com/?card_id=pjAxC0zw9AMG0lfvO6KIIoQxiahk', '2', '2', '2', '0', '', '0', '0', '0', '1526918400', '');
INSERT INTO `cool_visit_detail` VALUES ('738', 'http://www.hrbkcwl.com/', '8', '8', '8', '0', '', '0', '0', '0', '1527004800', '');
INSERT INTO `cool_visit_detail` VALUES ('739', 'http://www.hrbkcwl.com/about_2.html', '2', '2', '2', '0', '', '0', '0', '0', '1527004800', '');
INSERT INTO `cool_visit_detail` VALUES ('740', 'http://www.hrbkcwl.com/contact_16.html', '1', '1', '1', '0', '', '0', '0', '0', '1527004800', '');
INSERT INTO `cool_visit_detail` VALUES ('741', 'http://www.hrbkcwl.com/', '7', '6', '6', '0', '', '0', '0', '0', '1527091200', '');
INSERT INTO `cool_visit_detail` VALUES ('742', 'http://www.hrbkcwl.com/contact_16.html', '3', '3', '3', '0', '', '0', '0', '0', '1527177600', '');
INSERT INTO `cool_visit_detail` VALUES ('743', 'http://www.hrbkcwl.com/', '10', '10', '10', '0', '', '0', '0', '0', '1527177600', '');
INSERT INTO `cool_visit_detail` VALUES ('744', 'http://www.hrbkcwl.com/blogInfo_8_17.html', '1', '1', '1', '0', '', '0', '0', '0', '1527177600', '');
INSERT INTO `cool_visit_detail` VALUES ('745', 'http://www.hrbkcwl.com/case_10.html', '1', '1', '1', '0', '', '0', '0', '0', '1527177600', '');
INSERT INTO `cool_visit_detail` VALUES ('746', 'http://www.hrbkcwl.com/', '3', '2', '2', '0', '', '0', '0', '0', '1527264000', '');
INSERT INTO `cool_visit_detail` VALUES ('747', 'http://hrbkcwl.local.com/', '4', '1', '1', '0', '', '0', '0', '0', '1527264000', '');
INSERT INTO `cool_visit_detail` VALUES ('748', 'http://coolphp.local.com/index.html', '42', '1', '1', '0', '', '0', '0', '0', '1527350400', '');
INSERT INTO `cool_visit_detail` VALUES ('749', 'http://coolphp.local.com/about_2.html', '7', '1', '1', '0', '', '0', '0', '0', '1527350400', '');
INSERT INTO `cool_visit_detail` VALUES ('750', 'http://coolphp.local.com/', '2', '1', '1', '0', '', '0', '0', '0', '1527350400', '');
INSERT INTO `cool_visit_detail` VALUES ('751', 'http://coolphp.local.com/index_index.html', '2', '1', '1', '0', '', '0', '0', '0', '1527350400', '');
INSERT INTO `cool_visit_detail` VALUES ('752', 'http://coolphp.local.com/', '1', '1', '1', '0', '', '0', '0', '0', '1527436800', '');

-- ----------------------------
-- Table structure for cool_visit_summary
-- ----------------------------
DROP TABLE IF EXISTS `cool_visit_summary`;
CREATE TABLE `cool_visit_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pv` int(11) NOT NULL DEFAULT '0',
  `ip` int(11) NOT NULL DEFAULT '0',
  `alone` int(11) NOT NULL,
  `parttime` text NOT NULL,
  `stattime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_visit_summary
-- ----------------------------

-- ----------------------------
-- Table structure for cool_wdjcontent
-- ----------------------------
DROP TABLE IF EXISTS `cool_wdjcontent`;
CREATE TABLE `cool_wdjcontent` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `ct` varchar(255) DEFAULT NULL,
  `round_head_img` varchar(255) DEFAULT NULL,
  `msg_desc` varchar(255) DEFAULT NULL,
  `content` text,
  `hits` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_wdjcontent
-- ----------------------------
INSERT INTO `cool_wdjcontent` VALUES ('48', 'http://mp.weixin.qq.com/s/nGSzP3XsBB0GTnEwL54CYg', '惊叹！这个盲人程序员是这样写代码的', 'http://mmbiz.qpic.cn/mmbiz_jpg/zPh0erYjkib04QNFoC9VwOf5UZxKFxZsJQvGLWtM03bKdmI5V3ibtEm3bkT8rlnnaadcjic8PzKwrD3WRkOhk7JCg/0?wx_fmt=jpeg', '前端大全', '1506762000', './image/round_head_img_gh_1828302cb1b3.png', null, '<p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\">&nbsp;<span style=\"max-width: 100%;color: rgb(255, 41, 65);font-size: 14px;line-height: 22.4px;box-sizing: border-box !important;word-wrap: break-word !important;\">（点击</span><span style=\"max-width: 100%;font-size: 14px;line-height: 22.4px;color: rgb(0, 128, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">上方公众号</span><span style=\"max-width: 100%;color: rgb(255, 41, 65);font-size: 14px;line-height: 22.4px;box-sizing: border-box !important;word-wrap: break-word !important;\">，可快速关注）</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;line-height: 25.6px;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(255, 41, 65);font-size: 14px;line-height: 22.4px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><blockquote style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><p style=\"max-width: 100%;min-height: 1em;line-height: 25.6px;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;\"></span><span style=\"font-size: 14px;\">编译：伯乐在线/孙腾浩</span><span style=\"max-width: 100%;font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></p><p style=\"max-width: 100%;min-height: 1em;line-height: 25.6px;box-sizing: border-box !important;word-wrap: break-word !important;\"><a href=\"http://mp.weixin.qq.com/s?__biz=MzAxODE2MjM1MA==&amp;mid=402764500&amp;idx=1&amp;sn=cfcc178c7718d548b7cdc04758502bd9&amp;scene=21#wechat_redirect\" target=\"_blank\" data_ue_src=\"http://mp.weixin.qq.com/s?__biz=MzAxODE2MjM1MA==&amp;mid=402764500&amp;idx=1&amp;sn=cfcc178c7718d548b7cdc04758502bd9&amp;scene=21#wechat_redirect\" style=\"color: rgb(0, 128, 255);text-decoration: underline;max-width: 100%;font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;\">如有好文章投稿，请点击 → 这里了解详情</a></p></blockquote><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: pre-wrap;line-height: 25.6px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;line-height: 1.6;box-sizing: border-box !important;word-wrap: break-word !important;\"></strong></p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.7507246376811594\" src=\"./image/KovAgJ2aWyYic4lvUGJYaZTOdpt5oiaunsxGVKCmMZypfRnWiaUGT1RK0BL6xibQ7R3WxBMukndoFbNbY43NTn0Gcw.jpeg\" data-type=\"jpeg\" data-w=\"690\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">我想你第一次看到我的工位时，总会感觉少点什么。没有显示器和鼠标，却有个人敲打着键盘，不知注视着哪里。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">这就是我，我同事可以证明我没问题。我是位于坦佩雷（芬兰西南部一座城市）的 Vincit 写字楼中的一名软件开发者。我双目失明。这篇文章中我将讲述有关我工作中的事情。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你真的什么都看不到吗？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">准确来说，我觉察到阳光和其他明亮的光线，不过也仅限这些。其实，这对我的工作也并没有什么帮助。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你工作内容是什么？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">和大部分人一样：忙时写代码，闲时和同事侃大山。我做全栈项目，主攻后端。兼职访问顾问 – 或称监管，随你如何称呼。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你如何使用电脑？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">我用的电脑是一台运行 Windows 10 的普通笔记本。是其中的软件让一切变得神奇。我使用一款叫做屏幕阅读器的程序来访问电脑。屏幕阅读器监听屏幕上的变化并通过盲文（需要单独的盲文设备）或合成的声音来展示给用户。这并不是你如今听到的各种智能助理的合成声音。我使用一种机械声音，每分钟能说 450 个单词。相比较而言，英语正常语速每分钟 120-150 个单词。我有一个怪癖：我既说英语也说芬兰语，我用芬兰语合成器读英语，因为老旧的屏幕阅读器在语言之间切换不够智能，所以我习惯这样做。下面是个例子是阅读这个段落，我能听懂。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">https://www.vincit.fi/wp-content/uploads/2017/08/mpsample.mp3?_=1</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">下面是英语合成器发出的声音：</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">https://www.vincit.fi/wp-content/uploads/2017/08/essample.mp3?_=2</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">鼠标对于我来说并不是非常有用，所以我仅仅通过键盘工作。在座的各位应该十分熟悉我用到的命令：方向键和 tab 键控制窗口内的移动，alt+tab 切换窗口等等。屏幕阅读器也有很多自己的快捷键，比如阅读活动窗口的不同区域或开关一些功能特性。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">有趣的是阅读网页和其他格式化文档。你看，屏幕阅读器分块呈现信息。每一块可能是一行，也可能是一个单词、一个字母，亦或是文本的片段。举个例子，我在网页中按向下的方向键，我听到页面的下一行。我并不能像正常人一样用眼睛从屏幕上阅读内容。相反，我听到一块一块的内容，或跳过我不感兴趣的部分。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">语音或盲文并不能描绘出窗口的显示布局。信息以线性方式呈现给我。如果你把网页复制粘贴进记事本，你就能明白我看到的网页是什么样子的。就是剥离大部分格式的多行文本。然而屏幕阅读器可以获取网页上的 HTML 语法，所以我也能知道超链接、标题、表单等等。事实上，如果非复选框元素展示成复选框样式，我并不能知道这是复选框。我之后将写一篇文章详细讲述这些内容，记住我刚刚举的是个“反人类”例子。 （译者注：突然感到自责和羞愧，深深明白了一个道理：不要用各种有含意义的传统标签 hack 布局和样式，也不要因为 css 的强大而懒得使用各种有含义的传统标签。共勉）</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">我花费大量时间工作在命令行上。事实上我通常用浏览器和编辑器，很少用其他图形应用程序。相比那些为鼠标用户打造的图形界面，我发现用命令行处理手边的工作更加高效。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">既然我如此热爱命令行，为什么我却要选择 Windows 这个并不以命令行出名的操作系统呢？答案很简单：Windows 是最方便的操作系统。NVDA是我所选择的屏幕阅读器，它是开源的并且维护比其他阅读器更频繁。如果上天再我一次机会，我可能会选 Mac 系统，因为我认为它是易用性和功能性平衡的典范。不幸的是 Mac 系统上的屏幕阅读器&nbsp;VoiceOver&nbsp;经历了漫长的发布周期从而被遗忘，并且它的导航模型和我独特的工作方式并不协调。当然这里也有一个 Gnome 桌面上的屏幕阅读器，虽然用户很少，依然被很好地维护着，不过还有一些不完善的地方和我日常工作不协调。所以，我选择 Windows。由 GNU 诞生的 Git Bash 和其他命令行工具弥补了 Windows 内置命令行的缺陷。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你如何写代码？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">我花费好长时间才明白为什么大家觉得这个问题是个很高深的问题。记得我上面说过一行一行地阅读文本吗？我也是通过这种方式读代码。通常我会跳过无用的行，或仅听半行来获取内容，但当我需要知道完整信息的时候，我不得不像读小说一样读完所有东西。我当然无法阅读整个代码库。这种情况下我会在脑中抽象一部分代码：这个组件输入 x 返回 y，并不用关心细节逻辑。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">这种阅读方式让我和正常同事的工作方式有些区别。举个例子，当代码审查时，我喜欢看原始 diff 输出，并列窗口显示 diff 对我并不适用，而且还容易让人分心。有修改的代码行上用符号 + 和 – 比用不同背景色标注也要好太多，并不是因为我不能获知颜色名字，而是因为在新增的一行中，读“加”这个字比读“带复杂阴影的高亮红色”用更短的时间。（嘿，我说你呢 Gerrit (一款代码审查工具)）</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">你或许会认为缩进和其他代码格式和我无关，因为都是基本的视觉问题。并不是这样，正确的缩进对我的帮助和正常开发者一样。当我用盲文（比语音更加高效）读代码时，我像其他正常程序员一样清楚代码结构。当我进入一段有缩进或无缩进的代码时，我也会得到语音提醒。这些信息帮助我在脑中描绘代码结构。事实上我学的第一门语言就是 Python （PHP 不算），它强制使用代码缩进，这对我来说并不是问题。我有众多理由来强烈建议使用整洁统一的代码风格，其中之一就是不要让我的生活变得更加艰难了，好吗。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你喜欢哪款编辑器？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">剧透一下：这个答案并不是以 V 或者 E 开头（我虽然通过命令行用 Vim 来写 git commit 信息和其他备注。我认为我在这场圣战中是中立的）（<span style=\"max-width: 100%;background-color: rgb(255, 254, 213);box-sizing: border-box !important;word-wrap: break-word !important;\">译者注：Vim 和 Emacs 梗</span>）一年前我认为 Notepad++ 最棒，它是轻量级的做工精细的文本编辑器。然而一年前我还没有接触大规模 Java 项目，当我接触这种项目时，意味着我应该在 Notepad++ 和理智之间做个选择。最后我选择理智，抛弃 Notepad++ 转投 IntelliJ IDEA 的怀抱。从那之后 IntelliJ IDEA 便是我首选编辑器。我曾对各种 IDE 有深深怨念，它们大多数在纯键盘流操作下麻烦又低效。如果我视力没问题，我肯定早就跳到 IDE 阵营了。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">但你可能会问，为什么当初选 Notepad++。还有其他很多更先进的轻量级编辑器，比如 Sublime 或 Atom。原因很简单：屏幕阅读器无法访问它们。Vim 一类的文本编辑器也是如此，我使用的屏幕阅读器对命令行程序的支持有问题，在这些编辑器上无法处理多于 commit 信息的文本。很遗憾，可用性决定了我能够使用的工具。即使我不能高效工作，也不是什么大问题。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">你编写过前端代码吗？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">你应该认为前端开发和视觉有关，注定与盲人程序员无缘。基本上是这样。我从来不自己做概念原型，我做都是有界面，需要随后加入功能的项目。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">然而，我也做过 Angular 和 React 工作任务。怎么会这样？如今很多 APP 基于浏览器。举个例子，我曾花费两周时间为一个 Angular APP 增加国际化支持。我并不需要做任何视觉上的改动。</p><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">我发现对于我这类开发者开说，像 Bootstrap 这类的库简直是上天的礼物。正因为栅格系统（Bootstrap的响应式布局解决方案），我可以自己构建一个粗糙的界面。尽管如此，我做的有关界面的改动在呈现给用户之前仍然要有一双眼睛检查。所以，总而言之，我可以在一定程度上做些前端开发，至少不是和表现层太相关。</p><h2 style=\"margin-bottom: 20px;font-weight: bold;font-size: 24px;max-width: 100%;color: rgb(62, 62, 62);white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-stretch: normal;line-height: 36px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 18px;box-sizing: border-box !important;word-wrap: break-word !important;\">有什么其他没有提到的东西？</span></h2><p style=\"margin-bottom: 20px;max-width: 100%;min-height: 1em;white-space: normal;widows: 1;border-width: 0px;border-style: initial;border-color: initial;font-size: 15px;color: rgb(46, 46, 46);background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">其实这篇文章有很多东西没有表达出来。正如上文所承诺，我将全力以赴写一篇文章，有关制作易访问网页的艺术，因为一言未尽是我讨厌的事情之一。我不会半途而废的，敬请期待。</p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 14px;color: rgb(255, 169, 0);box-sizing: border-box !important;word-wrap: break-word !important;\">觉得本文对你有帮助？请分享给更多人</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;line-height: 25.6px;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(255, 169, 0);box-sizing: border-box !important;word-wrap: break-word !important;\">关注「前端大全」，提升前端技能</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;line-height: 25.6px;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.9166666666666666\" src=\"./image/zPh0erYjkib0lZCEKibSLcyLMVa3iaNzhWkSPnEBk28r5AAcL4fS03LQn1RWA5M58d7kvysRCibKpHibjs1szyRmnOQ.jpeg\" data-type=\"png\" data-w=\"600\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"  /></p>', '0', '1506764278');
INSERT INTO `cool_wdjcontent` VALUES ('51', 'http://mp.weixin.qq.com/s/XKJt2J8DiYtJZCQ3u7xyLQ', '明月清风迎鸿运，桂花香里话团圆 | 千优科技祝大家中秋快乐', 'http://mmbiz.qpic.cn/mmbiz_jpg/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTu0X7lOLAiaJSFo1hLXXickHktrdbicW5Dia6PU2C5QYhUCKSmicjRbHYnWYg/0?wx_fmt=jpeg', '哈尔滨千优科技发展有限公司', '1506764583', './image/round_head_img_gh_7b26aa27f3b1.png', null, '<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"font-family:微软雅黑;font-size:16px;\"><section class=\"_135editor\" data-tools=\"135编辑器\" data-id=\"90800\" style=\"border-width: 0px;border-style: none;border-color: initial;box-sizing: border-box;\"><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"font-family:微软雅黑;font-size:16px;\"><section class=\"_135editor\" data-tools=\"135编辑器\" data-id=\"88069\" style=\"border-width: 0px;border-style: none;border-color: initial;box-sizing: border-box;\"><section style=\"width: 100%;text-align: left;\" data-width=\"100%\"><section style=\"width: 260px;height: 40px;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTu2aAVfHo3tKNGesVBOLrqor5ibVQLMQdkYRw56AicE2s3U4pgJZpOeyOQ.png&quot;);background-size: 100% 100%;display: inline-block;overflow: hidden;\"><section style=\"width: 180px;height: 40px;line-height: 45px;margin-left: 78px;\"><span style=\"color: rgb(0, 128, 255);\">点击蓝字关注我们</span></section></section></section></section></section></section></section><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"font-family:微软雅黑;font-size:16px;\"><section class=\"_135editor\" data-tools=\"135编辑器\" data-id=\"88048\" style=\"border-width: 0px;border-style: none;border-color: initial;box-sizing: border-box;\"><section style=\"margin-top: 4em;border-width: initial;border-style: none;border-color: initial;box-sizing: border-box;\"><section style=\"border-width: 2px;border-style: dotted;border-color: rgb(196, 125, 137);border-radius: 0.5em;color: rgb(153, 129, 205);box-sizing: border-box;\"><section style=\"border-radius: 0.5em;font-family: inherit;font-weight: inherit;text-align: center;text-decoration: inherit;color: rgb(0, 0, 0);border-color: rgb(255, 107, 145);background-color: rgb(247, 96, 121);padding: 15px;box-sizing: border-box;\"><section style=\"margin-top: -3.6em;margin-right: auto;margin-left: auto;width: 114px;height: 114px;display: inline-block;vertical-align: middle;border-width: 1px;border-style: solid;border-color: pink;border-radius: 100%;box-shadow: rgb(204, 204, 204) 1px 1px 3px;color: rgb(153, 129, 205);box-sizing: border-box;\"><section style=\"width: 112px;height: 112px;\"><section data-role=\"circle\" style=\"border-radius: 100%;overflow: hidden;margin-right: auto;margin-left: auto;width: 100%;padding-bottom: 100%;height: 0px;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuajzmXzqBbdU5oEPX2XVic0mKx3NNMibusPuQEIFWwhQwqyWhKZNAHqbw.jpeg&quot;);background-position: 50% 50%;background-size: cover;box-sizing: border-box;\" data-width=\"100%\"><img src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuajzmXzqBbdU5oEPX2XVic0mKx3NNMibusPuQEIFWwhQwqyWhKZNAHqbw.jpeg\" style=\"opacity:0;\" class=\"\" data-ratio=\"1.0057803468208093\" data-w=\"173\" data-type=\"jpeg\"  /></section></section></section><section style=\"padding: 15px;box-sizing: border-box;\"><span style=\"color: #FFFFFF;\">中秋佳节</span></section><section class=\"135brush\" data-autoskip=\"1\" data-style=\"color:#FFF;\"><p><span style=\"color: rgb(255, 255, 255);\"><img class=\"\" data-ratio=\"0.55625\" src=\"./image/1iahlaCMvULrE007HiaEm2IRwGVTNJC0jn3yJB28S8sus1NicicVtM2ynbpa4KwvjzBMH4UibysjQbZhSjF4U2XibtWg.jpeg\" data-type=\"jpeg\" data-w=\"640\" style=\"box-sizing: border-box;color: rgb(62, 62, 62);\" width=\"90%\"  /></span></p><p><span style=\"color: rgb(255, 255, 255);\">月满花语 情深意浓</span></p><p><span style=\"color: rgb(255, 255, 255);\">恰值月圆情浓日 正是花开倾语时</span></p><p><span style=\"color: rgb(255, 255, 255);font-family: inherit;font-weight: inherit;text-decoration: inherit;\">“凉风有信，秋月无边，</span></p><p><span style=\"color: rgb(255, 255, 255);font-family: inherit;font-weight: inherit;text-decoration: inherit;\">思家的情绪好比度日如年。”</span></p><p><span style=\"color: rgb(255, 255, 255);\">一年一次的中秋佳节开挂似的就这么来了，</span></p><p><span style=\"color: rgb(255, 255, 255);\">还沉浸在工作中无法自拔，怎么办？</span></p><p><span style=\"color: rgb(255, 255, 255);\">还和国庆在一块，</span></p><p><span style=\"color: rgb(255, 255, 255);\">这个长长的假期要怎么玩？</span></p><p><span style=\"color: rgb(255, 255, 255);\">又是一年佳节时，</span></p><p><span style=\"color: rgb(255, 255, 255);\">公司除了放假，还有没有其他福利？</span></p><p><span style=\"color: rgb(255, 255, 255);\">看着朋友圈里发着各种福利，</span></p><p><span style=\"color: rgb(255, 255, 255);\">不晒都对不起自己票圈？</span></p><p><span style=\"color: #FFFFFF;\"></span></p><section class=\"_wxbEditor\"><section label=\"Powered by 135editor.com\" style=\"font-family: 微软雅黑;\"><section class=\"135editor\" style=\"box-sizing: border-box;border-width: 0px;border-style: none;border-color: initial;\" data-id=\"2311\"><section style=\"border-width: 0px;border-style: initial;border-color: initial;box-sizing: border-box;clear: both;\"><section style=\"box-sizing: border-box;\"><img border=\"0\" class=\"\" data-ratio=\"0.75\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuOoahb607iap6Dc9ZKiaiaLLudXWp8DLVV60ICtSrb0rg76ibg899VWOvYQ.jpeg\" data-type=\"jpeg\" data-w=\"1280\" data-width=\"100%\" height=\"auto\" opacity=\"\" style=\"box-sizing: border-box;width: 100%;\" title=\"\" vspace=\"0\" width=\"100%\"  /><section style=\"box-sizing: border-box;\"><img border=\"0\" class=\"\" data-ratio=\"0.75\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTu1Y6fwhXbPG5kIYfgX9tamoic7xBia9aK3Z8EF80k0pvT1427KOQwYW3w.jpeg\" data-type=\"jpeg\" data-w=\"1280\" data-width=\"49%\" height=\"auto\" opacity=\"\" style=\"box-sizing: border-box;float: left;width: 49%;\" title=\"\" vspace=\"0\" width=\"49%\"  /><img border=\"0\" class=\"\" data-ratio=\"0.75\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTu1Sg45ku5BxBz6zPFVtbxSv3ica8X0rQhibR2KrvbUC6P8F5M4us6RRhw.jpeg\" data-type=\"jpeg\" data-w=\"1280\" data-width=\"49%\" height=\"auto\" opacity=\"\" style=\"box-sizing: border-box;float: right;width: 49%;\" title=\"\" vspace=\"0\" width=\"49%\"  /></section></section></section></section></section></section><p><br  /></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">中秋节是团圆的节日。</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">我们，因同一个梦想，相遇在千优；</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">因世间的缘分，相距在<span style=\"color: rgb(255, 255, 255);font-family: 微软雅黑;font-size: 16px;text-align: center;background-color: rgb(247, 96, 121);\">千优</span>。</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">在这美好的日子，</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 255);font-family: 微软雅黑;font-size: 16px;text-align: center;background-color: rgb(247, 96, 121);\">千优</span>虽不曾与你共同度过，</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">但<span style=\"color: rgb(255, 255, 255);font-family: 微软雅黑;font-size: 16px;text-align: center;background-color: rgb(247, 96, 121);\">千优</span>会一直陪在你身边，</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(255, 255, 255);\">为你送上一份薄礼，希望你能跟家人共聚。</span></p><p style=\"text-align: center;\"><br  /></p><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"font-family:微软雅黑;font-size:16px;\"><section class=\"_135editor\" data-tools=\"135编辑器\" data-id=\"88659\" style=\"border-width: 0px;border-style: none;border-color: initial;box-sizing: border-box;\"><section style=\"display: inline-block;width: 100%;vertical-align: top;box-sizing: border-box;\" data-width=\"100%\"><section style=\"text-align: center;margin: 10px 0% -1px;height: 15px;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTumMBtdjF62xSHH4Yb3lIRrbFoz21EnQzZwON479YTQrK1yp8oq6iaN7w.png&quot;);box-sizing: border-box;background-size: 100% 100%;background-repeat: no-repeat;\"></section><section style=\"text-align: center;box-sizing: border-box;transform: translate3d(0px, 0px, 0px);-webkit-transform: translate3d(0px, 0px, 0px);-moz-transform: translate3d(0px, 0px, 0px);-ms-transform: translate3d(0px, 0px, 0px);-o-transform: translate3d(0px, 0px, 0px);\"><section style=\"display: inline-block;width: 90%;vertical-align: top;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuqpiatb5vNTO5AJ8eljoJOpEtman2nEJhthrIymPoNZcGjVS28WNFa7Q.jpeg&quot;);background-position: 72.6852% 30.2013%;background-repeat: repeat;background-size: 49.1765%;background-attachment: scroll;padding: 20px 15px;box-sizing: border-box;\" data-width=\"90%\"><section style=\"display: inline-block;width: 100%;vertical-align: top;background-color: rgb(254, 255, 255);padding: 10px;box-sizing: border-box;\" data-width=\"100%\"><p><img data-s=\"300,640\" data-type=\"jpeg\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuxlvM0t89wZTfVhfoWpGyVnWjpajstxviaviccjC8r49TDDP3J58QQ2ibA.jpeg\" class=\"\" data-ratio=\"0.75\" data-w=\"1280\"  /></p><p><img data-s=\"300,640\" data-type=\"jpeg\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuzTtEC5r8RfCsQxEbjT8c8BVWSIoHeRIuxYzWZndhC2Q7BwCfWYYnIA.jpeg\" class=\"\" data-ratio=\"1.7777777777777777\" data-w=\"1080\"  /></p></section></section></section><section style=\"text-align: center;margin: -1px 0% 10px;height: 15px;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTumMBtdjF62xSHH4Yb3lIRrbFoz21EnQzZwON479YTQrK1yp8oq6iaN7w.png&quot;);box-sizing: border-box;background-size: 100% 100%;background-repeat: no-repeat;\"></section></section></section><p style=\"text-align: left;\"><span style=\"background-color: transparent;color: rgb(255, 255, 255);font-family: inherit;font-weight: inherit;text-align: left;text-decoration: inherit;\">我们没有阿里说，不过我们有千优说：</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(255, 255, 255);font-family: inherit;font-weight: inherit;text-decoration: inherit;\">①你可以看山看水看月亮，也可以看书看画看手机，千优一直陪着你！</span></p></section><p style=\"text-align: left;\"><span style=\"color: rgb(255, 255, 255);\">②在千优，你是唯一的存在，有事别哭，你还有千优！</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(255, 255, 255);\">③吃月饼的时候，不要忘记五仁馅的，毕竟它陪你走过童年！</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(255, 255, 255);\">④亲，辛苦了，一路同行，感谢有你！</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(255, 255, 255);\"></span></p><p><img data-s=\"300,640\" data-type=\"png\" src=\"./image/ibc6SrbQoSOo8TzPMj7uzibTBQBiaw7FMhjhicibRFYejCMQdjriag11OQ8BB6mA47ykNKkZfRibxhibsGMJibZPhLib3vVQ.png\" class=\"\" data-ratio=\"0.3794642857142857\" data-w=\"224\"  /></p><p><span style=\"color: rgb(255, 255, 255);\">▼</span></p><p><span style=\"color: rgb(255, 255, 255);\">而身为老板的你</span></p><p><span style=\"color: rgb(255, 255, 255);\">还在四处奔波的<span style=\"color: rgb(216, 79, 169);background-color: rgb(255, 255, 255);\"><strong><span style=\"color: rgb(216, 79, 169);background-color: rgb(255, 255, 255);font-size: 18px;\">寻找客户</span></strong></span>吗？</span></p><p><span style=\"color: rgb(255, 255, 255);\">那你就凹凸啦！</span></p><p><span style=\"color: rgb(255, 255, 255);\">▼</span></p><p><span style=\"color: rgb(255, 255, 255);\">移动互联网时代到来</span></p><p><span style=\"color: rgb(255, 255, 255);\">大家都在<strong><span style=\"color: rgb(216, 79, 169);background-color: rgb(255, 255, 255);font-size: 18px;\">千优科技做网络推广</span></strong></span></p><p><span style=\"color: rgb(255, 255, 255);\">▼</span></p><p><strong><span style=\"color: rgb(255, 255, 255);\">千优科技</span></strong></p><p><strong><span style=\"font-size: 18px;background-color: rgb(255, 255, 255);color: rgb(217, 33, 66);\">帮您拥有更好的推广排名</span></strong></p><p><strong><span style=\"font-size: 18px;background-color: rgb(255, 255, 255);color: rgb(217, 33, 66);\">展现企业魅力</span></strong></p><p><span style=\"color: rgb(255, 255, 255);\">尽情放飞您的梦想</span></p><p><span style=\"color: rgb(255, 255, 255);\">▼</span></p><p><span style=\"color: rgb(255, 255, 255);\">最后</span></p><p><span style=\"color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 255);font-family: 微软雅黑;font-size: 16px;text-align: center;background-color: rgb(247, 96, 121);\">▼</span></span></p><p><span style=\"color: rgb(255, 255, 255);\">千优科技祝您中秋节快乐！</span></p><p style=\"text-align: center;\"><br  /></p><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"font-family:微软雅黑;font-size:16px;\"><section class=\"_135editor\" data-tools=\"135编辑器\" data-id=\"90667\" style=\"border-width: 0px;border-style: none;border-color: initial;box-sizing: border-box;\"><section style=\"width:100%;\" data-width=\"100%\"><section style=\"width: 280px;height: 120px;margin: 10px auto;background-image: url(&quot;./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTu6ibsdLz42x4ibpwzdQhXW1cWhzIHCyJgaQzCSsqP2n6YFiasia8fnby9CA.jpeg&quot;);background-repeat: no-repeat;background-size: 100%;overflow: hidden;\"><section style=\"width:95px;height:95px;margin-left:170px;margin-top:10px;\"><img style=\"display: block;height: 100% !important;\" src=\"./image/ibc6SrbQoSOpTCQqGbYhFAaOdxicYhrrTuialSgCzVibtR8LWTjcuwcpX6GnpJrojFVdKxfOHToleLN40icaLm5qTvQ.jpeg\" data-width=\"100%\" title=\"undefined\" class=\"\" data-ratio=\"1\" data-w=\"430\" data-type=\"jpeg\"  /></section></section></section></section><p><span style=\"color: rgb(255, 255, 255);font-family: inherit;font-weight: inherit;text-decoration: inherit;\"></span><br  /></p></section></section></section></section></section></section><p><br  /></p></section><p><br  /></p>', '0', '1507257222');
INSERT INTO `cool_wdjcontent` VALUES ('53', 'https://kuaibao.qq.com/s/NEW2017100602178100?titleFlag=2&from=singlemessage', '习近平铸就“中国信仰”', './image/round_head_img_NEW2017100602178100.jpeg', '央视网', null, './image/round_head_img_NEW2017100602178100.jpeg', '', '<div class=\"content-box\">\r\n                <p class=\"text\">“人民有信仰，民族有希望，国家有力量。”</p><p class=\"text\">——习近平</p><p class=\"text\">1919年冬天，一位当过师范学校国文教员、叫陈望道的年轻人，回到了自己的家乡浙江省义乌市分水塘村。从寒冬到次年早春，他借着一盏昏暗的油灯，送走了一个又一个长夜，翻译《共产党宣言》。1920年8月，第一部《共产党宣言》中文全译本在上海出版。</p><p class=\"text\">《共产党宣言》只有28000多个汉字。这本薄薄的小册子，成为中国共产党人信仰的起点。</p><p class=\"text\">“人民有信仰，民族有希望，国家有力量。”这是习近平对理想信念作出的注脚。</p><p class=\"text\">一个人有了坚定正确的理想信念，就能不懈努力、执着追求；一个国家和民族有了坚定正确的理想信念，就能披荆斩棘、攻坚克难。</p><p class=\"text\">2012年11月17日，中央政治局组织第一次集体学习，习近平反复强调理想信念的重要性——</p><p class=\"text\">“理想信念就是共产党人精神上的‘钙’，没有理想信念，理想信念不坚定，精神上就会‘缺钙’，就会得‘软骨病’。”</p><p class=\"text\">党的十八大以来，以习近平同志为核心的党中央高度重视社会主义精神文明建设，着力全面从严治党，鼓舞和激励全国人民在党中央领导下为实现中华民族伟大复兴的中国梦不断奋进。</p><p class=\"text\"><STRONG>精神文明建设 锻造中国信仰</STRONG></p><p class=\"text\">“真正的社会主义不能仅仅理解为生产力的高度发展，还必须有高度发展的精神文明。”早在20多年前，习近平还在福建宁德工作时就提出这样的论断。</p><p class=\"text\">2014年3月，习近平访问欧洲期间，又将精神文明这一概念带向世界：“实现中国梦，是物质文明和精神文明均衡发展、相互促进的结果。”“实现中国梦，是物质文明和精神文明比翼双飞的发展过程。”</p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2131216989/0\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">2015年2月28日，党和国家领导人习近平、刘云山等在北京人民大会堂会见第四届全国文明城市、文明村镇、文明单位和未成年人思想道德建设工作先进代表。（图片来源：新华社）</p><p class=\"text\">党的十八大以来，以习近平同志为核心的党中央围绕精神文明建设多次召开会议，组织专题集体学习，进行全面研究部署：召开全国宣传思想工作会议；召开中央文明委全体会议；召开全国宣传部长、文明办主任会议；政府多次就精神文明建设领域工作出台各类意见、通知……</p><p class=\"text\">对于一个民族、一个国家来说，最持久、最深层的力量是全社会共同认可的核心价值观，这关乎国家前途命运，关乎人民幸福安康。</p><p class=\"text\">党的十八大提出，倡导富强、民主、文明、和谐，倡导自由、平等、公正、法治，倡导爱国、敬业、诚信、友善，从国家、社会、公民三个层面，积极培育和践行社会主义核心价值观。</p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2131216990/0\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">2013年9月26日，习近平在北京会见第四届全国道德模范及提名奖获得者。这是习近平同全国道德模范龚全珍亲切交谈。（图片来源：新华社）</p><p class=\"text\">“向龚老前辈表示致敬！”2013年9月26日，北京京西宾馆会议楼前厅，习近平在会见第四届全国道德模范及提名奖获得者时，向一位“老阿姨”致以崇高敬意。</p><p class=\"text\">伟大时代呼唤伟大精神，崇高事业需要榜样引领。</p><p class=\"text\">各地区各部门按照党中央部署，不断推进道德建设，中华大地涌现出一大批道德模范、时代楷模、中国好人、最美人物。他们中间，有的助人为乐、见义勇为，有的诚实守信、敬业奉献，有的和睦邻里、孝老爱亲……</p><p class=\"text\">航空英模罗阳、甘当“燃灯者”的邹碧华、“太行新愚公”李保国……一个个闪光的名字，照亮了整个社会的价值星空。</p><p class=\"text\">通过持续发掘、宣传、学习，先进典型的社会影响力和“传帮带”作用不断发挥，越来越多的群众积极行动起来，把良好的道德情操体现在日常工作和生活中，使培育和践行社会主义精神文明建设落细落小落实，社会主义精神文明焕发新风。</p><p class=\"text\"><STRONG>全面从严治党 传承中国信仰</STRONG></p><p class=\"text\">改革开放30多年来，一些党员干部受到市场经济负面效应和各种腐朽思想的影响，开始出现以形式主义、官僚主义、享乐主义和奢靡之风为主要表现的“四风”问题，抹黑了党在人民群众心目中的良好形象，损害了党群关系。正如习近平所强调：“现实生活中，一些党员、干部出这样那样的问题，说到底是信仰迷茫、精神迷失。”</p><p class=\"text\">铁一般的信仰、铁一般的信念、铁一般的纪律、铁一般的担当，这是习近平对领导干部的要求，也是对全党的要求。</p><p class=\"text\">初冬的江苏草青风和，洋溢着蓬勃生机。2014年12月，习近平深入企业、乡村、农户，顶着夜色到科研院所考察调研。他强调：“全面从严治党是推进党的建设新的伟大工程的必然要求。”这次考察中，习近平首次公开将“全面从严治党”与“全面建成小康社会”“全面深化改革”“全面推进依法治国”一并提出。“四个全面”吹响了治国理政新号角。</p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2131216991/0\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">2016年1月12日，习近平在中国共产党第十八届中央纪律检查委员会第六次全体会议上发表重要讲话。（图片来源：新华社）</p><p class=\"text\">时间回溯到2012年底，习近平主持召开的中共中央政治局会议审议通过了关于改进工作作风、密切联系群众的“八项规定”，并将其作为改进全党作风的第一步。随后，从严治党的配套措施相继实施：</p><p class=\"text\">——明确底线、握紧戒尺、立起规矩，把纪律规矩挺在前面。党的十八大以来，出台或修订近80部党内法规，超过现有党内法规的40%，从严治党、从严治吏的制度笼子越扎越紧。</p><p class=\"text\">——推动党的群众路线教育实践活动。“三严三实”专题教育、“两学一做”学习教育常态化制度化，严肃党内政治生活，净化党内政治生态，纯洁党的工作作风。</p><p class=\"text\">——强化各级党组织在干部选拔任用中的领导和把关作用，培养对党忠诚、确实为老百姓想事干事、老百姓信赖的好干部，着力建设一支高素质干部队伍。</p><p class=\"text\">——深入开展反腐败斗争，勇敢地向自己开刀，坚持无禁区、全覆盖、零容忍，“老虎”“苍蝇”一起打。</p><p class=\"text\">截至2017年6月底，全国累计查处违反中央八项规定精神问题17万多起，处分13万多人。</p><p class=\"text\">国家统计局开展的全国党风廉政建设民意调查数据显示，党的十八大召开前，人民群众对党风廉政建设和反腐败工作的满意度是75%。十八大以后，2013年是81%，2014年是88.4%，2015年是91.5%，2016年是92.9%，逐年走高。</p><p class=\"text\">信仰在传承，事业在延续。如果说，在“革命理想高于天”的年代，英雄儿女为共产党人的信仰绘就了基本底色，在“激情燃烧的岁月”，先进典型为共产党人的信仰构筑了精神高地。那么，在与时俱进的改革开放新时期，站在时代潮头的先锋们，则展示出共产党人为了信仰，永葆先进纯洁的崭新面貌。</p><p class=\"text\"><STRONG>民族复兴梦想 凝聚中国信仰</STRONG></p><p class=\"text\">2012年11月29日，习近平和中央政治局常委在国家博物馆参观《复兴之路》展览。他神色坚定地说：“实现中华民族伟大复兴，就是中华民族近代以来最伟大的梦想。”</p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2131216992/0\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">2012年11月29日，习近平和中央政治局常委李克强、张德江、俞正声、刘云山、王岐山、张高丽等来到国家博物馆，参观《复兴之路》展览。（图片来源：新华社）</p><p class=\"text\">回顾中华民族五千年文明史，中国在古代创造了辉煌灿烂的农业文明，但饱受欺凌的近代史却让每一个中国人不堪回首。一百多年来，正是由于强大的信仰，中华民族才能百折不挠奋勇前进，历经磨难不断壮大。</p><p class=\"text\">“党的十八大以来的5年，是党和国家发展进程中很不平凡的5年。”</p><p class=\"text\">2017年9月25日，党的十九大即将召开之际，习近平前往北京展览馆，参观“砥砺奋进的五年”大型成就展。一件件实物模型、一段段视频资料、一张张图片图表，吸引了习近平的目光。</p><p class=\"text\">习近平强调，5年来，党中央团结带领全党全国各族人民，统筹推进“五位一体”总体布局、协调推进“四个全面”战略布局，团结一心，与时俱进，顽强拼搏，攻坚克难，推动中国特色社会主义事业取得长足发展、人民生活得到显著改善，党和国家事业取得历史性成就、发生历史性变革。</p><p class=\"text\">“我坚信，到中国共产党成立100年时全面建成小康社会的目标一定能实现，到新中国成立100年时建成富强民主文明和谐的社会主义现代化国家的目标一定能实现，中华民族伟大复兴的梦想一定能实现。”习近平的话，为人民描绘了一张未来发展的美好蓝图。</p><p class=\"text\">中国信仰拥有凝聚全党和全国人民的强大力量，也是实现中华民族伟大复兴中国梦的精神动力。党的十八大以来，新一代领导集体以“中国梦”为目标，进一步凝聚党心民意，努力践行群众路线，将全国人民团结在一起，为实现“两个一百年”目标而奋斗不止。（文/林孔仕）</p>\r\n                </div>', '0', '1507375144');
INSERT INTO `cool_wdjcontent` VALUES ('54', 'https://kuaibao.qq.com/s/20171006A051DA00?refer=kb_news&titleFlag=2', '他，九年前破坏庾澄庆伊能静婚姻，如今晒照，网友：做作！', './image/round_head_img_20171006A051DA00.jpeg', '小新说娱', null, './image/round_head_img_20171006A051DA00.jpeg', '他，九年前破坏庾澄庆伊能静婚姻，如今晒照，网友：做作！', '<div class=\"content-box\">\r\n                <p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892792/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">相信很多人都知道庾澄庆和伊能静曾经有过一段二十多年的感情，共同育有一子。伊能静甚至用吴静怡的化名为庾澄庆写了很多歌词。其中《春泥》这首歌就是伊能静为他们的爱情而作的，那时很多人都觉得这对金童玉女能像童话结局一般。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892783/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">然而2008年，有夫之妇的伊能静与演员黄维德被爆“牵手门”，两人的形象尽毁。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892797/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">而作为“小三”的黄维德更是被千夫指责，然而在舆论面前，两人去没有终止关系，2009年，伊能静正式公开离婚。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892773/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">不过，即便黄维德破坏了哈林的婚姻，却没有和伊能静走到最后。而如今成为伊能静第二任丈夫的是比之小10岁的秦昊。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892787/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">而因黄维德插足而导致婚姻破裂的哈林，如今已与主播妻子造人成功。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892834/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">但反观黄维德，这些年背负千万巨债，将近50岁也依然未婚，且演艺事业也一直没什么起色。直至前两年凭借《琅琊榜》的誉王一角才重回大众视野。</p></p><p class=\"text\"><p align=center><img src=\"http://inews.gtimg.com/newsapp_match/0/2132892864/0\" width= \"100%\" style=\"display:block;\"/></p><p class=\"text\">最近，黄维德晒出自己的近照，照片中的他没有一丝皱纹，看着一点都不像50岁的人。有网友评论：“大叔变鲜肉”，但也有网友评论p图太明显，做作了点。不管怎样，既然伊能静和庾澄庆都已经各自找到自己的幸福，也希望黄维德能安好。</p></p>\r\n                </div>', '0', '1507375648');
INSERT INTO `cool_wdjcontent` VALUES ('60', 'https://mp.weixin.qq.com/s/oY09RJwYDdn7Q_fudlj8mw', '97年模特因太美遭遇校园暴力，退学后却走红INS，成宇宙第一直男杀手......', './image/cover_img_gh_4ef98011424e.jpeg', '背包旅行', '1507384800', './image/round_head_img_gh_4ef98011424e.png', '点击题目下方背包旅行，订阅中国顶尖旅行杂志', '<p style=\"max-width: 100%;min-height: 1em;white-space: pre-wrap;line-height: 23.2727px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.43\" data-s=\"300,640\" src=\"./image/Hk0NAXoSxTTJPoOMk5QtiaWdeEmzs0qnMpbcq5diamqiam6XG7ibzKnk8Sfkbfiax2yJaiaM43vHznyycgzq2UpeB1PA.jpeg\" data-type=\"png\" data-w=\"100\" style=\"color: rgb(31, 73, 125);line-height: 31px;font-family: Helvetica;font-weight: bold;box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;white-space: pre-wrap;line-height: 23.2727px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"__bg_gif\" data-ratio=\"1.0909090909090908\" src=\"./image/B3L0iaN0AXA3atNSuv2oVBx2NH9qEUcX8KNg9whpCPGW4echHicn9FicqqNg1ejA2fx1dAtrhb5n3qwdlJoiaaVg8w.gif\" data-type=\"gif\" data-w=\"11\" style=\"box-sizing: border-box;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"><span style=\"max-width: 100%;box-sizing: border-box;color: rgb(89, 89, 89);font-size: 12px;word-wrap: break-word !important;\">点击题目下方</span><span style=\"max-width: 100%;box-sizing: border-box;line-height: 2em;font-size: 12px;color: rgb(61, 170, 214);word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\">背包旅行</strong></span><span style=\"max-width: 100%;box-sizing: border-box;color: rgb(89, 89, 89);font-size: 12px;word-wrap: break-word !important;\">，<span style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\">订阅中国</span>顶尖旅行杂志</span></p><hr style=\"max-width: 100%;line-height: 23.2727px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"  /><p style=\"max-width: 100%;min-height: 1em;white-space: pre-wrap;line-height: 23.2727px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p data-mpa-powered-by=\"yiban.io\" style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">因为小时候长得Q萌可爱</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">集万千宠爱于一身的童星不在少数</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">幼时的成名对于每一个孩子来说</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">都如同一把双刃剑</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">享受着宠爱的同时</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">也可能会遭受一部分人的嘲讽</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7wWfygclJuDml6CdibSkUGDwMzIck5XOcuG47wSW1jYYY5PkpMib8votA.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">97年的Celine</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">因为长相甜美</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">3岁便签约知名模特经纪公司</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" src=\"./image/defult/defult.jpeg?\" data-w=\"480\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">14岁却因为美，差点坠入深渊</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.249074074074074\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA73icIgAZL21j9AavMZWoibALtajr4YxIOGlF95zLQGJR7HHTkBapyrNmQ.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">在同学中，或许是她的光芒</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">成为大家口中的另类<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">大家对她指指点点、渐渐疏远</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">甚至拿着她的海报说</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">“整天就知道在镜头前卖弄”</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7gZL95TCAnBWPQQndxxJJW401OCKx7UDXlhEyFXMDbjeYAs3GsK7O0Q.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">连唯一的朋友都被警告</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">“不允许跟她玩儿”</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">14岁的Celine一边面对工作一边面对学业</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">孤独、委屈、压力</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">这样的校园冷暴力压得她喘不过气</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">最终选择了退学</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.6648148148148149\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7iceIFdxcib4uMhFI9A2cVSImdrheicPmfCfMiaJBWJo06DX0eWnvZ6cJAg.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">退学之后，她更加的迷茫</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">她不明白自己到底做错了什么</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">直到把自己逼进了死胡同</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">患上了抑郁症<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7Gyv4rxlMuwruHkOt9NDMXL7tXgm2lA3QfibBaRulxN55IPloweXblsg.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">她不愿和人交流</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">唯一的伙伴是一只宠物狗</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.0731481481481482\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">&nbsp;害怕因为外貌而被人评头论足</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">拍照故意不露脸<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"612\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"640\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">当她处在人生的低谷时</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">她的妈妈用音乐去鼓励和感染她</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"750\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">用音乐对抗内心的恶魔<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">写歌、谱曲、创作、表达内心</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">上传到网上之后，受到了许多人的鼓舞</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.75\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">因为音乐，原来的那个她好像重生了</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">她把所有的情感都唱出来</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">仿佛在发泄，又仿佛在淡淡讲述</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">“为什么要在乎别人的看法呢，</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">开心地做自己就好”</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">&nbsp;</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.996937212863706\" data-s=\"300,640\" src=\"./image/defult/defult.png?\" data-type=\"png\" data-w=\"653\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">重新认识和结交新朋友<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">一起玩音乐、一起参加音乐节</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.006861063464837\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"583\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">还推出的第一首单曲《SEX》</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7IMj5PBic6UQ0047vCafepayBNKAcXCexUHmrqIShntNTcXVOAbcMYZw.jpeg\" data-type=\"jpeg\" data-w=\"1000\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">正在筹备自己的第一张专辑</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">预计将于今年年底推出</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"434\" style=\"width: 670px;box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;\" width=\"100%\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">舞台上的她重新找回了那个光芒四射的自己</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">“上帝给了你特别的容貌，</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">一定是想让你成为一个特别的人，”</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">美好的东西就应该大胆地展示出来”</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7M3at2UvKPicnLdsDcAxrPNicZPAn0nsibicuSrYeltbicTicywANYO7sChibA.jpeg\" data-type=\"jpeg\" data-w=\"692\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">于是她重新拾起自己的模特事业</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">开始健身、拳击、塑形</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"__bg_gif\" data-ratio=\"1.25\" src=\"./image/defult/defult.gif?\" data-w=\"200\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">现在的Celine是这样的</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">自信、优雅、性感、活泼</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">任何一个美好的形容词用在她身上都不为过</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7ibibVGWgK6MKT0OHz772ib9JQd55sE8SYCDggZxFQkyaL2p68sxZl4bOw.jpeg\" data-type=\"jpeg\" data-w=\"746\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">剪刀手的俏皮可爱</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">把精致的五官，完美的无可挑剔</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.6666666666666666\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7Tkdl6E0wtqbMhwFEncTyeibaibtVbtZ21hbH1bmIubF1dmNSC6DHJcibA.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">傲人的身材让女生的目光都会追随于她</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7mlJ0KvpEc9YktXrIM2HPKUmSHnfXibMXwF0owLgYfWCL72B8et1kThA.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7KRHggPEL5aQ6njMMicQJXp7jrvaQnFbLc0YSsISjPgExYukmDNicibppw.jpeg\" data-type=\"jpeg\" data-w=\"1029\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">随风的秀发、迷离的眼神</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">知性？还是性感？</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">或许都有吧</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7P7XadygrdQ92DTFZ3sSAyFW4HBv8NSGGaqqRtSM8e9KZicjCWaSj1pw.jpeg\" data-type=\"jpeg\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">微卷的头发，妥妥的增加了亲和力</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">有种邻家小姐姐的感觉</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.0014492753623188\" src=\"./image/defult/defult.jpeg?\" data-w=\"690\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">阳光下，整个人都在发光</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.2497331910352187\" data-s=\"300,640\" src=\"./image/L02icsLGvDxlV8L85xJe4YZ2Wicq1OWoA7BOQYLMEYW9LXUFbibuvWPms9ktib6X6veiaQGWzHWyYic1RIE5M4okFe5g.jpeg\" data-type=\"jpeg\" data-w=\"937\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">为各大品牌拍摄广告</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">相继登上香港MENCLUB杂志</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.169064748201439\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"556\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">以及台湾版GQ封面</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"1.2497331910352187\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"937\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">她用自己的人生，实力证明着<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">杀不死你的，必定使你强大！</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">如今你用歌声和模特事业<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">回复那些曾经的嘲笑<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;color: rgb(122, 68, 66);box-sizing: border-box !important;word-wrap: break-word !important;\">用明媚的笑容和最好的自己向世界发功</span></strong></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.6648148148148149\" src=\"./image/defult/defult.jpeg?\" data-w=\"1080\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: auto !important;visibility: visible !important;\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">用阳光般的温暖<br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">呼吁人们关注校园暴力和网络暴力<br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;\">积极帮助那些正在遭受校园霸凌的孩子</span></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"  /></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62);font-size: 16px;white-space: normal;background-color: rgb(255, 255, 255);text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.6927536231884058\" data-s=\"300,640\" src=\"./image/defult/defult.jpeg?\" data-type=\"jpeg\" data-w=\"690\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;visibility: visible !important;width: auto !important;\" width=\"auto\"></p><p style=\"max-width: 100%;min-height: 1em;color: rgb(62, 62, 62)', '0', '1507388134');
INSERT INTO `cool_wdjcontent` VALUES ('61', 'https://kuaibao.qq.com/s/20171007A017MX00?refer=kb_news', '诺基亚遗产N950亮相：这画面让粉丝飙泪！', './image/round_head_img_20171007A017MX00.jpeg', '快数码', null, './image/round_head_img_20171007A017MX00.jpeg', '你曾经最爱的是哪款诺基亚的手机呢？下面这款你觉得如何？现在，推特爆料大神@Evan Blass刚刚又戳了老诺粉的泪点，放出了诺基亚N950手机的渲染图，看起来还是原来熟悉的味道。你肯定没有听说过这款机型，因为它从未正式发布，也从未销售过，N950搭载诺基亚自家的Meego系统，外观设计继承了N9的2.5D聚碳酸酯一体式机身与N95...', '<div class=\"content-box\">\r\n                <p class=\"text\">你曾经最爱的是哪款诺基亚的手机呢？下面这款你觉得如何？</p><p class=\"text\">现在，推特爆料大神@Evan Blass刚刚又戳了老诺粉的泪点，放出了诺基亚N950手机的渲染图，看起来还是原来熟悉的味道。</p><p class=\"text\"><p align=center><img src=\"./image/2134203246.jpeg\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">你肯定没有听说过这款机型，因为它从未正式发布，也从未销售过，N950搭载诺基亚自家的Meego系统，外观设计继承了N9的2.5D聚碳酸酯一体式机身与N95的侧滑全键盘，这应该是这款机型命名为N950的原因。</p><p class=\"text\">当然这这款机型并没有仅仅停留在渲染图上，目前一些外国网友已经放出了原型机的上手视频，证明当初诺基亚确实已经把这款机型做了出来。</p><p class=\"text\"><p align=center><img src=\"./image/2134203296.jpeg\" width= \"100%\" style=\"display:block;\"/></p></p><p class=\"text\">看着N950笔者不禁陷入沉思，如果当初诺基亚坚持自己的Meego会怎么样呢？可惜历史没有如果……</p>\r\n                </div>', '0', '1507430139');
INSERT INTO `cool_wdjcontent` VALUES ('62', 'http://view.inews.qq.com/w/WXN2017100702490908', '千万只红螃蟹迁徙覆盖整个海岛 街道如同铺红毯(视频)', './image/cover_img_2162241823.jpeg', '腾讯视频', '2017-10-07 16:08:46', './image/cover_img_2162241823.jpeg', '千万只红螃蟹迁徙覆盖整个海岛 街道如同铺红毯(视频)', '\r\n    <div class=\"inner\"></div>\r\n</div>\r\n<div class=\"header\" bosszone=\"wxn_logo\">\r\n    <a href=\"http://www.qq.com/\"><img src=\"//mat1.gtimg.com/www/mobi/wx/images/icon-logo.jpg\" alt=\"腾讯新闻事实派\" class=\"logo\"></a>\r\n   <!--  <div class=\"erweimaBox\">\r\n        <dl>\r\n            <dt>\r\n                <img src=\"http://mat1.gtimg.com/news/2013/qqnews/qrcode2015.jpg\">\r\n            </dt>\r\n            <dd>微信扫一扫</dd>\r\n            <dd>下载腾讯新闻客户端</dd>\r\n        </dl>\r\n    </div> -->\r\n</div>\r\n<div class=\"main\">\r\n    <div class=\"cont\">\r\n        <h1>千万只红螃蟹迁徙覆盖整个海岛 街道如同铺红毯(视频)</h1>\r\n        <div class=\"tit-bar\">\r\n            <span class=\"origin\">腾讯视频</span><span class=\"date\">2017-10-07 16:08:46</span><span class=\"comment-num\">1993评</span>\r\n        </div>\r\n        \r\n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <div class=\"mobvideonews\" type=\"news\"><div class=\"mobvideonews_imgArea\" bosszone=\"wxn_spfmt\" style=\"width:100%; min-height:150px;\" data-mobvideoqnreading=\"0\"><a href=\"/cmsid/NEW2017100702318603\"><img src=\"//inews.gtimg.com/newsapp_ls/0/2135153159_580360/0\" alt=\"\"><div class=\"imgBg\"></div><div class=\"playBtn\"></div><div class=\"topDesc\"><p class=\"mobvideoTitle\">螃蟹大军迁徙覆盖海岛 街道似铺红毯</p></div><div class=\"bottomDesc\">现场视频</div></a></div><a class=\"unified_downloader downloader_download\" href=\"/cmsid/NEW2017100702318603\" bosszone=\"wxn_spmc\" type=\"news\" style=\"visibility: visible;\"><div class=\"downloader_progress\"></div><div class=\"downloader_text\">螃蟹大军迁徙覆盖海岛 街道似铺红毯</div></a></div><p class=\"text\">最近在澳大利亚圣诞岛，成千上万只新生红螃蟹在海底出生后向陆地迁徙，使得岛上变成了一片红色海洋，看上去像是铺了一条巨大的红毯。</p><p class=\"text\">幼蟹很难在海里变化无常的环境中生存下来，所以会迁徙到陆地上的丛林中，在这个岛上估计生活着数千万只红蟹。到今年11至12月间，岛上的成年螃蟹将进行另一次迁徙，回到海中产卵。</p><p class=\"text\"><a href=\"http://news.qq.com/FERD/CJdown.htm\">看新闻领红包！看红蟹迁徙奇观，领百万现金红包</a></p><p class=\"text\"><a href=\"http://view.inews.qq.com/a/20171007A03LRL00\">问答：澳洲红蟹是一种怎样的螃蟹？为什么会成群结队迁徙？</a></p>\r\n                </div>\r\n    <div class=\"tool-bar\">\r\n        <a href=\"http://www.qq.com/\" bosszone=\"wxn_zwfhsy\" class=\"return\">回到腾讯网，看更多今日热点</a>\r\n        <div class=\"sharebox\">\r\n            <i>分享到：</i>\r\n            <a href=\"javascript:void(0)\" bosszone=\"wxn_txwb\" class=\"qqweibo\">腾讯微博</a>\r\n            <a href=\"javascript:void(0)\" bosszone=\"wxn_qqzone\" class=\"qzone\">QQ空间</a>\r\n            <a href=\"javascript:void(0)\" bosszone=\"wxn_qq\" class=\"qq\">QQ</a>\r\n            <a href=\"javascript:void(0)\" bosszone=\"wxn_sinawb\" class=\"weibo\">新浪微博</a>\r\n            <a href=\"javascript:void(0)\" bosszone=\"wxn_weixin\" class=\"wechat\">微信</a>\r\n        </div>\r\n        <div class=\"wemcn\" id=\"wemcn\">\r\n            <div id=\"ewm\" class=\"ewmDiv clearfix\">\r\n                <div id=\"ewmimg\" class=\"ewmimg\" style=\"width: 85px; height: 85px; float: left; display: inline;\"></div>\r\n                <div class=\"rwmtext\">\r\n                    <p>扫一扫，用手机看新闻！</p>\r\n                    <p>用微信扫描还可以</p>\r\n                    <p>分享至好友和朋友圈</p>\r\n                </div>\r\n            </div>\r\n            <a href=\"javascript:void(0)\" id=\"ewmkg\"></a>\r\n            <i class=\"ewmsj\"></i>\r\n        </div>\r\n    </div>\r\n\r\n        <div class=\"commentBox\">\r\n        <div class=\"title\"><span class=\"title_content\">精选评论</span></div>\r\n        <div class=\"commentScrollWrap\">\r\n            <ul>\r\n                                <li>\r\n                    <div class=\"liWrap\">\r\n                        <div class=\"avatar\"><img src=\"//q2.qlogo.cn/g?b=qq&k=nNtT4pTDAic33HYNia6IbnibA&s=40&t=1507392000\"></div>\r\n                        <div class=\"nameBar\">\r\n                            <span>曼珠沙华</span>\r\n                            <span class=\"time_need_reform\">19小时前</span>\r\n                        </div>\r\n\r\n                        <div class=\"contentBox\">\r\n                            <p class=\"content\">八角 生姜 红叶 胡椒 清煮去味提鲜！捞出控干。锅里加油烧热下蟹！炸至酥脆。捞出撒上孜然粉 ，花椒粉，最后葱花撒上。上盘！</p>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                                <li>\r\n                    <div class=\"liWrap\">\r\n                        <div class=\"avatar\"><img src=\"//q2.qlogo.cn/g?b=qq&k=IIMoIicDImAmpHVXFN731uQ&s=40&t=1507392000\"></div>\r\n                        <div class=\"nameBar\">\r\n                            <span>一叶知秋</span>\r\n                            <span class=\"time_need_reform\">2017-10-07</span>\r\n                        </div>\r\n\r\n                        <div class=\"contentBox\">\r\n                            <p class=\"content\">同样八条腿，如果换成是蜘蛛，那就变成了恐怖片……</p>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                            </ul>\r\n            <a class=\"more-comment\" bosszone=\"wxn_gdpl\" href=\"http://wxn.qq.com/c/comments/2162241823/WXN2162241823\">查看更多评论（1993）</a>\r\n        </div>\r\n    </div>\r\n    \r\n        <div class=\"title\"><span class=\"title_content\">相关新闻</span></div>\r\n    <ul class=\"newslist\" bosszone=\"wxn_xgxw\">\r\n                        <li class=\"txt\">\r\n            <a href=\"//wxn.qq.com/cmsid/20171007A00G3600\">\r\n            <div class=\"info\">\r\n                <div class=\"cont-p\">\r\n                    <p>女儿晒假期返程照 母亲送别场面引网友泪奔</p>\r\n                </div>\r\n                <p class=\"cont-bar\">腾讯新闻 </p>\r\n            </div>\r\n            </a>\r\n        </li>\r\n                                <li class=\"txt\">\r\n            <a href=\"//wxn.qq.com/cmsid/20171007A0204E00\">\r\n            <div class=\"info\">\r\n                <div class=\"cont-p\">\r\n                    <p>知名厨师返乡开挖掘机 20多天赚9万</p>\r\n                </div>\r\n                <p class=\"cont-bar\">腾讯新闻 </p>\r\n            </div>\r\n            </a>\r\n        </li>\r\n                    </ul>\r\n            <div class=\"title last\"><span class=\"title_content\">精彩推荐</span></div>\r\n    <ul class=\"newslist\" id=\"paclist\" bosszone=\"wxn_jctj\">\r\n            </ul>\r\n        <!--ul class=\"newslist\" id=\"paclist\">\r\n    </ul>\r\n    <div class=\"morelist\">点击查看更多</div>\r\n    <div class=\"more-txt\">加载中...</div-->\r\n    <a href=\"http://www.qq.com/\" bosszone=\"wxn_dbdh\" class=\"goqq\">回到腾讯网首页 看更多热点新闻</a>\r\n</div>\r\n<div class=\"naver\">\r\n    <ul class=\"navlist\" bosszone=\"wxn_dbfhsy\">\r\n        <li><a href=\"http://www.qq.com/\" target=\"_blank\">首页</a></li>\r\n        <li><a href=\"http://news.qq.com/\" target=\"_blank\">新闻</a></li>\r\n        <li><a href=\"http://sports.qq.com/\" target=\"_blank\">体育</a></li>\r\n        <li><a href=\"http://ent.qq.com/\" target=\"_blank\">娱乐</a></li>\r\n        <li><a href=\"http://finance.qq.com/\" target=\"_blank\">财经</a></li>\r\n        <li><a href=\"http://fashion.qq.com/\" target=\"_blank\">时尚</a></li>\r\n        <li><a href=\"http://tech.qq.com/\" target=\"_blank\">科技</a></li>\r\n        <li><a href=\"http://auto.qq.com/\" target=\"_blank\">汽车</a></li>\r\n        <li class=\"none\"><a href=\"http://edu.qq.com/\" target=\"_blank\">教育</a></li>\r\n        <li><a href=\"http://v.qq.com/\" target=\"_blank\">视频</a></li>\r\n        <li><a href=\"http://mil.qq.com/\" target=\"_blank\">军事</a></li>\r\n        <li><a href=\"http://sports.qq.com/nba/\" target=\"_blank\">NBA</a></li>\r\n        <li><a href=\"http://ent.qq.com/star/\" target=\"_blank\">明星</a></li>\r\n        <li><a href=\"http://stock.qq.com/\" target=\"_blank\">股票</a></li>\r\n        <li><a href=\"http://astro.fashion.qq.com/\" target=\"_blank\">星座</a></li>\r\n        <li><a href=\"http://digi.tech.qq.com/\" target=\"_blank\">数码</a></li>\r\n        <li><a href=\"http://cul.qq.com/\" target=\"_blank\">文化</a></li>\r\n        <li class=\"none\"><a href=\"http://pp.qq.com/\" target=\"_blank\">图片</a></li>\r\n    </ul>\r\n</div>\r\n<a href=\"javascript:;\" bosszone=\"wxn_top\" class=\"go_top_btn\" style=\"display: none;\"></a>\r\n', '0', '1507445035');
INSERT INTO `cool_wdjcontent` VALUES ('63', 'http://mp.weixin.qq.com/s/oiMvx_7AtOLV_2tRn1-RaQ', '过节胖了3斤？跟我这样吃，瘦6斤', './image/cover_img_gh_f75045bd27e4.jpeg', '美食菜谱小羽私厨', '1507608297', './image/round_head_img_gh_f75045bd27e4.jpeg', '减肥别挨饿，否则越来越胖', '<section style=\"background-color: rgb(255, 255, 255);box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"text-align: center;margin-top: 10px;margin-bottom: 10px;box-sizing: border-box;\"><img style=\"vertical-align: middle;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeibXNQlTmapVLXF6CArFKo5w2EnvxRHmm8wNsPiaDH7khmnPNSsticrtHw.gif\" data-ratio=\"0.2255859\" data-w=\"1024\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"text-align: center;font-size: 29px;box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;display: inline-block;vertical-align: bottom;margin-right: auto;margin-bottom: 0.2em;margin-left: auto;width: 3em;height: 3em;border-radius: 100%;background-position: center center;background-repeat: no-repeat;background-size: cover;box-shadow: rgb(102, 102, 102) 3.53553px 3.53553px 5px;background-image: url(&quot;./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15Xe60YtQKzib8P6FkibguObX6ibzTJlqAO7YZcar5eAKmYphIIU1nSFU3G1g.jpeg&quot;);\"><section class=\"\" style=\"width: 100%;height: 100%;overflow: hidden;box-sizing: border-box;\"><img class=\"\" style=\"width: 100%;height: 100%;opacity: 0;box-sizing: border-box;\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15Xe60YtQKzib8P6FkibguObX6ibzTJlqAO7YZcar5eAKmYphIIU1nSFU3G1g.jpeg\" data-ratio=\"1\" data-w=\"640\" width=\"100%\" data-type=\"jpeg\"  /></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-bottom: 10px;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 12px;letter-spacing: 2px;box-sizing: border-box;\"><p style=\"text-align: center;box-sizing: border-box;\">「用最简单的方法，做最美味的食物——小羽」<br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;color: rgb(255, 133, 133);line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"text-align: center;box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\">↓↓ 先看视频，猜猜今天要做什么呢？&nbsp;</strong><strong style=\"box-sizing: border-box;\">↓↓</strong></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><iframe class=\"video_iframe\" data-vidtype=\"2\" allowfullscreen=\"\" frameborder=\"0\" data-ratio=\"1.7666666666666666\" data-w=\"848\" src=\"https://v.qq.com/iframe/preview.html?vid=s05589lbifv&amp;width=500&amp;height=375&amp;auto=0\"></iframe><br  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p><p style=\"box-sizing: border-box;\"><br  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"transform: translate3d(0px, 0px, 0px);-webkit-transform: translate3d(0px, 0px, 0px);-moz-transform: translate3d(0px, 0px, 0px);-o-transform: translate3d(0px, 0px, 0px);text-align: center;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;width: 60%;vertical-align: top;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;opacity: 0.8;box-sizing: border-box;\"><img style=\"vertical-align: middle;width: 20%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeEVz16iaw7OZ4X5kJeDSCia4gQo7tCWet7mIERTnwicq39hR1IJMvx11kQ.png\" data-ratio=\"0.4294479\" data-w=\"163\" width=\"20%\" data-type=\"png\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;transform: translate3d(0px, 0px, 0px);-webkit-transform: translate3d(0px, 0px, 0px);-moz-transform: translate3d(0px, 0px, 0px);-o-transform: translate3d(0px, 0px, 0px);box-sizing: border-box;\"><section class=\"\" style=\"border-top: 0.1em solid rgb(0, 0, 0);border-bottom: 0.1em solid rgb(0, 0, 0);padding: 2px;line-height: 1.3;font-size: 14px;letter-spacing: 10px;color: rgb(255, 133, 133);box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">五彩蔬菜钵</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"text-align: left;font-size: 12px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">最近中秋节加上国庆节，天天在外面好吃好喝，结果昨天一上班，悲催的发现裤子穿上已经紧绷的不行了，真是每逢佳节胖三斤，定睛一看还是“公斤”，你听得到我内心的呐喊不啦？</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 0.5em auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeCvQHiclIc8lEiaf5fzNQKtnZ57xZsoncajUPHykk8hZV1aShvQ0uIFdw.jpeg\" data-ratio=\"0.6671875\" data-w=\"640\" width=\"85%\" data-type=\"jpeg\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">哎，所以从上班开始，老老实实的回归清淡饮食。我是不提倡暴饮暴食之后再玩命把自己饿三天这种辣手摧花的做法的。毕竟身体是很聪明的，你饿他三天，他转身就会启动饥饿模式，把吃进肚子里的东西统统转化成脂肪贮存起来，因为他不知道你下次吃饭是什么时候，为了保证各个零部件能正常运转，他必须在你每次吃东西时，就把能量都储存起来，等你下次饿着他的时候，他才不会垮掉。<br style=\"box-sizing: border-box;\"  /></p><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p><p style=\"box-sizing: border-box;\">所以，我们要科学的吃好每餐饭，才能达到即瘦身排毒，又营养健康不胖的目的。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 0.5em auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeL4trJARMUE2dg7I7VqJ4TgaDVH1uJdeuLGG3anpxGb18tVIbodqdXg.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">今天跟你分享的就是<strong style=\"box-sizing: border-box;\">五彩蔬菜钵</strong>，有青菜、香菇、鸡肉、胡萝卜和彩椒，营养全面，样子漂亮，让你适当控制饮食的时期，依然可以吃的开心又满足。<br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 0.5em auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeXyIN70udg7jDWMSxQoI97BgCGGTXLpzaSsDxgW9R1xg0zYOtnZpkKw.jpeg\" data-ratio=\"1.4992679\" data-w=\"683\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">今天的第二条，还有我专门为你准备的，当下国外非常流行的“<strong style=\"box-sizing: border-box;\">罗汉碗</strong>”的做法，就是在一碗里把谷物、豆类、蔬菜、水果、高蛋白肉类、坚果等通通码齐，让你在这一碗里就把所有营养都一次吃全~<br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;font-size: 13px;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;vertical-align: top;box-sizing: border-box;\"><section style=\"display: inline-block;vertical-align: top;line-height: 1em;box-sizing: border-box;\"><section style=\"width: 0px;margin-right: -0.5em;display: inline-block;vertical-align: top;border-top: 1em solid rgb(255, 126, 145);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section><section style=\"width: 0px;display: inline-block;vertical-align: top;border-bottom: 1em solid rgb(255, 230, 232);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section></section><section class=\"\" style=\"display: inline-block;vertical-align: top;line-height: 1em;padding-left: 6px;padding-right: 6px;color: rgba(246, 134, 164, 0.83);font-size: 14px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">用料</p></section><section style=\"display: inline-block;vertical-align: top;line-height: 1em;box-sizing: border-box;\"><section style=\"width: 0px;display: inline-block;vertical-align: top;margin-right: -0.5em;border-bottom: 1em solid rgb(255, 126, 145);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section><section style=\"width: 0px;display: inline-block;vertical-align: top;border-top: 1em solid rgb(255, 230, 232);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XekQ7zrjHzzDhMjBcDLpv7dNzkQA0uic7xEtODvK7iaY3IxgVF46CNhGWw.jpeg\" data-ratio=\"2.171875\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;font-size: 13px;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;vertical-align: top;box-sizing: border-box;\"><section style=\"display: inline-block;vertical-align: top;line-height: 1em;box-sizing: border-box;\"><section style=\"width: 0px;margin-right: -0.5em;display: inline-block;vertical-align: top;border-top: 1em solid rgb(255, 126, 145);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section><section style=\"width: 0px;display: inline-block;vertical-align: top;border-bottom: 1em solid rgb(255, 230, 232);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section></section><section class=\"\" style=\"display: inline-block;vertical-align: top;line-height: 1em;padding-left: 6px;padding-right: 6px;color: rgba(246, 134, 164, 0.83);font-size: 14px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">步骤</p></section><section style=\"display: inline-block;vertical-align: top;line-height: 1em;box-sizing: border-box;\"><section style=\"width: 0px;display: inline-block;vertical-align: top;margin-right: -0.5em;border-bottom: 1em solid rgb(255, 126, 145);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section><section style=\"width: 0px;display: inline-block;vertical-align: top;border-top: 1em solid rgb(255, 230, 232);border-left: 0.65em solid transparent;border-right: 0.65em solid transparent;box-sizing: border-box;\"></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 0.5em auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15Xe4Blq2GTmUkZY0eel9oRgBnpQgSbo81KoPsIvls5JvXwEou9A8AibLNg.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-bottom: 40px;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">把小青菜用清水冲洗干净，注意缝隙里也洗干净。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeD9TNJfcqITicic3ayy0KsutmGlcoVbZ0Riaxl93uM8hAZtjCwZbaVDnfg.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 10px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">切掉叶子。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 0.5em auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15Xer5ez1VpIdxBgaldialpoNEcmaCpPibOvdeFsWGThoaKqGwwZYo8NfBUg.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">再把中间的芯儿挖空。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeLvXicDVHKU5foSUO28cnV1sy00eHQV9iaXGtJHItQOo6dlDBrqe3qNcw.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">红彩椒、黄彩椒、香菇、青菜叶子、胡萝卜分别切碎。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeAsI7gF2vLebLW9woa1Jl4Fd5iawRqbG2icYq2dFsDsuT0ZGnlxLX3NhA.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">2大勺生抽，1大勺米醋，1小勺芝麻香油，1小勺白糖，2克盐，1小勺玉米淀粉，1小勺蒜末，1小勺辣椒粉，混合搅拌均匀。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeprKJzPlJT7Xc4GSeT9R4kmEGggQVBmgBSXEJvEluD8kJssVZbI9wHQ.gif\" data-ratio=\"0.5633333\" data-w=\"600\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">炒锅倒油烧热，放入切碎的鸡胸肉，炒到变色。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeMUdCLf3DAlSQqomDgnYIFTGUugMKmGhuNwxKh19icYNk8JicorS7oeNQ.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">再放入之前切好的蔬菜碎。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15Xezrvic0Osyf1EvibsggunYII6d06Z4fB4JQqqX0GLiclQoArFMstHGT7Iw.gif\" data-ratio=\"0.5633333\" data-w=\"600\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">倒入调好的料汁，翻炒均匀，烧到8分熟。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeNWaLdfs4YmXYDHFIfuYicEVkJ0YGibKflkQDuMjnZSrGCSb9HRh2xiaxg.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">舀到之前准备好的青菜钵里。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeQWQyn3Yclys0cRFdoJu2q5hWSkDnt9Aot71VZWiamM5eBqXgsYrrsPw.gif\" data-ratio=\"0.5633333\" data-w=\"600\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;line-height: 0.8;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;border-bottom: 0.8em solid rgb(255, 225, 231);border-left: 0.7em solid transparent !important;border-right: 0.7em solid transparent !important;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">放入水开了的蒸锅里，中火蒸10分钟左右。</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 8px;margin-right: auto;margin-left: auto;text-align: center;box-sizing: border-box;\"><img style=\"border-radius: 1em;width: 85%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XebqfvyxKQTiaqFh7qh6hbrM91MDDbQKFypjia253GQ0nCrIFxwIfiaRCVA.jpeg\" data-ratio=\"0.5996094\" data-w=\"1024\" width=\"85%\" data-type=\"gif\"  /></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin: 20px 0% 40px;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 14px;line-height: 2;letter-spacing: 1px;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">一盘热气腾腾、颜色漂亮的蔬菜钵就做好了~</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;box-sizing: border-box;\"><section class=\"\" style=\"line-height: 1.5em;border-width: 2px;border-style: solid;border-color: rgb(255, 225, 231);border-radius: 0.8em;box-sizing: border-box;\"><section style=\"padding-top: 10px;padding-right: 10px;padding-left: 10px;box-sizing: border-box;\"><section style=\"width: 0.5em;height: 0.5em;float: left;border-radius: 100%;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section><section style=\"width: 0.5em;height: 0.5em;float: right;border-radius: 100%;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section><section style=\"clear: both;box-sizing: border-box;\"></section></section><section class=\"\" style=\"padding: 10px;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"text-align: center;font-size: 14px;letter-spacing: 1px;line-height: 2;padding-right: 25px;padding-left: 25px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">你还可以在对话框输入：<span style=\"color: rgb(255, 255, 255);background-color: rgb(255, 133, 133);box-sizing: border-box;\">&nbsp; &nbsp;蔬菜&nbsp; &nbsp;</span></p><p style=\"box-sizing: border-box;\">看看回复里更多简单又好吃的菜谱</p></section></section></section></section><section style=\"padding-right: 10px;padding-bottom: 10px;padding-left: 10px;box-sizing: border-box;\"><section style=\"width: 0.5em;height: 0.5em;float: left;border-radius: 100%;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section><section style=\"width: 0.5em;height: 0.5em;float: right;border-radius: 100%;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section><section style=\"clear: both;box-sizing: border-box;\"></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 10px;margin-bottom: 10px;text-align: center;opacity: 0.6;font-size: 10px;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;vertical-align: middle;padding: 5px;box-sizing: border-box;\"><section style=\"display: inline-block;vertical-align: middle;width: 1.2em;height: 1.2em;border-width: 2px;border-style: solid;border-color: rgb(255, 133, 133);transform: rotate(45deg);box-sizing: border-box;\"></section><section style=\"display: inline-block;vertical-align: middle;width: 1.2em;height: 1.2em;border-width: 2px;border-style: solid;border-color: rgb(255, 133, 133);margin-left: -0.5em;transform: rotate(45deg);background-color: rgb(255, 133, 133);box-sizing: border-box;\"></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-left: 0%;transform: translate3d(0px, 0px, 0px);text-align: center;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;width: 98%;vertical-align: top;background-color: rgb(254, 255, 255);box-shadow: rgb(116, 116, 116) 0px 0px 0px;padding: 10px;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"transform: translate3d(0px, 0px, 0px);-webkit-transform: translate3d(0px, 0px, 0px);-moz-transform: translate3d(0px, 0px, 0px);-o-transform: translate3d(0px, 0px, 0px);font-size: 14px;box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;width: 90%;vertical-align: top;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"group-empty\" style=\"display: inline-block;width: 100%;vertical-align: top;box-sizing: border-box;\"></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 5px;margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 16px;letter-spacing: 15px;line-height: 1;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\">&nbsp;小</strong><strong style=\"box-sizing: border-box;\">·羽·私·厨</strong></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 5px;margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"text-align: left;font-size: 16px;letter-spacing: 0.5px;box-sizing: border-box;\"><p style=\"text-align: center;box-sizing: border-box;\">&nbsp;想都是问题 吃才是答案</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"font-size: 12px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"display: inline-block;vertical-align: middle;width: 33.33%;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"text-align: right;font-size: 21px;color: rgba(11, 1, 1, 0.86);letter-spacing: 0px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 0.5em;margin-bottom: 0.5em;box-sizing: border-box;\"><section class=\"\" style=\"background-color: rgb(160, 160, 160);height: 1px;box-sizing: border-box;\"></section></section></section></section><section class=\"\" style=\"display: inline-block;vertical-align: middle;width: 33.33%;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><img style=\"vertical-align: middle;box-shadow: rgb(124, 125, 126) 0px 0px 0px;width: 100%;box-sizing: border-box;\" class=\"\" src=\"./image/Qp7fCJoHWmxcB528NKGXwDhdUGgic15XeXnObwicVlZxw8w9pmvgdD2OralsjPI9lMtA4CPkPwa1ImThO0bPwBeA.jpeg\" data-ratio=\"1\" data-w=\"344\" width=\"100%\" data-type=\"jpeg\"  /></section></section></section><section class=\"\" style=\"display: inline-block;vertical-align: middle;width: 33.33%;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 21px;color: rgba(11, 1, 1, 0.86);letter-spacing: 0px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 0.5em;margin-bottom: 0.5em;box-sizing: border-box;\"><section class=\"\" style=\"background-color: rgb(160, 160, 160);height: 1px;box-sizing: border-box;\"></section></section></section></section></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"font-size: 12px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">简单 | 靠谱 | 好吃</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-right: 0%;margin-left: 0%;box-sizing: border-box;\"><section class=\"\" style=\"font-size: 10px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p><p style=\"box-sizing: border-box;\"><strong style=\"letter-spacing: 0px;box-sizing: border-box;\">长按并识别上面的二维码关注我们吧</strong><br style=\"box-sizing: border-box;\"  /></p></section></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-top: 0.5em;margin-bottom: 0.5em;padding-left: 0.8em;padding-right: 0.8em;box-sizing: border-box;\"><section class=\"\" style=\"width: 2.5em;height: 2.5em;margin-right: -0.8em;margin-bottom: -2em;float: right;background-color: rgb(254, 255, 255);box-sizing: border-box;\"><section style=\"transform: rotate(-45deg);-webkit-transform: rotate(-45deg);-moz-transform: rotate(-45deg);-o-transform: rotate(-45deg);transform-origin: 100% center 0px;-webkit-transform-origin: 100% center 0px;-moz-transform-origin: 100% center 0px;-o-transform-origin: 100% center 0px;box-sizing: border-box;\"><section style=\"width: 2.5em;height: 2px;margin-right: -1em;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section></section></section><section class=\"\" style=\"clear: both;box-sizing: border-box;\"></section><section class=\"\" style=\"border-width: 2px;border-style: solid;border-color: rgb(255, 225, 231);padding: 20px 10px;box-sizing: border-box;\"><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"text-align: center;font-size: 14px;line-height: 2;letter-spacing: 1px;box-sizing: border-box;\"><p style=\"clear: none;box-sizing: border-box;\">你喜欢吃什么<span style=\"color: rgb(255, 133, 133);box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\">特色蔬菜</strong></span></p><p style=\"clear: none;box-sizing: border-box;\">在下面的留言区聊聊吧</p><p style=\"clear: none;box-sizing: border-box;\">我学会了就做给你吃啊</p></section></section></section></section><section class=\"\" style=\"width: 2.5em;height: 2.5em;margin-top: -2em;margin-left: -0.8em;background-color: rgb(254, 255, 255);box-sizing: border-box;\"><section style=\"transform: rotate(-45deg);-webkit-transform: rotate(-45deg);-moz-transform: rotate(-45deg);-o-transform: rotate(-45deg);transform-origin: 100% center 0px;-webkit-transform-origin: 100% center 0px;-moz-transform-origin: 100% center 0px;-o-transform-origin: 100% center 0px;box-sizing: border-box;\"><section style=\"width: 2.5em;height: 2px;margin-left: -1em;background-color: rgb(255, 225, 231);box-sizing: border-box;\"></section></section></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"  /></p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"box-sizing: border-box;\"><section class=\"\" style=\"border-bottom: 2px solid rgb(255, 225, 231);font-size: 14px;line-height: 2;letter-spacing: 1px;box-sizing: border-box;\"><p style=\"box-sizing: border-box;\">看饿了？点个赞吧~</p></section></section></section><section class=\"Powered-by-XIUMI V5\" style=\"box-sizing: border-box;\" powered-by=\"xiumi.us\"><section class=\"\" style=\"margin-left: 8%;margin-right: 8%;line-height: 1.1em;font-size: 13px;box-sizing: border-box;\"><section class=\"\" style=\"width: 0px;display: inline-block;vertical-align: top;border-top: 1em solid rgb(255, 225, 231);border-left: 0.8em solid transparent !important;border-right: 0.8em solid transparent !important;box-sizing: border-box;\"></section></section></section></section>', '0', '1507614889');

-- ----------------------------
-- Table structure for cool_wdjsetting
-- ----------------------------
DROP TABLE IF EXISTS `cool_wdjsetting`;
CREATE TABLE `cool_wdjsetting` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `adpic` varchar(255) DEFAULT NULL,
  `adposition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_wdjsetting
-- ----------------------------

-- ----------------------------
-- Table structure for cool_wx_img
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_img`;
CREATE TABLE `cool_wx_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `desc` text NOT NULL COMMENT '简介',
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `title` varchar(60) NOT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='微信图文';

-- ----------------------------
-- Records of cool_wx_img
-- ----------------------------
INSERT INTO `cool_wx_img` VALUES ('3', '手册', '手册', '', 'https://www.kancloud.cn/chichu/cltphp', '1487645725', '', '手册');

-- ----------------------------
-- Table structure for cool_wx_keyword
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_keyword`;
CREATE TABLE `cool_wx_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `pid` int(11) NOT NULL COMMENT '对应表ID',
  `type` varchar(30) DEFAULT 'TEXT' COMMENT '关键词操作类型',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_wx_keyword
-- ----------------------------
INSERT INTO `cool_wx_keyword` VALUES ('5', '早上好！', '5', 'TEXT');
INSERT INTO `cool_wx_keyword` VALUES ('8', '手册', '3', 'IMG');
INSERT INTO `cool_wx_keyword` VALUES ('9', 'hahah', '6', 'TEXT');

-- ----------------------------
-- Table structure for cool_wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_menu`;
CREATE TABLE `cool_wx_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `open` tinyint(1) DEFAULT '1' COMMENT '状态',
  `pid` int(11) DEFAULT '0' COMMENT '上级菜单',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `listorder` int(5) DEFAULT '0' COMMENT '排序',
  `type` varchar(20) DEFAULT '' COMMENT 'view/click',
  `value` varchar(255) DEFAULT NULL COMMENT 'value',
  `token` varchar(50) NOT NULL COMMENT 'token',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cool_wx_menu
-- ----------------------------
INSERT INTO `cool_wx_menu` VALUES ('1', '1', '0', '官网', '1', 'view', 'http://www.hrbkcwl.com', 'eesops1462769263');
INSERT INTO `cool_wx_menu` VALUES ('2', '1', '0', '活动', '2', 'view', 'http://www.rabbitpre.com/m/jAV7NbH?lc=4&sui=OtX2Z8HD&from=timeline&isappinstalled=0#from=share', 'eesops1462769263');

-- ----------------------------
-- Table structure for cool_wx_news
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_news`;
CREATE TABLE `cool_wx_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT 'keyword',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `img_id` varchar(50) DEFAULT NULL COMMENT '图文组合id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='微信图文';

-- ----------------------------
-- Records of cool_wx_news
-- ----------------------------
INSERT INTO `cool_wx_news` VALUES ('22', '测试信息', '1489046272', '', '3,1');
INSERT INTO `cool_wx_news` VALUES ('23', '你好', '1501214515', '', '1,3');

-- ----------------------------
-- Table structure for cool_wx_text
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_text`;
CREATE TABLE `cool_wx_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(90) NOT NULL COMMENT '用户名',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `precisions` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'precisions',
  `text` text NOT NULL COMMENT 'text',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `updatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `click` int(11) NOT NULL COMMENT '点击',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文本回复表';

-- ----------------------------
-- Records of cool_wx_text
-- ----------------------------
INSERT INTO `cool_wx_text` VALUES ('5', '0', '', '早上好！', '0', '早上好！', '1487238755', '1487317308', '0');
INSERT INTO `cool_wx_text` VALUES ('6', '0', '', 'hahah', '0', 'hahahah', '1504235720', '', '0');

-- ----------------------------
-- Table structure for cool_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `cool_wx_user`;
CREATE TABLE `cool_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `appid` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(64) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(64) NOT NULL COMMENT '微信号',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `updatetime` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `web_access_token` varchar(200) NOT NULL COMMENT '网页授权token',
  `web_refresh_token` varchar(200) NOT NULL COMMENT 'web_refresh_token',
  `web_expires` int(11) NOT NULL COMMENT '过期时间',
  `menu_config` text COMMENT '菜单',
  `wait_access` tinyint(1) DEFAULT '0' COMMENT '微信接入状态,0待接入1已接入',
  `concern` varchar(225) DEFAULT '' COMMENT '关注回复',
  `default` varchar(225) DEFAULT '' COMMENT '默认回复',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

-- ----------------------------
-- Records of cool_wx_user
-- ----------------------------
INSERT INTO `cool_wx_user` VALUES ('1', '0', '哈尔滨酷创网络科技有限公司', '', '0', 'wxb8fe07bca5490fbf', '7a1e64d6117f52046d2f1ec005d64ddc', 'gh_6ae849722753', 'hrbkcwl', 'sdfdsfdsfdsf', 'coolphp', '0', '0', '', '', '', '', '', '', '4', 'rD1xDK2wSWG0GHvZXDx_y0M0ELpXKreoLc90SNdc3bAQRh4cgv9o6B3QDFNCAPCfSeFYXFoSUH-_wMIYtbqOjRzk502DszaBV4faVsGG5zzKVqJQegf3KUeRVOYOOKEZFIQfACAVYG', '', '1507614125', '0', '1', '欢迎来到酷创网络~', '亲！您可以输入关键词来获取您想要知道的内容。（例：关于我们）');
