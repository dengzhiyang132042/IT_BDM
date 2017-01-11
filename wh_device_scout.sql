/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-01-11 10:12:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wh_device_scout`
-- ----------------------------
DROP TABLE IF EXISTS `wh_device_scout`;
CREATE TABLE `wh_device_scout` (
  `d_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `d_date` date DEFAULT NULL,
  `d_time` datetime DEFAULT NULL,
  `d_fit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_fit_firm` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_abnormal_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_result` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_week_maintain` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_month_maintain` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_create_time` datetime DEFAULT NULL,
  `d_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wh_device_scout
-- ----------------------------
INSERT INTO `wh_device_scout` VALUES ('d101427403895447', '2017-01-10', '2017-01-10 14:26:00', '是', '是', '大法师', 'dsaf', '黄光辉', '是', '是', '', '2017-01-10 14:27:40', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101428298777856', '2017-01-10', '2017-01-10 14:27:00', '是', '是', '发大水', '地方撒', '黄光辉', '是', '是', '发大水', '2017-01-10 14:28:29', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101543579811676', '2017-01-10', '2017-01-10 15:43:00', '是', '是', '', '', '黄光辉', '是', '是', '', '2017-01-10 15:43:57', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101545034981556', '2017-01-10', '2017-01-10 15:44:00', '是', '是', '123', '123', '黄光辉', '是', '是', '465', '2017-01-10 15:45:03', '维护', '无效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101546083926960', '2017-01-10', '2017-01-10 15:44:00', '是', '是', '123', '123', '黄光辉', '是', '是', '46526', '2017-01-10 15:46:08', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101551109486782', '2017-01-10', '2017-01-10 15:46:00', '是', '是', '1', '2', '黄光辉', '是', '是', '3', '2017-01-10 15:51:10', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101558383706856', '2017-01-10', '2017-01-10 15:58:00', '是', '是', '1', '2', '黄光辉', '是', '是', '36', '2017-01-10 15:59:21', '维护', '无效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101600044812821', '2017-01-10', '2017-01-10 15:59:00', '是', '是', '', '', '黄光辉', '是', '是', '', '2017-01-10 16:00:07', '维护', '无效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101600436049903', '2017-01-10', '2017-01-10 15:59:00', '是', '是', '', '', '黄光辉', '是', '是', '', '2017-01-10 16:00:43', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101600451756168', '2017-01-10', '2017-01-10 15:59:00', '是', '是', '', '', '黄光辉', '是', '是', '', '2017-01-10 16:00:45', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101601221486085', '2017-01-10', '2017-01-10 15:58:00', '是', '是', '1', '123', '黄光辉', '是', '是', '36', '2017-01-10 16:01:22', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101632467849068', '2017-01-10', '2017-01-10 16:32:00', '否', '否', '', '', '黄光辉', '是', '是', '', '2017-01-10 16:32:46', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d101633104191575', '2017-01-10', '2017-01-10 16:33:00', '否', '否', '', '', '黄光辉', '是', '是', '', '2017-01-10 16:33:10', '维护', '有效', 'yd-7264');
INSERT INTO `wh_device_scout` VALUES ('d221634404397383', '2016-12-22', '2016-12-22 16:33:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);
INSERT INTO `wh_device_scout` VALUES ('d231737028325613', '2016-12-23', '2016-12-23 17:36:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);
INSERT INTO `wh_device_scout` VALUES ('d241730027562464', '2016-12-24', '2016-12-24 17:29:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);
INSERT INTO `wh_device_scout` VALUES ('d251758466472582', '2016-12-25', '2016-12-25 17:58:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);
INSERT INTO `wh_device_scout` VALUES ('d261644397122328', '2016-12-26', '2016-12-26 16:44:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);
INSERT INTO `wh_device_scout` VALUES ('d271727493049624', '2016-12-27', '2016-12-27 17:27:00', '是', '是', '', '', '周剑飞', '是', '是', '', null, null, null, null);

-- ----------------------------
-- Table structure for `wh_meeting_scout`
-- ----------------------------
DROP TABLE IF EXISTS `wh_meeting_scout`;
CREATE TABLE `wh_meeting_scout` (
  `m_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `m_date` datetime DEFAULT NULL,
  `m_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_computer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_mouse_keyboard` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_projector` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_yd_software` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_create_time` date DEFAULT NULL,
  `m_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wh_meeting_scout
-- ----------------------------
INSERT INTO `wh_meeting_scout` VALUES ('m271425315325639', '2016-12-01 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425315791933', '2016-12-02 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425316267428', '2016-12-03 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425316575664', '2016-12-04 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425316884433', '2016-12-05 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425317044436', '2016-12-06 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425317358097', '2016-12-07 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425317519619', '2016-12-08 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425317828262', '2016-12-09 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425318132016', '2016-12-10 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425318297000', '2016-12-11 00:00:00', '李义丰', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425318602430', '2016-12-12 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425318764141', '2016-12-13 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425319074380', '2016-12-14 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425319389014', '2016-12-15 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425319542634', '2016-12-16 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425319851594', '2016-12-17 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425320002295', '2016-12-18 00:00:00', '王鹏', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425320327647', '2016-12-19 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425320635295', '2016-12-20 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425321106899', '2016-12-21 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425321259374', '2016-12-22 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425321566028', '2016-12-23 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425321885803', '2016-12-24 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425322031975', '2016-12-25 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425322343746', '2016-12-26 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_meeting_scout` VALUES ('m271425322506506', '2016-12-27 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '', null, null, null, null);

-- ----------------------------
-- Table structure for `wh_monitor_scout`
-- ----------------------------
DROP TABLE IF EXISTS `wh_monitor_scout`;
CREATE TABLE `wh_monitor_scout` (
  `m_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `m_date` date DEFAULT NULL,
  `m_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_monitor_master` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_time` datetime DEFAULT NULL,
  `m_video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_service` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_generator_device` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_depot_camera` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_depot_device` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_create_time` datetime DEFAULT NULL,
  `m_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `m_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wh_monitor_scout
-- ----------------------------
INSERT INTO `wh_monitor_scout` VALUES ('m101640142667620', '2017-01-10', '黄光辉', 'fdsa ', '2017-01-10 15:00:00', 'fdsa ', 'fdsaf df', 'as sdf', 'dsaf dsa', 'fdsafs', 'afas ', 'fdsaf ', '2017-01-10 16:40:14', '维护', '无效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101642227927457', '2017-01-10', '黄光辉', '1', '2017-01-10 15:00:00', '2', '3', '4', '5', '6', '7', '8', '2017-01-10 16:42:22', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101740480167077', '2017-01-10', '黄光辉', '正常', '2017-01-10 16:30:00', '正常', '正常', '正常', '正常', '正常', '正常', '', '2017-01-10 17:40:48', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101741054042237', '2017-01-10', '黄光辉', '正常', '2017-01-10 17:00:00', '正常', '异常', '异常', '正常', '正常', '正常', '', '2017-01-10 17:41:05', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101752048225527', '2017-01-10', '黄光辉', '正常', '2017-01-10 16:30:00', '正常', '异常', '异常', '正常', '正常', '正常', '', '2017-01-10 17:52:04', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101753226959184', '2017-01-10', '黄光辉', '正常', '2017-01-10 16:30:00', '正常', '异常', '正常', '正常', '正常', '正常', '', '2017-01-10 17:53:22', '维护', '无效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101753294235552', '2017-01-10', '黄光辉', '正常', '2017-01-10 16:30:00', '正常', '正常', '正常', '正常', '正常', '正常', '', '2017-01-10 17:53:29', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m101833293317055', '2017-01-10', '黄光辉', '正常', '2017-01-10 18:30:00', '正常', '正常', '正常', '正常', '异常', '正常', '', '2017-01-10 18:33:29', '维护', '有效', 'yd-7264');
INSERT INTO `wh_monitor_scout` VALUES ('m231739032967525', '2016-12-01', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739033424994', '2016-12-02', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739033749495', '2016-12-03', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739033896385', '2016-12-04', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739034055822', '2016-12-05', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739034526825', '2016-12-06', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739034672145', '2016-12-07', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739034984239', '2016-12-08', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739035146398', '2016-12-09', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739035309809', '2016-12-10', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739035456551', '2016-12-11', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739035762906', '2016-12-12', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739035922724', '2016-12-13', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739036237571', '2016-12-14', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739036393797', '2016-12-15', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739036543368', '2016-12-16', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739036704278', '2016-12-17', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037019147', '2016-12-18', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037173675', '2016-12-19', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '异常', '正常', '外围摄像头脱落', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037489444', '2016-12-20', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037642552', '2016-12-21', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037798254', '2016-12-22', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m231739037951216', '2016-12-23', '何清泽', '正常', '2016-12-23 17:39:03', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m261708089722743', '2016-12-26', '何清泽', '正常', '2016-12-26 09:30:00', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_monitor_scout` VALUES ('m271805348221779', '2016-12-27', '何清泽', '正常', '2016-12-27 09:05:00', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);

-- ----------------------------
-- Table structure for `wh_three_meeting_scout`
-- ----------------------------
DROP TABLE IF EXISTS `wh_three_meeting_scout`;
CREATE TABLE `wh_three_meeting_scout` (
  `t_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `t_date` datetime DEFAULT NULL,
  `t_it` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_computer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_monitor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_monitor_screen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_mouse_keyboard` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_projector` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_yd_software` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_create_time` datetime DEFAULT NULL,
  `t_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wh_three_meeting_scout
-- ----------------------------
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714193327131', '2016-12-01 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714193636074', '2016-12-02 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714193942751', '2016-12-03 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714194418243', '2016-12-04 00:00:00', '周剑飞', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714194729281', '2016-12-05 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714195191396', '2016-12-06 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714195501250', '2016-12-07 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714195812429', '2016-12-08 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714195971722', '2016-12-09 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714196288413', '2016-12-10 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714196595305', '2016-12-11 00:00:00', '李义丰', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714196754094', '2016-12-12 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714197061042', '2016-12-13 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714197376005', '2016-12-14 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714197698275', '2016-12-15 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714197844118', '2016-12-16 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714200964472', '2016-12-17 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714201278368', '2016-12-18 00:00:00', '王鹏', '正常', '正常', '正常', '异常', '正常', '正常', '正常', '部分监控屏卡住了', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714201432038', '2016-12-19 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714201747721', '2016-12-20 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t221714202052402', '2016-12-21 00:00:00', '何请泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t231737202735862', '2016-12-22 00:00:00', '何清泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t231737477601536', '2016-12-23 00:00:00', '何清泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t261709022302935', '2016-12-26 00:00:00', '何清泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
INSERT INTO `wh_three_meeting_scout` VALUES ('t271806331979432', '2016-12-27 00:00:00', '何清泽', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '', null, null, null, null);
