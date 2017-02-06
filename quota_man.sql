/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-06 16:32:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `quota_man`
-- ----------------------------
DROP TABLE IF EXISTS `quota_man`;
CREATE TABLE `quota_man` (
  `qm_id` varchar(255) NOT NULL DEFAULT '',
  `u_num` varchar(255) DEFAULT NULL,
  `qm_type_zc` int(11) DEFAULT NULL,
  `qm_type_wh` int(11) DEFAULT NULL,
  `qm_type_zx` int(11) DEFAULT NULL,
  `qm_date` date DEFAULT NULL,
  `qm_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_man
-- ----------------------------
