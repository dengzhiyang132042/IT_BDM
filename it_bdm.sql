/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-09 17:52:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company_section_1`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_1`;
CREATE TABLE `company_section_1` (
  `s1_id` varchar(255) NOT NULL DEFAULT '',
  `s1_name` varchar(255) DEFAULT NULL,
  `s1_master` varchar(255) DEFAULT NULL,
  `s1_position` varchar(255) DEFAULT NULL,
  `s1_phone_private` varchar(255) DEFAULT NULL,
  `s1_phone_company` varchar(255) DEFAULT NULL,
  `s1_phone_short` varchar(255) DEFAULT NULL,
  `s1_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_1
-- ----------------------------
INSERT INTO `company_section_1` VALUES ('cs1011701386104462', '总经理', '童健钢', '', '', '', '', '');

-- ----------------------------
-- Table structure for `company_section_2`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_2`;
CREATE TABLE `company_section_2` (
  `s2_id` varchar(255) NOT NULL DEFAULT '',
  `s2_name` varchar(255) DEFAULT NULL,
  `s2_master` varchar(255) DEFAULT NULL,
  `s2_position` varchar(255) DEFAULT NULL,
  `s2_phone_private` varchar(255) DEFAULT NULL,
  `s2_phone_company` varchar(255) DEFAULT NULL,
  `s2_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s2_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_2
-- ----------------------------
INSERT INTO `company_section_2` VALUES ('cs2011713275276658', '副总经理', '曹学智', '副总经理', '', '', '', 'cs1011701386104462', '');
INSERT INTO `company_section_2` VALUES ('cs2020935038226512', '副总经理', '韩诗成', '', '', '', '', 'cs1011701386104462', '');

-- ----------------------------
-- Table structure for `company_section_3`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_3`;
CREATE TABLE `company_section_3` (
  `s3_id` varchar(255) NOT NULL DEFAULT '',
  `s3_name` varchar(255) DEFAULT NULL,
  `s3_master` varchar(255) DEFAULT NULL,
  `s3_position` varchar(255) DEFAULT NULL,
  `s3_phone_private` varchar(255) DEFAULT NULL,
  `s3_phone_company` varchar(255) DEFAULT NULL,
  `s3_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s3_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s3_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_3
-- ----------------------------
INSERT INTO `company_section_3` VALUES ('cs3011714252598887', '信息与流程管理部', '何胜利', '高级经理', '', '', '', 'cs2011713275276658', '');
INSERT INTO `company_section_3` VALUES ('cs3020935291038255', '网运中心', '无', '', '', '', '', 'cs2020935038226512', '');

-- ----------------------------
-- Table structure for `company_section_4`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_4`;
CREATE TABLE `company_section_4` (
  `s4_id` varchar(255) NOT NULL DEFAULT '',
  `s4_name` varchar(255) DEFAULT NULL,
  `s4_master` varchar(255) DEFAULT NULL,
  `s4_position` varchar(255) DEFAULT NULL,
  `s4_phone_private` varchar(255) DEFAULT NULL,
  `s4_phone_company` varchar(255) DEFAULT NULL,
  `s4_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s4_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s4_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_4
-- ----------------------------
INSERT INTO `company_section_4` VALUES ('cs4011717169142624', '观澜IT工作组', '无', '', '', '', '', 'cs3011714252598887', '');
INSERT INTO `company_section_4` VALUES ('cs4011717437797175', '新仓IT工作组', '无', '', '', '', '', 'cs3011714252598887', '');
INSERT INTO `company_section_4` VALUES ('cs4020935597333072', '区部', '无', '', '', '', '', 'cs3020935291038255', '');
INSERT INTO `company_section_4` VALUES ('cs4020936173635935', '网点管理部', '无', '', '', '', '', 'cs3020935291038255', '');
INSERT INTO `company_section_4` VALUES ('cs4020936554481709', '市场客服部', '无', '', '', '', '', 'cs3020935291038255', '');
INSERT INTO `company_section_4` VALUES ('cs4020937342218816', '分拨点管理部', '无', '', '', '', '', 'cs3020935291038255', '');

-- ----------------------------
-- Table structure for `company_section_5`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_5`;
CREATE TABLE `company_section_5` (
  `s5_id` varchar(255) NOT NULL,
  `s5_name` varchar(255) DEFAULT NULL,
  `s5_master` varchar(255) DEFAULT NULL,
  `s5_position` varchar(255) DEFAULT NULL,
  `s5_phone_private` varchar(255) DEFAULT NULL,
  `s5_phone_company` varchar(255) DEFAULT NULL,
  `s5_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s5_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s5_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_5
-- ----------------------------
INSERT INTO `company_section_5` VALUES ('cs5011718032442430', '开发组', '无', '', '', '', '', 'cs4011717169142624', '');
INSERT INTO `company_section_5` VALUES ('cs5011726484884565', '观澜IT主管', '徐迪军', '技术支持主管', '13925206957', '29050791', '', 'cs4011717169142624', '');
INSERT INTO `company_section_5` VALUES ('cs5011727123887637', '硬件组', '无', '', '', '', '', 'cs4011717169142624', '');
INSERT INTO `company_section_5` VALUES ('cs5011727248872127', '桌面组', '无', '', '', '', '', 'cs4011717169142624', '');
INSERT INTO `company_section_5` VALUES ('cs5011727370327611', '系统组', '无', '', '', '', '', 'cs4011717169142624', '');
INSERT INTO `company_section_5` VALUES ('cs5020940203108683', '龙华区部', '刘利华', '区部经理', '13925206937', '', '696722', 'cs4020935597333072', '');
INSERT INTO `company_section_5` VALUES ('cs5020942539524056', '客服部', '无', '', '', '', '', 'cs4020936554481709', '');
INSERT INTO `company_section_5` VALUES ('cs5020943172011984', '市场部', '王伟', '市场部经理', '13925210677', '', '', 'cs4020936554481709', '');

-- ----------------------------
-- Table structure for `company_section_6`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_6`;
CREATE TABLE `company_section_6` (
  `s6_id` varchar(255) NOT NULL DEFAULT '',
  `s6_name` varchar(255) DEFAULT NULL,
  `s6_master` varchar(255) DEFAULT NULL,
  `s6_position` varchar(255) DEFAULT NULL,
  `s6_phone_private` varchar(255) DEFAULT NULL,
  `s6_phone_company` varchar(255) DEFAULT NULL,
  `s6_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s6_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s6_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_6
-- ----------------------------
INSERT INTO `company_section_6` VALUES ('cs6011724259902610', '开发专员', '张顺', '开发专员', '', '', '', 'cs5011718032442430', '');
INSERT INTO `company_section_6` VALUES ('cs6020941178491903', '坂田分部', '文韬', '分部经理', '18666204664', '', '', 'cs5020940203108683', '');
INSERT INTO `company_section_6` VALUES ('cs6020942035309643', '布吉分部', '曾抒月', '分部经理', '13925210734', '', '660734', 'cs5020940203108683', '');
INSERT INTO `company_section_6` VALUES ('cs6020943386795698', '呼叫话务组', '无', '', '', '', '', 'cs5020942539524056', '');
INSERT INTO `company_section_6` VALUES ('cs6041346377133578', '硬件专员', '谢剑文', '硬件专员', '', '', '', 'cs5011727123887637', '');

-- ----------------------------
-- Table structure for `company_section_7`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_7`;
CREATE TABLE `company_section_7` (
  `s7_id` varchar(255) NOT NULL DEFAULT '',
  `s7_name` varchar(255) DEFAULT NULL,
  `s7_master` varchar(255) DEFAULT NULL,
  `s7_position` varchar(255) DEFAULT NULL,
  `s7_phone_private` varchar(255) DEFAULT NULL,
  `s7_phone_company` varchar(255) DEFAULT NULL,
  `s7_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s7_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s7_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_7
-- ----------------------------
INSERT INTO `company_section_7` VALUES ('cs7020944161932800', '查询组', '张璐', '', '', '', '', 'cs6020943386795698', '');
INSERT INTO `company_section_7` VALUES ('cs7020944437755934', '查询组', '黄英', '坐席文员', '', '', '', 'cs6020943386795698', '');

-- ----------------------------
-- Table structure for `company_section_8`
-- ----------------------------
DROP TABLE IF EXISTS `company_section_8`;
CREATE TABLE `company_section_8` (
  `s8_id` varchar(255) NOT NULL DEFAULT '',
  `s8_name` varchar(255) DEFAULT NULL,
  `s8_master` varchar(255) DEFAULT NULL,
  `s8_position` varchar(255) DEFAULT NULL,
  `s8_phone_private` varchar(255) DEFAULT NULL,
  `s8_phone_company` varchar(255) DEFAULT NULL,
  `s8_phone_short` varchar(255) DEFAULT NULL,
  `s_id_last` varchar(255) DEFAULT NULL,
  `s8_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s8_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section_8
-- ----------------------------

-- ----------------------------
-- Table structure for `fbd_asdl`
-- ----------------------------
DROP TABLE IF EXISTS `fbd_asdl`;
CREATE TABLE `fbd_asdl` (
  `asdl_id` varchar(255) NOT NULL DEFAULT '',
  `fbd_id` varchar(255) DEFAULT NULL,
  `asdl_input` varchar(255) DEFAULT NULL,
  `asdl_num` varchar(255) DEFAULT NULL,
  `asdl_pass` varchar(255) DEFAULT NULL,
  `asdl_fee_year` double(30,2) DEFAULT NULL,
  `asdl_time_expire` date DEFAULT NULL,
  `asdl_contract` varchar(255) DEFAULT NULL,
  `asdl_note` varchar(255) DEFAULT NULL,
  `asdl_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`asdl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_asdl
-- ----------------------------
INSERT INTO `fbd_asdl` VALUES ('asdl021404578472704', 'fbd021005077193149', 'ADSLD6057749', 'sz00000000744686951@163.gd', '87654321', '1982.00', '2016-08-08', '续约', '站点网络', '已查');

-- ----------------------------
-- Table structure for `fbd_computer`
-- ----------------------------
DROP TABLE IF EXISTS `fbd_computer`;
CREATE TABLE `fbd_computer` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `fbd_id` varchar(255) DEFAULT NULL,
  `c_cpu` varchar(255) DEFAULT NULL,
  `c_mainboard` varchar(255) DEFAULT NULL,
  `c_memory` varchar(255) DEFAULT NULL,
  `c_disk` varchar(255) DEFAULT NULL,
  `c_mac` varchar(255) DEFAULT NULL,
  `c_displayer` varchar(255) DEFAULT NULL,
  `c_time_start` date DEFAULT NULL,
  `c_used_year` double(30,2) DEFAULT NULL,
  `c_scrap` varchar(255) DEFAULT NULL,
  `c_note` varchar(255) DEFAULT NULL,
  `c_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_computer
-- ----------------------------
INSERT INTO `fbd_computer` VALUES ('c031403206979471', 'fbd021005077193149', '1', '1', '1', '1', '1', '1', '2016-08-02', '1.00', '否', '111', '1');

-- ----------------------------
-- Table structure for `fbd_list_link`
-- ----------------------------
DROP TABLE IF EXISTS `fbd_list_link`;
CREATE TABLE `fbd_list_link` (
  `ll_id` varchar(255) NOT NULL DEFAULT '',
  `fbd_id` varchar(255) DEFAULT NULL,
  `cs_id` varchar(255) DEFAULT NULL,
  `ll_date_need` date DEFAULT NULL,
  `ll_date_commit` date DEFAULT NULL,
  `ll_name` varchar(255) DEFAULT NULL,
  `ll_number` int(11) DEFAULT NULL,
  `ll_unit` varchar(255) DEFAULT NULL,
  `ll_norms` varchar(255) DEFAULT NULL,
  `ll_link` varchar(255) DEFAULT NULL,
  `ll_note` varchar(255) DEFAULT NULL,
  `ll_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_list_link
-- ----------------------------
INSERT INTO `fbd_list_link` VALUES ('ll041359346729080', 'fbd021005077193149', 'cs6041346377133578', '2016-08-04', '2016-08-04', '12', '12', '12', '12', 'http://www.baidu.com', '112', '12');

-- ----------------------------
-- Table structure for `fbd_monitoring`
-- ----------------------------
DROP TABLE IF EXISTS `fbd_monitoring`;
CREATE TABLE `fbd_monitoring` (
  `m_id` varchar(255) NOT NULL DEFAULT '',
  `fbd_id` varchar(255) DEFAULT NULL,
  `m_camera` int(11) DEFAULT NULL,
  `m_disk` int(11) DEFAULT NULL,
  `m_disk_capacity` varchar(255) DEFAULT NULL,
  `m_num` varchar(255) DEFAULT NULL,
  `m_pass` varchar(255) DEFAULT NULL,
  `m_displayer` int(11) DEFAULT NULL,
  `m_mainframe_brand` varchar(255) DEFAULT NULL,
  `m_mainframe_number` varchar(255) DEFAULT NULL,
  `m_interface` int(11) DEFAULT NULL,
  `m_time_start` date DEFAULT NULL,
  `m_used_year` double(30,2) DEFAULT NULL,
  `m_scrap` varchar(255) DEFAULT NULL,
  `m_period` int(11) DEFAULT NULL,
  `m_note` varchar(255) DEFAULT NULL,
  `m_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_monitoring
-- ----------------------------
INSERT INTO `fbd_monitoring` VALUES ('m021638365765781', 'fbd021006423989684', '1', '1', '1T', '1232', '13213', '1', 'dell', '01231dc131313', '1', '2016-08-03', '1.22', '是', '1', '12312', '123123');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `g_id` varchar(255) NOT NULL DEFAULT '',
  `g_name` varchar(255) DEFAULT NULL,
  `g_number` int(11) DEFAULT NULL,
  `g_unit` varchar(255) DEFAULT NULL,
  `g_date_in` date DEFAULT NULL,
  `cs_id_in` varchar(255) DEFAULT NULL,
  `g_date_out` date DEFAULT NULL,
  `cs_id_out` varchar(255) DEFAULT NULL,
  `g_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('g051525324657918', '工资单', '11', '封', '2016-08-05', 'cs6011724259902610', '2016-08-05', 'cs5011726484884565', '？');

-- ----------------------------
-- Table structure for `go_out`
-- ----------------------------
DROP TABLE IF EXISTS `go_out`;
CREATE TABLE `go_out` (
  `go_id` varchar(255) NOT NULL DEFAULT '',
  `go_date_accept` date DEFAULT NULL,
  `go_number_accept` int(11) DEFAULT NULL,
  `go_destination` varchar(255) DEFAULT NULL,
  `cs_id_applicant` varchar(255) DEFAULT '',
  `go_type` varchar(255) DEFAULT NULL,
  `cs_id_registe` varchar(255) DEFAULT NULL,
  `go_date_expect` date DEFAULT NULL,
  `go_description_fault` varchar(255) DEFAULT NULL,
  `cs_id_service` varchar(255) DEFAULT NULL,
  `go_date_complete` date DEFAULT NULL,
  `go_number_complete` int(11) DEFAULT NULL,
  `go_timeout` int(11) DEFAULT NULL,
  `go_fee_meal` double(30,2) DEFAULT NULL,
  `go_work` int(11) DEFAULT NULL,
  `go_fee_traffic` double(30,2) DEFAULT NULL,
  `go_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`go_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_out
-- ----------------------------
INSERT INTO `go_out` VALUES ('go081353063587955', '2016-08-08', '1', '123', 'cs6041346377133578', '123', 'cs6011724259902610', '2016-08-08', '123', 'cs5011726484884565', '2016-08-08', '123', '1', '13.00', '1', '1.00', '1');

-- ----------------------------
-- Table structure for `section_fenbodian`
-- ----------------------------
DROP TABLE IF EXISTS `section_fenbodian`;
CREATE TABLE `section_fenbodian` (
  `fbd_id` varchar(255) NOT NULL DEFAULT '',
  `fbd_name` varchar(255) DEFAULT NULL,
  `fbd_master` varchar(255) DEFAULT NULL,
  `fbd_phone_private` varchar(255) DEFAULT NULL,
  `fbd_phone_company` varchar(255) DEFAULT NULL,
  `fbd_phone_short` varchar(255) DEFAULT NULL,
  `fbd_address` varchar(255) DEFAULT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fbd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section_fenbodian
-- ----------------------------
INSERT INTO `section_fenbodian` VALUES ('fbd021002107147666', '西丽', '邹建平', '13048962308', '', '', '西丽龙联花园9栋31号商铺', 'fb021001015381511');
INSERT INTO `section_fenbodian` VALUES ('fbd021005077193149', '红花岭', '邹正伟', '13641489146', '', '', '	红花岭工业北区配套宿舍第3栋101,102号商铺', 'fb021001015381511');
INSERT INTO `section_fenbodian` VALUES ('fbd021006423989684', '高新', '邓华', '13049351318', '', '', '南山区白石洲路沙河工业区工贸27栋101号', 'fb021001015381511');

-- ----------------------------
-- Table structure for `section_fenbu`
-- ----------------------------
DROP TABLE IF EXISTS `section_fenbu`;
CREATE TABLE `section_fenbu` (
  `fb_id` varchar(255) NOT NULL DEFAULT '',
  `fb_name` varchar(255) DEFAULT NULL,
  `fb_master` varchar(255) DEFAULT NULL,
  `fb_phone_private` varchar(255) DEFAULT NULL,
  `fb_phone_company` varchar(255) DEFAULT NULL,
  `fb_phone_short` varchar(255) DEFAULT NULL,
  `qb_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section_fenbu
-- ----------------------------
INSERT INTO `section_fenbu` VALUES ('fb021001015381511', '西丽分部', '陈大忠', '15118831317', '', '', 'qb281342355373349');

-- ----------------------------
-- Table structure for `section_qubu`
-- ----------------------------
DROP TABLE IF EXISTS `section_qubu`;
CREATE TABLE `section_qubu` (
  `qb_id` varchar(255) NOT NULL DEFAULT '',
  `qb_name` varchar(255) DEFAULT NULL,
  `qb_master` varchar(255) DEFAULT NULL,
  `qb_phone_private` varchar(255) DEFAULT NULL,
  `qb_phone_company` varchar(255) DEFAULT NULL,
  `qb_phone_short` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section_qubu
-- ----------------------------
INSERT INTO `section_qubu` VALUES ('qb281342355373349', '南山区', '张三', '18307211633', '15907211335', '6666');

-- ----------------------------
-- Table structure for `sim`
-- ----------------------------
DROP TABLE IF EXISTS `sim`;
CREATE TABLE `sim` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `cs_id` varchar(255) DEFAULT NULL,
  `s_number` int(11) DEFAULT NULL,
  `s_month` int(11) DEFAULT NULL,
  `s_fee_sum` double(30,2) DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `s_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sim
-- ----------------------------
INSERT INTO `sim` VALUES ('sim041545084054258', 'cs4020936173635935', '123', '123', '123.00', '2016-08-04', '1111');

-- ----------------------------
-- Table structure for `timeline`
-- ----------------------------
DROP TABLE IF EXISTS `timeline`;
CREATE TABLE `timeline` (
  `tl_id` varchar(255) NOT NULL DEFAULT '',
  `user_num` varchar(255) DEFAULT NULL,
  `tl_time` datetime DEFAULT NULL,
  `tl_state` varchar(255) DEFAULT NULL,
  `tl_table_name` varchar(255) DEFAULT NULL,
  `tl_table_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timeline
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_num` varchar(255) NOT NULL DEFAULT '',
  `u_pass` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_cs` varchar(255) DEFAULT NULL,
  `u_job` varchar(255) DEFAULT NULL,
  `u_start_time` datetime DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_branches`
-- ----------------------------
DROP TABLE IF EXISTS `xt_branches`;
CREATE TABLE `xt_branches` (
  `b_id` varchar(255) NOT NULL DEFAULT '',
  `b_date` date DEFAULT NULL,
  `b_maintain_date` date DEFAULT NULL,
  `b_maintain_week` int(11) DEFAULT NULL,
  `b_num_1` varchar(255) DEFAULT NULL,
  `b_name_1` varchar(255) DEFAULT NULL,
  `b_master_1` varchar(255) DEFAULT NULL,
  `b_phone_1` varchar(255) DEFAULT NULL,
  `b_master_2` varchar(255) DEFAULT NULL,
  `b_card_2` varchar(255) DEFAULT NULL,
  `b_phone_2` varchar(255) DEFAULT NULL,
  `b_num_2` varchar(255) DEFAULT NULL,
  `b_name_2` varchar(255) DEFAULT NULL,
  `b_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_branches
-- ----------------------------
INSERT INTO `xt_branches` VALUES ('b091551235416676', '2016-08-09', '2016-08-09', '12', '12312423123', '按时打算方法阿萨达是', '阿萨德', '1231311123123', '爱绿茶', '1234652352345413', '12353214513', '127865434', '很优惠', '1');

-- ----------------------------
-- Table structure for `xt_priority`
-- ----------------------------
DROP TABLE IF EXISTS `xt_priority`;
CREATE TABLE `xt_priority` (
  `p_id` varchar(255) NOT NULL DEFAULT '',
  `p_name` varchar(255) DEFAULT NULL,
  `p_purpose` varchar(255) DEFAULT NULL,
  `p_section` varchar(255) DEFAULT NULL,
  `p_man` varchar(255) DEFAULT NULL,
  `p_start_date` date DEFAULT NULL,
  `p_stop_date` date DEFAULT NULL,
  `p_priority` int(11) DEFAULT NULL,
  `p_complete` varchar(255) DEFAULT NULL,
  `p_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_priority
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_site`
-- ----------------------------
DROP TABLE IF EXISTS `xt_site`;
CREATE TABLE `xt_site` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `s_num` varchar(255) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `s_fbd` varchar(255) DEFAULT NULL,
  `s_start_date` date DEFAULT NULL,
  `s_maintain_date` date DEFAULT NULL,
  `s_maintain_cycle` int(11) DEFAULT NULL,
  `s_maintain_type` varchar(255) DEFAULT NULL,
  `s_maintain_man` varchar(255) DEFAULT NULL,
  `s_notice` varchar(255) DEFAULT NULL,
  `s_handing` varchar(255) DEFAULT NULL,
  `s_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_site
-- ----------------------------
INSERT INTO `xt_site` VALUES ('s091508433924168', '793327', '广东深圳公司骨头案撒爱上来的啊', '骏达分拨点', '2016-08-09', '2016-08-09', '29', '大客户', '王科', '通知网点管理部', '已OK', '');

-- ----------------------------
-- Table structure for `xt_stop_site`
-- ----------------------------
DROP TABLE IF EXISTS `xt_stop_site`;
CREATE TABLE `xt_stop_site` (
  `ss_id` varchar(255) NOT NULL DEFAULT '',
  `ss_stop_date` date DEFAULT NULL,
  `ss_maintain_week` int(11) DEFAULT NULL,
  `ss_num` varchar(255) DEFAULT NULL,
  `ss_name` varchar(255) DEFAULT NULL,
  `ss_bgn` varchar(255) DEFAULT NULL,
  `ss_bqq` varchar(255) DEFAULT NULL,
  `ss_zm` varchar(255) DEFAULT NULL,
  `ss_nw` varchar(255) DEFAULT NULL,
  `ss_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_stop_site
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_calendar`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_calendar`;
CREATE TABLE `xt_zm_calendar` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `c_project` varchar(255) DEFAULT NULL,
  `c_target` varchar(255) DEFAULT NULL,
  `c_content` varchar(255) DEFAULT NULL,
  `c_man` varchar(255) DEFAULT NULL,
  `c_work` varchar(255) DEFAULT NULL,
  `c_progress` varchar(255) DEFAULT NULL,
  `c_start_date` date DEFAULT NULL,
  `c_stop_date` date DEFAULT NULL,
  `c_complete` double(20,2) DEFAULT NULL,
  `c_time` double(20,2) DEFAULT NULL,
  `c_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_calendar
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_data`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_data`;
CREATE TABLE `xt_zm_data` (
  `d_id` varchar(255) NOT NULL DEFAULT '',
  `d_date` date DEFAULT NULL,
  `d_no_upload_9` int(11) DEFAULT NULL,
  `d_no_upload_18` int(11) DEFAULT NULL,
  `d_offline` int(11) DEFAULT NULL,
  `d_package` int(11) DEFAULT NULL,
  `d_no_package` int(11) DEFAULT NULL,
  `d_data_package` int(11) DEFAULT NULL,
  `d_data_car` int(11) DEFAULT NULL,
  `d_anomaly_9` int(11) DEFAULT NULL,
  `d_anomaly_18` int(11) DEFAULT NULL,
  `d_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_data
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_data_unusual`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_data_unusual`;
CREATE TABLE `xt_zm_data_unusual` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `u_submit_date` date DEFAULT NULL,
  `u_submit_week` int(11) DEFAULT NULL,
  `u_submit_man` varchar(255) DEFAULT NULL,
  `u_project` varchar(255) DEFAULT NULL,
  `u_module` varchar(255) DEFAULT NULL,
  `u_follow_man` varchar(255) DEFAULT NULL,
  `u_zm` varchar(255) DEFAULT NULL,
  `u_priority` varchar(255) DEFAULT NULL,
  `u_solve_date` date DEFAULT NULL,
  `u_solve_time` int(11) DEFAULT NULL,
  `u_state` varchar(255) DEFAULT NULL,
  `u_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_data_unusual
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_efficiency`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_efficiency`;
CREATE TABLE `xt_zm_efficiency` (
  `e_id` varchar(255) NOT NULL DEFAULT '',
  `e_year` varchar(255) DEFAULT NULL,
  `e_month` varchar(255) DEFAULT NULL,
  `e_need_project` int(11) DEFAULT NULL,
  `e_need_urgency` int(11) DEFAULT NULL,
  `e_need_sum` int(11) DEFAULT NULL,
  `e_time_tidy` int(11) DEFAULT NULL,
  `e_time_build` int(11) DEFAULT NULL,
  `e_time_sum` int(11) DEFAULT NULL,
  `e_efficiency_build` double(20,2) DEFAULT NULL,
  `e_efficiency_tidy` double(20,2) DEFAULT NULL,
  `e_efficiency_zm` double(20,2) DEFAULT NULL,
  `e_complete_actual` double(20,2) DEFAULT NULL,
  `e_complete_plan` double(20,2) DEFAULT NULL,
  `e_than` double(20,2) DEFAULT NULL,
  `e_complete` double(20,2) DEFAULT NULL,
  `e_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_efficiency
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_meeting`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_meeting`;
CREATE TABLE `xt_zm_meeting` (
  `m_id` varchar(255) NOT NULL DEFAULT '',
  `m_name` varchar(255) DEFAULT NULL,
  `m_address` varchar(255) DEFAULT NULL,
  `m_start_time` datetime DEFAULT NULL,
  `m_stop_time` datetime DEFAULT NULL,
  `m_host` varchar(255) DEFAULT NULL,
  `m_record` varchar(255) DEFAULT NULL,
  `m_attent` varchar(255) DEFAULT NULL,
  `m_outline` varchar(255) DEFAULT NULL,
  `m_program` varchar(255) DEFAULT NULL,
  `m_title` varchar(255) DEFAULT NULL,
  `m_content` varchar(255) DEFAULT NULL,
  `m_speek` varchar(255) DEFAULT NULL,
  `m_affiliate` varchar(255) DEFAULT NULL,
  `m_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_meeting
-- ----------------------------

-- ----------------------------
-- Table structure for `xt_zm_number`
-- ----------------------------
DROP TABLE IF EXISTS `xt_zm_number`;
CREATE TABLE `xt_zm_number` (
  `zm_id` varchar(255) NOT NULL DEFAULT '',
  `zm_apply_date` date DEFAULT NULL,
  `zm_apply_cs` varchar(255) DEFAULT NULL,
  `zm_apply_master` varchar(255) DEFAULT NULL,
  `zm_apply_position` varchar(255) DEFAULT NULL,
  `zm_number` varchar(255) DEFAULT NULL,
  `zm_pda` varchar(255) DEFAULT NULL,
  `zm_on_job` varchar(255) DEFAULT NULL,
  `zm_service_time` varchar(255) DEFAULT NULL,
  `zm_service_master` varchar(255) DEFAULT NULL,
  `zm_service_date` date DEFAULT NULL,
  `zm_service_week` int(11) DEFAULT NULL,
  `zm_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_number
-- ----------------------------
