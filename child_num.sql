/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-21 17:44:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `child_num`
-- ----------------------------
DROP TABLE IF EXISTS `child_num`;
CREATE TABLE `child_num` (
  `n_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `n_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_child_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of child_num
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_bqq`
-- ----------------------------
DROP TABLE IF EXISTS `xt_bqq`;
CREATE TABLE `xt_bqq` (
  `b_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `b_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_net_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_net_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_man` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_section` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_register_date` date DEFAULT NULL,
  `b_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_service_date` datetime DEFAULT NULL,
  `b_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_bqq
-- ----------------------------
INSERT INTO `xt_bqq` VALUES ('b201734572676319', '的说法', '范德萨发撒旦', '地方撒', '范德萨', null, '范德萨', '2016-12-01', '黄光辉', '2016-12-20 17:34:57', '维护', '无效', 'yd-7264');

-- ----------------------------
-- Table structure for `xt_net_imo`
-- ----------------------------
DROP TABLE IF EXISTS `xt_net_imo`;
CREATE TABLE `xt_net_imo` (
  `i_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `i_area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_account` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_pass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_register_date` date DEFAULT NULL,
  `i_service_date` datetime DEFAULT NULL,
  `i_service_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `i_unum` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_net_imo
-- ----------------------------
