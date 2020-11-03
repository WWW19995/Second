/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : easy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2020-09-27 00:56:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_i18n
-- ----------------------------
DROP TABLE IF EXISTS `sys_i18n`;
CREATE TABLE `sys_i18n` (
  `i18n_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `i18n_key` varchar(100) DEFAULT NULL COMMENT '国际化键值',
  `i18n_content` varchar(200) DEFAULT NULL COMMENT '国际化内容',
  `i18n_lang` varchar(5) DEFAULT NULL COMMENT '国际化语言',
  `i18n_rmk` varchar(100) DEFAULT NULL COMMENT '国际化备注',
  `create_time` datetime DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`i18n_id`),
  UNIQUE KEY `sys_i18n_inx` (`i18n_key`,`i18n_lang`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_i18n
-- ----------------------------
INSERT INTO `sys_i18n` VALUES ('1', 'test', '测试', 'zh-CN', '测试', null, null, null, null);
INSERT INTO `sys_i18n` VALUES ('2', 'test', 'test11', 'en-US', 'test', null, null, null, null);
INSERT INTO `sys_i18n` VALUES ('3', 'easy.sys.menu', '菜单', 'zh-CN', '', null, null, null, null);
INSERT INTO `sys_i18n` VALUES ('4', 'easy.sys.user.manager', '用户管理', 'zh_CN', '', '2020-08-17 08:48:30', '2', '2', '2020-08-17 08:48:30');
INSERT INTO `sys_i18n` VALUES ('5', 'sys.save', '保存', 'zh_CN', '', '2020-09-27 00:29:22', '1', '1', '2020-09-27 00:29:22');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_start` datetime DEFAULT NULL,
  `log_end` datetime DEFAULT NULL,
  `log_latency` int(11) DEFAULT NULL,
  `log_method` varchar(10) DEFAULT NULL,
  `log_uri` varchar(255) DEFAULT NULL,
  `log_status` int(3) DEFAULT NULL,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_user_id` int(11) DEFAULT NULL,
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` bigint(255) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=716 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('2020-09-02 09:34:35', '2020-09-02 09:34:35', '205', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '1', '0', '0', '2020-09-02 09:34:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-02 09:34:35', '2020-09-02 09:34:35', '7', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '2', '0', '0', '2020-09-02 09:34:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-02 09:34:35', '2020-09-02 09:34:35', '0', 'GET', '/table/list', '404', '127.0.0.1', '1', '3', '0', '0', '2020-09-02 09:34:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:18:13', '2020-09-03 00:18:14', '728', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '4', '0', '0', '2020-09-03 00:18:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:18:14', '2020-09-03 00:18:14', '11', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '5', '0', '0', '2020-09-03 00:18:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:18:14', '2020-09-03 00:18:14', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '6', '0', '0', '2020-09-03 00:18:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:18:20', '2020-09-03 00:18:20', '2', 'POST', '/sys/menu/list?size=10&total=9&current=2', '200', '127.0.0.1', '1', '7', '0', '0', '2020-09-03 00:18:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:19:40', '2020-09-03 00:19:40', '1', 'POST', '/sys/menu/list?size=10&total=9&current=1', '200', '127.0.0.1', '0', '8', '0', '0', '2020-09-03 00:19:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:19:55', '2020-09-03 00:19:55', '9', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '9', '0', '0', '2020-09-03 00:19:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:19:56', '2020-09-03 00:19:56', '17', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '10', '0', '0', '2020-09-03 00:19:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:19:56', '2020-09-03 00:19:56', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '11', '0', '0', '2020-09-03 00:19:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:20:04', '2020-09-03 00:20:04', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '12', '0', '0', '2020-09-03 00:20:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:20:04', '2020-09-03 00:20:04', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '13', '0', '0', '2020-09-03 00:20:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:20:24', '2020-09-03 00:20:24', '1', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '14', '0', '0', '2020-09-03 00:20:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:20:24', '2020-09-03 00:20:24', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '15', '0', '0', '2020-09-03 00:20:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:21:02', '2020-09-03 00:21:02', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '16', '0', '0', '2020-09-03 00:21:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:21:03', '2020-09-03 00:21:03', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '17', '0', '0', '2020-09-03 00:21:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:22:15', '2020-09-03 00:22:15', '0', 'GET', '/table/list', '404', '127.0.0.1', '1', '18', '0', '0', '2020-09-03 00:22:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:18', '2020-09-03 00:23:18', '1', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '19', '0', '0', '2020-09-03 00:23:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:18', '2020-09-03 00:23:18', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '20', '0', '0', '2020-09-03 00:23:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:18', '2020-09-03 00:23:18', '1', 'GET', '/table/list', '404', '127.0.0.1', '1', '21', '0', '0', '2020-09-03 00:23:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:37', '2020-09-03 00:23:37', '70', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '22', '0', '0', '2020-09-03 00:23:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:37', '2020-09-03 00:23:37', '10', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '23', '0', '0', '2020-09-03 00:23:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:37', '2020-09-03 00:23:37', '1', 'GET', '/table/list', '404', '127.0.0.1', '1', '24', '0', '0', '2020-09-03 00:23:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:46', '2020-09-03 00:23:46', '2', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '25', '0', '0', '2020-09-03 00:23:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:23:52', '2020-09-03 00:23:52', '2', 'POST', '/sys/menu/list?size=10&total=9&current=2', '200', '127.0.0.1', '1', '26', '0', '0', '2020-09-03 00:23:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:28:24', '2020-09-03 00:28:25', '221', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '27', '0', '0', '2020-09-03 00:28:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:28:25', '2020-09-03 00:28:25', '7', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '28', '0', '0', '2020-09-03 00:28:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:28:25', '2020-09-03 00:28:25', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '29', '0', '0', '2020-09-03 00:28:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-03 00:28:30', '2020-09-03 00:28:30', '2', 'POST', '/sys/menu/list?size=10&total=9&current=2', '200', '127.0.0.1', '1', '30', '0', '0', '2020-09-03 00:28:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:21:53', '2020-09-04 09:21:54', '401', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '31', null, null, '2020-09-04 09:21:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:21:54', '2020-09-04 09:21:54', '270', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '32', null, null, '2020-09-04 09:21:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:24', '2020-09-04 09:28:35', '10860', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '33', null, null, '2020-09-04 09:28:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:36', '2020-09-04 09:28:36', '20', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '34', null, null, '2020-09-04 09:28:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:36', '2020-09-04 09:28:47', '11376', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '35', null, null, '2020-09-04 09:28:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:55', '2020-09-04 09:28:55', '11', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '36', null, null, '2020-09-04 09:28:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:55', '2020-09-04 09:28:55', '19', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '37', null, null, '2020-09-04 09:28:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:28:56', '2020-09-04 09:28:56', '12', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '38', null, null, '2020-09-04 09:28:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:08', '2020-09-04 09:34:09', '709', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '39', null, null, '2020-09-04 09:34:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:09', '2020-09-04 09:34:09', '243', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '40', null, null, '2020-09-04 09:34:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:10', '2020-09-04 09:34:10', '290', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '41', null, null, '2020-09-04 09:34:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:12', '2020-09-04 09:34:12', '14', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '42', null, null, '2020-09-04 09:34:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:12', '2020-09-04 09:34:12', '26', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '43', null, null, '2020-09-04 09:34:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:34:12', '2020-09-04 09:34:12', '5', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '44', null, null, '2020-09-04 09:34:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:25', '2020-09-04 09:35:25', '575', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '45', null, null, '2020-09-04 09:35:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:26', '2020-09-04 09:35:26', '261', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '46', null, null, '2020-09-04 09:35:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:26', '2020-09-04 09:35:26', '130', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '47', null, null, '2020-09-04 09:35:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:29', '2020-09-04 09:35:29', '11', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '48', null, null, '2020-09-04 09:35:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:29', '2020-09-04 09:35:29', '22', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '49', null, null, '2020-09-04 09:35:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:29', '2020-09-04 09:35:29', '7', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '50', null, null, '2020-09-04 09:35:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:35:40', '2020-09-04 09:35:40', '30', 'POST', '/sys/role/saveRoleAuth', '200', '127.0.0.1', '0', '51', null, null, '2020-09-04 09:35:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:15', '2020-09-04 09:47:15', '19', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '52', null, null, '2020-09-04 09:47:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:17', '2020-09-04 09:47:17', '58', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '53', null, null, '2020-09-04 09:47:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:17', '2020-09-04 09:47:17', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '54', null, null, '2020-09-04 09:47:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:23', '2020-09-04 09:47:23', '10', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '55', null, null, '2020-09-04 09:47:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:30', '2020-09-04 09:47:30', '10', 'POST', '/sys/role/save', '200', '127.0.0.1', '0', '56', null, null, '2020-09-04 09:47:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:32', '2020-09-04 09:47:32', '18', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '57', null, null, '2020-09-04 09:47:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:32', '2020-09-04 09:47:32', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '58', null, null, '2020-09-04 09:47:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:47:33', '2020-09-04 09:47:33', '11', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '59', null, null, '2020-09-04 09:47:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:48:50', '2020-09-04 09:48:50', '27', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '60', null, null, '2020-09-04 09:48:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:49:05', '2020-09-04 09:49:05', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '61', null, null, '2020-09-04 09:49:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:49:05', '2020-09-04 09:49:05', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '62', null, null, '2020-09-04 09:49:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 09:49:05', '2020-09-04 09:49:05', '16', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '63', null, null, '2020-09-04 09:49:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:36:24', '2020-09-04 15:36:24', '696', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '64', null, null, '2020-09-04 15:36:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:36:27', '2020-09-04 15:36:27', '464', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '65', null, null, '2020-09-04 15:36:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:36:27', '2020-09-04 15:36:27', '14', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '66', null, null, '2020-09-04 15:36:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:36:39', '2020-09-04 15:36:39', '199', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '67', null, null, '2020-09-04 15:36:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:39:46', '2020-09-04 15:39:47', '86', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '68', null, null, '2020-09-04 15:39:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:39:48', '2020-09-04 15:39:48', '50', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '69', null, null, '2020-09-04 15:39:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:39:48', '2020-09-04 15:39:48', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '70', null, null, '2020-09-04 15:39:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:39:51', '2020-09-04 15:39:51', '3', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '71', null, null, '2020-09-04 15:39:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:40:22', '2020-09-04 15:40:22', '46', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '72', null, null, '2020-09-04 15:40:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:40:23', '2020-09-04 15:40:23', '29', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '73', null, null, '2020-09-04 15:40:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:40:23', '2020-09-04 15:40:23', '6', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '74', null, null, '2020-09-04 15:40:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:40:26', '2020-09-04 15:40:26', '1', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '75', null, null, '2020-09-04 15:40:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:42:12', '2020-09-04 15:42:12', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '76', null, null, '2020-09-04 15:42:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:42:14', '2020-09-04 15:42:14', '57', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '77', null, null, '2020-09-04 15:42:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:42:14', '2020-09-04 15:42:14', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '78', null, null, '2020-09-04 15:42:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:42:16', '2020-09-04 15:42:16', '2', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '79', null, null, '2020-09-04 15:42:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:43:14', '2020-09-04 15:43:14', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '80', null, null, '2020-09-04 15:43:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:43:53', '2020-09-04 15:43:53', '13', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '81', null, null, '2020-09-04 15:43:53', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:07', '2020-09-04 15:44:07', '19', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '82', null, null, '2020-09-04 15:44:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:07', '2020-09-04 15:44:07', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '83', null, null, '2020-09-04 15:44:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:11', '2020-09-04 15:44:11', '2', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '84', null, null, '2020-09-04 15:44:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:41', '2020-09-04 15:44:41', '18', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '85', null, null, '2020-09-04 15:44:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:41', '2020-09-04 15:44:41', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '86', null, null, '2020-09-04 15:44:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:44:53', '2020-09-04 15:44:53', '4', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '87', null, null, '2020-09-04 15:44:53', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:23', '2020-09-04 15:45:23', '16', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '88', null, null, '2020-09-04 15:45:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:40', '2020-09-04 15:45:40', '17', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '89', null, null, '2020-09-04 15:45:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:40', '2020-09-04 15:45:40', '6', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '90', null, null, '2020-09-04 15:45:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:44', '2020-09-04 15:45:44', '3', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '91', null, null, '2020-09-04 15:45:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:45', '2020-09-04 15:45:45', '19', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '92', null, null, '2020-09-04 15:45:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:45:46', '2020-09-04 15:45:46', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '93', null, null, '2020-09-04 15:45:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:46:33', '2020-09-04 15:46:33', '14', 'GET', '/table/list', '404', '127.0.0.1', '0', '94', null, null, '2020-09-04 15:46:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:48:03', '2020-09-04 15:48:03', '181', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '95', null, null, '2020-09-04 15:48:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:48:08', '2020-09-04 15:48:08', '23', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '96', null, null, '2020-09-04 15:48:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 15:48:11', '2020-09-04 15:48:11', '11', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '97', null, null, '2020-09-04 15:48:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:08', '2020-09-04 23:54:08', '518', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '98', null, null, '2020-09-04 23:54:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:08', '2020-09-04 23:54:09', '318', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '99', null, null, '2020-09-04 23:54:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:09', '2020-09-04 23:54:09', '205', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '100', null, null, '2020-09-04 23:54:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:23', '2020-09-04 23:54:23', '34', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '101', null, null, '2020-09-04 23:54:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:27', '2020-09-04 23:54:27', '15', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '102', null, null, '2020-09-04 23:54:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:54:43', '2020-09-04 23:54:43', '24', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '103', null, null, '2020-09-04 23:54:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:57:37', '2020-09-04 23:57:38', '697', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '104', null, null, '2020-09-04 23:57:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:58:35', '2020-09-04 23:58:35', '96', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '105', null, null, '2020-09-04 23:58:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:58:35', '2020-09-04 23:58:35', '15', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '106', null, null, '2020-09-04 23:58:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-04 23:58:35', '2020-09-04 23:58:36', '92', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '107', null, null, '2020-09-04 23:58:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 00:02:02', '2020-09-05 00:02:02', '16', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '108', null, null, '2020-09-05 00:02:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 00:02:02', '2020-09-05 00:02:02', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '109', null, null, '2020-09-05 00:02:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 00:02:03', '2020-09-05 00:02:03', '8', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '110', null, null, '2020-09-05 00:02:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 00:04:56', '2020-09-05 00:04:56', '691', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '111', null, null, '2020-09-05 00:04:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:07:22', '2020-09-05 08:07:22', '710', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '112', null, null, '2020-09-05 08:07:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:07:25', '2020-09-05 08:07:25', '389', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '113', null, null, '2020-09-05 08:07:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:07:25', '2020-09-05 08:07:25', '18', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '114', null, null, '2020-09-05 08:07:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:07:30', '2020-09-05 08:07:30', '169', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '115', null, null, '2020-09-05 08:07:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:29', '2020-09-05 08:12:29', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '116', null, null, '2020-09-05 08:12:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:29', '2020-09-05 08:12:29', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '117', null, null, '2020-09-05 08:12:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:29', '2020-09-05 08:12:29', '14', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '118', null, null, '2020-09-05 08:12:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:34', '2020-09-05 08:12:34', '22', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '119', null, null, '2020-09-05 08:12:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:34', '2020-09-05 08:12:34', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '120', null, null, '2020-09-05 08:12:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:34', '2020-09-05 08:12:34', '8', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '121', null, null, '2020-09-05 08:12:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:38', '2020-09-05 08:12:38', '14', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '122', null, null, '2020-09-05 08:12:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:41', '2020-09-05 08:12:41', '14', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '123', null, null, '2020-09-05 08:12:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:44', '2020-09-05 08:12:44', '15', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '124', null, null, '2020-09-05 08:12:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:12:46', '2020-09-05 08:12:46', '13', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '125', null, null, '2020-09-05 08:12:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:21:52', '2020-09-05 08:21:52', '88', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '126', null, null, '2020-09-05 08:21:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:25', '2020-09-05 08:22:25', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '127', null, null, '2020-09-05 08:22:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:25', '2020-09-05 08:22:25', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '128', null, null, '2020-09-05 08:22:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:25', '2020-09-05 08:22:25', '8', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '129', null, null, '2020-09-05 08:22:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:36', '2020-09-05 08:22:36', '17', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '130', null, null, '2020-09-05 08:22:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:41', '2020-09-05 08:22:41', '11', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '131', null, null, '2020-09-05 08:22:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:50', '2020-09-05 08:22:50', '9', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '132', null, null, '2020-09-05 08:22:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:22:56', '2020-09-05 08:22:56', '12', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '133', null, null, '2020-09-05 08:22:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:23:52', '2020-09-05 08:23:52', '13', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '134', null, null, '2020-09-05 08:23:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:24:52', '2020-09-05 08:24:52', '15', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '135', null, null, '2020-09-05 08:24:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:25:27', '2020-09-05 08:25:27', '17', 'POST', '/sys/menu/list', '200', '127.0.0.1', '0', '136', null, null, '2020-09-05 08:25:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-05 08:31:12', '2020-09-05 08:31:12', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '137', null, null, '2020-09-05 08:31:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:42:01', '2020-09-08 22:42:01', '49', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '138', '0', '0', '2020-09-08 22:42:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:42:03', '2020-09-08 22:42:03', '21', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '139', '0', '0', '2020-09-08 22:42:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:42:03', '2020-09-08 22:42:03', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '140', '0', '0', '2020-09-08 22:42:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:42:09', '2020-09-08 22:42:09', '6', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '141', '0', '0', '2020-09-08 22:42:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:42:09', '2020-09-08 22:42:09', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '142', '0', '0', '2020-09-08 22:42:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 22:51:25', '2020-09-08 22:51:25', '0', 'POST', '/sys/user/logout', '404', '127.0.0.1', '1', '143', '0', '0', '2020-09-08 22:51:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:08:23', '2020-09-08 23:08:23', '36', 'POST', '/sys/user/logout', '200', '127.0.0.1', '1', '144', '0', '0', '2020-09-08 23:08:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:17:01', '2020-09-08 23:17:01', '31', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '145', '0', '0', '2020-09-08 23:17:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:17:05', '2020-09-08 23:17:05', '90', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '146', '0', '0', '2020-09-08 23:17:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:17:05', '2020-09-08 23:17:05', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '147', '0', '0', '2020-09-08 23:17:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:17:10', '2020-09-08 23:17:10', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '148', '0', '0', '2020-09-08 23:17:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:17:11', '2020-09-08 23:17:11', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '149', '0', '0', '2020-09-08 23:17:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:55:29', '2020-09-08 23:55:29', '84', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '150', '0', '0', '2020-09-08 23:55:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:55:29', '2020-09-08 23:55:29', '9', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '151', '0', '0', '2020-09-08 23:55:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:55:36', '2020-09-08 23:55:36', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '152', '0', '0', '2020-09-08 23:55:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-08 23:55:40', '2020-09-08 23:55:40', '1', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '153', '0', '0', '2020-09-08 23:55:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:03:44', '2020-09-09 01:03:44', '47', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '154', '0', '0', '2020-09-09 01:03:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:03:44', '2020-09-09 01:03:44', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '155', '0', '0', '2020-09-09 01:03:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:03:49', '2020-09-09 01:03:49', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '156', '0', '0', '2020-09-09 01:03:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:03:51', '2020-09-09 01:03:51', '38', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '157', '0', '0', '2020-09-09 01:03:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:03:51', '2020-09-09 01:03:51', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '158', '0', '0', '2020-09-09 01:03:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:10', '2020-09-09 01:04:10', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '159', '0', '0', '2020-09-09 01:04:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:11', '2020-09-09 01:04:11', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '160', '0', '0', '2020-09-09 01:04:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:14', '2020-09-09 01:04:14', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '161', '0', '0', '2020-09-09 01:04:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:14', '2020-09-09 01:04:14', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '162', '0', '0', '2020-09-09 01:04:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:17', '2020-09-09 01:04:17', '4', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '163', '0', '0', '2020-09-09 01:04:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:04:17', '2020-09-09 01:04:17', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '164', '0', '0', '2020-09-09 01:04:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:05:09', '2020-09-09 01:05:09', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '165', '0', '0', '2020-09-09 01:05:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:05:09', '2020-09-09 01:05:09', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '166', '0', '0', '2020-09-09 01:05:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:05:45', '2020-09-09 01:05:45', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '167', '0', '0', '2020-09-09 01:05:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:05:45', '2020-09-09 01:07:24', '98791', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '168', '0', '0', '2020-09-09 01:07:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:07:29', '2020-09-09 01:07:29', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '169', '0', '0', '2020-09-09 01:07:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:07:29', '2020-09-09 01:08:11', '42201', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '170', '0', '0', '2020-09-09 01:08:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:10:07', '2020-09-09 01:10:07', '53', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '171', '0', '0', '2020-09-09 01:10:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:11:17', '2020-09-09 01:11:17', '55', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '172', '0', '0', '2020-09-09 01:11:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:11:19', '2020-09-09 01:11:19', '15', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '173', '0', '0', '2020-09-09 01:11:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:18:18', '2020-09-09 01:18:18', '47', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '174', '0', '0', '2020-09-09 01:18:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:18:18', '2020-09-09 01:19:51', '93315', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '175', '0', '0', '2020-09-09 01:19:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:21:29', '2020-09-09 01:21:29', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '176', '0', '0', '2020-09-09 01:21:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:21:29', '2020-09-09 01:21:31', '2265', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '177', '0', '0', '2020-09-09 01:21:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:23:15', '2020-09-09 01:23:15', '68', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '178', '0', '0', '2020-09-09 01:23:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:23:15', '2020-09-09 01:23:17', '2267', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '179', '0', '0', '2020-09-09 01:23:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:24:17', '2020-09-09 01:24:17', '4', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '180', '0', '0', '2020-09-09 01:24:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:24:17', '2020-09-09 01:24:23', '6373', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '181', '0', '0', '2020-09-09 01:24:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:25:59', '2020-09-09 01:25:59', '4', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '182', '0', '0', '2020-09-09 01:25:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:25:59', '2020-09-09 01:25:59', '18', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '183', '0', '0', '2020-09-09 01:25:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:26:03', '2020-09-09 01:26:03', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '184', '0', '0', '2020-09-09 01:26:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:26:03', '2020-09-09 01:26:03', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '185', '0', '0', '2020-09-09 01:26:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:28:39', '2020-09-09 01:28:39', '43', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '186', '0', '0', '2020-09-09 01:28:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:30:25', '2020-09-09 01:30:25', '47', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '187', '0', '0', '2020-09-09 01:30:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:30:36', '2020-09-09 01:30:36', '18', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '188', '0', '0', '2020-09-09 01:30:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:30:36', '2020-09-09 01:30:36', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '189', '0', '0', '2020-09-09 01:30:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:34:34', '2020-09-09 01:34:34', '32', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '190', '0', '0', '2020-09-09 01:34:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:34:34', '2020-09-09 01:34:34', '12', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '191', '0', '0', '2020-09-09 01:34:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:35:30', '2020-09-09 01:35:30', '6', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '192', '0', '0', '2020-09-09 01:35:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:35:30', '2020-09-09 01:35:30', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '193', '0', '0', '2020-09-09 01:35:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:38:59', '2020-09-09 01:38:59', '48', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '194', '0', '0', '2020-09-09 01:38:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:38:59', '2020-09-09 01:38:59', '11', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '195', '0', '0', '2020-09-09 01:38:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:39:18', '2020-09-09 01:39:18', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '196', '0', '0', '2020-09-09 01:39:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:39:18', '2020-09-09 01:39:18', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '197', '0', '0', '2020-09-09 01:39:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:00', '2020-09-09 01:42:00', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '198', '0', '0', '2020-09-09 01:42:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:00', '2020-09-09 01:42:00', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '199', '0', '0', '2020-09-09 01:42:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:02', '2020-09-09 01:42:02', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '200', '0', '0', '2020-09-09 01:42:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:02', '2020-09-09 01:42:02', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '201', '0', '0', '2020-09-09 01:42:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:05', '2020-09-09 01:42:05', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '202', '0', '0', '2020-09-09 01:42:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:05', '2020-09-09 01:42:05', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '203', '0', '0', '2020-09-09 01:42:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:08', '2020-09-09 01:42:08', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '204', '0', '0', '2020-09-09 01:42:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:42:09', '2020-09-09 01:42:09', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '205', '0', '0', '2020-09-09 01:42:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:53:38', '2020-09-09 01:54:09', '30537', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '206', '0', '0', '2020-09-09 01:54:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:54:09', '2020-09-09 01:57:04', '174399', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '207', '0', '0', '2020-09-09 01:57:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:57:20', '2020-09-09 01:57:29', '9130', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '208', '0', '0', '2020-09-09 01:57:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-09 01:57:29', '2020-09-09 01:57:39', '9509', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '209', '0', '0', '2020-09-09 01:57:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:57:27', '2020-09-16 16:57:37', '9693', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '210', '0', '0', '2020-09-16 16:57:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:57:44', '2020-09-16 16:57:47', '2579', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '211', '0', '0', '2020-09-16 16:57:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:57:47', '2020-09-16 16:57:50', '3171', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '212', '0', '0', '2020-09-16 16:57:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:57:59', '2020-09-16 16:57:59', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '213', '0', '0', '2020-09-16 16:57:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:58:00', '2020-09-16 16:58:00', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '214', '0', '0', '2020-09-16 16:58:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 16:58:04', '2020-09-16 16:58:04', '1', 'GET', '/sys/user/list?size=10&total=0&current=1', '404', '127.0.0.1', '1', '215', '0', '0', '2020-09-16 16:58:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:00:24', '2020-09-16 17:00:24', '55', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '216', '0', '0', '2020-09-16 17:00:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:00:24', '2020-09-16 17:00:24', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '217', '0', '0', '2020-09-16 17:00:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:00:25', '2020-09-16 17:00:25', '4', 'POST', '/sys/user/list', '200', '127.0.0.1', '1', '218', '0', '0', '2020-09-16 17:00:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:02:09', '2020-09-16 17:02:09', '24', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '219', '0', '0', '2020-09-16 17:02:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:02:30', '2020-09-16 17:02:30', '1', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '220', '0', '0', '2020-09-16 17:02:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:04:39', '2020-09-16 17:04:39', '41', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '221', '0', '0', '2020-09-16 17:04:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:04:39', '2020-09-16 17:04:39', '13', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '222', '0', '0', '2020-09-16 17:04:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:04:40', '2020-09-16 17:04:40', '13', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '223', '0', '0', '2020-09-16 17:04:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:04:51', '2020-09-16 17:04:51', '0', 'GET', '/sys/menu/list?size=10&total=0&current=1', '404', '127.0.0.1', '1', '224', '0', '0', '2020-09-16 17:04:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:06:37', '2020-09-16 17:06:37', '0', 'GET', '/sys/menu/list', '404', '127.0.0.1', '1', '225', '0', '0', '2020-09-16 17:06:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:06:57', '2020-09-16 17:06:57', '22', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '226', '0', '0', '2020-09-16 17:06:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:07:16', '2020-09-16 17:07:16', '6', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '227', '0', '0', '2020-09-16 17:07:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:07:17', '2020-09-16 17:07:17', '2', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '1', '228', '0', '0', '2020-09-16 17:07:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:07:26', '2020-09-16 17:07:26', '2', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '229', '0', '0', '2020-09-16 17:07:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:07:27', '2020-09-16 17:07:27', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '230', '0', '0', '2020-09-16 17:07:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:07:30', '2020-09-16 17:07:30', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '231', '0', '0', '2020-09-16 17:07:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:29:01', '2020-09-16 17:29:01', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '232', '0', '0', '2020-09-16 17:29:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:29:08', '2020-09-16 17:29:08', '6', 'POST', '/sys/role/list', '200', '127.0.0.1', '1', '233', '0', '0', '2020-09-16 17:29:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:29:21', '2020-09-16 17:29:21', '3', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '1', '234', '0', '0', '2020-09-16 17:29:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:30:19', '2020-09-16 17:30:19', '5', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '1', '235', '0', '0', '2020-09-16 17:30:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:32:51', '2020-09-16 17:32:51', '10', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '236', '0', '0', '2020-09-16 17:32:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:36:39', '2020-09-16 17:36:39', '16', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '237', '0', '0', '2020-09-16 17:36:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:36:49', '2020-09-16 17:36:49', '5', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '238', '0', '0', '2020-09-16 17:36:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:36:54', '2020-09-16 17:36:54', '3', 'POST', '/sys/i18n/list?size=10&total=4&current=1', '200', '127.0.0.1', '1', '239', '0', '0', '2020-09-16 17:36:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:36:58', '2020-09-16 17:36:58', '7', 'POST', '/sys/i18n/list?size=10&total=4&current=1', '200', '127.0.0.1', '1', '240', '0', '0', '2020-09-16 17:36:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:37:01', '2020-09-16 17:37:01', '2', 'POST', '/sys/i18n/list?size=10&total=4&current=1', '200', '127.0.0.1', '1', '241', '0', '0', '2020-09-16 17:37:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:38:21', '2020-09-16 17:38:21', '4', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '242', '0', '0', '2020-09-16 17:38:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:40:43', '2020-09-16 17:40:43', '4', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '243', '0', '0', '2020-09-16 17:40:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:40:46', '2020-09-16 17:40:46', '2', 'POST', '/sys/role/list?size=10&total=2&current=1', '200', '127.0.0.1', '1', '244', '0', '0', '2020-09-16 17:40:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:40:51', '2020-09-16 17:40:51', '7', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '245', '0', '0', '2020-09-16 17:40:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:40:53', '2020-09-16 17:40:53', '4', 'POST', '/sys/i18n/list?size=10&total=4&current=1', '200', '127.0.0.1', '1', '246', '0', '0', '2020-09-16 17:40:53', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:40:58', '2020-09-16 17:40:58', '5', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '247', '0', '0', '2020-09-16 17:40:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:41:01', '2020-09-16 17:41:01', '3', 'POST', '/sys/menu/list?size=10&total=9&current=1', '200', '127.0.0.1', '1', '248', '0', '0', '2020-09-16 17:41:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:41:17', '2020-09-16 17:41:17', '2', 'POST', '/sys/menu/list?size=10&total=9&current=1', '200', '127.0.0.1', '1', '249', '0', '0', '2020-09-16 17:41:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:41:20', '2020-09-16 17:41:20', '3', 'POST', '/sys/menu/list?size=10&total=9&current=1', '200', '127.0.0.1', '1', '250', '0', '0', '2020-09-16 17:41:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:42:09', '2020-09-16 17:42:09', '23', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '251', '0', '0', '2020-09-16 17:42:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:42:16', '2020-09-16 17:42:16', '29', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '252', '0', '0', '2020-09-16 17:42:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:42:41', '2020-09-16 17:42:41', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '253', '0', '0', '2020-09-16 17:42:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:42:41', '2020-09-16 17:42:41', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '254', '0', '0', '2020-09-16 17:42:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:42:42', '2020-09-16 17:42:42', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '255', '0', '0', '2020-09-16 17:42:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:28', '2020-09-16 17:43:28', '6', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '256', '0', '0', '2020-09-16 17:43:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:32', '2020-09-16 17:43:32', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '257', '0', '0', '2020-09-16 17:43:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:33', '2020-09-16 17:43:33', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '258', '0', '0', '2020-09-16 17:43:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:33', '2020-09-16 17:43:33', '3', 'POST', '/sys/menu/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '259', '0', '0', '2020-09-16 17:43:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:36', '2020-09-16 17:43:36', '2', 'POST', '/sys/menu/list?size=5&total=9&current=1', '200', '127.0.0.1', '1', '260', '0', '0', '2020-09-16 17:43:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:38', '2020-09-16 17:43:38', '2', 'POST', '/sys/menu/list?size=5&total=9&current=2', '200', '127.0.0.1', '1', '261', '0', '0', '2020-09-16 17:43:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:43', '2020-09-16 17:43:43', '6', 'POST', '/sys/menu/list?size=5&total=9&current=1', '200', '127.0.0.1', '1', '262', '0', '0', '2020-09-16 17:43:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:43:46', '2020-09-16 17:43:46', '4', 'POST', '/sys/menu/list?size=10&total=9&current=1', '200', '127.0.0.1', '1', '263', '0', '0', '2020-09-16 17:43:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 17:44:27', '2020-09-16 17:44:27', '1', 'GET', '/table/list', '404', '127.0.0.1', '1', '264', '0', '0', '2020-09-16 17:44:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:04:09', '2020-09-16 18:04:09', '0', 'GET', '/c83fca2c192aa9b64116.hot-update.json', '200', '127.0.0.1', '0', '265', '0', '0', '2020-09-16 18:04:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:20', '2020-09-16 18:15:20', '4', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '266', '0', '0', '2020-09-16 18:15:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:20', '2020-09-16 18:15:20', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '267', '0', '0', '2020-09-16 18:15:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:23', '2020-09-16 18:15:23', '5', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '268', '0', '0', '2020-09-16 18:15:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:24', '2020-09-16 18:15:24', '23', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '269', '0', '0', '2020-09-16 18:15:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:24', '2020-09-16 18:15:24', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '270', '0', '0', '2020-09-16 18:15:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:24', '2020-09-16 18:15:24', '1', 'GET', '/table/list', '404', '127.0.0.1', '1', '271', '0', '0', '2020-09-16 18:15:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:29', '2020-09-16 18:15:29', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '272', '0', '0', '2020-09-16 18:15:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:44', '2020-09-16 18:15:44', '5', 'POST', '/sys/user/list?size=5&total=3&current=1', '200', '127.0.0.1', '1', '273', '0', '0', '2020-09-16 18:15:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-16 18:15:48', '2020-09-16 18:15:48', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '274', '0', '0', '2020-09-16 18:15:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:31:52', '2020-09-17 14:31:52', '60', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '275', '0', '0', '2020-09-17 14:31:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:31:54', '2020-09-17 14:31:54', '22', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '276', '0', '0', '2020-09-17 14:31:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:31:54', '2020-09-17 14:31:54', '214', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '277', '0', '0', '2020-09-17 14:31:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:31:57', '2020-09-17 14:31:57', '6', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '278', '0', '0', '2020-09-17 14:31:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:00', '2020-09-17 14:32:00', '2', 'POST', '/sys/i18n/list?size=5&total=4&current=1', '200', '127.0.0.1', '1', '279', '0', '0', '2020-09-17 14:32:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:02', '2020-09-17 14:32:02', '10', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '280', '0', '0', '2020-09-17 14:32:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:07', '2020-09-17 14:32:07', '2', 'POST', '/sys/role/list?size=10&total=2&current=1', '200', '127.0.0.1', '1', '281', '0', '0', '2020-09-17 14:32:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:10', '2020-09-17 14:32:10', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '282', '0', '0', '2020-09-17 14:32:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:20', '2020-09-17 14:32:20', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '283', '0', '0', '2020-09-17 14:32:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:32:30', '2020-09-17 14:32:30', '2', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '284', '0', '0', '2020-09-17 14:32:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:36:26', '2020-09-17 14:36:26', '1', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '285', '0', '0', '2020-09-17 14:36:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:36:36', '2020-09-17 14:36:36', '4', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '286', '0', '0', '2020-09-17 14:36:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:36:39', '2020-09-17 14:36:39', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '287', '0', '0', '2020-09-17 14:36:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:36:40', '2020-09-17 14:36:40', '2', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '288', '0', '0', '2020-09-17 14:36:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:36:42', '2020-09-17 14:36:42', '3', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '289', '0', '0', '2020-09-17 14:36:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:05', '2020-09-17 14:38:05', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '290', '0', '0', '2020-09-17 14:38:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:07', '2020-09-17 14:38:07', '1', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '291', '0', '0', '2020-09-17 14:38:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:09', '2020-09-17 14:38:09', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '292', '0', '0', '2020-09-17 14:38:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:11', '2020-09-17 14:38:11', '1', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '293', '0', '0', '2020-09-17 14:38:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:13', '2020-09-17 14:38:13', '2', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '294', '0', '0', '2020-09-17 14:38:13', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:14', '2020-09-17 14:38:14', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '295', '0', '0', '2020-09-17 14:38:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:16', '2020-09-17 14:38:16', '1', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '296', '0', '0', '2020-09-17 14:38:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:18', '2020-09-17 14:38:18', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '297', '0', '0', '2020-09-17 14:38:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:20', '2020-09-17 14:38:20', '3', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '298', '0', '0', '2020-09-17 14:38:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:22', '2020-09-17 14:38:22', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '299', '0', '0', '2020-09-17 14:38:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:34', '2020-09-17 14:38:34', '3', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '300', '0', '0', '2020-09-17 14:38:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:35', '2020-09-17 14:38:35', '3', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '301', '0', '0', '2020-09-17 14:38:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:37', '2020-09-17 14:38:37', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '302', '0', '0', '2020-09-17 14:38:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:38', '2020-09-17 14:38:38', '2', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '303', '0', '0', '2020-09-17 14:38:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:40', '2020-09-17 14:38:40', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '304', '0', '0', '2020-09-17 14:38:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:42', '2020-09-17 14:38:42', '1', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '305', '0', '0', '2020-09-17 14:38:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:44', '2020-09-17 14:38:44', '2', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '306', '0', '0', '2020-09-17 14:38:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:38:46', '2020-09-17 14:38:46', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '307', '0', '0', '2020-09-17 14:38:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:40:56', '2020-09-17 14:40:56', '3', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '308', '0', '0', '2020-09-17 14:40:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:40:56', '2020-09-17 14:40:56', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '309', '0', '0', '2020-09-17 14:40:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:40:56', '2020-09-17 14:40:56', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '310', '0', '0', '2020-09-17 14:40:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:41:36', '2020-09-17 14:41:36', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '311', '0', '0', '2020-09-17 14:41:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:42:15', '2020-09-17 14:42:15', '11', 'POST', '/sys/menu/save', '200', '127.0.0.1', '1', '312', '0', '0', '2020-09-17 14:42:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:42:40', '2020-09-17 14:42:40', '9', 'POST', '/sys/menu/save', '200', '127.0.0.1', '1', '313', '0', '0', '2020-09-17 14:42:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:42:45', '2020-09-17 14:42:45', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '314', '0', '0', '2020-09-17 14:42:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:42:45', '2020-09-17 14:42:45', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '315', '0', '0', '2020-09-17 14:42:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:42:46', '2020-09-17 14:42:46', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '316', '0', '0', '2020-09-17 14:42:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:10', '2020-09-17 14:43:10', '1', 'POST', '/sys/user/logout', '200', '127.0.0.1', '1', '317', '0', '0', '2020-09-17 14:43:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:11', '2020-09-17 14:43:11', '11', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '318', '0', '0', '2020-09-17 14:43:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:11', '2020-09-17 14:43:11', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '319', '0', '0', '2020-09-17 14:43:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:12', '2020-09-17 14:43:12', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '320', '0', '0', '2020-09-17 14:43:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:17', '2020-09-17 14:43:17', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '321', '0', '0', '2020-09-17 14:43:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:19', '2020-09-17 14:43:19', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '322', '0', '0', '2020-09-17 14:43:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:21', '2020-09-17 14:43:21', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '323', '0', '0', '2020-09-17 14:43:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:24', '2020-09-17 14:43:24', '2', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '324', '0', '0', '2020-09-17 14:43:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:30', '2020-09-17 14:43:30', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '325', '0', '0', '2020-09-17 14:43:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:48', '2020-09-17 14:43:48', '12', 'POST', '/sys/user/save', '200', '127.0.0.1', '1', '326', '0', '0', '2020-09-17 14:43:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:52', '2020-09-17 14:43:52', '15', 'POST', '/sys/user/save', '200', '127.0.0.1', '1', '327', '0', '0', '2020-09-17 14:43:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:56', '2020-09-17 14:43:56', '2', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '328', '0', '0', '2020-09-17 14:43:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:56', '2020-09-17 14:43:56', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '329', '0', '0', '2020-09-17 14:43:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 14:43:56', '2020-09-17 14:43:56', '2', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '330', '0', '0', '2020-09-17 14:43:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:14:21', '2020-09-17 15:14:21', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '331', '0', '0', '2020-09-17 15:14:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:14:23', '2020-09-17 15:14:28', '4591', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '332', '0', '0', '2020-09-17 15:14:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:14:24', '2020-09-17 15:14:28', '3071', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '333', '0', '0', '2020-09-17 15:14:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:14:54', '2020-09-17 15:14:54', '5', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '334', '0', '0', '2020-09-17 15:14:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:14:56', '2020-09-17 15:14:56', '2', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '335', '0', '0', '2020-09-17 15:14:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:15:00', '2020-09-17 15:15:00', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '336', '0', '0', '2020-09-17 15:15:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:15:01', '2020-09-17 15:15:01', '3', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '337', '0', '0', '2020-09-17 15:15:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:15:47', '2020-09-17 15:15:47', '1', 'GET', '/table/list', '404', '127.0.0.1', '1', '338', '0', '0', '2020-09-17 15:15:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:15:54', '2020-09-17 15:15:54', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '339', '0', '0', '2020-09-17 15:15:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:15:56', '2020-09-17 15:15:56', '1', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '340', '0', '0', '2020-09-17 15:15:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:29', '2020-09-17 15:16:29', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '341', '0', '0', '2020-09-17 15:16:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:42', '2020-09-17 15:16:42', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '342', '0', '0', '2020-09-17 15:16:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:46', '2020-09-17 15:16:46', '2', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '343', '0', '0', '2020-09-17 15:16:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:48', '2020-09-17 15:16:48', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '344', '0', '0', '2020-09-17 15:16:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:48', '2020-09-17 15:16:48', '5', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '1', '345', '0', '0', '2020-09-17 15:16:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:48', '2020-09-17 15:16:48', '2', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '1', '346', '0', '0', '2020-09-17 15:16:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:16:59', '2020-09-17 15:16:59', '0', 'POST', '/sys/role/addRoleUser', '200', '127.0.0.1', '1', '347', '0', '0', '2020-09-17 15:16:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:17:41', '2020-09-17 15:17:41', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '348', '0', '0', '2020-09-17 15:17:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:17:43', '2020-09-17 15:17:44', '3', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '349', '0', '0', '2020-09-17 15:17:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 15:17:46', '2020-09-17 15:17:46', '5', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '350', '0', '0', '2020-09-17 15:17:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:08:58', '2020-09-17 17:08:58', '32', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '351', '0', '0', '2020-09-17 17:08:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:08:58', '2020-09-17 17:08:58', '0', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '352', '0', '0', '2020-09-17 17:08:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:01', '2020-09-17 17:09:01', '18', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '353', '0', '0', '2020-09-17 17:09:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:01', '2020-09-17 17:09:01', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '1', '354', '0', '0', '2020-09-17 17:09:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:01', '2020-09-17 17:09:01', '3', 'POST', '/sys/user/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '355', '0', '0', '2020-09-17 17:09:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:03', '2020-09-17 17:09:03', '3', 'POST', '/sys/menu/all', '200', '127.0.0.1', '1', '356', '0', '0', '2020-09-17 17:09:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:05', '2020-09-17 17:09:05', '3', 'POST', '/sys/role/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '357', '0', '0', '2020-09-17 17:09:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-17 17:09:07', '2020-09-17 17:09:07', '3', 'POST', '/sys/i18n/list?size=10&total=0&current=1', '200', '127.0.0.1', '1', '358', '0', '0', '2020-09-17 17:09:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:45:12', '2020-09-23 14:45:13', '718', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '359', null, null, '2020-09-23 14:45:13', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:45:14', '2020-09-23 14:45:15', '497', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '360', null, null, '2020-09-23 14:45:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:45:15', '2020-09-23 14:45:15', '10', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '361', null, null, '2020-09-23 14:45:15', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:45:18', '2020-09-23 14:45:18', '11', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '362', null, null, '2020-09-23 14:45:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:48:54', '2020-09-23 14:48:54', '37', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '363', null, null, '2020-09-23 14:48:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:48:54', '2020-09-23 14:48:54', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '364', null, null, '2020-09-23 14:48:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:48:55', '2020-09-23 14:48:55', '8', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '365', null, null, '2020-09-23 14:48:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:49:03', '2020-09-23 14:49:03', '9', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '366', null, null, '2020-09-23 14:49:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:49:32', '2020-09-23 14:49:32', '6', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '367', null, null, '2020-09-23 14:49:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:52:38', '2020-09-23 14:52:38', '12', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '368', null, null, '2020-09-23 14:52:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:52:39', '2020-09-23 14:52:39', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '369', null, null, '2020-09-23 14:52:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:52:39', '2020-09-23 14:52:39', '3', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '370', null, null, '2020-09-23 14:52:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:52:42', '2020-09-23 14:52:42', '4', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '371', null, null, '2020-09-23 14:52:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 14:53:42', '2020-09-23 14:53:42', '219', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '372', null, null, '2020-09-23 14:53:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:11', '2020-09-23 15:44:11', '277', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '373', null, null, '2020-09-23 15:44:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:14', '2020-09-23 15:44:14', '18', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '374', null, null, '2020-09-23 15:44:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:16', '2020-09-23 15:44:16', '32', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '375', null, null, '2020-09-23 15:44:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:16', '2020-09-23 15:44:16', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '376', null, null, '2020-09-23 15:44:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:16', '2020-09-23 15:44:16', '5', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '377', null, null, '2020-09-23 15:44:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:42', '2020-09-23 15:44:42', '18', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '378', null, null, '2020-09-23 15:44:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:42', '2020-09-23 15:44:42', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '379', null, null, '2020-09-23 15:44:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:44:42', '2020-09-23 15:44:42', '2', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '380', null, null, '2020-09-23 15:44:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:48:54', '2020-09-23 15:48:54', '31', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '381', null, null, '2020-09-23 15:48:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:53:33', '2020-09-23 15:53:33', '11', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '382', null, null, '2020-09-23 15:53:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:53:35', '2020-09-23 15:53:35', '87', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '383', null, null, '2020-09-23 15:53:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:53:37', '2020-09-23 15:53:37', '19', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '384', null, null, '2020-09-23 15:53:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:53:40', '2020-09-23 15:53:40', '10', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '385', null, null, '2020-09-23 15:53:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:53:56', '2020-09-23 15:53:56', '179', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '386', null, null, '2020-09-23 15:53:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:54:08', '2020-09-23 15:54:08', '13', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '387', null, null, '2020-09-23 15:54:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 15:59:08', '2020-09-23 15:59:09', '635', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '388', null, null, '2020-09-23 15:59:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:00:42', '2020-09-23 16:00:42', '595', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '389', null, null, '2020-09-23 16:00:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:00:42', '2020-09-23 16:00:43', '341', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '390', null, null, '2020-09-23 16:00:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:00:43', '2020-09-23 16:00:43', '175', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '391', null, null, '2020-09-23 16:00:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:00:48', '2020-09-23 16:00:48', '96', 'POST', '/sys/user/save', '200', '127.0.0.1', '0', '392', null, null, '2020-09-23 16:00:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:01:04', '2020-09-23 16:01:05', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '393', null, null, '2020-09-23 16:01:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:01:10', '2020-09-23 16:01:10', '18', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '394', null, null, '2020-09-23 16:01:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:01:13', '2020-09-23 16:01:13', '11', 'POST', '/sys/i18n/save', '200', '127.0.0.1', '0', '395', null, null, '2020-09-23 16:01:13', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:02:52', '2020-09-23 16:02:52', '36', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '396', null, null, '2020-09-23 16:02:52', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:00', '2020-09-23 16:03:00', '19', 'POST', '/sys/role/save', '200', '127.0.0.1', '0', '397', null, null, '2020-09-23 16:03:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:22', '2020-09-23 16:03:22', '13', 'POST', '/sys/role/save', '200', '127.0.0.1', '0', '398', null, null, '2020-09-23 16:03:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:27', '2020-09-23 16:03:27', '9', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '399', null, null, '2020-09-23 16:03:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:27', '2020-09-23 16:03:27', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '400', null, null, '2020-09-23 16:03:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:27', '2020-09-23 16:03:27', '6', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '401', null, null, '2020-09-23 16:03:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:33', '2020-09-23 16:03:33', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '402', null, null, '2020-09-23 16:03:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:34', '2020-09-23 16:03:34', '82', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '403', null, null, '2020-09-23 16:03:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:03:34', '2020-09-23 16:03:34', '7', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '404', null, null, '2020-09-23 16:03:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:04:13', '2020-09-23 16:04:13', '6', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '405', null, null, '2020-09-23 16:04:13', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:04:22', '2020-09-23 16:04:22', '7', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '406', null, null, '2020-09-23 16:04:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:04:27', '2020-09-23 16:04:27', '14', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '407', null, null, '2020-09-23 16:04:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:02', '2020-09-23 16:05:02', '10', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '408', null, null, '2020-09-23 16:05:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:05', '2020-09-23 16:05:05', '7', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '409', null, null, '2020-09-23 16:05:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:05', '2020-09-23 16:05:05', '6', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '410', null, null, '2020-09-23 16:05:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:05', '2020-09-23 16:05:05', '4', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '411', null, null, '2020-09-23 16:05:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:08', '2020-09-23 16:05:08', '5', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '412', null, null, '2020-09-23 16:05:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:08', '2020-09-23 16:05:08', '10', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '413', null, null, '2020-09-23 16:05:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:05:14', '2020-09-23 16:05:14', '13', 'POST', '/sys/role/addRoleUser', '200', '127.0.0.1', '0', '414', null, null, '2020-09-23 16:05:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:31', '2020-09-23 16:07:31', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '415', null, null, '2020-09-23 16:07:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:32', '2020-09-23 16:07:32', '6', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '416', null, null, '2020-09-23 16:07:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:32', '2020-09-23 16:07:32', '11', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '417', null, null, '2020-09-23 16:07:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:56', '2020-09-23 16:07:56', '8', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '418', null, null, '2020-09-23 16:07:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:56', '2020-09-23 16:07:56', '8', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '419', null, null, '2020-09-23 16:07:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:07:56', '2020-09-23 16:07:56', '4', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '420', null, null, '2020-09-23 16:07:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:08:08', '2020-09-23 16:08:08', '5', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '421', null, null, '2020-09-23 16:08:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:08:08', '2020-09-23 16:08:08', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '422', null, null, '2020-09-23 16:08:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:08:08', '2020-09-23 16:08:08', '4', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '423', null, null, '2020-09-23 16:08:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:08:25', '2020-09-23 16:08:25', '13', 'POST', '/sys/role/deleteRoleUserByRole', '200', '127.0.0.1', '0', '424', null, null, '2020-09-23 16:08:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:10:00', '2020-09-23 16:10:00', '5', 'POST', '/sys/role/deleteRoleUserByRole', '200', '127.0.0.1', '0', '425', null, null, '2020-09-23 16:10:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:10:16', '2020-09-23 16:10:16', '12', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '426', null, null, '2020-09-23 16:10:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:10:16', '2020-09-23 16:10:16', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '427', null, null, '2020-09-23 16:10:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:10:16', '2020-09-23 16:10:16', '8', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '428', null, null, '2020-09-23 16:10:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:10:39', '2020-09-23 16:10:39', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '429', null, null, '2020-09-23 16:10:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:12:50', '2020-09-23 16:12:50', '11', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '430', null, null, '2020-09-23 16:12:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:12:50', '2020-09-23 16:12:50', '8', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '431', null, null, '2020-09-23 16:12:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:12:51', '2020-09-23 16:12:51', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '432', null, null, '2020-09-23 16:12:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:19:21', '2020-09-23 16:19:21', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '433', null, null, '2020-09-23 16:19:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:20:07', '2020-09-23 16:20:07', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '434', null, null, '2020-09-23 16:20:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:21:49', '2020-09-23 16:21:49', '15', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '435', null, null, '2020-09-23 16:21:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:23:49', '2020-09-23 16:23:49', '26', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '436', null, null, '2020-09-23 16:23:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:23:49', '2020-09-23 16:23:49', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '437', null, null, '2020-09-23 16:23:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:23:49', '2020-09-23 16:23:49', '3', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '438', null, null, '2020-09-23 16:23:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:26:20', '2020-09-23 16:26:20', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '439', null, null, '2020-09-23 16:26:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:33', '2020-09-23 16:57:33', '15', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '440', null, null, '2020-09-23 16:57:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:33', '2020-09-23 16:57:33', '84', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '441', null, null, '2020-09-23 16:57:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:38', '2020-09-23 16:57:38', '6', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '442', null, null, '2020-09-23 16:57:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:39', '2020-09-23 16:57:39', '46', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '443', null, null, '2020-09-23 16:57:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:39', '2020-09-23 16:57:39', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '444', null, null, '2020-09-23 16:57:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:40', '2020-09-23 16:57:40', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '445', null, null, '2020-09-23 16:57:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:46', '2020-09-23 16:57:46', '7', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '446', null, null, '2020-09-23 16:57:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:46', '2020-09-23 16:57:46', '9', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '447', null, null, '2020-09-23 16:57:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 16:57:47', '2020-09-23 16:57:47', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '448', null, null, '2020-09-23 16:57:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 17:00:21', '2020-09-23 17:00:21', '10', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '449', null, null, '2020-09-23 17:00:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 17:00:56', '2020-09-23 17:00:56', '13', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '450', null, null, '2020-09-23 17:00:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-23 17:02:25', '2020-09-23 17:02:26', '654', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '451', null, null, '2020-09-23 17:02:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 09:51:04', '2020-09-26 09:51:04', '431', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '452', null, null, '2020-09-26 09:51:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 09:53:26', '2020-09-26 09:53:26', '419', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '453', null, null, '2020-09-26 09:53:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 09:56:21', '2020-09-26 09:56:21', '408', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '454', null, null, '2020-09-26 09:56:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 09:56:29', '2020-09-26 09:56:29', '30', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '455', null, null, '2020-09-26 09:56:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:34', '2020-09-26 10:00:34', '491', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '456', null, null, '2020-09-26 10:00:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:36', '2020-09-26 10:00:36', '338', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '457', null, null, '2020-09-26 10:00:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:36', '2020-09-26 10:00:36', '12', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '458', null, null, '2020-09-26 10:00:36', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:37', '2020-09-26 10:00:37', '115', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '459', null, null, '2020-09-26 10:00:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:45', '2020-09-26 10:00:45', '24', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '460', null, null, '2020-09-26 10:00:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:56', '2020-09-26 10:00:56', '21', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '461', null, null, '2020-09-26 10:00:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:56', '2020-09-26 10:00:56', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '462', null, null, '2020-09-26 10:00:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:00:56', '2020-09-26 10:00:56', '10', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '463', null, null, '2020-09-26 10:00:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:01:09', '2020-09-26 10:01:09', '10', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '464', null, null, '2020-09-26 10:01:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:01:12', '2020-09-26 10:01:12', '9', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '465', null, null, '2020-09-26 10:01:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:01:12', '2020-09-26 10:01:12', '4', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '466', null, null, '2020-09-26 10:01:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:01:59', '2020-09-26 10:01:59', '102', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '467', null, null, '2020-09-26 10:01:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:02:00', '2020-09-26 10:02:00', '33', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '468', null, null, '2020-09-26 10:02:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:02:00', '2020-09-26 10:02:00', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '469', null, null, '2020-09-26 10:02:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 10:02:01', '2020-09-26 10:02:01', '7', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '470', null, null, '2020-09-26 10:02:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 14:59:07', '2020-09-26 14:59:08', '674', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '471', null, null, '2020-09-26 14:59:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 14:59:11', '2020-09-26 14:59:11', '479', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '472', null, null, '2020-09-26 14:59:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 14:59:11', '2020-09-26 14:59:11', '16', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '473', null, null, '2020-09-26 14:59:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 14:59:12', '2020-09-26 14:59:12', '221', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '474', null, null, '2020-09-26 14:59:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:34', '2020-09-26 15:00:34', '21', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '475', null, null, '2020-09-26 15:00:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:34', '2020-09-26 15:00:34', '17', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '476', null, null, '2020-09-26 15:00:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:35', '2020-09-26 15:00:35', '30', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '477', null, null, '2020-09-26 15:00:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:39', '2020-09-26 15:00:39', '158', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '478', null, null, '2020-09-26 15:00:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:41', '2020-09-26 15:00:41', '28', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '479', null, null, '2020-09-26 15:00:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:41', '2020-09-26 15:00:41', '9', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '480', null, null, '2020-09-26 15:00:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:44', '2020-09-26 15:00:44', '22', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '481', null, null, '2020-09-26 15:00:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:00:44', '2020-09-26 15:00:44', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '482', null, null, '2020-09-26 15:00:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:01:19', '2020-09-26 15:01:19', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '483', null, null, '2020-09-26 15:01:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:01:21', '2020-09-26 15:01:21', '17', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '484', null, null, '2020-09-26 15:01:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:01:21', '2020-09-26 15:01:21', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '485', null, null, '2020-09-26 15:01:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:02:29', '2020-09-26 15:02:29', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '486', null, null, '2020-09-26 15:02:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:02:29', '2020-09-26 15:02:29', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '487', null, null, '2020-09-26 15:02:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:02:43', '2020-09-26 15:02:43', '24', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '488', null, null, '2020-09-26 15:02:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:02:45', '2020-09-26 15:02:45', '22', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '489', null, null, '2020-09-26 15:02:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:02:45', '2020-09-26 15:02:45', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '490', null, null, '2020-09-26 15:02:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:03:24', '2020-09-26 15:03:24', '17', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '491', null, null, '2020-09-26 15:03:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:03:28', '2020-09-26 15:03:28', '33', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '492', null, null, '2020-09-26 15:03:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:03:28', '2020-09-26 15:03:28', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '493', null, null, '2020-09-26 15:03:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:04:42', '2020-09-26 15:04:42', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '494', null, null, '2020-09-26 15:04:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:04:45', '2020-09-26 15:04:45', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '495', null, null, '2020-09-26 15:04:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:04:45', '2020-09-26 15:04:45', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '496', null, null, '2020-09-26 15:04:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:07:19', '2020-09-26 15:07:19', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '497', null, null, '2020-09-26 15:07:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:07:20', '2020-09-26 15:07:20', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '498', null, null, '2020-09-26 15:07:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:07:22', '2020-09-26 15:07:22', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '499', null, null, '2020-09-26 15:07:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:07:23', '2020-09-26 15:07:23', '15', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '500', null, null, '2020-09-26 15:07:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 15:07:23', '2020-09-26 15:07:23', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '501', null, null, '2020-09-26 15:07:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:06:13', '2020-09-26 16:06:13', '20', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '502', null, null, '2020-09-26 16:06:13', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:07:37', '2020-09-26 16:07:37', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '503', null, null, '2020-09-26 16:07:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:13:16', '2020-09-26 16:13:16', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '504', null, null, '2020-09-26 16:13:16', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:13:24', '2020-09-26 16:13:24', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '505', null, null, '2020-09-26 16:13:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:13:26', '2020-09-26 16:13:26', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '506', null, null, '2020-09-26 16:13:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:14:25', '2020-09-26 16:14:25', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '507', null, null, '2020-09-26 16:14:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:14:26', '2020-09-26 16:14:26', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '508', null, null, '2020-09-26 16:14:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:14:43', '2020-09-26 16:14:43', '15', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '509', null, null, '2020-09-26 16:14:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:14:45', '2020-09-26 16:14:45', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '510', null, null, '2020-09-26 16:14:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:33:00', '2020-09-26 16:33:00', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '511', null, null, '2020-09-26 16:33:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:33:05', '2020-09-26 16:33:05', '19', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '512', null, null, '2020-09-26 16:33:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:33:06', '2020-09-26 16:33:06', '6', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '513', null, null, '2020-09-26 16:33:06', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:33:20', '2020-09-26 16:33:20', '19', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '514', null, null, '2020-09-26 16:33:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:33:23', '2020-09-26 16:33:23', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '515', null, null, '2020-09-26 16:33:23', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:34:18', '2020-09-26 16:34:18', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '516', null, null, '2020-09-26 16:34:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:34:47', '2020-09-26 16:34:47', '15', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '517', null, null, '2020-09-26 16:34:47', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:35:12', '2020-09-26 16:35:12', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '518', null, null, '2020-09-26 16:35:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:41:45', '2020-09-26 16:41:45', '8', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '519', null, null, '2020-09-26 16:41:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:42:05', '2020-09-26 16:42:05', '16', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '520', null, null, '2020-09-26 16:42:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:42:05', '2020-09-26 16:42:05', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '521', null, null, '2020-09-26 16:42:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:43:51', '2020-09-26 16:43:51', '9', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '522', null, null, '2020-09-26 16:43:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:43:55', '2020-09-26 16:43:55', '11', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '523', null, null, '2020-09-26 16:43:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:44:14', '2020-09-26 16:44:14', '17', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '524', null, null, '2020-09-26 16:44:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:44:14', '2020-09-26 16:44:14', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '525', null, null, '2020-09-26 16:44:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:45:32', '2020-09-26 16:45:32', '15', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '526', null, null, '2020-09-26 16:45:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:45:32', '2020-09-26 16:45:32', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '527', null, null, '2020-09-26 16:45:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:47:00', '2020-09-26 16:47:00', '13', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '528', null, null, '2020-09-26 16:47:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:47:04', '2020-09-26 16:47:04', '9', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '529', null, null, '2020-09-26 16:47:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:47:12', '2020-09-26 16:47:12', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '530', null, null, '2020-09-26 16:47:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:54:04', '2020-09-26 16:54:04', '11', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '531', null, null, '2020-09-26 16:54:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:54:10', '2020-09-26 16:54:10', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '532', null, null, '2020-09-26 16:54:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 16:54:11', '2020-09-26 16:54:11', '2', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '533', null, null, '2020-09-26 16:54:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:06:53', '2020-09-26 17:06:54', '611', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '534', null, null, '2020-09-26 17:06:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:06:57', '2020-09-26 17:06:57', '276', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '535', null, null, '2020-09-26 17:06:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:06', '2020-09-26 17:07:06', '25', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '536', null, null, '2020-09-26 17:07:06', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:10', '2020-09-26 17:07:10', '100', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '537', null, null, '2020-09-26 17:07:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:10', '2020-09-26 17:07:10', '16', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '538', null, null, '2020-09-26 17:07:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:33', '2020-09-26 17:07:33', '22', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '539', null, null, '2020-09-26 17:07:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:33', '2020-09-26 17:07:33', '17', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '540', null, null, '2020-09-26 17:07:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:34', '2020-09-26 17:07:34', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '541', null, null, '2020-09-26 17:07:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:07:34', '2020-09-26 17:07:34', '8', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '542', null, null, '2020-09-26 17:07:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:19', '2020-09-26 17:41:19', '20', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '543', null, null, '2020-09-26 17:41:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:19', '2020-09-26 17:41:19', '6', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '544', null, null, '2020-09-26 17:41:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:22', '2020-09-26 17:41:22', '26', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '545', null, null, '2020-09-26 17:41:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:22', '2020-09-26 17:41:22', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '546', null, null, '2020-09-26 17:41:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:22', '2020-09-26 17:41:22', '3', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '547', null, null, '2020-09-26 17:41:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:25', '2020-09-26 17:41:25', '18', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '548', null, null, '2020-09-26 17:41:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:25', '2020-09-26 17:41:25', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '549', null, null, '2020-09-26 17:41:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:41:25', '2020-09-26 17:41:25', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '550', null, null, '2020-09-26 17:41:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:42:49', '2020-09-26 17:42:49', '12', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '551', null, null, '2020-09-26 17:42:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:42:50', '2020-09-26 17:42:50', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '552', null, null, '2020-09-26 17:42:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:42:50', '2020-09-26 17:42:50', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '553', null, null, '2020-09-26 17:42:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:45:31', '2020-09-26 17:45:31', '13', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '554', null, null, '2020-09-26 17:45:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:45:31', '2020-09-26 17:45:31', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '555', null, null, '2020-09-26 17:45:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 17:45:32', '2020-09-26 17:45:32', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '556', null, null, '2020-09-26 17:45:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:09:00', '2020-09-26 18:09:00', '16', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '557', null, null, '2020-09-26 18:09:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:09:00', '2020-09-26 18:09:00', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '558', null, null, '2020-09-26 18:09:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:09:01', '2020-09-26 18:09:01', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '559', null, null, '2020-09-26 18:09:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:18:56', '2020-09-26 18:18:57', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '560', null, null, '2020-09-26 18:18:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:18:57', '2020-09-26 18:18:57', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '561', null, null, '2020-09-26 18:18:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:18:57', '2020-09-26 18:18:57', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '562', null, null, '2020-09-26 18:18:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:21:27', '2020-09-26 18:21:27', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '563', null, null, '2020-09-26 18:21:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:22:29', '2020-09-26 18:22:29', '13', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '564', null, null, '2020-09-26 18:22:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:22:30', '2020-09-26 18:22:30', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '565', null, null, '2020-09-26 18:22:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:22:30', '2020-09-26 18:22:30', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '566', null, null, '2020-09-26 18:22:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:24:18', '2020-09-26 18:24:18', '12', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '567', null, null, '2020-09-26 18:24:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:24:18', '2020-09-26 18:24:18', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '568', null, null, '2020-09-26 18:24:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:24:19', '2020-09-26 18:24:19', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '569', null, null, '2020-09-26 18:24:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:25:07', '2020-09-26 18:25:07', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '570', null, null, '2020-09-26 18:25:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:25:07', '2020-09-26 18:25:07', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '571', null, null, '2020-09-26 18:25:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:25:08', '2020-09-26 18:25:08', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '572', null, null, '2020-09-26 18:25:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:31', '2020-09-26 18:28:31', '9', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '573', null, null, '2020-09-26 18:28:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:31', '2020-09-26 18:28:31', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '574', null, null, '2020-09-26 18:28:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:31', '2020-09-26 18:28:31', '14', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '575', null, null, '2020-09-26 18:28:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:44', '2020-09-26 18:28:44', '14', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '576', null, null, '2020-09-26 18:28:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:45', '2020-09-26 18:28:45', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '577', null, null, '2020-09-26 18:28:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:28:45', '2020-09-26 18:28:45', '11', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '578', null, null, '2020-09-26 18:28:45', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:29:26', '2020-09-26 18:29:26', '16', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '579', null, null, '2020-09-26 18:29:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:29:27', '2020-09-26 18:29:27', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '580', null, null, '2020-09-26 18:29:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:29:27', '2020-09-26 18:29:27', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '581', null, null, '2020-09-26 18:29:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:30:54', '2020-09-26 18:30:54', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '582', null, null, '2020-09-26 18:30:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:30:54', '2020-09-26 18:30:54', '1', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '583', null, null, '2020-09-26 18:30:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:30:54', '2020-09-26 18:30:54', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '584', null, null, '2020-09-26 18:30:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:36:12', '2020-09-26 18:36:12', '11', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '585', null, null, '2020-09-26 18:36:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:36:12', '2020-09-26 18:36:12', '3', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '586', null, null, '2020-09-26 18:36:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:36:12', '2020-09-26 18:36:12', '8', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '587', null, null, '2020-09-26 18:36:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:37:03', '2020-09-26 18:37:03', '90', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '588', null, null, '2020-09-26 18:37:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:37:05', '2020-09-26 18:37:05', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '589', null, null, '2020-09-26 18:37:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:37:05', '2020-09-26 18:37:05', '5', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '590', null, null, '2020-09-26 18:37:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 18:37:05', '2020-09-26 18:37:05', '2', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '591', null, null, '2020-09-26 18:37:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:16:52', '2020-09-26 23:16:53', '1137', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '592', null, null, '2020-09-26 23:16:53', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:16:58', '2020-09-26 23:16:59', '693', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '593', null, null, '2020-09-26 23:16:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:16:59', '2020-09-26 23:16:59', '31', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '594', null, null, '2020-09-26 23:16:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:17:00', '2020-09-26 23:17:00', '344', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '595', null, null, '2020-09-26 23:17:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:17:04', '2020-09-26 23:17:04', '27', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '596', null, null, '2020-09-26 23:17:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:17:04', '2020-09-26 23:17:04', '11', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '597', null, null, '2020-09-26 23:17:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:17:04', '2020-09-26 23:17:04', '10', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '598', null, null, '2020-09-26 23:17:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:17:32', '2020-09-26 23:17:32', '26', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '599', null, null, '2020-09-26 23:17:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:18:33', '2020-09-26 23:18:33', '31', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '600', null, null, '2020-09-26 23:18:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:18:33', '2020-09-26 23:18:33', '4', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '601', null, null, '2020-09-26 23:18:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:18:34', '2020-09-26 23:18:34', '10', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '602', null, null, '2020-09-26 23:18:34', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:19:24', '2020-09-26 23:19:24', '16', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '603', null, null, '2020-09-26 23:19:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:22:17', '2020-09-26 23:22:17', '270', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '604', null, null, '2020-09-26 23:22:17', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:22:21', '2020-09-26 23:22:21', '57', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '605', null, null, '2020-09-26 23:22:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:22:21', '2020-09-26 23:22:21', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '606', null, null, '2020-09-26 23:22:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:22:22', '2020-09-26 23:22:22', '14', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '607', null, null, '2020-09-26 23:22:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:29:25', '2020-09-26 23:29:25', '16', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '608', null, null, '2020-09-26 23:29:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:30:33', '2020-09-26 23:30:33', '13', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '609', null, null, '2020-09-26 23:30:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:32:22', '2020-09-26 23:32:22', '15', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '610', null, null, '2020-09-26 23:32:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:33:32', '2020-09-26 23:33:32', '22', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '611', null, null, '2020-09-26 23:33:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:34:18', '2020-09-26 23:34:18', '27', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '612', null, null, '2020-09-26 23:34:18', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:34:58', '2020-09-26 23:34:58', '19', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '613', null, null, '2020-09-26 23:34:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:35:20', '2020-09-26 23:35:20', '26', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '614', null, null, '2020-09-26 23:35:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:35:25', '2020-09-26 23:35:25', '45', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '615', null, null, '2020-09-26 23:35:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:35:25', '2020-09-26 23:35:25', '13', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '616', null, null, '2020-09-26 23:35:25', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:35:26', '2020-09-26 23:35:26', '15', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '617', null, null, '2020-09-26 23:35:26', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:38:21', '2020-09-26 23:38:21', '37', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '618', null, null, '2020-09-26 23:38:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:38:21', '2020-09-26 23:38:21', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '619', null, null, '2020-09-26 23:38:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:38:22', '2020-09-26 23:38:22', '18', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '620', null, null, '2020-09-26 23:38:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:41:49', '2020-09-26 23:41:49', '36', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '621', null, null, '2020-09-26 23:41:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:42:32', '2020-09-26 23:42:32', '11', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '622', null, null, '2020-09-26 23:42:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:43:40', '2020-09-26 23:43:40', '12', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '623', null, null, '2020-09-26 23:43:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:44:27', '2020-09-26 23:44:28', '15', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '624', null, null, '2020-09-26 23:44:28', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:04', '2020-09-26 23:45:04', '11', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '625', null, null, '2020-09-26 23:45:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:06', '2020-09-26 23:45:06', '25', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '626', null, null, '2020-09-26 23:45:06', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:06', '2020-09-26 23:45:06', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '627', null, null, '2020-09-26 23:45:06', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:07', '2020-09-26 23:45:07', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '628', null, null, '2020-09-26 23:45:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:54', '2020-09-26 23:45:54', '9', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '629', null, null, '2020-09-26 23:45:54', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:59', '2020-09-26 23:45:59', '26', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '630', null, null, '2020-09-26 23:45:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:45:59', '2020-09-26 23:45:59', '9', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '631', null, null, '2020-09-26 23:45:59', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:46:00', '2020-09-26 23:46:00', '2', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '632', null, null, '2020-09-26 23:46:00', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:46:08', '2020-09-26 23:46:08', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '633', null, null, '2020-09-26 23:46:08', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:46:09', '2020-09-26 23:46:09', '2', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '634', null, null, '2020-09-26 23:46:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:46:09', '2020-09-26 23:46:09', '3', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '635', null, null, '2020-09-26 23:46:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:46:51', '2020-09-26 23:46:51', '7', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '636', null, null, '2020-09-26 23:46:51', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:47:01', '2020-09-26 23:47:01', '19', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '637', null, null, '2020-09-26 23:47:01', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:47:03', '2020-09-26 23:47:03', '13', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '638', null, null, '2020-09-26 23:47:03', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:47:07', '2020-09-26 23:47:07', '9', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '639', null, null, '2020-09-26 23:47:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:47:30', '2020-09-26 23:47:30', '8', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '640', null, null, '2020-09-26 23:47:30', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:47:39', '2020-09-26 23:47:39', '5', 'POST', '/sys/user/delete', '404', '127.0.0.1', '0', '641', null, null, '2020-09-26 23:47:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:48:29', '2020-09-26 23:48:29', '1', 'POST', '/sys/user/delete', '404', '127.0.0.1', '0', '642', null, null, '2020-09-26 23:48:29', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:56:39', '2020-09-26 23:56:39', '7', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '643', null, null, '2020-09-26 23:56:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:56:46', '2020-09-26 23:56:46', '1', 'POST', '/sys/role/deleteRole', '404', '127.0.0.1', '0', '644', null, null, '2020-09-26 23:56:46', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:57:11', '2020-09-26 23:57:11', '10', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '645', null, null, '2020-09-26 23:57:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-26 23:57:14', '2020-09-26 23:57:14', '4', 'POST', '/sys/role/delete', '200', '127.0.0.1', '0', '646', null, null, '2020-09-26 23:57:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:13:43', '2020-09-27 00:13:43', '6', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '647', null, null, '2020-09-27 00:13:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:18:49', '2020-09-27 00:18:49', '442', 'POST', '/sys/role/delete', '200', '127.0.0.1', '0', '648', null, null, '2020-09-27 00:18:49', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:05', '2020-09-27 00:19:05', '3', 'POST', '/sys/role/delete', '200', '127.0.0.1', '0', '649', null, null, '2020-09-27 00:19:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:07', '2020-09-27 00:19:07', '192', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '650', null, null, '2020-09-27 00:19:07', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:09', '2020-09-27 00:19:09', '182', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '651', null, null, '2020-09-27 00:19:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:09', '2020-09-27 00:19:09', '30', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '652', null, null, '2020-09-27 00:19:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:10', '2020-09-27 00:19:10', '121', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '653', null, null, '2020-09-27 00:19:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:14', '2020-09-27 00:19:14', '12', 'POST', '/sys/role/delete', '200', '127.0.0.1', '0', '654', null, null, '2020-09-27 00:19:14', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:19:31', '2020-09-27 00:19:31', '33', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '655', null, null, '2020-09-27 00:19:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:21:37', '2020-09-27 00:21:38', '8', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '656', null, null, '2020-09-27 00:21:38', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:21:39', '2020-09-27 00:21:39', '63', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '657', null, null, '2020-09-27 00:21:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:21:39', '2020-09-27 00:21:39', '5', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '658', null, null, '2020-09-27 00:21:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:21:39', '2020-09-27 00:21:39', '9', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '659', null, null, '2020-09-27 00:21:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:22:43', '2020-09-27 00:22:43', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '660', null, null, '2020-09-27 00:22:43', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:02', '2020-09-27 00:23:02', '9', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '661', null, null, '2020-09-27 00:23:02', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:04', '2020-09-27 00:23:04', '19', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '662', null, null, '2020-09-27 00:23:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:04', '2020-09-27 00:23:04', '3', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '663', null, null, '2020-09-27 00:23:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:05', '2020-09-27 00:23:05', '6', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '664', null, null, '2020-09-27 00:23:05', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:22', '2020-09-27 00:23:22', '2', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '665', null, null, '2020-09-27 00:23:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:22', '2020-09-27 00:23:22', '8', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '666', null, null, '2020-09-27 00:23:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:22', '2020-09-27 00:23:22', '6', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '667', null, null, '2020-09-27 00:23:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:31', '2020-09-27 00:23:31', '26', 'POST', '/sys/role/saveRoleAuth', '200', '127.0.0.1', '0', '668', null, null, '2020-09-27 00:23:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:39', '2020-09-27 00:23:39', '12', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '669', null, null, '2020-09-27 00:23:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:39', '2020-09-27 00:23:39', '21', 'POST', '/sys/user/getUserByRole', '200', '127.0.0.1', '0', '670', null, null, '2020-09-27 00:23:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:23:39', '2020-09-27 00:23:39', '8', 'POST', '/sys/menu/getRoleMenu', '200', '127.0.0.1', '0', '671', null, null, '2020-09-27 00:23:39', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:26:55', '2020-09-27 00:26:55', '1', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '672', null, null, '2020-09-27 00:26:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:26:56', '2020-09-27 00:26:56', '19', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '673', null, null, '2020-09-27 00:26:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:26:56', '2020-09-27 00:26:56', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '674', null, null, '2020-09-27 00:26:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:26:56', '2020-09-27 00:26:56', '12', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '675', null, null, '2020-09-27 00:26:56', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:27:09', '2020-09-27 00:27:09', '10', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '676', null, null, '2020-09-27 00:27:09', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:27:12', '2020-09-27 00:27:12', '5', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '677', null, null, '2020-09-27 00:27:12', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:04', '2020-09-27 00:28:04', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '678', null, null, '2020-09-27 00:28:04', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:24', '2020-09-27 00:28:24', '71', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '679', null, null, '2020-09-27 00:28:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:31', '2020-09-27 00:28:31', '3', 'POST', '/sys/user/logout', '200', '127.0.0.1', '0', '680', null, null, '2020-09-27 00:28:31', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:33', '2020-09-27 00:28:33', '20', 'POST', '/sys/user/login', '200', '127.0.0.1', '0', '681', null, null, '2020-09-27 00:28:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:33', '2020-09-27 00:28:33', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '682', null, null, '2020-09-27 00:28:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:33', '2020-09-27 00:28:33', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '683', null, null, '2020-09-27 00:28:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:28:35', '2020-09-27 00:28:35', '12', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '684', null, null, '2020-09-27 00:28:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:29:22', '2020-09-27 00:29:22', '15', 'POST', '/sys/i18n/save', '200', '127.0.0.1', '0', '685', null, null, '2020-09-27 00:29:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:29:27', '2020-09-27 00:29:27', '10', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '686', null, null, '2020-09-27 00:29:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:29:27', '2020-09-27 00:29:27', '26', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '687', null, null, '2020-09-27 00:29:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:29:27', '2020-09-27 00:29:27', '16', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '688', null, null, '2020-09-27 00:29:27', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:35:50', '2020-09-27 00:35:50', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '689', null, null, '2020-09-27 00:35:50', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:36:32', '2020-09-27 00:36:32', '10', 'POST', '/sys/menu/save', '200', '127.0.0.1', '0', '690', null, null, '2020-09-27 00:36:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:36:32', '2020-09-27 00:36:32', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '691', null, null, '2020-09-27 00:36:32', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:36:40', '2020-09-27 00:36:40', '7', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '692', null, null, '2020-09-27 00:36:40', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:37:10', '2020-09-27 00:37:10', '13', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '693', null, null, '2020-09-27 00:37:10', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:37:20', '2020-09-27 00:37:20', '19', 'POST', '/sys/user/delete', '200', '127.0.0.1', '0', '694', null, null, '2020-09-27 00:37:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:37:20', '2020-09-27 00:37:20', '6', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '695', null, null, '2020-09-27 00:37:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:39:11', '2020-09-27 00:39:11', '13', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '696', null, null, '2020-09-27 00:39:11', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:39:20', '2020-09-27 00:39:20', '10', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '697', null, null, '2020-09-27 00:39:20', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:39:57', '2020-09-27 00:39:58', '40', 'GET', '/table/list', '404', '127.0.0.1', '0', '698', null, null, '2020-09-27 00:39:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:19', '2020-09-27 00:40:19', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '699', null, null, '2020-09-27 00:40:19', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:22', '2020-09-27 00:40:22', '12', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '700', null, null, '2020-09-27 00:40:22', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:24', '2020-09-27 00:40:24', '6', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '701', null, null, '2020-09-27 00:40:24', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:35', '2020-09-27 00:40:35', '7', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '702', null, null, '2020-09-27 00:40:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:41', '2020-09-27 00:40:41', '7', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '703', null, null, '2020-09-27 00:40:41', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:40:44', '2020-09-27 00:40:44', '12', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '704', null, null, '2020-09-27 00:40:44', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:47:57', '2020-09-27 00:47:57', '12', 'GET', '/sys/env/info', '200', '127.0.0.1', '0', '705', null, null, '2020-09-27 00:47:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:47:57', '2020-09-27 00:47:57', '2', 'GET', '/sys/user/info', '200', '127.0.0.1', '0', '706', null, null, '2020-09-27 00:47:57', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:47:58', '2020-09-27 00:47:58', '7', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '707', null, null, '2020-09-27 00:47:58', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:50:55', '2020-09-27 00:50:55', '9', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '708', null, null, '2020-09-27 00:50:55', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:21', '2020-09-27 00:51:21', '5', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '709', null, null, '2020-09-27 00:51:21', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:33', '2020-09-27 00:51:33', '10', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '710', null, null, '2020-09-27 00:51:33', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:35', '2020-09-27 00:51:35', '4', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '711', null, null, '2020-09-27 00:51:35', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:37', '2020-09-27 00:51:37', '12', 'POST', '/sys/user/list', '200', '127.0.0.1', '0', '712', null, null, '2020-09-27 00:51:37', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:42', '2020-09-27 00:51:42', '5', 'POST', '/sys/menu/all', '200', '127.0.0.1', '0', '713', null, null, '2020-09-27 00:51:42', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:48', '2020-09-27 00:51:48', '9', 'POST', '/sys/role/list', '200', '127.0.0.1', '0', '714', null, null, '2020-09-27 00:51:48', null);
INSERT INTO `sys_log` VALUES ('2020-09-27 00:51:49', '2020-09-27 00:51:49', '10', 'POST', '/sys/i18n/list', '200', '127.0.0.1', '0', '715', null, null, '2020-09-27 00:51:49', null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(200) DEFAULT NULL COMMENT '菜单显示URL',
  `menu_path` varchar(200) DEFAULT NULL COMMENT '菜单对应的前台页面地址',
  `menu_auth` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `menu_type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：隐藏菜单 3：按钮',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `menu_order` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL,
  `create_by` bigint(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '权限菜单', '/cust', null, 'sys:user:shiro', '0', 'lan', '1', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('2', '1', '菜单', '/cust/tree', 'tree/index', '3', '1', 'lan', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('3', '0', '登陆', '/login', 'login/index', null, '2', null, '10', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('7', '1', 'test1', '/cust/table', 'table/index', null, '0', 'user', null, null, null, '2020-09-27 00:36:32', '1');
INSERT INTO `sys_menu` VALUES ('8', '0', '系统管理', '/user', null, null, '0', 'user', '10', null, null, '2020-09-17 14:42:40', '1');
INSERT INTO `sys_menu` VALUES ('9', '8', '用户管理', '/user/User', 'user/User', 'sys.user.list', '1', 'user', '10', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('10', '8', '菜单管理', '/menu/Menu', 'menu/Menu', 'sys.menu.all', '1', 'user', '20', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('11', '8', '角色管理', '/role/Role', 'role/Role', 'sys.role.list', '1', 'user', '30', null, null, '2020-09-04 08:06:57', '1');
INSERT INTO `sys_menu` VALUES ('12', '8', '国际化管理', '/i18n/I18n', 'i18n/I18n', 'sys.i18n.list', '1', 'user', '40', null, null, '2020-09-27 00:28:24', '1');
INSERT INTO `sys_menu` VALUES ('13', '10', '修改', null, null, 'sys.menu.save', '3', null, '10', null, null, '2020-09-26 23:41:49', '1');
INSERT INTO `sys_menu` VALUES ('14', '9', '查询角色下面用户名', '', '', 'sys.user.getUserByRole', '3', '', '10', '2020-09-26 23:22:17', '1', '2020-09-26 23:22:17', '1');
INSERT INTO `sys_menu` VALUES ('15', '9', '删除', '', '', 'sys.user.delete', '3', '', '20', '2020-09-26 23:29:25', '1', '2020-09-26 23:29:25', '1');
INSERT INTO `sys_menu` VALUES ('16', '9', '修改', '', '', 'sys.user.save', '3', '', '30', '2020-09-26 23:30:33', '1', '2020-09-26 23:30:33', '1');
INSERT INTO `sys_menu` VALUES ('17', '11', '修改角色权限', '', '', 'sys.role.saveRoleAuth', '3', '', '10', '2020-09-26 23:32:22', '1', '2020-09-26 23:32:22', '1');
INSERT INTO `sys_menu` VALUES ('18', '11', '添加角色拥有的用户', '', '', 'sys.role.addRoleUser', '3', '', '20', '2020-09-26 23:33:32', '1', '2020-09-26 23:33:32', '1');
INSERT INTO `sys_menu` VALUES ('19', '11', '删除角色拥有的角色', '', '', 'sys.role.deleteRoleUserByRole', '3', '', '30', '2020-09-26 23:34:18', '1', '2020-09-26 23:34:18', '1');
INSERT INTO `sys_menu` VALUES ('20', '11', '修改', '', '', 'sys.role.save', '3', '', '40', '2020-09-26 23:34:58', '1', '2020-09-26 23:34:58', '1');
INSERT INTO `sys_menu` VALUES ('21', '11', '删除', '', '', 'sys.role.delete', '3', '', null, '2020-09-26 23:35:20', '1', '2020-09-26 23:35:20', '1');
INSERT INTO `sys_menu` VALUES ('22', '10', '删除', '', '', 'sys.menu.delete', '3', '', '20', '2020-09-26 23:42:32', '1', '2020-09-26 23:42:32', '1');
INSERT INTO `sys_menu` VALUES ('23', '10', '获取角色拥有的菜单', '', '', 'sys.menu.getRoleMenu', '3', '', '30', '2020-09-26 23:43:40', '1', '2020-09-26 23:43:40', '1');
INSERT INTO `sys_menu` VALUES ('24', '12', '删除', '', '', 'sys.i18n.delete', '3', '', '30', '2020-09-26 23:44:27', '1', '2020-09-26 23:44:27', '1');
INSERT INTO `sys_menu` VALUES ('25', '12', '修改', '', '', 'sys.i18n.save', '3', '', '10', '2020-09-26 23:45:04', '1', '2020-09-26 23:45:04', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员1', '1', null, '2020-09-04 09:47:30', '1');
INSERT INTO `sys_role` VALUES ('2', 'TEST', '测试', null, null, null, null);
INSERT INTO `sys_role` VALUES ('3', 'USER', '普通用户', '1', '2020-09-23 16:03:22', null, null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('5', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('6', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('7', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('22', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('23', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('24', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('25', '1', '8');
INSERT INTO `sys_role_menu` VALUES ('26', '1', '9');
INSERT INTO `sys_role_menu` VALUES ('27', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('28', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('29', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('30', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('31', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('32', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('33', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('34', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('35', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('36', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('37', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('38', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('39', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('40', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('41', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('42', '1', '25');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `user_pwd` varchar(128) DEFAULT NULL COMMENT '密码',
  `user_salt` varchar(64) DEFAULT NULL COMMENT '盐',
  `user_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `user_mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `user_status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '87e1b67ea5d467266fe558ef8ce85add9ca3ec416a1409cdb3cff6031d0f7e7b1fe89d500d593553edc9a0d691ad1dc1e63ab18243d545bb146016cffe44facb', 'eff2f4ea075481cf784f2b1251b13c35', 'cicada@163.com', '189678356789', '1', '1', '2019-01-18 11:11:59', '2020-09-05 00:04:56', '1');
INSERT INTO `sys_user` VALUES ('2', 'fantasy', '4da73f2fb03f578fb158c0eb6eab4a025b6f4db594ea207207e14295ecdf0c6a6b2c2dfd0337e648ee2024b51b65b9df82d339cb0bb1a6ef9f43f73f300be3c6', 'RnsqUEEsbGDBRBrmzbk2A4TSqSswWMAi', 'vi2014@qq.com', '18344369426', '1', '1', null, '2020-08-17 08:26:51', '1');
INSERT INTO `sys_user` VALUES ('8', 'aaa', 'b1d02fd2fa5c99f8b623c23b5dfc7c92131d1451c1cbb77ff358bf8a4095dbeb94043382200f0764072a535f87c9c737b9ced14d21fd1518bbea6272323d1c0d', 'abea3094a1cd52942d44a7c4e19abd98', 'asdasdas', 'asdsad', '0', '1', '2020-08-15 15:04:02', '2020-08-15 15:04:02', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('3', '1', '1');
