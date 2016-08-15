/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-15 18:23:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company_section`
-- ----------------------------
DROP TABLE IF EXISTS `company_section`;
CREATE TABLE `company_section` (
  `cs_id` varchar(255) NOT NULL,
  `cs_name` varchar(255) DEFAULT NULL,
  `cs_master` varchar(255) DEFAULT NULL,
  `cs_number` varchar(255) DEFAULT NULL,
  `cs_position` varchar(255) DEFAULT NULL,
  `cs_phone_p` varchar(255) DEFAULT NULL,
  `cs_phone_c` varchar(255) DEFAULT NULL,
  `cs_phone_s` varchar(255) DEFAULT NULL,
  `cs_note` varchar(255) DEFAULT NULL,
  `cs_last` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_section
-- ----------------------------
INSERT INTO `company_section` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company_section` VALUES ('2', '2', '2', null, null, null, null, null, null, '1');
INSERT INTO `company_section` VALUES ('3', null, null, null, null, null, null, null, null, '2');
INSERT INTO `company_section` VALUES ('4', null, null, null, null, null, null, null, null, '1');
INSERT INTO `company_section` VALUES ('5', null, null, null, null, null, null, null, null, '1');
INSERT INTO `company_section` VALUES ('6', null, null, null, null, null, null, null, null, '3');

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
INSERT INTO `fbd_list_link` VALUES ('ll150944498043717', 'fbd021002107147666', 'cs1011701386104462', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll150944529121605', 'fbd021002107147666', 'cs1011701386104462', null, null, '', null, '', '', '', '', '');

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
INSERT INTO `goods` VALUES ('g051525324657918', '工资单', '11', '封', '2016-08-13', 'cs6011724259902610', '2016-08-13', 'cs5011726484884565', 'adads');

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
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'asdl查看');
INSERT INTO `permission` VALUES ('2', 'asdl添加');
INSERT INTO `permission` VALUES ('3', 'asdl删除');
INSERT INTO `permission` VALUES ('4', 'asdl修改');
INSERT INTO `permission` VALUES ('5', '分拨点监控查看');
INSERT INTO `permission` VALUES ('6', '分拨点监控删除');
INSERT INTO `permission` VALUES ('7', '分拨点监控修改');
INSERT INTO `permission` VALUES ('8', '分拨点监控添加');
INSERT INTO `permission` VALUES ('9', '分拨点电脑监控查看');
INSERT INTO `permission` VALUES ('10', '分拨点电脑监控删除');
INSERT INTO `permission` VALUES ('11', '分拨点电脑监控修改');
INSERT INTO `permission` VALUES ('12', '分拨点电脑监控添加');
INSERT INTO `permission` VALUES ('13', '分拨点监控材料清单查看');
INSERT INTO `permission` VALUES ('14', '分拨点监控材料清单删除');
INSERT INTO `permission` VALUES ('15', '分拨点监控材料清单修改');
INSERT INTO `permission` VALUES ('16', '分拨点监控材料清单添加');
INSERT INTO `permission` VALUES ('17', 'sim费用报销查看');
INSERT INTO `permission` VALUES ('18', 'sim费用报销删除');
INSERT INTO `permission` VALUES ('19', 'sim费用修改');
INSERT INTO `permission` VALUES ('20', 'sim费用添加');
INSERT INTO `permission` VALUES ('21', '内件收发查看');
INSERT INTO `permission` VALUES ('22', '内件收发删除');
INSERT INTO `permission` VALUES ('23', '内件收发修改');
INSERT INTO `permission` VALUES ('24', '内件收发添加');
INSERT INTO `permission` VALUES ('25', '外出登记查看');
INSERT INTO `permission` VALUES ('26', '外出登记删除');
INSERT INTO `permission` VALUES ('27', '外出登记修改');
INSERT INTO `permission` VALUES ('28', '外出登记添加');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `r_id` varchar(255) NOT NULL DEFAULT '',
  `r_name` varchar(255) DEFAULT NULL,
  `r_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('r111613371752208', '开发者', '测试用，由开发者手动编写');
INSERT INTO `role` VALUES ('r131526334505203', '硬件组', '只有硬件组相关的权限');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `rp_id` varchar(255) NOT NULL DEFAULT '',
  `r_id` varchar(255) DEFAULT NULL,
  `p_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('rp111614317822988', 'r111613371752208', '1');
INSERT INTO `role_permission` VALUES ('rp111614318097807', 'r111613371752208', '2');
INSERT INTO `role_permission` VALUES ('rp111614318287194', 'r111613371752208', '3');
INSERT INTO `role_permission` VALUES ('rp111614318511365', 'r111613371752208', '4');
INSERT INTO `role_permission` VALUES ('rp111614318705880', 'r111613371752208', '5');
INSERT INTO `role_permission` VALUES ('rp111614318926953', 'r111613371752208', '6');
INSERT INTO `role_permission` VALUES ('rp111614319128238', 'r111613371752208', '7');
INSERT INTO `role_permission` VALUES ('rp111614319342359', 'r111613371752208', '8');
INSERT INTO `role_permission` VALUES ('rp111614319545039', 'r111613371752208', '9');
INSERT INTO `role_permission` VALUES ('rp111614319755085', 'r111613371752208', '10');
INSERT INTO `role_permission` VALUES ('rp111614319951171', 'r111613371752208', '11');
INSERT INTO `role_permission` VALUES ('rp111614320175295', 'r111613371752208', '12');
INSERT INTO `role_permission` VALUES ('rp111614320458678', 'r111613371752208', '13');
INSERT INTO `role_permission` VALUES ('rp111614320675601', 'r111613371752208', '14');
INSERT INTO `role_permission` VALUES ('rp111614320871919', 'r111613371752208', '15');
INSERT INTO `role_permission` VALUES ('rp111614321093657', 'r111613371752208', '16');
INSERT INTO `role_permission` VALUES ('rp111614321456836', 'r111613371752208', '17');
INSERT INTO `role_permission` VALUES ('rp111614321676782', 'r111613371752208', '18');
INSERT INTO `role_permission` VALUES ('rp111614322049315', 'r111613371752208', '19');
INSERT INTO `role_permission` VALUES ('rp111614322261070', 'r111613371752208', '20');
INSERT INTO `role_permission` VALUES ('rp111614322708932', 'r111613371752208', '21');
INSERT INTO `role_permission` VALUES ('rp111614323122895', 'r111613371752208', '22');
INSERT INTO `role_permission` VALUES ('rp111614323545196', 'r111613371752208', '23');
INSERT INTO `role_permission` VALUES ('rp111614323959400', 'r111613371752208', '24');
INSERT INTO `role_permission` VALUES ('rp111614324376945', 'r111613371752208', '25');
INSERT INTO `role_permission` VALUES ('rp111614324593742', 'r111613371752208', '26');
INSERT INTO `role_permission` VALUES ('rp111614324959300', 'r111613371752208', '27');
INSERT INTO `role_permission` VALUES ('rp111614325172919', 'r111613371752208', '28');
INSERT INTO `role_permission` VALUES ('rp131526334567954', 'r131526334505203', '1');
INSERT INTO `role_permission` VALUES ('rp131526335511630', 'r131526334505203', '2');
INSERT INTO `role_permission` VALUES ('rp131526335731055', 'r131526334505203', '3');
INSERT INTO `role_permission` VALUES ('rp131526335926188', 'r131526334505203', '4');
INSERT INTO `role_permission` VALUES ('rp131526336154992', 'r131526334505203', '5');
INSERT INTO `role_permission` VALUES ('rp131526336819715', 'r131526334505203', '6');
INSERT INTO `role_permission` VALUES ('rp131526337177172', 'r131526334505203', '7');
INSERT INTO `role_permission` VALUES ('rp131526337903101', 'r131526334505203', '8');
INSERT INTO `role_permission` VALUES ('rp131526338331922', 'r131526334505203', '9');
INSERT INTO `role_permission` VALUES ('rp131526338604177', 'r131526334505203', '10');
INSERT INTO `role_permission` VALUES ('rp131526338845645', 'r131526334505203', '11');
INSERT INTO `role_permission` VALUES ('rp131526339026905', 'r131526334505203', '12');
INSERT INTO `role_permission` VALUES ('rp131526339248599', 'r131526334505203', '13');
INSERT INTO `role_permission` VALUES ('rp131526339444429', 'r131526334505203', '14');
INSERT INTO `role_permission` VALUES ('rp131526339668885', 'r131526334505203', '15');
INSERT INTO `role_permission` VALUES ('rp131526339851539', 'r131526334505203', '16');
INSERT INTO `role_permission` VALUES ('rp131526340163883', 'r131526334505203', '17');
INSERT INTO `role_permission` VALUES ('rp131526340676628', 'r131526334505203', '18');
INSERT INTO `role_permission` VALUES ('rp131526340935334', 'r131526334505203', '19');
INSERT INTO `role_permission` VALUES ('rp131526341162480', 'r131526334505203', '20');
INSERT INTO `role_permission` VALUES ('rp131526341353342', 'r131526334505203', '21');
INSERT INTO `role_permission` VALUES ('rp131526341601417', 'r131526334505203', '22');
INSERT INTO `role_permission` VALUES ('rp131526341858869', 'r131526334505203', '23');
INSERT INTO `role_permission` VALUES ('rp131526342087747', 'r131526334505203', '24');
INSERT INTO `role_permission` VALUES ('rp131526342276801', 'r131526334505203', '25');
INSERT INTO `role_permission` VALUES ('rp131526342494731', 'r131526334505203', '26');
INSERT INTO `role_permission` VALUES ('rp131526342872338', 'r131526334505203', '27');
INSERT INTO `role_permission` VALUES ('rp131526343287795', 'r131526334505203', '28');

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
INSERT INTO `timeline` VALUES ('tl111713459525418', 'yd-7111', '2016-08-11 17:13:45', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl111713480972069', 'yd-7111', '2016-08-11 17:13:48', '删除', 'GoOut', 'go111713135894366');
INSERT INTO `timeline` VALUES ('tl111713493859779', 'yd-7111', '2016-08-11 17:13:49', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl111713512324694', 'yd-7111', '2016-08-11 17:13:51', '删除', 'GoOut', 'go111704165454605');
INSERT INTO `timeline` VALUES ('tl111713520508413', 'yd-7111', '2016-08-11 17:13:52', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl111713539896194', 'yd-7111', '2016-08-11 17:13:53', '删除', 'GoOut', 'go111701023478381');
INSERT INTO `timeline` VALUES ('tl111713546982512', 'yd-7111', '2016-08-11 17:13:54', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl111713554283727', 'yd-7111', '2016-08-11 17:13:55', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl111713573816178', 'yd-7111', '2016-08-11 17:13:57', '删除', 'Goods', 'g111704417471122');
INSERT INTO `timeline` VALUES ('tl111713595244715', 'yd-7111', '2016-08-11 17:13:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl111713598535970', 'yd-7111', '2016-08-11 17:13:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl111714011841090', 'yd-7111', '2016-08-11 17:14:01', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl111714040498910', 'yd-7111', '2016-08-11 17:14:04', '删除', 'FbdListLink', 'll111704587952641');
INSERT INTO `timeline` VALUES ('tl111714050482836', 'yd-7111', '2016-08-11 17:14:05', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl111714067085429', 'yd-7111', '2016-08-11 17:14:06', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl111714074304298', 'yd-7111', '2016-08-11 17:14:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111718419565657', 'yd-7111', '2016-08-11 17:18:41', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl111718424091596', 'yd-7111', '2016-08-11 17:18:42', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl111718444538739', 'yd-7111', '2016-08-11 17:18:44', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111718577743038', 'yd-7111', '2016-08-11 17:18:57', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111738129485765', 'yd-7111', '2016-08-11 17:38:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111738514136076', 'yd-7111', '2016-08-11 17:38:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111739113917409', 'yd-7111', '2016-08-11 17:39:11', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111740175796294', 'yd-7111', '2016-08-11 17:40:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111740336376081', 'yd-7111', '2016-08-11 17:40:33', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111744303058206', 'yd-7111', '2016-08-11 17:44:30', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111746274373291', 'yd-7111', '2016-08-11 17:46:27', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111800109249054', 'yd-7111', '2016-08-11 18:00:10', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111800318949782', 'yd-7111', '2016-08-11 18:00:31', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111800357055657', 'yd-7111', '2016-08-11 18:00:35', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl111800380769081', 'yd-7111', '2016-08-11 18:00:38', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl111800391886860', 'yd-7111', '2016-08-11 18:00:39', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl111800420464683', 'yd-7111', '2016-08-11 18:00:42', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl111800439877883', 'yd-7111', '2016-08-11 18:00:43', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111800513196952', 'yd-7111', '2016-08-11 18:00:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111801044595249', 'yd-7111', '2016-08-11 18:01:04', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111802145704919', 'yd-7111', '2016-08-11 18:02:14', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl111802541349289', 'yd-7111', '2016-08-11 18:02:54', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl111804167304951', 'yd-7111', '2016-08-11 18:04:16', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121120190753671', 'yd-7111', '2016-08-12 11:20:19', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121120195698325', 'yd-7111', '2016-08-12 11:20:19', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121120225776433', 'yd-7111', '2016-08-12 11:20:22', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl121120242093223', 'yd-7111', '2016-08-12 11:20:24', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121121582595799', 'yd-7111', '2016-08-12 11:21:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121136508556223', 'yd-7111', '2016-08-12 11:36:50', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121136511379968', 'yd-7111', '2016-08-12 11:36:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121137551634075', 'yd-7111', '2016-08-12 11:37:55', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121137579435449', 'yd-7111', '2016-08-12 11:37:57', '添加', 'FbdComputer', 'c121137578007608');
INSERT INTO `timeline` VALUES ('tl121137592117084', 'yd-7111', '2016-08-12 11:37:59', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121138014147584', 'yd-7111', '2016-08-12 11:38:01', '删除', 'FbdComputer', 'c121137578007608');
INSERT INTO `timeline` VALUES ('tl121138021373209', 'yd-7111', '2016-08-12 11:38:02', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121138184724806', 'yd-7111', '2016-08-12 11:38:18', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121356333447566', 'yd-7111', '2016-08-12 13:56:33', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121540180436688', 'yd-7111', '2016-08-12 15:40:18', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121541372435299', 'yd-7111', '2016-08-12 15:41:37', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121546412697088', 'yd-7111', '2016-08-12 15:46:41', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121546438369135', 'yd-7111', '2016-08-12 15:46:43', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121546441559434', 'yd-7111', '2016-08-12 15:46:44', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121546468298028', 'yd-7111', '2016-08-12 15:46:46', '添加', 'FbdListLink', 'sim121546465904880');
INSERT INTO `timeline` VALUES ('tl121546481027963', 'yd-7111', '2016-08-12 15:46:48', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121546524898366', 'yd-7111', '2016-08-12 15:46:52', '修改', 'FbdListLink', 'sim121546465904880');
INSERT INTO `timeline` VALUES ('tl121551466949026', 'yd-7111', '2016-08-12 15:51:46', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121554453539225', 'yd-7111', '2016-08-12 15:54:45', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121556071566718', 'yd-7111', '2016-08-12 15:56:07', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121556103236230', 'yd-7111', '2016-08-12 15:56:10', '添加', 'FbdComputer', 'c121556102828299');
INSERT INTO `timeline` VALUES ('tl121556321042879', 'yd-7111', '2016-08-12 15:56:32', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl121556346061259', 'yd-7111', '2016-08-12 15:56:34', '添加', 'GoOut', 'go121556345469318');
INSERT INTO `timeline` VALUES ('tl121556473568701', 'yd-7111', '2016-08-12 15:56:47', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl121556478561207', 'yd-7111', '2016-08-12 15:56:47', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121556503786713', 'yd-7111', '2016-08-12 15:56:50', '删除', 'FbdComputer', 'c121556102828299');
INSERT INTO `timeline` VALUES ('tl121556529218732', 'yd-7111', '2016-08-12 15:56:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121556549959691', 'yd-7111', '2016-08-12 15:56:54', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121556566724683', 'yd-7111', '2016-08-12 15:56:56', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl121556575127874', 'yd-7111', '2016-08-12 15:56:57', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121556582504586', 'yd-7111', '2016-08-12 15:56:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121556589857955', 'yd-7111', '2016-08-12 15:56:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121557002815640', 'yd-7111', '2016-08-12 15:57:00', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl121557005492134', 'yd-7111', '2016-08-12 15:57:00', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121557042169545', 'yd-7111', '2016-08-12 15:57:04', '删除', 'FbdListLink', 'sim121546465904880');
INSERT INTO `timeline` VALUES ('tl121557057791552', 'yd-7111', '2016-08-12 15:57:05', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl121557071314803', 'yd-7111', '2016-08-12 15:57:07', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl121557095128864', 'yd-7111', '2016-08-12 15:57:09', '删除', 'GoOut', 'go121556345469318');
INSERT INTO `timeline` VALUES ('tl121613585685195', 'yd-7111', '2016-08-12 16:13:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121628260414439', 'yd-7111', '2016-08-12 16:28:26', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121722592586867', 'yd-7111', '2016-08-12 17:22:59', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121723016606978', 'yd-7111', '2016-08-12 17:23:01', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121723045919364', 'yd-7111', '2016-08-12 17:23:04', '添加', 'FbdListLink', 'll121723044773809');
INSERT INTO `timeline` VALUES ('tl121723075472580', 'yd-7111', '2016-08-12 17:23:07', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121723133069088', 'yd-7111', '2016-08-12 17:23:13', '删除', 'FbdListLink', 'll121723044773809');
INSERT INTO `timeline` VALUES ('tl121723146344439', 'yd-7111', '2016-08-12 17:23:14', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl121723164413484', 'yd-7111', '2016-08-12 17:23:16', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121723186415251', 'yd-7111', '2016-08-12 17:23:18', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl121723197652408', 'yd-7111', '2016-08-12 17:23:19', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl121723209811548', 'yd-7111', '2016-08-12 17:23:20', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121723219144231', 'yd-7111', '2016-08-12 17:23:21', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl121723254796336', 'yd-7111', '2016-08-12 17:23:25', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl121724178496790', 'yd-7111', '2016-08-12 17:24:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121724276066018', 'yd-7111', '2016-08-12 17:24:27', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl121724588222097', 'yd-7111', '2016-08-12 17:24:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131402574396028', 'yd-7111', '2016-08-13 14:02:57', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131402574398045', 'yd-7111', '2016-08-13 14:02:57', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131402587243983', 'yd-7111', '2016-08-13 14:02:58', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl131403041772829', 'yd-7111', '2016-08-13 14:03:04', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131425465913522', 'yd-7111', '2016-08-13 14:25:46', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131516165288592', 'yd-7111', '2016-08-13 15:16:16', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131516194564281', 'yd-7111', '2016-08-13 15:16:19', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl131516203145372', 'yd-7111', '2016-08-13 15:16:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl131516228268908', 'yd-7111', '2016-08-13 15:16:22', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl131516236797400', 'yd-7111', '2016-08-13 15:16:23', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl131516246824026', 'yd-7111', '2016-08-13 15:16:24', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl131516296999131', 'yd-7111', '2016-08-13 15:16:29', '修改', 'Goods', 'g051525324657918');
INSERT INTO `timeline` VALUES ('tl131516315511377', 'yd-7111', '2016-08-13 15:16:31', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl131516403281306', 'yd-7111', '2016-08-13 15:16:40', '修改', 'Goods', 'g051525324657918');
INSERT INTO `timeline` VALUES ('tl131725157609710', 'yd-7111', '2016-08-13 17:25:15', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl131725168596750', 'yd-7111', '2016-08-13 17:25:16', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150931129288411', 'yd-7111', '2016-08-15 09:31:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150932123893501', 'yd-7111', '2016-08-15 09:32:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150932300685758', 'yd-7111', '2016-08-15 09:32:30', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150936139452012', 'yd-7111', '2016-08-15 09:36:13', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150936515366370', 'yd-7111', '2016-08-15 09:36:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937138331171', 'yd-7111', '2016-08-15 09:37:13', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937205502468', 'yd-7111', '2016-08-15 09:37:20', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937260495910', 'yd-7111', '2016-08-15 09:37:26', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937292859007', 'yd-7111', '2016-08-15 09:37:29', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl150937303873689', 'yd-7111', '2016-08-15 09:37:30', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150937309278183', 'yd-7111', '2016-08-15 09:37:30', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937394017509', 'yd-7111', '2016-08-15 09:37:39', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150937490004762', 'yd-7111', '2016-08-15 09:37:49', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150938173403063', 'yd-7111', '2016-08-15 09:38:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150938410423086', 'yd-7111', '2016-08-15 09:38:41', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150939095737202', 'yd-7111', '2016-08-15 09:39:09', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150939379374554', 'yd-7111', '2016-08-15 09:39:37', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150939382878547', 'yd-7111', '2016-08-15 09:39:38', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150939448149975', 'yd-7111', '2016-08-15 09:39:44', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150941009283247', 'yd-7111', '2016-08-15 09:41:00', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150941282732429', 'yd-7111', '2016-08-15 09:41:28', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150941479873539', 'yd-7111', '2016-08-15 09:41:47', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150942134596799', 'yd-7111', '2016-08-15 09:42:13', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150942465455846', 'yd-7111', '2016-08-15 09:42:46', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150942507444668', 'yd-7111', '2016-08-15 09:42:50', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150943004386640', 'yd-7111', '2016-08-15 09:43:00', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150943255252688', 'yd-7111', '2016-08-15 09:43:25', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150943379935692', 'yd-7111', '2016-08-15 09:43:37', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150943428855443', 'yd-7111', '2016-08-15 09:43:42', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150943451231649', 'yd-7111', '2016-08-15 09:43:45', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150943474167259', 'yd-7111', '2016-08-15 09:43:47', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150943522136114', 'yd-7111', '2016-08-15 09:43:52', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150943536265864', 'yd-7111', '2016-08-15 09:43:53', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150944166271629', 'yd-7111', '2016-08-15 09:44:16', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150944210539555', 'yd-7111', '2016-08-15 09:44:21', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150944369661727', 'yd-7111', '2016-08-15 09:44:36', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150944453739808', 'yd-7111', '2016-08-15 09:44:45', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150944462042565', 'yd-7111', '2016-08-15 09:44:46', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl150944475891716', 'yd-7111', '2016-08-15 09:44:47', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944498485206', 'yd-7111', '2016-08-15 09:44:49', '添加', 'FbdListLink', 'll150944498043717');
INSERT INTO `timeline` VALUES ('tl150944506706536', 'yd-7111', '2016-08-15 09:44:50', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944529418753', 'yd-7111', '2016-08-15 09:44:52', '添加', 'FbdListLink', 'll150944529121605');
INSERT INTO `timeline` VALUES ('tl150944540971592', 'yd-7111', '2016-08-15 09:44:54', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944567745798', 'yd-7111', '2016-08-15 09:44:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944578261948', 'yd-7111', '2016-08-15 09:44:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944584353801', 'yd-7111', '2016-08-15 09:44:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150944592139573', 'yd-7111', '2016-08-15 09:44:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150945174405609', 'yd-7111', '2016-08-15 09:45:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150945201388188', 'yd-7111', '2016-08-15 09:45:20', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150946142329029', 'yd-7111', '2016-08-15 09:46:14', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl150949050479522', 'yd-7111', '2016-08-15 09:49:05', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150954477676179', 'yd-7111', '2016-08-15 09:54:47', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150954504514203', 'yd-7111', '2016-08-15 09:54:50', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl150954509051358', 'yd-7111', '2016-08-15 09:54:50', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150955174876289', 'yd-7111', '2016-08-15 09:55:17', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl150958230491655', 'yd-7111', '2016-08-15 09:58:23', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl150958249171193', 'yd-7111', '2016-08-15 09:58:24', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150958273357170', 'yd-7111', '2016-08-15 09:58:27', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150958287395875', 'yd-7111', '2016-08-15 09:58:28', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl150958323439586', 'yd-7111', '2016-08-15 09:58:32', '查看', 'Goods', null);

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
  `u_mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('yd-7111', '123456', '张顺', '信息与流程管理部', '开发专员', '2016-08-10 14:45:00', 'r131526334505203', 'shun_zhang@szexpress.com.cn');

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
  `b_num_2` varchar(255) DEFAULT NULL,
  `b_name_2` varchar(255) DEFAULT NULL,
  `b_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_branches
-- ----------------------------
INSERT INTO `xt_branches` VALUES ('b091551235416676', '2016-08-09', '2016-08-09', '12', '12312423123', '按时打算方法阿萨达是', '阿萨德', '127865434', '很优惠', '1');

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
  `s_start_date` date DEFAULT NULL,
  `s_maintain_date` date DEFAULT NULL,
  `s_maintain_cycle` int(11) DEFAULT NULL,
  `s_maintain_type` varchar(255) DEFAULT NULL,
  `s_maintain_man` varchar(255) DEFAULT NULL,
  `s_notice` varchar(255) DEFAULT NULL,
  `s_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_site
-- ----------------------------
INSERT INTO `xt_site` VALUES ('s091508433924168', '793327', '广东深圳公司骨头案撒爱上来的啊', '2016-08-13', '2016-08-13', '29', '大客户', '王科', '通知网点管理部', '1111');

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
  `d_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_data
-- ----------------------------
INSERT INTO `xt_zm_data` VALUES ('d151125481587821', null, '1', '1', '1', '11', '1', '1', '1', '1');

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
  `zm_number` varchar(255) DEFAULT NULL,
  `zm_on_job` varchar(255) DEFAULT NULL,
  `zm_service_master` varchar(255) DEFAULT NULL,
  `zm_service_date` date DEFAULT NULL,
  `zm_service_week` int(11) DEFAULT NULL,
  `zm_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_zm_number
-- ----------------------------
INSERT INTO `xt_zm_number` VALUES ('s151102171851282', '2016-08-15', '1', '1', '12', '12', '12', '2016-08-15', '1', '1');
