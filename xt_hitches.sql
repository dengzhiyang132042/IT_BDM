/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-27 18:41:03
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
  `h_create_time` datetime DEFAULT NULL,
  `h_state` varchar(255) DEFAULT NULL,
  `h_type` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_hitches
-- ----------------------------
INSERT INTO `xt_hitches` VALUES ('170923048785858', '2016-11-12 08:50:00', '2016-11-12 10:40:00', 'ROSE故障导致无法连接DB，系统不能登录', '凯诺德胡俊、刘细华联系不上', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923049092622', '2016-11-12 18:00:00', '2016-11-12 18:15:00', '凯立585P数据上传通道优化，巴枪数据不能上传', '许工未提前通知', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923049561863', '2016-11-16 09:45:00', '2016-11-16 10:00:00', '夏龙机房网络被攻击，系统不能登录', '', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923049728312', '2016-11-20 15:15:00', '2016-11-20 18:30:00', '某单号记录异常导致读取堆叠，影响数据查询', '可优化，旧系统无此问题', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923049871140', '2016-11-21 08:20:00', '2016-11-21 09:35:00', 'ROSE故障导致无法连接DB，系统不能登录', '', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923050186870', '2016-12-13 12:20:00', '2016-12-13 12:45:00', '系统异常，PC端/巴枪不能登录', '', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('170923050347045', '2016-12-15 03:30:00', '2016-12-15 04:30:00', '系统异常，PC端/巴枪不能登录/凯立585P数据异常', '', '', null, null, null, null);
INSERT INTO `xt_hitches` VALUES ('271622137055745', '2016-12-02 15:30:00', '2016-12-02 16:00:00', '范德萨', '范德萨', '', '2016-12-27 16:22:13', '无效', '维护', 'yd-7264');
INSERT INTO `xt_hitches` VALUES ('271627454222446', '2016-12-02 15:30:00', '2016-12-02 16:00:00', '范德萨', '发大水', '', '2016-12-27 16:27:45', '有效', '维护', 'yd-7264');
