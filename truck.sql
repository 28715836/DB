/*
Navicat MySQL Data Transfer

Source Server         : 101.132.194.204
Source Server Version : 50717
Source Host           : 101.132.194.204:3306
Source Database       : truck

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-13 09:01:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for truck_app
-- ----------------------------
DROP TABLE IF EXISTS `truck_app`;
CREATE TABLE `truck_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `version` varchar(255) DEFAULT NULL COMMENT '版本',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_app
-- ----------------------------

-- ----------------------------
-- Table structure for truck_category
-- ----------------------------
DROP TABLE IF EXISTS `truck_category`;
CREATE TABLE `truck_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3478 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_category
-- ----------------------------
INSERT INTO `truck_category` VALUES ('1', 'tyre', '轮胎', '1', '3475', '1', '2018-01-24 10:10:51', '-1', '2018-01-24 10:10:51', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('2', null, '汽油', '1', null, '1', '2018-01-28 14:03:21', '-1', '2018-01-28 14:03:21', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3471', 'serve', '服务', null, null, '1', '2018-01-24 09:32:29', '-1', '2018-01-24 09:32:29', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3472', 'info', '消息', null, null, '1', '2018-01-24 09:33:42', '-1', '2018-01-24 09:33:42', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3473', 'my', '我的', null, null, '1', '2018-01-24 09:33:57', '-1', '2018-01-24 09:33:57', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3474', 'nearby', '附近', null, '3471', '1', '2018-01-24 09:35:01', '-1', '2018-01-24 09:35:01', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3475', 'store', '商城', null, '3471', '1', '2018-01-24 09:35:26', '-1', '2018-01-24 09:35:26', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3476', 'gasStation', '加油站', null, '3474', '1', '2018-01-24 09:37:30', '-1', '2018-01-24 09:37:30', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_category` VALUES ('3477', 'parkingLot', '停车场', null, '3474', '1', '2018-01-24 09:39:14', '-1', '2018-01-24 09:39:14', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_code
-- ----------------------------
DROP TABLE IF EXISTS `truck_code`;
CREATE TABLE `truck_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` bigint(11) unsigned DEFAULT NULL COMMENT '手机号码',
  `auth_code` varchar(16) DEFAULT NULL COMMENT '验证码',
  `code_type` varchar(16) DEFAULT NULL COMMENT '验证码类型',
  `is_ use` bigint(1) DEFAULT '1' COMMENT '验证码是否被使用过，1为未使用，0为已使用',
  `active_start_time` datetime DEFAULT NULL COMMENT '验证码有效开始日期',
  `active_end_time` datetime DEFAULT NULL COMMENT '验证码有效结束日期',
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_code
-- ----------------------------
INSERT INTO `truck_code` VALUES ('5', '13083037022', '356292', 'register', '1', '2018-01-17 13:58:17', '2018-01-17 14:28:17', '1', '-1', '2018-01-17 13:58:17', '-1', '2018-01-17 13:58:17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('6', '13083037022', '111914', 'register', '1', '2018-01-17 13:58:34', '2018-01-17 14:28:34', '1', '-1', '2018-01-17 13:58:33', '-1', '2018-01-17 13:58:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('7', '13083037022', '015380', 'register', '1', '2018-01-17 15:58:38', '2018-01-17 16:28:38', '1', '-1', '2018-01-17 13:58:38', '-1', '2018-01-17 13:58:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('8', '13083037026', '574389', 'register', '0', '2018-01-17 11:58:44', '2018-01-17 16:28:44', '1', '-1', '2018-01-17 13:58:44', '-1', '2018-01-17 13:58:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('9', '13083037023', '908802', 'register', '0', '2018-01-17 14:58:51', '2018-01-17 15:28:51', '1', '-1', '2018-01-17 13:58:50', '-1', '2018-01-17 13:58:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('10', '13083037022', '643315', 'register', '1', '2018-01-22 16:19:22', '2018-01-23 16:49:22', '1', '-1', '2018-01-17 16:19:22', '-1', '2018-01-17 16:19:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('11', '13524112477', '873489', 'register', '1', '2018-01-17 16:52:21', '2018-01-17 17:22:21', '1', '-1', '2018-01-17 16:52:21', '-1', '2018-01-17 16:52:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('12', '13524112477', '492304', 'register', '1', '2018-01-17 17:17:15', '2018-01-17 17:47:15', '1', '-1', '2018-01-17 17:17:14', '-1', '2018-01-17 17:17:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('13', '13524112477', '639364', 'register', '1', '2018-01-17 17:21:04', '2018-01-17 17:51:04', '1', '-1', '2018-01-17 17:21:03', '-1', '2018-01-17 17:21:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('14', '13524112477', '060490', 'register', '0', '2018-01-17 17:31:52', '2018-01-17 18:01:52', '1', '-1', '2018-01-17 17:31:51', '-1', '2018-01-17 17:31:51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('15', '13524112477', '074533', 'register', '0', '2018-01-22 16:56:03', '2018-01-22 18:30:03', '1', '-1', '2018-01-18 16:00:01', '-1', '2018-01-18 16:00:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('16', '13761299894', '599989', 'register', '1', '2018-01-18 16:02:25', '2018-01-18 16:32:25', '1', '-1', '2018-01-18 16:02:24', '-1', '2018-01-18 16:02:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_code` VALUES ('17', '18351845667', '123456', 'register', '0', '2018-01-22 16:02:25', '2018-01-22 17:02:25', '1', '-1', '2018-01-22 16:26:08', '-1', '2018-01-22 16:26:08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_comment
-- ----------------------------
DROP TABLE IF EXISTS `truck_comment`;
CREATE TABLE `truck_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic_id` bigint(20) DEFAULT NULL COMMENT '话题id',
  `par_id` bigint(20) DEFAULT NULL COMMENT '父级id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3473 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_comment
-- ----------------------------
INSERT INTO `truck_comment` VALUES ('3472', '3471', null, '123', '2', null, '1', '2018-01-22 18:25:23', '-1', '2018-01-22 18:25:23', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_concern
-- ----------------------------
DROP TABLE IF EXISTS `truck_concern`;
CREATE TABLE `truck_concern` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '关注人id',
  `observed_id` bigint(20) DEFAULT NULL COMMENT '被关注者id',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_concern
-- ----------------------------

-- ----------------------------
-- Table structure for truck_detail
-- ----------------------------
DROP TABLE IF EXISTS `truck_detail`;
CREATE TABLE `truck_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `head` varchar(255) DEFAULT NULL COMMENT '头像',
  `flow` varchar(255) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL COMMENT '规则',
  `good_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_detail
-- ----------------------------

-- ----------------------------
-- Table structure for truck_feedback
-- ----------------------------
DROP TABLE IF EXISTS `truck_feedback`;
CREATE TABLE `truck_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for truck_file
-- ----------------------------
DROP TABLE IF EXISTS `truck_file`;
CREATE TABLE `truck_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `img_url` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3509 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_file
-- ----------------------------
INSERT INTO `truck_file` VALUES ('3471', null, '', '1', '2018-01-24 18:00:23', '-1', '2018-01-24 18:00:23', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3472', null, 'c1946ff9-', '1', '2018-01-24 18:01:47', '-1', '2018-01-24 18:01:47', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3473', 'QQ截图20180124152356.png', 'E://test//a815a487-9fe8-4301-a47d-fc441d3a281a.png', '1', '2018-01-24 18:02:34', '-1', '2018-01-24 18:02:34', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3474', '新建文本文档.txt', 'E://test//c7eb3092-65b9-4b31-bdfb-1db86fae0b70.txt', '1', '2018-01-24 18:02:34', '-1', '2018-01-24 18:02:34', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3479', '新建文本文档.txt', 'E://test//60b3b975-5e00-4f21-bfc2-7f016cb4a2c5.txt', '1', '2018-01-25 11:56:13', '-1', '2018-01-25 11:56:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3480', 'QQ截图20180124152356.png', 'E://test//068bd01b-c4f0-4a57-a000-6f5c44bd7582.png', '1', '2018-01-25 11:56:13', '-1', '2018-01-25 11:56:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3481', '新建文本文档.txt', 'E://test//14d5e896-9af2-4081-a861-660f78a09208.txt', '1', '2018-01-25 11:56:49', '-1', '2018-01-25 11:56:49', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3482', 'QQ截图20180124152356.png', 'E://test//01d2c35a-d04d-4a8b-8384-944c331ffb42.png', '1', '2018-01-25 11:56:49', '-1', '2018-01-25 11:56:49', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3483', 'QQ截图20180125153833.png', 'E://test//6a2b54cd-c95f-44ab-96f0-17107d75edf9.png', '1', '2018-01-26 12:49:35', '-1', '2018-01-26 12:49:35', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3484', 'QQ截图20180126104709.png', 'E://test//29f2a39c-119d-4a86-a49d-5839959357f6.png', '1', '2018-01-26 12:50:03', '-1', '2018-01-26 12:50:03', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3485', 'QQ截图20180125153833.png', 'E://test//d73b805c-9431-4e0d-8812-95d1f37550e9.png', '1', '2018-01-26 13:01:54', '-1', '2018-01-26 13:01:54', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3486', 'QQ截图20180126104759.png', 'E://test//e59fa68d-a6d5-456b-8edc-ecd40e59643b.png', '1', '2018-01-26 13:17:54', '-1', '2018-01-26 13:17:54', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3487', 'QQ截图20180126104709.png', 'E://test//9caa1538-4faf-40c4-b0aa-adbd53dc41e8.png', '1', '2018-01-26 13:18:05', '-1', '2018-01-26 13:18:05', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3488', 'QQ截图20180126104759.png', 'E://test//b89992dd-c747-4a77-827c-ab454d1fdcb8.png', '1', '2018-01-26 13:20:43', '-1', '2018-01-26 13:20:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3489', 'QQ截图20180125153833.png', 'E://test//287dfd7c-de4d-43fa-a02f-e859bfda3984.png', '1', '2018-01-26 13:32:23', '-1', '2018-01-26 13:32:23', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3490', 'QQ截图20180126104759.png', 'E://test//def07f41-8370-4ed5-81e9-e9a0d1ae9cb6.png', '1', '2018-01-26 13:34:13', '-1', '2018-01-26 13:34:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3491', 'QQ截图20180125153833.png', 'E://test//17eaaba7-6775-418d-9c57-3b1b0d9a4a6e.png', '1', '2018-01-26 13:53:23', '-1', '2018-01-26 13:53:23', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3492', 'QQ截图20180126104759.png', 'E://test//9c577270-47fe-4ba5-86e2-bcb57806f0d2.png', '1', '2018-01-26 13:55:41', '-1', '2018-01-26 13:55:41', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3493', 'QQ截图20180125153833.png', 'E://test//03e06513-ad82-4430-afba-4355e11bf30c.png', '1', '2018-01-26 13:58:15', '-1', '2018-01-26 13:58:15', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3494', 'QQ截图20180126104759.png', 'E://test//e6ecf0b3-eecb-483a-9eca-8055c6b6139d.png', '1', '2018-01-26 14:09:28', '-1', '2018-01-26 14:09:28', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3495', 'QQ截图20180126104759.png', 'E://test//a13da874-8c1e-4349-92a3-bd12fa0f652f.png', '1', '2018-01-26 14:10:00', '-1', '2018-01-26 14:10:00', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3496', 'QQ截图20180125153833.png', 'E://test//d8116db8-1cc3-4ad8-a828-b99ae977fd72.png', '1', '2018-01-26 14:12:26', '-1', '2018-01-26 14:12:26', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3497', 'QQ截图20180125153833.png', 'E://test//7e18d4eb-64c9-4821-836f-b0c9fa2b757c.png', '1', '2018-01-26 14:17:25', '-1', '2018-01-26 14:17:25', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3498', 'QQ截图20180126104709.png', 'E://test//038c258d-d8fe-4a0e-8ba2-9723f80ae610.png', '1', '2018-01-26 14:18:09', '-1', '2018-01-26 14:18:09', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3499', 'QQ截图20180125153833.png', 'http://192.168.12.41:81/images//363bc4b1-2073-4346-b946-6c12d15531b7.png', '1', '2018-01-26 15:50:12', '-1', '2018-01-26 15:50:12', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3500', 'QQ截图20180125153833.png', 'http://192.168.12.41:81/images//8d22dc7b-448f-4aba-8d87-26007d59b4fe.png', '1', '2018-01-26 15:53:37', '-1', '2018-01-26 15:53:37', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3501', 'QQ截图20180125153833.png', '101.132.186.20/bf777da7-9fae-4c20-9a71-1630f11556e7.png', '1', '2018-01-26 16:00:17', '-1', '2018-01-26 16:00:17', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3502', 'QQ截图20180126104709.png', '192.168.12.41871bd410-70a9-4456-9ed0-6b10275311f8.png', '1', '2018-01-26 16:03:25', '-1', '2018-01-26 16:03:25', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3503', 'QQ截图20180126104709.png', '192.168.12.416a3c879c-8188-4137-afd9-aa833eacc0c8.png', '1', '2018-01-26 16:12:33', '-1', '2018-01-26 16:12:33', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3504', '56a2721d-bea8-4b11-926a-7d7ef6d29fb8.png', 'http://192.168.12.41:81/images/56a2721d-bea8-4b11-926a-7d7ef6d29fb8.png', '1', '2018-01-26 16:21:40', '-1', '2018-01-26 16:21:40', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3505', 'QQ截图20180126104759.png', 'http://192.168.12.41:81/images/e2844584-ba03-413b-9cda-d036a59aa8a5.png', '1', '2018-01-26 16:23:02', '-1', '2018-01-26 16:23:02', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3506', 'QQ截图20180125153833.png', 'http://192.168.12.41:81/images/75b92ec2-a56e-490e-aa80-1287153d39fc.png', '1', '2018-01-26 16:25:41', '-1', '2018-01-26 16:25:41', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3507', 'b491811e-0327-4413-920c-0536cf9c803d.png', 'http://192.168.12.41:81/images/b491811e-0327-4413-920c-0536cf9c803d.png', '1', '2018-01-26 16:29:31', '-1', '2018-01-26 16:29:31', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file` VALUES ('3508', '62cf1419-51d6-419f-82c7-831cf738ff23.png', 'http://192.168.12.41:81/images/62cf1419-51d6-419f-82c7-831cf738ff23.png', '1', '2018-01-26 16:33:07', '-1', '2018-01-26 16:33:07', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_file_link
-- ----------------------------
DROP TABLE IF EXISTS `truck_file_link`;
CREATE TABLE `truck_file_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '关联id',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件id',
  `type` int(20) DEFAULT NULL COMMENT '1或2',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3485 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_file_link
-- ----------------------------
INSERT INTO `truck_file_link` VALUES ('3474', null, null, null, '1', '2018-01-25 11:59:57', '-1', '2018-01-25 11:59:57', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3475', '3473', '3479', '2', '1', '2018-01-25 11:56:13', '-1', '2018-01-25 11:56:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3476', '3473', '3480', '2', '1', '2018-01-25 11:56:13', '-1', '2018-01-25 11:56:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3479', '3479', '3498', '1', '1', '2018-01-26 14:18:10', '-1', '2018-01-26 14:18:10', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3480', '3480', '3498', '1', '1', '2018-01-26 14:18:46', '-1', '2018-01-26 14:18:46', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3481', '1', '3504', '1', '1', '2018-01-26 16:29:45', '-1', '2018-01-26 16:29:45', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3482', '1', '3505', '1', '1', '2018-01-26 16:29:45', '-1', '2018-01-26 16:29:45', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3483', '1', '3507', '1', '1', '2018-01-26 16:29:45', '-1', '2018-01-26 16:29:45', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_file_link` VALUES ('3484', '3482', '3508', '1', '1', '2018-01-26 16:33:19', '-1', '2018-01-26 16:33:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_goods
-- ----------------------------
DROP TABLE IF EXISTS `truck_goods`;
CREATE TABLE `truck_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `price` double(10,2) DEFAULT NULL COMMENT '价格',
  `detail` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL COMMENT '类型id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `indate_start` datetime DEFAULT NULL COMMENT '优惠开始时间',
  `indate_end` datetime DEFAULT NULL COMMENT '优惠结束时间',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3483 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_goods
-- ----------------------------
INSERT INTO `truck_goods` VALUES ('3471', '123', '123.00', null, null, null, null, null, '1', '2018-01-24 18:17:07', '-1', '2018-01-24 18:17:07', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_goods` VALUES ('3473', '轮胎', '123.00', '大尖峰时刻粉红色的看', '1', '1', null, null, '1', '2018-01-25 11:56:12', '-1', '2018-01-25 11:56:12', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_goods` VALUES ('3479', '', null, '', null, null, null, null, '1', '2018-01-26 14:18:10', '-1', '2018-01-26 14:18:10', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_goods` VALUES ('3480', '12', '321.00', '321', null, null, null, null, '1', '2018-01-26 14:18:46', '-1', '2018-01-26 14:18:46', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_goods` VALUES ('3481', '', null, '', null, null, null, null, '1', '2018-01-26 16:29:45', '-1', '2018-01-26 16:29:45', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_goods` VALUES ('3482', '123', '123.00', '321', null, null, null, null, '1', '2018-01-26 16:33:19', '-1', '2018-01-26 16:33:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_integration
-- ----------------------------
DROP TABLE IF EXISTS `truck_integration`;
CREATE TABLE `truck_integration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `record` varchar(255) DEFAULT NULL COMMENT '记录',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `number` int(20) DEFAULT '0' COMMENT '使用或获得积分数',
  `type` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3472 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_integration
-- ----------------------------
INSERT INTO `truck_integration` VALUES ('3471', '通过签到获取1积分', '3474', '1', 'integration', '1', '2018-01-24 14:41:53', '-1', '2018-01-24 14:41:53', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_module
-- ----------------------------
DROP TABLE IF EXISTS `truck_module`;
CREATE TABLE `truck_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) NOT NULL COMMENT '模块名称',
  `par_id` bigint(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_module
-- ----------------------------
INSERT INTO `truck_module` VALUES ('1', '用户管理', null, null, '1', '2018-01-22 17:48:09', '-1', '2018-01-22 17:48:09', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('2', '权限分配', '1', '/authority', '1', '2018-01-22 17:50:53', '-1', '2018-01-22 17:50:53', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('3', '角色管理', '1', '/role', '1', '2018-01-22 17:53:04', '-1', '2018-01-22 17:53:04', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('4', '商城管理', null, null, '1', '2018-01-22 17:53:13', '-1', '2018-01-22 17:53:13', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('5', '评论管理', null, null, '1', '2018-01-22 17:53:30', '-1', '2018-01-22 17:53:30', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('6', '话题管理', null, null, '1', '2018-01-22 17:53:38', '-1', '2018-01-22 17:53:38', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('7', '店铺管理', '4', '/store', '1', '2018-01-23 10:11:19', '-1', '2018-01-23 10:11:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_module` VALUES ('8', '商品管理', '4', '/goods', '1', '2018-01-23 10:11:39', '-1', '2018-01-23 10:11:39', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_praise
-- ----------------------------
DROP TABLE IF EXISTS `truck_praise`;
CREATE TABLE `truck_praise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic_id` bigint(20) DEFAULT NULL COMMENT '话题id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `object_version_number` bigint(20) DEFAULT '1',
  `enable_flag` varchar(1) NOT NULL DEFAULT 'Y',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_praise
-- ----------------------------

-- ----------------------------
-- Table structure for truck_role
-- ----------------------------
DROP TABLE IF EXISTS `truck_role`;
CREATE TABLE `truck_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_role
-- ----------------------------
INSERT INTO `truck_role` VALUES ('1', 'ROLE_ADMIN', '1', '2018-01-16 11:21:18', '-1', '2018-01-16 11:21:18', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_role` VALUES ('2', 'ROLE_APP', '1', '2018-01-16 11:21:28', '-1', '2018-01-16 11:21:28', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_role` VALUES ('3', 'ROLE_PC', '1', '2018-01-24 10:51:01', '-1', '2018-01-24 10:51:01', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_sign
-- ----------------------------
DROP TABLE IF EXISTS `truck_sign`;
CREATE TABLE `truck_sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `serial_num` int(20) DEFAULT NULL COMMENT '点赞数',
  `sign_date` datetime DEFAULT NULL COMMENT '点赞日期',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_sign
-- ----------------------------

-- ----------------------------
-- Table structure for truck_store
-- ----------------------------
DROP TABLE IF EXISTS `truck_store`;
CREATE TABLE `truck_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contact_people` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` bigint(11) DEFAULT NULL COMMENT '联系电话',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_store
-- ----------------------------
INSERT INTO `truck_store` VALUES ('1', '杨凯汽车维修中心', '上海市青浦区', '这是一家汽车维修中心，还卖东西', '杨凯', '13083037022', '1', '2018-01-23 15:22:15', '-1', '2018-01-23 15:22:15', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_topic
-- ----------------------------
DROP TABLE IF EXISTS `truck_topic`;
CREATE TABLE `truck_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `read_num` int(20) DEFAULT NULL COMMENT '阅读数',
  `category_id` bigint(20) DEFAULT NULL COMMENT '类型id',
  `status` int(20) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NOT NULL DEFAULT '-1',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) NOT NULL DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3472 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_topic
-- ----------------------------
INSERT INTO `truck_topic` VALUES ('3471', null, null, null, null, null, null, null, '1', '2018-01-22 18:25:00', '-1', '2018-01-22 18:25:00', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_user
-- ----------------------------
DROP TABLE IF EXISTS `truck_user`;
CREATE TABLE `truck_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL COMMENT '电话号码',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `address` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_user
-- ----------------------------
INSERT INTO `truck_user` VALUES ('1', 'haoyong', 'haoyong', '男', '18351845667', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '南京', '1', '2018-01-16 11:22:17', '-1', '2018-01-16 11:22:17', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('2', 'yangkai', 'yangkai', '女', '13083037022', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '滁州', '1', '2018-01-16 11:22:25', '-1', '2018-01-16 11:22:25', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('3', 'lanyu', 'lanyu', '男', '17621538763', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '安徽', '1', '2018-01-16 11:22:31', '-1', '2018-01-16 11:22:31', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('4', 'zhangsan', 'zhangsan', '男', '123', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '无锡', '1', '2018-01-24 10:48:38', '-1', '2018-01-24 10:48:38', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('9', 'lisi', 'lisi', '男', '234', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '无锡', '1', '2018-01-25 14:52:08', '-1', '2018-01-25 14:52:08', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('10', 'zhaoliu', 'zhaoliu', '男', '1345', 'https://i.loli.net/2017/08/21/599a521472424.jpg', '无锡', '1', '2018-01-25 14:52:18', '-1', '2018-01-25 14:52:18', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('14', 'shengge', 'shengge', '男', '123687', null, '天津', '1', '2018-01-25 16:47:09', '-1', '2018-01-25 16:47:09', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user` VALUES ('16', 'kaige', 'kaige', '男', '123456', null, '镇江', '1', '2018-01-25 16:49:36', '-1', '2018-01-25 16:49:36', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_user_module
-- ----------------------------
DROP TABLE IF EXISTS `truck_user_module`;
CREATE TABLE `truck_user_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) NOT NULL COMMENT '用户Id',
  `module_id` bigint(20) NOT NULL COMMENT '模块Id',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_user_module
-- ----------------------------
INSERT INTO `truck_user_module` VALUES ('146', '6', '1', '1', '2018-01-25 14:38:19', '-1', '2018-01-25 14:38:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('147', '6', '2', '1', '2018-01-25 14:38:19', '-1', '2018-01-25 14:38:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('148', '6', '3', '1', '2018-01-25 14:38:19', '-1', '2018-01-25 14:38:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('149', '6', '5', '1', '2018-01-25 14:38:19', '-1', '2018-01-25 14:38:19', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('157', '7', '8', '1', '2018-01-25 14:41:10', '-1', '2018-01-25 14:41:10', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('158', '7', '6', '1', '2018-01-25 14:41:10', '-1', '2018-01-25 14:41:10', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('159', '2', '2', '1', '2018-01-25 14:45:43', '-1', '2018-01-25 14:45:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('160', '2', '4', '1', '2018-01-25 14:45:43', '-1', '2018-01-25 14:45:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('161', '2', '7', '1', '2018-01-25 14:45:43', '-1', '2018-01-25 14:45:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('162', '2', '8', '1', '2018-01-25 14:45:43', '-1', '2018-01-25 14:45:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('163', '2', '5', '1', '2018-01-25 14:45:43', '-1', '2018-01-25 14:45:43', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('167', '8', '1', '1', '2018-01-25 14:46:03', '-1', '2018-01-25 14:46:03', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('168', '8', '2', '1', '2018-01-25 14:46:03', '-1', '2018-01-25 14:46:03', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('169', '8', '3', '1', '2018-01-25 14:46:03', '-1', '2018-01-25 14:46:03', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('170', '8', '5', '1', '2018-01-25 14:46:03', '-1', '2018-01-25 14:46:03', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('178', '3', '3', '1', '2018-01-25 16:37:16', '-1', '2018-01-25 16:37:16', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('179', '3', '7', '1', '2018-01-25 16:37:16', '-1', '2018-01-25 16:37:16', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('180', '3', '6', '1', '2018-01-25 16:37:16', '-1', '2018-01-25 16:37:16', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('181', '10', '1', '1', '2018-01-25 16:49:51', '-1', '2018-01-25 16:49:51', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('182', '10', '2', '1', '2018-01-25 16:49:51', '-1', '2018-01-25 16:49:51', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('183', '10', '3', '1', '2018-01-25 16:49:51', '-1', '2018-01-25 16:49:51', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_module` VALUES ('184', '10', '5', '1', '2018-01-25 16:49:51', '-1', '2018-01-25 16:49:51', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for truck_user_role
-- ----------------------------
DROP TABLE IF EXISTS `truck_user_role`;
CREATE TABLE `truck_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `uid` bigint(20) DEFAULT NULL COMMENT '用户id',
  `object_version_number` bigint(20) DEFAULT '1',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` bigint(20) DEFAULT '-1',
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `attribute4` varchar(255) DEFAULT NULL,
  `attribute5` varchar(255) DEFAULT NULL,
  `attribute6` varchar(255) DEFAULT NULL,
  `attribute7` varchar(255) DEFAULT NULL,
  `attribute8` varchar(255) DEFAULT NULL,
  `attribute9` varchar(255) DEFAULT NULL,
  `attribute10` varchar(255) DEFAULT NULL,
  `attribute11` varchar(255) DEFAULT NULL,
  `attribute12` varchar(255) DEFAULT NULL,
  `attribute13` varchar(255) DEFAULT NULL,
  `attribute14` varchar(255) DEFAULT NULL,
  `attribute15` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truck_user_role
-- ----------------------------
INSERT INTO `truck_user_role` VALUES ('1', '1', '1', '1', '2018-01-16 11:22:45', '-1', '2018-01-16 11:22:45', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('2', '1', '2', '1', '2018-01-16 11:22:57', '-1', '2018-01-16 11:22:57', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('3', '1', '3', '1', '2018-01-23 16:48:08', '-1', '2018-01-23 16:48:08', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('4', '2', '4', '1', '2018-01-24 10:48:24', '-1', '2018-01-24 10:48:24', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('5', '1', '9', '1', '2018-01-25 14:18:37', '-1', '2018-01-25 14:18:37', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('6', '1', '10', '1', '2018-01-25 14:52:41', '-1', '2018-01-25 14:52:41', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('7', '1', '11', '1', '2018-01-25 14:52:44', '-1', '2018-01-25 14:52:44', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('8', '1', '12', '1', '2018-01-25 16:45:28', '-1', '2018-01-25 16:45:28', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('9', '1', '14', '1', '2018-01-25 16:47:09', '-1', '2018-01-25 16:47:09', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('10', '1', '15', '1', '2018-01-25 16:47:54', '-1', '2018-01-25 16:47:54', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `truck_user_role` VALUES ('11', '1', '16', '1', '2018-01-25 16:49:36', '-1', '2018-01-25 16:49:36', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
