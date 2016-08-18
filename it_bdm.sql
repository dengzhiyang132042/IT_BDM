/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-18 16:28:41
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
INSERT INTO `company_section` VALUES ('cs161152254709824', '韵达', '12', '123', '1231', '12313121', '1231', '1231', '1', '0');
INSERT INTO `company_section` VALUES ('cs181616491092615', '总经办', '童建刚', '', '总经理', '', '', '', '1', 'cs161152254709824');
INSERT INTO `company_section` VALUES ('cs181620462267657', '副总经理', '曹学智', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622018345940', '副总经理', '韩诗成', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622233338402', '副总经理', '曾明光', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622402107364', '副总经理', '刘洋', '', '副总经理', '', '', '', '1', 'cs181616491092615');

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
INSERT INTO `fbd_asdl` VALUES ('asdl171459032501876', 'fbd021002107147666', '', '', '', null, null, '', '', '');
INSERT INTO `fbd_asdl` VALUES ('asdl171459078126039', 'fbd021002107147666', '', '', '', null, null, '', '', '');
INSERT INTO `fbd_asdl` VALUES ('asdl171459110511307', 'fbd021002107147666', '', '', '', null, null, '', '', '');
INSERT INTO `fbd_asdl` VALUES ('asdl171459196641878', 'fbd021002107147666', '', '', '', null, null, '', '', '');
INSERT INTO `fbd_asdl` VALUES ('asdl171459231746247', 'fbd021002107147666', '', '', '', null, null, '', '', '');

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
  `cs_master` varchar(255) DEFAULT NULL,
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
INSERT INTO `fbd_list_link` VALUES ('ll181431329958259', 'fbd021005077193149', '谢建文', '2016-08-18', '2016-08-18', '11', '1', '11', '11', '11', '1', '1');
INSERT INTO `fbd_list_link` VALUES ('ll181438311095237', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438347102375', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438379861226', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438424583792', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438468077347', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438550916058', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181438581046401', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181439069921521', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181439100683524', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181439126529829', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181439161697091', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181439196164115', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181502168721415', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181502236049143', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');
INSERT INTO `fbd_list_link` VALUES ('ll181503173942164', 'fbd021002107147666', '', null, null, '', null, '', '', '', '', '');

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
  `cs_master_in` varchar(255) DEFAULT NULL,
  `g_date_out` date DEFAULT NULL,
  `cs_master_out` varchar(255) DEFAULT NULL,
  `g_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('g181519450573247', '爱迪生1', '11', '阿斯达1', '2016-08-18', '阿萨德1', '2016-08-18', '萨达1', '123在1');

-- ----------------------------
-- Table structure for `go_out`
-- ----------------------------
DROP TABLE IF EXISTS `go_out`;
CREATE TABLE `go_out` (
  `go_id` varchar(255) NOT NULL DEFAULT '',
  `go_date_accept` date DEFAULT NULL,
  `go_number_accept` int(11) DEFAULT NULL,
  `go_destination` varchar(255) DEFAULT NULL,
  `cs_master_applicant` varchar(255) DEFAULT '',
  `go_type` varchar(255) DEFAULT NULL,
  `cs_master_registe` varchar(255) DEFAULT NULL,
  `go_date_expect` date DEFAULT NULL,
  `go_description_fault` varchar(255) DEFAULT NULL,
  `cs_master_service` varchar(255) DEFAULT NULL,
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
INSERT INTO `go_out` VALUES ('go181527558498415', '2016-08-18', '12', '3123', '爱迪生', '312', '123', '2016-08-18', '爱的', '阿斯达', '2016-08-18', '1', '1', '12.00', '1', '1.00', '112萨达');

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
INSERT INTO `permission` VALUES ('29', '站点资料查看');
INSERT INTO `permission` VALUES ('30', '站点资料删除');
INSERT INTO `permission` VALUES ('31', '站点资料修改');
INSERT INTO `permission` VALUES ('32', '站点资料添加');
INSERT INTO `permission` VALUES ('33', '二级站点资料查看');
INSERT INTO `permission` VALUES ('34', '二级站点资料删除');
INSERT INTO `permission` VALUES ('35', '二级站点资料修改');
INSERT INTO `permission` VALUES ('36', '二级站点资料添加');
INSERT INTO `permission` VALUES ('37', '哲盟账号申请登记查看');
INSERT INTO `permission` VALUES ('38', '哲盟账号申请登记删除');
INSERT INTO `permission` VALUES ('39', '哲盟账号申请登记修改');
INSERT INTO `permission` VALUES ('40', '哲盟账号申请登记添加');
INSERT INTO `permission` VALUES ('41', '哲盟数据检查登记查看');
INSERT INTO `permission` VALUES ('42', '哲盟数据检查登记删除');
INSERT INTO `permission` VALUES ('43', '哲盟数据检查登记修改');
INSERT INTO `permission` VALUES ('44', '哲盟数据检查登记添加');
INSERT INTO `permission` VALUES ('45', '用户管理查看');
INSERT INTO `permission` VALUES ('46', '用户管理删除');
INSERT INTO `permission` VALUES ('47', '用户管理修改');
INSERT INTO `permission` VALUES ('48', '用户管理添加');
INSERT INTO `permission` VALUES ('49', '角色管理查看');
INSERT INTO `permission` VALUES ('50', '角色管理删除');
INSERT INTO `permission` VALUES ('51', '角色管理修改');
INSERT INTO `permission` VALUES ('52', '角色管理添加');
INSERT INTO `permission` VALUES ('53', '时间轴查看');
INSERT INTO `permission` VALUES ('54', '消息提醒查看');
INSERT INTO `permission` VALUES ('55', '区部信息查看');
INSERT INTO `permission` VALUES ('56', '区部信息删除');
INSERT INTO `permission` VALUES ('57', '区部信息修改');
INSERT INTO `permission` VALUES ('58', '区部信息添加');
INSERT INTO `permission` VALUES ('59', '分部信息查看');
INSERT INTO `permission` VALUES ('60', '分部信息删除');
INSERT INTO `permission` VALUES ('61', '分部信息修改');
INSERT INTO `permission` VALUES ('62', '分部信息添加');
INSERT INTO `permission` VALUES ('63', '分拨点信息查看');
INSERT INTO `permission` VALUES ('64', '分拨点信息删除');
INSERT INTO `permission` VALUES ('65', '分拨点信息修改');
INSERT INTO `permission` VALUES ('66', '分拨点信息添加');
INSERT INTO `permission` VALUES ('67', '公司组织架构查看');
INSERT INTO `permission` VALUES ('68', '公司组织架构删除');
INSERT INTO `permission` VALUES ('69', '公司组织架构修改');
INSERT INTO `permission` VALUES ('70', '公司组织架构添加');

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
INSERT INTO `role_permission` VALUES ('rp181614165157007', 'r111613371752208', '1');
INSERT INTO `role_permission` VALUES ('rp181614165566654', 'r111613371752208', '2');
INSERT INTO `role_permission` VALUES ('rp181614165799282', 'r111613371752208', '3');
INSERT INTO `role_permission` VALUES ('rp181614166302858', 'r111613371752208', '4');
INSERT INTO `role_permission` VALUES ('rp181614166485545', 'r111613371752208', '5');
INSERT INTO `role_permission` VALUES ('rp181614166916140', 'r111613371752208', '6');
INSERT INTO `role_permission` VALUES ('rp181614167305218', 'r111613371752208', '7');
INSERT INTO `role_permission` VALUES ('rp181614167491850', 'r111613371752208', '8');
INSERT INTO `role_permission` VALUES ('rp181614167818986', 'r111613371752208', '9');
INSERT INTO `role_permission` VALUES ('rp181614168247462', 'r111613371752208', '10');
INSERT INTO `role_permission` VALUES ('rp181614168466838', 'r111613371752208', '11');
INSERT INTO `role_permission` VALUES ('rp181614168664579', 'r111613371752208', '12');
INSERT INTO `role_permission` VALUES ('rp181614168965058', 'r111613371752208', '13');
INSERT INTO `role_permission` VALUES ('rp181614169406159', 'r111613371752208', '14');
INSERT INTO `role_permission` VALUES ('rp181614169713739', 'r111613371752208', '15');
INSERT INTO `role_permission` VALUES ('rp181614169897771', 'r111613371752208', '16');
INSERT INTO `role_permission` VALUES ('rp181614170137857', 'r111613371752208', '17');
INSERT INTO `role_permission` VALUES ('rp181614170312990', 'r111613371752208', '18');
INSERT INTO `role_permission` VALUES ('rp181614170549835', 'r111613371752208', '19');
INSERT INTO `role_permission` VALUES ('rp181614171489268', 'r111613371752208', '20');
INSERT INTO `role_permission` VALUES ('rp181614171665013', 'r111613371752208', '21');
INSERT INTO `role_permission` VALUES ('rp181614171876280', 'r111613371752208', '22');
INSERT INTO `role_permission` VALUES ('rp181614172077810', 'r111613371752208', '23');
INSERT INTO `role_permission` VALUES ('rp181614172482135', 'r111613371752208', '24');
INSERT INTO `role_permission` VALUES ('rp181614173068543', 'r111613371752208', '25');
INSERT INTO `role_permission` VALUES ('rp181614173584453', 'r111613371752208', '26');
INSERT INTO `role_permission` VALUES ('rp181614173802479', 'r111613371752208', '27');
INSERT INTO `role_permission` VALUES ('rp181614174003996', 'r111613371752208', '28');
INSERT INTO `role_permission` VALUES ('rp181614174473372', 'r111613371752208', '29');
INSERT INTO `role_permission` VALUES ('rp181614174743863', 'r111613371752208', '30');
INSERT INTO `role_permission` VALUES ('rp181614174978480', 'r111613371752208', '31');
INSERT INTO `role_permission` VALUES ('rp181614175329518', 'r111613371752208', '32');
INSERT INTO `role_permission` VALUES ('rp181614175548187', 'r111613371752208', '33');
INSERT INTO `role_permission` VALUES ('rp181614175976777', 'r111613371752208', '34');
INSERT INTO `role_permission` VALUES ('rp181614177218172', 'r111613371752208', '35');
INSERT INTO `role_permission` VALUES ('rp181614177494143', 'r111613371752208', '36');
INSERT INTO `role_permission` VALUES ('rp181614177716789', 'r111613371752208', '37');
INSERT INTO `role_permission` VALUES ('rp181614177905239', 'r111613371752208', '38');
INSERT INTO `role_permission` VALUES ('rp181614178139335', 'r111613371752208', '39');
INSERT INTO `role_permission` VALUES ('rp181614178326888', 'r111613371752208', '40');
INSERT INTO `role_permission` VALUES ('rp181614178551310', 'r111613371752208', '41');
INSERT INTO `role_permission` VALUES ('rp181614179074353', 'r111613371752208', '42');
INSERT INTO `role_permission` VALUES ('rp181614179403322', 'r111613371752208', '43');
INSERT INTO `role_permission` VALUES ('rp181614179815252', 'r111613371752208', '44');
INSERT INTO `role_permission` VALUES ('rp181614180049736', 'r111613371752208', '45');
INSERT INTO `role_permission` VALUES ('rp181614180236429', 'r111613371752208', '46');
INSERT INTO `role_permission` VALUES ('rp181614180466553', 'r111613371752208', '47');
INSERT INTO `role_permission` VALUES ('rp181614181152082', 'r111613371752208', '48');
INSERT INTO `role_permission` VALUES ('rp181614181568979', 'r111613371752208', '49');
INSERT INTO `role_permission` VALUES ('rp181614181791352', 'r111613371752208', '50');
INSERT INTO `role_permission` VALUES ('rp181614181983878', 'r111613371752208', '51');
INSERT INTO `role_permission` VALUES ('rp181614182216514', 'r111613371752208', '52');
INSERT INTO `role_permission` VALUES ('rp181614182398318', 'r111613371752208', '53');
INSERT INTO `role_permission` VALUES ('rp181614182623458', 'r111613371752208', '54');
INSERT INTO `role_permission` VALUES ('rp181614183054165', 'r111613371752208', '55');
INSERT INTO `role_permission` VALUES ('rp181614183249976', 'r111613371752208', '56');
INSERT INTO `role_permission` VALUES ('rp181614183545435', 'r111613371752208', '57');
INSERT INTO `role_permission` VALUES ('rp181614183986222', 'r111613371752208', '58');
INSERT INTO `role_permission` VALUES ('rp181614184309607', 'r111613371752208', '59');
INSERT INTO `role_permission` VALUES ('rp181614184481581', 'r111613371752208', '60');
INSERT INTO `role_permission` VALUES ('rp181614184904402', 'r111613371752208', '61');
INSERT INTO `role_permission` VALUES ('rp181614185135011', 'r111613371752208', '62');
INSERT INTO `role_permission` VALUES ('rp181614185312688', 'r111613371752208', '63');
INSERT INTO `role_permission` VALUES ('rp181614185793167', 'r111613371752208', '64');
INSERT INTO `role_permission` VALUES ('rp181614186314928', 'r111613371752208', '65');
INSERT INTO `role_permission` VALUES ('rp181614186542261', 'r111613371752208', '66');
INSERT INTO `role_permission` VALUES ('rp181614186736425', 'r111613371752208', '67');
INSERT INTO `role_permission` VALUES ('rp181614186965635', 'r111613371752208', '68');
INSERT INTO `role_permission` VALUES ('rp181614187152894', 'r111613371752208', '69');
INSERT INTO `role_permission` VALUES ('rp181614187384448', 'r111613371752208', '70');

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
INSERT INTO `section_qubu` VALUES ('qb161142521527900', '', '', '', '', '');
INSERT INTO `section_qubu` VALUES ('qb281342355373349', '南山区', '张三', '18307211633', '15907211335', '6666');

-- ----------------------------
-- Table structure for `sim`
-- ----------------------------
DROP TABLE IF EXISTS `sim`;
CREATE TABLE `sim` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `cs_name` varchar(255) DEFAULT NULL,
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
INSERT INTO `sim` VALUES ('sim181458454594897', '测试', '2', '1', '12.20', '2016-08-18', '123123');

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
INSERT INTO `timeline` VALUES ('tl161633180371767', 'yd-7111', '2016-08-16 16:33:18', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl161633231026866', 'yd-7111', '2016-08-16 16:33:23', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl161634114744154', 'yd-7111', '2016-08-16 16:34:11', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161634515445946', 'yd-7111', '2016-08-16 16:34:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161636107197026', 'yd-7111', '2016-08-16 16:36:10', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161648275665593', 'yd-7111', '2016-08-16 16:48:27', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161651116659483', 'yd-7111', '2016-08-16 16:51:11', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161653336863137', 'yd-7111', '2016-08-16 16:53:33', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161653471432434', 'yd-7111', '2016-08-16 16:53:47', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161656188493509', 'yd-7111', '2016-08-16 16:56:18', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl161657411119267', 'yd-7111', '2016-08-16 16:57:41', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl170947547075985', 'yd-7111', '2016-08-17 09:47:54', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl170947552142561', 'yd-7111', '2016-08-17 09:47:55', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl170947567226316', 'yd-7111', '2016-08-17 09:47:56', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl170947575688923', 'yd-7111', '2016-08-17 09:47:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl170947587252785', 'yd-7111', '2016-08-17 09:47:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl170948015194083', 'yd-7111', '2016-08-17 09:48:01', '删除', 'FbdListLink', 'll150944498043717');
INSERT INTO `timeline` VALUES ('tl170948029837901', 'yd-7111', '2016-08-17 09:48:02', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl170948047914907', 'yd-7111', '2016-08-17 09:48:04', '删除', 'FbdListLink', 'll150944529121605');
INSERT INTO `timeline` VALUES ('tl170948054622038', 'yd-7111', '2016-08-17 09:48:05', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl170948061526458', 'yd-7111', '2016-08-17 09:48:06', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl170948072902985', 'yd-7111', '2016-08-17 09:48:07', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl170948083105912', 'yd-7111', '2016-08-17 09:48:08', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171025081011841', 'yd-7111', '2016-08-17 10:25:08', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171031252925269', 'yd-7111', '2016-08-17 10:31:25', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171038019219522', 'yd-7111', '2016-08-17 10:38:01', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171054182442915', 'yd-7111', '2016-08-17 10:54:18', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl171054188285377', 'yd-7111', '2016-08-17 10:54:18', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl171054193825064', 'yd-7111', '2016-08-17 10:54:19', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl171054198279573', 'yd-7111', '2016-08-17 10:54:19', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl171147471824882', 'yd-7111', '2016-08-17 11:47:47', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171320132944882', 'yd-7111', '2016-08-17 13:20:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl171320363542330', 'yd-7111', '2016-08-17 13:20:36', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171320564706493', 'yd-7111', '2016-08-17 13:20:56', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171321185965912', 'yd-6897', '2016-08-17 13:21:18', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171321193276415', 'yd-6897', '2016-08-17 13:21:19', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171321320742180', 'yd-6897', '2016-08-17 13:21:32', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171321335743218', 'yd-6897', '2016-08-17 13:21:33', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl171321342244527', 'yd-6897', '2016-08-17 13:21:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171321349333279', 'yd-6897', '2016-08-17 13:21:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171321354383837', 'yd-6897', '2016-08-17 13:21:35', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl171321359748073', 'yd-6897', '2016-08-17 13:21:35', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171321364747031', 'yd-6897', '2016-08-17 13:21:36', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171322209034285', 'yd-6897', '2016-08-17 13:22:20', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171322288333630', 'yd-6897', '2016-08-17 13:22:28', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171322316128367', 'yd-6897', '2016-08-17 13:22:31', '添加', 'FbdMonitoring', 'm171322315155218');
INSERT INTO `timeline` VALUES ('tl171322329728640', 'yd-6897', '2016-08-17 13:22:32', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171322358772185', 'yd-6897', '2016-08-17 13:22:35', '删除', 'FbdMonitoring', 'm171322315155218');
INSERT INTO `timeline` VALUES ('tl171324379813555', 'yd-6897', '2016-08-17 13:24:37', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171324407699991', 'yd-6897', '2016-08-17 13:24:40', '添加', 'GoOut', 'go171324407439849');
INSERT INTO `timeline` VALUES ('tl171324417758277', 'yd-6897', '2016-08-17 13:24:41', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171324532623534', 'yd-6897', '2016-08-17 13:24:53', '修改', 'GoOut', 'go171324407439849');
INSERT INTO `timeline` VALUES ('tl171324546117347', 'yd-6897', '2016-08-17 13:24:54', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171325467929153', 'yd-6897', '2016-08-17 13:25:46', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171344110483046', 'yd-6897', '2016-08-17 13:44:11', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171344396553344', 'yd-6897', '2016-08-17 13:44:39', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171344408788081', 'yd-6897', '2016-08-17 13:44:40', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171344417765075', 'yd-6897', '2016-08-17 13:44:41', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl171344431155591', 'yd-6897', '2016-08-17 13:44:43', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171344438469438', 'yd-6897', '2016-08-17 13:44:43', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171344451477883', 'yd-6897', '2016-08-17 13:44:45', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171344457063015', 'yd-6897', '2016-08-17 13:44:45', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl171344487518781', 'yd-6897', '2016-08-17 13:44:48', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171344493982195', 'yd-6897', '2016-08-17 13:44:49', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl171344500517644', 'yd-6897', '2016-08-17 13:44:50', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl171345173216939', 'yd-6897', '2016-08-17 13:45:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171346073644276', 'yd-6897', '2016-08-17 13:46:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171412125004015', 'yd-6897', '2016-08-17 14:12:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171412298343296', 'yd-6897', '2016-08-17 14:12:29', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171445516897392', 'yd-6897', '2016-08-17 14:45:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171446231272251', 'yd-6897', '2016-08-17 14:46:23', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171447093933295', 'yd-6897', '2016-08-17 14:47:09', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171448081736305', 'yd-6897', '2016-08-17 14:48:08', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171448126761416', 'yd-6897', '2016-08-17 14:48:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171448128388236', 'yd-6897', '2016-08-17 14:48:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171454248811769', 'yd-7111', '2016-08-17 14:54:24', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171455072358888', 'yd-7111', '2016-08-17 14:55:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171455413529844', 'yd-7111', '2016-08-17 14:55:41', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171455423921053', 'yd-7111', '2016-08-17 14:55:42', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457447263424', 'yd-7111', '2016-08-17 14:57:44', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457455411388', 'yd-7111', '2016-08-17 14:57:45', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457470548779', 'yd-7111', '2016-08-17 14:57:47', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457486203222', 'yd-7111', '2016-08-17 14:57:48', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457500842047', 'yd-7111', '2016-08-17 14:57:50', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457506224961', 'yd-7111', '2016-08-17 14:57:50', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171457511476945', 'yd-7111', '2016-08-17 14:57:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171458503809682', 'yd-7111', '2016-08-17 14:58:50', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459033774202', 'yd-7111', '2016-08-17 14:59:03', '添加', 'FbdAsdl', 'asdl171459032501876');
INSERT INTO `timeline` VALUES ('tl171459049212745', 'yd-7111', '2016-08-17 14:59:04', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459078635358', 'yd-7111', '2016-08-17 14:59:07', '添加', 'FbdAsdl', 'asdl171459078126039');
INSERT INTO `timeline` VALUES ('tl171459086677519', 'yd-7111', '2016-08-17 14:59:08', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459110947522', 'yd-7111', '2016-08-17 14:59:11', '添加', 'FbdAsdl', 'asdl171459110511307');
INSERT INTO `timeline` VALUES ('tl171459122506567', 'yd-7111', '2016-08-17 14:59:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459150583916', 'yd-7111', '2016-08-17 14:59:15', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459157232217', 'yd-7111', '2016-08-17 14:59:15', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459197312357', 'yd-7111', '2016-08-17 14:59:19', '添加', 'FbdAsdl', 'asdl171459196641878');
INSERT INTO `timeline` VALUES ('tl171459209185028', 'yd-7111', '2016-08-17 14:59:20', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459232114423', 'yd-7111', '2016-08-17 14:59:23', '添加', 'FbdAsdl', 'asdl171459231746247');
INSERT INTO `timeline` VALUES ('tl171459241486378', 'yd-7111', '2016-08-17 14:59:24', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459461344958', 'yd-7111', '2016-08-17 14:59:46', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171459493954673', 'yd-7111', '2016-08-17 14:59:49', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171459534637954', 'yd-7111', '2016-08-17 14:59:53', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171500002813544', 'yd-7111', '2016-08-17 15:00:00', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171501349477707', 'yd-7111', '2016-08-17 15:01:34', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171501383363420', 'yd-7111', '2016-08-17 15:01:38', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171501405236419', 'yd-7111', '2016-08-17 15:01:40', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171520018969683', 'yd-7111', '2016-08-17 15:20:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171554389082276', 'yd-7111', '2016-08-17 15:54:38', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171555299857235', 'yd-7111', '2016-08-17 15:55:29', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171745578543873', 'yd-7111', '2016-08-17 17:45:57', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171745592053104', 'yd-7111', '2016-08-17 17:45:59', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171746003556862', 'yd-7111', '2016-08-17 17:46:00', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl171746014955327', 'yd-7111', '2016-08-17 17:46:01', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171746027126507', 'yd-7111', '2016-08-17 17:46:02', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171746075931546', 'yd-7111', '2016-08-17 17:46:07', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171746104122878', 'yd-7111', '2016-08-17 17:46:10', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747510618428', 'yd-7111', '2016-08-17 17:47:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747518583250', 'yd-7111', '2016-08-17 17:47:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747530917516', 'yd-7111', '2016-08-17 17:47:53', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747555125975', 'yd-7111', '2016-08-17 17:47:55', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747585727021', 'yd-7111', '2016-08-17 17:47:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171747599954717', 'yd-7111', '2016-08-17 17:47:59', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171748011087328', 'yd-7111', '2016-08-17 17:48:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171748039569589', 'yd-7111', '2016-08-17 17:48:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171748071128569', 'yd-7111', '2016-08-17 17:48:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171748089307117', 'yd-7111', '2016-08-17 17:48:08', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171748101401268', 'yd-7111', '2016-08-17 17:48:10', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171748116974038', 'yd-7111', '2016-08-17 17:48:11', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171750078865931', 'yd-7111', '2016-08-17 17:50:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171750085196024', 'yd-7111', '2016-08-17 17:50:08', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl171750094561159', 'yd-7111', '2016-08-17 17:50:09', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171750101581648', 'yd-7111', '2016-08-17 17:50:10', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl171750105958807', 'yd-7111', '2016-08-17 17:50:10', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl171750126904811', 'yd-7111', '2016-08-17 17:50:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171750251503281', 'yd-7111', '2016-08-17 17:50:25', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171751022442887', 'yd-7111', '2016-08-17 17:51:02', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl171751034429949', 'yd-7111', '2016-08-17 17:51:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl180957439627797', 'yd-7111', '2016-08-18 09:57:43', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181011279985980', 'yd-7111', '2016-08-18 10:11:27', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181011285837670', 'yd-7111', '2016-08-18 10:11:28', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181011294071039', 'yd-7111', '2016-08-18 10:11:29', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181023019913875', 'yd-7111', '2016-08-18 10:23:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181023035287651', 'yd-7111', '2016-08-18 10:23:03', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181023042796859', 'yd-7111', '2016-08-18 10:23:04', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181023054433130', 'yd-7111', '2016-08-18 10:23:05', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181023202973462', 'yd-7111', '2016-08-18 10:23:20', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181025188889319', 'yd-7111', '2016-08-18 10:25:18', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181025200157276', 'yd-7111', '2016-08-18 10:25:20', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181025242955483', 'yd-7111', '2016-08-18 10:25:24', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181025257565452', 'yd-7111', '2016-08-18 10:25:25', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181026264178857', 'yd-7111', '2016-08-18 10:26:26', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181026348886802', 'yd-7111', '2016-08-18 10:26:34', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181026361608157', 'yd-7111', '2016-08-18 10:26:36', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181027580474924', 'yd-7111', '2016-08-18 10:27:58', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181027593821660', 'yd-7111', '2016-08-18 10:27:59', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181028002949756', 'yd-7111', '2016-08-18 10:28:00', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181028038677535', 'yd-7111', '2016-08-18 10:28:03', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181028047295532', 'yd-7111', '2016-08-18 10:28:04', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181028117078486', 'yd-7111', '2016-08-18 10:28:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181028130927567', 'yd-7111', '2016-08-18 10:28:13', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181028135631329', 'yd-7111', '2016-08-18 10:28:13', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181028385277460', 'yd-7111', '2016-08-18 10:28:38', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181028475191490', 'yd-7111', '2016-08-18 10:28:47', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181028569914542', 'yd-7111', '2016-08-18 10:28:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181029222538809', 'yd-7111', '2016-08-18 10:29:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181029341472237', 'yd-7111', '2016-08-18 10:29:34', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181029589101371', 'yd-7111', '2016-08-18 10:29:58', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181030043822126', 'yd-7111', '2016-08-18 10:30:04', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181030291406914', 'yd-7111', '2016-08-18 10:30:29', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181030484066233', 'yd-7111', '2016-08-18 10:30:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181031501859659', 'yd-7111', '2016-08-18 10:31:50', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181031510035324', 'yd-7111', '2016-08-18 10:31:51', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181031516583418', 'yd-7111', '2016-08-18 10:31:51', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181031523027912', 'yd-7111', '2016-08-18 10:31:52', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181032013408311', 'yd-7111', '2016-08-18 10:32:01', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181032091944487', 'yd-7111', '2016-08-18 10:32:09', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181032106768313', 'yd-7111', '2016-08-18 10:32:10', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181032115222003', 'yd-7111', '2016-08-18 10:32:11', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181032123175956', 'yd-7111', '2016-08-18 10:32:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181032144539515', 'yd-7111', '2016-08-18 10:32:14', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181032151618157', 'yd-7111', '2016-08-18 10:32:15', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181032161941592', 'yd-7111', '2016-08-18 10:32:16', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181032186548302', 'yd-7111', '2016-08-18 10:32:18', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033048954618', 'yd-7111', '2016-08-18 10:33:04', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033075387217', 'yd-7111', '2016-08-18 10:33:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033126561749', 'yd-7111', '2016-08-18 10:33:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033172491459', 'yd-7111', '2016-08-18 10:33:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033194925180', 'yd-7111', '2016-08-18 10:33:19', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181033256377829', 'yd-7111', '2016-08-18 10:33:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181033467569728', 'yd-7111', '2016-08-18 10:33:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181033592833212', 'yd-7111', '2016-08-18 10:33:59', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181038294409947', 'yd-7111', '2016-08-18 10:38:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181038574609595', 'yd-7111', '2016-08-18 10:38:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181039068396957', 'yd-7111', '2016-08-18 10:39:06', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181039091943518', 'yd-7111', '2016-08-18 10:39:09', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181039408009701', 'yd-7111', '2016-08-18 10:39:40', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181040185001662', 'yd-7111', '2016-08-18 10:40:18', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181040286663013', 'yd-7111', '2016-08-18 10:40:28', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181040546949874', 'yd-7111', '2016-08-18 10:40:54', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181041321685834', 'yd-7111', '2016-08-18 10:41:32', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181041330088591', 'yd-7111', '2016-08-18 10:41:33', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181113410032514', 'yd-7111', '2016-08-18 11:13:41', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181116377134525', 'yd-7111', '2016-08-18 11:16:37', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181133013658997', 'yd-7111', '2016-08-18 11:33:01', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181136447982680', 'yd-7111', '2016-08-18 11:36:44', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181138442238576', 'yd-7111', '2016-08-18 11:38:44', '查看', 'Timeline', null);
INSERT INTO `timeline` VALUES ('tl181139065492965', 'yd-7111', '2016-08-18 11:39:06', '查看', 'Timeline', null);
INSERT INTO `timeline` VALUES ('tl181139071338216', 'yd-7111', '2016-08-18 11:39:07', '查看', 'Timeline', null);
INSERT INTO `timeline` VALUES ('tl181139153822108', 'yd-7111', '2016-08-18 11:39:15', '查看', 'Timeline', null);
INSERT INTO `timeline` VALUES ('tl181139190727770', 'yd-7111', '2016-08-18 11:39:19', '查看', 'Timeline', null);
INSERT INTO `timeline` VALUES ('tl181140356855635', 'yd-7111', '2016-08-18 11:40:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181140393504421', 'yd-7111', '2016-08-18 11:40:39', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181140419666401', 'yd-7111', '2016-08-18 11:40:41', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181140431986499', 'yd-7111', '2016-08-18 11:40:43', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181140536633273', 'yd-7111', '2016-08-18 11:40:53', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181140565968821', 'yd-7111', '2016-08-18 11:40:56', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181141196578261', 'yd-7111', '2016-08-18 11:41:19', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181141249864171', 'yd-7111', '2016-08-18 11:41:24', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181141286816238', 'yd-7111', '2016-08-18 11:41:28', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181141311215341', 'yd-7111', '2016-08-18 11:41:31', '添加', 'Users', '');
INSERT INTO `timeline` VALUES ('tl181141339837635', 'yd-7111', '2016-08-18 11:41:33', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181142426972677', 'yd-7111', '2016-08-18 11:42:42', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181142568847001', 'yd-7111', '2016-08-18 11:42:56', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181143262853959', 'yd-7111', '2016-08-18 11:43:26', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181143323406911', 'yd-7111', '2016-08-18 11:43:32', '添加', 'Users', 'u181143322809082');
INSERT INTO `timeline` VALUES ('tl181143337268363', 'yd-7111', '2016-08-18 11:43:33', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181144107484423', 'yd-7111', '2016-08-18 11:44:10', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181147378937299', 'yd-7111', '2016-08-18 11:47:37', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181147395195443', 'yd-7111', '2016-08-18 11:47:39', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181147519424659', 'yd-7111', '2016-08-18 11:47:51', '添加', 'Users', '111');
INSERT INTO `timeline` VALUES ('tl181147531073139', 'yd-7111', '2016-08-18 11:47:53', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181147564351255', 'yd-7111', '2016-08-18 11:47:56', '删除', 'Users', '111');
INSERT INTO `timeline` VALUES ('tl181147572495714', 'yd-7111', '2016-08-18 11:47:57', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181147594191689', 'yd-7111', '2016-08-18 11:47:59', '删除', 'Users', 'u181143322809082');
INSERT INTO `timeline` VALUES ('tl181148004405892', 'yd-7111', '2016-08-18 11:48:00', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181148026009407', 'yd-7111', '2016-08-18 11:48:02', '删除', 'Users', '');
INSERT INTO `timeline` VALUES ('tl181148034883440', 'yd-7111', '2016-08-18 11:48:03', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181148064862143', 'yd-7111', '2016-08-18 11:48:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181150501267925', 'yd-7111', '2016-08-18 11:50:50', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181151034938760', 'yd-7111', '2016-08-18 11:51:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181331032995616', 'yd-7111', '2016-08-18 13:31:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181331066648095', 'yd-7111', '2016-08-18 13:31:06', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181331086437815', 'yd-7111', '2016-08-18 13:31:08', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181331160004121', 'yd-7111', '2016-08-18 13:31:16', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181342114159875', 'yd-7111', '2016-08-18 13:42:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181342210865763', 'yd-7111', '2016-08-18 13:42:21', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181342255998567', 'yd-7111', '2016-08-18 13:42:25', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181342291346751', 'yd-7111', '2016-08-18 13:42:29', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181342342526748', 'yd-7111', '2016-08-18 13:42:34', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181342388585074', 'yd-7111', '2016-08-18 13:42:38', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181342395086260', 'yd-7111', '2016-08-18 13:42:39', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181342530473754', 'yd-7111', '2016-08-18 13:42:53', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181344576683780', 'yd-7111', '2016-08-18 13:44:57', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181413152905835', 'yd-7111', '2016-08-18 14:13:15', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181430416488728', 'yd-7111', '2016-08-18 14:30:41', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181431205715175', 'yd-7111', '2016-08-18 14:31:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181431331137615', 'yd-7111', '2016-08-18 14:31:33', '添加', 'FbdListLink', 'll181431329958259');
INSERT INTO `timeline` VALUES ('tl181436452525087', 'yd-7111', '2016-08-18 14:36:45', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181436540252873', 'yd-7111', '2016-08-18 14:36:54', '修改', 'FbdListLink', 'll181431329958259');
INSERT INTO `timeline` VALUES ('tl181436550599075', 'yd-7111', '2016-08-18 14:36:55', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181437073429407', 'yd-7111', '2016-08-18 14:37:07', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181437121491619', 'yd-7111', '2016-08-18 14:37:12', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181437148925758', 'yd-7111', '2016-08-18 14:37:14', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181437168087993', 'yd-7111', '2016-08-18 14:37:16', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181437575514615', 'yd-7111', '2016-08-18 14:37:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438037898072', 'yd-7111', '2016-08-18 14:38:03', '修改', 'FbdListLink', 'll181431329958259');
INSERT INTO `timeline` VALUES ('tl181438049719839', 'yd-7111', '2016-08-18 14:38:04', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438118811804', 'yd-7111', '2016-08-18 14:38:11', '修改', 'FbdListLink', 'll181431329958259');
INSERT INTO `timeline` VALUES ('tl181438129313005', 'yd-7111', '2016-08-18 14:38:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438242231938', 'yd-7111', '2016-08-18 14:38:24', '修改', 'FbdListLink', 'll181431329958259');
INSERT INTO `timeline` VALUES ('tl181438254939217', 'yd-7111', '2016-08-18 14:38:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438311764587', 'yd-7111', '2016-08-18 14:38:31', '添加', 'FbdListLink', 'll181438311095237');
INSERT INTO `timeline` VALUES ('tl181438323325735', 'yd-7111', '2016-08-18 14:38:32', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438347587884', 'yd-7111', '2016-08-18 14:38:34', '添加', 'FbdListLink', 'll181438347102375');
INSERT INTO `timeline` VALUES ('tl181438356704367', 'yd-7111', '2016-08-18 14:38:35', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438380169068', 'yd-7111', '2016-08-18 14:38:38', '添加', 'FbdListLink', 'll181438379861226');
INSERT INTO `timeline` VALUES ('tl181438403879924', 'yd-7111', '2016-08-18 14:38:40', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438424995141', 'yd-7111', '2016-08-18 14:38:42', '添加', 'FbdListLink', 'll181438424583792');
INSERT INTO `timeline` VALUES ('tl181438447364167', 'yd-7111', '2016-08-18 14:38:44', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438468675204', 'yd-7111', '2016-08-18 14:38:46', '添加', 'FbdListLink', 'll181438468077347');
INSERT INTO `timeline` VALUES ('tl181438521931693', 'yd-7111', '2016-08-18 14:38:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438551245175', 'yd-7111', '2016-08-18 14:38:55', '添加', 'FbdListLink', 'll181438550916058');
INSERT INTO `timeline` VALUES ('tl181438561995657', 'yd-7111', '2016-08-18 14:38:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181438581322254', 'yd-7111', '2016-08-18 14:38:58', '添加', 'FbdListLink', 'll181438581046401');
INSERT INTO `timeline` VALUES ('tl181438589831111', 'yd-7111', '2016-08-18 14:38:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439004391723', 'yd-7111', '2016-08-18 14:39:00', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439070415679', 'yd-7111', '2016-08-18 14:39:07', '添加', 'FbdListLink', 'll181439069921521');
INSERT INTO `timeline` VALUES ('tl181439078014922', 'yd-7111', '2016-08-18 14:39:07', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439101164704', 'yd-7111', '2016-08-18 14:39:10', '添加', 'FbdListLink', 'll181439100683524');
INSERT INTO `timeline` VALUES ('tl181439110057663', 'yd-7111', '2016-08-18 14:39:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439126927064', 'yd-7111', '2016-08-18 14:39:12', '添加', 'FbdListLink', 'll181439126529829');
INSERT INTO `timeline` VALUES ('tl181439137353297', 'yd-7111', '2016-08-18 14:39:13', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439161985161', 'yd-7111', '2016-08-18 14:39:16', '添加', 'FbdListLink', 'll181439161697091');
INSERT INTO `timeline` VALUES ('tl181439173125076', 'yd-7111', '2016-08-18 14:39:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439196942292', 'yd-7111', '2016-08-18 14:39:19', '添加', 'FbdListLink', 'll181439196164115');
INSERT INTO `timeline` VALUES ('tl181439205982511', 'yd-7111', '2016-08-18 14:39:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439225145047', 'yd-7111', '2016-08-18 14:39:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439442235398', 'yd-7111', '2016-08-18 14:39:44', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181439475323175', 'yd-7111', '2016-08-18 14:39:47', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181440170949705', 'yd-7111', '2016-08-18 14:40:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181440308341749', 'yd-7111', '2016-08-18 14:40:30', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181440366474063', 'yd-7111', '2016-08-18 14:40:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181440405938882', 'yd-7111', '2016-08-18 14:40:40', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181440415058943', 'yd-7111', '2016-08-18 14:40:41', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181440424201629', 'yd-7111', '2016-08-18 14:40:42', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181440512041395', 'yd-7111', '2016-08-18 14:40:51', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181441000624687', 'yd-7111', '2016-08-18 14:41:00', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181441175937578', 'yd-7111', '2016-08-18 14:41:17', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181441228374649', 'yd-7111', '2016-08-18 14:41:22', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181441334192731', 'yd-7111', '2016-08-18 14:41:33', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181441364211167', 'yd-7111', '2016-08-18 14:41:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181441565296147', 'yd-7111', '2016-08-18 14:41:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181442009108730', 'yd-7111', '2016-08-18 14:42:00', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181442057865786', 'yd-7111', '2016-08-18 14:42:05', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181442088644750', 'yd-7111', '2016-08-18 14:42:08', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181442107006413', 'yd-7111', '2016-08-18 14:42:10', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181442127259773', 'yd-7111', '2016-08-18 14:42:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181442200629778', 'yd-7111', '2016-08-18 14:42:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181442219453561', 'yd-7111', '2016-08-18 14:42:21', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181442279958383', 'yd-7111', '2016-08-18 14:42:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181442290184351', 'yd-7111', '2016-08-18 14:42:29', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181442299209625', 'yd-7111', '2016-08-18 14:42:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181442368539136', 'yd-7111', '2016-08-18 14:42:36', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181442375833502', 'yd-7111', '2016-08-18 14:42:37', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181442383779554', 'yd-7111', '2016-08-18 14:42:38', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181442403049085', 'yd-7111', '2016-08-18 14:42:40', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181442594002973', 'yd-7111', '2016-08-18 14:42:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181443078499459', 'yd-7111', '2016-08-18 14:43:07', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181443136745127', 'yd-7111', '2016-08-18 14:43:13', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181458313524370', 'yd-7111', '2016-08-18 14:58:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181458456677582', 'yd-7111', '2016-08-18 14:58:45', '添加', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181459220923119', 'yd-7111', '2016-08-18 14:59:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181459310221210', 'yd-7111', '2016-08-18 14:59:31', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181459322713158', 'yd-7111', '2016-08-18 14:59:32', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181459347365958', 'yd-7111', '2016-08-18 14:59:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181500360935630', 'yd-7111', '2016-08-18 15:00:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181500452579473', 'yd-7111', '2016-08-18 15:00:45', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181500468054308', 'yd-7111', '2016-08-18 15:00:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181501179238816', 'yd-7111', '2016-08-18 15:01:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181501463755149', 'yd-7111', '2016-08-18 15:01:46', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181501473743736', 'yd-7111', '2016-08-18 15:01:47', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181501531231577', 'yd-7111', '2016-08-18 15:01:53', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181501543112680', 'yd-7111', '2016-08-18 15:01:54', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502022648202', 'yd-7111', '2016-08-18 15:02:02', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181502030452019', 'yd-7111', '2016-08-18 15:02:03', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502079604176', 'yd-7111', '2016-08-18 15:02:07', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502111265792', 'yd-7111', '2016-08-18 15:02:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502169257632', 'yd-7111', '2016-08-18 15:02:16', '添加', 'FbdListLink', 'll181502168721415');
INSERT INTO `timeline` VALUES ('tl181502187913537', 'yd-7111', '2016-08-18 15:02:18', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502206001125', 'yd-7111', '2016-08-18 15:02:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502238677526', 'yd-7111', '2016-08-18 15:02:23', '添加', 'FbdListLink', 'll181502236049143');
INSERT INTO `timeline` VALUES ('tl181502256475429', 'yd-7111', '2016-08-18 15:02:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502272999263', 'yd-7111', '2016-08-18 15:02:27', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502498337952', 'yd-7111', '2016-08-18 15:02:49', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181502540707264', 'yd-7111', '2016-08-18 15:02:54', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503014842760', 'yd-7111', '2016-08-18 15:03:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181503033308787', 'yd-7111', '2016-08-18 15:03:03', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181503071196368', 'yd-7111', '2016-08-18 15:03:07', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl181503084409787', 'yd-7111', '2016-08-18 15:03:08', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503112387932', 'yd-7111', '2016-08-18 15:03:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503144364964', 'yd-7111', '2016-08-18 15:03:14', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503174268650', 'yd-7111', '2016-08-18 15:03:17', '添加', 'FbdListLink', 'll181503173942164');
INSERT INTO `timeline` VALUES ('tl181503190348474', 'yd-7111', '2016-08-18 15:03:19', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503212674733', 'yd-7111', '2016-08-18 15:03:21', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503228014549', 'yd-7111', '2016-08-18 15:03:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503244357550', 'yd-7111', '2016-08-18 15:03:24', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181503345048290', 'yd-7111', '2016-08-18 15:03:34', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181503358782221', 'yd-7111', '2016-08-18 15:03:35', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181503384311029', 'yd-7111', '2016-08-18 15:03:38', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181503422943535', 'yd-7111', '2016-08-18 15:03:42', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181503514148276', 'yd-7111', '2016-08-18 15:03:51', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181503594619251', 'yd-7111', '2016-08-18 15:03:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181504085548362', 'yd-7111', '2016-08-18 15:04:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181504138586473', 'yd-7111', '2016-08-18 15:04:13', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181504171957243', 'yd-7111', '2016-08-18 15:04:17', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181504189443641', 'yd-7111', '2016-08-18 15:04:18', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181504203814001', 'yd-7111', '2016-08-18 15:04:20', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181504362298001', 'yd-7111', '2016-08-18 15:04:36', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181504412783051', 'yd-7111', '2016-08-18 15:04:41', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181504457868364', 'yd-7111', '2016-08-18 15:04:45', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181504566721659', 'yd-7111', '2016-08-18 15:04:56', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181505019267431', 'yd-7111', '2016-08-18 15:05:01', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181505086973623', 'yd-7111', '2016-08-18 15:05:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181505127147022', 'yd-7111', '2016-08-18 15:05:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181505167923114', 'yd-7111', '2016-08-18 15:05:16', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181505266262791', 'yd-7111', '2016-08-18 15:05:26', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181505313742018', 'yd-7111', '2016-08-18 15:05:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181505349537473', 'yd-7111', '2016-08-18 15:05:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181505522968214', 'yd-7111', '2016-08-18 15:05:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181505598029478', 'yd-7111', '2016-08-18 15:05:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181506016658082', 'yd-7111', '2016-08-18 15:06:01', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181506171498843', 'yd-7111', '2016-08-18 15:06:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181506252524090', 'yd-7111', '2016-08-18 15:06:25', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181506318501803', 'yd-7111', '2016-08-18 15:06:31', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181506389403264', 'yd-7111', '2016-08-18 15:06:38', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181506484494617', 'yd-7111', '2016-08-18 15:06:48', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181506503977952', 'yd-7111', '2016-08-18 15:06:50', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181506525643036', 'yd-7111', '2016-08-18 15:06:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181507079104080', 'yd-7111', '2016-08-18 15:07:07', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181507177817986', 'yd-7111', '2016-08-18 15:07:17', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181507227034489', 'yd-7111', '2016-08-18 15:07:22', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181507248669433', 'yd-7111', '2016-08-18 15:07:24', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181507284605361', 'yd-7111', '2016-08-18 15:07:28', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181507295479113', 'yd-7111', '2016-08-18 15:07:29', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181507342486828', 'yd-7111', '2016-08-18 15:07:34', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181507390233132', 'yd-7111', '2016-08-18 15:07:39', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181507449651844', 'yd-7111', '2016-08-18 15:07:44', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181507457501550', 'yd-7111', '2016-08-18 15:07:45', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181507493483168', 'yd-7111', '2016-08-18 15:07:49', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181508047177717', 'yd-7111', '2016-08-18 15:08:04', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181508103707916', 'yd-7111', '2016-08-18 15:08:10', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181509343158581', 'yd-7111', '2016-08-18 15:09:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181513186942763', 'yd-7111', '2016-08-18 15:13:18', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181513299163739', 'yd-7111', '2016-08-18 15:13:29', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181513311729281', 'yd-7111', '2016-08-18 15:13:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181519144636337', 'yd-7111', '2016-08-18 15:19:14', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181519172595712', 'yd-7111', '2016-08-18 15:19:17', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181519172597516', 'yd-7111', '2016-08-18 15:19:17', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181519197131294', 'yd-7111', '2016-08-18 15:19:19', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181519204511758', 'yd-7111', '2016-08-18 15:19:20', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181519450987616', 'yd-7111', '2016-08-18 15:19:45', '添加', 'Goods', 'g181519450573247');
INSERT INTO `timeline` VALUES ('tl181519461734367', 'yd-7111', '2016-08-18 15:19:46', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181520000805037', 'yd-7111', '2016-08-18 15:20:00', '修改', 'Goods', 'g181519450573247');
INSERT INTO `timeline` VALUES ('tl181520011157799', 'yd-7111', '2016-08-18 15:20:01', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181520063923623', 'yd-7111', '2016-08-18 15:20:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181520176373204', 'yd-7111', '2016-08-18 15:20:17', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181520298254985', 'yd-7111', '2016-08-18 15:20:29', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181521040809121', 'yd-7111', '2016-08-18 15:21:04', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181521061331661', 'yd-7111', '2016-08-18 15:21:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181521071663429', 'yd-7111', '2016-08-18 15:21:07', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181521142826731', 'yd-7111', '2016-08-18 15:21:14', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181521176952401', 'yd-7111', '2016-08-18 15:21:17', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181521208272181', 'yd-7111', '2016-08-18 15:21:20', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521232892115', 'yd-7111', '2016-08-18 15:21:23', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521255215296', 'yd-7111', '2016-08-18 15:21:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521269334548', 'yd-7111', '2016-08-18 15:21:26', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521386662908', 'yd-7111', '2016-08-18 15:21:38', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181521405309476', 'yd-7111', '2016-08-18 15:21:40', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521410061735', 'yd-7111', '2016-08-18 15:21:41', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181521424014585', 'yd-7111', '2016-08-18 15:21:42', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181521453296205', 'yd-7111', '2016-08-18 15:21:45', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181527239061717', 'yd-7111', '2016-08-18 15:27:23', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181527279996498', 'yd-7111', '2016-08-18 15:27:27', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181527279999328', 'yd-7111', '2016-08-18 15:27:27', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181527558873666', 'yd-7111', '2016-08-18 15:27:55', '添加', 'GoOut', 'go181527558498415');
INSERT INTO `timeline` VALUES ('tl181527570621239', 'yd-7111', '2016-08-18 15:27:57', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181529156752625', 'yd-7111', '2016-08-18 15:29:15', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181529161276096', 'yd-7111', '2016-08-18 15:29:16', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181529234521400', 'yd-7111', '2016-08-18 15:29:23', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181529407026809', 'yd-7111', '2016-08-18 15:29:40', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181529490888776', 'yd-7111', '2016-08-18 15:29:49', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181529563424235', 'yd-7111', '2016-08-18 15:29:56', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181529572332437', 'yd-7111', '2016-08-18 15:29:57', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181529589878849', 'yd-7111', '2016-08-18 15:29:58', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181530025075310', 'yd-7111', '2016-08-18 15:30:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181530180856325', 'yd-7111', '2016-08-18 15:30:18', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181530281299800', 'yd-7111', '2016-08-18 15:30:28', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181530336392833', 'yd-7111', '2016-08-18 15:30:33', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181534136189935', 'yd-7111', '2016-08-18 15:34:13', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl181534151147339', 'yd-7111', '2016-08-18 15:34:15', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181534177464487', 'yd-7111', '2016-08-18 15:34:17', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181534426981842', 'yd-7111', '2016-08-18 15:34:42', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181535025441737', 'yd-7111', '2016-08-18 15:35:02', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181535040908780', 'yd-7111', '2016-08-18 15:35:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181535311698997', 'yd-7111', '2016-08-18 15:35:31', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181536128524592', 'yd-7111', '2016-08-18 15:36:12', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181537020533861', 'yd-7111', '2016-08-18 15:37:02', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181537498644290', 'yd-7111', '2016-08-18 15:37:49', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181538225537975', 'yd-7111', '2016-08-18 15:38:22', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181538474951165', 'yd-7111', '2016-08-18 15:38:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181539083198281', 'yd-7111', '2016-08-18 15:39:08', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181539382043192', 'yd-7111', '2016-08-18 15:39:38', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181540019113044', 'yd-7111', '2016-08-18 15:40:01', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181540034694001', 'yd-7111', '2016-08-18 15:40:03', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181540081057633', 'yd-7111', '2016-08-18 15:40:08', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181540092369368', 'yd-7111', '2016-08-18 15:40:09', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181540114618131', 'yd-7111', '2016-08-18 15:40:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181540169787221', 'yd-7111', '2016-08-18 15:40:16', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181540177508362', 'yd-7111', '2016-08-18 15:40:17', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl181540184139073', 'yd-7111', '2016-08-18 15:40:18', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl181540190045159', 'yd-7111', '2016-08-18 15:40:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181600138971377', 'yd-7111', '2016-08-18 16:00:13', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181600156978474', 'yd-7111', '2016-08-18 16:00:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181610343648970', 'yd-7111', '2016-08-18 16:10:34', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181614105187844', 'yd-7111', '2016-08-18 16:14:10', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181614188619521', 'yd-7111', '2016-08-18 16:14:18', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl181614202216235', 'yd-7111', '2016-08-18 16:14:20', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181614241626704', 'yd-7111', '2016-08-18 16:14:24', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181614249915381', 'yd-7111', '2016-08-18 16:14:24', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181614274874288', 'yd-7111', '2016-08-18 16:14:27', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181614287889918', 'yd-7111', '2016-08-18 16:14:28', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181614292097253', 'yd-7111', '2016-08-18 16:14:29', '查看', 'CompanySection', '4');
INSERT INTO `timeline` VALUES ('tl181614310905419', 'yd-7111', '2016-08-18 16:14:31', '查看', 'CompanySection', '2');
INSERT INTO `timeline` VALUES ('tl181614374504791', 'yd-7111', '2016-08-18 16:14:37', '查看', 'CompanySection', '1');
INSERT INTO `timeline` VALUES ('tl181614401229900', 'yd-7111', '2016-08-18 16:14:40', '删除', 'CompanySection', '1');
INSERT INTO `timeline` VALUES ('tl181615392892395', 'yd-7111', '2016-08-18 16:15:39', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181615406367450', 'yd-7111', '2016-08-18 16:15:40', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181615444039456', 'yd-7111', '2016-08-18 16:15:44', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181616104139158', 'yd-7111', '2016-08-18 16:16:10', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181616491418588', 'yd-7111', '2016-08-18 16:16:49', '添加', 'SectionFenbodian', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181616501225531', 'yd-7111', '2016-08-18 16:16:50', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181616516704638', 'yd-7111', '2016-08-18 16:16:51', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181617290011842', 'yd-7111', '2016-08-18 16:17:29', '添加', 'SectionFenbodian', 'cs181617289669264');
INSERT INTO `timeline` VALUES ('tl181617297873139', 'yd-7111', '2016-08-18 16:17:29', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181617374698095', 'yd-7111', '2016-08-18 16:17:37', '添加', 'SectionFenbodian', 'cs181617374346587');
INSERT INTO `timeline` VALUES ('tl181617383054221', 'yd-7111', '2016-08-18 16:17:38', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181617399794376', 'yd-7111', '2016-08-18 16:17:39', '查看', 'CompanySection', 'cs181617374346587');
INSERT INTO `timeline` VALUES ('tl181617461183581', 'yd-7111', '2016-08-18 16:17:46', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181617472455040', 'yd-7111', '2016-08-18 16:17:47', '查看', 'CompanySection', 'cs181617289669264');
INSERT INTO `timeline` VALUES ('tl181617500952060', 'yd-7111', '2016-08-18 16:17:50', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181617509599831', 'yd-7111', '2016-08-18 16:17:50', '查看', 'CompanySection', 'cs181617374346587');
INSERT INTO `timeline` VALUES ('tl181617513252478', 'yd-7111', '2016-08-18 16:17:51', '查看', 'CompanySection', 'cs181617289669264');
INSERT INTO `timeline` VALUES ('tl181617531843142', 'yd-7111', '2016-08-18 16:17:53', '删除', 'CompanySection', 'cs181617289669264');
INSERT INTO `timeline` VALUES ('tl181617542978643', 'yd-7111', '2016-08-18 16:17:54', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181619045882163', 'yd-7111', '2016-08-18 16:19:04', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181619053967753', 'yd-7111', '2016-08-18 16:19:05', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181619447472302', 'yd-7111', '2016-08-18 16:19:44', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181619459882587', 'yd-7111', '2016-08-18 16:19:45', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181619473547858', 'yd-7111', '2016-08-18 16:19:47', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181619488061417', 'yd-7111', '2016-08-18 16:19:48', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181619495253021', 'yd-7111', '2016-08-18 16:19:49', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181620133544809', 'yd-7111', '2016-08-18 16:20:13', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181620139025122', 'yd-7111', '2016-08-18 16:20:13', '修改', 'SectionFenbodian', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181620150933976', 'yd-7111', '2016-08-18 16:20:15', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181620462534314', 'yd-7111', '2016-08-18 16:20:46', '添加', 'SectionFenbodian', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181620474053920', 'yd-7111', '2016-08-18 16:20:47', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181620483833728', 'yd-7111', '2016-08-18 16:20:48', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181620526202787', 'yd-7111', '2016-08-18 16:20:52', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181620565629508', 'yd-7111', '2016-08-18 16:20:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181621225963537', 'yd-7111', '2016-08-18 16:21:22', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181621236276991', 'yd-7111', '2016-08-18 16:21:23', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181621251149155', 'yd-7111', '2016-08-18 16:21:25', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181621254374196', 'yd-7111', '2016-08-18 16:21:25', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181621258501679', 'yd-7111', '2016-08-18 16:21:25', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181621269272755', 'yd-7111', '2016-08-18 16:21:26', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181621273846337', 'yd-7111', '2016-08-18 16:21:27', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181622018555066', 'yd-7111', '2016-08-18 16:22:01', '添加', 'SectionFenbodian', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181622027596637', 'yd-7111', '2016-08-18 16:22:02', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181622047522694', 'yd-7111', '2016-08-18 16:22:04', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181622051474006', 'yd-7111', '2016-08-18 16:22:05', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181622056911654', 'yd-7111', '2016-08-18 16:22:05', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181622060472943', 'yd-7111', '2016-08-18 16:22:06', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181622233614675', 'yd-7111', '2016-08-18 16:22:23', '添加', 'SectionFenbodian', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181622242179114', 'yd-7111', '2016-08-18 16:22:24', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181622255117127', 'yd-7111', '2016-08-18 16:22:25', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181622402395317', 'yd-7111', '2016-08-18 16:22:40', '添加', 'SectionFenbodian', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181622413229984', 'yd-7111', '2016-08-18 16:22:41', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181622427053896', 'yd-7111', '2016-08-18 16:22:42', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181622430806555', 'yd-7111', '2016-08-18 16:22:43', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181622435663253', 'yd-7111', '2016-08-18 16:22:43', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181622438898919', 'yd-7111', '2016-08-18 16:22:43', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181622442345761', 'yd-7111', '2016-08-18 16:22:44', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181622446633965', 'yd-7111', '2016-08-18 16:22:44', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181622450165089', 'yd-7111', '2016-08-18 16:22:45', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181622453258825', 'yd-7111', '2016-08-18 16:22:45', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181622460145878', 'yd-7111', '2016-08-18 16:22:46', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181624033005603', 'yd-7111', '2016-08-18 16:24:03', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181624187603919', 'yd-7111', '2016-08-18 16:24:18', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181625333442270', 'yd-7111', '2016-08-18 16:25:33', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181625348223621', 'yd-7111', '2016-08-18 16:25:34', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181625500813172', 'yd-7111', '2016-08-18 16:25:50', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181625529978494', 'yd-7111', '2016-08-18 16:25:52', '修改', 'SectionFenbodian', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181625541065424', 'yd-7111', '2016-08-18 16:25:54', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181625565894419', 'yd-7111', '2016-08-18 16:25:56', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181625570625952', 'yd-7111', '2016-08-18 16:25:57', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181625574018254', 'yd-7111', '2016-08-18 16:25:57', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181625577813011', 'yd-7111', '2016-08-18 16:25:57', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181625594458085', 'yd-7111', '2016-08-18 16:25:59', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181626009292058', 'yd-7111', '2016-08-18 16:26:00', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181626011865855', 'yd-7111', '2016-08-18 16:26:01', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181626014399151', 'yd-7111', '2016-08-18 16:26:01', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181626019676992', 'yd-7111', '2016-08-18 16:26:01', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181626023195791', 'yd-7111', '2016-08-18 16:26:02', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181626026858707', 'yd-7111', '2016-08-18 16:26:02', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181626029862742', 'yd-7111', '2016-08-18 16:26:02', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181626034367211', 'yd-7111', '2016-08-18 16:26:03', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181626038333964', 'yd-7111', '2016-08-18 16:26:03', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181626043506830', 'yd-7111', '2016-08-18 16:26:04', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181626046964037', 'yd-7111', '2016-08-18 16:26:04', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181626049937936', 'yd-7111', '2016-08-18 16:26:04', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181626054784198', 'yd-7111', '2016-08-18 16:26:05', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181626057778274', 'yd-7111', '2016-08-18 16:26:05', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181626060845374', 'yd-7111', '2016-08-18 16:26:06', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181626065056313', 'yd-7111', '2016-08-18 16:26:06', '查看', 'CompanySection', 'cs161152254709824');

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
INSERT INTO `users` VALUES ('yd-6897', '123456', '谢剑文', '信息与流程管理部', '硬件专员', '2016-08-16 09:55:21', 'r131526334505203', 'jianwen_xie@szexpress.com.cn');
INSERT INTO `users` VALUES ('yd-7111', '123456', '张顺', '信息与流程管理部', '开发专员', '2016-08-10 14:45:00', 'r111613371752208', 'shun_zhang@szexpress.com.cn');

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
INSERT INTO `xt_zm_data` VALUES ('d161646086937864', '2016-08-17', '1', '1', '1', '1', '1', '1', '1', '1');

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
