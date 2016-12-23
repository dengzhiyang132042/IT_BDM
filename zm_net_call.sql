/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-22 19:38:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zm_net_call`
-- ----------------------------
DROP TABLE IF EXISTS `zm_net_call`;
CREATE TABLE `zm_net_call` (
  `n_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `n_pact_man` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_service_date` date DEFAULT NULL,
  `n_big_qb` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_qb` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_fb` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_fbd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_site` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_functionary` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_functionary_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_query_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_call1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_call2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_call_all` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n-call_num` int(13) DEFAULT NULL,
  `n_condition` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_service_week` int(13) DEFAULT NULL,
  `n_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_create_date` datetime DEFAULT NULL,
  `n_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `n_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zm_net_call
-- ----------------------------
INSERT INTO `zm_net_call` VALUES ('123123', '123', '2016-12-01', '1', '1231', '32', '132', '1', '321', '231', '231', '321', '32', '12', '31', '231', '321', '231', '321', '1', '232', '13', '2016-12-07 15:14:19', '321', '有效', '321');
INSERT INTO `zm_net_call` VALUES ('c221815324791495', '0', '2016-12-22', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '51', '19', '20', '2016-12-22 18:15:32', '21', '有效', 'yd-7264');
INSERT INTO `zm_net_call` VALUES ('i221556531023352', '', '2016-12-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '3', '黄光辉', '', '2016-12-22 15:56:53', '注册', '有效', 'yd-7264');
INSERT INTO `zm_net_call` VALUES ('i221615361424477', '1', '2016-12-01', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '49', '黄光辉', '19', '2016-12-22 16:15:36', '注册', '无效', 'yd-7264');
INSERT INTO `zm_net_call` VALUES ('i221629341728576', '1', '2016-12-01', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '49', '黄光辉', '19', '2016-12-22 16:29:34', '维护', '有效', 'yd-7264');
INSERT INTO `zm_net_call` VALUES ('i221736202994931', '', '2016-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '52', '黄光辉', '', '2016-12-22 17:36:20', '注册', '有效', 'yd-7264');
