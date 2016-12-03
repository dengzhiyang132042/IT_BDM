/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-03 16:04:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xt_hitches`
-- ----------------------------
DROP TABLE IF EXISTS `xt_hitches`;
CREATE TABLE `xt_hitches` (
  `h_id` varchar(255) NOT NULL DEFAULT '',
  `h_time_start` datetime DEFAULT NULL,
  `h_time_end` datetime DEFAULT NULL,
  `h_desc` varchar(255) DEFAULT NULL,
  `h_note` varchar(255) DEFAULT NULL,
  `h_solve` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_hitches
-- ----------------------------
INSERT INTO `xt_hitches` VALUES ('031548465337674', '2016-12-03 13:00:00', '2016-12-03 13:45:00', '2', '2', '2');
INSERT INTO `xt_hitches` VALUES ('031601096679570', '2016-12-03 10:10:00', '2016-12-03 16:30:00', '重大错误', '损失500万', '不可挽回');
