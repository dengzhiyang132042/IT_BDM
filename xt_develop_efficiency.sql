/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-13 16:09:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xt_develop_efficiency`
-- ----------------------------
DROP TABLE IF EXISTS `xt_develop_efficiency`;
CREATE TABLE `xt_develop_efficiency` (
  `e_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `e_month` date DEFAULT NULL,
  `e_project_demand` int(11) DEFAULT NULL,
  `e_arrange_time` int(11) DEFAULT NULL,
  `e_develop_time` int(11) DEFAULT NULL,
  `e_test_time` int(11) DEFAULT NULL,
  `e_all_time` int(11) DEFAULT NULL,
  `e_demand_efficiency` double(11,2) DEFAULT NULL,
  `e_develop_efficiency` double(11,2) DEFAULT NULL,
  `e_test_efficiency` double(11,2) DEFAULT NULL,
  `e_project_efficiency` double(11,2) DEFAULT NULL,
  `e_reality_complete` int(11) DEFAULT NULL,
  `e_plan_complete` int(11) DEFAULT NULL,
  `e_overstep` int(11) DEFAULT NULL,
  `e_complete_ratio` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_develop_efficiency
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_project`
-- ----------------------------
DROP TABLE IF EXISTS `xt_project`;
CREATE TABLE `xt_project` (
  `p_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `p_date` date DEFAULT NULL,
  `p_project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `p_target` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_project
-- ----------------------------
INSERT INTO `xt_project` VALUES ('p121604165752448', '2016-09-20', '同城件需求', '通过哲盟数据操作达到收派件实际操作的数据，并测试相关功能');
INSERT INTO `xt_project` VALUES ('p131111143971150', '2016-12-02', '测试', '测试测试');

-- ----------------------------
-- Table structure for `xt_project_detail`
-- ----------------------------
DROP TABLE IF EXISTS `xt_project_detail`;
CREATE TABLE `xt_project_detail` (
  `d_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `p_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_man` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_detail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_situation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_start_date` date DEFAULT NULL,
  `d_plan_date` date DEFAULT NULL,
  `d_reality_date` date DEFAULT NULL,
  `d_schedule` double(11,2) DEFAULT NULL,
  `d_user_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_project_detail
-- ----------------------------
INSERT INTO `xt_project_detail` VALUES ('121604166453408', 'p121604165752448', '需求调研', '何胜利', '确定模板格式以及框架', '1、构建初步开发模板\r\n2、根据开发内容完善相关格式', '2016-12-01', '2016-12-03', '2016-12-02', '50.00', '1');
INSERT INTO `xt_project_detail` VALUES ('121604166695903', 'p121604165752448', '方案确认', '何胜利', '确认模板取值规则', '1、测试哲盟整个刷单流程\r\n2、监控整个流程信息是否正常上传到内网', '2016-12-03', '2016-12-06', '2016-12-07', '60.00', '4');
INSERT INTO `xt_project_detail` VALUES ('121604166943244', 'p121604165752448', '系统开发', '徐迪军', '跟进哲盟开发进度并沟通开发中所遇到的问题', '更改整个流程相关时间节点', '2016-12-06', '2016-12-09', '2016-12-12', '70.00', '3');
INSERT INTO `xt_project_detail` VALUES ('121604167445445', 'p121604165752448', '测试完善', '徐迪军', '公司内部测试并发聩问题', '1、IT部核对报表大致情况\r\n2、通知需求部门进行测试\r\n3、收集问题发聩给哲盟', '2016-12-09', '2016-12-11', '2016-12-15', '80.00', '6');
INSERT INTO `xt_project_detail` VALUES ('121604168034408', 'p121604165752448', '项目验收', '徐迪军', '向需求方推广使用', '1、制作相关教材\r\n2、向需求方推广\r\n3、收集实际使用中的问题并反馈', '2016-12-11', '2016-12-14', '2016-12-19', '90.00', '8');
INSERT INTO `xt_project_detail` VALUES ('131111144379194', 'p131111143971150', '需求调研', '测试测试', '确定模板格式以及框架', '测试测试', '2016-12-13', '2016-12-21', '2016-12-23', '50.00', '10');
INSERT INTO `xt_project_detail` VALUES ('131111144627014', 'p131111143971150', '方案确认', '测试测试', '确认模板取值规则', '测试测试', '2016-12-12', '2016-12-13', '2016-12-12', '100.00', '0');
INSERT INTO `xt_project_detail` VALUES ('131111145125521', 'p131111143971150', '系统开发', '测试测试', '跟进哲盟开发进度并沟通开发中所遇到的问题', '测试测试', '2016-12-12', '2016-12-14', '2016-12-13', '62.00', '1');
INSERT INTO `xt_project_detail` VALUES ('131111145375292', 'p131111143971150', '测试完善', '测试测试', '公司内部测试并发聩问题', '测试测试', '2016-12-05', '2016-12-09', '2016-12-05', '50.00', '1');
INSERT INTO `xt_project_detail` VALUES ('131111145878368', 'p131111143971150', '项目验收', '测试测试', '向需求方推广使用', '测试测试', '2016-11-28', '2016-12-16', '2016-12-16', '60.00', '15');
