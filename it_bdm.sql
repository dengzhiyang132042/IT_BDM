/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-10-08 09:23:32
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
INSERT INTO `company_section` VALUES ('cs161152254709824', '韵达', '无', '123', '1231', '12313121', '1231', '1231', '1', '0');
INSERT INTO `company_section` VALUES ('cs181616491092615', '总经理', '童建刚', '', '总经理', '', '', '', '1', 'cs161152254709824');
INSERT INTO `company_section` VALUES ('cs181620462267657', '副总经理', '曹学智', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622018345940', '副总经理', '韩诗成', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622233338402', '副总经理', '曾明光', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181622402107364', '总经办', '刘洋', '', '副总经理', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181642300501624', '人力资源部', '方雪钊', 'yd6088', '人力资源高级经理', '13925207080', '', '', '1', 'cs181620462267657');
INSERT INTO `company_section` VALUES ('cs181642515815123', '行政部', '倪军', '688', '行政部_经理', '', '', '6634', '1', 'cs181620462267657');
INSERT INTO `company_section` VALUES ('cs181643107762681', '信息与流程管理部', '何胜利', '812', '信息与流程管理部_经理', '13925210776', '', '', '1', 'cs181620462267657');
INSERT INTO `company_section` VALUES ('cs181647460754333', '网运中心', '无', '', '', '', '', '', '1', 'cs181622018345940');
INSERT INTO `company_section` VALUES ('cs181651271006834', '网点管理部', '无', '', '', '', '', '', '1', 'cs181647460754333');
INSERT INTO `company_section` VALUES ('cs181651481786425', '分拨点管理部', '无', '', '', '', '', '', '1', 'cs181647460754333');
INSERT INTO `company_section` VALUES ('cs181652031816405', '区部', '', '', '', '', '', '', '1', 'cs181647460754333');
INSERT INTO `company_section` VALUES ('cs181652141877974', '客服部', '', '', '', '', '', '', '1', 'cs181647460754333');
INSERT INTO `company_section` VALUES ('cs181652394435029', '电商仓储事业部', '', '', '', '', '', '', '1', 'cs181622018345940');
INSERT INTO `company_section` VALUES ('cs181652530876138', '客服部', '', '', '', '', '', '', '1', 'cs181652394435029');
INSERT INTO `company_section` VALUES ('cs181653050277480', '大客户客服部', '', '', '', '', '', '', '1', 'cs181652394435029');
INSERT INTO `company_section` VALUES ('cs181653272846991', '骏达网货仓', '', '', '', '', '', '', '1', 'cs181652394435029');
INSERT INTO `company_section` VALUES ('cs181653414299277', '财务中心', '', '', '', '', '', '', '1', 'cs181622233338402');
INSERT INTO `company_section` VALUES ('cs181654040921954', '运营中心', '', '', '', '', '', '', '1', 'cs181622402107364');
INSERT INTO `company_section` VALUES ('cs181654353517056', '品质管理中心', '', '', '', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181655451313228', '快运事业部', '', '', '', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181655534345157', '数据中心', '', '', '', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181656194843428', '结算部', '', '', '', '', '', '', '1', 'cs181653414299277');
INSERT INTO `company_section` VALUES ('cs181656278365502', '核算部', '', '', '', '', '', '', '1', 'cs181653414299277');
INSERT INTO `company_section` VALUES ('cs181656379474054', '内控部', '', '', '', '', '', '', '1', 'cs181654040921954');
INSERT INTO `company_section` VALUES ('cs181656509181952', '操作管理部', '', '', '', '', '', '', '1', 'cs181654040921954');
INSERT INTO `company_section` VALUES ('cs181657092462578', '仲裁部', '', '', '', '', '', '', '1', 'cs181654353517056');
INSERT INTO `company_section` VALUES ('cs181657193922524', '质控部', '', '', '', '', '', '', '1', 'cs181654353517056');
INSERT INTO `company_section` VALUES ('cs181658013397859', '外围运营部', '', '', '', '', '', '', '1', 'cs181655451313228');
INSERT INTO `company_section` VALUES ('cs181658174268896', '快运部', '', '', '', '', '', '', '1', 'cs181655451313228');
INSERT INTO `company_section` VALUES ('cs181658324759340', '总经办', '', '', '', '', '', '', '1', 'cs181616491092615');
INSERT INTO `company_section` VALUES ('cs181701262302450', '观澜工作组', '徐迪军', 'YD0346', '信息与流程管理部_技术支持主管', '13925206957', '29050791', '', '1', 'cs181643107762681');
INSERT INTO `company_section` VALUES ('cs181702540888189', '硬件组', '谢建文', 'yd6897', '硬件专员', '', '61885608-8814', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181703286452061', '硬件组', '罗志标', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181703532303830', '系统组', '郭明星', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181704100142257', '系统组', '王科', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181704241459215', '系统组', '胡越', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181704545663273', '桌面组', '钟嘉裕', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181705094221966', '桌面组', '徐璐', '', '', '', '', '', '1', 'cs181701262302450');
INSERT INTO `company_section` VALUES ('cs181706154913403', '新仓IT工作组', '易向兵', '', '', '', '', '', '1', 'cs181643107762681');
INSERT INTO `company_section` VALUES ('cs181706319829992', '桌面组', '毛连山', '', '', '', '', '', '1', 'cs181706154913403');
INSERT INTO `company_section` VALUES ('cs181707133925692', '维护组', '蓝业驰', 'YD4610', '维护专员', '13556840080', '', '', '1', 'cs181706154913403');
INSERT INTO `company_section` VALUES ('cs181707495595002', '维护组', '李义丰', 'YD1968', '维护专员', '', '0755-29050791', '', '1', 'cs181706154913403');
INSERT INTO `company_section` VALUES ('cs181708212483843', '维修组', '何清泽', 'YD4989', '维修专员', '', '0755-29050791', '', '1', 'cs181706154913403');

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
-- Table structure for `da_demand`
-- ----------------------------
DROP TABLE IF EXISTS `da_demand`;
CREATE TABLE `da_demand` (
  `d_id` varchar(255) NOT NULL DEFAULT '',
  `d_applicant` varchar(255) DEFAULT NULL,
  `d_content` varchar(255) DEFAULT NULL,
  `d_type` varchar(255) DEFAULT NULL,
  `d_time` datetime DEFAULT NULL,
  `d_time_expect` datetime DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_demand
-- ----------------------------

-- ----------------------------
-- Table structure for `da_perform`
-- ----------------------------
DROP TABLE IF EXISTS `da_perform`;
CREATE TABLE `da_perform` (
  `p_id` varchar(255) NOT NULL DEFAULT '',
  `u_num` varchar(255) DEFAULT NULL,
  `p_time` datetime DEFAULT NULL,
  `p_state` varchar(255) DEFAULT NULL,
  `u_num_next` varchar(255) DEFAULT NULL,
  `d_id` varchar(255) DEFAULT NULL,
  `p_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of da_perform
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
INSERT INTO `permission` VALUES ('71', 'VPN账号登记查看');
INSERT INTO `permission` VALUES ('72', 'VPN账号登记删除');
INSERT INTO `permission` VALUES ('73', 'VPN账号登记修改');
INSERT INTO `permission` VALUES ('74', 'VPN账号登记添加');
INSERT INTO `permission` VALUES ('75', '布谷鸟邮箱账号登记查看');
INSERT INTO `permission` VALUES ('76', '布谷鸟邮箱账号登记删除');
INSERT INTO `permission` VALUES ('77', '布谷鸟邮箱账号登记修改');
INSERT INTO `permission` VALUES ('78', '布谷鸟邮箱账号登记添加');
INSERT INTO `permission` VALUES ('79', 'OA账号登记查看');
INSERT INTO `permission` VALUES ('80', 'OA账号登记删除');
INSERT INTO `permission` VALUES ('81', 'OA账号登记修改');
INSERT INTO `permission` VALUES ('82', 'OA账号登记添加');
INSERT INTO `permission` VALUES ('83', '打印机登记查看');
INSERT INTO `permission` VALUES ('84', '打印机登记删除');
INSERT INTO `permission` VALUES ('85', '打印机登记修改');
INSERT INTO `permission` VALUES ('86', '打印机登记添加');
INSERT INTO `permission` VALUES ('91', '小仓巴枪电脑登记查看');
INSERT INTO `permission` VALUES ('92', '小仓巴枪电脑登记删除');
INSERT INTO `permission` VALUES ('93', '小仓巴枪电脑登记修改');
INSERT INTO `permission` VALUES ('94', '小仓巴枪电脑登记添加');
INSERT INTO `permission` VALUES ('95', '园区wifi管理查看');
INSERT INTO `permission` VALUES ('96', '园区wifi管理删除');
INSERT INTO `permission` VALUES ('97', '园区wifi管理修改');
INSERT INTO `permission` VALUES ('98', '园区wifi管理添加');
INSERT INTO `permission` VALUES ('99', '电话线分布查看');
INSERT INTO `permission` VALUES ('100', '电话线分布删除');
INSERT INTO `permission` VALUES ('101', '电话线分布修改');
INSERT INTO `permission` VALUES ('102', '电话线分布添加');
INSERT INTO `permission` VALUES ('103', '故障报修管理查看');
INSERT INTO `permission` VALUES ('104', '故障报修管理删除');
INSERT INTO `permission` VALUES ('105', '故障报修管理修改');
INSERT INTO `permission` VALUES ('106', '故障报修管理添加');
INSERT INTO `permission` VALUES ('107', '故障报修统计——客服统计查看');
INSERT INTO `permission` VALUES ('108', '故障报修统计——客服统计删除');
INSERT INTO `permission` VALUES ('109', '故障报修统计——客服统计修改');
INSERT INTO `permission` VALUES ('110', '故障报修统计——客服统计添加');
INSERT INTO `permission` VALUES ('111', '故障报修统计——专员统计查看');
INSERT INTO `permission` VALUES ('112', '故障报修统计——专员统计删除');
INSERT INTO `permission` VALUES ('113', '故障报修统计——专员统计修改');
INSERT INTO `permission` VALUES ('114', '故障报修统计——专员统计添加');
INSERT INTO `permission` VALUES ('115', '故障报修处理查看');
INSERT INTO `permission` VALUES ('116', '故障报修处理删除');
INSERT INTO `permission` VALUES ('117', '故障报修处理修改');
INSERT INTO `permission` VALUES ('118', '故障报修处理添加');
INSERT INTO `permission` VALUES ('119', '故障报修转发审核查看');
INSERT INTO `permission` VALUES ('120', '故障报修转发审核删除');
INSERT INTO `permission` VALUES ('121', '故障报修转发审核修改（即通过、不通过）');
INSERT INTO `permission` VALUES ('122', '故障报修转发审核添加');

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
INSERT INTO `role` VALUES ('r190954449306917', '系统组', '拥有系统组相关的权限，注意不要改名称');

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
INSERT INTO `role_permission` VALUES ('rp191053337736167', 'r190954449306917', '29');
INSERT INTO `role_permission` VALUES ('rp191053338446196', 'r190954449306917', '30');
INSERT INTO `role_permission` VALUES ('rp191053338706226', 'r190954449306917', '31');
INSERT INTO `role_permission` VALUES ('rp191053339233148', 'r190954449306917', '32');
INSERT INTO `role_permission` VALUES ('rp191053339442180', 'r190954449306917', '33');
INSERT INTO `role_permission` VALUES ('rp191053339878033', 'r190954449306917', '34');
INSERT INTO `role_permission` VALUES ('rp191053340072267', 'r190954449306917', '35');
INSERT INTO `role_permission` VALUES ('rp191053340283967', 'r190954449306917', '36');
INSERT INTO `role_permission` VALUES ('rp191053340577703', 'r190954449306917', '37');
INSERT INTO `role_permission` VALUES ('rp191053340965317', 'r190954449306917', '38');
INSERT INTO `role_permission` VALUES ('rp191053341373627', 'r190954449306917', '39');
INSERT INTO `role_permission` VALUES ('rp191053341879257', 'r190954449306917', '40');
INSERT INTO `role_permission` VALUES ('rp191053342077751', 'r190954449306917', '41');
INSERT INTO `role_permission` VALUES ('rp191053342711371', 'r190954449306917', '42');
INSERT INTO `role_permission` VALUES ('rp191053343396170', 'r190954449306917', '43');
INSERT INTO `role_permission` VALUES ('rp191053343879628', 'r190954449306917', '44');
INSERT INTO `role_permission` VALUES ('rp191053344079415', 'r190954449306917', '53');
INSERT INTO `role_permission` VALUES ('rp191053344486962', 'r190954449306917', '54');
INSERT INTO `role_permission` VALUES ('rp191126332139823', 'r131526334505203', '1');
INSERT INTO `role_permission` VALUES ('rp191126332436412', 'r131526334505203', '2');
INSERT INTO `role_permission` VALUES ('rp191126332647118', 'r131526334505203', '3');
INSERT INTO `role_permission` VALUES ('rp191126332856149', 'r131526334505203', '4');
INSERT INTO `role_permission` VALUES ('rp191126333059141', 'r131526334505203', '5');
INSERT INTO `role_permission` VALUES ('rp191126333267593', 'r131526334505203', '6');
INSERT INTO `role_permission` VALUES ('rp191126333476191', 'r131526334505203', '7');
INSERT INTO `role_permission` VALUES ('rp191126333693731', 'r131526334505203', '8');
INSERT INTO `role_permission` VALUES ('rp191126333886392', 'r131526334505203', '9');
INSERT INTO `role_permission` VALUES ('rp191126334113284', 'r131526334505203', '10');
INSERT INTO `role_permission` VALUES ('rp191126334389125', 'r131526334505203', '11');
INSERT INTO `role_permission` VALUES ('rp191126334608140', 'r131526334505203', '12');
INSERT INTO `role_permission` VALUES ('rp191126334806151', 'r131526334505203', '13');
INSERT INTO `role_permission` VALUES ('rp191126335018397', 'r131526334505203', '14');
INSERT INTO `role_permission` VALUES ('rp191126335227487', 'r131526334505203', '15');
INSERT INTO `role_permission` VALUES ('rp191126335548496', 'r131526334505203', '16');
INSERT INTO `role_permission` VALUES ('rp191126335791780', 'r131526334505203', '17');
INSERT INTO `role_permission` VALUES ('rp191126336045847', 'r131526334505203', '18');
INSERT INTO `role_permission` VALUES ('rp191126336773720', 'r131526334505203', '19');
INSERT INTO `role_permission` VALUES ('rp191126337108421', 'r131526334505203', '20');
INSERT INTO `role_permission` VALUES ('rp191126337302258', 'r131526334505203', '21');
INSERT INTO `role_permission` VALUES ('rp191126337544425', 'r131526334505203', '22');
INSERT INTO `role_permission` VALUES ('rp191126337816094', 'r131526334505203', '23');
INSERT INTO `role_permission` VALUES ('rp191126338025938', 'r131526334505203', '24');
INSERT INTO `role_permission` VALUES ('rp191126338523229', 'r131526334505203', '25');
INSERT INTO `role_permission` VALUES ('rp191126338811633', 'r131526334505203', '26');
INSERT INTO `role_permission` VALUES ('rp191126339029353', 'r131526334505203', '27');
INSERT INTO `role_permission` VALUES ('rp191126339237306', 'r131526334505203', '28');
INSERT INTO `role_permission` VALUES ('rp191126339444425', 'r131526334505203', '53');
INSERT INTO `role_permission` VALUES ('rp191126339723207', 'r131526334505203', '54');
INSERT INTO `role_permission` VALUES ('rp291106373919746', 'r111613371752208', '1');
INSERT INTO `role_permission` VALUES ('rp291106374074012', 'r111613371752208', '2');
INSERT INTO `role_permission` VALUES ('rp291106374301035', 'r111613371752208', '3');
INSERT INTO `role_permission` VALUES ('rp291106374491018', 'r111613371752208', '4');
INSERT INTO `role_permission` VALUES ('rp291106374727015', 'r111613371752208', '5');
INSERT INTO `role_permission` VALUES ('rp291106374909732', 'r111613371752208', '6');
INSERT INTO `role_permission` VALUES ('rp291106375137419', 'r111613371752208', '7');
INSERT INTO `role_permission` VALUES ('rp291106375321333', 'r111613371752208', '8');
INSERT INTO `role_permission` VALUES ('rp291106375551933', 'r111613371752208', '9');
INSERT INTO `role_permission` VALUES ('rp291106375745259', 'r111613371752208', '10');
INSERT INTO `role_permission` VALUES ('rp291106375983910', 'r111613371752208', '11');
INSERT INTO `role_permission` VALUES ('rp291106376643007', 'r111613371752208', '12');
INSERT INTO `role_permission` VALUES ('rp291106376911273', 'r111613371752208', '13');
INSERT INTO `role_permission` VALUES ('rp291106377142903', 'r111613371752208', '14');
INSERT INTO `role_permission` VALUES ('rp291106377331650', 'r111613371752208', '15');
INSERT INTO `role_permission` VALUES ('rp291106377566903', 'r111613371752208', '16');
INSERT INTO `role_permission` VALUES ('rp291106377741126', 'r111613371752208', '17');
INSERT INTO `role_permission` VALUES ('rp291106377988254', 'r111613371752208', '18');
INSERT INTO `role_permission` VALUES ('rp291106378168303', 'r111613371752208', '19');
INSERT INTO `role_permission` VALUES ('rp291106378393702', 'r111613371752208', '20');
INSERT INTO `role_permission` VALUES ('rp291106378584658', 'r111613371752208', '21');
INSERT INTO `role_permission` VALUES ('rp291106378834331', 'r111613371752208', '22');
INSERT INTO `role_permission` VALUES ('rp291106379082577', 'r111613371752208', '23');
INSERT INTO `role_permission` VALUES ('rp291106379312422', 'r111613371752208', '24');
INSERT INTO `role_permission` VALUES ('rp291106379509353', 'r111613371752208', '25');
INSERT INTO `role_permission` VALUES ('rp291106379721107', 'r111613371752208', '26');
INSERT INTO `role_permission` VALUES ('rp291106379917079', 'r111613371752208', '27');
INSERT INTO `role_permission` VALUES ('rp291106380165667', 'r111613371752208', '28');
INSERT INTO `role_permission` VALUES ('rp291106380325698', 'r111613371752208', '29');
INSERT INTO `role_permission` VALUES ('rp291106380564147', 'r111613371752208', '30');
INSERT INTO `role_permission` VALUES ('rp291106380747758', 'r111613371752208', '31');
INSERT INTO `role_permission` VALUES ('rp291106380985362', 'r111613371752208', '32');
INSERT INTO `role_permission` VALUES ('rp291106381246033', 'r111613371752208', '33');
INSERT INTO `role_permission` VALUES ('rp291106381497147', 'r111613371752208', '34');
INSERT INTO `role_permission` VALUES ('rp291106381657565', 'r111613371752208', '35');
INSERT INTO `role_permission` VALUES ('rp291106381891045', 'r111613371752208', '36');
INSERT INTO `role_permission` VALUES ('rp291106382082668', 'r111613371752208', '37');
INSERT INTO `role_permission` VALUES ('rp291106382309106', 'r111613371752208', '38');
INSERT INTO `role_permission` VALUES ('rp291106382504483', 'r111613371752208', '39');
INSERT INTO `role_permission` VALUES ('rp291106382727478', 'r111613371752208', '40');
INSERT INTO `role_permission` VALUES ('rp291106382916209', 'r111613371752208', '41');
INSERT INTO `role_permission` VALUES ('rp291106383142453', 'r111613371752208', '42');
INSERT INTO `role_permission` VALUES ('rp291106383333568', 'r111613371752208', '43');
INSERT INTO `role_permission` VALUES ('rp291106383561215', 'r111613371752208', '44');
INSERT INTO `role_permission` VALUES ('rp291106383752433', 'r111613371752208', '45');
INSERT INTO `role_permission` VALUES ('rp291106383988933', 'r111613371752208', '46');
INSERT INTO `role_permission` VALUES ('rp291106384164186', 'r111613371752208', '47');
INSERT INTO `role_permission` VALUES ('rp291106384399016', 'r111613371752208', '48');
INSERT INTO `role_permission` VALUES ('rp291106384574018', 'r111613371752208', '49');
INSERT INTO `role_permission` VALUES ('rp291106384816258', 'r111613371752208', '50');
INSERT INTO `role_permission` VALUES ('rp291106384993208', 'r111613371752208', '51');
INSERT INTO `role_permission` VALUES ('rp291106385222433', 'r111613371752208', '52');
INSERT INTO `role_permission` VALUES ('rp291106385412837', 'r111613371752208', '53');
INSERT INTO `role_permission` VALUES ('rp291106385647544', 'r111613371752208', '54');
INSERT INTO `role_permission` VALUES ('rp291106385828518', 'r111613371752208', '55');
INSERT INTO `role_permission` VALUES ('rp291106386242709', 'r111613371752208', '56');
INSERT INTO `role_permission` VALUES ('rp291106386507582', 'r111613371752208', '57');
INSERT INTO `role_permission` VALUES ('rp291106386667306', 'r111613371752208', '58');
INSERT INTO `role_permission` VALUES ('rp291106386898827', 'r111613371752208', '59');
INSERT INTO `role_permission` VALUES ('rp291106387071131', 'r111613371752208', '60');
INSERT INTO `role_permission` VALUES ('rp291106387303957', 'r111613371752208', '61');
INSERT INTO `role_permission` VALUES ('rp291106387728391', 'r111613371752208', '62');
INSERT INTO `role_permission` VALUES ('rp291106387912462', 'r111613371752208', '63');
INSERT INTO `role_permission` VALUES ('rp291106388224354', 'r111613371752208', '64');
INSERT INTO `role_permission` VALUES ('rp291106388414765', 'r111613371752208', '65');
INSERT INTO `role_permission` VALUES ('rp291106388633536', 'r111613371752208', '66');
INSERT INTO `role_permission` VALUES ('rp291106389059472', 'r111613371752208', '67');
INSERT INTO `role_permission` VALUES ('rp291106389323782', 'r111613371752208', '68');
INSERT INTO `role_permission` VALUES ('rp291106389645789', 'r111613371752208', '69');
INSERT INTO `role_permission` VALUES ('rp291106389827379', 'r111613371752208', '70');
INSERT INTO `role_permission` VALUES ('rp291106390069134', 'r111613371752208', '71');
INSERT INTO `role_permission` VALUES ('rp291106390244008', 'r111613371752208', '72');
INSERT INTO `role_permission` VALUES ('rp291106390477488', 'r111613371752208', '73');
INSERT INTO `role_permission` VALUES ('rp291106390772669', 'r111613371752208', '74');
INSERT INTO `role_permission` VALUES ('rp291106390973718', 'r111613371752208', '75');
INSERT INTO `role_permission` VALUES ('rp291106391335489', 'r111613371752208', '76');
INSERT INTO `role_permission` VALUES ('rp291106391566177', 'r111613371752208', '77');
INSERT INTO `role_permission` VALUES ('rp291106391834085', 'r111613371752208', '78');
INSERT INTO `role_permission` VALUES ('rp291106392009117', 'r111613371752208', '79');
INSERT INTO `role_permission` VALUES ('rp291106392242068', 'r111613371752208', '80');
INSERT INTO `role_permission` VALUES ('rp291106392669542', 'r111613371752208', '81');
INSERT INTO `role_permission` VALUES ('rp291106392894558', 'r111613371752208', '82');
INSERT INTO `role_permission` VALUES ('rp291106393249818', 'r111613371752208', '83');
INSERT INTO `role_permission` VALUES ('rp291106393473707', 'r111613371752208', '84');
INSERT INTO `role_permission` VALUES ('rp291106393836055', 'r111613371752208', '85');
INSERT INTO `role_permission` VALUES ('rp291106394068258', 'r111613371752208', '86');
INSERT INTO `role_permission` VALUES ('rp291106394246497', 'r111613371752208', '91');
INSERT INTO `role_permission` VALUES ('rp291106394478801', 'r111613371752208', '92');
INSERT INTO `role_permission` VALUES ('rp291106394761090', 'r111613371752208', '93');
INSERT INTO `role_permission` VALUES ('rp291106394976391', 'r111613371752208', '94');
INSERT INTO `role_permission` VALUES ('rp291106395394448', 'r111613371752208', '95');
INSERT INTO `role_permission` VALUES ('rp291106395587759', 'r111613371752208', '96');
INSERT INTO `role_permission` VALUES ('rp291106395994324', 'r111613371752208', '97');
INSERT INTO `role_permission` VALUES ('rp291106396172821', 'r111613371752208', '98');
INSERT INTO `role_permission` VALUES ('rp291106397063939', 'r111613371752208', '99');
INSERT INTO `role_permission` VALUES ('rp291106397485081', 'r111613371752208', '100');
INSERT INTO `role_permission` VALUES ('rp291106397745305', 'r111613371752208', '101');
INSERT INTO `role_permission` VALUES ('rp291106397972098', 'r111613371752208', '102');
INSERT INTO `role_permission` VALUES ('rp291106398163542', 'r111613371752208', '103');
INSERT INTO `role_permission` VALUES ('rp291106398397065', 'r111613371752208', '104');
INSERT INTO `role_permission` VALUES ('rp291106398582918', 'r111613371752208', '105');
INSERT INTO `role_permission` VALUES ('rp291106398816834', 'r111613371752208', '106');
INSERT INTO `role_permission` VALUES ('rp291106399162471', 'r111613371752208', '107');
INSERT INTO `role_permission` VALUES ('rp291106399388386', 'r111613371752208', '108');
INSERT INTO `role_permission` VALUES ('rp291106399745825', 'r111613371752208', '109');
INSERT INTO `role_permission` VALUES ('rp291106399973568', 'r111613371752208', '110');
INSERT INTO `role_permission` VALUES ('rp291106400335972', 'r111613371752208', '111');
INSERT INTO `role_permission` VALUES ('rp291106400567225', 'r111613371752208', '112');
INSERT INTO `role_permission` VALUES ('rp291106400848887', 'r111613371752208', '113');
INSERT INTO `role_permission` VALUES ('rp291106401066162', 'r111613371752208', '114');
INSERT INTO `role_permission` VALUES ('rp291106401508819', 'r111613371752208', '115');
INSERT INTO `role_permission` VALUES ('rp291106401723332', 'r111613371752208', '116');
INSERT INTO `role_permission` VALUES ('rp291106401914975', 'r111613371752208', '117');
INSERT INTO `role_permission` VALUES ('rp291106402145504', 'r111613371752208', '118');
INSERT INTO `role_permission` VALUES ('rp291106402329089', 'r111613371752208', '119');
INSERT INTO `role_permission` VALUES ('rp291106402562385', 'r111613371752208', '120');
INSERT INTO `role_permission` VALUES ('rp291106402744557', 'r111613371752208', '121');
INSERT INTO `role_permission` VALUES ('rp291106402977805', 'r111613371752208', '122');

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
INSERT INTO `sim` VALUES ('sim181458454594897', '总经办', '2', '1', '12.20', null, '123123');
INSERT INTO `sim` VALUES ('sim191029343401246', '', null, null, null, null, '');
INSERT INTO `sim` VALUES ('sim191029397952513', '', null, null, null, null, '');

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
INSERT INTO `timeline` VALUES ('tl011013304573862', 'yd-7111', '2016-09-01 10:13:30', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl011434233067302', 'yd-7111', '2016-09-01 14:34:23', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091104356382610', 'yd-7111', '2016-09-09 11:04:35', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl091104362566117', 'yd-7111', '2016-09-09 11:04:36', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl091104388004637', 'yd-7111', '2016-09-09 11:04:38', '查看', 'FbdAsdl', '');
INSERT INTO `timeline` VALUES ('tl091104402132728', 'yd-7111', '2016-09-09 11:04:40', '查看', 'FbdAsdl', '');
INSERT INTO `timeline` VALUES ('tl091104417352854', 'yd-7111', '2016-09-09 11:04:41', '查看', 'FbdAsdl', '');
INSERT INTO `timeline` VALUES ('tl091104433161474', 'yd-7111', '2016-09-09 11:04:43', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl091104444437452', 'yd-7111', '2016-09-09 11:04:44', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl091104453662960', 'yd-7111', '2016-09-09 11:04:45', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104464775071', 'yd-7111', '2016-09-09 11:04:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104485755370', 'yd-7111', '2016-09-09 11:04:48', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091104504724734', 'yd-7111', '2016-09-09 11:04:50', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104534388902', 'yd-7111', '2016-09-09 11:04:53', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104554057621', 'yd-7111', '2016-09-09 11:04:55', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104566287819', 'yd-7111', '2016-09-09 11:04:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104572133010', 'yd-7111', '2016-09-09 11:04:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104577485167', 'yd-7111', '2016-09-09 11:04:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104583188667', 'yd-7111', '2016-09-09 11:04:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104587143040', 'yd-7111', '2016-09-09 11:04:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104591889701', 'yd-7111', '2016-09-09 11:04:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091104595422432', 'yd-7111', '2016-09-09 11:04:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105060184097', 'yd-7111', '2016-09-09 11:05:06', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105124116294', 'yd-7111', '2016-09-09 11:05:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105130206967', 'yd-7111', '2016-09-09 11:05:13', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105136794989', 'yd-7111', '2016-09-09 11:05:13', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105163742041', 'yd-7111', '2016-09-09 11:05:16', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091105170144628', 'yd-7111', '2016-09-09 11:05:17', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091105187409127', 'yd-7111', '2016-09-09 11:05:18', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl091105210065658', 'yd-7111', '2016-09-09 11:05:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl091105233731697', 'yd-7111', '2016-09-09 11:05:23', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091105264881800', 'yd-7111', '2016-09-09 11:05:26', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091105276134320', 'yd-7111', '2016-09-09 11:05:27', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091105288591035', 'yd-7111', '2016-09-09 11:05:28', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091105412203279', 'yd-7111', '2016-09-09 11:05:41', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091105421849854', 'yd-7111', '2016-09-09 11:05:42', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105436151220', 'yd-7111', '2016-09-09 11:05:43', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091105443555449', 'yd-7111', '2016-09-09 11:05:44', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105452222392', 'yd-7111', '2016-09-09 11:05:45', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091105456523657', 'yd-7111', '2016-09-09 11:05:45', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105461338689', 'yd-7111', '2016-09-09 11:05:46', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105466878600', 'yd-7111', '2016-09-09 11:05:46', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105470858026', 'yd-7111', '2016-09-09 11:05:47', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105477084290', 'yd-7111', '2016-09-09 11:05:47', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105488091228', 'yd-7111', '2016-09-09 11:05:48', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl091105495213548', 'yd-7111', '2016-09-09 11:05:49', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091105500843666', 'yd-7111', '2016-09-09 11:05:50', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091105511697339', 'yd-7111', '2016-09-09 11:05:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl091105547509971', 'yd-7111', '2016-09-09 11:05:54', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl091105554795648', 'yd-7111', '2016-09-09 11:05:55', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl091105564163736', 'yd-7111', '2016-09-09 11:05:56', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl091105591716963', 'yd-7111', '2016-09-09 11:05:59', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl091106017814735', 'yd-7111', '2016-09-09 11:06:01', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl091106022281037', 'yd-7111', '2016-09-09 11:06:02', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl091106037996674', 'yd-7111', '2016-09-09 11:06:03', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl091106042175148', 'yd-7111', '2016-09-09 11:06:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl091106064766350', 'yd-7111', '2016-09-09 11:06:06', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl091106077555507', 'yd-7111', '2016-09-09 11:06:07', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl091106112147505', 'yd-7111', '2016-09-09 11:06:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl091106126765673', 'yd-7111', '2016-09-09 11:06:12', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl091106170821089', 'yd-7111', '2016-09-09 11:06:17', '查看', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl091106214437929', 'yd-7111', '2016-09-09 11:06:21', '删除', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl091106232931656', 'yd-7111', '2016-09-09 11:06:23', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl091106315057149', 'yd-7111', '2016-09-09 11:06:31', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl091106334455509', 'yd-7111', '2016-09-09 11:06:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl091106341881926', 'yd-7111', '2016-09-09 11:06:34', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl091106351656137', 'yd-7111', '2016-09-09 11:06:35', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl091106369749949', 'yd-7111', '2016-09-09 11:06:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106376198439', 'yd-7111', '2016-09-09 11:06:37', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106391009157', 'yd-7111', '2016-09-09 11:06:39', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091106398353901', 'yd-7111', '2016-09-09 11:06:39', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl091106412471959', 'yd-7111', '2016-09-09 11:06:41', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091106423868171', 'yd-7111', '2016-09-09 11:06:42', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106445952382', 'yd-7111', '2016-09-09 11:06:44', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106455743395', 'yd-7111', '2016-09-09 11:06:45', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106467923879', 'yd-7111', '2016-09-09 11:06:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091106480285114', 'yd-7111', '2016-09-09 11:06:48', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl091106495029491', 'yd-7111', '2016-09-09 11:06:49', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091111042978818', 'yd-7111', '2016-09-09 11:11:04', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091111054465220', 'yd-7111', '2016-09-09 11:11:05', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091111062477323', 'yd-7111', '2016-09-09 11:11:06', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091111067047789', 'yd-7111', '2016-09-09 11:11:06', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl091111078363591', 'yd-7111', '2016-09-09 11:11:07', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl091111083796244', 'yd-7111', '2016-09-09 11:11:08', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091119516363345', 'yd-7111', '2016-09-09 11:19:51', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091119524883137', 'yd-7111', '2016-09-09 11:19:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091119542686904', 'yd-7111', '2016-09-09 11:19:54', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl091119550453833', 'yd-7111', '2016-09-09 11:19:55', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl091119557132744', 'yd-7111', '2016-09-09 11:19:55', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl091119568475999', 'yd-7111', '2016-09-09 11:19:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091119576565951', 'yd-7111', '2016-09-09 11:19:57', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl091119583626687', 'yd-7111', '2016-09-09 11:19:58', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl091119599129564', 'yd-7111', '2016-09-09 11:19:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091121224684047', 'yd-7111', '2016-09-09 11:21:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091121467623680', 'yd-7111', '2016-09-09 11:21:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl091121472902294', 'yd-7111', '2016-09-09 11:21:47', '查看', 'FbdListLink', null);
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
INSERT INTO `timeline` VALUES ('tl121423237234317', 'yd-7111', '2016-09-12 14:23:23', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl121423273398762', 'yd-7111', '2016-09-12 14:23:27', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl121423295983881', 'yd-7111', '2016-09-12 14:23:29', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl121423314555224', 'yd-7111', '2016-09-12 14:23:31', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl121423339952904', 'yd-7111', '2016-09-12 14:23:33', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl121423349992448', 'yd-7111', '2016-09-12 14:23:34', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl121423359301288', 'yd-7111', '2016-09-12 14:23:35', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl121423369856918', 'yd-7111', '2016-09-12 14:23:36', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl121423385324454', 'yd-7111', '2016-09-12 14:23:38', '查看', 'XtZmNumber', null);
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
INSERT INTO `timeline` VALUES ('tl130907237329009', 'yd-7111', '2016-09-13 09:07:23', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl130907237329670', 'yd-7111', '2016-09-13 09:07:23', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl130907241473829', 'yd-7111', '2016-09-13 09:07:24', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl130907256419281', 'yd-7111', '2016-09-13 09:07:25', '查看', 'FbdAsdl', ' ');
INSERT INTO `timeline` VALUES ('tl130907275487776', 'yd-7111', '2016-09-13 09:07:27', '查看', 'FbdAsdl', '');
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
INSERT INTO `timeline` VALUES ('tl181630115408927', 'yd-7111', '2016-08-18 16:30:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181630132162217', 'yd-7111', '2016-08-18 16:30:13', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181630153494580', 'yd-7111', '2016-08-18 16:30:15', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181630157064082', 'yd-7111', '2016-08-18 16:30:15', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181630211863507', 'yd-7111', '2016-08-18 16:30:21', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181630232002837', 'yd-7111', '2016-08-18 16:30:23', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181630238517457', 'yd-7111', '2016-08-18 16:30:23', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181630254943299', 'yd-7111', '2016-08-18 16:30:25', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181630262401141', 'yd-7111', '2016-08-18 16:30:26', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181631011355010', 'yd-7111', '2016-08-18 16:31:01', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181631025435877', 'yd-7111', '2016-08-18 16:31:02', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181631028959751', 'yd-7111', '2016-08-18 16:31:02', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181631226672547', 'yd-7111', '2016-08-18 16:31:22', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181631333426906', 'yd-7111', '2016-08-18 16:31:33', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181631342966437', 'yd-7111', '2016-08-18 16:31:34', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181631347046581', 'yd-7111', '2016-08-18 16:31:34', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181631349777181', 'yd-7111', '2016-08-18 16:31:34', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181631385089587', 'yd-7111', '2016-08-18 16:31:38', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181631543961356', 'yd-7111', '2016-08-18 16:31:54', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl181631556235091', 'yd-7111', '2016-08-18 16:31:55', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181641111131589', 'yd-7111', '2016-08-18 16:41:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641146257787', 'yd-7111', '2016-08-18 16:41:14', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181641276664240', 'yd-7111', '2016-08-18 16:41:27', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181641285363623', 'yd-7111', '2016-08-18 16:41:28', '修改', 'SectionFenbodian', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181641298753945', 'yd-7111', '2016-08-18 16:41:29', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641351727160', 'yd-7111', '2016-08-18 16:41:35', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181641399219641', 'yd-7111', '2016-08-18 16:41:39', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181641405085926', 'yd-7111', '2016-08-18 16:41:40', '修改', 'SectionFenbodian', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181641417856100', 'yd-7111', '2016-08-18 16:41:41', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641434915404', 'yd-7111', '2016-08-18 16:41:43', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181641471732869', 'yd-7111', '2016-08-18 16:41:47', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181641493256454', 'yd-7111', '2016-08-18 16:41:49', '修改', 'SectionFenbodian', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181641500746564', 'yd-7111', '2016-08-18 16:41:50', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641504158853', 'yd-7111', '2016-08-18 16:41:50', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641512569344', 'yd-7111', '2016-08-18 16:41:51', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181641548234565', 'yd-7111', '2016-08-18 16:41:54', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181641566529658', 'yd-7111', '2016-08-18 16:41:56', '修改', 'SectionFenbodian', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181641573649300', 'yd-7111', '2016-08-18 16:41:57', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181641583158897', 'yd-7111', '2016-08-18 16:41:58', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181642012495703', 'yd-7111', '2016-08-18 16:42:01', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181642021022719', 'yd-7111', '2016-08-18 16:42:02', '修改', 'SectionFenbodian', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181642032773064', 'yd-7111', '2016-08-18 16:42:03', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181642042076806', 'yd-7111', '2016-08-18 16:42:04', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181642053271262', 'yd-7111', '2016-08-18 16:42:05', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181642300921564', 'yd-7111', '2016-08-18 16:42:30', '添加', 'SectionFenbodian', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181642311783036', 'yd-7111', '2016-08-18 16:42:31', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181642323978965', 'yd-7111', '2016-08-18 16:42:32', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181642516099953', 'yd-7111', '2016-08-18 16:42:51', '添加', 'SectionFenbodian', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl181642524315095', 'yd-7111', '2016-08-18 16:42:52', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181642538346274', 'yd-7111', '2016-08-18 16:42:53', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181642541012409', 'yd-7111', '2016-08-18 16:42:54', '查看', 'CompanySection', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl181643108034181', 'yd-7111', '2016-08-18 16:43:10', '添加', 'SectionFenbodian', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181643119838589', 'yd-7111', '2016-08-18 16:43:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181643137991110', 'yd-7111', '2016-08-18 16:43:13', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181643142042223', 'yd-7111', '2016-08-18 16:43:14', '查看', 'CompanySection', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl181643146364763', 'yd-7111', '2016-08-18 16:43:14', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181644301942689', 'yd-7111', '2016-08-18 16:44:30', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181644343825448', 'yd-7111', '2016-08-18 16:44:34', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181645057781573', 'yd-7111', '2016-08-18 16:45:05', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181645065138594', 'yd-7111', '2016-08-18 16:45:06', '修改', 'SectionFenbodian', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181645073445178', 'yd-7111', '2016-08-18 16:45:07', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181645088703573', 'yd-7111', '2016-08-18 16:45:08', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181645140103543', 'yd-7111', '2016-08-18 16:45:14', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181645162757180', 'yd-7111', '2016-08-18 16:45:16', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181645177556495', 'yd-7111', '2016-08-18 16:45:17', '查看', 'CompanySection', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl181646009994223', 'yd-7111', '2016-08-18 16:46:00', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181646017118322', 'yd-7111', '2016-08-18 16:46:01', '修改', 'SectionFenbodian', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl181646025391136', 'yd-7111', '2016-08-18 16:46:02', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181646157008381', 'yd-7111', '2016-08-18 16:46:15', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181646370314716', 'yd-7111', '2016-08-18 16:46:37', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181646376153261', 'yd-7111', '2016-08-18 16:46:37', '修改', 'SectionFenbodian', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181646386072459', 'yd-7111', '2016-08-18 16:46:38', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181647100062558', 'yd-7111', '2016-08-18 16:47:10', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181647156855923', 'yd-7111', '2016-08-18 16:47:15', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181647461033710', 'yd-7111', '2016-08-18 16:47:46', '添加', 'SectionFenbodian', 'cs181647460754333');
INSERT INTO `timeline` VALUES ('tl181647480761797', 'yd-7111', '2016-08-18 16:47:48', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181648025135345', 'yd-7111', '2016-08-18 16:48:02', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181648136703271', 'yd-7111', '2016-08-18 16:48:13', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181648164347266', 'yd-7111', '2016-08-18 16:48:16', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181648469735454', 'yd-7111', '2016-08-18 16:48:46', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181648483277603', 'yd-7111', '2016-08-18 16:48:48', '查看', 'CompanySection', 'cs181647460754333');
INSERT INTO `timeline` VALUES ('tl181649540397949', 'yd-7111', '2016-08-18 16:49:54', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181649552872320', 'yd-7111', '2016-08-18 16:49:55', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181649574685040', 'yd-7111', '2016-08-18 16:49:57', '查看', 'CompanySection', 'cs181647460754333');
INSERT INTO `timeline` VALUES ('tl181650039286669', 'yd-7111', '2016-08-18 16:50:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181650054062182', 'yd-7111', '2016-08-18 16:50:05', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181650103924046', 'yd-7111', '2016-08-18 16:50:10', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181650150101359', 'yd-7111', '2016-08-18 16:50:15', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181650178862940', 'yd-7111', '2016-08-18 16:50:17', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl181650213987755', 'yd-7111', '2016-08-18 16:50:21', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181650467361413', 'yd-7111', '2016-08-18 16:50:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181650557328305', 'yd-7111', '2016-08-18 16:50:55', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181651271313142', 'yd-7111', '2016-08-18 16:51:27', '添加', 'SectionFenbodian', 'cs181651271006834');
INSERT INTO `timeline` VALUES ('tl181651282534454', 'yd-7111', '2016-08-18 16:51:28', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181651482358912', 'yd-7111', '2016-08-18 16:51:48', '添加', 'SectionFenbodian', 'cs181651481786425');
INSERT INTO `timeline` VALUES ('tl181651491144092', 'yd-7111', '2016-08-18 16:51:49', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181652032076981', 'yd-7111', '2016-08-18 16:52:03', '添加', 'SectionFenbodian', 'cs181652031816405');
INSERT INTO `timeline` VALUES ('tl181652042031666', 'yd-7111', '2016-08-18 16:52:04', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181652142233024', 'yd-7111', '2016-08-18 16:52:14', '添加', 'SectionFenbodian', 'cs181652141877974');
INSERT INTO `timeline` VALUES ('tl181652150352335', 'yd-7111', '2016-08-18 16:52:15', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181652394835527', 'yd-7111', '2016-08-18 16:52:39', '添加', 'SectionFenbodian', 'cs181652394435029');
INSERT INTO `timeline` VALUES ('tl181652402217567', 'yd-7111', '2016-08-18 16:52:40', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181652531219336', 'yd-7111', '2016-08-18 16:52:53', '添加', 'SectionFenbodian', 'cs181652530876138');
INSERT INTO `timeline` VALUES ('tl181653050523363', 'yd-7111', '2016-08-18 16:53:05', '添加', 'SectionFenbodian', 'cs181653050277480');
INSERT INTO `timeline` VALUES ('tl181653273083938', 'yd-7111', '2016-08-18 16:53:27', '添加', 'SectionFenbodian', 'cs181653272846991');
INSERT INTO `timeline` VALUES ('tl181653414614656', 'yd-7111', '2016-08-18 16:53:41', '添加', 'SectionFenbodian', 'cs181653414299277');
INSERT INTO `timeline` VALUES ('tl181654041115936', 'yd-7111', '2016-08-18 16:54:04', '添加', 'SectionFenbodian', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl181654353854399', 'yd-7111', '2016-08-18 16:54:35', '添加', 'SectionFenbodian', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181654364089510', 'yd-7111', '2016-08-18 16:54:36', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181654394926512', 'yd-7111', '2016-08-18 16:54:39', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181654436435856', 'yd-7111', '2016-08-18 16:54:43', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181654444365984', 'yd-7111', '2016-08-18 16:54:44', '修改', 'SectionFenbodian', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181654451703394', 'yd-7111', '2016-08-18 16:54:45', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181654468333171', 'yd-7111', '2016-08-18 16:54:46', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181654519022992', 'yd-7111', '2016-08-18 16:54:51', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181654526117479', 'yd-7111', '2016-08-18 16:54:52', '修改', 'SectionFenbodian', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181654535394973', 'yd-7111', '2016-08-18 16:54:53', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181654568341772', 'yd-7111', '2016-08-18 16:54:56', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181655017695437', 'yd-7111', '2016-08-18 16:55:01', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181655023539795', 'yd-7111', '2016-08-18 16:55:02', '修改', 'SectionFenbodian', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181655031366711', 'yd-7111', '2016-08-18 16:55:03', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181655058726650', 'yd-7111', '2016-08-18 16:55:05', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181655099967081', 'yd-7111', '2016-08-18 16:55:09', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181655104458339', 'yd-7111', '2016-08-18 16:55:10', '修改', 'SectionFenbodian', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181655117616633', 'yd-7111', '2016-08-18 16:55:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181655451884682', 'yd-7111', '2016-08-18 16:55:45', '添加', 'SectionFenbodian', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181655534628581', 'yd-7111', '2016-08-18 16:55:53', '添加', 'SectionFenbodian', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl181655570109503', 'yd-7111', '2016-08-18 16:55:57', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181656195123247', 'yd-7111', '2016-08-18 16:56:19', '添加', 'SectionFenbodian', 'cs181656194843428');
INSERT INTO `timeline` VALUES ('tl181656278577502', 'yd-7111', '2016-08-18 16:56:27', '添加', 'SectionFenbodian', 'cs181656278365502');
INSERT INTO `timeline` VALUES ('tl181656379714733', 'yd-7111', '2016-08-18 16:56:37', '添加', 'SectionFenbodian', 'cs181656379474054');
INSERT INTO `timeline` VALUES ('tl181656509467276', 'yd-7111', '2016-08-18 16:56:50', '添加', 'SectionFenbodian', 'cs181656509181952');
INSERT INTO `timeline` VALUES ('tl181657092714834', 'yd-7111', '2016-08-18 16:57:09', '添加', 'SectionFenbodian', 'cs181657092462578');
INSERT INTO `timeline` VALUES ('tl181657194226321', 'yd-7111', '2016-08-18 16:57:19', '添加', 'SectionFenbodian', 'cs181657193922524');
INSERT INTO `timeline` VALUES ('tl181658013707126', 'yd-7111', '2016-08-18 16:58:01', '添加', 'SectionFenbodian', 'cs181658013397859');
INSERT INTO `timeline` VALUES ('tl181658174554354', 'yd-7111', '2016-08-18 16:58:17', '添加', 'SectionFenbodian', 'cs181658174268896');
INSERT INTO `timeline` VALUES ('tl181658325022422', 'yd-7111', '2016-08-18 16:58:32', '添加', 'SectionFenbodian', 'cs181658324759340');
INSERT INTO `timeline` VALUES ('tl181658336286769', 'yd-7111', '2016-08-18 16:58:33', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181658450695225', 'yd-7111', '2016-08-18 16:58:45', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181658528854517', 'yd-7111', '2016-08-18 16:58:52', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181658535024691', 'yd-7111', '2016-08-18 16:58:53', '修改', 'SectionFenbodian', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181658543339064', 'yd-7111', '2016-08-18 16:58:54', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181658566302366', 'yd-7111', '2016-08-18 16:58:56', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181659026421949', 'yd-7111', '2016-08-18 16:59:02', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181659034641860', 'yd-7111', '2016-08-18 16:59:03', '修改', 'SectionFenbodian', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181659046793337', 'yd-7111', '2016-08-18 16:59:04', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181659060274601', 'yd-7111', '2016-08-18 16:59:06', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181659098487823', 'yd-7111', '2016-08-18 16:59:09', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181659126801973', 'yd-7111', '2016-08-18 16:59:12', '修改', 'SectionFenbodian', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181659137232537', 'yd-7111', '2016-08-18 16:59:13', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181659160318300', 'yd-7111', '2016-08-18 16:59:16', '查看', 'CompanySection', 'cs181652394435029');
INSERT INTO `timeline` VALUES ('tl181659172364431', 'yd-7111', '2016-08-18 16:59:17', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181659254783174', 'yd-7111', '2016-08-18 16:59:25', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181659265214924', 'yd-7111', '2016-08-18 16:59:26', '修改', 'SectionFenbodian', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl181659274578873', 'yd-7111', '2016-08-18 16:59:27', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181659292718203', 'yd-7111', '2016-08-18 16:59:29', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181659334313195', 'yd-7111', '2016-08-18 16:59:33', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181659345527142', 'yd-7111', '2016-08-18 16:59:34', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181659364653299', 'yd-7111', '2016-08-18 16:59:36', '修改', 'SectionFenbodian', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181659387773307', 'yd-7111', '2016-08-18 16:59:38', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181700111091550', 'yd-7111', '2016-08-18 17:00:11', '查看', 'CompanySection', 'cs181651271006834');
INSERT INTO `timeline` VALUES ('tl181700115346226', 'yd-7111', '2016-08-18 17:00:11', '查看', 'CompanySection', 'cs181651481786425');
INSERT INTO `timeline` VALUES ('tl181700119135964', 'yd-7111', '2016-08-18 17:00:11', '查看', 'CompanySection', 'cs181653050277480');
INSERT INTO `timeline` VALUES ('tl181700129119212', 'yd-7111', '2016-08-18 17:00:12', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181700132801441', 'yd-7111', '2016-08-18 17:00:13', '查看', 'CompanySection', 'cs181656278365502');
INSERT INTO `timeline` VALUES ('tl181700136628561', 'yd-7111', '2016-08-18 17:00:13', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181700144284368', 'yd-7111', '2016-08-18 17:00:14', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181700148932014', 'yd-7111', '2016-08-18 17:00:14', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181700153239447', 'yd-7111', '2016-08-18 17:00:15', '查看', 'CompanySection', 'cs181647460754333');
INSERT INTO `timeline` VALUES ('tl181700161934639', 'yd-7111', '2016-08-18 17:00:16', '查看', 'CompanySection', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl181700165405360', 'yd-7111', '2016-08-18 17:00:16', '查看', 'CompanySection', 'cs181658324759340');
INSERT INTO `timeline` VALUES ('tl181700174112784', 'yd-7111', '2016-08-18 17:00:17', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181700180874450', 'yd-7111', '2016-08-18 17:00:18', '查看', 'CompanySection', 'cs181642300501624');
INSERT INTO `timeline` VALUES ('tl181700197229789', 'yd-7111', '2016-08-18 17:00:19', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181701262554670', 'yd-7111', '2016-08-18 17:01:26', '添加', 'SectionFenbodian', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181701271229866', 'yd-7111', '2016-08-18 17:01:27', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181701298259928', 'yd-7111', '2016-08-18 17:01:29', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181702149668982', 'yd-7111', '2016-08-18 17:02:14', '添加', 'SectionFenbodian', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl181702541434762', 'yd-7111', '2016-08-18 17:02:54', '添加', 'SectionFenbodian', 'cs181702540888189');
INSERT INTO `timeline` VALUES ('tl181702561183615', 'yd-7111', '2016-08-18 17:02:56', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181703286735069', 'yd-7111', '2016-08-18 17:03:28', '添加', 'SectionFenbodian', 'cs181703286452061');
INSERT INTO `timeline` VALUES ('tl181703532571535', 'yd-7111', '2016-08-18 17:03:53', '添加', 'SectionFenbodian', 'cs181703532303830');
INSERT INTO `timeline` VALUES ('tl181704100432596', 'yd-7111', '2016-08-18 17:04:10', '添加', 'SectionFenbodian', 'cs181704100142257');
INSERT INTO `timeline` VALUES ('tl181704241746311', 'yd-7111', '2016-08-18 17:04:24', '添加', 'SectionFenbodian', 'cs181704241459215');
INSERT INTO `timeline` VALUES ('tl181704257467990', 'yd-7111', '2016-08-18 17:04:25', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181704546021753', 'yd-7111', '2016-08-18 17:04:54', '添加', 'SectionFenbodian', 'cs181704545663273');
INSERT INTO `timeline` VALUES ('tl181705094597472', 'yd-7111', '2016-08-18 17:05:09', '添加', 'SectionFenbodian', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl181705110626174', 'yd-7111', '2016-08-18 17:05:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181705130445098', 'yd-7111', '2016-08-18 17:05:13', '查看', 'CompanySection', 'cs181704545663273');
INSERT INTO `timeline` VALUES ('tl181705135231912', 'yd-7111', '2016-08-18 17:05:13', '查看', 'CompanySection', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl181705146257347', 'yd-7111', '2016-08-18 17:05:14', '查看', 'CompanySection', 'cs181704241459215');
INSERT INTO `timeline` VALUES ('tl181705149644119', 'yd-7111', '2016-08-18 17:05:14', '查看', 'CompanySection', 'cs181703532303830');
INSERT INTO `timeline` VALUES ('tl181705152252043', 'yd-7111', '2016-08-18 17:05:15', '查看', 'CompanySection', 'cs181702540888189');
INSERT INTO `timeline` VALUES ('tl181705240908470', 'yd-7111', '2016-08-18 17:05:24', '查看', 'CompanySection', 'cs181703286452061');
INSERT INTO `timeline` VALUES ('tl181705244323188', 'yd-7111', '2016-08-18 17:05:24', '查看', 'CompanySection', 'cs181704100142257');
INSERT INTO `timeline` VALUES ('tl181705247852335', 'yd-7111', '2016-08-18 17:05:24', '查看', 'CompanySection', 'cs181704545663273');
INSERT INTO `timeline` VALUES ('tl181705253848106', 'yd-7111', '2016-08-18 17:05:25', '查看', 'CompanySection', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl181705261467047', 'yd-7111', '2016-08-18 17:05:26', '查看', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl181705376303546', 'yd-7111', '2016-08-18 17:05:37', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181705392489925', 'yd-7111', '2016-08-18 17:05:39', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181705397206483', 'yd-7111', '2016-08-18 17:05:39', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181705408413568', 'yd-7111', '2016-08-18 17:05:40', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181705413949964', 'yd-7111', '2016-08-18 17:05:41', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181705426393656', 'yd-7111', '2016-08-18 17:05:42', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181705430202143', 'yd-7111', '2016-08-18 17:05:43', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181706155204200', 'yd-7111', '2016-08-18 17:06:15', '添加', 'SectionFenbodian', 'cs181706154913403');
INSERT INTO `timeline` VALUES ('tl181706163602047', 'yd-7111', '2016-08-18 17:06:16', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181706320333540', 'yd-7111', '2016-08-18 17:06:32', '添加', 'SectionFenbodian', 'cs181706319829992');
INSERT INTO `timeline` VALUES ('tl181707134204451', 'yd-7111', '2016-08-18 17:07:13', '添加', 'SectionFenbodian', 'cs181707133925692');
INSERT INTO `timeline` VALUES ('tl181707144278789', 'yd-7111', '2016-08-18 17:07:14', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181707495872169', 'yd-7111', '2016-08-18 17:07:49', '添加', 'SectionFenbodian', 'cs181707495595002');
INSERT INTO `timeline` VALUES ('tl181708212773685', 'yd-7111', '2016-08-18 17:08:21', '添加', 'SectionFenbodian', 'cs181708212483843');
INSERT INTO `timeline` VALUES ('tl181708223781496', 'yd-7111', '2016-08-18 17:08:22', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181708291155196', 'yd-7111', '2016-08-18 17:08:29', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181708308887340', 'yd-7111', '2016-08-18 17:08:30', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181708403914080', 'yd-7111', '2016-08-18 17:08:40', '查看', 'CompanySection', 'cs181658174268896');
INSERT INTO `timeline` VALUES ('tl181708432067166', 'yd-7111', '2016-08-18 17:08:43', '查看', 'CompanySection', 'cs181651271006834');
INSERT INTO `timeline` VALUES ('tl181708462622344', 'yd-7111', '2016-08-18 17:08:46', '查看', 'CompanySection', 'cs181656194843428');
INSERT INTO `timeline` VALUES ('tl181708547893050', 'yd-7111', '2016-08-18 17:08:54', '查看', 'CompanySection', 'cs181704241459215');
INSERT INTO `timeline` VALUES ('tl181711226271766', 'yd-7111', '2016-08-18 17:11:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181711262379845', 'yd-7111', '2016-08-18 17:11:26', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181711307764624', 'yd-7111', '2016-08-18 17:11:30', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181711362905693', 'yd-7111', '2016-08-18 17:11:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181712006279177', 'yd-7111', '2016-08-18 17:12:00', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181712029765634', 'yd-7111', '2016-08-18 17:12:02', '查看', 'CompanySection', 'cs181704545663273');
INSERT INTO `timeline` VALUES ('tl181712049712825', 'yd-7111', '2016-08-18 17:12:04', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181712059283606', 'yd-7111', '2016-08-18 17:12:05', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181712070035927', 'yd-7111', '2016-08-18 17:12:07', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181712082294751', 'yd-7111', '2016-08-18 17:12:08', '查看', 'CompanySection', 'cs181703286452061');
INSERT INTO `timeline` VALUES ('tl181712114616364', 'yd-7111', '2016-08-18 17:12:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181712128944142', 'yd-7111', '2016-08-18 17:12:12', '查看', 'CompanySection', 'cs181704100142257');
INSERT INTO `timeline` VALUES ('tl181712145768728', 'yd-7111', '2016-08-18 17:12:14', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181712294606566', 'yd-7111', '2016-08-18 17:12:29', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181712307623337', 'yd-7111', '2016-08-18 17:12:30', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181712316282194', 'yd-7111', '2016-08-18 17:12:31', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181712344413192', 'yd-7111', '2016-08-18 17:12:34', '查看', 'CompanySection', 'cs181658324759340');
INSERT INTO `timeline` VALUES ('tl181712348819426', 'yd-7111', '2016-08-18 17:12:34', '查看', 'CompanySection', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl181712361389503', 'yd-7111', '2016-08-18 17:12:36', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181712367418547', 'yd-7111', '2016-08-18 17:12:36', '查看', 'CompanySection', 'cs181658013397859');
INSERT INTO `timeline` VALUES ('tl181712370831002', 'yd-7111', '2016-08-18 17:12:37', '查看', 'CompanySection', 'cs181658174268896');
INSERT INTO `timeline` VALUES ('tl181712377514402', 'yd-7111', '2016-08-18 17:12:37', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181712382038042', 'yd-7111', '2016-08-18 17:12:38', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181712387812046', 'yd-7111', '2016-08-18 17:12:38', '查看', 'CompanySection', 'cs181657092462578');
INSERT INTO `timeline` VALUES ('tl181712390665416', 'yd-7111', '2016-08-18 17:12:39', '查看', 'CompanySection', 'cs181657193922524');
INSERT INTO `timeline` VALUES ('tl181712397236355', 'yd-7111', '2016-08-18 17:12:39', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181712401926082', 'yd-7111', '2016-08-18 17:12:40', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181712409139087', 'yd-7111', '2016-08-18 17:12:40', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl181712413279103', 'yd-7111', '2016-08-18 17:12:41', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl181712419425793', 'yd-7111', '2016-08-18 17:12:41', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl181712427061112', 'yd-7111', '2016-08-18 17:12:42', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181712446927801', 'yd-7111', '2016-08-18 17:12:44', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181712480095857', 'yd-7111', '2016-08-18 17:12:48', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181712508469812', 'yd-7111', '2016-08-18 17:12:50', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181712515217645', 'yd-7111', '2016-08-18 17:12:51', '查看', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl181712529739385', 'yd-7111', '2016-08-18 17:12:52', '查看', 'CompanySection', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl181712536551830', 'yd-7111', '2016-08-18 17:12:53', '查看', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl181712552539089', 'yd-7111', '2016-08-18 17:12:55', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181712559441686', 'yd-7111', '2016-08-18 17:12:55', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181712565921439', 'yd-7111', '2016-08-18 17:12:56', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181713461579532', 'yd-7111', '2016-08-18 17:13:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181713495602240', 'yd-7111', '2016-08-18 17:13:49', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181713516682831', 'yd-7111', '2016-08-18 17:13:51', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714194233830', 'yd-7111', '2016-08-18 17:14:19', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714250738012', 'yd-7111', '2016-08-18 17:14:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714274834094', 'yd-7111', '2016-08-18 17:14:27', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714302681112', 'yd-7111', '2016-08-18 17:14:30', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714328029583', 'yd-7111', '2016-08-18 17:14:32', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714438638290', 'yd-7111', '2016-08-18 17:14:43', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714509427378', 'yd-7111', '2016-08-18 17:14:50', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181714548141034', 'yd-7111', '2016-08-18 17:14:54', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181714589265493', 'yd-7111', '2016-08-18 17:14:58', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715312328362', 'yd-7111', '2016-08-18 17:15:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715344125069', 'yd-7111', '2016-08-18 17:15:34', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715391461579', 'yd-7111', '2016-08-18 17:15:39', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715423435708', 'yd-7111', '2016-08-18 17:15:42', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715449967785', 'yd-7111', '2016-08-18 17:15:44', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715459878198', 'yd-7111', '2016-08-18 17:15:45', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl181715484904362', 'yd-7111', '2016-08-18 17:15:48', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181715492194315', 'yd-7111', '2016-08-18 17:15:49', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181717293441776', 'yd-7111', '2016-08-18 17:17:29', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181717310569059', 'yd-7111', '2016-08-18 17:17:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181717515195158', 'yd-7111', '2016-08-18 17:17:51', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl181717539309398', 'yd-7111', '2016-08-18 17:17:53', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181720243731756', 'yd-7111', '2016-08-18 17:20:24', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181720313828800', 'yd-7111', '2016-08-18 17:20:31', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181720464945581', 'yd-7111', '2016-08-18 17:20:46', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181720590459308', 'yd-7111', '2016-08-18 17:20:59', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181721091446450', 'yd-7111', '2016-08-18 17:21:09', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181721223704644', 'yd-7111', '2016-08-18 17:21:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181721227625819', 'yd-7111', '2016-08-18 17:21:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181721338481050', 'yd-7111', '2016-08-18 17:21:33', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181721525341558', 'yd-7111', '2016-08-18 17:21:52', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl181722019089036', 'yd-7111', '2016-08-18 17:22:01', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181722039171977', 'yd-7111', '2016-08-18 17:22:03', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181722050382181', 'yd-7111', '2016-08-18 17:22:05', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181722058023786', 'yd-7111', '2016-08-18 17:22:05', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181722070645490', 'yd-7111', '2016-08-18 17:22:07', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181722079416313', 'yd-7111', '2016-08-18 17:22:07', '查看', 'CompanySection', 'cs181658013397859');
INSERT INTO `timeline` VALUES ('tl181722082411715', 'yd-7111', '2016-08-18 17:22:08', '查看', 'CompanySection', 'cs181658174268896');
INSERT INTO `timeline` VALUES ('tl181722088728202', 'yd-7111', '2016-08-18 17:22:08', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181722092212401', 'yd-7111', '2016-08-18 17:22:09', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181722096826935', 'yd-7111', '2016-08-18 17:22:09', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181722102163967', 'yd-7111', '2016-08-18 17:22:10', '查看', 'CompanySection', 'cs181657092462578');
INSERT INTO `timeline` VALUES ('tl181723221159027', 'yd-7111', '2016-08-18 17:23:22', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181723236396364', 'yd-7111', '2016-08-18 17:23:23', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181723248584300', 'yd-7111', '2016-08-18 17:23:24', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181723262764270', 'yd-7111', '2016-08-18 17:23:26', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181723281644507', 'yd-7111', '2016-08-18 17:23:28', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181723358945391', 'yd-7111', '2016-08-18 17:23:35', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181723376284060', 'yd-7111', '2016-08-18 17:23:37', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181723387199598', 'yd-7111', '2016-08-18 17:23:38', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181723397406256', 'yd-7111', '2016-08-18 17:23:39', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181723410944699', 'yd-7111', '2016-08-18 17:23:41', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181723415877995', 'yd-7111', '2016-08-18 17:23:41', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl181726121417042', 'yd-7111', '2016-08-18 17:26:12', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181726126622311', 'yd-7111', '2016-08-18 17:26:12', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181726136953473', 'yd-7111', '2016-08-18 17:26:13', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181726146833622', 'yd-7111', '2016-08-18 17:26:14', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181726159551823', 'yd-7111', '2016-08-18 17:26:15', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181726188113229', 'yd-7111', '2016-08-18 17:26:18', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181726195048107', 'yd-7111', '2016-08-18 17:26:19', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181726205655543', 'yd-7111', '2016-08-18 17:26:20', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181726216283269', 'yd-7111', '2016-08-18 17:26:21', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181726230012722', 'yd-7111', '2016-08-18 17:26:23', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181726241647949', 'yd-7111', '2016-08-18 17:26:24', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181726245525764', 'yd-7111', '2016-08-18 17:26:24', '查看', 'CompanySection', 'cs181658013397859');
INSERT INTO `timeline` VALUES ('tl181726249444758', 'yd-7111', '2016-08-18 17:26:24', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl181726253406701', 'yd-7111', '2016-08-18 17:26:25', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181726257674512', 'yd-7111', '2016-08-18 17:26:25', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl181726271712042', 'yd-7111', '2016-08-18 17:26:27', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181726279446121', 'yd-7111', '2016-08-18 17:26:27', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl181726298543100', 'yd-7111', '2016-08-18 17:26:29', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl181726309719436', 'yd-7111', '2016-08-18 17:26:30', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181726314703731', 'yd-7111', '2016-08-18 17:26:31', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl181726323879434', 'yd-7111', '2016-08-18 17:26:32', '查看', 'CompanySection', 'cs181706154913403');
INSERT INTO `timeline` VALUES ('tl181726329702537', 'yd-7111', '2016-08-18 17:26:32', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl181726343594218', 'yd-7111', '2016-08-18 17:26:34', '查看', 'CompanySection', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl181726347658793', 'yd-7111', '2016-08-18 17:26:34', '查看', 'CompanySection', 'cs181703532303830');
INSERT INTO `timeline` VALUES ('tl181726353525442', 'yd-7111', '2016-08-18 17:26:35', '查看', 'CompanySection', 'cs181702540888189');
INSERT INTO `timeline` VALUES ('tl181726359505669', 'yd-7111', '2016-08-18 17:26:35', '查看', 'CompanySection', 'cs181702149399384');
INSERT INTO `timeline` VALUES ('tl181728024235904', 'yd-7111', '2016-08-18 17:28:02', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181728044107345', 'yd-7111', '2016-08-18 17:28:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl181728397096056', 'yd-7111', '2016-08-18 17:28:39', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181729087169113', 'yd-7111', '2016-08-18 17:29:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181729209274449', 'yd-7111', '2016-08-18 17:29:20', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl181729246396606', 'yd-7111', '2016-08-18 17:29:24', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181730160166539', 'yd-7111', '2016-08-18 17:30:16', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181731070462902', 'yd-7111', '2016-08-18 17:31:07', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181731466346430', 'yd-7111', '2016-08-18 17:31:46', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181732005956163', 'yd-7111', '2016-08-18 17:32:00', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181733419578980', 'yd-7111', '2016-08-18 17:33:41', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181734026664784', 'yd-7111', '2016-08-18 17:34:02', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181734043658175', 'yd-7111', '2016-08-18 17:34:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl181734053636240', 'yd-7111', '2016-08-18 17:34:05', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl181734404716653', 'yd-7111', '2016-08-18 17:34:40', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl181734452537076', 'yd-7111', '2016-08-18 17:34:45', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181736044324099', 'yd-7111', '2016-08-18 17:36:04', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181736068521040', 'yd-7111', '2016-08-18 17:36:06', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181736077327645', 'yd-7111', '2016-08-18 17:36:07', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl181736097659435', 'yd-7111', '2016-08-18 17:36:09', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl181736114586264', 'yd-7111', '2016-08-18 17:36:11', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl181736454947323', 'yd-7111', '2016-08-18 17:36:45', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl181736488069966', 'yd-7111', '2016-08-18 17:36:48', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl190942230328260', 'yd-6897', '2016-08-19 09:42:23', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl190943194111455', 'yd-6897', '2016-08-19 09:43:19', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl190943199402661', 'yd-6897', '2016-08-19 09:43:19', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl190943213967920', 'yd-6897', '2016-08-19 09:43:21', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl190943236189895', 'yd-6897', '2016-08-19 09:43:23', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl190944012059667', 'yd-7111', '2016-08-19 09:44:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl190944045706571', 'yd-7111', '2016-08-19 09:44:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl190944087998139', 'yd-7111', '2016-08-19 09:44:08', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl190944554023225', 'yd-7111', '2016-08-19 09:44:55', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl190954060331176', 'yd-7111', '2016-08-19 09:54:06', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl190954450322463', 'yd-7111', '2016-08-19 09:54:45', '添加', 'Role', 'r190954449306917');
INSERT INTO `timeline` VALUES ('tl190954461372032', 'yd-7111', '2016-08-19 09:54:46', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl190954492874036', 'yd-7111', '2016-08-19 09:54:49', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl190957173989583', 'yd-7111', '2016-08-19 09:57:17', '添加', 'Users', 'yd-4221');
INSERT INTO `timeline` VALUES ('tl190957187051337', 'yd-7111', '2016-08-19 09:57:18', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191003299799453', 'yd-7111', '2016-08-19 10:03:29', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191003369967052', 'yd-7111', '2016-08-19 10:03:36', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005060519113', 'yd-7111', '2016-08-19 10:05:06', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005345422899', 'yd-7111', '2016-08-19 10:05:34', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005374027752', 'yd-7111', '2016-08-19 10:05:37', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005403804148', 'yd-7111', '2016-08-19 10:05:40', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005419952492', 'yd-7111', '2016-08-19 10:05:41', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191005451142561', 'yd-7111', '2016-08-19 10:05:45', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191006193321379', 'yd-7111', '2016-08-19 10:06:19', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191007387118403', 'yd-7111', '2016-08-19 10:07:38', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191007460731103', 'yd-7111', '2016-08-19 10:07:46', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191008506791261', 'yd-7111', '2016-08-19 10:08:50', '修改', 'Users', 'yd-4221');
INSERT INTO `timeline` VALUES ('tl191008522704663', 'yd-7111', '2016-08-19 10:08:52', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191012491159807', 'yd-7111', '2016-08-19 10:12:49', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl191012508044733', 'yd-7111', '2016-08-19 10:12:50', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191012520214240', 'yd-7111', '2016-08-19 10:12:52', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191012526671665', 'yd-7111', '2016-08-19 10:12:52', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl191018065892150', 'yd-7111', '2016-08-19 10:18:06', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl191019547752949', 'yd-7111', '2016-08-19 10:19:54', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191020082941023', 'yd-7111', '2016-08-19 10:20:08', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl191020132712915', 'yd-7111', '2016-08-19 10:20:13', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl191020213522451', 'yd-7111', '2016-08-19 10:20:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191022526379365', 'yd-7111', '2016-08-19 10:22:52', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl191022542293588', 'yd-7111', '2016-08-19 10:22:54', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191022553449845', 'yd-7111', '2016-08-19 10:22:55', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191022566331359', 'yd-7111', '2016-08-19 10:22:56', '查看', 'CompanySection', 'cs181658324759340');
INSERT INTO `timeline` VALUES ('tl191022594736572', 'yd-7111', '2016-08-19 10:22:59', '查看', 'CompanySection', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl191024288327142', 'yd-7111', '2016-08-19 10:24:28', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl191024308403565', 'yd-7111', '2016-08-19 10:24:30', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191024318428067', 'yd-7111', '2016-08-19 10:24:31', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191024322996757', 'yd-7111', '2016-08-19 10:24:32', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191024325764982', 'yd-7111', '2016-08-19 10:24:32', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191024332198430', 'yd-7111', '2016-08-19 10:24:33', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl191024488328478', 'yd-7111', '2016-08-19 10:24:48', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191024499328125', 'yd-7111', '2016-08-19 10:24:49', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191025212983956', 'yd-7111', '2016-08-19 10:25:21', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl191025231843494', 'yd-7111', '2016-08-19 10:25:23', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191025236831618', 'yd-7111', '2016-08-19 10:25:23', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl191025244713630', 'yd-7111', '2016-08-19 10:25:24', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl191025315062714', 'yd-7111', '2016-08-19 10:25:31', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl191025350391365', 'yd-7111', '2016-08-19 10:25:35', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl191025362102505', 'yd-7111', '2016-08-19 10:25:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191025479978212', 'yd-7111', '2016-08-19 10:25:47', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191027142243037', 'yd-7111', '2016-08-19 10:27:14', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191027155404132', 'yd-7111', '2016-08-19 10:27:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191029187358008', 'yd-7111', '2016-08-19 10:29:18', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191029308416663', 'yd-7111', '2016-08-19 10:29:30', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191029343983029', 'yd-7111', '2016-08-19 10:29:34', '添加', 'FbdListLink', 'sim191029343401246');
INSERT INTO `timeline` VALUES ('tl191029353381537', 'yd-7111', '2016-08-19 10:29:35', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191029398771895', 'yd-7111', '2016-08-19 10:29:39', '添加', 'FbdListLink', 'sim191029397952513');
INSERT INTO `timeline` VALUES ('tl191029410602253', 'yd-7111', '2016-08-19 10:29:41', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191029446895759', 'yd-7111', '2016-08-19 10:29:44', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191053043143341', 'yd-7111', '2016-08-19 10:53:04', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl191053345607041', 'yd-7111', '2016-08-19 10:53:34', '修改', 'Role', 'r190954449306917');
INSERT INTO `timeline` VALUES ('tl191053355175646', 'yd-7111', '2016-08-19 10:53:35', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl191053523811952', 'yd-4221', '2016-08-19 10:53:52', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191053584069649', 'yd-4221', '2016-08-19 10:53:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191054019458074', 'yd-4221', '2016-08-19 10:54:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191054115891399', 'yd-4221', '2016-08-19 10:54:11', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl191054138827756', 'yd-4221', '2016-08-19 10:54:13', '添加', 'XtBranches', 'b191054138451785');
INSERT INTO `timeline` VALUES ('tl191054148575622', 'yd-4221', '2016-08-19 10:54:14', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl191054167741635', 'yd-4221', '2016-08-19 10:54:16', '添加', 'XtZmNumber', 'zm191054167309684');
INSERT INTO `timeline` VALUES ('tl191054179768219', 'yd-4221', '2016-08-19 10:54:17', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl191054201633730', 'yd-4221', '2016-08-19 10:54:20', '添加', 'XtZmData', 'd191054201292894');
INSERT INTO `timeline` VALUES ('tl191054209614531', 'yd-4221', '2016-08-19 10:54:20', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl191054234835655', 'yd-4221', '2016-08-19 10:54:23', '删除', 'XtZmNumber', 'zm191054167309684');
INSERT INTO `timeline` VALUES ('tl191054260312257', 'yd-4221', '2016-08-19 10:54:26', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191054268531652', 'yd-4221', '2016-08-19 10:54:26', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191054278909169', 'yd-4221', '2016-08-19 10:54:27', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191058236692803', 'yd-4221', '2016-08-19 10:58:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058284473754', 'yd-4221', '2016-08-19 10:58:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058310179526', 'yd-4221', '2016-08-19 10:58:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058341506505', 'yd-4221', '2016-08-19 10:58:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058364442241', 'yd-4221', '2016-08-19 10:58:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058395334216', 'yd-4221', '2016-08-19 10:58:39', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058423549392', 'yd-4221', '2016-08-19 10:58:42', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058456601698', 'yd-4221', '2016-08-19 10:58:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058470841058', 'yd-4221', '2016-08-19 10:58:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058513324340', 'yd-4221', '2016-08-19 10:58:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058542596796', 'yd-4221', '2016-08-19 10:58:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191058582946503', 'yd-4221', '2016-08-19 10:58:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059014236087', 'yd-4221', '2016-08-19 10:59:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059028784455', 'yd-4221', '2016-08-19 10:59:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059070934156', 'yd-4221', '2016-08-19 10:59:07', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059106514025', 'yd-4221', '2016-08-19 10:59:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059135452285', 'yd-4221', '2016-08-19 10:59:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059158247803', 'yd-4221', '2016-08-19 10:59:15', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059173722566', 'yd-4221', '2016-08-19 10:59:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191059190557071', 'yd-4221', '2016-08-19 10:59:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191112485814535', 'yd-4221', '2016-08-19 11:12:48', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl191112488788613', 'yd-4221', '2016-08-19 11:12:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191112514414181', 'yd-4221', '2016-08-19 11:12:51', '添加', 'XtSite', 's191112513732214');
INSERT INTO `timeline` VALUES ('tl191113052752398', 'yd-4221', '2016-08-19 11:13:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113071108577', 'yd-4221', '2016-08-19 11:13:07', '添加', 'XtSite', 's191113070806250');
INSERT INTO `timeline` VALUES ('tl191113080929694', 'yd-4221', '2016-08-19 11:13:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113097592536', 'yd-4221', '2016-08-19 11:13:09', '添加', 'XtSite', 's191113097377519');
INSERT INTO `timeline` VALUES ('tl191113109151765', 'yd-4221', '2016-08-19 11:13:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113125632540', 'yd-4221', '2016-08-19 11:13:12', '添加', 'XtSite', 's191113125439666');
INSERT INTO `timeline` VALUES ('tl191113137396444', 'yd-4221', '2016-08-19 11:13:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113155846928', 'yd-4221', '2016-08-19 11:13:15', '添加', 'XtSite', 's191113155324655');
INSERT INTO `timeline` VALUES ('tl191113163396150', 'yd-4221', '2016-08-19 11:13:16', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113180439052', 'yd-4221', '2016-08-19 11:13:18', '添加', 'XtSite', 's191113179956382');
INSERT INTO `timeline` VALUES ('tl191113193168371', 'yd-4221', '2016-08-19 11:13:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113228268243', 'yd-4221', '2016-08-19 11:13:22', '添加', 'XtSite', 's191113227959576');
INSERT INTO `timeline` VALUES ('tl191113237135017', 'yd-4221', '2016-08-19 11:13:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113268847608', 'yd-4221', '2016-08-19 11:13:26', '添加', 'XtSite', 's191113268427156');
INSERT INTO `timeline` VALUES ('tl191113282858531', 'yd-4221', '2016-08-19 11:13:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113303127061', 'yd-4221', '2016-08-19 11:13:30', '添加', 'XtSite', 's191113302884089');
INSERT INTO `timeline` VALUES ('tl191113312431233', 'yd-4221', '2016-08-19 11:13:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113338936074', 'yd-4221', '2016-08-19 11:13:33', '添加', 'XtSite', 's191113338662176');
INSERT INTO `timeline` VALUES ('tl191113348467360', 'yd-4221', '2016-08-19 11:13:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191113369462421', 'yd-4221', '2016-08-19 11:13:36', '添加', 'XtSite', 's191113366332008');
INSERT INTO `timeline` VALUES ('tl191119039559161', 'yd-4221', '2016-08-19 11:19:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191119068857489', 'yd-4221', '2016-08-19 11:19:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191125282552769', 'yd-6897', '2016-08-19 11:25:28', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl191125285177558', 'yd-6897', '2016-08-19 11:25:28', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl191125438684667', 'yd-7111', '2016-08-19 11:25:43', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl191126340511092', 'yd-7111', '2016-08-19 11:26:34', '修改', 'Role', 'r131526334505203');
INSERT INTO `timeline` VALUES ('tl191126413358387', 'yd-7111', '2016-08-19 11:26:41', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191126534746174', 'yd-7111', '2016-08-19 11:26:53', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191127190168661', 'yd-7111', '2016-08-19 11:27:19', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl191127209994699', 'yd-7111', '2016-08-19 11:27:21', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl191127222651026', 'yd-7111', '2016-08-19 11:27:22', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl191127244193978', 'yd-7111', '2016-08-19 11:27:24', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl191127253874570', 'yd-7111', '2016-08-19 11:27:25', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl191127260284639', 'yd-7111', '2016-08-19 11:27:26', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl191127270227175', 'yd-7111', '2016-08-19 11:27:27', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl191127289499044', 'yd-7111', '2016-08-19 11:27:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191127297901693', 'yd-7111', '2016-08-19 11:27:29', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl191127304939978', 'yd-7111', '2016-08-19 11:27:30', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl191127311179177', 'yd-7111', '2016-08-19 11:27:31', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl191127358429185', 'yd-7111', '2016-08-19 11:27:35', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl191127377168274', 'yd-7111', '2016-08-19 11:27:37', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl191127413203281', 'yd-7111', '2016-08-19 11:27:41', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl191129253796712', 'yd-7111', '2016-08-19 11:29:25', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191132114107772', 'yd-7111', '2016-08-19 11:32:11', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191132222119031', 'yd-7111', '2016-08-19 11:32:22', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191132246232474', 'yd-7111', '2016-08-19 11:32:24', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191133173462394', 'yd-7111', '2016-08-19 11:33:17', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191133592251237', 'yd-7111', '2016-08-19 11:33:59', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191134025084399', 'yd-7111', '2016-08-19 11:34:02', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191134059836801', 'yd-7111', '2016-08-19 11:34:05', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191134089701895', 'yd-7111', '2016-08-19 11:34:08', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191134197434201', 'yd-7111', '2016-08-19 11:34:19', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191134214842581', 'yd-7111', '2016-08-19 11:34:21', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191134221924760', 'yd-7111', '2016-08-19 11:34:22', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191134320433795', 'yd-7111', '2016-08-19 11:34:32', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191134338996453', 'yd-7111', '2016-08-19 11:34:33', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191135544446832', 'yd-7111', '2016-08-19 11:35:54', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191136471106773', 'yd-7111', '2016-08-19 11:36:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191140286507040', 'yd-7111', '2016-08-19 11:40:28', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191140293621863', 'yd-7111', '2016-08-19 11:40:29', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191140333617176', 'yd-7111', '2016-08-19 11:40:33', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191140351662417', 'yd-7111', '2016-08-19 11:40:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191140359441014', 'yd-7111', '2016-08-19 11:40:35', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191141146982806', 'yd-7111', '2016-08-19 11:41:14', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191141153263484', 'yd-7111', '2016-08-19 11:41:15', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191142470975070', 'yd-7111', '2016-08-19 11:42:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191143363843204', 'yd-7111', '2016-08-19 11:43:36', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191143404339047', 'yd-7111', '2016-08-19 11:43:40', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191144358102259', 'yd-7111', '2016-08-19 11:44:35', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191147472353655', 'yd-7111', '2016-08-19 11:47:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191147488451728', 'yd-7111', '2016-08-19 11:47:48', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191147582989053', 'yd-6897', '2016-08-19 11:47:58', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191147597537558', 'yd-6897', '2016-08-19 11:47:59', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191148003808134', 'yd-6897', '2016-08-19 11:48:00', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148023993790', 'yd-6897', '2016-08-19 11:48:02', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191148033171922', 'yd-6897', '2016-08-19 11:48:03', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148040846663', 'yd-6897', '2016-08-19 11:48:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191148061147441', 'yd-6897', '2016-08-19 11:48:06', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148074714773', 'yd-6897', '2016-08-19 11:48:07', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191148169674597', 'yd-4221', '2016-08-19 11:48:16', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148280967273', 'yd-4221', '2016-08-19 11:48:28', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148421041565', 'yd-6897', '2016-08-19 11:48:42', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148445968610', 'yd-6897', '2016-08-19 11:48:44', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl191148449958837', 'yd-6897', '2016-08-19 11:48:44', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl191350435517813', 'yd-4221', '2016-08-19 13:50:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl191354345349354', 'yd-4221', '2016-08-19 13:54:34', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl191354350148365', 'yd-4221', '2016-08-19 13:54:35', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl191358030139929', 'yd-4221', '2016-08-19 13:58:03', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl191358233559395', 'yd-4221', '2016-08-19 13:58:23', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl201450047075457', 'yd-7111', '2016-09-20 14:50:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201450067551084', 'yd-7111', '2016-09-20 14:50:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201450077075826', 'yd-7111', '2016-09-20 14:50:07', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl201450123398240', 'yd-7111', '2016-09-20 14:50:12', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201450167975997', 'yd-7111', '2016-09-20 14:50:16', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl201450195379851', 'yd-7111', '2016-09-20 14:50:19', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl201450261516127', 'yd-7111', '2016-09-20 14:50:26', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl201450301756998', 'yd-7111', '2016-09-20 14:50:30', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl201450428931504', 'yd-7111', '2016-09-20 14:50:42', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl201451088018482', 'yd-7111', '2016-09-20 14:51:08', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl201451098508662', 'yd-7111', '2016-09-20 14:51:09', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl201451102922035', 'yd-7111', '2016-09-20 14:51:10', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl201451110679439', 'yd-7111', '2016-09-20 14:51:11', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl201451121488599', 'yd-7111', '2016-09-20 14:51:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl201451312161462', 'yd-7111', '2016-09-20 14:51:31', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201451351256374', 'yd-7111', '2016-09-20 14:51:35', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl201451359353258', 'yd-7111', '2016-09-20 14:51:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201453259762867', 'yd-7111', '2016-09-20 14:53:25', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl201453282394084', 'yd-7111', '2016-09-20 14:53:28', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl201453286682711', 'yd-7111', '2016-09-20 14:53:28', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl201453520093157', 'yd-7111', '2016-09-20 14:53:52', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl201453588733262', 'yd-7111', '2016-09-20 14:53:58', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl201454105411266', 'yd-7111', '2016-09-20 14:54:10', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl201454112509788', 'yd-7111', '2016-09-20 14:54:11', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl220950132542736', 'yd-7111', '2016-08-22 09:50:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221000268981611', 'yd-7111', '2016-08-22 10:00:26', '添加', 'XtSite', 's221000267297468');
INSERT INTO `timeline` VALUES ('tl221000349695449', 'yd-7111', '2016-08-22 10:00:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221000381972399', 'yd-7111', '2016-08-22 10:00:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221003534899740', 'yd-7111', '2016-08-22 10:03:53', '添加', 'XtSite', 's221003534265769');
INSERT INTO `timeline` VALUES ('tl221003548123855', 'yd-7111', '2016-08-22 10:03:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221003566288321', 'yd-7111', '2016-08-22 10:03:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221003584458890', 'yd-7111', '2016-08-22 10:03:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221004590514346', 'yd-7111', '2016-08-22 10:04:59', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl221004595119709', 'yd-7111', '2016-08-22 10:04:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221005189916713', 'yd-7111', '2016-08-22 10:05:18', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221005281661656', 'yd-7111', '2016-08-22 10:05:28', '添加', 'XtSite', 's221005281112363');
INSERT INTO `timeline` VALUES ('tl221005295363293', 'yd-7111', '2016-08-22 10:05:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221005311916223', 'yd-7111', '2016-08-22 10:05:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221005458923377', 'yd-7111', '2016-08-22 10:05:45', '修改', 'XtSite', 's221005281112363');
INSERT INTO `timeline` VALUES ('tl221005473716564', 'yd-7111', '2016-08-22 10:05:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221005484818899', 'yd-7111', '2016-08-22 10:05:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221010045355332', 'yd-7111', '2016-08-22 10:10:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221010191117352', 'yd-7111', '2016-08-22 10:10:19', '添加', 'XtSite', 's221010190626951');
INSERT INTO `timeline` VALUES ('tl221010204484938', 'yd-7111', '2016-08-22 10:10:20', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221010215657371', 'yd-7111', '2016-08-22 10:10:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221011387475781', 'yd-7111', '2016-08-22 10:11:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221011457427087', 'yd-7111', '2016-08-22 10:11:45', '修改', 'XtSite', 's221010190626951');
INSERT INTO `timeline` VALUES ('tl221011471633354', 'yd-7111', '2016-08-22 10:11:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221011489892401', 'yd-7111', '2016-08-22 10:11:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221016006444076', 'yd-7111', '2016-08-22 10:16:00', '添加', 'XtSite', 's221016005385468');
INSERT INTO `timeline` VALUES ('tl221016015896964', 'yd-7111', '2016-08-22 10:16:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221016034317773', 'yd-7111', '2016-08-22 10:16:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221016095657706', 'yd-7111', '2016-08-22 10:16:09', '修改', 'XtSite', 's221016005385468');
INSERT INTO `timeline` VALUES ('tl221016107721981', 'yd-7111', '2016-08-22 10:16:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221016118921408', 'yd-7111', '2016-08-22 10:16:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221016362772232', 'yd-7111', '2016-08-22 10:16:36', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl221016384837596', 'yd-7111', '2016-08-22 10:16:38', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221016536388403', 'yd-7111', '2016-08-22 10:16:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl221023329401840', 'yd-7111', '2016-08-22 10:23:32', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl221023494233691', 'yd-7111', '2016-08-22 10:23:49', '添加', 'XtBranches', 'b221023493629090');
INSERT INTO `timeline` VALUES ('tl221023510131008', 'yd-7111', '2016-08-22 10:23:51', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl221023598932128', 'yd-7111', '2016-08-22 10:23:59', '修改', 'XtBranches', 'b221023493629090');
INSERT INTO `timeline` VALUES ('tl221024010818110', 'yd-7111', '2016-08-22 10:24:01', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl221030411233560', 'yd-7111', '2016-08-22 10:30:41', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl221030425832573', 'yd-7111', '2016-08-22 10:30:42', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl221030433546292', 'yd-7111', '2016-08-22 10:30:43', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl221030439966438', 'yd-7111', '2016-08-22 10:30:43', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl221030447055609', 'yd-7111', '2016-08-22 10:30:44', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl221030528918625', 'yd-7111', '2016-08-22 10:30:52', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl221030546466154', 'yd-7111', '2016-08-22 10:30:54', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl221030558371134', 'yd-7111', '2016-08-22 10:30:55', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl221030566093673', 'yd-7111', '2016-08-22 10:30:56', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl221030570602723', 'yd-7111', '2016-08-22 10:30:57', '查看', 'CompanySection', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl221030579102677', 'yd-7111', '2016-08-22 10:30:57', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl221030587815589', 'yd-7111', '2016-08-22 10:30:58', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl221030594745408', 'yd-7111', '2016-08-22 10:30:59', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl221031015459800', 'yd-7111', '2016-08-22 10:31:01', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl221031020786291', 'yd-7111', '2016-08-22 10:31:02', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl221031030467396', 'yd-7111', '2016-08-22 10:31:03', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl221031034614839', 'yd-7111', '2016-08-22 10:31:03', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl221032575724407', 'yd-7111', '2016-08-22 10:32:57', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221038176125537', 'yd-7111', '2016-08-22 10:38:17', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221039119108033', 'yd-7111', '2016-08-22 10:39:11', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221039475921505', 'yd-7111', '2016-08-22 10:39:47', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221040146513139', 'yd-7111', '2016-08-22 10:40:14', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221041071751788', 'yd-7111', '2016-08-22 10:41:07', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221041323814087', 'yd-7111', '2016-08-22 10:41:32', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221042304359508', 'yd-7111', '2016-08-22 10:42:30', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221042420132016', 'yd-7111', '2016-08-22 10:42:42', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221043558061378', 'yd-7111', '2016-08-22 10:43:55', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221044106633571', 'yd-7111', '2016-08-22 10:44:10', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221045241068471', 'yd-7111', '2016-08-22 10:45:24', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221046120089073', 'yd-7111', '2016-08-22 10:46:12', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221047171441445', 'yd-7111', '2016-08-22 10:47:17', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221049047692325', 'yd-7111', '2016-08-22 10:49:04', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221050021228785', 'yd-7111', '2016-08-22 10:50:02', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221054315431988', 'yd-7111', '2016-08-22 10:54:31', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221054516743397', 'yd-7111', '2016-08-22 10:54:51', '添加', 'XtZmNumber', 'zm221054516096964');
INSERT INTO `timeline` VALUES ('tl221054531427817', 'yd-7111', '2016-08-22 10:54:53', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221056367181119', 'yd-7111', '2016-08-22 10:56:36', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221057097807780', 'yd-7111', '2016-08-22 10:57:09', '添加', 'XtZmNumber', 'zm221057097269963');
INSERT INTO `timeline` VALUES ('tl221057116325680', 'yd-7111', '2016-08-22 10:57:11', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221057183885934', 'yd-7111', '2016-08-22 10:57:18', '修改', 'XtZmNumber', 'zm221057097269963');
INSERT INTO `timeline` VALUES ('tl221057193267642', 'yd-7111', '2016-08-22 10:57:19', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221057570994853', 'yd-7111', '2016-08-22 10:57:57', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221058076377009', 'yd-7111', '2016-08-22 10:58:07', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221058568177465', 'yd-7111', '2016-08-22 10:58:56', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221059005953203', 'yd-7111', '2016-08-22 10:59:00', '修改', 'FbdListLink', 'sim191029397952513');
INSERT INTO `timeline` VALUES ('tl221059022283423', 'yd-7111', '2016-08-22 10:59:02', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221059487393714', 'yd-7111', '2016-08-22 10:59:48', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221059547935054', 'yd-7111', '2016-08-22 10:59:54', '修改', 'XtZmNumber', 'zm221054516096964');
INSERT INTO `timeline` VALUES ('tl221059559417502', 'yd-7111', '2016-08-22 10:59:55', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221100068176300', 'yd-7111', '2016-08-22 11:00:06', '修改', 'XtZmNumber', 'zm221057097269963');
INSERT INTO `timeline` VALUES ('tl221100075997036', 'yd-7111', '2016-08-22 11:00:07', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221100106832382', 'yd-7111', '2016-08-22 11:00:10', '修改', 'XtZmNumber', 'zm221057097269963');
INSERT INTO `timeline` VALUES ('tl221100118258252', 'yd-7111', '2016-08-22 11:00:11', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221100488571942', 'yd-7111', '2016-08-22 11:00:48', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221100529595360', 'yd-7111', '2016-08-22 11:00:52', '修改', 'FbdListLink', 'sim181458454594897');
INSERT INTO `timeline` VALUES ('tl221100539262485', 'yd-7111', '2016-08-22 11:00:53', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl221100572012400', 'yd-7111', '2016-08-22 11:00:57', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl221101069453797', 'yd-7111', '2016-08-22 11:01:06', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221105591135146', 'yd-7111', '2016-08-22 11:05:59', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221106100951473', 'yd-7111', '2016-08-22 11:06:10', '添加', 'XtZmData', 'd221106100421220');
INSERT INTO `timeline` VALUES ('tl221106111011664', 'yd-7111', '2016-08-22 11:06:11', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221108316544029', 'yd-7111', '2016-08-22 11:08:31', '修改', 'XtZmData', 'd221106100421220');
INSERT INTO `timeline` VALUES ('tl221108328081445', 'yd-7111', '2016-08-22 11:08:32', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221108369244132', 'yd-7111', '2016-08-22 11:08:36', '删除', 'XtZmData', 'd191054201292894');
INSERT INTO `timeline` VALUES ('tl221108377212524', 'yd-7111', '2016-08-22 11:08:37', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221108402798590', 'yd-7111', '2016-08-22 11:08:40', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221108456189982', 'yd-7111', '2016-08-22 11:08:45', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl221111380985935', 'yd-7111', '2016-08-22 11:11:38', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221111387766039', 'yd-7111', '2016-08-22 11:11:38', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl221111394729593', 'yd-7111', '2016-08-22 11:11:39', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221111404217305', 'yd-7111', '2016-08-22 11:11:40', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl221111408903284', 'yd-7111', '2016-08-22 11:11:40', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221324141907849', 'yd-7111', '2016-08-22 13:24:14', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl221350347903768', 'yd-7111', '2016-09-22 13:50:34', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl221428193617916', 'yd-7111', '2016-08-22 14:28:19', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl221555079159935', 'yd-7111', '2016-08-22 15:55:07', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl221559558477110', 'yd-7111', '2016-08-22 15:59:55', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl221609118464953', 'yd-7111', '2016-08-22 16:09:11', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl221610187791070', 'yd-7111', '2016-08-22 16:10:18', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl221610367063484', 'yd-7111', '2016-08-22 16:10:36', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl221611108536254', 'yd-7111', '2016-08-22 16:11:10', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl221611328872631', 'yd-7111', '2016-08-22 16:11:32', '修改', 'Users', 'yd-4221');
INSERT INTO `timeline` VALUES ('tl221611342044652', 'yd-7111', '2016-08-22 16:11:34', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231048158204503', 'yd-6897', '2016-09-23 10:48:15', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl231048169573425', 'yd-6897', '2016-09-23 10:48:16', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl231049345688829', 'yd-7111', '2016-09-23 10:49:34', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231049432696841', 'yd-7111', '2016-09-23 10:49:43', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231049536086167', 'yd-7111', '2016-09-23 10:49:53', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl231115173178321', 'yd-6897', '2016-08-23 11:15:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl231120274015167', 'yd-7111', '2016-08-23 11:20:27', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231120287239691', 'yd-7111', '2016-08-23 11:20:28', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl231120295991110', 'yd-7111', '2016-08-23 11:20:29', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl231120307455105', 'yd-7111', '2016-08-23 11:20:30', '查看', 'CompanySection', 'cs181620462267657');
INSERT INTO `timeline` VALUES ('tl231120318492236', 'yd-7111', '2016-08-23 11:20:31', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl231120328133447', 'yd-7111', '2016-08-23 11:20:32', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl231120337664844', 'yd-7111', '2016-08-23 11:20:33', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl231120346041668', 'yd-7111', '2016-08-23 11:20:34', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl231120354708659', 'yd-7111', '2016-08-23 11:20:35', '查看', 'CompanySection', 'cs181655451313228');
INSERT INTO `timeline` VALUES ('tl231120371712385', 'yd-7111', '2016-08-23 11:20:37', '查看', 'CompanySection', 'cs181647460754333');
INSERT INTO `timeline` VALUES ('tl231120383519357', 'yd-7111', '2016-08-23 11:20:38', '查看', 'CompanySection', 'cs181652394435029');
INSERT INTO `timeline` VALUES ('tl231120406557109', 'yd-7111', '2016-08-23 11:20:40', '查看', 'CompanySection', 'cs181643107762681');
INSERT INTO `timeline` VALUES ('tl231120419861274', 'yd-7111', '2016-08-23 11:20:41', '查看', 'CompanySection', 'cs181701262302450');
INSERT INTO `timeline` VALUES ('tl231120434097324', 'yd-7111', '2016-08-23 11:20:43', '查看', 'CompanySection', 'cs181706154913403');
INSERT INTO `timeline` VALUES ('tl231120544162031', 'yd-7111', '2016-08-23 11:20:54', '查看', 'CompanySection', 'cs181653414299277');
INSERT INTO `timeline` VALUES ('tl231120557235184', 'yd-7111', '2016-08-23 11:20:55', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl231120575318419', 'yd-7111', '2016-08-23 11:20:57', '查看', 'CompanySection', 'cs181704241459215');
INSERT INTO `timeline` VALUES ('tl231121438281359', 'yd-7111', '2016-08-23 11:21:43', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl231121574385500', 'yd-7111', '2016-08-23 11:21:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl231121598585333', 'yd-7111', '2016-08-23 11:21:59', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl231122026112519', 'yd-7111', '2016-08-23 11:22:02', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl231122168663436', 'yd-7111', '2016-08-23 11:22:16', '添加', 'XtZmNumber', 'zm231122167637213');
INSERT INTO `timeline` VALUES ('tl231122178783714', 'yd-7111', '2016-08-23 11:22:17', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl231122212747903', 'yd-7111', '2016-08-23 11:22:21', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl231122322518154', 'yd-7111', '2016-08-23 11:22:32', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl231122375274059', 'yd-7111', '2016-08-23 11:22:37', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231122414246995', 'yd-7111', '2016-08-23 11:22:41', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231122424417954', 'yd-7111', '2016-08-23 11:22:42', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231122445382066', 'yd-7111', '2016-08-23 11:22:44', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231122451249555', 'yd-7111', '2016-08-23 11:22:45', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231122457072281', 'yd-7111', '2016-08-23 11:22:45', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231122475965867', 'yd-7111', '2016-08-23 11:22:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231123061017373', 'yd-7111', '2016-08-23 11:23:06', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231123094056360', 'yd-7111', '2016-08-23 11:23:09', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl231123302718312', 'yd-7111', '2016-08-23 11:23:30', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231123317555870', 'yd-7111', '2016-08-23 11:23:31', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl231123325424180', 'yd-7111', '2016-08-23 11:23:32', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl231123331012932', 'yd-7111', '2016-08-23 11:23:33', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl231125236478990', 'yd-7111', '2016-08-23 11:25:23', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231125563654757', 'yd-7111', '2016-08-23 11:25:56', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231126290607411', 'yd-7111', '2016-08-23 11:26:29', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231126459995180', 'yd-7111', '2016-08-23 11:26:45', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231127112649352', 'yd-7111', '2016-08-23 11:27:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231127119332980', 'yd-7111', '2016-08-23 11:27:11', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231127258121720', 'yd-7111', '2016-08-23 11:27:25', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231127488984222', 'yd-7111', '2016-08-23 11:27:48', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231128180681369', 'yd-7111', '2016-08-23 11:28:18', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231128331351338', 'yd-7111', '2016-08-23 11:28:33', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231128490963646', 'yd-7111', '2016-08-23 11:28:49', '查看', 'CompanySection', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl231128495317485', 'yd-7111', '2016-08-23 11:28:49', '查看', 'CompanySection', 'cs181702540888189');
INSERT INTO `timeline` VALUES ('tl231128499481302', 'yd-7111', '2016-08-23 11:28:49', '查看', 'CompanySection', 'cs181705094221966');
INSERT INTO `timeline` VALUES ('tl231128585176521', 'yd-7111', '2016-08-23 11:28:58', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231129026682837', 'yd-7111', '2016-08-23 11:29:02', '查看', 'CompanySection', 'cs181653050277480');
INSERT INTO `timeline` VALUES ('tl231129030497492', 'yd-7111', '2016-08-23 11:29:03', '查看', 'CompanySection', 'cs181653272846991');
INSERT INTO `timeline` VALUES ('tl231129037529917', 'yd-7111', '2016-08-23 11:29:03', '查看', 'CompanySection', 'cs181708212483843');
INSERT INTO `timeline` VALUES ('tl231129041051375', 'yd-7111', '2016-08-23 11:29:04', '查看', 'CompanySection', 'cs181706319829992');
INSERT INTO `timeline` VALUES ('tl231129052195147', 'yd-7111', '2016-08-23 11:29:05', '查看', 'CompanySection', 'cs181703532303830');
INSERT INTO `timeline` VALUES ('tl231129092372842', 'yd-7111', '2016-08-23 11:29:09', '查看', 'CompanySection', 'cs181622402107364');
INSERT INTO `timeline` VALUES ('tl231129099402549', 'yd-7111', '2016-08-23 11:29:09', '查看', 'CompanySection', 'cs181654040921954');
INSERT INTO `timeline` VALUES ('tl231129182773771', 'yd-7111', '2016-08-23 11:29:18', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231129259882064', 'yd-7111', '2016-08-23 11:29:25', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231129279306979', 'yd-7111', '2016-08-23 11:29:27', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231129368314868', 'yd-7111', '2016-08-23 11:29:36', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl231129381493402', 'yd-7111', '2016-08-23 11:29:38', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl231129389027257', 'yd-7111', '2016-08-23 11:29:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl231129402915401', 'yd-7111', '2016-08-23 11:29:40', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl231129409346203', 'yd-7111', '2016-08-23 11:29:40', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl231129446476648', 'yd-7111', '2016-08-23 11:29:44', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl231129477908967', 'yd-7111', '2016-08-23 11:29:47', '查看', 'CompanySection', 'cs181652031816405');
INSERT INTO `timeline` VALUES ('tl231321363119350', 'yd-7111', '2016-08-23 13:21:36', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl231446293163129', 'yd-7111', '2016-09-23 14:46:29', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231446293166056', 'yd-7111', '2016-09-23 14:46:29', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231446293169745', 'yd-7111', '2016-09-23 14:46:29', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231446331924829', 'yd-7111', '2016-09-23 14:46:33', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231446340871757', 'yd-7111', '2016-09-23 14:46:34', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231446345023660', 'yd-7111', '2016-09-23 14:46:34', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231446452468196', 'yd-7111', '2016-09-23 14:46:45', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl231446497686675', 'yd-7111', '2016-09-23 14:46:49', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231446511422842', 'yd-7111', '2016-09-23 14:46:51', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231446521432239', 'yd-7111', '2016-09-23 14:46:52', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231446529967610', 'yd-7111', '2016-09-23 14:46:52', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231446541563368', 'yd-7111', '2016-09-23 14:46:54', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231446562312927', 'yd-7111', '2016-09-23 14:46:56', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231446571984840', 'yd-7111', '2016-09-23 14:46:57', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231447006259249', 'yd-7111', '2016-09-23 14:47:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231447199268603', 'yd-7111', '2016-09-23 14:47:19', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231447217691825', 'yd-7111', '2016-09-23 14:47:21', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231447225402233', 'yd-7111', '2016-09-23 14:47:22', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231447239889037', 'yd-7111', '2016-09-23 14:47:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231447247917926', 'yd-7111', '2016-09-23 14:47:24', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231447254577463', 'yd-7111', '2016-09-23 14:47:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231447264978805', 'yd-7111', '2016-09-23 14:47:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231447341605886', 'yd-7111', '2016-09-23 14:47:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231447431083349', 'yd-7111', '2016-09-23 14:47:43', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231447447051007', 'yd-7111', '2016-09-23 14:47:44', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231448346625105', 'yd-7111', '2016-09-23 14:48:34', '添加', 'Users', 'yd-7164');
INSERT INTO `timeline` VALUES ('tl231448360852701', 'yd-7111', '2016-09-23 14:48:36', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231449239959215', 'yd-7111', '2016-09-23 14:49:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231449246222511', 'yd-7111', '2016-09-23 14:49:24', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449250654460', 'yd-7111', '2016-09-23 14:49:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449255629545', 'yd-7111', '2016-09-23 14:49:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449259144140', 'yd-7111', '2016-09-23 14:49:25', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231449264283714', 'yd-7111', '2016-09-23 14:49:26', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449267889712', 'yd-7111', '2016-09-23 14:49:26', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449277097114', 'yd-7111', '2016-09-23 14:49:27', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449280867490', 'yd-7111', '2016-09-23 14:49:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231449285471278', 'yd-7111', '2016-09-23 14:49:28', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449290325055', 'yd-7111', '2016-09-23 14:49:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449293805855', 'yd-7111', '2016-09-23 14:49:29', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231449299422272', 'yd-7111', '2016-09-23 14:49:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449305307294', 'yd-7111', '2016-09-23 14:49:30', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231449311273803', 'yd-7111', '2016-09-23 14:49:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449313856087', 'yd-7111', '2016-09-23 14:49:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231449317264903', 'yd-7111', '2016-09-23 14:49:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231449321758722', 'yd-7111', '2016-09-23 14:49:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231449423707448', 'yd-7111', '2016-09-23 14:49:42', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl231449436326513', 'yd-7111', '2016-09-23 14:49:43', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231449482978041', 'yd-7111', '2016-09-23 14:49:48', '修改', 'Users', 'yd-7164');
INSERT INTO `timeline` VALUES ('tl231449496606784', 'yd-7111', '2016-09-23 14:49:49', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231449517351583', 'yd-7164', '2016-09-23 14:49:51', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl231449527997339', 'yd-7164', '2016-09-23 14:49:52', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl231450025219562', 'yd-7111', '2016-09-23 14:50:02', '修改', 'Users', 'yd-7164');
INSERT INTO `timeline` VALUES ('tl231450038495013', 'yd-7111', '2016-09-23 14:50:03', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231450204621046', 'yd-7111', '2016-09-23 14:50:20', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231450246182037', 'yd-7111', '2016-09-23 14:50:24', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231450317477786', 'yd-7164', '2016-09-23 14:50:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231450334833766', 'yd-7111', '2016-09-23 14:50:33', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl231450337012211', 'yd-7164', '2016-09-23 14:50:33', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231450344175461', 'yd-7164', '2016-09-23 14:50:34', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231450362394306', 'yd-7164', '2016-09-23 14:50:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231450374936562', 'yd-7164', '2016-09-23 14:50:37', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231450380598440', 'yd-7164', '2016-09-23 14:50:38', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231450386659642', 'yd-7164', '2016-09-23 14:50:38', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231450397909055', 'yd-7111', '2016-09-23 14:50:39', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231450439811489', 'yd-7164', '2016-09-23 14:50:43', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231451007283564', 'yd-7164', '2016-09-23 14:51:00', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231451030024076', 'yd-7164', '2016-09-23 14:51:03', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231451036373840', 'yd-7164', '2016-09-23 14:51:03', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231451044322300', 'yd-7164', '2016-09-23 14:51:04', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231451112579702', 'yd-7164', '2016-09-23 14:51:11', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231451385887731', 'yd-7164', '2016-09-23 14:51:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl231451411416177', 'yd-7164', '2016-09-23 14:51:41', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231451447255531', 'yd-7164', '2016-09-23 14:51:44', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231451455449861', 'yd-7164', '2016-09-23 14:51:45', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl231451460902339', 'yd-7164', '2016-09-23 14:51:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231451467492120', 'yd-7164', '2016-09-23 14:51:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231451469196120', 'yd-7164', '2016-09-23 14:51:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl231451508919533', 'yd-7164', '2016-09-23 14:51:50', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231452307859729', 'yd-7164', '2016-09-23 14:52:30', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231452318006753', 'yd-7164', '2016-09-23 14:52:31', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl231454336496575', 'yd-7164', '2016-09-23 14:54:33', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl231820540819032', 'yd-7111', '2016-09-23 18:20:54', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl251506379842097', 'yd-7111', '2016-08-25 15:06:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251506428518250', 'yd-7111', '2016-08-25 15:06:42', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251506511367937', 'yd-7111', '2016-08-25 15:06:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251506589467992', 'yd-7111', '2016-08-25 15:06:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507005445345', 'yd-7111', '2016-08-25 15:07:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507017489746', 'yd-7111', '2016-08-25 15:07:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507027821887', 'yd-7111', '2016-08-25 15:07:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507036402665', 'yd-7111', '2016-08-25 15:07:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507043303174', 'yd-7111', '2016-08-25 15:07:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507084986190', 'yd-7111', '2016-08-25 15:07:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507113939763', 'yd-7111', '2016-08-25 15:07:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507128562138', 'yd-7111', '2016-08-25 15:07:12', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507134297944', 'yd-7111', '2016-08-25 15:07:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507256824090', 'yd-7111', '2016-08-25 15:07:25', '删除', 'XtSite', 's221010190626951');
INSERT INTO `timeline` VALUES ('tl251507281593692', 'yd-7111', '2016-08-25 15:07:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507294312010', 'yd-7111', '2016-08-25 15:07:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507316642384', 'yd-7111', '2016-08-25 15:07:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507359109705', 'yd-7111', '2016-08-25 15:07:35', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507377334015', 'yd-7111', '2016-08-25 15:07:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507478821468', 'yd-7111', '2016-08-25 15:07:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507519801313', 'yd-7111', '2016-08-25 15:07:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507544761515', 'yd-7111', '2016-08-25 15:07:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251507555514268', 'yd-7111', '2016-08-25 15:07:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251508358896194', 'yd-7111', '2016-08-25 15:08:35', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251508380254323', 'yd-7111', '2016-08-25 15:08:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251508504185466', 'yd-7111', '2016-08-25 15:08:50', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251508512657513', 'yd-7111', '2016-08-25 15:08:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251509240802652', 'yd-7111', '2016-08-25 15:09:24', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251509257644853', 'yd-7111', '2016-08-25 15:09:25', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251509560327537', 'yd-7111', '2016-08-25 15:09:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251509578911873', 'yd-7111', '2016-08-25 15:09:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510069031604', 'yd-7111', '2016-08-25 15:10:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510082696386', 'yd-7111', '2016-08-25 15:10:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510549274823', 'yd-7111', '2016-08-25 15:10:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510556069912', 'yd-7111', '2016-08-25 15:10:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510561626020', 'yd-7111', '2016-08-25 15:10:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510570088081', 'yd-7111', '2016-08-25 15:10:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251510585914562', 'yd-7111', '2016-08-25 15:10:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl251521553052246', 'yd-7111', '2016-08-25 15:21:55', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251521590291034', 'yd-7111', '2016-08-25 15:21:59', '删除', 'XtBranches', 'b091551235416676');
INSERT INTO `timeline` VALUES ('tl251521599737269', 'yd-7111', '2016-08-25 15:21:59', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251522020943506', 'yd-7111', '2016-08-25 15:22:02', '删除', 'XtBranches', 'b191054138451785');
INSERT INTO `timeline` VALUES ('tl251522030049417', 'yd-7111', '2016-08-25 15:22:03', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251522051868234', 'yd-7111', '2016-08-25 15:22:05', '删除', 'XtBranches', 'b221023493629090');
INSERT INTO `timeline` VALUES ('tl251522059878637', 'yd-7111', '2016-08-25 15:22:05', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527028458616', 'yd-7111', '2016-08-25 15:27:02', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527048021543', 'yd-7111', '2016-08-25 15:27:04', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527178961365', 'yd-7111', '2016-08-25 15:27:17', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527195129842', 'yd-7111', '2016-08-25 15:27:19', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527208753299', 'yd-7111', '2016-08-25 15:27:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527215292768', 'yd-7111', '2016-08-25 15:27:21', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527222068478', 'yd-7111', '2016-08-25 15:27:22', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527227214535', 'yd-7111', '2016-08-25 15:27:22', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527249426314', 'yd-7111', '2016-08-25 15:27:24', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251527266461830', 'yd-7111', '2016-08-25 15:27:26', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251536130511670', 'yd-7111', '2016-08-25 15:36:13', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251536151878452', 'yd-7111', '2016-08-25 15:36:15', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251539053485044', 'yd-7111', '2016-08-25 15:39:05', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251539067853351', 'yd-7111', '2016-08-25 15:39:06', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251539087217801', 'yd-7111', '2016-08-25 15:39:08', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251539098008341', 'yd-7111', '2016-08-25 15:39:09', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl251539321842026', 'yd-7111', '2016-08-25 15:39:32', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl251539358843601', 'yd-7111', '2016-08-25 15:39:35', '删除', 'XtZmNumber', 'zm221057097269963');
INSERT INTO `timeline` VALUES ('tl260938476626351', 'yd-7111', '2016-08-26 09:38:47', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl260938482263552', 'yd-7111', '2016-08-26 09:38:48', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl261002355864719', 'yd-7111', '2016-08-26 10:02:35', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261003021762760', 'yd-7111', '2016-08-26 10:03:02', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl261003035458430', 'yd-7111', '2016-08-26 10:03:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261003483685320', 'yd-7111', '2016-08-26 10:03:48', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261004118405290', 'yd-7111', '2016-08-26 10:04:11', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl261004139961864', 'yd-7111', '2016-08-26 10:04:13', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261004146182648', 'yd-7111', '2016-08-26 10:04:14', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261005051161427', 'yd-7111', '2016-08-26 10:05:05', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261005091514322', 'yd-7111', '2016-09-26 10:05:09', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261005102855469', 'yd-7111', '2016-09-26 10:05:10', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261005295663224', 'yd-7111', '2016-09-26 10:05:29', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261005334505450', 'yd-7111', '2016-09-26 10:05:33', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261005365115720', 'yd-7111', '2016-09-26 10:05:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261005428242639', 'yd-7111', '2016-09-26 10:05:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261005490149764', 'yd-7111', '2016-09-26 10:05:49', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261006194062468', 'yd-7111', '2016-09-26 10:06:19', '添加', 'DaDemand', 'd261006178331111');
INSERT INTO `timeline` VALUES ('tl261006194849541', 'yd-7111', '2016-09-26 10:06:19', '添加', 'DaPerform', 'p261006178712561');
INSERT INTO `timeline` VALUES ('tl261006215876545', 'yd-7111', '2016-09-26 10:06:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261006227417676', 'yd-7111', '2016-09-26 10:06:22', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261006232948702', 'yd-7111', '2016-09-26 10:06:23', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261006235303014', 'yd-7111', '2016-09-26 10:06:23', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261006237334204', 'yd-7111', '2016-09-26 10:06:23', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261006313348057', 'yd-7111', '2016-08-26 10:06:31', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261008032422266', 'yd-7111', '2016-08-26 10:08:03', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261008037814688', 'yd-7111', '2016-08-26 10:08:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261008047822838', 'yd-7111', '2016-08-26 10:08:04', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261008067795716', 'yd-7111', '2016-08-26 10:08:06', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261008219813115', 'yd-7111', '2016-08-26 10:08:21', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261008235481888', 'yd-7111', '2016-08-26 10:08:23', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261008241958406', 'yd-7111', '2016-08-26 10:08:24', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261008245142174', 'yd-7111', '2016-08-26 10:08:24', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl261008253845555', 'yd-7111', '2016-08-26 10:08:25', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl261008264592470', 'yd-7111', '2016-08-26 10:08:26', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl261008270222751', 'yd-7111', '2016-08-26 10:08:27', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl261008271592146', 'yd-7111', '2016-08-26 10:08:27', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl261008568482629', 'yd-7111', '2016-08-26 10:08:56', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261014280523581', 'yd-6897', '2016-08-26 10:14:28', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261014311995152', 'yd-6897', '2016-08-26 10:14:31', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261014371714844', 'yd-6897', '2016-08-26 10:14:37', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261014389165249', 'yd-6897', '2016-08-26 10:14:38', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261014424572203', 'yd-6897', '2016-08-26 10:14:42', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261015134351095', 'yd-6897', '2016-08-26 10:15:13', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261015144185979', 'yd-6897', '2016-08-26 10:15:14', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261015148461415', 'yd-6897', '2016-08-26 10:15:14', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261022573768490', 'yd-6897', '2016-08-26 10:22:57', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl261022585626447', 'yd-6897', '2016-08-26 10:22:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261023009743769', 'yd-6897', '2016-08-26 10:23:00', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261023172706305', 'yd-6897', '2016-08-26 10:23:17', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl261023182198771', 'yd-6897', '2016-08-26 10:23:18', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261039549386983', 'yd-7111', '2016-08-26 10:39:54', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261039574278780', 'yd-7111', '2016-08-26 10:39:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261039583876146', 'yd-7111', '2016-08-26 10:39:58', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261039596101280', 'yd-7111', '2016-08-26 10:39:59', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261044431979115', 'yd-7111', '2016-08-26 10:44:43', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261044453662172', 'yd-7111', '2016-08-26 10:44:45', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261044491166021', 'yd-7111', '2016-08-26 10:44:49', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261044505716643', 'yd-7111', '2016-08-26 10:44:50', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261044588955236', 'yd-7111', '2016-08-26 10:44:58', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261044598655401', 'yd-7111', '2016-08-26 10:44:59', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261045004883887', 'yd-7111', '2016-08-26 10:45:00', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261047530973317', 'yd-7111', '2016-08-26 10:47:53', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261047555709056', 'yd-7111', '2016-08-26 10:47:55', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261047595077472', 'yd-7111', '2016-08-26 10:47:59', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048000856126', 'yd-7111', '2016-08-26 10:48:00', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048033431439', 'yd-7111', '2016-08-26 10:48:03', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048040353659', 'yd-7111', '2016-08-26 10:48:04', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048042559625', 'yd-7111', '2016-08-26 10:48:04', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048046563866', 'yd-7111', '2016-08-26 10:48:04', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048050002010', 'yd-7111', '2016-08-26 10:48:05', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048052708788', 'yd-7111', '2016-08-26 10:48:05', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048055251720', 'yd-7111', '2016-08-26 10:48:05', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048057758202', 'yd-7111', '2016-08-26 10:48:05', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048060262955', 'yd-7111', '2016-08-26 10:48:06', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048062892035', 'yd-7111', '2016-08-26 10:48:06', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048068167642', 'yd-7111', '2016-08-26 10:48:06', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048073284157', 'yd-7111', '2016-08-26 10:48:07', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048078276333', 'yd-7111', '2016-08-26 10:48:07', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048099702206', 'yd-7111', '2016-08-26 10:48:09', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048117476777', 'yd-7111', '2016-08-26 10:48:11', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048122108912', 'yd-7111', '2016-08-26 10:48:12', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048131576919', 'yd-7111', '2016-08-26 10:48:13', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048144441114', 'yd-7111', '2016-08-26 10:48:14', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048164793971', 'yd-7111', '2016-08-26 10:48:16', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048214694395', 'yd-7111', '2016-08-26 10:48:21', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048244713440', 'yd-7111', '2016-08-26 10:48:24', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048251156447', 'yd-7111', '2016-08-26 10:48:25', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048257898421', 'yd-7111', '2016-08-26 10:48:25', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048260504785', 'yd-7111', '2016-08-26 10:48:26', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048265347987', 'yd-7111', '2016-08-26 10:48:26', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048269731165', 'yd-7111', '2016-08-26 10:48:26', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048276961626', 'yd-7111', '2016-08-26 10:48:27', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048279567877', 'yd-7111', '2016-08-26 10:48:27', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048281677496', 'yd-7111', '2016-08-26 10:48:28', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048320356077', 'yd-7111', '2016-08-26 10:48:32', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261048325839858', 'yd-7111', '2016-08-26 10:48:32', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261048333029537', 'yd-7111', '2016-08-26 10:48:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261048340646765', 'yd-7111', '2016-08-26 10:48:34', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261048350264886', 'yd-7111', '2016-08-26 10:48:35', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261048357003638', 'yd-7111', '2016-08-26 10:48:35', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261048360903665', 'yd-7111', '2016-08-26 10:48:36', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261048366867137', 'yd-7111', '2016-08-26 10:48:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261048466079984', 'yd-7111', '2016-08-26 10:48:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261048502791325', 'yd-7111', '2016-08-26 10:48:50', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261048550898179', 'yd-7111', '2016-08-26 10:48:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261048580432868', 'yd-7111', '2016-08-26 10:48:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049017955719', 'yd-7111', '2016-08-26 10:49:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049035578245', 'yd-7111', '2016-08-26 10:49:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049048352562', 'yd-7111', '2016-08-26 10:49:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049059617192', 'yd-7111', '2016-08-26 10:49:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049066179691', 'yd-7111', '2016-08-26 10:49:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049094713766', 'yd-7111', '2016-08-26 10:49:09', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049177038381', 'yd-7111', '2016-08-26 10:49:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049203844274', 'yd-7111', '2016-08-26 10:49:20', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049213307873', 'yd-7111', '2016-08-26 10:49:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049218988336', 'yd-7111', '2016-08-26 10:49:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049226355060', 'yd-7111', '2016-08-26 10:49:22', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049286872561', 'yd-7111', '2016-08-26 10:49:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261049298197985', 'yd-7111', '2016-08-26 10:49:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050412294762', 'yd-7111', '2016-08-26 10:50:41', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050435579850', 'yd-7111', '2016-08-26 10:50:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050447494520', 'yd-7111', '2016-08-26 10:50:44', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050464389618', 'yd-7111', '2016-08-26 10:50:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050475367992', 'yd-7111', '2016-08-26 10:50:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050536866636', 'yd-7111', '2016-08-26 10:50:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050544993407', 'yd-7111', '2016-08-26 10:50:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050551711060', 'yd-7111', '2016-08-26 10:50:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050558973188', 'yd-7111', '2016-08-26 10:50:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050564272695', 'yd-7111', '2016-08-26 10:50:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050568087480', 'yd-7111', '2016-08-26 10:50:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261050594589625', 'yd-7111', '2016-08-26 10:50:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051008158190', 'yd-7111', '2016-08-26 10:51:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051037574004', 'yd-7111', '2016-08-26 10:51:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051044918039', 'yd-7111', '2016-08-26 10:51:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051051236581', 'yd-7111', '2016-08-26 10:51:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051056963308', 'yd-7111', '2016-08-26 10:51:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051064269030', 'yd-7111', '2016-08-26 10:51:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051083901768', 'yd-7111', '2016-08-26 10:51:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051092318426', 'yd-7111', '2016-08-26 10:51:09', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051098096014', 'yd-7111', '2016-08-26 10:51:09', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051105454183', 'yd-7111', '2016-08-26 10:51:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051111972139', 'yd-7111', '2016-08-26 10:51:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051119417360', 'yd-7111', '2016-08-26 10:51:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261051134738244', 'yd-7111', '2016-08-26 10:51:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261052578264291', 'yd-7111', '2016-08-26 10:52:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053009315017', 'yd-7111', '2016-08-26 10:53:00', '删除', 'XtSite', 's191054006947095');
INSERT INTO `timeline` VALUES ('tl261053027826287', 'yd-7111', '2016-08-26 10:53:02', '删除', 'XtSite', 's191058269057400');
INSERT INTO `timeline` VALUES ('tl261053035118951', 'yd-7111', '2016-08-26 10:53:03', '删除', 'XtSite', 's191058303298899');
INSERT INTO `timeline` VALUES ('tl261053045834503', 'yd-7111', '2016-08-26 10:53:04', '删除', 'XtSite', 's191058330942625');
INSERT INTO `timeline` VALUES ('tl261053051312234', 'yd-7111', '2016-08-26 10:53:05', '删除', 'XtSite', 's191058357229107');
INSERT INTO `timeline` VALUES ('tl261053057206565', 'yd-7111', '2016-08-26 10:53:05', '删除', 'XtSite', 's191058384265439');
INSERT INTO `timeline` VALUES ('tl261053063512052', 'yd-7111', '2016-08-26 10:53:06', '删除', 'XtSite', 's191058413926709');
INSERT INTO `timeline` VALUES ('tl261053069557018', 'yd-7111', '2016-08-26 10:53:06', '删除', 'XtSite', 's191058441643160');
INSERT INTO `timeline` VALUES ('tl261053080213571', 'yd-7111', '2016-08-26 10:53:08', '删除', 'XtSite', 's191058504459259');
INSERT INTO `timeline` VALUES ('tl261053090711043', 'yd-7111', '2016-08-26 10:53:09', '删除', 'XtSite', 's191058534828840');
INSERT INTO `timeline` VALUES ('tl261053095985098', 'yd-7111', '2016-08-26 10:53:09', '删除', 'XtSite', 's191058558231085');
INSERT INTO `timeline` VALUES ('tl261053100823904', 'yd-7111', '2016-08-26 10:53:10', '删除', 'XtSite', 's191059004788656');
INSERT INTO `timeline` VALUES ('tl261053106391541', 'yd-7111', '2016-08-26 10:53:10', '删除', 'XtSite', 's191059062484646');
INSERT INTO `timeline` VALUES ('tl261053110635625', 'yd-7111', '2016-08-26 10:53:11', '删除', 'XtSite', 's191059090189213');
INSERT INTO `timeline` VALUES ('tl261053115541842', 'yd-7111', '2016-08-26 10:53:11', '删除', 'XtSite', 's191059124542849');
INSERT INTO `timeline` VALUES ('tl261053126017073', 'yd-7111', '2016-08-26 10:53:12', '删除', 'XtSite', 's191112513732214');
INSERT INTO `timeline` VALUES ('tl261053134752342', 'yd-7111', '2016-08-26 10:53:13', '删除', 'XtSite', 's191113070806250');
INSERT INTO `timeline` VALUES ('tl261053140149692', 'yd-7111', '2016-08-26 10:53:14', '删除', 'XtSite', 's191113097377519');
INSERT INTO `timeline` VALUES ('tl261053149703376', 'yd-7111', '2016-08-26 10:53:14', '删除', 'XtSite', 's191113125439666');
INSERT INTO `timeline` VALUES ('tl261053155349144', 'yd-7111', '2016-08-26 10:53:15', '删除', 'XtSite', 's191113155324655');
INSERT INTO `timeline` VALUES ('tl261053162822600', 'yd-7111', '2016-08-26 10:53:16', '删除', 'XtSite', 's191113179956382');
INSERT INTO `timeline` VALUES ('tl261053183136284', 'yd-7111', '2016-08-26 10:53:18', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053196862659', 'yd-7111', '2016-08-26 10:53:19', '删除', 'XtSite', 's191113227959576');
INSERT INTO `timeline` VALUES ('tl261053202467558', 'yd-7111', '2016-08-26 10:53:20', '删除', 'XtSite', 's191113268427156');
INSERT INTO `timeline` VALUES ('tl261053207535865', 'yd-7111', '2016-08-26 10:53:20', '删除', 'XtSite', 's191113302884089');
INSERT INTO `timeline` VALUES ('tl261053218014811', 'yd-7111', '2016-08-26 10:53:21', '删除', 'XtSite', 's191113338662176');
INSERT INTO `timeline` VALUES ('tl261053235538071', 'yd-7111', '2016-08-26 10:53:23', '删除', 'XtSite', 's191113366332008');
INSERT INTO `timeline` VALUES ('tl261053270551784', 'yd-7111', '2016-08-26 10:53:27', '删除', 'XtSite', 's221000267297468');
INSERT INTO `timeline` VALUES ('tl261053284098314', 'yd-7111', '2016-08-26 10:53:28', '删除', 'XtSite', 's221005281112363');
INSERT INTO `timeline` VALUES ('tl261053314645451', 'yd-7111', '2016-08-26 10:53:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053327889083', 'yd-7111', '2016-08-26 10:53:32', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053337027890', 'yd-7111', '2016-08-26 10:53:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053346255818', 'yd-7111', '2016-08-26 10:53:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053392051084', 'yd-7111', '2016-08-26 10:53:39', '删除', 'XtSite', 's191053552467624');
INSERT INTO `timeline` VALUES ('tl261053420311285', 'yd-7111', '2016-08-26 10:53:42', '删除', 'XtSite', 's221003534265769');
INSERT INTO `timeline` VALUES ('tl261053436405051', 'yd-7111', '2016-08-26 10:53:43', '删除', 'XtSite', 's091508433924168');
INSERT INTO `timeline` VALUES ('tl261053444177324', 'yd-7111', '2016-08-26 10:53:44', '删除', 'XtSite', 's221016005385468');
INSERT INTO `timeline` VALUES ('tl261053457987794', 'yd-7111', '2016-08-26 10:53:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053478757742', 'yd-7111', '2016-08-26 10:53:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053483139801', 'yd-7111', '2016-08-26 10:53:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053487847517', 'yd-7111', '2016-08-26 10:53:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053494567497', 'yd-7111', '2016-08-26 10:53:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053498399139', 'yd-7111', '2016-08-26 10:53:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053508714962', 'yd-7111', '2016-08-26 10:53:50', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053518059826', 'yd-7111', '2016-08-26 10:53:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053526772234', 'yd-7111', '2016-08-26 10:53:52', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053536257218', 'yd-7111', '2016-08-26 10:53:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053542834228', 'yd-7111', '2016-08-26 10:53:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053549514170', 'yd-7111', '2016-08-26 10:53:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053555063999', 'yd-7111', '2016-08-26 10:53:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053559915796', 'yd-7111', '2016-08-26 10:53:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053564854299', 'yd-7111', '2016-08-26 10:53:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053570003258', 'yd-7111', '2016-08-26 10:53:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053583503788', 'yd-7111', '2016-08-26 10:53:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053588694026', 'yd-7111', '2016-08-26 10:53:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053593497348', 'yd-7111', '2016-08-26 10:53:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261053598377896', 'yd-7111', '2016-08-26 10:53:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054005674684', 'yd-7111', '2016-08-26 10:54:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054014035646', 'yd-7111', '2016-08-26 10:54:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054020614316', 'yd-7111', '2016-08-26 10:54:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054025485477', 'yd-7111', '2016-08-26 10:54:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054031223414', 'yd-7111', '2016-08-26 10:54:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054037235651', 'yd-7111', '2016-08-26 10:54:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054045209232', 'yd-7111', '2016-08-26 10:54:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054261015792', 'yd-7111', '2016-08-26 10:54:26', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054287301785', 'yd-7111', '2016-08-26 10:54:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054353753233', 'yd-7111', '2016-08-26 10:54:35', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054364408284', 'yd-7111', '2016-08-26 10:54:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054370558337', 'yd-7111', '2016-08-26 10:54:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054376293797', 'yd-7111', '2016-08-26 10:54:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054381759819', 'yd-7111', '2016-08-26 10:54:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054409456874', 'yd-7111', '2016-08-26 10:54:40', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261054450988554', 'yd-7111', '2016-08-26 10:54:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261056219901048', 'yd-7111', '2016-08-26 10:56:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261056241127754', 'yd-7111', '2016-08-26 10:56:24', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261056290088242', 'yd-7111', '2016-08-26 10:56:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261056427666249', 'yd-7111', '2016-08-26 10:56:42', '添加', 'XtSite', 's261056426732801');
INSERT INTO `timeline` VALUES ('tl261056491543496', 'yd-7111', '2016-08-26 10:56:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261056525607559', 'yd-7111', '2016-08-26 10:56:52', '删除', 'XtSite', 's261056426732801');
INSERT INTO `timeline` VALUES ('tl261057306874518', 'yd-7111', '2016-08-26 10:57:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261057308854027', 'yd-7111', '2016-08-26 10:57:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261057332069429', 'yd-7111', '2016-08-26 10:57:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261057370712888', 'yd-7111', '2016-08-26 10:57:37', '添加', 'XtSite', 's261057369344159');
INSERT INTO `timeline` VALUES ('tl261057403457051', 'yd-7111', '2016-08-26 10:57:40', '删除', 'XtSite', 's261057369344159');
INSERT INTO `timeline` VALUES ('tl261057448058636', 'yd-7111', '2016-08-26 10:57:44', '添加', 'XtSite', 's261057446781945');
INSERT INTO `timeline` VALUES ('tl261057509748014', 'yd-7111', '2016-08-26 10:57:50', '修改', 'XtSite', 's261057446781945');
INSERT INTO `timeline` VALUES ('tl261058032295632', 'yd-7111', '2016-08-26 10:58:03', '删除', 'XtSite', 's261057446781945');
INSERT INTO `timeline` VALUES ('tl261058088498018', 'yd-7111', '2016-08-26 10:58:08', '添加', 'XtSite', 's261058087156923');
INSERT INTO `timeline` VALUES ('tl261058142353840', 'yd-7111', '2016-08-26 10:58:14', '删除', 'XtSite', 's261058087156923');
INSERT INTO `timeline` VALUES ('tl261058178396283', 'yd-7111', '2016-08-26 10:58:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058187018485', 'yd-7111', '2016-08-26 10:58:18', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058195361097', 'yd-7111', '2016-08-26 10:58:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058205004297', 'yd-7111', '2016-08-26 10:58:20', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058213653316', 'yd-7111', '2016-08-26 10:58:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058231931599', 'yd-7111', '2016-08-26 10:58:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058265287004', 'yd-7111', '2016-08-26 10:58:26', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058276471816', 'yd-7111', '2016-08-26 10:58:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058289651264', 'yd-7111', '2016-08-26 10:58:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058301503367', 'yd-7111', '2016-08-26 10:58:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058308666316', 'yd-7111', '2016-08-26 10:58:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058314384321', 'yd-7111', '2016-08-26 10:58:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058320189378', 'yd-7111', '2016-08-26 10:58:32', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058327483665', 'yd-7111', '2016-08-26 10:58:32', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058332374521', 'yd-7111', '2016-08-26 10:58:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058337715332', 'yd-7111', '2016-08-26 10:58:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058370795717', 'yd-7111', '2016-08-26 10:58:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058378575691', 'yd-7111', '2016-08-26 10:58:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058386335460', 'yd-7111', '2016-08-26 10:58:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058391644299', 'yd-7111', '2016-08-26 10:58:39', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058400539826', 'yd-7111', '2016-08-26 10:58:40', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058408315353', 'yd-7111', '2016-08-26 10:58:40', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058413386925', 'yd-7111', '2016-08-26 10:58:41', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058419104727', 'yd-7111', '2016-08-26 10:58:41', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058425053659', 'yd-7111', '2016-08-26 10:58:42', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058434107135', 'yd-7111', '2016-08-26 10:58:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058441478626', 'yd-7111', '2016-08-26 10:58:44', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058448363932', 'yd-7111', '2016-08-26 10:58:44', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058457853265', 'yd-7111', '2016-08-26 10:58:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058468241251', 'yd-7111', '2016-08-26 10:58:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058474993577', 'yd-7111', '2016-08-26 10:58:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261058481748543', 'yd-7111', '2016-08-26 10:58:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261059002592700', 'yd-7111', '2016-08-26 10:59:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261059177336424', 'yd-7111', '2016-08-26 10:59:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261059210357360', 'yd-7111', '2016-08-26 10:59:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261059414359935', 'yd-7111', '2016-08-26 10:59:41', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102119564475', 'yd-7111', '2016-08-26 11:02:11', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102124129660', 'yd-7111', '2016-08-26 11:02:12', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102149875280', 'yd-7111', '2016-08-26 11:02:14', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102158122634', 'yd-7111', '2016-08-26 11:02:15', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102189629276', 'yd-7111', '2016-08-26 11:02:18', '添加', 'XtBranches', 'b261102188472966');
INSERT INTO `timeline` VALUES ('tl261102209699164', 'yd-7111', '2016-08-26 11:02:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102270365326', 'yd-7111', '2016-08-26 11:02:27', '修改', 'XtBranches', 'b261102188472966');
INSERT INTO `timeline` VALUES ('tl261102321529863', 'yd-7111', '2016-08-26 11:02:32', '删除', 'XtBranches', 'b261102188472966');
INSERT INTO `timeline` VALUES ('tl261102375923516', 'yd-7111', '2016-08-26 11:02:37', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261102483917312', 'yd-7111', '2016-08-26 11:02:48', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261134311936836', 'yd-7111', '2016-09-26 11:34:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261135373531389', 'yd-7111', '2016-09-26 11:35:37', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261135384512067', 'yd-7111', '2016-09-26 11:35:38', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261136007906101', 'yd-7111', '2016-09-26 11:36:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261136014627856', 'yd-7111', '2016-09-26 11:36:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261136235241940', 'yd-7111', '2016-09-26 11:36:23', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261136303416678', 'yd-7111', '2016-09-26 11:36:30', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261136341653217', 'yd-7111', '2016-09-26 11:36:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261136378402623', 'yd-7111', '2016-09-26 11:36:37', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261137413005411', 'yd-7111', '2016-09-26 11:37:41', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261137441799995', 'yd-7111', '2016-09-26 11:37:44', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261138053994238', 'yd-7111', '2016-09-26 11:38:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261138288833580', 'yd-7111', '2016-09-26 11:38:28', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261139080577258', 'yd-7111', '2016-09-26 11:39:08', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261139161362924', 'yd-7111', '2016-09-26 11:39:16', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261139217018784', 'yd-7111', '2016-09-26 11:39:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261139229472552', 'yd-7111', '2016-09-26 11:39:22', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261139244076419', 'yd-7111', '2016-09-26 11:39:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261139282111593', 'yd-7111', '2016-09-26 11:39:28', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261139310379001', 'yd-7111', '2016-09-26 11:39:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261143236333374', 'yd-7111', '2016-08-26 11:43:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl261143273105048', 'yd-7111', '2016-08-26 11:43:27', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261143289023213', 'yd-7111', '2016-08-26 11:43:28', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261143331668726', 'yd-7111', '2016-08-26 11:43:33', '添加', 'XtZmNumber', 'zm261143329682082');
INSERT INTO `timeline` VALUES ('tl261143402414858', 'yd-7111', '2016-08-26 11:43:40', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261143444007071', 'yd-7111', '2016-08-26 11:43:44', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261143474139370', 'yd-7111', '2016-08-26 11:43:47', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261143517638485', 'yd-7111', '2016-08-26 11:43:51', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261145136913364', 'yd-7111', '2016-08-26 11:45:13', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl261145140859913', 'yd-7111', '2016-08-26 11:45:14', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261145179774970', 'yd-7111', '2016-08-26 11:45:17', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl261145250853968', 'yd-7111', '2016-08-26 11:45:25', '修改', 'XtZmNumber', 'zm261143329682082');
INSERT INTO `timeline` VALUES ('tl261145287197357', 'yd-7111', '2016-08-26 11:45:28', '删除', 'XtZmNumber', 'zm261143329682082');
INSERT INTO `timeline` VALUES ('tl261145310885485', 'yd-7111', '2016-08-26 11:45:31', '添加', 'XtZmNumber', 'zm261145308816271');
INSERT INTO `timeline` VALUES ('tl261145400885886', 'yd-7111', '2016-08-26 11:45:40', '添加', 'XtZmNumber', 'zm261145398912476');
INSERT INTO `timeline` VALUES ('tl261145456439900', 'yd-7111', '2016-08-26 11:45:45', '添加', 'XtZmNumber', 'zm261145454932948');
INSERT INTO `timeline` VALUES ('tl261145576294270', 'yd-7111', '2016-08-26 11:45:57', '删除', 'XtZmNumber', 'zm261145454932948');
INSERT INTO `timeline` VALUES ('tl261145585966041', 'yd-7111', '2016-08-26 11:45:58', '删除', 'XtZmNumber', 'zm261145398912476');
INSERT INTO `timeline` VALUES ('tl261145599503053', 'yd-7111', '2016-08-26 11:45:59', '删除', 'XtZmNumber', 'zm261145308816271');
INSERT INTO `timeline` VALUES ('tl261146017672693', 'yd-7111', '2016-08-26 11:46:01', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261146037014125', 'yd-7111', '2016-08-26 11:46:03', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261146146517481', 'yd-7111', '2016-08-26 11:46:14', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261146165804675', 'yd-7111', '2016-08-26 11:46:16', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl261146362202977', 'yd-7111', '2016-08-26 11:46:36', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261146430068218', 'yd-7111', '2016-08-26 11:46:43', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261146444396749', 'yd-7111', '2016-08-26 11:46:44', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261146471935741', 'yd-7111', '2016-08-26 11:46:47', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261147014991231', 'yd-7111', '2016-08-26 11:47:01', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261147471898603', 'yd-6897', '2016-08-26 11:47:47', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261147559253398', 'yd-6897', '2016-08-26 11:47:55', '查看', 'GoOut', null);
INSERT INTO `timeline` VALUES ('tl261147582082408', 'yd-6897', '2016-08-26 11:47:58', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261148049066138', 'yd-7111', '2016-09-26 11:48:04', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261148261978763', 'yd-7111', '2016-09-26 11:48:26', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261148309727398', 'yd-6897', '2016-08-26 11:48:30', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261148324942432', 'yd-6897', '2016-08-26 11:48:32', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261148332451037', 'yd-6897', '2016-08-26 11:48:33', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261148361569194', 'yd-6897', '2016-08-26 11:48:36', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261148414858726', 'yd-7111', '2016-09-26 11:48:41', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261148582963571', 'yd-7111', '2016-09-26 11:48:58', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149080671441', 'yd-7111', '2016-09-26 11:49:08', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149114152584', 'yd-7111', '2016-09-26 11:49:11', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149150946066', 'yd-7111', '2016-09-26 11:49:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149177008290', 'yd-7111', '2016-09-26 11:49:17', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149224581732', 'yd-7111', '2016-09-26 11:49:22', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261149284604449', 'yd-7111', '2016-09-26 11:49:28', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261149329276246', 'yd-7111', '2016-09-26 11:49:32', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261149357162078', 'yd-7111', '2016-09-26 11:49:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261149394846493', 'yd-7111', '2016-09-26 11:49:39', '修改', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261150083177434', 'yd-7111', '2016-09-26 11:50:08', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261150111459498', 'yd-7111', '2016-09-26 11:50:11', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261150146558486', 'yd-7111', '2016-09-26 11:50:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261150217406302', 'yd-7111', '2016-09-26 11:50:21', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261150259259856', 'yd-7111', '2016-09-26 11:50:25', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261325006809561', 'yd-7111', '2016-09-26 13:25:00', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261325460267312', 'yd-7111', '2016-09-26 13:25:46', '添加', 'DaDemand', 'd261325444775837');
INSERT INTO `timeline` VALUES ('tl261325460704359', 'yd-7111', '2016-09-26 13:25:46', '添加', 'DaPerform', 'p261325445761924');
INSERT INTO `timeline` VALUES ('tl261328598734963', 'yd-7111', '2016-09-26 13:28:59', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261329172468886', 'yd-7111', '2016-09-26 13:29:17', '添加', 'DaDemand', 'd261329159073849');
INSERT INTO `timeline` VALUES ('tl261329172786976', 'yd-7111', '2016-09-26 13:29:17', '添加', 'DaPerform', 'p261329159562008');
INSERT INTO `timeline` VALUES ('tl261329409861097', 'yd-7111', '2016-09-26 13:29:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330200939897', 'yd-7111', '2016-09-26 13:30:20', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330263298170', 'yd-7111', '2016-09-26 13:30:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330295656643', 'yd-7111', '2016-09-26 13:30:29', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330319724817', 'yd-7111', '2016-09-26 13:30:31', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330350418961', 'yd-7111', '2016-09-26 13:30:35', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330373793575', 'yd-7111', '2016-09-26 13:30:37', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261330401098765', 'yd-7111', '2016-09-26 13:30:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261331150742510', 'yd-7111', '2016-09-26 13:31:15', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261331191568096', 'yd-7111', '2016-09-26 13:31:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261331321936276', 'yd-7111', '2016-09-26 13:31:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261331378929938', 'yd-7111', '2016-09-26 13:31:37', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261331416995262', 'yd-7111', '2016-09-26 13:31:41', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261359421057006', 'yd-7111', '2016-09-26 13:59:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261359446393428', 'yd-7111', '2016-09-26 13:59:44', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261359468981564', 'yd-7111', '2016-09-26 13:59:46', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261359474722648', 'yd-7111', '2016-09-26 13:59:47', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261359564906730', 'yd-7111', '2016-09-26 13:59:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261359582915093', 'yd-7111', '2016-09-26 13:59:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261359589119110', 'yd-7111', '2016-09-26 13:59:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261359592378071', 'yd-7111', '2016-09-26 13:59:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261401518762602', 'yd-7111', '2016-09-26 14:01:51', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261401520099907', 'yd-7111', '2016-09-26 14:01:52', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261401539712485', 'yd-7111', '2016-09-26 14:01:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261401554218234', 'yd-7111', '2016-09-26 14:01:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261402040865128', 'yd-7111', '2016-09-26 14:02:04', '添加', 'DaDemand', 'd261402025903488');
INSERT INTO `timeline` VALUES ('tl261402041222530', 'yd-7111', '2016-09-26 14:02:04', '添加', 'DaPerform', 'p261402026396555');
INSERT INTO `timeline` VALUES ('tl261402051034266', 'yd-7111', '2016-09-26 14:02:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261402162037821', 'yd-7111', '2016-09-26 14:02:16', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261404402167324', 'yd-7111', '2016-09-26 14:04:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261404464897725', 'yd-7111', '2016-09-26 14:04:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261404510601993', 'yd-7111', '2016-09-26 14:04:51', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261404510607464', 'yd-7111', '2016-09-26 14:04:51', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261404515899548', 'yd-7111', '2016-09-26 14:04:51', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261404584606129', 'yd-7111', '2016-09-26 14:04:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261405004291342', 'yd-7111', '2016-09-26 14:05:00', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261405012507770', 'yd-7111', '2016-09-26 14:05:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261405019696338', 'yd-7111', '2016-09-26 14:05:01', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261405024336492', 'yd-7111', '2016-09-26 14:05:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261405069726018', 'yd-7111', '2016-09-26 14:05:06', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl261405106602854', 'yd-7111', '2016-09-26 14:05:10', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl261405123917108', 'yd-7111', '2016-09-26 14:05:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl261405129517125', 'yd-7111', '2016-09-26 14:05:12', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl261405134878687', 'yd-7111', '2016-09-26 14:05:13', '查看', 'Goods', null);
INSERT INTO `timeline` VALUES ('tl261405249439554', 'yd-7111', '2016-09-26 14:05:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261405271766569', 'yd-7111', '2016-09-26 14:05:27', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl261405292408154', 'yd-7111', '2016-09-26 14:05:29', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261405309436880', 'yd-7111', '2016-09-26 14:05:30', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261405347329664', 'yd-7111', '2016-09-26 14:05:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261405361256321', 'yd-7111', '2016-09-26 14:05:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261523455719752', 'yd-7111', '2016-09-26 15:23:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261525127803346', 'yd-7111', '2016-09-26 15:25:12', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261525278163649', 'yd-7111', '2016-09-26 15:25:27', '添加', 'DaDemand', 'd261525255646699');
INSERT INTO `timeline` VALUES ('tl261525278679657', 'yd-7111', '2016-09-26 15:25:27', '添加', 'DaPerform', 'p261525256108228');
INSERT INTO `timeline` VALUES ('tl261528408844007', 'yd-7111', '2016-09-26 15:28:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261528478025740', 'yd-7111', '2016-09-26 15:28:47', '添加', 'DaDemand', 'd261528468743156');
INSERT INTO `timeline` VALUES ('tl261528478273659', 'yd-7111', '2016-09-26 15:28:47', '添加', 'DaPerform', 'p261528469085586');
INSERT INTO `timeline` VALUES ('tl261546172572577', 'yd-7111', '2016-09-26 15:46:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261546312034516', 'yd-7111', '2016-09-26 15:46:31', '添加', 'DaDemand', 'd261546301738141');
INSERT INTO `timeline` VALUES ('tl261546312296725', 'yd-7111', '2016-09-26 15:46:31', '添加', 'DaPerform', 'p261546302207989');
INSERT INTO `timeline` VALUES ('tl261549229536122', 'yd-7111', '2016-09-26 15:49:22', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261549431523602', 'yd-7111', '2016-09-26 15:49:43', '添加', 'DaDemand', 'd261549417735353');
INSERT INTO `timeline` VALUES ('tl261549432206864', 'yd-7111', '2016-09-26 15:49:43', '添加', 'DaPerform', 'p261549418229420');
INSERT INTO `timeline` VALUES ('tl261551036892399', 'yd-7111', '2016-09-26 15:51:03', '添加', 'DaDemand', 'd261551024897290');
INSERT INTO `timeline` VALUES ('tl261551038249947', 'yd-7111', '2016-09-26 15:51:03', '添加', 'DaPerform', 'p261551025892659');
INSERT INTO `timeline` VALUES ('tl261613404751912', 'yd-7111', '2016-09-26 16:13:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261613450983291', 'yd-7111', '2016-09-26 16:13:45', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl261613467736262', 'yd-7111', '2016-09-26 16:13:46', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl261613526258106', 'yd-7111', '2016-09-26 16:13:52', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261613575202760', 'yd-7111', '2016-09-26 16:13:57', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261614001181830', 'yd-7111', '2016-09-26 16:14:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261614015529258', 'yd-7111', '2016-09-26 16:14:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261614043493889', 'yd-7111', '2016-09-26 16:14:04', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl261614051568087', 'yd-7111', '2016-09-26 16:14:05', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl261614060173980', 'yd-7111', '2016-09-26 16:14:06', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl261614082205639', 'yd-7111', '2016-09-26 16:14:08', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl261614548941703', 'yd-7111', '2016-09-26 16:14:54', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl261614576596531', 'yd-7111', '2016-09-26 16:14:57', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl261615029913374', 'yd-7111', '2016-09-26 16:15:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261615049402838', 'yd-7111', '2016-09-26 16:15:04', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261615092284489', 'yd-7111', '2016-09-26 16:15:09', '修改', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261615107037134', 'yd-7111', '2016-09-26 16:15:10', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261615120144178', 'yd-7111', '2016-09-26 16:15:12', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261615158934235', 'yd-7111', '2016-09-26 16:15:15', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261615199994801', 'yd-7111', '2016-09-26 16:15:19', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261619587398992', 'yd-7111', '2016-09-26 16:19:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261619595683353', 'yd-7111', '2016-09-26 16:19:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620000434755', 'yd-7111', '2016-09-26 16:20:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620034603425', 'yd-7111', '2016-09-26 16:20:03', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620073231551', 'yd-7111', '2016-09-26 16:20:07', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620074469581', 'yd-7111', '2016-09-26 16:20:07', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620085572578', 'yd-7111', '2016-09-26 16:20:08', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl261620089121112', 'yd-7111', '2016-09-26 16:20:08', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl261620230577631', 'yd-7111', '2016-09-26 16:20:23', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl261620303332463', 'yd-7111', '2016-09-26 16:20:30', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261620347339876', 'yd-7111', '2016-09-26 16:20:34', '修改', 'DaPerform', 'p261551025892659');
INSERT INTO `timeline` VALUES ('tl261620347598153', 'yd-7111', '2016-09-26 16:20:34', '修改', 'DaPerform', 'p261620334228976');
INSERT INTO `timeline` VALUES ('tl261620365867573', 'yd-7111', '2016-09-26 16:20:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261624150582434', 'yd-7111', '2016-09-26 16:24:15', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261625316982848', 'yd-7111', '2016-09-26 16:25:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625333758658', 'yd-7111', '2016-09-26 16:25:33', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625358962984', 'yd-7111', '2016-09-26 16:25:35', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261625372398211', 'yd-7111', '2016-09-26 16:25:37', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625401059327', 'yd-7111', '2016-09-26 16:25:40', '修改', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625411434949', 'yd-7111', '2016-09-26 16:25:41', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625463215303', 'yd-7111', '2016-09-26 16:25:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625520906189', 'yd-7111', '2016-09-26 16:25:52', '修改', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625531792947', 'yd-7111', '2016-09-26 16:25:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261625579439258', 'yd-7111', '2016-09-26 16:25:57', '修改', 'DaPerform', 'p261549418229420');
INSERT INTO `timeline` VALUES ('tl261625579767553', 'yd-7111', '2016-09-26 16:25:57', '修改', 'DaPerform', 'p261625556496222');
INSERT INTO `timeline` VALUES ('tl261625595573140', 'yd-7111', '2016-09-26 16:25:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261626026973216', 'yd-7111', '2016-09-26 16:26:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261730282684350', 'yd-7111', '2016-09-26 17:30:28', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261730320725982', 'yd-7111', '2016-09-26 17:30:32', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261730352248841', 'yd-7111', '2016-09-26 17:30:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261734359914939', 'yd-7111', '2016-09-26 17:34:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734400994942', 'yd-7111', '2016-09-26 17:34:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734438119832', 'yd-7111', '2016-09-26 17:34:43', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734453405272', 'yd-7111', '2016-09-26 17:34:45', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734483102057', 'yd-7111', '2016-09-26 17:34:48', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734499217334', 'yd-7111', '2016-09-26 17:34:49', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734529138882', 'yd-7111', '2016-09-26 17:34:52', '修改', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261734541591912', 'yd-7111', '2016-09-26 17:34:54', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261734551436233', 'yd-7111', '2016-09-26 17:34:55', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261735001131635', 'yd-7111', '2016-09-26 17:35:00', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261735014647431', 'yd-7111', '2016-09-26 17:35:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261735022323151', 'yd-7111', '2016-09-26 17:35:02', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261735027536610', 'yd-7111', '2016-09-26 17:35:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261739517124356', 'yd-7111', '2016-09-26 17:39:51', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261743552332848', 'yd-7111', '2016-09-26 17:43:55', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261748129639076', 'yd-7111', '2016-09-26 17:48:12', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261748151111226', 'yd-7111', '2016-09-26 17:48:15', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261748153346782', 'yd-7111', '2016-09-26 17:48:15', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261748537067710', 'yd-7111', '2016-09-26 17:48:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261749202233330', 'yd-7111', '2016-09-26 17:49:20', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261749259574933', 'yd-7111', '2016-09-26 17:49:25', '修改', 'DaPerform', 'p261528469085586');
INSERT INTO `timeline` VALUES ('tl261749308239222', 'yd-7111', '2016-09-26 17:49:30', '修改', 'DaPerform', 'p261525256108228');
INSERT INTO `timeline` VALUES ('tl261749318138323', 'yd-7111', '2016-09-26 17:49:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261749429977159', 'yd-7111', '2016-09-26 17:49:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261753024605456', 'yd-7111', '2016-09-26 17:53:02', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261753028638715', 'yd-7111', '2016-09-26 17:53:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261753093505888', 'yd-7111', '2016-09-26 17:53:09', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261753097046039', 'yd-7111', '2016-09-26 17:53:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261753433144226', 'yd-7111', '2016-09-26 17:53:43', '修改', 'DaPerform', 'p261625556496222');
INSERT INTO `timeline` VALUES ('tl261753433646390', 'yd-7111', '2016-09-26 17:53:43', '修改', 'DaPerform', 'p261625556496222');
INSERT INTO `timeline` VALUES ('tl261753535074480', 'yd-7111', '2016-09-26 17:53:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261753555538291', 'yd-7111', '2016-09-26 17:53:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261753595519985', 'yd-7111', '2016-09-26 17:53:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754037294870', 'yd-7111', '2016-09-26 17:54:03', '修改', 'DaPerform', 'p261753422042429');
INSERT INTO `timeline` VALUES ('tl261754048042723', 'yd-7111', '2016-09-26 17:54:04', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754129682746', 'yd-7111', '2016-09-26 17:54:12', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261754197979061', 'yd-7111', '2016-09-26 17:54:19', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754247889560', 'yd-7111', '2016-09-26 17:54:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754317721111', 'yd-7111', '2016-09-26 17:54:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261754327122939', 'yd-7111', '2016-09-26 17:54:32', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754381622268', 'yd-7111', '2016-09-26 17:54:38', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261754385988132', 'yd-7111', '2016-09-26 17:54:38', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754393326550', 'yd-7111', '2016-09-26 17:54:39', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261754396886278', 'yd-7111', '2016-09-26 17:54:39', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754404206731', 'yd-7111', '2016-09-26 17:54:40', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261754422433872', 'yd-7111', '2016-09-26 17:54:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754433573773', 'yd-7111', '2016-09-26 17:54:43', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754449389357', 'yd-7111', '2016-09-26 17:54:44', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754474967753', 'yd-7111', '2016-09-26 17:54:47', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754494687733', 'yd-7111', '2016-09-26 17:54:49', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261754536864626', 'yd-7111', '2016-09-26 17:54:53', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl261816366478427', 'yd-7111', '2016-09-26 18:16:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261816515803638', 'yd-7111', '2016-09-26 18:16:51', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261816585495443', 'yd-7111', '2016-09-26 18:16:58', '修改', 'DaPerform', 'p261525256108228');
INSERT INTO `timeline` VALUES ('tl261816585711034', 'yd-7111', '2016-09-26 18:16:58', '修改', 'DaPerform', 'p261816575696366');
INSERT INTO `timeline` VALUES ('tl261817043674454', 'yd-7111', '2016-09-26 18:17:04', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261817056992867', 'yd-7111', '2016-09-26 18:17:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261817093852794', 'yd-7111', '2016-09-26 18:17:09', '修改', 'DaPerform', 'p261753422042429');
INSERT INTO `timeline` VALUES ('tl261817105278920', 'yd-7111', '2016-09-26 18:17:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261818146659862', 'yd-7111', '2016-09-26 18:18:14', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261818184717131', 'yd-7111', '2016-09-26 18:18:18', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261818201083431', 'yd-7111', '2016-09-26 18:18:20', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261818235304822', 'yd-7111', '2016-09-26 18:18:23', '修改', 'DaPerform', 'p261546302207989');
INSERT INTO `timeline` VALUES ('tl261818248223428', 'yd-7111', '2016-09-26 18:18:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261818285326274', 'yd-7111', '2016-09-26 18:18:28', '修改', 'DaPerform', 'p261753422042429');
INSERT INTO `timeline` VALUES ('tl261818285531996', 'yd-7111', '2016-09-26 18:18:28', '修改', 'DaPerform', 'p261818275804991');
INSERT INTO `timeline` VALUES ('tl261818300577443', 'yd-7111', '2016-09-26 18:18:30', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261818326485560', 'yd-7111', '2016-09-26 18:18:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261818362737447', 'yd-7111', '2016-09-26 18:18:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261818405582312', 'yd-7111', '2016-09-26 18:18:40', '修改', 'DaPerform', 'p261524060587397');
INSERT INTO `timeline` VALUES ('tl261818415005262', 'yd-7111', '2016-09-26 18:18:41', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261818460105114', 'yd-7111', '2016-09-26 18:18:46', '修改', 'DaPerform', 'p261524060587397');
INSERT INTO `timeline` VALUES ('tl261818460469292', 'yd-7111', '2016-09-26 18:18:46', '修改', 'DaPerform', 'p261818445391058');
INSERT INTO `timeline` VALUES ('tl261818475529775', 'yd-7111', '2016-09-26 18:18:47', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261818511834229', 'yd-7111', '2016-09-26 18:18:51', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl261819046744409', 'yd-7111', '2016-09-26 18:19:04', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl261819056654327', 'yd-7111', '2016-09-26 18:19:05', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl261819077095900', 'yd-7111', '2016-09-26 18:19:07', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl261819097657211', 'yd-7111', '2016-09-26 18:19:09', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819118172267', 'yd-7111', '2016-09-26 18:19:11', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819146468375', 'yd-7111', '2016-09-26 18:19:14', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819216536645', 'yd-7111', '2016-09-26 18:19:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819279881692', 'yd-7111', '2016-09-26 18:19:27', '修改', 'DaPerform', 'p261329159562008');
INSERT INTO `timeline` VALUES ('tl261819295807715', 'yd-7111', '2016-09-26 18:19:29', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819300848562', 'yd-7111', '2016-09-26 18:19:30', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819316292743', 'yd-7111', '2016-09-26 18:19:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819411236587', 'yd-7111', '2016-09-26 18:19:41', '修改', 'DaPerform', 'p261546302207989');
INSERT INTO `timeline` VALUES ('tl261819411569966', 'yd-7111', '2016-09-26 18:19:41', '修改', 'DaPerform', 'p261819398392525');
INSERT INTO `timeline` VALUES ('tl261819428926346', 'yd-7111', '2016-09-26 18:19:42', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261819443608661', 'yd-7111', '2016-09-26 18:19:44', '查看', 'DaDemand', '8141');
INSERT INTO `timeline` VALUES ('tl261819566524410', 'yd-7111', '2016-09-26 18:19:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819585184540', 'yd-7111', '2016-09-26 18:19:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261819595546764', 'yd-7111', '2016-09-26 18:19:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820000507127', 'yd-7111', '2016-09-26 18:20:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820005484702', 'yd-7111', '2016-09-26 18:20:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820022724548', 'yd-7111', '2016-09-26 18:20:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820029349780', 'yd-7111', '2016-09-26 18:20:02', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261820033661028', 'yd-7111', '2016-09-26 18:20:03', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820038249771', 'yd-7111', '2016-09-26 18:20:03', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261820044409123', 'yd-7111', '2016-09-26 18:20:04', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820049098639', 'yd-7111', '2016-09-26 18:20:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261820055988005', 'yd-7111', '2016-09-26 18:20:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820060563616', 'yd-7111', '2016-09-26 18:20:06', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261820167733422', 'yd-7111', '2016-09-26 18:20:16', '修改', 'DaPerform', 'p261818275804991');
INSERT INTO `timeline` VALUES ('tl261820168254368', 'yd-7111', '2016-09-26 18:20:16', '修改', 'DaPerform', 'p261818275804991');
INSERT INTO `timeline` VALUES ('tl261820182793511', 'yd-7111', '2016-09-26 18:20:18', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820198342676', 'yd-7111', '2016-09-26 18:20:19', '查看', 'DaPerform', '8141');
INSERT INTO `timeline` VALUES ('tl261820239692132', 'yd-7111', '2016-09-26 18:20:23', '查看', 'DaPerform', '5353');
INSERT INTO `timeline` VALUES ('tl261820288268152', 'yd-7111', '2016-09-26 18:20:28', '修改', 'DaPerform', 'p261820158812553');
INSERT INTO `timeline` VALUES ('tl261820301269364', 'yd-7111', '2016-09-26 18:20:30', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl261820356123343', 'yd-7111', '2016-09-26 18:20:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820362303507', 'yd-7111', '2016-09-26 18:20:36', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261820364021701', 'yd-7111', '2016-09-26 18:20:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820373281028', 'yd-7111', '2016-09-26 18:20:37', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl261820377297234', 'yd-7111', '2016-09-26 18:20:37', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl261820386948247', 'yd-7111', '2016-09-26 18:20:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271014364982305', 'yd-7111', '2016-09-27 10:14:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271015147081107', 'yd-7111', '2016-09-27 10:15:14', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271016444457769', 'yd-7111', '2016-09-27 10:16:44', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271016568145777', 'yd-7111', '2016-09-27 10:16:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271016582575052', 'yd-7111', '2016-09-27 10:16:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271016586397083', 'yd-7111', '2016-09-27 10:16:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271017010024497', 'yd-7111', '2016-09-27 10:17:01', '查看', 'ZmBq', null);
INSERT INTO `timeline` VALUES ('tl271017010025164', 'yd-7111', '2016-09-27 10:17:01', '查看', 'ZmBq', null);
INSERT INTO `timeline` VALUES ('tl271017019038420', 'yd-7111', '2016-09-27 10:17:01', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl271017022175479', 'yd-7111', '2016-09-27 10:17:02', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl271017033232427', 'yd-7111', '2016-09-27 10:17:03', '查看', 'FbdComputer', null);
INSERT INTO `timeline` VALUES ('tl271017036337586', 'yd-7111', '2016-09-27 10:17:03', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl271017050896999', 'yd-7111', '2016-09-27 10:17:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271017189427927', 'yd-7111', '2016-09-27 10:17:18', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271017378857044', 'yd-7111', '2016-09-27 10:17:37', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271018000606108', 'yd-7111', '2016-09-27 10:18:00', '添加', 'DaDemand', 'd271017583716230');
INSERT INTO `timeline` VALUES ('tl271018000981914', 'yd-7111', '2016-09-27 10:18:00', '添加', 'DaPerform', 'p271017584058794');
INSERT INTO `timeline` VALUES ('tl271022378175985', 'yd-7111', '2016-09-27 10:22:37', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271022542773919', 'yd-7111', '2016-09-27 10:22:54', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271022566019132', 'yd-7111', '2016-09-27 10:22:56', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271024237488053', 'yd-7111', '2016-09-27 10:24:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271024364438033', 'yd-7111', '2016-09-27 10:24:36', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl271024402691749', 'yd-7111', '2016-09-27 10:24:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271026101287099', 'yd-7111', '2016-09-27 10:26:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271026239557250', 'yd-7111', '2016-09-27 10:26:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271027197662604', 'yd-7111', '2016-09-27 10:27:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271027281199003', 'yd-7111', '2016-09-27 10:27:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271028073712011', 'yd-7111', '2016-09-27 10:28:07', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271028335296196', 'yd-7111', '2016-09-27 10:28:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271028412201417', 'yd-7111', '2016-09-27 10:28:41', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271028581007402', 'yd-7111', '2016-09-27 10:28:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271132429432315', 'yd-7111', '2016-09-27 11:32:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271132440979375', 'yd-7111', '2016-09-27 11:32:44', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271132469426799', 'yd-7111', '2016-09-27 11:32:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271133012592788', 'yd-7111', '2016-09-27 11:33:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271133131461743', 'yd-7111', '2016-09-27 11:33:13', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271133138818285', 'yd-7111', '2016-09-27 11:33:13', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271134349936617', 'yd-7111', '2016-09-27 11:34:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271134366843832', 'yd-7111', '2016-09-27 11:34:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271134380316782', 'yd-7111', '2016-09-27 11:34:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271134502344702', 'yd-7111', '2016-09-27 11:34:50', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271135348715398', 'yd-7111', '2016-09-27 11:35:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271137402174775', 'yd-7111', '2016-09-27 11:37:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271137476295082', 'yd-7111', '2016-09-27 11:37:47', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271150456497383', 'yd-7111', '2016-09-27 11:50:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271150494769323', 'yd-7111', '2016-09-27 11:50:49', '添加', 'DaDemand', 'd271150484869912');
INSERT INTO `timeline` VALUES ('tl271150495069830', 'yd-7111', '2016-09-27 11:50:49', '添加', 'DaPerform', 'p271150485238930');
INSERT INTO `timeline` VALUES ('tl271151034784587', 'yd-7111', '2016-09-27 11:51:03', '添加', 'DaDemand', 'd271151023997327');
INSERT INTO `timeline` VALUES ('tl271151035069447', 'yd-7111', '2016-09-27 11:51:03', '添加', 'DaPerform', 'p271151024899074');
INSERT INTO `timeline` VALUES ('tl271152412698498', 'yd-7111', '2016-09-27 11:52:41', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271152463853735', 'yd-7111', '2016-09-27 11:52:46', '添加', 'DaDemand', 'd271152451446184');
INSERT INTO `timeline` VALUES ('tl271152464247321', 'yd-7111', '2016-09-27 11:52:46', '添加', 'DaPerform', 'p271152452005085');
INSERT INTO `timeline` VALUES ('tl271152572455452', 'yd-7111', '2016-09-27 11:52:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271153027362341', 'yd-7111', '2016-09-27 11:53:02', '添加', 'DaDemand', 'd271153024761956');
INSERT INTO `timeline` VALUES ('tl271153027651601', 'yd-7111', '2016-09-27 11:53:02', '添加', 'DaPerform', 'p271153025353175');
INSERT INTO `timeline` VALUES ('tl271153029367360', 'yd-7111', '2016-09-27 11:53:02', '添加', 'DaDemand', 'd271153024761956');
INSERT INTO `timeline` VALUES ('tl271153029825872', 'yd-7111', '2016-09-27 11:53:02', '添加', 'DaPerform', 'p271153025353175');
INSERT INTO `timeline` VALUES ('tl271153032095461', 'yd-7111', '2016-09-27 11:53:03', '添加', 'DaDemand', 'd271153024761956');
INSERT INTO `timeline` VALUES ('tl271153032526200', 'yd-7111', '2016-09-27 11:53:03', '添加', 'DaPerform', 'p271153025353175');
INSERT INTO `timeline` VALUES ('tl271153187698873', 'yd-7111', '2016-09-27 11:53:18', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271155149839093', 'yd-7111', '2016-09-27 11:55:14', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271404486079881', 'yd-7111', '2016-09-27 14:04:48', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271405482257317', 'yd-7111', '2016-09-27 14:05:48', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271406045787056', 'yd-7111', '2016-09-27 14:06:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271406237059808', 'yd-7111', '2016-09-27 14:06:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271406267709279', 'yd-7111', '2016-09-27 14:06:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271406456578077', 'yd-7111', '2016-09-27 14:06:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271407428578531', 'yd-7111', '2016-09-27 14:07:42', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271407580797334', 'yd-7111', '2016-09-27 14:07:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271409047625971', 'yd-7111', '2016-09-27 14:09:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271409556539216', 'yd-7111', '2016-09-27 14:09:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271410177579755', 'yd-7111', '2016-09-27 14:10:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271410220265455', 'yd-7111', '2016-09-27 14:10:22', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271410297884637', 'yd-7111', '2016-09-27 14:10:29', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271411386531823', 'yd-7111', '2016-09-27 14:11:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271411541656563', 'yd-7111', '2016-09-27 14:11:54', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271413234233769', 'yd-7111', '2016-09-27 14:13:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271413334597391', 'yd-7111', '2016-09-27 14:13:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271413421639225', 'yd-7111', '2016-09-27 14:13:42', '添加', 'DaDemand', 'd271413408302079');
INSERT INTO `timeline` VALUES ('tl271413421913131', 'yd-7111', '2016-09-27 14:13:42', '添加', 'DaPerform', 'p271413408582149');
INSERT INTO `timeline` VALUES ('tl271413507583501', 'yd-7111', '2016-09-27 14:13:50', '添加', 'DaDemand', 'd271413497086730');
INSERT INTO `timeline` VALUES ('tl271413508008808', 'yd-7111', '2016-09-27 14:13:50', '添加', 'DaPerform', 'p271413497406151');
INSERT INTO `timeline` VALUES ('tl271414139425112', 'yd-7111', '2016-09-27 14:14:13', '添加', 'DaDemand', 'd271414128416760');
INSERT INTO `timeline` VALUES ('tl271414139602161', 'yd-7111', '2016-09-27 14:14:13', '添加', 'DaPerform', 'p271414128672653');
INSERT INTO `timeline` VALUES ('tl271417175247946', 'yd-7111', '2016-09-27 14:17:17', '添加', 'DaDemand', 'd271417162704015');
INSERT INTO `timeline` VALUES ('tl271417175545460', 'yd-7111', '2016-09-27 14:17:17', '添加', 'DaPerform', 'p271417163207107');
INSERT INTO `timeline` VALUES ('tl271417401609058', 'yd-7111', '2016-09-27 14:17:40', '添加', 'DaDemand', 'd271417386522214');
INSERT INTO `timeline` VALUES ('tl271417402041919', 'yd-7111', '2016-09-27 14:17:40', '添加', 'DaPerform', 'p271417388229349');
INSERT INTO `timeline` VALUES ('tl271417417235681', 'yd-7111', '2016-09-27 14:17:41', '添加', 'DaDemand', 'd271417404882850');
INSERT INTO `timeline` VALUES ('tl271417417546887', 'yd-7111', '2016-09-27 14:17:41', '添加', 'DaPerform', 'p271417405049987');
INSERT INTO `timeline` VALUES ('tl271418152511689', 'yd-7111', '2016-09-27 14:18:15', '添加', 'DaDemand', 'd271418140257706');
INSERT INTO `timeline` VALUES ('tl271418152945583', 'yd-7111', '2016-09-27 14:18:15', '添加', 'DaPerform', 'p271418140541103');
INSERT INTO `timeline` VALUES ('tl271418240104740', 'yd-7111', '2016-09-27 14:18:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271418330096563', 'yd-7111', '2016-09-27 14:18:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271418352069929', 'yd-7111', '2016-09-27 14:18:35', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271420310108530', 'yd-7111', '2016-09-27 14:20:31', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271421041316035', 'yd-7111', '2016-09-27 14:21:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271421240465387', 'yd-7111', '2016-09-27 14:21:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271422426335198', 'yd-7111', '2016-09-27 14:22:42', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271423033792986', 'yd-7111', '2016-09-27 14:23:03', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271423248628555', 'yd-7111', '2016-09-27 14:23:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271423584308025', 'yd-7111', '2016-09-27 14:23:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271424369565544', 'yd-7111', '2016-09-27 14:24:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271425336691621', 'yd-7111', '2016-09-27 14:25:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271426049217462', 'yd-7111', '2016-09-27 14:26:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271426099787396', 'yd-7111', '2016-09-27 14:26:09', '添加', 'DaDemand', 'd271426086343131');
INSERT INTO `timeline` VALUES ('tl271426100217834', 'yd-7111', '2016-09-27 14:26:10', '添加', 'DaPerform', 'p271426087739993');
INSERT INTO `timeline` VALUES ('tl271426116672358', 'yd-7111', '2016-09-27 14:26:11', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271426449629787', 'yd-7111', '2016-09-27 14:26:44', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271426510903027', 'yd-7111', '2016-09-27 14:26:51', '添加', 'DaDemand', 'd271426496262116');
INSERT INTO `timeline` VALUES ('tl271426511277676', 'yd-7111', '2016-09-27 14:26:51', '添加', 'DaPerform', 'p271426496761712');
INSERT INTO `timeline` VALUES ('tl271426532298401', 'yd-7111', '2016-09-27 14:26:53', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271429328114569', 'yd-7111', '2016-09-27 14:29:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271429400825884', 'yd-7111', '2016-09-27 14:29:40', '添加', 'DaDemand', 'd271429382611015');
INSERT INTO `timeline` VALUES ('tl271429401141414', 'yd-7111', '2016-09-27 14:29:40', '添加', 'DaPerform', 'p271429384675872');
INSERT INTO `timeline` VALUES ('tl271430588131283', 'yd-7111', '2016-09-27 14:30:58', '添加', 'DaDemand', 'd271430574244064');
INSERT INTO `timeline` VALUES ('tl271430588629978', 'yd-7111', '2016-09-27 14:30:58', '添加', 'DaPerform', 'p271430575185796');
INSERT INTO `timeline` VALUES ('tl271430594942826', 'yd-7111', '2016-09-27 14:30:59', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271431040934640', 'yd-7111', '2016-09-27 14:31:04', '添加', 'DaDemand', 'd271431029223848');
INSERT INTO `timeline` VALUES ('tl271431041288334', 'yd-7111', '2016-09-27 14:31:04', '添加', 'DaPerform', 'p271431029794647');
INSERT INTO `timeline` VALUES ('tl271431058961063', 'yd-7111', '2016-09-27 14:31:05', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271431320503442', 'yd-7111', '2016-09-27 14:31:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271431347595011', 'yd-7111', '2016-09-27 14:31:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271431394961368', 'yd-7111', '2016-09-27 14:31:39', '添加', 'DaDemand', 'd271431380292275');
INSERT INTO `timeline` VALUES ('tl271431395463387', 'yd-7111', '2016-09-27 14:31:39', '添加', 'DaPerform', 'p271431380818631');
INSERT INTO `timeline` VALUES ('tl271433588695393', 'yd-7111', '2016-09-27 14:33:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271434015356972', 'yd-7111', '2016-09-27 14:34:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271434047929576', 'yd-7111', '2016-09-27 14:34:04', '添加', 'DaDemand', 'd271434036336747');
INSERT INTO `timeline` VALUES ('tl271434048231261', 'yd-7111', '2016-09-27 14:34:04', '添加', 'DaPerform', 'p271434036816599');
INSERT INTO `timeline` VALUES ('tl271435190012078', 'yd-7111', '2016-09-27 14:35:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271435462955152', 'yd-7111', '2016-09-27 14:35:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271436054374713', 'yd-7111', '2016-09-27 14:36:05', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271436072979017', 'yd-7111', '2016-09-27 14:36:07', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271436154295894', 'yd-7111', '2016-09-27 14:36:15', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271436403759903', 'yd-7111', '2016-09-27 14:36:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271436432327195', 'yd-7111', '2016-09-27 14:36:43', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271436485809978', 'yd-7111', '2016-09-27 14:36:48', '添加', 'DaDemand', 'd271436470695692');
INSERT INTO `timeline` VALUES ('tl271436487536007', 'yd-7111', '2016-09-27 14:36:48', '添加', 'DaPerform', 'p271436470928356');
INSERT INTO `timeline` VALUES ('tl271441408562052', 'yd-7111', '2016-09-27 14:41:40', '添加', 'DaDemand', 'd271441385631945');
INSERT INTO `timeline` VALUES ('tl271441409953739', 'yd-7111', '2016-09-27 14:41:40', '添加', 'DaPerform', 'p271441386162128');
INSERT INTO `timeline` VALUES ('tl271442029274740', 'yd-7111', '2016-09-27 14:42:02', '添加', 'DaDemand', 'd271442015484585');
INSERT INTO `timeline` VALUES ('tl271442029969917', 'yd-7111', '2016-09-27 14:42:02', '添加', 'DaPerform', 'p271442015886463');
INSERT INTO `timeline` VALUES ('tl271442033272148', 'yd-7111', '2016-09-27 14:42:03', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271442185882179', 'yd-7111', '2016-09-27 14:42:18', '添加', 'DaDemand', 'd271442167306180');
INSERT INTO `timeline` VALUES ('tl271442187065278', 'yd-7111', '2016-09-27 14:42:18', '添加', 'DaPerform', 'p271442167531482');
INSERT INTO `timeline` VALUES ('tl271442238516440', 'yd-7111', '2016-09-27 14:42:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271442459163518', 'yd-7111', '2016-09-27 14:42:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271442482515097', 'yd-7111', '2016-09-27 14:42:48', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271442564909186', 'yd-7111', '2016-09-27 14:42:56', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271443112628972', 'yd-7111', '2016-09-27 14:43:11', '添加', 'DaDemand', 'd271443097976321');
INSERT INTO `timeline` VALUES ('tl271443113042482', 'yd-7111', '2016-09-27 14:43:11', '添加', 'DaPerform', 'p271443098454840');
INSERT INTO `timeline` VALUES ('tl271443126611805', 'yd-7111', '2016-09-27 14:43:12', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271443190101911', 'yd-7111', '2016-09-27 14:43:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271443262759805', 'yd-7111', '2016-09-27 14:43:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271443309713135', 'yd-7111', '2016-09-27 14:43:30', '添加', 'DaDemand', 'd271443296381934');
INSERT INTO `timeline` VALUES ('tl271443310131589', 'yd-7111', '2016-09-27 14:43:31', '添加', 'DaPerform', 'p271443296728522');
INSERT INTO `timeline` VALUES ('tl271443323928245', 'yd-7111', '2016-09-27 14:43:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271443357921522', 'yd-7111', '2016-09-27 14:43:35', '添加', 'DaDemand', 'd271443341811350');
INSERT INTO `timeline` VALUES ('tl271443358349108', 'yd-7111', '2016-09-27 14:43:35', '添加', 'DaPerform', 'p271443342304379');
INSERT INTO `timeline` VALUES ('tl271443400743322', 'yd-7111', '2016-09-27 14:43:40', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271443466484272', 'yd-7111', '2016-09-27 14:43:46', '添加', 'DaDemand', 'd271443452056899');
INSERT INTO `timeline` VALUES ('tl271443467259492', 'yd-7111', '2016-09-27 14:43:46', '添加', 'DaPerform', 'p271443452573901');
INSERT INTO `timeline` VALUES ('tl271444020909697', 'yd-7111', '2016-09-27 14:44:02', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271444043899007', 'yd-7111', '2016-09-27 14:44:04', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271444094658333', 'yd-7111', '2016-09-27 14:44:09', '添加', 'DaDemand', 'd271444078166845');
INSERT INTO `timeline` VALUES ('tl271444094924477', 'yd-7111', '2016-09-27 14:44:09', '添加', 'DaPerform', 'p271444078475702');
INSERT INTO `timeline` VALUES ('tl271445273903868', 'yd-7111', '2016-09-27 14:45:27', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271445305113857', 'yd-7111', '2016-09-27 14:45:30', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271445355559046', 'yd-7111', '2016-09-27 14:45:35', '添加', 'DaDemand', 'd271445335476703');
INSERT INTO `timeline` VALUES ('tl271445355754369', 'yd-7111', '2016-09-27 14:45:35', '添加', 'DaPerform', 'p271445336015594');
INSERT INTO `timeline` VALUES ('tl271446278682810', 'yd-7111', '2016-09-27 14:46:27', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271446350206360', 'yd-7111', '2016-09-27 14:46:35', '添加', 'DaDemand', 'd271446336144695');
INSERT INTO `timeline` VALUES ('tl271446350583243', 'yd-7111', '2016-09-27 14:46:35', '添加', 'DaPerform', 'p271446336572009');
INSERT INTO `timeline` VALUES ('tl271446464558602', 'yd-7111', '2016-09-27 14:46:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271447104244167', 'yd-7111', '2016-09-27 14:47:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271447174222240', 'yd-7111', '2016-09-27 14:47:17', '添加', 'DaDemand', 'd271447160182385');
INSERT INTO `timeline` VALUES ('tl271447174528250', 'yd-7111', '2016-09-27 14:47:17', '添加', 'DaPerform', 'p271447160597089');
INSERT INTO `timeline` VALUES ('tl271448045813909', 'yd-7111', '2016-09-27 14:48:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271448158433501', 'yd-7111', '2016-09-27 14:48:15', '添加', 'DaDemand', 'd271448116554096');
INSERT INTO `timeline` VALUES ('tl271448158687922', 'yd-7111', '2016-09-27 14:48:15', '添加', 'DaPerform', 'p271448116921921');
INSERT INTO `timeline` VALUES ('tl271448262386873', 'yd-7111', '2016-09-27 14:48:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271448330241196', 'yd-7111', '2016-09-27 14:48:33', '添加', 'DaDemand', 'd271448285756934');
INSERT INTO `timeline` VALUES ('tl271448330797465', 'yd-7111', '2016-09-27 14:48:33', '添加', 'DaPerform', 'p271448286131387');
INSERT INTO `timeline` VALUES ('tl271448358014928', 'yd-7111', '2016-09-27 14:48:35', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271449438689607', 'yd-7111', '2016-09-27 14:49:43', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271449540328267', 'yd-7111', '2016-09-27 14:49:54', '添加', 'DaDemand', 'd271449496415697');
INSERT INTO `timeline` VALUES ('tl271449541109343', 'yd-7111', '2016-09-27 14:49:54', '添加', 'DaPerform', 'p271449496674519');
INSERT INTO `timeline` VALUES ('tl271450018414079', 'yd-7111', '2016-09-27 14:50:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271450103415875', 'yd-7111', '2016-09-27 14:50:10', '添加', 'DaDemand', 'd271450059425585');
INSERT INTO `timeline` VALUES ('tl271450103717832', 'yd-7111', '2016-09-27 14:50:10', '添加', 'DaPerform', 'p271450059774032');
INSERT INTO `timeline` VALUES ('tl271450224836778', 'yd-7111', '2016-09-27 14:50:22', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271450287223271', 'yd-7111', '2016-09-27 14:50:28', '添加', 'DaDemand', 'd271450242468511');
INSERT INTO `timeline` VALUES ('tl271450287449022', 'yd-7111', '2016-09-27 14:50:28', '添加', 'DaPerform', 'p271450243016974');
INSERT INTO `timeline` VALUES ('tl271451380671520', 'yd-7111', '2016-09-27 14:51:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271451577238320', 'yd-7111', '2016-09-27 14:51:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271452013612373', 'yd-7111', '2016-09-27 14:52:01', '添加', 'DaDemand', 'd271452000799295');
INSERT INTO `timeline` VALUES ('tl271452014067734', 'yd-7111', '2016-09-27 14:52:01', '添加', 'DaPerform', 'p271452001016961');
INSERT INTO `timeline` VALUES ('tl271456543049341', 'yd-7111', '2016-09-27 14:56:54', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271456565707435', 'yd-7111', '2016-09-27 14:56:56', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271457006292408', 'yd-7111', '2016-09-27 14:57:00', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271457249299095', 'yd-7111', '2016-09-27 14:57:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458054724615', 'yd-7111', '2016-09-27 14:58:05', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458116121941', 'yd-7111', '2016-09-27 14:58:11', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458329677141', 'yd-7111', '2016-09-27 14:58:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458419133721', 'yd-7111', '2016-09-27 14:58:41', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458427271618', 'yd-7111', '2016-09-27 14:58:42', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458433188301', 'yd-7111', '2016-09-27 14:58:43', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271458445848930', 'yd-7111', '2016-09-27 14:58:44', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459026574838', 'yd-7111', '2016-09-27 14:59:02', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459238334512', 'yd-7111', '2016-09-27 14:59:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459244871296', 'yd-7111', '2016-09-27 14:59:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459250851339', 'yd-7111', '2016-09-27 14:59:25', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459255755732', 'yd-7111', '2016-09-27 14:59:25', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271459513202177', 'yd-7111', '2016-09-27 14:59:51', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271500095373664', 'yd-7111', '2016-09-27 15:00:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271500204278254', 'yd-7111', '2016-09-27 15:00:20', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271500286181102', 'yd-7111', '2016-09-27 15:00:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271502372916497', 'yd-7111', '2016-09-27 15:02:37', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271503108721533', 'yd-7111', '2016-09-27 15:03:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271503296518991', 'yd-7111', '2016-09-27 15:03:29', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504171113148', 'yd-7111', '2016-09-27 15:04:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504257235864', 'yd-7111', '2016-09-27 15:04:25', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504336384452', 'yd-7111', '2016-09-27 15:04:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504392162521', 'yd-7111', '2016-09-27 15:04:39', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504446575490', 'yd-7111', '2016-09-27 15:04:44', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271504499748720', 'yd-7111', '2016-09-27 15:04:49', '添加', 'DaDemand', 'd271504479631207');
INSERT INTO `timeline` VALUES ('tl271504500046063', 'yd-7111', '2016-09-27 15:04:50', '添加', 'DaPerform', 'p271504480046495');
INSERT INTO `timeline` VALUES ('tl271504507931588', 'yd-7111', '2016-09-27 15:04:50', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271506450599691', 'yd-7111', '2016-09-27 15:06:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271506586523539', 'yd-7111', '2016-09-27 15:06:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271507002694701', 'yd-7111', '2016-09-27 15:07:00', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271507054568776', 'yd-7111', '2016-09-27 15:07:05', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271507151852992', 'yd-7111', '2016-09-27 15:07:15', '添加', 'DaDemand', 'd271507135941496');
INSERT INTO `timeline` VALUES ('tl271507152162332', 'yd-7111', '2016-09-27 15:07:15', '添加', 'DaPerform', 'p271507136313732');
INSERT INTO `timeline` VALUES ('tl271507556784778', 'yd-7111', '2016-09-27 15:07:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271508013007348', 'yd-7111', '2016-09-27 15:08:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271508057801735', 'yd-7111', '2016-09-27 15:08:05', '添加', 'DaDemand', 'd271508044227403');
INSERT INTO `timeline` VALUES ('tl271508058392423', 'yd-7111', '2016-09-27 15:08:05', '添加', 'DaPerform', 'p271508044753288');
INSERT INTO `timeline` VALUES ('tl271508264424173', 'yd-7111', '2016-09-27 15:08:26', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271509313764750', 'yd-7111', '2016-09-27 15:09:31', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271509390025596', 'yd-7111', '2016-09-27 15:09:39', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271509565482844', 'yd-7111', '2016-09-27 15:09:56', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271511123205625', 'yd-7111', '2016-09-27 15:11:12', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271511215244791', 'yd-7111', '2016-09-27 15:11:21', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271511576058192', 'yd-7111', '2016-09-27 15:11:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271513180983040', 'yd-7111', '2016-09-27 15:13:18', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271513457573128', 'yd-7111', '2016-09-27 15:13:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271513467772374', 'yd-7111', '2016-09-27 15:13:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514041194549', 'yd-7111', '2016-09-27 15:14:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514175534303', 'yd-7111', '2016-09-27 15:14:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514194171504', 'yd-7111', '2016-09-27 15:14:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514282652252', 'yd-7111', '2016-09-27 15:14:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514394552990', 'yd-7111', '2016-09-27 15:14:39', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271514577899439', 'yd-7111', '2016-09-27 15:14:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271515327996677', 'yd-7111', '2016-09-27 15:15:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271518203211573', 'yd-7111', '2016-09-27 15:18:20', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271518532977317', 'yd-7111', '2016-09-27 15:18:53', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271528090353496', 'yd-7111', '2016-09-27 15:28:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271528360277537', 'yd-7111', '2016-09-27 15:28:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271529114107398', 'yd-7111', '2016-09-27 15:29:11', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271530111981917', 'yd-7111', '2016-09-27 15:30:11', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271530196849964', 'yd-7111', '2016-09-27 15:30:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271530325191569', 'yd-7111', '2016-09-27 15:30:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271531078512744', 'yd-7111', '2016-09-27 15:31:07', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271535482539810', 'yd-7111', '2016-09-27 15:35:48', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271536142288879', 'yd-7111', '2016-09-27 15:36:14', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271536193514691', 'yd-7111', '2016-09-27 15:36:19', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271536248596050', 'yd-7111', '2016-09-27 15:36:24', '添加', 'DaDemand', 'd271536228158077');
INSERT INTO `timeline` VALUES ('tl271536248919655', 'yd-7111', '2016-09-27 15:36:24', '添加', 'DaPerform', 'p271536228742498');
INSERT INTO `timeline` VALUES ('tl271537465742769', 'yd-7111', '2016-09-27 15:37:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271539100196746', 'yd-7111', '2016-09-27 15:39:10', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271539143766269', 'yd-7111', '2016-09-27 15:39:14', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271539320238251', 'yd-7111', '2016-09-27 15:39:32', '添加', 'DaDemand', 'd271539303065307');
INSERT INTO `timeline` VALUES ('tl271539320452699', 'yd-7111', '2016-09-27 15:39:32', '添加', 'DaPerform', 'p271539303286858');
INSERT INTO `timeline` VALUES ('tl271539340668986', 'yd-7111', '2016-09-27 15:39:34', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271539348387641', 'yd-7111', '2016-09-27 15:39:34', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271539521073561', 'yd-7111', '2016-09-27 15:39:52', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271540206918807', 'yd-7111', '2016-09-27 15:40:20', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271541426931355', 'yd-7111', '2016-09-27 15:41:42', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl271548547744903', 'yd-7111', '2016-09-27 15:48:54', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271548578275299', 'yd-7111', '2016-09-27 15:48:57', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl271549028629966', 'yd-7111', '2016-09-27 15:49:02', '修改', 'DaPerform', 'p271539303286858');
INSERT INTO `timeline` VALUES ('tl271549065842496', 'yd-7111', '2016-09-27 15:49:06', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271549114889713', 'yd-7111', '2016-09-27 15:49:11', '修改', 'DaPerform', 'p271539303286858');
INSERT INTO `timeline` VALUES ('tl271549154763775', 'yd-7111', '2016-09-27 15:49:15', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl271549218284044', 'yd-7111', '2016-09-27 15:49:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271549276149058', 'yd-7111', '2016-09-27 15:49:27', '修改', 'DaPerform', 'p271539303286858');
INSERT INTO `timeline` VALUES ('tl271549288351321', 'yd-7111', '2016-09-27 15:49:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271549293985166', 'yd-7111', '2016-09-27 15:49:29', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271549488007834', 'yd-7111', '2016-09-27 15:49:48', '修改', 'DaPerform', 'p271539303286858');
INSERT INTO `timeline` VALUES ('tl271549586733699', 'yd-7111', '2016-09-27 15:49:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271550006824330', 'yd-7111', '2016-09-27 15:50:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271550024248183', 'yd-7111', '2016-09-27 15:50:02', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271559386948125', 'yd-7111', '2016-09-27 15:59:38', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271601105228821', 'yd-7111', '2016-09-27 16:01:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271601156539781', 'yd-7111', '2016-09-27 16:01:15', '添加', 'DaDemand', 'd271601142409882');
INSERT INTO `timeline` VALUES ('tl271601157454202', 'yd-7111', '2016-09-27 16:01:15', '添加', 'DaPerform', 'p271601143103341');
INSERT INTO `timeline` VALUES ('tl271601172982737', 'yd-7111', '2016-09-27 16:01:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271601274764588', 'yd-7111', '2016-09-27 16:01:27', '添加', 'DaDemand', 'd271601240015136');
INSERT INTO `timeline` VALUES ('tl271601275024070', 'yd-7111', '2016-09-27 16:01:27', '添加', 'DaPerform', 'p271601240411143');
INSERT INTO `timeline` VALUES ('tl271603506294444', 'yd-7111', '2016-09-27 16:03:50', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604105614677', 'yd-7111', '2016-09-27 16:04:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604366434799', 'yd-7111', '2016-09-27 16:04:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604515052361', 'yd-7111', '2016-09-27 16:04:51', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604532674239', 'yd-7111', '2016-09-27 16:04:53', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604551294716', 'yd-7111', '2016-09-27 16:04:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604566929153', 'yd-7111', '2016-09-27 16:04:56', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604579191033', 'yd-7111', '2016-09-27 16:04:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271604592948508', 'yd-7111', '2016-09-27 16:04:59', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271605239911893', 'yd-7111', '2016-09-27 16:05:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271606308343967', 'yd-7111', '2016-09-27 16:06:30', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271606502042957', 'yd-7111', '2016-09-27 16:06:50', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271607146011820', 'yd-7111', '2016-09-27 16:07:14', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271607167484444', 'yd-7111', '2016-09-27 16:07:16', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271607181033320', 'yd-7111', '2016-09-27 16:07:18', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271607292681742', 'yd-7111', '2016-09-27 16:07:29', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271608084052422', 'yd-7111', '2016-09-27 16:08:08', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271608212018534', 'yd-7111', '2016-09-27 16:08:21', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271608334967657', 'yd-7111', '2016-09-27 16:08:33', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271609019463307', 'yd-7111', '2016-09-27 16:09:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271609240338793', 'yd-7111', '2016-09-27 16:09:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271609252582164', 'yd-7111', '2016-09-27 16:09:25', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271609599973845', 'yd-7111', '2016-09-27 16:09:59', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271610234206705', 'yd-7111', '2016-09-27 16:10:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271610365617840', 'yd-7111', '2016-09-27 16:10:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271612426562019', 'yd-7111', '2016-09-27 16:12:42', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271613289094940', 'yd-7111', '2016-09-27 16:13:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271613585289549', 'yd-7111', '2016-09-27 16:13:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271614219222295', 'yd-7111', '2016-09-27 16:14:21', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271614504069815', 'yd-7111', '2016-09-27 16:14:50', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271615099201325', 'yd-7111', '2016-09-27 16:15:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271616081102668', 'yd-7111', '2016-09-27 16:16:08', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271616092231407', 'yd-7111', '2016-09-27 16:16:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271616276954332', 'yd-7111', '2016-09-27 16:16:27', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271616557283810', 'yd-7111', '2016-09-27 16:16:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271617134313826', 'yd-7111', '2016-09-27 16:17:13', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271617286743759', 'yd-7111', '2016-09-27 16:17:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271617414241335', 'yd-7111', '2016-09-27 16:17:41', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271617586275997', 'yd-7111', '2016-09-27 16:17:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271618107541424', 'yd-7111', '2016-09-27 16:18:10', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271618394733837', 'yd-7111', '2016-09-27 16:18:39', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271619017334992', 'yd-7111', '2016-09-27 16:19:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271619166739474', 'yd-7111', '2016-09-27 16:19:16', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271621577161118', 'yd-7111', '2016-09-27 16:21:57', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271625431092063', 'yd-7111', '2016-09-27 16:25:43', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271626088537279', 'yd-7111', '2016-09-27 16:26:08', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271626130578411', 'yd-7111', '2016-09-27 16:26:13', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271626207783194', 'yd-7111', '2016-09-27 16:26:20', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271626568498104', 'yd-7111', '2016-09-27 16:26:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271627090504042', 'yd-7111', '2016-09-27 16:27:09', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271627425409711', 'yd-7111', '2016-09-27 16:27:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271627530799358', 'yd-7111', '2016-09-27 16:27:53', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271628092579648', 'yd-7111', '2016-09-27 16:28:09', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271630044448075', 'yd-7111', '2016-09-27 16:30:04', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271630059896185', 'yd-7111', '2016-09-27 16:30:05', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271630070022324', 'yd-7111', '2016-09-27 16:30:07', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271630458904281', 'yd-7111', '2016-09-27 16:30:45', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271631185277616', 'yd-7111', '2016-09-27 16:31:18', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271632121477130', 'yd-7111', '2016-09-27 16:32:12', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271632238867210', 'yd-7111', '2016-09-27 16:32:23', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271632351501762', 'yd-7111', '2016-09-27 16:32:35', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271632418094095', 'yd-7111', '2016-09-27 16:32:41', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271632534757289', 'yd-7111', '2016-09-27 16:32:53', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271633042052295', 'yd-7111', '2016-09-27 16:33:04', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271633215709778', 'yd-7111', '2016-09-27 16:33:21', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271634197488877', 'yd-7111', '2016-09-27 16:34:19', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271634287805416', 'yd-7111', '2016-09-27 16:34:28', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271634457202116', 'yd-7111', '2016-09-27 16:34:45', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271634596244204', 'yd-7111', '2016-09-27 16:34:59', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271635022023970', 'yd-7111', '2016-09-27 16:35:02', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271635166863581', 'yd-7111', '2016-09-27 16:35:16', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271635440569269', 'yd-7111', '2016-09-27 16:35:44', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271635532937012', 'yd-7111', '2016-09-27 16:35:53', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271636293747377', 'yd-7111', '2016-09-27 16:36:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271636436802888', 'yd-7111', '2016-09-27 16:36:43', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271637531868470', 'yd-7111', '2016-09-27 16:37:53', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271638258153232', 'yd-7111', '2016-09-27 16:38:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271638396917828', 'yd-7111', '2016-09-27 16:38:39', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271639548919534', 'yd-7111', '2016-09-27 16:39:54', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271640442332674', 'yd-7111', '2016-09-27 16:40:44', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271640586697774', 'yd-7111', '2016-09-27 16:40:58', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271641236625147', 'yd-7111', '2016-09-27 16:41:23', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271641521653952', 'yd-7111', '2016-09-27 16:41:52', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271642023534040', 'yd-7111', '2016-09-27 16:42:02', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271642277061522', 'yd-7111', '2016-09-27 16:42:27', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271642470421367', 'yd-7111', '2016-09-27 16:42:47', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271643003852376', 'yd-7111', '2016-09-27 16:43:00', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271643090059557', 'yd-7111', '2016-09-27 16:43:09', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271643257216811', 'yd-7111', '2016-09-27 16:43:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271643583641054', 'yd-7111', '2016-09-27 16:43:58', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271644270697288', 'yd-7111', '2016-09-27 16:44:27', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271644524016003', 'yd-7111', '2016-09-27 16:44:52', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645067406316', 'yd-7111', '2016-09-27 16:45:06', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645142555954', 'yd-7111', '2016-09-27 16:45:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645294437094', 'yd-7111', '2016-09-27 16:45:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645317796696', 'yd-7111', '2016-09-27 16:45:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645343623396', 'yd-7111', '2016-09-27 16:45:34', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645356417247', 'yd-7111', '2016-09-27 16:45:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271645365533848', 'yd-7111', '2016-09-27 16:45:36', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645386495195', 'yd-7111', '2016-09-27 16:45:38', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271645409448166', 'yd-7111', '2016-09-27 16:45:40', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645435657170', 'yd-7111', '2016-09-27 16:45:43', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271645456765004', 'yd-7111', '2016-09-27 16:45:45', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271646148056708', 'yd-7111', '2016-09-27 16:46:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271648250651901', 'yd-7111', '2016-09-27 16:48:25', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271648411855718', 'yd-7111', '2016-09-27 16:48:41', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271648435331991', 'yd-7111', '2016-09-27 16:48:43', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271648454773451', 'yd-7111', '2016-09-27 16:48:45', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271648470801906', 'yd-7111', '2016-09-27 16:48:47', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271649110909470', 'yd-7111', '2016-09-27 16:49:11', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271649239643854', 'yd-7111', '2016-09-27 16:49:23', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650284342649', 'yd-7111', '2016-09-27 16:50:28', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650307023648', 'yd-7111', '2016-09-27 16:50:30', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650375458299', 'yd-7111', '2016-09-27 16:50:37', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650393209353', 'yd-7111', '2016-09-27 16:50:39', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650397825141', 'yd-7111', '2016-09-27 16:50:39', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271650412034762', 'yd-7111', '2016-09-27 16:50:41', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271651212577903', 'yd-7111', '2016-09-27 16:51:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271651589396662', 'yd-7111', '2016-09-27 16:51:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271652343435828', 'yd-7111', '2016-09-27 16:52:34', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271653053574554', 'yd-7111', '2016-09-27 16:53:05', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271653345427633', 'yd-7111', '2016-09-27 16:53:34', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271653467012267', 'yd-7111', '2016-09-27 16:53:46', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271653538165269', 'yd-7111', '2016-09-27 16:53:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271653553381722', 'yd-7111', '2016-09-27 16:53:55', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271653592058842', 'yd-7111', '2016-09-27 16:53:59', '添加', 'DaDemand', 'd271653582203036');
INSERT INTO `timeline` VALUES ('tl271653592416340', 'yd-7111', '2016-09-27 16:53:59', '添加', 'DaPerform', 'p271653582475743');
INSERT INTO `timeline` VALUES ('tl271654011884929', 'yd-7111', '2016-09-27 16:54:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271654016225826', 'yd-7111', '2016-09-27 16:54:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271654088529748', 'yd-7111', '2016-09-27 16:54:08', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271654158877548', 'yd-7111', '2016-09-27 16:54:15', '修改', 'DaPerform', 'p271653582475743');
INSERT INTO `timeline` VALUES ('tl271654159244637', 'yd-7111', '2016-09-27 16:54:15', '修改', 'DaPerform', 'p271653582475743');
INSERT INTO `timeline` VALUES ('tl271654170385059', 'yd-7111', '2016-09-27 16:54:17', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271655582296323', 'yd-7111', '2016-09-27 16:55:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271656022434916', 'yd-7111', '2016-09-27 16:56:02', '修改', 'DaPerform', 'p271654147172589');
INSERT INTO `timeline` VALUES ('tl271656022658711', 'yd-7111', '2016-09-27 16:56:02', '修改', 'DaPerform', 'p271654147172589');
INSERT INTO `timeline` VALUES ('tl271656070114129', 'yd-7111', '2016-09-27 16:56:07', '修改', 'DaPerform', 'p271656013655544');
INSERT INTO `timeline` VALUES ('tl271656070679897', 'yd-7111', '2016-09-27 16:56:07', '修改', 'DaPerform', 'p271656013655544');
INSERT INTO `timeline` VALUES ('tl271656099399035', 'yd-7111', '2016-09-27 16:56:09', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271656216685062', 'yd-7111', '2016-09-27 16:56:21', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271656304421698', 'yd-7111', '2016-09-27 16:56:30', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271656355412801', 'yd-7111', '2016-09-27 16:56:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658283235975', 'yd-7111', '2016-09-27 16:58:28', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658387865644', 'yd-7111', '2016-09-27 16:58:38', '修改', 'DaPerform', 'p261329159562008');
INSERT INTO `timeline` VALUES ('tl271658408388932', 'yd-7111', '2016-09-27 16:58:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658425706615', 'yd-7111', '2016-09-27 16:58:42', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl271658441431377', 'yd-7111', '2016-09-27 16:58:44', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658449188869', 'yd-7111', '2016-09-27 16:58:44', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl271658459776101', 'yd-7111', '2016-09-27 16:58:45', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658465493021', 'yd-7111', '2016-09-27 16:58:46', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl271658478166909', 'yd-7111', '2016-09-27 16:58:47', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271658541371717', 'yd-7111', '2016-09-27 16:58:54', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271658564326377', 'yd-7111', '2016-09-27 16:58:56', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271658572948694', 'yd-7111', '2016-09-27 16:58:57', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271659549209510', 'yd-7111', '2016-09-27 16:59:54', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271659562868672', 'yd-7111', '2016-09-27 16:59:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271700005055226', 'yd-7111', '2016-09-27 17:00:00', '修改', 'DaPerform', 'p271601240411143');
INSERT INTO `timeline` VALUES ('tl271700022929102', 'yd-7111', '2016-09-27 17:00:02', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271700109022758', 'yd-7111', '2016-09-27 17:00:10', '修改', 'DaPerform', 'p271601143103341');
INSERT INTO `timeline` VALUES ('tl271700220161163', 'yd-7111', '2016-09-27 17:00:22', '修改', 'DaPerform', 'p271504480046495');
INSERT INTO `timeline` VALUES ('tl271700243594689', 'yd-7111', '2016-09-27 17:00:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271700267696888', 'yd-7111', '2016-09-27 17:00:26', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271700392199450', 'yd-7111', '2016-09-27 17:00:39', '修改', 'DaPerform', 'p271536228742498');
INSERT INTO `timeline` VALUES ('tl271701063324273', 'yd-7111', '2016-09-27 17:01:06', '修改', 'DaPerform', 'p271536228742498');
INSERT INTO `timeline` VALUES ('tl271701282923621', 'yd-7111', '2016-09-27 17:01:28', '修改', 'DaPerform', 'p271536228742498');
INSERT INTO `timeline` VALUES ('tl271701422777337', 'yd-7111', '2016-09-27 17:01:42', '修改', 'DaPerform', 'p271536228742498');
INSERT INTO `timeline` VALUES ('tl271701449514227', 'yd-7111', '2016-09-27 17:01:44', '修改', 'DaPerform', 'p271508044753288');
INSERT INTO `timeline` VALUES ('tl271702106463958', 'yd-7111', '2016-09-27 17:02:10', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271702130855926', 'yd-7111', '2016-09-27 17:02:13', '修改', 'DaPerform', 'p271507196712916');
INSERT INTO `timeline` VALUES ('tl271702162099588', 'yd-7111', '2016-09-27 17:02:16', '修改', 'DaPerform', 'p271507196712916');
INSERT INTO `timeline` VALUES ('tl271702356284686', 'yd-7111', '2016-09-27 17:02:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271702399309636', 'yd-7111', '2016-09-27 17:02:39', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271702425377384', 'yd-7111', '2016-09-27 17:02:42', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271702427066922', 'yd-7111', '2016-09-27 17:02:42', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271702444753042', 'yd-7111', '2016-09-27 17:02:44', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271702451408651', 'yd-7111', '2016-09-27 17:02:45', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271702464005919', 'yd-7111', '2016-09-27 17:02:46', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702478036153', 'yd-7111', '2016-09-27 17:02:47', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702480703912', 'yd-7111', '2016-09-27 17:02:48', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702484243152', 'yd-7111', '2016-09-27 17:02:48', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702513866103', 'yd-7111', '2016-09-27 17:02:51', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702518267795', 'yd-7111', '2016-09-27 17:02:51', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702522489395', 'yd-7111', '2016-09-27 17:02:52', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702559681413', 'yd-7111', '2016-09-27 17:02:55', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl271702594108288', 'yd-7111', '2016-09-27 17:02:59', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271703014986212', 'yd-7111', '2016-09-27 17:03:01', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271703030466456', 'yd-7111', '2016-09-27 17:03:03', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271754401451175', 'yd-7111', '2016-09-27 17:54:40', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl271754521908296', 'yd-7111', '2016-09-27 17:54:52', '添加', 'DaDemand', 'd271754500486312');
INSERT INTO `timeline` VALUES ('tl271754522242059', 'yd-7111', '2016-09-27 17:54:52', '添加', 'DaPerform', 'p271754500836181');
INSERT INTO `timeline` VALUES ('tl271755035568477', 'yd-7111', '2016-09-27 17:55:03', '添加', 'DaDemand', 'd271755023558744');
INSERT INTO `timeline` VALUES ('tl271755035882636', 'yd-7111', '2016-09-27 17:55:03', '添加', 'DaPerform', 'p271755023992627');
INSERT INTO `timeline` VALUES ('tl271755074789689', 'yd-7111', '2016-09-27 17:55:07', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271755241194943', 'yd-7111', '2016-09-27 17:55:24', '修改', 'DaPerform', 'p271755023992627');
INSERT INTO `timeline` VALUES ('tl271755271786189', 'yd-7111', '2016-09-27 17:55:27', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271755339962574', 'yd-7111', '2016-09-27 17:55:33', '修改', 'DaPerform', 'p271755023992627');
INSERT INTO `timeline` VALUES ('tl271755357504592', 'yd-7111', '2016-09-27 17:55:35', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271755372515250', 'yd-7111', '2016-09-27 17:55:37', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271755381911482', 'yd-7111', '2016-09-27 17:55:38', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271755392747622', 'yd-7111', '2016-09-27 17:55:39', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271755483418594', 'yd-7111', '2016-09-27 17:55:48', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271755489173520', 'yd-7111', '2016-09-27 17:55:48', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl271755496762239', 'yd-7111', '2016-09-27 17:55:49', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271757135332672', 'yd-7111', '2016-09-27 17:57:13', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271757148843706', 'yd-7111', '2016-09-27 17:57:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271757153363835', 'yd-7111', '2016-09-27 17:57:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl271757290626402', 'yd-7111', '2016-09-27 17:57:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl280950293924480', 'yd-7111', '2016-09-28 09:50:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl280951134613688', 'yd-7111', '2016-09-28 09:51:13', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl280951226221007', 'yd-7111', '2016-09-28 09:51:22', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl280952170944643', 'yd-7111', '2016-09-28 09:52:17', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl280953257076628', 'yd-7111', '2016-09-28 09:53:25', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl280953262134934', 'yd-7111', '2016-09-28 09:53:26', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl280953360074792', 'yd-7111', '2016-09-28 09:53:36', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl280953449551147', 'yd-7111', '2016-09-28 09:53:44', '添加', 'DaDemand', 'd280953435731119');
INSERT INTO `timeline` VALUES ('tl280953449805754', 'yd-7111', '2016-09-28 09:53:44', '添加', 'DaPerform', 'p280953436225495');
INSERT INTO `timeline` VALUES ('tl280953463217173', 'yd-7111', '2016-09-28 09:53:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281013057802805', 'yd-7111', '2016-09-28 10:13:05', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281013067769190', 'yd-7111', '2016-09-28 10:13:06', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281013358807370', 'yd-7111', '2016-09-28 10:13:35', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281013424557593', 'yd-7111', '2016-09-28 10:13:42', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281013505723189', 'yd-7111', '2016-09-28 10:13:50', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281013593871710', 'yd-7111', '2016-09-28 10:13:59', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281014132695301', 'yd-7111', '2016-09-28 10:14:13', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281014249167352', 'yd-7111', '2016-09-28 10:14:24', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281014390316824', 'yd-7111', '2016-09-28 10:14:39', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl281014428716656', 'yd-7111', '2016-09-28 10:14:42', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281014443972733', 'yd-7111', '2016-09-28 10:14:44', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281014453698149', 'yd-7111', '2016-09-28 10:14:45', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281015156111643', 'yd-7111', '2016-09-28 10:15:15', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281015189886354', 'yd-7111', '2016-09-28 10:15:18', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281015202517865', 'yd-7111', '2016-09-28 10:15:20', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281015374752998', 'yd-7111', '2016-09-28 10:15:37', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281015383674869', 'yd-7111', '2016-09-28 10:15:38', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281015410017344', 'yd-7111', '2016-09-28 10:15:41', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281015427026104', 'yd-7111', '2016-09-28 10:15:42', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281016102135541', 'yd-7111', '2016-09-28 10:16:10', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl281016120101286', 'yd-7111', '2016-09-28 10:16:12', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281016398093529', 'yd-7111', '2016-09-28 10:16:39', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281017005748162', 'yd-7111', '2016-09-28 10:17:00', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281017154474224', 'yd-7111', '2016-09-28 10:17:15', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281017331881964', 'yd-7111', '2016-09-28 10:17:33', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281017440578750', 'yd-7111', '2016-09-28 10:17:44', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281018007097777', 'yd-7111', '2016-09-28 10:18:00', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281018216637382', 'yd-7111', '2016-09-28 10:18:21', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281018365757087', 'yd-7111', '2016-09-28 10:18:36', '修改', 'Role', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl281018382381774', 'yd-7111', '2016-09-28 10:18:38', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281018458209665', 'yd-7111', '2016-09-28 10:18:45', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281019140517768', 'yd-7111', '2016-09-28 10:19:14', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281019169067507', 'yd-7111', '2016-09-28 10:19:16', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281019175519497', 'yd-7111', '2016-09-28 10:19:17', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281019180227427', 'yd-7111', '2016-09-28 10:19:18', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281019185208931', 'yd-7111', '2016-09-28 10:19:18', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281019442105491', 'yd-7111', '2016-09-28 10:19:44', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281020158332431', 'yd-7111', '2016-09-28 10:20:15', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281020542853846', 'yd-7111', '2016-09-28 10:20:54', '添加', 'Users', '123112');
INSERT INTO `timeline` VALUES ('tl281020559767997', 'yd-7111', '2016-09-28 10:20:55', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281021204568130', 'yd-7111', '2016-09-28 10:21:20', '修改', 'Users', '123112');
INSERT INTO `timeline` VALUES ('tl281021219827829', 'yd-7111', '2016-09-28 10:21:21', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281022057955636', 'yd-7111', '2016-09-28 10:22:05', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281022095974815', 'yd-7111', '2016-09-28 10:22:09', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281022439108285', 'yd-7111', '2016-09-28 10:22:43', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281023037404551', 'yd-7111', '2016-09-28 10:23:03', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl281023059161035', 'yd-7111', '2016-09-28 10:23:05', '查看', 'FbdListLink', null);
INSERT INTO `timeline` VALUES ('tl281023557555261', 'yd-7111', '2016-09-28 10:23:55', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281024112604807', 'yd-7111', '2016-09-28 10:24:11', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281024514858940', 'yd-7111', '2016-09-28 10:24:51', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281024593553560', 'yd-7111', '2016-09-28 10:24:59', '修改', 'Users', 'yd-6897');
INSERT INTO `timeline` VALUES ('tl281025009764073', 'yd-7111', '2016-09-28 10:25:00', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281025146295736', 'yd-7111', '2016-09-28 10:25:14', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281025450971723', 'yd-7111', '2016-09-28 10:25:45', '修改', 'Users', '123112');
INSERT INTO `timeline` VALUES ('tl281025466354428', 'yd-7111', '2016-09-28 10:25:46', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281025552168075', 'yd-7111', '2016-09-28 10:25:55', '删除', 'Users', '123112');
INSERT INTO `timeline` VALUES ('tl281025573897076', 'yd-7111', '2016-09-28 10:25:57', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281026019175047', 'yd-7111', '2016-09-28 10:26:01', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281027077154934', 'yd-7111', '2016-09-28 10:27:07', '修改', 'Users', 'yd-7164');
INSERT INTO `timeline` VALUES ('tl281027091461329', 'yd-7111', '2016-09-28 10:27:09', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281027256254681', 'yd-7111', '2016-09-28 10:27:25', '修改', 'Users', 'yd-5852');
INSERT INTO `timeline` VALUES ('tl281027269054508', 'yd-7111', '2016-09-28 10:27:26', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl281027329046226', 'yd-7111', '2016-09-28 10:27:32', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281027436821423', 'yd-7111', '2016-09-28 10:27:43', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281027534262495', 'yd-7111', '2016-09-28 10:27:53', '添加', 'Role', 'r281027531694428');
INSERT INTO `timeline` VALUES ('tl281027548973552', 'yd-7111', '2016-09-28 10:27:54', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281027598597829', 'yd-7111', '2016-09-28 10:27:59', '删除', 'Role', 'r281027531694428');
INSERT INTO `timeline` VALUES ('tl281028011098670', 'yd-7111', '2016-09-28 10:28:01', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl281028046296177', 'yd-7111', '2016-09-28 10:28:04', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281028066235014', 'yd-7111', '2016-09-28 10:28:06', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281028075709249', 'yd-7111', '2016-09-28 10:28:07', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281028082334783', 'yd-7111', '2016-09-28 10:28:08', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281028091678875', 'yd-7111', '2016-09-28 10:28:09', '查看', 'DaDemand', '');
INSERT INTO `timeline` VALUES ('tl281028110014950', 'yd-7111', '2016-09-28 10:28:11', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281028118667809', 'yd-7111', '2016-09-28 10:28:11', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281028145667052', 'yd-7111', '2016-09-28 10:28:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281028159803074', 'yd-7111', '2016-09-28 10:28:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281028167857063', 'yd-7111', '2016-09-28 10:28:16', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281028176944932', 'yd-7111', '2016-09-28 10:28:17', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281028183537439', 'yd-7111', '2016-09-28 10:28:18', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281029400354068', 'yd-7111', '2016-09-28 10:29:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281029410258092', 'yd-7111', '2016-09-28 10:29:41', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281029438771577', 'yd-7111', '2016-09-28 10:29:43', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281029457735840', 'yd-7111', '2016-09-28 10:29:45', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281029464221727', 'yd-7111', '2016-09-28 10:29:46', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281029499764788', 'yd-7111', '2016-09-28 10:29:49', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281029514463150', 'yd-7111', '2016-09-28 10:29:51', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281029526419937', 'yd-7111', '2016-09-28 10:29:52', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281029574629245', 'yd-7111', '2016-09-28 10:29:57', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281029595241756', 'yd-7111', '2016-09-28 10:29:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281030028879898', 'yd-7111', '2016-09-28 10:30:02', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281030049492216', 'yd-7111', '2016-09-28 10:30:04', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281030085551514', 'yd-7111', '2016-09-28 10:30:08', '查看', 'DaPerform', '');
INSERT INTO `timeline` VALUES ('tl281030150501129', 'yd-7111', '2016-09-28 10:30:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281030235758326', 'yd-7111', '2016-09-28 10:30:23', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281030261185327', 'yd-7111', '2016-09-28 10:30:26', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281030269509793', 'yd-7111', '2016-09-28 10:30:26', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281030277052979', 'yd-7111', '2016-09-28 10:30:27', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281030281346701', 'yd-7111', '2016-09-28 10:30:28', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281030406882060', 'yd-7111', '2016-09-28 10:30:40', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281030496176567', 'yd-7111', '2016-09-28 10:30:49', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281030501095864', 'yd-7111', '2016-09-28 10:30:50', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281031033839991', 'yd-7111', '2016-09-28 10:31:03', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281032512867357', 'yd-7111', '2016-09-28 10:32:51', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281033269214064', 'yd-7111', '2016-09-28 10:33:26', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281033417604974', 'yd-7111', '2016-09-28 10:33:41', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281033566401630', 'yd-7111', '2016-09-28 10:33:56', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281034066573947', 'yd-7111', '2016-09-28 10:34:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281034256254725', 'yd-7111', '2016-09-28 10:34:25', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281034367814819', 'yd-7111', '2016-09-28 10:34:36', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281034464215360', 'yd-7111', '2016-09-28 10:34:46', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281034466838370', 'yd-7111', '2016-09-28 10:34:46', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281035157327025', 'yd-7111', '2016-09-28 10:35:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281035437014572', 'yd-7111', '2016-09-28 10:35:43', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281036086975035', 'yd-7111', '2016-09-28 10:36:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281045061037401', 'yd-7111', '2016-09-28 10:45:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281045081547433', 'yd-7111', '2016-09-28 10:45:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281045379901737', 'yd-7111', '2016-09-28 10:45:37', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281046169021651', 'yd-7111', '2016-09-28 10:46:16', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281046247852139', 'yd-7111', '2016-09-28 10:46:24', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281046503449985', 'yd-7111', '2016-09-28 10:46:50', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281047061505994', 'yd-7111', '2016-09-28 10:47:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281047064903093', 'yd-7111', '2016-09-28 10:47:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281047479761303', 'yd-7111', '2016-09-28 10:47:47', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281048121518886', 'yd-7111', '2016-09-28 10:48:12', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281049002073738', 'yd-7111', '2016-09-28 10:49:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281049266731016', 'yd-7111', '2016-09-28 10:49:26', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281050514821627', 'yd-7111', '2016-09-28 10:50:51', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281052006427792', 'yd-7111', '2016-09-28 10:52:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281052358748048', 'yd-7111', '2016-09-28 10:52:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281053021731068', 'yd-7111', '2016-09-28 10:53:02', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281053421837566', 'yd-7111', '2016-09-28 10:53:42', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281054067223954', 'yd-7111', '2016-09-28 10:54:06', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281055009763563', 'yd-7111', '2016-09-28 10:55:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281055406219170', 'yd-7111', '2016-09-28 10:55:40', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056141521930', 'yd-7111', '2016-09-28 10:56:14', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056151939177', 'yd-7111', '2016-09-28 10:56:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056240362028', 'yd-7111', '2016-09-28 10:56:24', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056311505894', 'yd-7111', '2016-09-28 10:56:31', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056359455474', 'yd-7111', '2016-09-28 10:56:35', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281056412558666', 'yd-7111', '2016-09-28 10:56:41', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281101031965040', 'yd-7111', '2016-09-28 11:01:03', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281101150943064', 'yd-7111', '2016-09-28 11:01:15', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281101216342909', 'yd-7111', '2016-09-28 11:01:21', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281101381382140', 'yd-7111', '2016-09-28 11:01:38', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281101444939922', 'yd-7111', '2016-09-28 11:01:44', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281105522901591', 'yd-7111', '2016-09-28 11:05:52', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105532485295', 'yd-7111', '2016-09-28 11:05:53', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281105538422292', 'yd-7111', '2016-09-28 11:05:53', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105542645467', 'yd-7111', '2016-09-28 11:05:54', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281105546712210', 'yd-7111', '2016-09-28 11:05:54', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105551811259', 'yd-7111', '2016-09-28 11:05:55', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281105563891548', 'yd-7111', '2016-09-28 11:05:56', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105569335714', 'yd-7111', '2016-09-28 11:05:56', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281105576769209', 'yd-7111', '2016-09-28 11:05:57', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105583062057', 'yd-7111', '2016-09-28 11:05:58', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281105589869310', 'yd-7111', '2016-09-28 11:05:58', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281105596333861', 'yd-7111', '2016-09-28 11:05:59', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106005743492', 'yd-7111', '2016-09-28 11:06:00', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106009408027', 'yd-7111', '2016-09-28 11:06:00', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106013912353', 'yd-7111', '2016-09-28 11:06:01', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106017845860', 'yd-7111', '2016-09-28 11:06:01', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106026071283', 'yd-7111', '2016-09-28 11:06:02', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106035931622', 'yd-7111', '2016-09-28 11:06:03', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106042961789', 'yd-7111', '2016-09-28 11:06:04', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106051777244', 'yd-7111', '2016-09-28 11:06:05', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106057079578', 'yd-7111', '2016-09-28 11:06:05', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106062355826', 'yd-7111', '2016-09-28 11:06:06', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106066446090', 'yd-7111', '2016-09-28 11:06:06', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106074695260', 'yd-7111', '2016-09-28 11:06:07', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106081501029', 'yd-7111', '2016-09-28 11:06:08', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106086947418', 'yd-7111', '2016-09-28 11:06:08', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106093416973', 'yd-7111', '2016-09-28 11:06:09', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106108079430', 'yd-7111', '2016-09-28 11:06:10', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106113155256', 'yd-7111', '2016-09-28 11:06:11', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106118175255', 'yd-7111', '2016-09-28 11:06:11', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106123282558', 'yd-7111', '2016-09-28 11:06:12', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106127184272', 'yd-7111', '2016-09-28 11:06:12', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106131125737', 'yd-7111', '2016-09-28 11:06:13', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106135262478', 'yd-7111', '2016-09-28 11:06:13', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106139056112', 'yd-7111', '2016-09-28 11:06:13', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106143168986', 'yd-7111', '2016-09-28 11:06:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106146458320', 'yd-7111', '2016-09-28 11:06:14', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106150542273', 'yd-7111', '2016-09-28 11:06:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106155066862', 'yd-7111', '2016-09-28 11:06:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106159055614', 'yd-7111', '2016-09-28 11:06:15', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106163296097', 'yd-7111', '2016-09-28 11:06:16', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106170278656', 'yd-7111', '2016-09-28 11:06:17', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106176784806', 'yd-7111', '2016-09-28 11:06:17', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106183569323', 'yd-7111', '2016-09-28 11:06:18', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106195668834', 'yd-7111', '2016-09-28 11:06:19', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106204619531', 'yd-7111', '2016-09-28 11:06:20', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106210282202', 'yd-7111', '2016-09-28 11:06:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106213196190', 'yd-7111', '2016-09-28 11:06:21', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106217676429', 'yd-7111', '2016-09-28 11:06:21', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106220651142', 'yd-7111', '2016-09-28 11:06:22', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106229549413', 'yd-7111', '2016-09-28 11:06:22', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106233559103', 'yd-7111', '2016-09-28 11:06:23', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106239308875', 'yd-7111', '2016-09-28 11:06:23', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106242903926', 'yd-7111', '2016-09-28 11:06:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106246061094', 'yd-7111', '2016-09-28 11:06:24', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106249882179', 'yd-7111', '2016-09-28 11:06:24', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106257157032', 'yd-7111', '2016-09-28 11:06:25', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106260527671', 'yd-7111', '2016-09-28 11:06:26', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106269316300', 'yd-7111', '2016-09-28 11:06:26', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106276142390', 'yd-7111', '2016-09-28 11:06:27', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106278548110', 'yd-7111', '2016-09-28 11:06:27', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106283593864', 'yd-7111', '2016-09-28 11:06:28', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106288707913', 'yd-7111', '2016-09-28 11:06:28', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106292599938', 'yd-7111', '2016-09-28 11:06:29', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106296692132', 'yd-7111', '2016-09-28 11:06:29', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106300354039', 'yd-7111', '2016-09-28 11:06:30', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106304046978', 'yd-7111', '2016-09-28 11:06:30', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106307681269', 'yd-7111', '2016-09-28 11:06:30', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106311517800', 'yd-7111', '2016-09-28 11:06:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106316996004', 'yd-7111', '2016-09-28 11:06:31', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106319829927', 'yd-7111', '2016-09-28 11:06:31', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106324068552', 'yd-7111', '2016-09-28 11:06:32', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106327364150', 'yd-7111', '2016-09-28 11:06:32', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106331862817', 'yd-7111', '2016-09-28 11:06:33', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106350708386', 'yd-7111', '2016-09-28 11:06:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106352945834', 'yd-7111', '2016-09-28 11:06:35', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281106355819069', 'yd-7111', '2016-09-28 11:06:35', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106359538473', 'yd-7111', '2016-09-28 11:06:35', '查看', 'DaDemand', null);
INSERT INTO `timeline` VALUES ('tl281106367669237', 'yd-7111', '2016-09-28 11:06:36', '查看', 'DaPerform', null);
INSERT INTO `timeline` VALUES ('tl281106375409078', 'yd-7111', '2016-09-28 11:06:37', '查看', 'DaCount', null);
INSERT INTO `timeline` VALUES ('tl281119055788263', 'yd-7111', '2016-09-28 11:19:05', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281119089965383', 'yd-7111', '2016-09-28 11:19:08', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281121431757894', 'yd-7111', '2016-09-28 11:21:43', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281125505101771', 'yd-7111', '2016-09-28 11:25:50', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281125528091561', 'yd-7111', '2016-09-28 11:25:52', '查看', '故障报修管理', null);
INSERT INTO `timeline` VALUES ('tl281125533167811', 'yd-7111', '2016-09-28 11:25:53', '查看', '故障报修转发审核', null);
INSERT INTO `timeline` VALUES ('tl281125544632271', 'yd-7111', '2016-09-28 11:25:54', '查看', '故障报修处理', null);
INSERT INTO `timeline` VALUES ('tl281125550517812', 'yd-7111', '2016-09-28 11:25:55', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281125580882475', 'yd-7111', '2016-09-28 11:25:58', '查看', '用户管理', null);
INSERT INTO `timeline` VALUES ('tl281125584872661', 'yd-7111', '2016-09-28 11:25:58', '查看', '用户管理', null);
INSERT INTO `timeline` VALUES ('tl281125589517777', 'yd-7111', '2016-09-28 11:25:58', '查看', '角色管理', null);
INSERT INTO `timeline` VALUES ('tl281126041994954', 'yd-7111', '2016-09-28 11:26:04', '查看', '公司组织架构', null);
INSERT INTO `timeline` VALUES ('tl281126057363803', 'yd-7111', '2016-09-28 11:26:05', '查看', '公司组织架构', null);
INSERT INTO `timeline` VALUES ('tl281126082613152', 'yd-7111', '2016-09-28 11:26:08', '查看', '硬件组-ASDL', null);
INSERT INTO `timeline` VALUES ('tl281126086434755', 'yd-7111', '2016-09-28 11:26:08', '查看', '分拨点监控', null);
INSERT INTO `timeline` VALUES ('tl281126101116147', 'yd-7111', '2016-09-28 11:26:10', '查看', '分拨点电脑', null);
INSERT INTO `timeline` VALUES ('tl281126114554680', 'yd-7111', '2016-09-28 11:26:11', '查看', '分拨点监控材料清单', null);
INSERT INTO `timeline` VALUES ('tl281126118755178', 'yd-7111', '2016-09-28 11:26:11', '查看', '分拨点监控材料清单', null);
INSERT INTO `timeline` VALUES ('tl281126124459212', 'yd-7111', '2016-09-28 11:26:12', '查看', '硬件组-SIM', null);
INSERT INTO `timeline` VALUES ('tl281126138373764', 'yd-7111', '2016-09-28 11:26:13', '查看', '硬件组-内件收发', null);
INSERT INTO `timeline` VALUES ('tl281126147602890', 'yd-7111', '2016-09-28 11:26:14', '查看', '硬件组-外出登记', null);
INSERT INTO `timeline` VALUES ('tl281126157907391', 'yd-7111', '2016-09-28 11:26:15', '查看', '站点资料', null);
INSERT INTO `timeline` VALUES ('tl281126166976308', 'yd-7111', '2016-09-28 11:26:16', '查看', '二级站点资料', null);
INSERT INTO `timeline` VALUES ('tl281126176122828', 'yd-7111', '2016-09-28 11:26:17', '查看', '哲盟账号申请登记', null);
INSERT INTO `timeline` VALUES ('tl281126183232436', 'yd-7111', '2016-09-28 11:26:18', '查看', '哲盟数据检查登记', null);
INSERT INTO `timeline` VALUES ('tl281126193964342', 'yd-7111', '2016-09-28 11:26:19', '查看', 'VPN管理', null);
INSERT INTO `timeline` VALUES ('tl281126207847082', 'yd-7111', '2016-09-28 11:26:20', '查看', '布谷鸟邮箱账号登记', null);
INSERT INTO `timeline` VALUES ('tl281126215833049', 'yd-7111', '2016-09-28 11:26:21', '查看', 'OA账号登记', null);
INSERT INTO `timeline` VALUES ('tl281126225273342', 'yd-7111', '2016-09-28 11:26:22', '查看', '打印机登记', null);
INSERT INTO `timeline` VALUES ('tl281126243774344', 'yd-7111', '2016-09-28 11:26:24', '查看', '打印机登记', null);
INSERT INTO `timeline` VALUES ('tl281126250332082', 'yd-7111', '2016-09-28 11:26:25', '查看', '哲盟数据检查登记', null);
INSERT INTO `timeline` VALUES ('tl281126259001678', 'yd-7111', '2016-09-28 11:26:25', '查看', '小仓巴枪电脑登记', null);
INSERT INTO `timeline` VALUES ('tl281126268366414', 'yd-7111', '2016-09-28 11:26:26', '查看', '园区wifi管理', null);
INSERT INTO `timeline` VALUES ('tl281126277113051', 'yd-7111', '2016-09-28 11:26:27', '查看', '电话线分布', null);
INSERT INTO `timeline` VALUES ('tl281126302008115', 'yd-7111', '2016-09-28 11:26:30', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281127384446946', 'yd-7111', '2016-09-28 11:27:38', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281127410851208', 'yd-7111', '2016-09-28 11:27:41', '查看', '故障报修管理', null);
INSERT INTO `timeline` VALUES ('tl281127417849157', 'yd-7111', '2016-09-28 11:27:41', '查看', '故障报修转发审核', null);
INSERT INTO `timeline` VALUES ('tl281127422208106', 'yd-7111', '2016-09-28 11:27:42', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281127426278113', 'yd-7111', '2016-09-28 11:27:42', '查看', '故障报修处理', null);
INSERT INTO `timeline` VALUES ('tl281127439727765', 'yd-7111', '2016-09-28 11:27:43', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281127448954019', 'yd-7111', '2016-09-28 11:27:44', '查看', '故障报修统计——专员', null);
INSERT INTO `timeline` VALUES ('tl281127472827156', 'yd-7111', '2016-09-28 11:27:47', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl281131096364978', 'yd-7111', '2016-09-28 11:31:09', '查看', '个人中心-时间轴', null);
INSERT INTO `timeline` VALUES ('tl281131147617798', 'yd-7111', '2016-09-28 11:31:14', '查看', '硬件组-ASDL', null);
INSERT INTO `timeline` VALUES ('tl281131155114454', 'yd-7111', '2016-09-28 11:31:15', '查看', '硬件组-分拨点监控', null);
INSERT INTO `timeline` VALUES ('tl281131160855235', 'yd-7111', '2016-09-28 11:31:16', '查看', '硬件组-分拨点电脑', null);
INSERT INTO `timeline` VALUES ('tl281131166478005', 'yd-7111', '2016-09-28 11:31:16', '查看', '硬件组-分拨点监控材料清单', null);
INSERT INTO `timeline` VALUES ('tl281131173739848', 'yd-7111', '2016-09-28 11:31:17', '查看', '硬件组-SIM', null);
INSERT INTO `timeline` VALUES ('tl281131177988447', 'yd-7111', '2016-09-28 11:31:17', '查看', '硬件组-内件收发', null);
INSERT INTO `timeline` VALUES ('tl281131183712590', 'yd-7111', '2016-09-28 11:31:18', '查看', '硬件组-外出登记', null);
INSERT INTO `timeline` VALUES ('tl281131192251136', 'yd-7111', '2016-09-28 11:31:19', '查看', '系统组-站点资料', null);
INSERT INTO `timeline` VALUES ('tl281131197346611', 'yd-7111', '2016-09-28 11:31:19', '查看', '系统组-二级站点资料', null);
INSERT INTO `timeline` VALUES ('tl281131203764002', 'yd-7111', '2016-09-28 11:31:20', '查看', '系统组-哲盟账号申请登记', null);
INSERT INTO `timeline` VALUES ('tl281131208311877', 'yd-7111', '2016-09-28 11:31:20', '查看', '系统组-哲盟数据检查登记', null);
INSERT INTO `timeline` VALUES ('tl281131214575712', 'yd-7111', '2016-09-28 11:31:21', '查看', '桌面组-VPN管理', null);
INSERT INTO `timeline` VALUES ('tl281131220011078', 'yd-7111', '2016-09-28 11:31:22', '查看', '桌面组-布谷鸟邮箱账号登记', null);
INSERT INTO `timeline` VALUES ('tl281131224567922', 'yd-7111', '2016-09-28 11:31:22', '查看', '桌面组-OA账号登记', null);
INSERT INTO `timeline` VALUES ('tl281131229958218', 'yd-7111', '2016-09-28 11:31:22', '查看', '桌面组-打印机登记', null);
INSERT INTO `timeline` VALUES ('tl281131234871883', 'yd-7111', '2016-09-28 11:31:23', '查看', '系统组-哲盟数据检查登记', null);
INSERT INTO `timeline` VALUES ('tl281131239568325', 'yd-7111', '2016-09-28 11:31:23', '查看', '桌面组-小仓巴枪电脑登记', null);
INSERT INTO `timeline` VALUES ('tl281131244612872', 'yd-7111', '2016-09-28 11:31:24', '查看', '桌面组-园区wifi管理', null);
INSERT INTO `timeline` VALUES ('tl281131249002894', 'yd-7111', '2016-09-28 11:31:24', '查看', '桌面组-电话线分布', null);
INSERT INTO `timeline` VALUES ('tl281131308512352', 'yd-7111', '2016-09-28 11:31:30', '查看', '通讯录-公司组织架构', null);
INSERT INTO `timeline` VALUES ('tl281131322117830', 'yd-7111', '2016-09-28 11:31:32', '查看', '通讯录-公司组织架构', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl281131363528663', 'yd-7111', '2016-09-28 11:31:36', '查看', '系统管理-用户管理', null);
INSERT INTO `timeline` VALUES ('tl281131368163108', 'yd-7111', '2016-09-28 11:31:36', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl281131405437265', 'yd-7111', '2016-09-28 11:31:40', '查看', '故障报修管理', null);
INSERT INTO `timeline` VALUES ('tl281131414441933', 'yd-7111', '2016-09-28 11:31:41', '查看', '故障报修转发审核', null);
INSERT INTO `timeline` VALUES ('tl281131420107369', 'yd-7111', '2016-09-28 11:31:42', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281131426237355', 'yd-7111', '2016-09-28 11:31:42', '查看', '故障报修处理', null);
INSERT INTO `timeline` VALUES ('tl281131434174617', 'yd-7111', '2016-09-28 11:31:43', '查看', '故障报修转发审核', null);
INSERT INTO `timeline` VALUES ('tl281131446128652', 'yd-7111', '2016-09-28 11:31:44', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl281131453373504', 'yd-7111', '2016-09-28 11:31:45', '查看', '故障报修统计——专员', null);
INSERT INTO `timeline` VALUES ('tl281131481246215', 'yd-7111', '2016-09-28 11:31:48', '查看', '个人中心-时间轴', null);
INSERT INTO `timeline` VALUES ('tl281133234706576', 'yd-7111', '2016-09-28 11:33:23', '查看', '通讯录-公司内部组织架构', null);
INSERT INTO `timeline` VALUES ('tl281133250197393', 'yd-7111', '2016-09-28 11:33:25', '查看', '通讯录-公司内部组织架构', null);
INSERT INTO `timeline` VALUES ('tl281133259017225', 'yd-7111', '2016-09-28 11:33:25', '查看', '通讯录-公司内部组织架构', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl281133276107030', 'yd-7111', '2016-09-28 11:33:27', '查看', '通讯录-公司内部组织架构', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl281133302443713', 'yd-7111', '2016-09-28 11:33:30', '查看', '通讯录-公司内部组织架构', 'cs181642515815123');
INSERT INTO `timeline` VALUES ('tl281133308776236', 'yd-7111', '2016-09-28 11:33:30', '查看', '通讯录-公司内部组织架构', 'cs181702540888189');
INSERT INTO `timeline` VALUES ('tl281133314167234', 'yd-7111', '2016-09-28 11:33:31', '查看', '通讯录-公司内部组织架构', 'cs181703532303830');
INSERT INTO `timeline` VALUES ('tl281133339365800', 'yd-7111', '2016-09-28 11:33:33', '查看', '个人中心-时间轴', null);
INSERT INTO `timeline` VALUES ('tl281133429089274', 'yd-7111', '2016-09-28 11:33:42', '查看', '个人中心-消息提醒', null);
INSERT INTO `timeline` VALUES ('tl281133449705362', 'yd-7111', '2016-09-28 11:33:44', '查看', '个人中心-时间轴', null);
INSERT INTO `timeline` VALUES ('tl290937363454955', 'yd-7111', '2016-09-29 09:37:36', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl290938283312148', 'yd-7111', '2016-09-29 09:38:28', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl290938292379818', 'yd-7111', '2016-09-29 09:38:29', '查看', '故障报修统计——专员', null);
INSERT INTO `timeline` VALUES ('tl290938320288940', 'yd-7111', '2016-09-29 09:38:32', '查看', '故障报修统计——专员', null);
INSERT INTO `timeline` VALUES ('tl290938326573334', 'yd-7111', '2016-09-29 09:38:32', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl290938343396328', 'yd-7111', '2016-09-29 09:38:34', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl290938352654514', 'yd-7111', '2016-09-29 09:38:35', '查看', '故障报修统计——客服', null);
INSERT INTO `timeline` VALUES ('tl291105470266809', 'yd-7111', '2016-09-29 11:05:47', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291105589517904', 'yd-7111', '2016-09-29 11:05:58', '修改', '系统管理-角色管理', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl291106006755622', 'yd-7111', '2016-09-29 11:06:00', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291106093844188', 'yd-7111', '2016-09-29 11:06:09', '修改', '系统管理-角色管理', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl291106109788222', 'yd-7111', '2016-09-29 11:06:10', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291106189865109', 'yd-7111', '2016-09-29 11:06:18', '修改', '系统管理-角色管理', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl291106214395922', 'yd-7111', '2016-09-29 11:06:21', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291106299685190', 'yd-7111', '2016-09-29 11:06:29', '修改', '系统管理-角色管理', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl291106320926577', 'yd-7111', '2016-09-29 11:06:32', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291106403528451', 'yd-7111', '2016-09-29 11:06:40', '修改', '系统管理-角色管理', 'r111613371752208');
INSERT INTO `timeline` VALUES ('tl291106430102282', 'yd-7111', '2016-09-29 11:06:43', '查看', '系统管理-角色管理', null);
INSERT INTO `timeline` VALUES ('tl291514194831048', 'yd-7111', '2016-08-29 15:14:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291514198725669', 'yd-7111', '2016-08-29 15:14:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291514240498044', 'yd-7111', '2016-08-29 15:14:24', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291514385833792', 'yd-7111', '2016-08-29 15:14:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291514575671241', 'yd-7111', '2016-08-29 15:14:57', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291515057468496', 'yd-7111', '2016-08-29 15:15:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291515177512147', 'yd-7111', '2016-08-29 15:15:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291516245706913', 'yd-7111', '2016-08-29 15:16:24', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291516480343946', 'yd-7111', '2016-08-29 15:16:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291517356516551', 'yd-7111', '2016-08-29 15:17:35', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291518019795712', 'yd-7111', '2016-08-29 15:18:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291518022018199', 'yd-7111', '2016-08-29 15:18:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291518271567850', 'yd-7111', '2016-08-29 15:18:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291519297991811', 'yd-7111', '2016-08-29 15:19:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291520195167608', 'yd-7111', '2016-08-29 15:20:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291520314261057', 'yd-7111', '2016-08-29 15:20:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291520349854242', 'yd-7111', '2016-08-29 15:20:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291521048092176', 'yd-7111', '2016-08-29 15:21:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291521082416769', 'yd-7111', '2016-08-29 15:21:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291521514944002', 'yd-7111', '2016-08-29 15:21:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291521580512478', 'yd-7111', '2016-08-29 15:21:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291522239312701', 'yd-7111', '2016-08-29 15:22:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291522367693213', 'yd-7111', '2016-08-29 15:22:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291523481824653', 'yd-7111', '2016-08-29 15:23:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291524136616422', 'yd-7111', '2016-08-29 15:24:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291524412581622', 'yd-7111', '2016-08-29 15:24:41', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291526005217887', 'yd-7111', '2016-08-29 15:26:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291526119828982', 'yd-7111', '2016-08-29 15:26:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291526532641687', 'yd-7111', '2016-08-29 15:26:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291527213902487', 'yd-7111', '2016-08-29 15:27:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291527510849116', 'yd-7111', '2016-08-29 15:27:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291744484532654', 'yd-7111', '2016-08-29 17:44:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291744487159502', 'yd-7111', '2016-08-29 17:44:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291746009809758', 'yd-7111', '2016-08-29 17:46:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291746065327962', 'yd-7111', '2016-08-29 17:46:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291747050339246', 'yd-7111', '2016-08-29 17:47:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291747546821599', 'yd-7111', '2016-08-29 17:47:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl291747552723575', 'yd-7111', '2016-08-29 17:47:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301027481639824', 'yd-7111', '2016-08-30 10:27:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301027485535971', 'yd-7111', '2016-08-30 10:27:48', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl301035280852701', 'yd-7111', '2016-08-30 10:35:28', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301040558804799', 'yd-7111', '2016-08-30 10:40:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301042507134135', 'yd-7111', '2016-08-30 10:42:50', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301045580398030', 'yd-7111', '2016-08-30 10:45:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301125046288799', 'yd-7111', '2016-08-30 11:25:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301132010808643', 'yd-7111', '2016-08-30 11:32:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301133124598003', 'yd-7111', '2016-08-30 11:33:12', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301138145498482', 'yd-7111', '2016-08-30 11:38:14', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301143589494155', 'yd-7111', '2016-08-30 11:43:58', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301144056521845', 'yd-7111', '2016-08-30 11:44:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301146311946380', 'yd-7111', '2016-08-30 11:46:31', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301146343915765', 'yd-7111', '2016-08-30 11:46:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301147069872744', 'yd-7111', '2016-08-30 11:47:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301148149205833', 'yd-7111', '2016-08-30 11:48:14', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301148273735066', 'yd-7111', '2016-08-30 11:48:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301148370518084', 'yd-7111', '2016-08-30 11:48:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301148538999042', 'yd-7111', '2016-08-30 11:48:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301148551557004', 'yd-7111', '2016-08-30 11:48:55', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301150330841735', 'yd-7111', '2016-08-30 11:50:33', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301150338013167', 'yd-7111', '2016-08-30 11:50:33', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301150457977267', 'yd-7111', '2016-08-30 11:50:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301150465851675', 'yd-7111', '2016-08-30 11:50:46', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301151156599658', 'yd-7111', '2016-08-30 11:51:15', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301151169646157', 'yd-7111', '2016-08-30 11:51:16', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301323169452921', 'yd-7111', '2016-08-30 13:23:16', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301323204704269', 'yd-7111', '2016-08-30 13:23:20', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301323258561254', 'yd-7111', '2016-08-30 13:23:25', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301325122598098', 'yd-7111', '2016-08-30 13:25:12', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301325263177246', 'yd-7111', '2016-08-30 13:25:26', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301326050818602', 'yd-7111', '2016-08-30 13:26:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301326360653024', 'yd-7111', '2016-08-30 13:26:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301326418145812', 'yd-7111', '2016-08-30 13:26:41', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301338123805598', 'yd-7111', '2016-08-30 13:38:12', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301343372178481', 'yd-7111', '2016-08-30 13:43:37', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301349170217996', 'yd-7111', '2016-08-30 13:49:17', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301350034584769', 'yd-7111', '2016-08-30 13:50:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301350212581306', 'yd-7111', '2016-08-30 13:50:21', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301351277852839', 'yd-7111', '2016-08-30 13:51:27', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301351443945515', 'yd-7111', '2016-08-30 13:51:44', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301353021633701', 'yd-7111', '2016-08-30 13:53:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301353094923205', 'yd-7111', '2016-08-30 13:53:09', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301354136378859', 'yd-7111', '2016-08-30 13:54:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301354220348267', 'yd-7111', '2016-08-30 13:54:22', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301355548961506', 'yd-7111', '2016-08-30 13:55:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301400569068676', 'yd-7111', '2016-08-30 14:00:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301401191223288', 'yd-7111', '2016-08-30 14:01:19', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301402130419047', 'yd-7111', '2016-08-30 14:02:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301403013064847', 'yd-7111', '2016-08-30 14:03:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301403027835198', 'yd-7111', '2016-08-30 14:03:02', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301403089907981', 'yd-7111', '2016-08-30 14:03:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301403175164138', 'yd-7111', '2016-08-30 14:03:17', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301403518683257', 'yd-7111', '2016-08-30 14:03:51', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301403564241014', 'yd-7111', '2016-08-30 14:03:56', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301403598003351', 'yd-7111', '2016-08-30 14:03:59', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301404053936318', 'yd-7111', '2016-08-30 14:04:05', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301404088132140', 'yd-7111', '2016-08-30 14:04:08', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301404285562549', 'yd-7111', '2016-08-30 14:04:28', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301404352884348', 'yd-7111', '2016-08-30 14:04:35', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301404506437022', 'yd-7111', '2016-08-30 14:04:50', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301410002819176', 'yd-7111', '2016-08-30 14:10:00', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301410100856449', 'yd-7111', '2016-08-30 14:10:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410144429102', 'yd-7111', '2016-08-30 14:10:14', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410222225473', 'yd-7111', '2016-08-30 14:10:22', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301410308805765', 'yd-7111', '2016-08-30 14:10:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410370868678', 'yd-7111', '2016-08-30 14:10:37', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301410437276380', 'yd-7111', '2016-08-30 14:10:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410469077650', 'yd-7111', '2016-08-30 14:10:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410495016301', 'yd-7111', '2016-08-30 14:10:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301410532973931', 'yd-7111', '2016-08-30 14:10:53', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301410566414555', 'yd-7111', '2016-08-30 14:10:56', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301411005302811', 'yd-7111', '2016-08-30 14:11:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301411042648277', 'yd-7111', '2016-08-30 14:11:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301411060679731', 'yd-7111', '2016-08-30 14:11:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301411190543885', 'yd-7111', '2016-08-30 14:11:19', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301411491107915', 'yd-7111', '2016-08-30 14:11:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301412018549450', 'yd-7111', '2016-08-30 14:12:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301412375223977', 'yd-7111', '2016-08-30 14:12:37', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301413236562522', 'yd-7111', '2016-08-30 14:13:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413275466691', 'yd-7111', '2016-08-30 14:13:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413314889530', 'yd-7111', '2016-08-30 14:13:31', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301413463835367', 'yd-7111', '2016-08-30 14:13:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413489329792', 'yd-7111', '2016-08-30 14:13:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413514308295', 'yd-7111', '2016-08-30 14:13:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413533734191', 'yd-7111', '2016-08-30 14:13:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413552693098', 'yd-7111', '2016-08-30 14:13:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301413593707005', 'yd-7111', '2016-08-30 14:13:59', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414054357468', 'yd-7111', '2016-08-30 14:14:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414066064474', 'yd-7111', '2016-08-30 14:14:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414087918454', 'yd-7111', '2016-08-30 14:14:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414103018240', 'yd-7111', '2016-08-30 14:14:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414262038839', 'yd-7111', '2016-08-30 14:14:26', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301414279713034', 'yd-7111', '2016-08-30 14:14:27', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301415132365435', 'yd-7111', '2016-08-30 14:15:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301419548253301', 'yd-7111', '2016-08-30 14:19:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301420022856583', 'yd-7111', '2016-08-30 14:20:02', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301425061031077', 'yd-7111', '2016-08-30 14:25:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301425071259349', 'yd-7111', '2016-08-30 14:25:07', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301425118457319', 'yd-7111', '2016-08-30 14:25:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301425127852929', 'yd-7111', '2016-08-30 14:25:12', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301425140224203', 'yd-7111', '2016-08-30 14:25:14', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301425155591404', 'yd-7111', '2016-08-30 14:25:15', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301425299274274', 'yd-7111', '2016-08-30 14:25:29', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301426188344120', 'yd-7111', '2016-08-30 14:26:18', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301426250162869', 'yd-7111', '2016-08-30 14:26:25', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301426495942659', 'yd-7111', '2016-08-30 14:26:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301427014591045', 'yd-7111', '2016-08-30 14:27:01', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301427056708299', 'yd-7111', '2016-08-30 14:27:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301427082224634', 'yd-7111', '2016-08-30 14:27:08', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301427106102368', 'yd-7111', '2016-08-30 14:27:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301432548451679', 'yd-7111', '2016-08-30 14:32:54', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301432582519665', 'yd-7111', '2016-08-30 14:32:58', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301433006514756', 'yd-7111', '2016-08-30 14:33:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301433016343804', 'yd-7111', '2016-08-30 14:33:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301433090932770', 'yd-7111', '2016-08-30 14:33:09', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301433154417754', 'yd-7111', '2016-08-30 14:33:15', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301433178883195', 'yd-7111', '2016-08-30 14:33:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301433334768709', 'yd-7111', '2016-08-30 14:33:33', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301433574431093', 'yd-7111', '2016-08-30 14:33:57', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301434369108976', 'yd-7111', '2016-08-30 14:34:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301434428704989', 'yd-7111', '2016-08-30 14:34:42', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301434466199401', 'yd-7111', '2016-08-30 14:34:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301434481709753', 'yd-7111', '2016-08-30 14:34:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301434498968611', 'yd-7111', '2016-08-30 14:34:49', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301434534693896', 'yd-7111', '2016-08-30 14:34:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301434555504667', 'yd-7111', '2016-08-30 14:34:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301435033262246', 'yd-7111', '2016-08-30 14:35:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301435214547544', 'yd-7111', '2016-08-30 14:35:21', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301435249741013', 'yd-7111', '2016-08-30 14:35:24', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301435258441797', 'yd-7111', '2016-08-30 14:35:25', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301435270687537', 'yd-7111', '2016-08-30 14:35:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301435278345493', 'yd-7111', '2016-08-30 14:35:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301439304506277', 'yd-7111', '2016-08-30 14:39:30', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301439370452414', 'yd-7111', '2016-08-30 14:39:37', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439402839028', 'yd-7111', '2016-08-30 14:39:40', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439426474202', 'yd-7111', '2016-08-30 14:39:42', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439443116761', 'yd-7111', '2016-08-30 14:39:44', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439451014198', 'yd-7111', '2016-08-30 14:39:45', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439458457635', 'yd-7111', '2016-08-30 14:39:45', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439469353494', 'yd-7111', '2016-08-30 14:39:46', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439487747368', 'yd-7111', '2016-08-30 14:39:48', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301439495686224', 'yd-7111', '2016-08-30 14:39:49', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441208002684', 'yd-7111', '2016-08-30 14:41:20', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301441247515312', 'yd-7111', '2016-08-30 14:41:24', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441275697648', 'yd-7111', '2016-08-30 14:41:27', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441295473177', 'yd-7111', '2016-08-30 14:41:29', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441300163390', 'yd-7111', '2016-08-30 14:41:30', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441313195983', 'yd-7111', '2016-08-30 14:41:31', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441324822637', 'yd-7111', '2016-08-30 14:41:32', '查看', 'XtSite', '11');
INSERT INTO `timeline` VALUES ('tl301441357595571', 'yd-7111', '2016-08-30 14:41:35', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441393915199', 'yd-7111', '2016-08-30 14:41:39', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441402587761', 'yd-7111', '2016-08-30 14:41:40', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441409412795', 'yd-7111', '2016-08-30 14:41:40', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441416294162', 'yd-7111', '2016-08-30 14:41:41', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441422774392', 'yd-7111', '2016-08-30 14:41:42', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301441468821325', 'yd-7111', '2016-08-30 14:41:46', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301442068869381', 'yd-7111', '2016-08-30 14:42:06', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301442081032177', 'yd-7111', '2016-08-30 14:42:08', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301442120473347', 'yd-7111', '2016-08-30 14:42:12', '添加', 'XtSite', 's301442118454955');
INSERT INTO `timeline` VALUES ('tl301444401579810', 'yd-7111', '2016-08-30 14:44:40', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301444529523626', 'yd-7111', '2016-08-30 14:44:52', '删除', 'XtSite', 's301442118454955');
INSERT INTO `timeline` VALUES ('tl301506412707534', 'yd-7111', '2016-08-30 15:06:41', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301506459866404', 'yd-7111', '2016-08-30 15:06:45', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301506529027232', 'yd-7111', '2016-08-30 15:06:52', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301506579931186', 'yd-7111', '2016-08-30 15:06:57', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507038713558', 'yd-7111', '2016-08-30 15:07:03', '添加', 'XtSite', 's301507037723588');
INSERT INTO `timeline` VALUES ('tl301507116438589', 'yd-7111', '2016-08-30 15:07:11', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507140854170', 'yd-7111', '2016-08-30 15:07:14', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507148081325', 'yd-7111', '2016-08-30 15:07:14', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507174295112', 'yd-7111', '2016-08-30 15:07:17', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507243245102', 'yd-7111', '2016-08-30 15:07:24', '删除', 'XtSite', 's301507037723588');
INSERT INTO `timeline` VALUES ('tl301507273435559', 'yd-7111', '2016-08-30 15:07:27', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507284901122', 'yd-7111', '2016-08-30 15:07:28', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301507346817777', 'yd-7111', '2016-08-30 15:07:34', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507369252862', 'yd-7111', '2016-08-30 15:07:36', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507381564559', 'yd-7111', '2016-08-30 15:07:38', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507388609918', 'yd-7111', '2016-08-30 15:07:38', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507471531824', 'yd-7111', '2016-08-30 15:07:47', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301507566776248', 'yd-7111', '2016-08-30 15:07:56', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301508058269237', 'yd-7111', '2016-08-30 15:08:05', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301508083181172', 'yd-7111', '2016-08-30 15:08:08', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301508100392630', 'yd-7111', '2016-08-30 15:08:10', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301508119059913', 'yd-7111', '2016-08-30 15:08:11', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301508257961928', 'yd-7111', '2016-08-30 15:08:25', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301508276182459', 'yd-7111', '2016-08-30 15:08:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301509074424838', 'yd-7111', '2016-08-30 15:09:07', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl301509513763324', 'yd-7111', '2016-08-30 15:09:51', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl301509548857492', 'yd-7111', '2016-08-30 15:09:54', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl301510240511898', 'yd-7111', '2016-08-30 15:10:24', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl301510485648351', 'yd-7111', '2016-08-30 15:10:48', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl301515294241972', 'yd-7111', '2016-08-30 15:15:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301516332391463', 'yd-7111', '2016-08-30 15:16:33', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl301516442256299', 'yd-7111', '2016-08-30 15:16:44', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl301517006994448', 'yd-7111', '2016-08-30 15:17:00', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl301517016182492', 'yd-7111', '2016-08-30 15:17:01', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl301517057675637', 'yd-7111', '2016-08-30 15:17:05', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301517093007687', 'yd-7111', '2016-08-30 15:17:09', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301517115807494', 'yd-7111', '2016-08-30 15:17:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301517132353416', 'yd-7111', '2016-08-30 15:17:13', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301517139519799', 'yd-7111', '2016-08-30 15:17:13', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301531529737401', 'yd-7111', '2016-08-30 15:31:52', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301531560229081', 'yd-7111', '2016-08-30 15:31:56', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301532227832262', 'yd-7111', '2016-08-30 15:32:22', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301532288913095', 'yd-7111', '2016-08-30 15:32:28', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301542452186508', 'yd-7111', '2016-08-30 15:42:45', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301559015783202', 'yd-7111', '2016-08-30 15:59:01', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301559065614540', 'yd-7111', '2016-08-30 15:59:06', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301559110837113', 'yd-7111', '2016-08-30 15:59:11', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301559122878420', 'yd-7111', '2016-08-30 15:59:12', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301559152798143', 'yd-7111', '2016-08-30 15:59:15', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301559164258066', 'yd-7111', '2016-08-30 15:59:16', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301600040773972', 'yd-7111', '2016-08-30 16:00:04', '查看', 'XtBranches', '1');
INSERT INTO `timeline` VALUES ('tl301600068975233', 'yd-7111', '2016-08-30 16:00:06', '查看', 'XtBranches', '11');
INSERT INTO `timeline` VALUES ('tl301600102506306', 'yd-7111', '2016-08-30 16:00:10', '查看', 'XtBranches', '11');
INSERT INTO `timeline` VALUES ('tl301600141773162', 'yd-7111', '2016-08-30 16:00:14', '查看', 'XtBranches', '11');
INSERT INTO `timeline` VALUES ('tl301600156365188', 'yd-7111', '2016-08-30 16:00:15', '查看', 'XtBranches', '11');
INSERT INTO `timeline` VALUES ('tl301600172449736', 'yd-7111', '2016-08-30 16:00:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600203729776', 'yd-7111', '2016-08-30 16:00:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600225741111', 'yd-7111', '2016-08-30 16:00:22', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600240693649', 'yd-7111', '2016-08-30 16:00:24', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600296944383', 'yd-7111', '2016-08-30 16:00:29', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600315648001', 'yd-7111', '2016-08-30 16:00:31', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl301600333946820', 'yd-7111', '2016-08-30 16:00:33', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600348247404', 'yd-7111', '2016-08-30 16:00:34', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600357092321', 'yd-7111', '2016-08-30 16:00:35', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600366666001', 'yd-7111', '2016-08-30 16:00:36', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600374876080', 'yd-7111', '2016-08-30 16:00:37', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600390876839', 'yd-7111', '2016-08-30 16:00:39', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600426188053', 'yd-7111', '2016-08-30 16:00:42', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600438748949', 'yd-7111', '2016-08-30 16:00:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600446059437', 'yd-7111', '2016-08-30 16:00:44', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600455048437', 'yd-7111', '2016-08-30 16:00:45', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600461378240', 'yd-7111', '2016-08-30 16:00:46', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600473204946', 'yd-7111', '2016-08-30 16:00:47', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301600480109441', 'yd-7111', '2016-08-30 16:00:48', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301600484927119', 'yd-7111', '2016-08-30 16:00:48', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301601103773728', 'yd-7111', '2016-08-30 16:01:10', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301601110934180', 'yd-7111', '2016-08-30 16:01:11', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301601123815238', 'yd-7111', '2016-08-30 16:01:12', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301601149399082', 'yd-7111', '2016-08-30 16:01:14', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301601153494779', 'yd-7111', '2016-08-30 16:01:15', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301601186092297', 'yd-7111', '2016-08-30 16:01:18', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601360219291', 'yd-7111', '2016-08-30 16:01:36', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601386243800', 'yd-7111', '2016-08-30 16:01:38', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601391561538', 'yd-7111', '2016-08-30 16:01:39', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601399295988', 'yd-7111', '2016-08-30 16:01:39', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601459553542', 'yd-7111', '2016-08-30 16:01:45', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601478268573', 'yd-7111', '2016-08-30 16:01:47', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601490371968', 'yd-7111', '2016-08-30 16:01:49', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301601502588271', 'yd-7111', '2016-08-30 16:01:50', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301601519373444', 'yd-7111', '2016-08-30 16:01:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301601530688578', 'yd-7111', '2016-08-30 16:01:53', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301602056152825', 'yd-7111', '2016-08-30 16:02:05', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301602088851898', 'yd-7111', '2016-08-30 16:02:08', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623202561444', 'yd-7111', '2016-08-30 16:23:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301623202567828', 'yd-7111', '2016-08-30 16:23:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301623267633548', 'yd-7111', '2016-08-30 16:23:26', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623305814644', 'yd-7111', '2016-08-30 16:23:30', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623327665916', 'yd-7111', '2016-08-30 16:23:32', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623340849875', 'yd-7111', '2016-08-30 16:23:34', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623347817211', 'yd-7111', '2016-08-30 16:23:34', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301623355925115', 'yd-7111', '2016-08-30 16:23:35', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301630479224031', 'yd-7111', '2016-08-30 16:30:47', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301630512051428', 'yd-7111', '2016-08-30 16:30:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301630556259872', 'yd-7111', '2016-08-30 16:30:55', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301630582747542', 'yd-7111', '2016-08-30 16:30:58', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301630595286093', 'yd-7111', '2016-08-30 16:30:59', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301631014343425', 'yd-7111', '2016-08-30 16:31:01', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301631019771961', 'yd-7111', '2016-08-30 16:31:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301631027419238', 'yd-7111', '2016-08-30 16:31:02', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301631070862717', 'yd-7111', '2016-08-30 16:31:07', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301631125257784', 'yd-7111', '2016-08-30 16:31:12', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301722304645785', 'yd-7111', '2016-08-30 17:22:30', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301722581816048', 'yd-7111', '2016-08-30 17:22:58', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301723103996802', 'yd-7111', '2016-08-30 17:23:10', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301723313712186', 'yd-7111', '2016-08-30 17:23:31', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301723329739753', 'yd-7111', '2016-08-30 17:23:32', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301723486585737', 'yd-7111', '2016-08-30 17:23:48', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301723557529723', 'yd-7111', '2016-08-30 17:23:55', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301723594953141', 'yd-7111', '2016-08-30 17:23:59', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301724103689219', 'yd-7111', '2016-08-30 17:24:10', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301724122853349', 'yd-7111', '2016-08-30 17:24:12', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301725323156479', 'yd-7111', '2016-08-30 17:25:32', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301725354308116', 'yd-7111', '2016-08-30 17:25:35', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301725503005986', 'yd-7111', '2016-08-30 17:25:50', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301726038077969', 'yd-7111', '2016-08-30 17:26:03', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301726168666732', 'yd-7111', '2016-08-30 17:26:16', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301726242305217', 'yd-7111', '2016-08-30 17:26:24', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301726268894651', 'yd-7111', '2016-08-30 17:26:26', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301726295263076', 'yd-7111', '2016-08-30 17:26:29', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301726362125579', 'yd-7111', '2016-08-30 17:26:36', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl301727032221041', 'yd-7111', '2016-08-30 17:27:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301727089699853', 'yd-7111', '2016-08-30 17:27:08', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301727121938421', 'yd-7111', '2016-08-30 17:27:12', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301727135698078', 'yd-7111', '2016-08-30 17:27:13', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301727145734958', 'yd-7111', '2016-08-30 17:27:14', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301727164328210', 'yd-7111', '2016-08-30 17:27:16', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301728006632148', 'yd-7111', '2016-08-30 17:28:00', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301728384756976', 'yd-7111', '2016-08-30 17:28:38', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301729037345273', 'yd-7111', '2016-08-30 17:29:03', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301729160652168', 'yd-7111', '2016-08-30 17:29:16', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301729166694713', 'yd-7111', '2016-08-30 17:29:16', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301729188985869', 'yd-7111', '2016-08-30 17:29:18', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301729263649422', 'yd-7111', '2016-08-30 17:29:26', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301729427488252', 'yd-7111', '2016-08-30 17:29:42', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301730210945992', 'yd-7111', '2016-08-30 17:30:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301730538633980', 'yd-7111', '2016-08-30 17:30:53', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301731030227597', 'yd-7111', '2016-08-30 17:31:03', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301731063037243', 'yd-7111', '2016-08-30 17:31:06', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301731136589870', 'yd-7111', '2016-08-30 17:31:13', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301731179197098', 'yd-7111', '2016-08-30 17:31:17', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301731435093984', 'yd-7111', '2016-08-30 17:31:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301732040273615', 'yd-7111', '2016-08-30 17:32:04', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301732079878503', 'yd-7111', '2016-08-30 17:32:07', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301732103797760', 'yd-7111', '2016-08-30 17:32:10', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301732145747082', 'yd-7111', '2016-08-30 17:32:14', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301732156604149', 'yd-7111', '2016-08-30 17:32:15', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl301732460528388', 'yd-7111', '2016-08-30 17:32:46', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301732487508636', 'yd-7111', '2016-08-30 17:32:48', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301732550837426', 'yd-7111', '2016-08-30 17:32:55', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301732572944041', 'yd-7111', '2016-08-30 17:32:57', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301733011107389', 'yd-7111', '2016-08-30 17:33:01', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301733020136212', 'yd-7111', '2016-08-30 17:33:02', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301733037042401', 'yd-7111', '2016-08-30 17:33:03', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301733042339964', 'yd-7111', '2016-08-30 17:33:04', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301734025931817', 'yd-7111', '2016-08-30 17:34:02', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301734068381292', 'yd-7111', '2016-08-30 17:34:06', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301734085548721', 'yd-7111', '2016-08-30 17:34:08', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301734106943471', 'yd-7111', '2016-08-30 17:34:10', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301734113891762', 'yd-7111', '2016-08-30 17:34:11', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301734344129549', 'yd-7111', '2016-08-30 17:34:34', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301736174373602', 'yd-7111', '2016-08-30 17:36:17', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301746564253794', 'yd-7111', '2016-08-30 17:46:56', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301746565349459', 'yd-7111', '2016-08-30 17:46:56', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301747003643140', 'yd-7111', '2016-08-30 17:47:00', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301747034188486', 'yd-7111', '2016-08-30 17:47:03', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl301747147465936', 'yd-7111', '2016-08-30 17:47:14', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl301747180144821', 'yd-7111', '2016-08-30 17:47:18', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl301747191614377', 'yd-7111', '2016-08-30 17:47:19', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl301747201289377', 'yd-7111', '2016-08-30 17:47:20', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl301747274434817', 'yd-7111', '2016-08-30 17:47:27', '添加', 'XtZmNumber', 'zm301747272595229');
INSERT INTO `timeline` VALUES ('tl301747347607377', 'yd-7111', '2016-08-30 17:47:34', '删除', 'XtZmNumber', 'zm301747272595229');
INSERT INTO `timeline` VALUES ('tl301747369568448', 'yd-7111', '2016-08-30 17:47:36', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301747422971381', 'yd-7111', '2016-08-30 17:47:42', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301747429402322', 'yd-7111', '2016-08-30 17:47:42', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301747434263182', 'yd-7111', '2016-08-30 17:47:43', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301747438963505', 'yd-7111', '2016-08-30 17:47:43', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301747442939864', 'yd-7111', '2016-08-30 17:47:44', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl301747446823750', 'yd-7111', '2016-08-30 17:47:44', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl301747449915131', 'yd-7111', '2016-08-30 17:47:44', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl301747454279002', 'yd-7111', '2016-08-30 17:47:45', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310934450925675', 'yd-7111', '2016-08-31 09:34:45', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl310934450927839', 'yd-7111', '2016-08-31 09:34:45', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl310934471003758', 'yd-7111', '2016-08-31 09:34:47', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310934588868277', 'yd-7111', '2016-08-31 09:34:58', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935009684282', 'yd-7111', '2016-08-31 09:35:00', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935023829012', 'yd-7111', '2016-08-31 09:35:02', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935045083398', 'yd-7111', '2016-08-31 09:35:04', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935120225106', 'yd-7111', '2016-08-31 09:35:12', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935127632582', 'yd-7111', '2016-08-31 09:35:12', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935146191288', 'yd-7111', '2016-08-31 09:35:14', '查看', 'XtZmNumber', '');
INSERT INTO `timeline` VALUES ('tl310935197229773', 'yd-7111', '2016-08-31 09:35:19', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310935197277534', 'yd-7111', '2016-08-31 09:35:19', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310947218746333', 'yd-7111', '2016-08-31 09:47:21', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310948133008930', 'yd-7111', '2016-08-31 09:48:13', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953270723876', 'yd-7111', '2016-08-31 09:53:27', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl310953286763762', 'yd-7111', '2016-08-31 09:53:28', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl310953298385626', 'yd-7111', '2016-08-31 09:53:29', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310953325099545', 'yd-7111', '2016-08-31 09:53:32', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953328134559', 'yd-7111', '2016-08-31 09:53:32', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953352958839', 'yd-7111', '2016-08-31 09:53:35', '查看', 'XtZmData', '1');
INSERT INTO `timeline` VALUES ('tl310953388199013', 'yd-7111', '2016-08-31 09:53:38', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953411162718', 'yd-7111', '2016-08-31 09:53:41', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953418111465', 'yd-7111', '2016-08-31 09:53:41', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953565802448', 'yd-7111', '2016-08-31 09:53:56', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310953587705236', 'yd-7111', '2016-08-31 09:53:58', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310954010107564', 'yd-7111', '2016-08-31 09:54:01', '查看', 'XtZmNumber', '1');
INSERT INTO `timeline` VALUES ('tl310954023223640', 'yd-7111', '2016-08-31 09:54:02', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310954034869850', 'yd-7111', '2016-08-31 09:54:03', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310954051333005', 'yd-7111', '2016-08-31 09:54:05', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310954145832715', 'yd-7111', '2016-08-31 09:54:14', '查看', 'XtZmData', '2');
INSERT INTO `timeline` VALUES ('tl310954292258139', 'yd-7111', '2016-08-31 09:54:29', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310954309115407', 'yd-7111', '2016-08-31 09:54:30', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310954471224474', 'yd-7111', '2016-08-31 09:54:47', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl310954491702076', 'yd-7111', '2016-08-31 09:54:49', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl310954497907390', 'yd-7111', '2016-08-31 09:54:49', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl310954504202209', 'yd-7111', '2016-08-31 09:54:50', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl310954555132650', 'yd-7111', '2016-08-31 09:54:55', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311015289732821', 'yd-7111', '2016-08-31 10:15:28', '添加', 'Users', 'yd-5852');
INSERT INTO `timeline` VALUES ('tl311015304981245', 'yd-7111', '2016-08-31 10:15:30', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311015333977081', 'yd-7111', '2016-08-31 10:15:33', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311016023962874', 'yd-7111', '2016-08-31 10:16:02', '修改', 'Users', 'yd-5852');
INSERT INTO `timeline` VALUES ('tl311016039922672', 'yd-7111', '2016-08-31 10:16:03', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311016125303274', 'yd-7111', '2016-08-31 10:16:12', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311016254276124', 'yd-7111', '2016-08-31 10:16:25', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311016265256412', 'yd-7111', '2016-08-31 10:16:26', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311016274536904', 'yd-7111', '2016-08-31 10:16:27', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311016287826360', 'yd-7111', '2016-08-31 10:16:28', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311016294211054', 'yd-7111', '2016-08-31 10:16:29', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311016374625324', 'yd-7111', '2016-08-31 10:16:37', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311016516119417', 'yd-5852', '2016-08-31 10:16:51', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311016588774690', 'yd-5852', '2016-08-31 10:16:58', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl311016595874663', 'yd-5852', '2016-08-31 10:16:59', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl311017098534106', 'yd-5852', '2016-08-31 10:17:09', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311017102146641', 'yd-5852', '2016-08-31 10:17:10', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311017206058025', 'yd-5852', '2016-08-31 10:17:20', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311017211824665', 'yd-5852', '2016-08-31 10:17:21', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311038093734000', 'yd-5852', '2016-08-31 10:38:09', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311038108357742', 'yd-5852', '2016-08-31 10:38:10', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311038115266505', 'yd-5852', '2016-08-31 10:38:11', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl311038122763009', 'yd-5852', '2016-08-31 10:38:12', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl311038132013521', 'yd-5852', '2016-08-31 10:38:13', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl311038136469849', 'yd-5852', '2016-08-31 10:38:13', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311038140805324', 'yd-5852', '2016-08-31 10:38:14', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311038518658543', 'yd-5852', '2016-08-31 10:38:51', '查看', 'XtSite', '');
INSERT INTO `timeline` VALUES ('tl311038536355487', 'yd-5852', '2016-08-31 10:38:53', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl311038582293535', 'yd-5852', '2016-08-31 10:38:58', '查看', 'XtSite', '1');
INSERT INTO `timeline` VALUES ('tl311039096808320', 'yd-5852', '2016-08-31 10:39:09', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311039102276538', 'yd-5852', '2016-08-31 10:39:10', '查看', 'XtZmNumber', null);
INSERT INTO `timeline` VALUES ('tl311039106511759', 'yd-5852', '2016-08-31 10:39:10', '查看', 'XtZmData', null);
INSERT INTO `timeline` VALUES ('tl311100128249824', 'yd-7111', '2016-08-31 11:00:12', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl311100215716889', 'yd-7111', '2016-08-31 11:00:21', '查看', 'FbdMonitoring', null);
INSERT INTO `timeline` VALUES ('tl311100230388158', 'yd-7111', '2016-08-31 11:00:23', '查看', 'XtSite', null);
INSERT INTO `timeline` VALUES ('tl311100236063983', 'yd-7111', '2016-08-31 11:00:23', '查看', 'XtBranches', null);
INSERT INTO `timeline` VALUES ('tl311100259716365', 'yd-7111', '2016-08-31 11:00:25', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl311100267644677', 'yd-7111', '2016-08-31 11:00:26', '查看', 'XtBranches', '');
INSERT INTO `timeline` VALUES ('tl311100294438447', 'yd-7111', '2016-08-31 11:00:29', '查看', 'XtBranches', '1');
INSERT INTO `timeline` VALUES ('tl311100308725840', 'yd-7111', '2016-08-31 11:00:30', '查看', 'XtBranches', '1');
INSERT INTO `timeline` VALUES ('tl311100334497233', 'yd-7111', '2016-08-31 11:00:33', '查看', 'XtBranches', '1');
INSERT INTO `timeline` VALUES ('tl311100363305168', 'yd-7111', '2016-08-31 11:00:36', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl311100387746767', 'yd-7111', '2016-08-31 11:00:38', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl311100416521728', 'yd-7111', '2016-08-31 11:00:41', '查看', 'FbdAsdl', null);
INSERT INTO `timeline` VALUES ('tl311100530596000', 'yd-7111', '2016-08-31 11:00:53', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl311100561675656', 'yd-7111', '2016-08-31 11:00:56', '查看', 'SectionQubu', 'qb281342355373349');
INSERT INTO `timeline` VALUES ('tl311101099747920', 'yd-7111', '2016-08-31 11:01:09', '查看', 'CompanySection', null);
INSERT INTO `timeline` VALUES ('tl311101111802305', 'yd-7111', '2016-08-31 11:01:11', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl311101133199368', 'yd-7111', '2016-08-31 11:01:13', '查看', 'CompanySection', 'cs161152254709824');
INSERT INTO `timeline` VALUES ('tl311101145608037', 'yd-7111', '2016-08-31 11:01:14', '查看', 'CompanySection', 'cs181616491092615');
INSERT INTO `timeline` VALUES ('tl311101155357366', 'yd-7111', '2016-08-31 11:01:15', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl311101161609055', 'yd-7111', '2016-08-31 11:01:16', '查看', 'CompanySection', 'cs181654353517056');
INSERT INTO `timeline` VALUES ('tl311101166957649', 'yd-7111', '2016-08-31 11:01:16', '查看', 'CompanySection', 'cs181655534345157');
INSERT INTO `timeline` VALUES ('tl311101171459583', 'yd-7111', '2016-08-31 11:01:17', '查看', 'CompanySection', 'cs181622233338402');
INSERT INTO `timeline` VALUES ('tl311101175161074', 'yd-7111', '2016-08-31 11:01:17', '查看', 'CompanySection', 'cs181622018345940');
INSERT INTO `timeline` VALUES ('tl311101251642874', 'yd-7111', '2016-08-31 11:01:25', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311101255765806', 'yd-7111', '2016-08-31 11:01:25', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311101269681083', 'yd-7111', '2016-08-31 11:01:26', '查看', 'Users', null);
INSERT INTO `timeline` VALUES ('tl311101287114503', 'yd-7111', '2016-08-31 11:01:28', '查看', 'Role', null);
INSERT INTO `timeline` VALUES ('tl311101460423704', 'yd-7111', '2016-08-31 11:01:46', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl311102028834621', 'yd-7111', '2016-08-31 11:02:02', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl311102143354788', 'yd-6897', '2016-08-31 11:02:14', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl311102206906175', 'yd-6897', '2016-08-31 11:02:20', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl311102431527394', 'yd-6897', '2016-08-31 11:02:43', '查看', '消息提醒', null);
INSERT INTO `timeline` VALUES ('tl311102435252777', 'yd-6897', '2016-08-31 11:02:43', '查看', '时间轴', null);
INSERT INTO `timeline` VALUES ('tl311103571514144', 'yd-6897', '2016-08-31 11:03:57', '查看', 'FbdMonitoring', null);

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
INSERT INTO `users` VALUES ('yd-4221', '123456', '郭明星', '信息与流程管理部', '系统需求专员', '2016-08-19 09:57:17', 'r190954449306917', 'mingxing_guo@szexpress.com.cn');
INSERT INTO `users` VALUES ('yd-5852', '123456', '王科', '信息与流程管理部', '流程分析专员', '2016-08-31 10:15:28', 'r190954449306917', 'ke_wang@szexpress.com.cn');
INSERT INTO `users` VALUES ('yd-6897', '123456', '谢剑文', '信息与流程管理部', '硬件专员', '2016-08-16 09:55:21', 'r131526334505203', 'jianwen_xie@szexpress.com.cn');
INSERT INTO `users` VALUES ('yd-7111', '123456', '张顺', '信息与流程管理部', '开发专员', '2016-08-10 14:45:00', 'r111613371752208', 'shun_zhang@szexpress.com.cn');
INSERT INTO `users` VALUES ('yd-7164', '123456', '黄光辉', '信息与流程管理部', '开发专员', '2016-09-23 14:48:34', 'r111613371752208', 'guanghui_huang@szexpress.com.cn');

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
INSERT INTO `xt_branches` VALUES ('1', '2015-02-03', '2015-02-03', '6', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816520', '建安分部俞海龙', null);
INSERT INTO `xt_branches` VALUES ('10', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814221', '坪山坪环张伟生', null);
INSERT INTO `xt_branches` VALUES ('100', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810422', '龙华富通李俊辉', null);
INSERT INTO `xt_branches` VALUES ('101', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810423', '龙华富通李健', null);
INSERT INTO `xt_branches` VALUES ('102', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810424', '龙华富通张亮', null);
INSERT INTO `xt_branches` VALUES ('103', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810425', '龙华富通谌江红', null);
INSERT INTO `xt_branches` VALUES ('104', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810426', '龙华富通王泰标', null);
INSERT INTO `xt_branches` VALUES ('105', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810427', '龙华富通谭斌', null);
INSERT INTO `xt_branches` VALUES ('106', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803523', '坂田杨美李伟军', null);
INSERT INTO `xt_branches` VALUES ('107', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803524', '坂田杨美李敏荣', null);
INSERT INTO `xt_branches` VALUES ('108', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803525', '坂田杨美李伟青', null);
INSERT INTO `xt_branches` VALUES ('109', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803526', '坂田杨美张志辉', null);
INSERT INTO `xt_branches` VALUES ('11', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814222', '坪山坪环蒙万路', null);
INSERT INTO `xt_branches` VALUES ('110', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803527', '坂田杨美杨天云', null);
INSERT INTO `xt_branches` VALUES ('111', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803528', '坂田杨美谢文卫', null);
INSERT INTO `xt_branches` VALUES ('112', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803529', '坂田杨美黄军', null);
INSERT INTO `xt_branches` VALUES ('113', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803530', '坂田杨美欧文新', null);
INSERT INTO `xt_branches` VALUES ('114', '2015-04-21', '2015-04-21', '17', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803531', '坂田杨美刘远新', null);
INSERT INTO `xt_branches` VALUES ('115', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804620', '观兰库坑吴晓东', null);
INSERT INTO `xt_branches` VALUES ('116', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804621', '观兰库坑刘鹏', null);
INSERT INTO `xt_branches` VALUES ('117', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804622', '观兰库坑姜高杰', null);
INSERT INTO `xt_branches` VALUES ('118', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804623', '观兰库坑钟裕富', null);
INSERT INTO `xt_branches` VALUES ('119', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804624', '观兰库坑吴春岭', null);
INSERT INTO `xt_branches` VALUES ('12', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814223', '坪山坪环钟文源', null);
INSERT INTO `xt_branches` VALUES ('120', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804625', '观兰库坑李建政', null);
INSERT INTO `xt_branches` VALUES ('121', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804626', '观兰库坑孙礼杰', null);
INSERT INTO `xt_branches` VALUES ('122', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804627', '观兰库坑米松山', null);
INSERT INTO `xt_branches` VALUES ('123', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804628', '观兰库坑孙振明', null);
INSERT INTO `xt_branches` VALUES ('124', '2015-04-21', '2015-04-21', '17', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804629', '观兰库坑周念念', null);
INSERT INTO `xt_branches` VALUES ('125', '2015-04-23', '2015-04-23', '17', '518145', '广东深圳公司罗湖区布吉水径分部', '罗文彬', '51814523', '布吉水径谢惠娟', null);
INSERT INTO `xt_branches` VALUES ('126', '2015-04-27', '2015-04-27', '18', '518115', '广东深圳公司公司宝安光明田寮分部', '汪恒', '51811522', '光明田寮李生', null);
INSERT INTO `xt_branches` VALUES ('127', '2015-04-27', '2015-04-27', '18', '518115', '广东深圳公司公司宝安光明田寮分部', '汪恒', '51811523', '光明田寮阮生', null);
INSERT INTO `xt_branches` VALUES ('128', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847923', '新洲国通黄锐东 ', null);
INSERT INTO `xt_branches` VALUES ('129', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847924', '新洲国通甘华杰 ', null);
INSERT INTO `xt_branches` VALUES ('13', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814224', '坪山坪环谢东骏', null);
INSERT INTO `xt_branches` VALUES ('130', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847925', '新洲国通吕万录', null);
INSERT INTO `xt_branches` VALUES ('131', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847926', '新洲国通莫礼波', null);
INSERT INTO `xt_branches` VALUES ('132', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847927', '新洲国通张贤豪', null);
INSERT INTO `xt_branches` VALUES ('133', '2015-05-04', '2015-05-04', '19', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847928', '新洲国通毛波', null);
INSERT INTO `xt_branches` VALUES ('134', '2015-05-04', '2015-05-04', '19', '518079', '广东深圳公司福田沙嘴分部', '邱斯达', '51807924', '沙嘴分部薄鹏飞', null);
INSERT INTO `xt_branches` VALUES ('135', '2015-05-04', '2015-05-04', '19', '518079', '广东深圳公司福田沙嘴分部', '邱斯达', '51807925', '沙嘴分部徐全国', null);
INSERT INTO `xt_branches` VALUES ('136', '2015-05-04', '2015-05-04', '19', '518609', '广东深圳公司福田区东风分部', '代仁伟', '51860922', '东风分部胡壮波', null);
INSERT INTO `xt_branches` VALUES ('137', '2015-05-04', '2015-05-04', '19', '518609', '广东深圳公司福田区东风分部', '代仁伟', '51860923', '东风分部黄伟敏', null);
INSERT INTO `xt_branches` VALUES ('138', '2015-05-04', '2015-05-08', '19', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822921', '横岗六约曾爱国', null);
INSERT INTO `xt_branches` VALUES ('139', '2015-05-04', '2015-05-08', '19', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822922', '横岗六约陈仁华', null);
INSERT INTO `xt_branches` VALUES ('14', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814225', '坪山坪环陈海生', null);
INSERT INTO `xt_branches` VALUES ('140', '2015-05-11', '2015-05-11', '20', '518796', '广东深圳公司罗湖区盐田北山分部', '崔巧霞', '51879620', '盐田北山尹锋', null);
INSERT INTO `xt_branches` VALUES ('141', '2015-05-11', '2015-05-11', '20', '518796', '广东深圳公司罗湖区盐田北山分部', '崔巧霞', '51879621', '盐田北山江河', null);
INSERT INTO `xt_branches` VALUES ('142', '2015-05-11', '2015-05-11', '20', '518796', '广东深圳公司罗湖区盐田北山分部', '崔巧霞', '51879622', '盐田北山林志强', null);
INSERT INTO `xt_branches` VALUES ('143', '2015-05-11', '2015-05-11', '20', '518796', '广东深圳公司罗湖区盐田北山分部', '崔巧霞', '51879623', '盐田北山崔巧霞', null);
INSERT INTO `xt_branches` VALUES ('144', '2015-05-11', '2015-05-11', '20', '518962', '广东深圳公司宝安区恒丰分部', '邓金辉', '51896220', '恒丰分部钟志江', null);
INSERT INTO `xt_branches` VALUES ('145', '2015-05-11', '2015-05-11', '20', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816820', '臣田分部杨国征', null);
INSERT INTO `xt_branches` VALUES ('146', '2015-05-11', '2015-05-11', '20', '518326', '广东深圳公司宝安区怡华分部', '高一彪', '51832620', '怡华分部董志强', null);
INSERT INTO `xt_branches` VALUES ('147', '2015-05-11', '2015-05-11', '20', '518878', '广东深圳公司宝安区燕川分部', '艾思成', '51887820', '燕川分部刘志广', null);
INSERT INTO `xt_branches` VALUES ('148', '2015-05-11', '2015-05-11', '20', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891520', '光明高新肖极林', null);
INSERT INTO `xt_branches` VALUES ('149', '2015-05-11', '2015-05-11', '20', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802120', '福永永福尚道友', null);
INSERT INTO `xt_branches` VALUES ('15', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814226', '坪山坪环谢斌', null);
INSERT INTO `xt_branches` VALUES ('150', '2015-05-11', '2015-05-11', '20', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802121', '福永永福杨武', null);
INSERT INTO `xt_branches` VALUES ('151', '2015-05-11', '2015-05-11', '20', '518222', '广东深圳公司宝安区福永和平分部', '龙克明', '51822220', '福永和平唐毅', null);
INSERT INTO `xt_branches` VALUES ('152', '2015-05-11', '2015-05-11', '20', '518222', '广东深圳公司宝安区福永和平分部', '龙克明', '51822221', '福永和平胡涛', null);
INSERT INTO `xt_branches` VALUES ('153', '2015-05-11', '2015-05-11', '20', '518222', '广东深圳公司宝安区福永和平分部', '龙克明', '51822222', '福永和平杨丽江', null);
INSERT INTO `xt_branches` VALUES ('154', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892720', '深惠创新胡兰平', null);
INSERT INTO `xt_branches` VALUES ('155', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892721', '深惠创新邓克济', null);
INSERT INTO `xt_branches` VALUES ('156', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892722', '深惠创新唐子杨', null);
INSERT INTO `xt_branches` VALUES ('157', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892723', '深惠创新邓克泉', null);
INSERT INTO `xt_branches` VALUES ('158', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892724', '深惠创新邓克云', null);
INSERT INTO `xt_branches` VALUES ('159', '2015-05-11', '2015-05-11', '20', '518927', '广东深圳公司龙岗区深惠创新分部', '王  敏', '51892725', '深惠创新刘旭城', null);
INSERT INTO `xt_branches` VALUES ('16', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814227', '坪山坪环郭振明', null);
INSERT INTO `xt_branches` VALUES ('160', '2015-05-11', '2015-05-11', '20', '518194', '广东深圳公司罗湖区南湾分部', '彭生', '51819420', '南湾分部胡八军', null);
INSERT INTO `xt_branches` VALUES ('161', '2015-05-11', '2015-05-11', '20', '518416', '广东深圳公司龙岗区横岗四联分部', '曾爱国', '51841620', '四联分部张荣花', null);
INSERT INTO `xt_branches` VALUES ('162', '2015-05-11', '2015-05-11', '20', '518223', '广东深圳公司龙岗区嶂背分部', '王玉文', '51822320', '嶂背分部潘文成', null);
INSERT INTO `xt_branches` VALUES ('163', '2015-05-11', '2015-05-11', '20', '518223', '广东深圳公司龙岗区嶂背分部', '王玉文', '51822321', '嶂背分部张兵兵', null);
INSERT INTO `xt_branches` VALUES ('164', '2015-05-11', '2015-05-11', '20', '518223', '广东深圳公司龙岗区嶂背分部', '王玉文', '51822322', '嶂背分部熊向东', null);
INSERT INTO `xt_branches` VALUES ('165', '2015-05-11', '2015-05-11', '20', '518995', '广东深圳公司龙岗区岗贝分部', '蓝伟', '51899520', '岗贝分部胡健', null);
INSERT INTO `xt_branches` VALUES ('166', '2015-05-11', '2015-05-11', '20', '518995', '广东深圳公司龙岗区岗贝分部', '蓝伟', '51899521', '岗贝分部肖玲东', null);
INSERT INTO `xt_branches` VALUES ('167', '2015-05-11', '2015-05-11', '20', '518024', '广东深圳公司龙岗区南约分部', '莫梦', '51802420', '南约分部徐杰', null);
INSERT INTO `xt_branches` VALUES ('168', '2015-05-11', '2015-05-11', '20', '518628', '广东深圳公司龙岗区六约大康村分部', '黄宝鑫', '51862820', '大康村黄冰', null);
INSERT INTO `xt_branches` VALUES ('169', '2015-05-11', '2015-05-11', '20', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880420', '观澜大富徐伟雄', null);
INSERT INTO `xt_branches` VALUES ('17', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814228', '坪山坪环赖木祥', null);
INSERT INTO `xt_branches` VALUES ('170', '2015-05-11', '2015-05-11', '20', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880421', '观澜大富杨伟勇', null);
INSERT INTO `xt_branches` VALUES ('171', '2015-05-11', '2015-05-11', '20', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880422', '观澜大富黄淑芳', null);
INSERT INTO `xt_branches` VALUES ('172', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820120', '坑梓站林秀霞', null);
INSERT INTO `xt_branches` VALUES ('173', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820121', '坑梓站安永文', null);
INSERT INTO `xt_branches` VALUES ('174', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820122', '坑梓站杨子权', null);
INSERT INTO `xt_branches` VALUES ('175', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820123', '坑梓站陈连文', null);
INSERT INTO `xt_branches` VALUES ('176', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820124', '坑梓站李凯', null);
INSERT INTO `xt_branches` VALUES ('177', '2015-05-11', '2015-05-11', '20', '518201', '广东深圳公司龙岗区坑梓站分部', '李雄武', '51820125', '坑梓站王龙', null);
INSERT INTO `xt_branches` VALUES ('178', '2015-05-11', '2015-05-11', '20', '518609', '广东深圳公司福田区东风分部', '代仁伟', '51860924', '东风分部黄新雄', null);
INSERT INTO `xt_branches` VALUES ('179', '2015-05-13', '2015-05-13', '20', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822923', '横岗六约熊伟', null);
INSERT INTO `xt_branches` VALUES ('18', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814229', '坪山坪环温秀平', null);
INSERT INTO `xt_branches` VALUES ('180', '2015-05-15', '2015-05-15', '20', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821422', '石岩田心陈伟雄', null);
INSERT INTO `xt_branches` VALUES ('181', '2015-05-21', '2015-05-21', '21', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891521', '光明高新田明杨', null);
INSERT INTO `xt_branches` VALUES ('182', '2015-05-21', '2015-05-21', '21', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891522', '光明高新陈亮', null);
INSERT INTO `xt_branches` VALUES ('183', '2015-05-21', '2015-05-21', '21', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891523', '光明高新王开利', null);
INSERT INTO `xt_branches` VALUES ('184', '2015-05-21', '2015-05-21', '21', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891524', '光明高新张仕平', null);
INSERT INTO `xt_branches` VALUES ('185', '2015-05-21', '2015-05-21', '21', '518915', '广东深圳公司宝安区燕川分部', '池新国', '51891525', '光明高新池威', null);
INSERT INTO `xt_branches` VALUES ('186', '2015-05-25', '2015-05-25', '22', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816522', '建安分部闵能报', null);
INSERT INTO `xt_branches` VALUES ('187', '2015-05-25', '2015-05-25', '22', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816523', '建安分部程广果', null);
INSERT INTO `xt_branches` VALUES ('188', '2015-05-25', '2015-05-25', '22', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816524', '建安分部李声忠', null);
INSERT INTO `xt_branches` VALUES ('189', '2015-05-25', '2015-05-25', '22', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816525', '建安分部李展鸿', null);
INSERT INTO `xt_branches` VALUES ('19', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814230', '坪山坪环温燕辉', null);
INSERT INTO `xt_branches` VALUES ('190', '2015-06-01', '2015-06-01', '23', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804630', '观兰库坑冼屋分部', null);
INSERT INTO `xt_branches` VALUES ('191', '2015-06-01', '2015-06-01', '23', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804631', '观兰库坑海林分部', null);
INSERT INTO `xt_branches` VALUES ('192', '2015-06-02', '2015-06-02', '23', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847929', '新洲国通张忠明', null);
INSERT INTO `xt_branches` VALUES ('193', '2015-06-02', '2015-06-02', '23', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847930', '新洲国通刘敏', null);
INSERT INTO `xt_branches` VALUES ('194', '2015-06-12', '2015-06-12', '24', '518909', '广东深圳公司宝安区沙井和壹分部', '晏检', '51890920', '沙井和壹章晶晶', null);
INSERT INTO `xt_branches` VALUES ('195', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859221', '塘尾荔园古二龙', null);
INSERT INTO `xt_branches` VALUES ('196', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859222', '塘尾荔园黄波', null);
INSERT INTO `xt_branches` VALUES ('197', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859223', '塘尾荔园陈显果', null);
INSERT INTO `xt_branches` VALUES ('198', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859224', '塘尾荔园李彬彬', null);
INSERT INTO `xt_branches` VALUES ('199', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859225', '塘尾荔园莫成松', null);
INSERT INTO `xt_branches` VALUES ('2', '2015-02-03', '2015-02-03', '6', '518165', '广东深圳公司宝安区建安分部', '李展羽', '51816521', '建安分部杨锦河', null);
INSERT INTO `xt_branches` VALUES ('20', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814231', '坪山坪环温石古', null);
INSERT INTO `xt_branches` VALUES ('200', '2015-06-12', '2015-06-12', '24', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859226', '塘尾荔园陈文鹏', null);
INSERT INTO `xt_branches` VALUES ('201', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829120', '上梅林杨佳烙', null);
INSERT INTO `xt_branches` VALUES ('202', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829121', '上梅林钟国辉', null);
INSERT INTO `xt_branches` VALUES ('203', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829122', '上梅林林宋凯', null);
INSERT INTO `xt_branches` VALUES ('204', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829123', '上梅林吴华柱', null);
INSERT INTO `xt_branches` VALUES ('205', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829124', '上梅林李炎', null);
INSERT INTO `xt_branches` VALUES ('206', '2015-06-12', '2015-06-12', '24', '518291', '广东深圳公司福田区上梅林分部', '吴华柱', '51829125', '上梅林杲国君', null);
INSERT INTO `xt_branches` VALUES ('207', '2015-06-19', '2015-06-19', '25', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811624', '南联分部缪定武', null);
INSERT INTO `xt_branches` VALUES ('208', '2015-06-19', '2015-06-19', '25', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811625', '南联分部沈杨', null);
INSERT INTO `xt_branches` VALUES ('209', '2015-06-19', '2015-06-19', '25', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811626', '南联分部汤楚监', null);
INSERT INTO `xt_branches` VALUES ('21', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814232', '坪山坪环温海龙', null);
INSERT INTO `xt_branches` VALUES ('210', '2015-06-19', '2015-06-19', '25', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811627', '南联分部龙湘仔', null);
INSERT INTO `xt_branches` VALUES ('211', '2015-06-19', '2015-06-19', '25', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811628', '南联分部刘鑫', null);
INSERT INTO `xt_branches` VALUES ('212', '2015-06-29', '2015-06-29', '27', '518995', '广东深圳公司龙岗区岗贝分部', '蓝伟', '51899522', '岗贝分部李春平', null);
INSERT INTO `xt_branches` VALUES ('213', '2015-06-29', '2015-06-29', '27', '518995', '广东深圳公司龙岗区岗贝分部', '蓝伟', '51899523', '岗贝分部汪伟', null);
INSERT INTO `xt_branches` VALUES ('214', '2015-07-02', '2015-07-02', '27', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802122', '福永永福刘杭州', null);
INSERT INTO `xt_branches` VALUES ('215', '2015-07-06', '2015-07-06', '28', '518865', '广东深圳公司福田区曼哈分部', '余望华', '51886520', '曼哈分部唐军', null);
INSERT INTO `xt_branches` VALUES ('216', '2015-07-06', '2015-07-06', '28', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847931', '新洲国通曾伟', null);
INSERT INTO `xt_branches` VALUES ('217', '2015-07-06', '2015-07-06', '28', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847932', '新洲国通呙小川', null);
INSERT INTO `xt_branches` VALUES ('218', '2015-07-09', '2015-07-09', '28', '518995', '广东深圳公司龙岗区岗贝分部', '蓝伟', '51899524', '岗贝分部丘胜博', null);
INSERT INTO `xt_branches` VALUES ('219', '2015-07-17', '2015-07-17', '29', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802123', '福永永福魏景', null);
INSERT INTO `xt_branches` VALUES ('22', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814233', '坪山坪环杨姝宇', null);
INSERT INTO `xt_branches` VALUES ('220', '2015-07-17', '2015-07-17', '29', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802124', '福永永福谭少雄', null);
INSERT INTO `xt_branches` VALUES ('221', '2015-07-17', '2015-07-17', '29', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822924', '横岗六约陈跃群', null);
INSERT INTO `xt_branches` VALUES ('222', '2015-07-17', '2015-07-17', '29', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822925', '横岗六约黄欣雁', null);
INSERT INTO `xt_branches` VALUES ('223', '2015-07-28', '2015-07-28', '31', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880423', '观澜大富周增平', null);
INSERT INTO `xt_branches` VALUES ('224', '2015-07-28', '2015-07-28', '31', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880424', '观澜大富吴文俊', null);
INSERT INTO `xt_branches` VALUES ('225', '2015-07-28', '2015-07-28', '31', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880425', '观澜大富邵德明', null);
INSERT INTO `xt_branches` VALUES ('226', '2015-07-28', '2015-07-28', '31', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880426', '观澜大富陈伟锋', null);
INSERT INTO `xt_branches` VALUES ('227', '2015-07-28', '2015-07-28', '31', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880427', '观澜大富陈兰花', null);
INSERT INTO `xt_branches` VALUES ('228', '2015-07-28', '2015-07-28', '31', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804632', '观兰库坑华利分部', null);
INSERT INTO `xt_branches` VALUES ('229', '2015-07-28', '2015-07-28', '31', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804633', '观兰库坑隆晨分部', null);
INSERT INTO `xt_branches` VALUES ('23', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814234', '坪山坪环王永富', null);
INSERT INTO `xt_branches` VALUES ('230', '2015-07-28', '2015-07-28', '31', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804634', '观兰库坑创源分部', null);
INSERT INTO `xt_branches` VALUES ('231', '2015-07-28', '2015-07-28', '31', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804635', '观兰库坑卡卡分部', null);
INSERT INTO `xt_branches` VALUES ('232', '2015-07-28', '2015-07-28', '31', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804636', '观兰库坑乔安分部', null);
INSERT INTO `xt_branches` VALUES ('233', '2015-07-31', '2015-07-31', '31', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842820', '京基分部朱育青', null);
INSERT INTO `xt_branches` VALUES ('234', '2015-07-31', '2015-07-31', '31', '518165', '广东深圳公司宝安区建安分部', '朱益华', '51816526', '建安分部黄永森', null);
INSERT INTO `xt_branches` VALUES ('235', '2015-07-31', '2015-07-31', '31', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811629', '南联分部诸相龙', null);
INSERT INTO `xt_branches` VALUES ('236', '2015-12-31', '2015-12-31', '53', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811630', '南联分部刘新春', null);
INSERT INTO `xt_branches` VALUES ('237', '2015-08-06', '2015-08-06', '32', '518165', '广东深圳公司宝安区建安分部', '朱益华', '51816527', '建安分部吴克钧', null);
INSERT INTO `xt_branches` VALUES ('238', '2015-08-10', '2015-08-10', '33', '518099', '广东深圳公司罗湖区贝丽南分部', '张龙', '51809920', '贝丽南分部何瑞义', null);
INSERT INTO `xt_branches` VALUES ('239', '2015-08-10', '2015-08-10', '33', '518099', '广东深圳公司罗湖区贝丽南分部', '张龙', '51809921', '贝丽南分部姚敦铁', null);
INSERT INTO `xt_branches` VALUES ('24', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814235', '坪山坪环廖惠勇', null);
INSERT INTO `xt_branches` VALUES ('240', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835322', '草埔分部王珂', null);
INSERT INTO `xt_branches` VALUES ('241', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835323', '草埔分部周远龙1', null);
INSERT INTO `xt_branches` VALUES ('242', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835324', '草埔分部宋晓波', null);
INSERT INTO `xt_branches` VALUES ('243', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835325', '草埔分部曾运金', null);
INSERT INTO `xt_branches` VALUES ('244', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835326', '草埔分部李建朝', null);
INSERT INTO `xt_branches` VALUES ('245', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835327', '草埔分部李建滤', null);
INSERT INTO `xt_branches` VALUES ('246', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835328', '草埔分部王萌', null);
INSERT INTO `xt_branches` VALUES ('247', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835329', '草埔分部陈家惠', null);
INSERT INTO `xt_branches` VALUES ('248', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835330', '草埔分部吴少剑', null);
INSERT INTO `xt_branches` VALUES ('249', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835331', '草埔分部林财龙', null);
INSERT INTO `xt_branches` VALUES ('25', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814236', '坪山坪环滕福', null);
INSERT INTO `xt_branches` VALUES ('250', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835332', '草埔分部姚远', null);
INSERT INTO `xt_branches` VALUES ('251', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835333', '草埔分部别云辉', null);
INSERT INTO `xt_branches` VALUES ('252', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835334', '草埔分部徐朋', null);
INSERT INTO `xt_branches` VALUES ('253', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835335', '草埔分部蓝子康', null);
INSERT INTO `xt_branches` VALUES ('254', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835336', '草埔分部王冰冰', null);
INSERT INTO `xt_branches` VALUES ('255', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835337', '草埔分部李奎', null);
INSERT INTO `xt_branches` VALUES ('256', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835338', '草埔分部夏容', null);
INSERT INTO `xt_branches` VALUES ('257', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835339', '草埔分部林小姐', null);
INSERT INTO `xt_branches` VALUES ('258', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835340', '草埔分部张先生', null);
INSERT INTO `xt_branches` VALUES ('259', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835341', '草埔分部吴先生', null);
INSERT INTO `xt_branches` VALUES ('26', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814237', '坪山坪环何文忠', null);
INSERT INTO `xt_branches` VALUES ('260', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835342', '草埔分部温先生', null);
INSERT INTO `xt_branches` VALUES ('261', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835343', '草埔分部华乐', null);
INSERT INTO `xt_branches` VALUES ('262', '2015-08-10', '2015-08-10', '33', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835344', '草埔分部李婷婷', null);
INSERT INTO `xt_branches` VALUES ('263', '2015-08-13', '2015-08-13', '33', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802125', '福永永福潘剑杰', null);
INSERT INTO `xt_branches` VALUES ('264', '2015-08-13', '2015-08-13', '33', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802126', '福永永福賴聪', null);
INSERT INTO `xt_branches` VALUES ('265', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804637', '观兰库坑长兴运动', null);
INSERT INTO `xt_branches` VALUES ('266', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804638', '观兰库坑四海珈蓝', null);
INSERT INTO `xt_branches` VALUES ('267', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804639', '观兰库坑客户仓储', null);
INSERT INTO `xt_branches` VALUES ('268', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804640', '观兰库坑力杰数码', null);
INSERT INTO `xt_branches` VALUES ('269', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804641', '观兰库坑VIP客户1', null);
INSERT INTO `xt_branches` VALUES ('27', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814238', '坪山坪环赖达祥', null);
INSERT INTO `xt_branches` VALUES ('270', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804642', '观兰库坑VIP客户2', null);
INSERT INTO `xt_branches` VALUES ('271', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804643', '观兰库坑VIP客户3', null);
INSERT INTO `xt_branches` VALUES ('272', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804644', '观兰库坑VIP客户4', null);
INSERT INTO `xt_branches` VALUES ('273', '2015-08-19', '2015-08-19', '34', '518046', '广东深圳公司龙岗区观兰库坑分部', '米松山', '51804645', '观兰库坑VIP客户5', null);
INSERT INTO `xt_branches` VALUES ('274', '2015-08-25', '2015-08-25', '35', '509135', '广东深圳公司龙岗区爱联分部', '许灿填', '50913520', '爱联分部罗东', null);
INSERT INTO `xt_branches` VALUES ('275', '2015-08-25', '2015-08-25', '35', '509135', '广东深圳公司龙岗区爱联分部', '许灿填', '50913521', '爱联分部许灿填', null);
INSERT INTO `xt_branches` VALUES ('276', '2015-08-25', '2015-08-25', '35', '509135', '广东深圳公司龙岗区爱联分部', '许灿填', '50913522', '爱联分部郭佳裕', null);
INSERT INTO `xt_branches` VALUES ('277', '2015-08-25', '2015-08-25', '35', '509135', '广东深圳公司龙岗区爱联分部', '许灿填', '50913523', '爱联分部陈汉场', null);
INSERT INTO `xt_branches` VALUES ('278', '2015-08-25', '2015-08-25', '35', '509135', '广东深圳公司龙岗区爱联分部', '许灿填', '50913524', '爱联分部陈展招', null);
INSERT INTO `xt_branches` VALUES ('279', '2015-08-27', '2015-08-25', '35', '509136', '广东深圳公司龙岗区爱联分部', '许灿填', '50913525', '爱联分部钟伟然', null);
INSERT INTO `xt_branches` VALUES ('28', '2015-02-03', '2015-02-03', '6', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811620', '南联分部陈旭新', null);
INSERT INTO `xt_branches` VALUES ('280', '2015-09-07', '2015-09-07', '37', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837620', '鹏都分部刘宗刚', null);
INSERT INTO `xt_branches` VALUES ('281', '2015-09-07', '2015-09-07', '37', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837621', '鹏都分部许江芝', null);
INSERT INTO `xt_branches` VALUES ('282', '2015-09-07', '2015-09-07', '37', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837622', '鹏都分部苟三佳', null);
INSERT INTO `xt_branches` VALUES ('283', '2015-09-09', '2015-09-09', '37', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837623', '鹏都分部曾庆斌', null);
INSERT INTO `xt_branches` VALUES ('284', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876020', '大工业区曾扬平', null);
INSERT INTO `xt_branches` VALUES ('285', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876021', '大工业区业务员1', null);
INSERT INTO `xt_branches` VALUES ('286', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876022', '大工业区业务员2', null);
INSERT INTO `xt_branches` VALUES ('287', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876023', '大工业区业务员3', null);
INSERT INTO `xt_branches` VALUES ('288', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876024', '大工业区业务员4', null);
INSERT INTO `xt_branches` VALUES ('289', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876025', '大工业区业务员5', null);
INSERT INTO `xt_branches` VALUES ('29', '2015-02-03', '2015-02-03', '6', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811621', '南联分部王永昌', null);
INSERT INTO `xt_branches` VALUES ('290', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876026', '大工业区业务员6', null);
INSERT INTO `xt_branches` VALUES ('291', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876027', '大工业区业务员7', null);
INSERT INTO `xt_branches` VALUES ('292', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876028', '大工业区业务员8', null);
INSERT INTO `xt_branches` VALUES ('293', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876029', '大工业区业务员9', null);
INSERT INTO `xt_branches` VALUES ('294', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876030', '大工业区业务员10', null);
INSERT INTO `xt_branches` VALUES ('295', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876031', '大工业区客户1', null);
INSERT INTO `xt_branches` VALUES ('296', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876032', '大工业区客户2', null);
INSERT INTO `xt_branches` VALUES ('297', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876033', '大工业区客户3', null);
INSERT INTO `xt_branches` VALUES ('298', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876034', '大工业区客户4', null);
INSERT INTO `xt_branches` VALUES ('299', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876035', '大工业区客户5', null);
INSERT INTO `xt_branches` VALUES ('3', '2015-02-03', '2015-02-03', '6', '518205', '广东深圳公司龙岗区龙华油松分部', '陈小军', '51820520', '龙华油松刘雪勇', null);
INSERT INTO `xt_branches` VALUES ('30', '2015-02-03', '2015-02-03', '6', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811622', '南联分部廖传斌', null);
INSERT INTO `xt_branches` VALUES ('300', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876036', '大工业区客户6', null);
INSERT INTO `xt_branches` VALUES ('301', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876037', '大工业区客户7', null);
INSERT INTO `xt_branches` VALUES ('302', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876038', '大工业区客户8', null);
INSERT INTO `xt_branches` VALUES ('303', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876039', '大工业区客户9', null);
INSERT INTO `xt_branches` VALUES ('304', '2015-09-12', '2015-09-12', '37', '518760', '广东深圳公司坪山大工业区分部', '曾扬平', '51876040', '大工业区客户10', null);
INSERT INTO `xt_branches` VALUES ('305', '2015-09-14', '2015-09-14', '38', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847933', '新洲国通牛万涛', null);
INSERT INTO `xt_branches` VALUES ('306', '2015-09-23', '2015-09-23', '39', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837624', '鹏都分部田先桥', null);
INSERT INTO `xt_branches` VALUES ('307', '2015-09-23', '2015-09-23', '39', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837625', '鹏都分部田富民', null);
INSERT INTO `xt_branches` VALUES ('308', '2015-09-25', '2015-09-25', '39', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851821', '上下沙分部三碧红花', null);
INSERT INTO `xt_branches` VALUES ('309', '2015-09-25', '2015-09-25', '39', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851822', '上下沙分部金鸿基', null);
INSERT INTO `xt_branches` VALUES ('31', '2015-02-03', '2015-02-03', '6', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811623', '南联分部黄旭辉', null);
INSERT INTO `xt_branches` VALUES ('310', '2015-09-25', '2015-09-25', '39', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851823', '上下沙分部四八坊', null);
INSERT INTO `xt_branches` VALUES ('311', '2015-09-25', '2015-09-25', '39', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851824', '上下沙分部塘晏', null);
INSERT INTO `xt_branches` VALUES ('312', '2015-10-13', '2015-10-13', '42', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821423', '石岩田心谭金龙', null);
INSERT INTO `xt_branches` VALUES ('313', '2015-10-13', '2015-10-13', '42', '518231', '广东深圳公司宝安区沙井德昌分部', '胡丽', '51823120', '沙井德昌张世周', null);
INSERT INTO `xt_branches` VALUES ('314', '2015-10-28', '2015-10-28', '44', '518036', '广东深圳公司宝安区福永大洋田分部', '唐蜂', '51803620', '福永大洋田郭丽娟', null);
INSERT INTO `xt_branches` VALUES ('315', '2015-10-28', '2015-10-28', '44', '518036', '广东深圳公司宝安区福永大洋田分部', '唐蜂', '51803621', '福永大洋田韦华声', null);
INSERT INTO `xt_branches` VALUES ('316', '2015-10-28', '2015-10-28', '44', '518036', '广东深圳公司宝安区福永大洋田分部', '唐蜂', '51803622', '福永大洋田谭明朗', null);
INSERT INTO `xt_branches` VALUES ('317', '2015-10-28', '2015-10-28', '44', '518560', '广东深圳公司龙岗区坂田国惠康分部', '黄肖云', '51856020', '坂田国惠康刘明刚', null);
INSERT INTO `xt_branches` VALUES ('318', '2015-10-28', '2015-10-28', '44', '518560', '广东深圳公司龙岗区坂田国惠康分部', '黄肖云', '51856021', '坂田国惠康黄肖会', null);
INSERT INTO `xt_branches` VALUES ('319', '2015-11-02', '2015-11-02', '45', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821424', '石岩田心蔡海燕', null);
INSERT INTO `xt_branches` VALUES ('32', '2015-02-03', '2015-02-03', '6', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847920', '新洲国通沈扬', null);
INSERT INTO `xt_branches` VALUES ('320', '2015-11-02', '2015-11-02', '45', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821425', '石岩田心陈志锋', null);
INSERT INTO `xt_branches` VALUES ('321', '2015-11-02', '2015-11-02', '45', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821426', '石岩田心谭金伟', null);
INSERT INTO `xt_branches` VALUES ('322', '2015-11-02', '2015-11-02', '45', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821427', '石岩田心周子龙', null);
INSERT INTO `xt_branches` VALUES ('323', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835345', '草埔分部廖年有', null);
INSERT INTO `xt_branches` VALUES ('324', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835346', '草埔分部王壮侠', null);
INSERT INTO `xt_branches` VALUES ('325', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835347', '草埔分部祝小龙', null);
INSERT INTO `xt_branches` VALUES ('326', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835348', '草埔分部周炎明', null);
INSERT INTO `xt_branches` VALUES ('327', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835349', '草埔分部李建峰', null);
INSERT INTO `xt_branches` VALUES ('328', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835350', '草埔分部李思涛', null);
INSERT INTO `xt_branches` VALUES ('329', '2015-11-09', '2015-11-09', '46', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835351', '草埔分部张军伟', null);
INSERT INTO `xt_branches` VALUES ('33', '2015-02-03', '2015-02-03', '6', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847921', '新洲国通黄英铭', null);
INSERT INTO `xt_branches` VALUES ('330', '2015-11-12', '2015-02-03', '46', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814239', '坪山坪环崔远新', null);
INSERT INTO `xt_branches` VALUES ('331', '2015-12-01', '2015-12-01', '49', '518138', '广东深圳公司南山区布吉南岭分部', '江胜利', '51813820', '布吉南岭江敏聪', null);
INSERT INTO `xt_branches` VALUES ('332', '2015-12-01', '2015-12-01', '49', '518895', '广东深圳公司宝安区石岩料坑分部', '熊伟', '51889520', '石岩料坑李远远', null);
INSERT INTO `xt_branches` VALUES ('333', '2015-12-01', '2015-12-01', '49', '518895', '广东深圳公司宝安区石岩料坑分部', '熊伟', '51889521', '石岩料坑韦联晴', null);
INSERT INTO `xt_branches` VALUES ('334', '2015-12-01', '2015-12-01', '49', '518895', '广东深圳公司宝安区石岩料坑分部', '熊伟', '51889522', '石岩料坑李春秋', null);
INSERT INTO `xt_branches` VALUES ('335', '2015-12-01', '2015-12-01', '49', '518895', '广东深圳公司宝安区石岩料坑分部', '熊伟', '51889523', '石岩料坑陈军', null);
INSERT INTO `xt_branches` VALUES ('336', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811720', '石岩塘头韩荣林', null);
INSERT INTO `xt_branches` VALUES ('337', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811721', '石岩塘头黄建国', null);
INSERT INTO `xt_branches` VALUES ('338', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811722', '石岩塘头马敏丹', null);
INSERT INTO `xt_branches` VALUES ('339', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811723', '石岩塘头黎志山', null);
INSERT INTO `xt_branches` VALUES ('34', '2015-02-03', '2015-02-03', '6', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847922', '新洲国通袁陕宁', null);
INSERT INTO `xt_branches` VALUES ('340', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811724', '石岩塘头曾振华', null);
INSERT INTO `xt_branches` VALUES ('341', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811725', '石岩塘头周斌斌', null);
INSERT INTO `xt_branches` VALUES ('342', '2015-12-01', '2015-12-01', '49', '518117', '广东深圳公司宝安区石岩塘头分部', '马敏', '51811726', '石岩塘头张丰清', null);
INSERT INTO `xt_branches` VALUES ('343', '2015-12-03', '2015-12-03', '49', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826026', '竹子林分部李超', null);
INSERT INTO `xt_branches` VALUES ('344', '2015-12-03', '2015-12-03', '49', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826027', '竹子林分部邹益我', null);
INSERT INTO `xt_branches` VALUES ('345', '2015-12-04', '2015-12-04', '49', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835352', '草埔分部曾汉峰', null);
INSERT INTO `xt_branches` VALUES ('346', '2015-12-07', '2015-12-07', '50', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847934', '新洲国通罗俊潜', null);
INSERT INTO `xt_branches` VALUES ('347', '2015-12-07', '2015-12-07', '50', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847935', '新洲国通卢杰', null);
INSERT INTO `xt_branches` VALUES ('348', '2015-12-10', '2015-12-10', '50', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847936', '新洲国通罗明', null);
INSERT INTO `xt_branches` VALUES ('349', '2015-12-16', '2015-12-16', '51', '518948', '广东深圳公司龙岗区盛平分部', '刘志', '51894820', '盛平分部肖利容', null);
INSERT INTO `xt_branches` VALUES ('35', '2015-02-03', '2015-02-03', '6', '518115', '广东深圳公司公司宝安光明田寮分部', '汪恒', '51811520', '光明田寮龙湾站邱赛', null);
INSERT INTO `xt_branches` VALUES ('350', '2015-12-17', '2015-12-17', '51', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835353', '草埔分部韩浩', null);
INSERT INTO `xt_branches` VALUES ('351', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832120', '万象城蔡少铺', null);
INSERT INTO `xt_branches` VALUES ('352', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832121', '万象城陈欢', null);
INSERT INTO `xt_branches` VALUES ('353', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832122', '万象城贾伟', null);
INSERT INTO `xt_branches` VALUES ('354', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832123', '万象城李继余', null);
INSERT INTO `xt_branches` VALUES ('355', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832124', '万象城林安锔', null);
INSERT INTO `xt_branches` VALUES ('356', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832125', '万象城覃天巧', null);
INSERT INTO `xt_branches` VALUES ('357', '2015-12-21', '2015-12-21', '52', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832126', '万象城肖铠', null);
INSERT INTO `xt_branches` VALUES ('358', '2015-12-24', '2015-12-24', '52', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810620', '平湖华南饶昌杰', null);
INSERT INTO `xt_branches` VALUES ('359', '2015-12-29', '2015-12-29', '53', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821428', '石岩田心陈玉锋', null);
INSERT INTO `xt_branches` VALUES ('36', '2015-02-03', '2015-02-03', '6', '518115', '广东深圳公司公司宝安光明田寮分部', '汪恒', '51811521', '光明田寮甲子塘站许生', null);
INSERT INTO `xt_branches` VALUES ('360', '2015-12-29', '2015-12-29', '53', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821429', '石岩田心黄振登', null);
INSERT INTO `xt_branches` VALUES ('361', '2015-12-29', '2015-12-29', '53', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821430', '石岩田心韦绥福', null);
INSERT INTO `xt_branches` VALUES ('362', '2015-12-29', '2015-12-29', '53', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821431', '石岩田心郑永卫', null);
INSERT INTO `xt_branches` VALUES ('363', '2015-12-30', '2015-12-30', '53', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822926', '横岗六约方壮杰', null);
INSERT INTO `xt_branches` VALUES ('364', '2015-12-31', '2015-12-31', '53', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811631', '南联分部同乐企岭', null);
INSERT INTO `xt_branches` VALUES ('365', '2015-12-31', '2015-12-31', '53', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811632', '南联分部刘新春1', null);
INSERT INTO `xt_branches` VALUES ('366', '2016-01-05', '2016-01-05', '2', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851825', '上下沙分部黄莉园', null);
INSERT INTO `xt_branches` VALUES ('367', '2016-01-05', '2016-01-05', '2', '518142', '广东深圳公司龙岗区坪山坪环分部', '赖达祥', '51814240', '坪山坪环叶忠文', null);
INSERT INTO `xt_branches` VALUES ('368', '2016-01-05', '2016-01-05', '2', '518793', '广东深圳公司龙岗坪地六联分部', '李高雷', '51879320', '坪地六联李高发', null);
INSERT INTO `xt_branches` VALUES ('369', '2016-01-05', '2016-01-05', '2', '518150', '广东深圳公司宝安区松岗楼岗分部', '兰毅', '51815020', '松岗楼岗肖登科', null);
INSERT INTO `xt_branches` VALUES ('37', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810666', '平湖华南李成华', null);
INSERT INTO `xt_branches` VALUES ('370', '2016-01-05', '2016-01-05', '2', '518150', '广东深圳公司宝安区松岗楼岗分部', '兰毅', '51815021', '松岗楼岗田文波', null);
INSERT INTO `xt_branches` VALUES ('371', '2016-01-06', '2016-01-06', '2', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835354', '草埔分部吴孝孔', null);
INSERT INTO `xt_branches` VALUES ('372', '2016-01-14', '2016-01-14', '3', '518142', '广东深圳公司龙岗区坪山坪环分部', '赖达祥', '51814241', '坪山坪环温海凤', null);
INSERT INTO `xt_branches` VALUES ('373', '2016-01-22', '2016-01-22', '4', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811727', '石岩塘头曾建全', null);
INSERT INTO `xt_branches` VALUES ('374', '2016-01-22', '2016-01-22', '4', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811728', '石岩塘头李鑫', null);
INSERT INTO `xt_branches` VALUES ('375', '2016-02-15', '2016-02-15', '8', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811633', '南联分部吓岗一村', null);
INSERT INTO `xt_branches` VALUES ('376', '2016-02-15', '2016-02-15', '8', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811634', '南联分部龙富花园', null);
INSERT INTO `xt_branches` VALUES ('377', '2016-02-15', '2016-02-15', '8', '518116', '广东深圳公司龙岗区南联分部', '刘新春', '51811635', '南联分部远洋新干线', null);
INSERT INTO `xt_branches` VALUES ('378', '2016-02-20', '2016-02-20', '8', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875220', '沙井万丰周永举', null);
INSERT INTO `xt_branches` VALUES ('379', '2016-02-20', '2016-02-20', '8', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875221', '沙井万丰梁杞虹', null);
INSERT INTO `xt_branches` VALUES ('38', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810633', '平湖华南邱云峰', null);
INSERT INTO `xt_branches` VALUES ('380', '2016-02-25', '2016-02-25', '9', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976720', '观澜富士康许泽华', null);
INSERT INTO `xt_branches` VALUES ('381', '2016-02-25', '2016-02-25', '9', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976721', '观澜富士康钟柳平', null);
INSERT INTO `xt_branches` VALUES ('382', '2016-02-25', '2016-02-25', '9', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976722', '观澜富士康陈海燕', null);
INSERT INTO `xt_branches` VALUES ('383', '2016-02-25', '2016-02-25', '9', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835355', '草埔分部廖振能', null);
INSERT INTO `xt_branches` VALUES ('384', '2016-02-25', '2016-02-25', '9', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837626', '鹏都分部何伟明', null);
INSERT INTO `xt_branches` VALUES ('385', '2016-02-25', '2016-02-25', '9', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860331', '艺展中心居秀银', null);
INSERT INTO `xt_branches` VALUES ('386', '2016-02-27', '2016-02-27', '9', '518223', '广东深圳公司龙岗区嶂背分部', '王玉文', '51822323', '嶂背分部沈齐', null);
INSERT INTO `xt_branches` VALUES ('387', '2016-02-29', '2016-02-29', '10', '518142', '广东深圳公司龙岗区坪山坪环分部', '赖达祥', '51814242', '坪山坪环张保才', null);
INSERT INTO `xt_branches` VALUES ('388', '2016-02-29', '2016-02-29', '10', '518142', '广东深圳公司龙岗区坪山坪环分部', '赖达祥', '51814243', '坪山坪环邓福涛', null);
INSERT INTO `xt_branches` VALUES ('389', '2016-03-01', '2016-03-01', '10', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976723', '观澜富士康张丽杰', null);
INSERT INTO `xt_branches` VALUES ('39', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810622', '平湖华南饶雄杰', null);
INSERT INTO `xt_branches` VALUES ('390', '2016-03-01', '2016-03-01', '10', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976724', '观澜富士康段杰军', null);
INSERT INTO `xt_branches` VALUES ('391', '2016-03-01', '2016-03-01', '10', '509767', '广东深圳公司龙岗区观澜富士康分部', '陈伟锋', '50976725', '观澜富士康陈伟峰', null);
INSERT INTO `xt_branches` VALUES ('392', '2016-03-01', '2016-03-01', '10', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847937', '新洲国通黄英耀', null);
INSERT INTO `xt_branches` VALUES ('393', '2016-03-01', '2016-03-01', '10', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847938', '新洲国通赖必智', null);
INSERT INTO `xt_branches` VALUES ('394', '2016-03-01', '2016-03-01', '10', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802127', '福永永福谭明朗', null);
INSERT INTO `xt_branches` VALUES ('395', '2016-03-01', '2016-03-01', '10', '518471', '广东深圳公司福田区时代分部', '谷龙', '51847120', '时代分部李德锋', null);
INSERT INTO `xt_branches` VALUES ('396', '2016-03-01', '2016-03-01', '10', '518742', '广东深圳公司宝安区固戍分部', '蓝祖锋', '51874220', '固戍分部刘斌', null);
INSERT INTO `xt_branches` VALUES ('397', '2016-03-01', '2016-03-01', '10', '518742', '广东深圳公司宝安区固戍分部', '蓝祖锋', '51874221', '固戍分部肖玉兴', null);
INSERT INTO `xt_branches` VALUES ('398', '2016-03-03', '2016-03-03', '10', '518376', '广东深圳公司南山区鹏都分部', '肖斌', '51837627', '鹏都分部肖斌', null);
INSERT INTO `xt_branches` VALUES ('399', '2016-03-04', '2016-03-04', '10', '518025', '广东深圳公司南山区蛇口招商分部', '陈克旺', '51802520', '蛇口招商林宇科', null);
INSERT INTO `xt_branches` VALUES ('4', '2015-02-03', '2015-02-03', '6', '518205', '广东深圳公司龙岗区龙华油松分部', '陈小军', '51820521', '龙华油松肖林智', null);
INSERT INTO `xt_branches` VALUES ('40', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810621', '平湖华南汪帅哥', null);
INSERT INTO `xt_branches` VALUES ('400', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926820', '公明中心曾扬平', null);
INSERT INTO `xt_branches` VALUES ('401', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926821', '公明中心业务员1', null);
INSERT INTO `xt_branches` VALUES ('402', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926822', '公明中心业务员2', null);
INSERT INTO `xt_branches` VALUES ('403', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926823', '公明中心业务员3', null);
INSERT INTO `xt_branches` VALUES ('404', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926824', '公明中心业务员4', null);
INSERT INTO `xt_branches` VALUES ('405', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926825', '公明中心业务员5', null);
INSERT INTO `xt_branches` VALUES ('406', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926826', '公明中心业务员6', null);
INSERT INTO `xt_branches` VALUES ('407', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926827', '公明中心业务员7', null);
INSERT INTO `xt_branches` VALUES ('408', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926828', '公明中心业务员8', null);
INSERT INTO `xt_branches` VALUES ('409', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926829', '公明中心业务员9', null);
INSERT INTO `xt_branches` VALUES ('41', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810655', '平湖华南鄢志刚', null);
INSERT INTO `xt_branches` VALUES ('410', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926830', '公明中心业务员10', null);
INSERT INTO `xt_branches` VALUES ('411', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926831', '公明中心业务员11', null);
INSERT INTO `xt_branches` VALUES ('412', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926832', '公明中心业务员12', null);
INSERT INTO `xt_branches` VALUES ('413', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926833', '公明中心业务员13', null);
INSERT INTO `xt_branches` VALUES ('414', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926834', '公明中心业务员14', null);
INSERT INTO `xt_branches` VALUES ('415', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926835', '公明中心业务员15', null);
INSERT INTO `xt_branches` VALUES ('416', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926836', '公明中心业务员16', null);
INSERT INTO `xt_branches` VALUES ('417', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926837', '公明中心业务员17', null);
INSERT INTO `xt_branches` VALUES ('418', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926838', '公明中心业务员18', null);
INSERT INTO `xt_branches` VALUES ('419', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926839', '公明中心业务员19', null);
INSERT INTO `xt_branches` VALUES ('42', '2015-02-03', '2015-02-03', '6', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810611', '平湖华南姚斌', null);
INSERT INTO `xt_branches` VALUES ('420', '2016-03-05', '2016-03-05', '10', '509268', '广东深圳公司宝安区公明中心分部', '曾扬平', '50926840', '公明中心业务员20', null);
INSERT INTO `xt_branches` VALUES ('421', '2016-03-10', '2016-03-10', '11', '518260', '广东深圳公司福田区竹子林分部', '*', '51826028', '竹子林分部刘友良', null);
INSERT INTO `xt_branches` VALUES ('422', '2016-03-10', '2016-03-10', '11', '518260', '广东深圳公司福田区竹子林分部', '*', '51826029', '竹子林分部蔡祥', null);
INSERT INTO `xt_branches` VALUES ('423', '2016-03-14', '2016-03-14', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816821', '臣田分部熊永辉', null);
INSERT INTO `xt_branches` VALUES ('424', '2016-03-14', '2016-03-14', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816822', '臣田分部吴良贵', null);
INSERT INTO `xt_branches` VALUES ('425', '2016-03-14', '2016-03-14', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816823', '臣田分部崔院辉', null);
INSERT INTO `xt_branches` VALUES ('426', '2016-03-14', '2016-03-14', '12', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802128', '福永怀德方烨铭', null);
INSERT INTO `xt_branches` VALUES ('427', '2016-03-14', '2016-03-14', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816824', '臣田分部吴红林', null);
INSERT INTO `xt_branches` VALUES ('428', '2016-03-14', '2016-03-14', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816825', '臣田分部刘盛海', null);
INSERT INTO `xt_branches` VALUES ('429', '2016-03-15', '2016-03-15', '12', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835356', '草埔分部邓刚', null);
INSERT INTO `xt_branches` VALUES ('43', '2015-03-09', '2015-03-09', '11', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810688', '平湖华南赖生金', null);
INSERT INTO `xt_branches` VALUES ('430', '2016-03-17', '2016-03-17', '12', '518168', '广东深圳公司宝安区臣田分部', '熊孝辉', '51816826', '臣田分部奉桂阳', null);
INSERT INTO `xt_branches` VALUES ('431', '2016-03-30', '2016-03-30', '14', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811729', '石岩塘头谢逊', null);
INSERT INTO `xt_branches` VALUES ('432', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842821', '京基分部郭小勇', null);
INSERT INTO `xt_branches` VALUES ('433', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842822', '京基分部李彪', null);
INSERT INTO `xt_branches` VALUES ('434', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842823', '京基分部欧伟政', null);
INSERT INTO `xt_branches` VALUES ('435', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842824', '京基分部孙峰', null);
INSERT INTO `xt_branches` VALUES ('436', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842825', '京基分部罗贤军', null);
INSERT INTO `xt_branches` VALUES ('437', '2016-03-30', '2016-03-30', '14', '518428', '广东深圳公司罗湖区京基分部', '罗贤耀', '51842826', '京基分部刘包才', null);
INSERT INTO `xt_branches` VALUES ('438', '2016-03-30', '2016-03-30', '14', '518353', '广东深圳公司罗湖区草埔分部', '李婷婷', '51835357', '草埔分部王三华', null);
INSERT INTO `xt_branches` VALUES ('439', '2016-04-05', '2016-04-05', '15', '518161', '广东深圳公司宝安区华丰分部', '谬逸波', '51816120', '华丰分部黄俊臣', null);
INSERT INTO `xt_branches` VALUES ('44', '2015-03-09', '2015-03-09', '11', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810677', '平湖华南喜兔', null);
INSERT INTO `xt_branches` VALUES ('440', '2016-04-05', '2016-04-05', '15', '518161', '广东深圳公司宝安区华丰分部', '谬逸波', '51816121', '华丰分部肖显庆', null);
INSERT INTO `xt_branches` VALUES ('441', '2016-04-11', '2016-04-11', '16', '518106', '广东深圳公司公司龙岗区平湖华南分部', '熊尖', '51810623', '平湖华南余桂飞', null);
INSERT INTO `xt_branches` VALUES ('442', '2016-04-11', '2016-04-11', '16', '518106', '广东深圳公司公司龙岗区平湖华南分部', '熊尖', '51810624', '平湖华南黄林', null);
INSERT INTO `xt_branches` VALUES ('443', '2016-04-18', '2016-04-18', '17', '518983', '广东深圳公司龙岗区清林径分部', '陈雨荣', '51898320', '清林径赖龙平', null);
INSERT INTO `xt_branches` VALUES ('444', '2016-04-18', '2016-04-18', '17', '518983', '广东深圳公司龙岗区清林径分部', '陈雨荣', '51898321', '清林径张天雄', null);
INSERT INTO `xt_branches` VALUES ('445', '2016-04-18', '2016-04-18', '17', '518983', '广东深圳公司龙岗区清林径分部', '陈雨荣', '51898322', '清林径何洪', null);
INSERT INTO `xt_branches` VALUES ('446', '2016-04-23', '2016-04-23', '17', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835358', '草埔分部李兵', null);
INSERT INTO `xt_branches` VALUES ('447', '2016-04-23', '2016-04-23', '17', '509657', '广东深圳公司宝安区光明立顺分部', '周红玲', '50965720', '光明立顺周红玲', null);
INSERT INTO `xt_branches` VALUES ('448', '2016-04-23', '2016-04-23', '17', '509657', '广东深圳公司宝安区光明立顺分部', '周红玲', '50965721', '光明立顺李兴祥', null);
INSERT INTO `xt_branches` VALUES ('449', '2016-04-23', '2016-04-23', '17', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832127', '万象城詹海心', null);
INSERT INTO `xt_branches` VALUES ('45', '2015-03-09', '2015-03-09', '11', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810699', '平湖华南可可', null);
INSERT INTO `xt_branches` VALUES ('450', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875222', '沙井万丰李东旺', null);
INSERT INTO `xt_branches` VALUES ('451', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875223', '沙井万丰刘小文', null);
INSERT INTO `xt_branches` VALUES ('452', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875224', '沙井万丰廖国雄', null);
INSERT INTO `xt_branches` VALUES ('453', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875225', '沙井万丰吴为富', null);
INSERT INTO `xt_branches` VALUES ('454', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875226', '沙井万丰林伟生', null);
INSERT INTO `xt_branches` VALUES ('455', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875227', '沙井万丰廖灵真', null);
INSERT INTO `xt_branches` VALUES ('456', '2016-04-26', '2016-04-26', '18', '518752', '广东深圳公司宝安区沙井万丰分部', '黄增峰', '51875228', '沙井万丰李星远', null);
INSERT INTO `xt_branches` VALUES ('457', '2016-04-28', '2016-04-28', '18', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802129', '福永怀德石龙头分部', null);
INSERT INTO `xt_branches` VALUES ('458', '2016-04-28', '2016-04-28', '18', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802130', '福永怀德横巷分部', null);
INSERT INTO `xt_branches` VALUES ('459', '2016-04-28', '2016-04-28', '18', '518021', '广东深圳公司宝安区福永永福分部', '刘勇兴', '51802131', '福永怀德店面', null);
INSERT INTO `xt_branches` VALUES ('46', '2015-03-09', '2015-03-09', '11', '518106', '广东深圳公司公司龙岗区平湖华南分部', '夏良武', '51810610', '平湖华南公司', null);
INSERT INTO `xt_branches` VALUES ('460', '2016-04-28', '2016-04-28', '18', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847939', '新洲国通陈少林', null);
INSERT INTO `xt_branches` VALUES ('461', '2016-04-28', '2016-04-28', '18', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847940', '新洲国通潘杰', null);
INSERT INTO `xt_branches` VALUES ('462', '2016-04-28', '2016-04-28', '18', '518479', '广东深圳公司福田区新洲国通分部', '徐远建', '51847941', '新洲国通傅建生', null);
INSERT INTO `xt_branches` VALUES ('463', '2016-05-03', '2016-05-03', '19', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804220', '观澜新塘林崇蓓', null);
INSERT INTO `xt_branches` VALUES ('464', '2016-05-03', '2016-05-03', '19', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804221', '观澜新塘蔡自维', null);
INSERT INTO `xt_branches` VALUES ('465', '2016-05-03', '2016-05-03', '19', '518914', '广东深圳公司宝安区光明长圳分部', '钟玲', '51891420', '光明长圳龚金山', null);
INSERT INTO `xt_branches` VALUES ('466', '2016-05-03', '2016-05-03', '19', '518983', '广东深圳公司龙岗区清林径分部', '陈雨荣', '51898323', '清林径林平平', null);
INSERT INTO `xt_branches` VALUES ('467', '2016-05-03', '2016-05-03', '19', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811730', '石岩塘头朱宏淼', null);
INSERT INTO `xt_branches` VALUES ('468', '2016-05-03', '2016-05-03', '19', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811731', '石岩塘头黄远平', null);
INSERT INTO `xt_branches` VALUES ('469', '2016-05-06', '2016-05-06', '19', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811732', '石岩塘头陈顺洁', null);
INSERT INTO `xt_branches` VALUES ('47', '2015-03-30', '2015-03-30', '14', '518609', '广东深圳公司福田区东风分部', '代仁伟', '51860920', '东风分部代仁宽', null);
INSERT INTO `xt_branches` VALUES ('470', '2016-05-16', '2016-05-16', '21', '518142', '广东深圳龙岗坪山坪环分部', '赖达祥', '51814244', '坪山坪环廖强基', null);
INSERT INTO `xt_branches` VALUES ('471', '2016-05-16', '2016-05-16', '21', '518142', '广东深圳龙岗坪山坪环分部', '赖达祥', '51814245', '坪山坪环杨状兵', null);
INSERT INTO `xt_branches` VALUES ('472', '2016-05-17', '2016-05-17', '21', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804222', '观澜新塘颜晖坤', null);
INSERT INTO `xt_branches` VALUES ('473', '2016-05-17', '2016-05-17', '21', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804223', '观澜新塘林炜', null);
INSERT INTO `xt_branches` VALUES ('474', '2016-05-21', '2016-05-21', '21', '792555', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255520', '宝安金威韩荣林', null);
INSERT INTO `xt_branches` VALUES ('475', '2016-05-21', '2016-05-21', '21', '792556', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255521', '宝安金威黄建国', null);
INSERT INTO `xt_branches` VALUES ('476', '2016-05-21', '2016-05-21', '21', '792557', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255522', '宝安金威马敏丹', null);
INSERT INTO `xt_branches` VALUES ('477', '2016-05-21', '2016-05-21', '21', '792558', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255523', '宝安金威黎志山', null);
INSERT INTO `xt_branches` VALUES ('478', '2016-05-21', '2016-05-21', '21', '792559', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255524', '宝安金威曾水清', null);
INSERT INTO `xt_branches` VALUES ('479', '2016-05-21', '2016-05-21', '21', '792560', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255525', '宝安金威周斌斌', null);
INSERT INTO `xt_branches` VALUES ('48', '2015-03-30', '2015-03-30', '14', '518609', '广东深圳公司福田区东风分部', '代仁伟', '51860921', '东风分部胡树显', null);
INSERT INTO `xt_branches` VALUES ('480', '2016-05-21', '2016-05-21', '21', '792561', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255526', '宝安金威张丰清', null);
INSERT INTO `xt_branches` VALUES ('481', '2016-05-21', '2016-05-21', '21', '792562', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255527', '宝安金威曾建全', null);
INSERT INTO `xt_branches` VALUES ('482', '2016-05-21', '2016-05-21', '21', '792563', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255528', '宝安金威张清子', null);
INSERT INTO `xt_branches` VALUES ('483', '2016-05-21', '2016-05-21', '21', '792564', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255529', '宝安金威谢逊', null);
INSERT INTO `xt_branches` VALUES ('484', '2016-05-21', '2016-05-21', '21', '792565', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255530', '宝安金威朱宏淼', null);
INSERT INTO `xt_branches` VALUES ('485', '2016-05-21', '2016-05-21', '21', '792566', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255531', '宝安金威黄远平', null);
INSERT INTO `xt_branches` VALUES ('486', '2016-05-21', '2016-05-21', '21', '792567', '广东深圳公司宝安金威便民寄存点分部', '丁静华', '79255532', '宝安金威陈顺洁', null);
INSERT INTO `xt_branches` VALUES ('487', '2016-05-30', '2016-05-30', '23', '518161', '广东深圳公司宝安区华丰分部', '缪逸波', '51816123', '华丰分部黄诚铭', null);
INSERT INTO `xt_branches` VALUES ('488', '2016-05-30', '2016-05-30', '23', '518161', '广东深圳公司宝安区华丰分部', '缪逸波', '51816124', '华丰分部莫明荣', null);
INSERT INTO `xt_branches` VALUES ('489', '2016-06-08', '2016-06-08', '24', '518302', '广东深圳公司福田区东景分部', '魏小丽', '51830220', '东景分部朱石林', null);
INSERT INTO `xt_branches` VALUES ('49', '2015-03-30', '2015-03-30', '14', '518079', '广东深圳公司福田区沙嘴分部', '邱斯达', '51807920', '沙嘴分部梁荣生', null);
INSERT INTO `xt_branches` VALUES ('490', '2016-06-08', '2016-06-08', '24', '518302', '广东深圳公司福田区东景分部', '魏小丽', '51830221', '东景分部刘辉', null);
INSERT INTO `xt_branches` VALUES ('491', '2016-06-08', '2016-06-08', '24', '518079', '广东深圳公司福田区沙嘴分部', '幸玉芬', '51807926', '沙嘴分部朱维福', null);
INSERT INTO `xt_branches` VALUES ('492', '2016-06-13', '2016-06-13', '25', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835359', '草埔分部周杰', null);
INSERT INTO `xt_branches` VALUES ('493', '2016-06-14', '2016-06-14', '25', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804224', '观澜新塘陆永喻', null);
INSERT INTO `xt_branches` VALUES ('494', '2016-06-20', '2016-06-20', '26', '518302', '广东深圳公司福田区东景分部', '魏小丽', '51830222', '东景分部刘善明', null);
INSERT INTO `xt_branches` VALUES ('495', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847621', '富裕分部李锦棠', null);
INSERT INTO `xt_branches` VALUES ('496', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847622', '富裕分部王进', null);
INSERT INTO `xt_branches` VALUES ('497', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847623', '富裕分部刘志宏', null);
INSERT INTO `xt_branches` VALUES ('498', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847624', '富裕分部石著新', null);
INSERT INTO `xt_branches` VALUES ('499', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847625', '富裕分部谢冼跃', null);
INSERT INTO `xt_branches` VALUES ('5', '2015-02-03', '2015-02-03', '6', '518205', '广东深圳公司龙岗区龙华油松分部', '陈小军', '51820522', '龙华油松刘浪', null);
INSERT INTO `xt_branches` VALUES ('50', '2015-03-30', '2015-03-30', '14', '518079', '广东深圳公司福田区沙嘴分部', '邱斯达', '51807921', '沙嘴分部陈铁城', null);
INSERT INTO `xt_branches` VALUES ('500', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847626', '富裕分部彭德权', null);
INSERT INTO `xt_branches` VALUES ('501', '2016-06-20', '2016-06-20', '26', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847627', '富裕分部萧明立', null);
INSERT INTO `xt_branches` VALUES ('502', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896121', '沙湖分部谭明松', null);
INSERT INTO `xt_branches` VALUES ('503', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896122', '沙湖分部李小仔', null);
INSERT INTO `xt_branches` VALUES ('504', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896123', '沙湖分部陈群鸿', null);
INSERT INTO `xt_branches` VALUES ('505', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896124', '沙湖分部张北战', null);
INSERT INTO `xt_branches` VALUES ('506', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896125', '沙湖分部宋华林', null);
INSERT INTO `xt_branches` VALUES ('507', '2016-06-20', '2016-06-20', '26', '518961', '广东深圳公司龙岗区坪山沙湖分部', '叶海南', '51896126', '沙湖分部陈群辉', null);
INSERT INTO `xt_branches` VALUES ('508', '2016-06-20', '2016-06-20', '26', '518142', '广东深圳龙岗坪山坪环分部', '赖达祥', '51814247', '坪环分部阙持林', null);
INSERT INTO `xt_branches` VALUES ('509', '2016-06-20', '2016-06-20', '26', '518223', '广东深圳公司龙岗区嶂背分部', '王玉文', '51822324', '嶂背分部高建涛', null);
INSERT INTO `xt_branches` VALUES ('51', '2015-03-30', '2015-03-30', '14', '518079', '广东深圳公司福田区沙嘴分部', '邱斯达', '51807922', '沙嘴分部罗晓波', null);
INSERT INTO `xt_branches` VALUES ('510', '2016-06-28', '2016-06-28', '27', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811733', '石岩塘头陈吉', null);
INSERT INTO `xt_branches` VALUES ('511', '2016-06-28', '2016-06-28', '27', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811734', '石岩塘头杜宗学', null);
INSERT INTO `xt_branches` VALUES ('512', '2016-06-28', '2016-06-28', '27', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811735', '石岩塘头黄献国', null);
INSERT INTO `xt_branches` VALUES ('513', '2016-07-02', '2016-07-02', '27', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804225', '观澜新塘何华林', null);
INSERT INTO `xt_branches` VALUES ('514', '2016-07-02', '2016-07-02', '27', '518903', '广东深圳公司罗湖区源兴居分部', '王高平', '51890322', '源兴居分部姚军', null);
INSERT INTO `xt_branches` VALUES ('515', '2016-07-04', '2016-07-04', '28', '518804', '广东深圳公司龙岗区观澜大富分部', '陈伟峰', '51880428', '观澜大富杨龙', null);
INSERT INTO `xt_branches` VALUES ('516', '2016-07-05', '2016-07-05', '28', '518757', '广东深圳公司福田区新亚洲分部', '曹宏旭', '51875720', '新亚洲分部张伟东', null);
INSERT INTO `xt_branches` VALUES ('517', '2016-07-05', '2016-07-05', '28', '518757', '广东深圳公司福田区新亚洲分部', '曹宏旭', '51875721', '新亚洲分部李海彬', null);
INSERT INTO `xt_branches` VALUES ('518', '2016-07-11', '2016-07-11', '29', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847628', '富裕分部何根', null);
INSERT INTO `xt_branches` VALUES ('519', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855521', '泥岗分部陈臣', null);
INSERT INTO `xt_branches` VALUES ('52', '2015-03-30', '2015-03-30', '14', '518079', '广东深圳公司福田区沙嘴分部', '邱斯达', '51807923', '沙嘴分部彭依汉', null);
INSERT INTO `xt_branches` VALUES ('520', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855522', '泥岗分部水伟军', null);
INSERT INTO `xt_branches` VALUES ('521', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855523', '泥岗分部安新国', null);
INSERT INTO `xt_branches` VALUES ('522', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855524', '泥岗分部王小准', null);
INSERT INTO `xt_branches` VALUES ('523', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855525', '泥岗分部李文浩', null);
INSERT INTO `xt_branches` VALUES ('524', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855526', '泥岗分部袁勤', null);
INSERT INTO `xt_branches` VALUES ('525', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855527', '泥岗分部李建锋', null);
INSERT INTO `xt_branches` VALUES ('526', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855528', '泥岗分部吴志毅', null);
INSERT INTO `xt_branches` VALUES ('527', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855529', '泥岗分部徐森茂', null);
INSERT INTO `xt_branches` VALUES ('528', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855530', '泥岗分部蒋凯', null);
INSERT INTO `xt_branches` VALUES ('529', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855531', '泥岗分部雷海滨', null);
INSERT INTO `xt_branches` VALUES ('53', '2015-03-30', '2015-03-30', '14', '518310', '广东深圳公司福田区赛格科技园分部', '张伟锋', '51831020', '赛格科技园杨景康', null);
INSERT INTO `xt_branches` VALUES ('530', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855532', '泥岗分部刘典锐', null);
INSERT INTO `xt_branches` VALUES ('531', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855533', '泥岗分部张桂楠', null);
INSERT INTO `xt_branches` VALUES ('532', '2016-07-11', '2016-07-11', '29', '518555', '广东深圳公司罗湖区泥岗分部', '安新山', '51855534', '泥岗分部安新山', null);
INSERT INTO `xt_branches` VALUES ('533', '2016-07-12', '2016-07-12', '29', '518479', '广东深圳公司福田区新洲国通分部', '徐远建 ', '51847942', '新洲国通林彦鑫', null);
INSERT INTO `xt_branches` VALUES ('534', '2016-07-15', '2016-07-15', '29', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847629', '富裕分部罗雄', null);
INSERT INTO `xt_branches` VALUES ('535', '2016-07-15', '2016-07-15', '29', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847630', '富裕分部曾愿', null);
INSERT INTO `xt_branches` VALUES ('536', '2016-07-15', '2016-07-15', '29', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847631', '富裕分部喇小东', null);
INSERT INTO `xt_branches` VALUES ('537', '2016-07-15', '2016-07-15', '29', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847632', '富裕分部林海佳', null);
INSERT INTO `xt_branches` VALUES ('538', '2016-07-18', '2016-07-18', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835360', '草埔分部田青青', null);
INSERT INTO `xt_branches` VALUES ('539', '2016-07-18', '2016-07-18', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835361', '草埔分部方俊杰', null);
INSERT INTO `xt_branches` VALUES ('54', '2015-03-30', '2015-03-30', '14', '518310', '广东深圳公司福田区赛格科技园分部', '张伟锋', '51831021', '赛格科技园张恋锋', null);
INSERT INTO `xt_branches` VALUES ('540', '2016-07-18', '2016-07-18', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835362', '草埔分部郭晶', null);
INSERT INTO `xt_branches` VALUES ('541', '2016-07-18', '2016-07-18', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835363', '草埔分部林小姐', null);
INSERT INTO `xt_branches` VALUES ('542', '2016-07-21', '2016-07-21', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835364', '草埔分部余明江', null);
INSERT INTO `xt_branches` VALUES ('543', '2016-07-21', '2016-07-21', '30', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835365', '草埔分部银湖店面', null);
INSERT INTO `xt_branches` VALUES ('544', '2016-07-26', '2016-07-26', '31', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847633', '富裕分部黄良民', null);
INSERT INTO `xt_branches` VALUES ('545', '2016-07-27', '2016-07-27', '31', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847634', '富裕分部卢伟', null);
INSERT INTO `xt_branches` VALUES ('546', '2016-07-27', '2016-07-27', '31', '518476', '广东深圳公司龙岗区龙华同富裕分部', '刘洋', '51847635', '富裕分部李卫兵', null);
INSERT INTO `xt_branches` VALUES ('547', '2016-07-27', '2016-07-27', '31', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835366', '草埔分部彭银玉', null);
INSERT INTO `xt_branches` VALUES ('548', '2016-08-01', '2016-08-01', '32', '518353', '广东深圳公司罗湖区草埔分部', '王珂', '51835367', '草埔分部王雪峰', null);
INSERT INTO `xt_branches` VALUES ('549', '2016-08-01', '2016-08-01', '32', '518142', '广东深圳龙岗坪山坪环分部', '赖达祥', '51814249', '坪环分部赖仕永', null);
INSERT INTO `xt_branches` VALUES ('55', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826020', '竹子林分部刘桂华', null);
INSERT INTO `xt_branches` VALUES ('550', '2016-08-01', '2016-08-01', '32', '518321', '广东深圳公司罗湖区万象城分部', '文术升', '51832128', '万象城李考震', null);
INSERT INTO `xt_branches` VALUES ('551', '2016-08-15', '2016-08-15', '34', '518479', '广东深圳公司福田区新洲国通分部', '徐远建 ', '51847943', '新洲国通谢加涛', null);
INSERT INTO `xt_branches` VALUES ('552', '2016-08-17', '2016-08-17', '34', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804226', '观澜新塘何春江', null);
INSERT INTO `xt_branches` VALUES ('553', '2016-08-22', '2016-08-22', '35', '518117', '广东深圳公司宝安区石岩塘头分部', '丁静华', '51811736', '石岩塘头郑昭杰', null);
INSERT INTO `xt_branches` VALUES ('554', '2016-08-23', '2016-08-23', '35', '518130', '广东深圳公司龙岗区观兰茜坑分部', '蔡金', '51813020', '观兰茜坑孙丽杰', null);
INSERT INTO `xt_branches` VALUES ('555', '2016-08-23', '2016-08-23', '35', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804227', '观澜新塘虞日和', null);
INSERT INTO `xt_branches` VALUES ('556', '2016-08-23', '2016-08-23', '35', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804228', '观澜新塘林崇民', null);
INSERT INTO `xt_branches` VALUES ('557', '2016-08-23', '2016-08-23', '35', '518042', '广东深圳公司龙岗区观澜新塘分部', '林崇彬', '51804229', '观澜新塘颜杰华', null);
INSERT INTO `xt_branches` VALUES ('56', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826021', '竹子林分部蒋远涛', null);
INSERT INTO `xt_branches` VALUES ('57', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826022', '竹子林分部曾俊明', null);
INSERT INTO `xt_branches` VALUES ('58', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826023', '竹子林分部罗兆军', null);
INSERT INTO `xt_branches` VALUES ('59', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826024', '竹子林分部何文岸', null);
INSERT INTO `xt_branches` VALUES ('6', '2015-02-03', '2015-02-03', '6', '518205', '广东深圳公司龙岗区龙华油松分部', '陈小军', '51820523', '龙华油松陈勇平', null);
INSERT INTO `xt_branches` VALUES ('60', '2015-03-30', '2015-03-30', '14', '518260', '广东深圳公司福田区竹子林分部', '刘汉新', '51826025', '竹子林分部邹文', null);
INSERT INTO `xt_branches` VALUES ('61', '2015-03-30', '2015-03-30', '14', '518903', '广东深圳公司罗湖区源兴居分部', '王高平', '51890320', '源兴居分部王冬平', null);
INSERT INTO `xt_branches` VALUES ('62', '2015-03-30', '2015-03-30', '14', '518903', '广东深圳公司罗湖区源兴居分部', '王高平', '51890321', '源兴居分部刁建军', null);
INSERT INTO `xt_branches` VALUES ('63', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860320', '艺展中心方灿基', null);
INSERT INTO `xt_branches` VALUES ('64', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860321', '艺展中心徐森茂', null);
INSERT INTO `xt_branches` VALUES ('65', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860322', '艺展中心郑和', null);
INSERT INTO `xt_branches` VALUES ('66', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860323', '艺展中心廖艳平', null);
INSERT INTO `xt_branches` VALUES ('67', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860324', '艺展中心孔华春', null);
INSERT INTO `xt_branches` VALUES ('68', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860325', '艺展中心陈红喜', null);
INSERT INTO `xt_branches` VALUES ('69', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860326', '艺展中心欧裕城', null);
INSERT INTO `xt_branches` VALUES ('7', '2015-02-03', '2015-02-03', '6', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835320', '草埔分部王远恒', null);
INSERT INTO `xt_branches` VALUES ('70', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860327', '艺展中心吴志毅', null);
INSERT INTO `xt_branches` VALUES ('71', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860328', '艺展中心文泽知', null);
INSERT INTO `xt_branches` VALUES ('72', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860329', '艺展中心师如意', null);
INSERT INTO `xt_branches` VALUES ('73', '2015-03-30', '2015-03-30', '14', '518603', '广东深圳公司罗湖区艺展中心分部', '李查万', '51860330', '艺展中心唐芬', null);
INSERT INTO `xt_branches` VALUES ('74', '2015-03-30', '2015-03-30', '14', '518256', '广东深圳公司南山区永标大厦分部', '张先生', '51825620', '永标大厦余世权', null);
INSERT INTO `xt_branches` VALUES ('75', '2015-03-30', '2015-03-30', '14', '518830', '广东深圳公司南山区永标平山村分部', '吴霖泊', '51883020', '永标平山龚学勇', null);
INSERT INTO `xt_branches` VALUES ('76', '2015-03-30', '2015-03-30', '14', '518394', '广东深圳公司南山区花园城分部', '吴银平', '51839420', '花园城分部刘劲', null);
INSERT INTO `xt_branches` VALUES ('77', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884020', '新辅城坳冯振团', null);
INSERT INTO `xt_branches` VALUES ('78', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884021', '新辅城坳陈少科', null);
INSERT INTO `xt_branches` VALUES ('79', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884022', '新辅城坳林永华', null);
INSERT INTO `xt_branches` VALUES ('8', '2015-02-03', '2015-02-03', '6', '518353', '广东深圳公司罗湖区草埔分部', '王柯', '51835321', '草埔分部周远龙', null);
INSERT INTO `xt_branches` VALUES ('80', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884023', '新辅城坳吴惠平', null);
INSERT INTO `xt_branches` VALUES ('81', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884024', '新辅城坳冯振华', null);
INSERT INTO `xt_branches` VALUES ('82', '2015-03-30', '2015-03-30', '14', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '马全喜', '51884025', '新辅城坳曾艳', null);
INSERT INTO `xt_branches` VALUES ('83', '2015-03-30', '2015-03-30', '14', '518957', '广东深圳公司龙岗区新屯分部', '范灿雄', '51895720', '新屯分部杨国煌', null);
INSERT INTO `xt_branches` VALUES ('84', '2015-03-30', '2015-03-30', '14', '518957', '广东深圳公司龙岗区新屯分部', '范灿雄', '51895721', '新屯分部陈军旺', null);
INSERT INTO `xt_branches` VALUES ('85', '2015-03-30', '2015-03-30', '14', '518957', '广东深圳公司龙岗区新屯分部', '范灿雄', '51895722', '新屯分部李检', null);
INSERT INTO `xt_branches` VALUES ('86', '2015-03-30', '2015-03-30', '14', '518229', '广东深圳公司龙岗区横岗六约分部', '王国际', '51822920', '横岗六约宋东丰', null);
INSERT INTO `xt_branches` VALUES ('87', '2015-03-30', '2015-03-30', '14', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803520', '坂田杨美姚漂良', null);
INSERT INTO `xt_branches` VALUES ('88', '2015-03-30', '2015-03-30', '14', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803521', '坂田杨美廖源', null);
INSERT INTO `xt_branches` VALUES ('89', '2015-03-30', '2015-03-30', '14', '518035', '广东深圳公司龙岗区坂田杨美分部', '凌远钦', '51803522', '坂田杨美刘紧新', null);
INSERT INTO `xt_branches` VALUES ('9', '2015-02-03', '2015-02-03', '6', '518142', '广东深圳公司龙岗区坪山坪环分部', '孙建平', '51814220', '坪山坪环邱鸿泰', null);
INSERT INTO `xt_branches` VALUES ('90', '2015-03-30', '2015-03-30', '14', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810420', '龙华富通邹志勇', null);
INSERT INTO `xt_branches` VALUES ('91', '2015-03-30', '2015-03-30', '14', '518145', '广东深圳公司罗湖区布吉水径分部', '罗文彬', '51814520', '布吉水径马夏梦', null);
INSERT INTO `xt_branches` VALUES ('92', '2015-03-30', '2015-03-30', '14', '518145', '广东深圳公司罗湖区布吉水径分部', '罗文彬', '51814521', '布吉水径方锦华', null);
INSERT INTO `xt_branches` VALUES ('93', '2015-03-30', '2015-03-30', '14', '518145', '广东深圳公司罗湖区布吉水径分部', '罗文彬', '51814522', '布吉水径李佳欣', null);
INSERT INTO `xt_branches` VALUES ('94', '2015-03-30', '2015-03-30', '14', '518092', '广东深圳公司宝安区公明茨田埔分部', '周志明', '51809220', '公明茨田埔袁连海', null);
INSERT INTO `xt_branches` VALUES ('95', '2015-03-30', '2015-03-30', '14', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '陈文鹏', '51859220', '塘尾荔园刘伟佳', null);
INSERT INTO `xt_branches` VALUES ('96', '2015-04-07', '2015-04-07', '15', '518518', '广东深圳公司福田区上下沙分部', '郭永义', '51851820', '上下沙分部刘俊', null);
INSERT INTO `xt_branches` VALUES ('97', '2015-04-14', '2015-04-14', '16', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821420', '石岩田心邓晓文', null);
INSERT INTO `xt_branches` VALUES ('98', '2015-04-14', '2015-04-14', '16', '518214', '广东深圳公司宝安区石岩田心分部', '邓华金', '51821421', '石岩田心练思宏', null);
INSERT INTO `xt_branches` VALUES ('99', '2015-04-15', '2015-04-15', '16', '518104', '广东深圳公司龙岗区龙华富通分部', '王剑光', '51810421', '龙华富通周余生', null);

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
INSERT INTO `xt_site` VALUES ('1', '518457', '广东深圳公司宝安区光明分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('10', '518159', '广东深圳公司宝安区电子城分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('100', '518187', '广东深圳公司龙岗区民治漳坑分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('101', '518914', '广东深圳公司宝安区光明长圳分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('102', '518966', '广东深圳公司龙岗区龙华金侨分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('103', '518444', '广东深圳公司宝安区福永翠岗分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('104', '518846', '广东深圳公司宝安区华美分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('105', '518959', '广东深圳公司宝安区钟屋分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('106', '518877', '广东深圳公司福田区沙埔头分部', '2013-11-30', '2013-11-30', '48', '变更', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('107', '518453', '广东深圳公司福田区水围站分部', '2013-12-04', '2013-12-04', '49', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('108', '518936', '广东深圳公司罗湖区八卦鹏盛分部', '2013-12-06', '2013-12-06', '49', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('109', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '2013-12-07', '2013-12-07', '49', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('11', '518290', '广东深圳公司福田区下梅林分部', '2013-08-03', '2013-08-03', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('110', '518164', '广东深圳公司宝安区广场分部', '2013-12-07', '2013-12-07', '49', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('111', '518879', '广东深圳公司宝安区富盈门分部', '2013-12-09', '2013-12-09', '50', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('112', '518833', '广东深圳公司罗湖区东乐分部', '2013-12-12', '2013-12-12', '50', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('113', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '2013-12-16', '2013-12-16', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('114', '518932', '广东深圳公司龙岗区坂田黄金山分部', '2013-12-16', '2013-12-16', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('115', '518846', '广东深圳公司宝安区华美分部', '2013-12-16', '2013-12-16', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('116', '518371', '广东深圳公司龙岗区龙华富士康分部', '2013-12-16', '2013-12-16', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('117', '518167', '广东深圳公司宝安区流塘分部', '2013-12-16', '2013-12-16', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('118', '518539', '广东深圳公司南山区科技园北分部', '2013-12-16', '2013-12-16', '51', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('119', '518930', '广东深圳公司南山区南新分部', '2013-12-18', '2013-12-18', '51', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('12', '518603', '广东深圳公司罗湖区艺展中心分部', '2013-08-03', '2013-08-03', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('120', '518429', '广东深圳公司龙岗区坂田花城分部', '2013-12-18', '2013-12-18', '51', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('121', '518991', '广东深圳公司龙岗区民治红宇分部', '2013-12-20', '2013-12-20', '51', '新建', '徐迪军', '短信', '电话无人接听');
INSERT INTO `xt_site` VALUES ('122', '518091', '广东深圳公司龙岗区布吉民华分部', '2013-12-27', '2013-12-27', '52', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('123', '518980', '广东深圳公司龙岗区布吉金龙分部', '2013-12-28', '2013-12-28', '52', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('124', '518714', '广东深圳公司南山区世界之窗分部', '2013-12-28', '2013-12-28', '52', '变更', '徐迪军', '短信', '电话无人接听');
INSERT INTO `xt_site` VALUES ('125', '518729', '广东深圳公司龙岗区平湖龙兴分部', '2013-12-28', '2013-12-28', '52', '新建', '徐迪军', '电话', '老站点');
INSERT INTO `xt_site` VALUES ('126', '518326', '广东深圳公司宝安区怡华分部', '2013-12-30', '2013-12-30', '53', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('127', '518156', '广东深圳公司龙岗区观兰牛湖分部', '2013-12-30', '2013-12-30', '53', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('128', '518171', '广东深圳公司宝安区宝田分部', '2013-12-30', '2013-12-30', '53', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('129', '518112', '东深圳公司宝安区沙井共和分部', '2013-12-30', '2013-12-30', '53', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('13', '518710', '广东深圳公司龙岗区民治民旺分部', '2013-08-03', '2013-08-03', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('130', '518633', '广东深圳公司龙岗区坂田永香分部', '2013-12-30', '2013-12-30', '53', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('131', '518469', '广东深圳公司福田区越华分部', '2014-01-02', '2014-01-02', '1', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('132', '518178', '广东深圳公司南山区九祥分部', '2014-01-03', '2014-01-03', '1', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('133', '518239', '广东深圳公司龙岗区观兰汽车站分部', '2014-01-04', '2014-01-04', '1', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('134', '518024', '广东深圳公司龙岗区南约分部', '2014-01-06', '2014-01-06', '2', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('135', '518173', '广东深圳公司宝安区黄麻布分部', '2014-01-06', '2014-01-06', '2', '新建', '殷晨东', '', '电话是空号');
INSERT INTO `xt_site` VALUES ('136', '518736', '广东深圳公司南山区西丽高职院分部', '2014-01-07', '2014-01-07', '2', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('137', '518882', '广东深圳公司宝安区富通城分部', '2014-01-13', '2014-01-13', '3', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('138', '518961', '广东深圳公司龙岗区坪山沙湖分部', '2014-01-13', '2014-01-13', '3', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('139', '518508', '广东深圳公司南山区海王分部', '2014-01-16', '2014-01-16', '3', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('14', '518178', '广东深圳公司南山区九祥分部', '2013-08-06', '2013-08-06', '32', '变更', '徐迪军', '短信', '');
INSERT INTO `xt_site` VALUES ('140', '518355', '广东深圳公司罗湖区银湖分部', '2014-01-20', '2014-01-20', '4', '新建', '殷晨东', '短信', '电话未接');
INSERT INTO `xt_site` VALUES ('141', '518038', '广东深圳公司南山区坚达分部', '2014-01-20', '2014-01-20', '4', '新建', '殷晨东', '短信', '电话关机');
INSERT INTO `xt_site` VALUES ('142', '518350', '广东深圳公司龙岗区民治幸福分部', '2014-02-08', '2014-02-08', '6', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('143', '518987', '广东深圳公司龙岗区坑梓龙田分部', '2014-02-10', '2014-02-10', '7', '新建', '殷晨东', '短信', '电话未接');
INSERT INTO `xt_site` VALUES ('144', '518959', '广东深圳公司宝安区钟屋分部', '2014-02-13', '2014-02-13', '7', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('145', '518846', '广东深圳公司宝安区华美分部', '2014-02-14', '2014-02-14', '7', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('146', '518993', '广东深圳公司南山区软件基地分部', '2014-02-14', '2014-02-14', '7', '新建', '殷晨东', '电话、短信', '电话未接');
INSERT INTO `xt_site` VALUES ('147', '518930', '广东深圳公司南山区南新分部', '2014-02-20', '2014-02-20', '8', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('148', '518685', '广东深圳公司南山区海上世界分部', '2014-02-25', '2014-02-25', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('149', '518018', '广东深圳公司福田区海关分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('15', '518646', '广东深圳公司宝安区马鞍山分部', '2013-08-06', '2013-08-06', '32', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('150', '518207', '广东深圳公司宝安区福永龙王庙分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('151', '518015', '广东深圳公司龙岗区大浪龙峰分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('152', '518135', '广东深圳公司龙岗区坪地坪东分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('153', '518160', '广东深圳公司宝安区石岩田心径背分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('154', '518908', '广东深圳公司罗湖区莲塘岁宝分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('155', '518290', '广东深圳公司福田区下梅林分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('156', '518939', '广东深圳公司宝安区福永福龙分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('157', '518741', '广东深圳公司南山区金蝶分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('158', '518857', '广东深圳公司龙岗区中心天虹分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('159', '518120', '广东深圳公司盐田区沙头角分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('16', '518079', '广东深圳公司福田区沙嘴分部', '2013-08-10', '2013-08-10', '32', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('160', '518129', '广东深圳公司盐田大小梅沙分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('161', '518962', '广东深圳公司宝安区恒丰分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('162', '518944', '广东深圳公司宝安区公明圳美分部', '2014-02-28', '2014-02-28', '9', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('163', '518045', '广东深圳公司龙岗区坂田中浩分部', '2014-03-03', '2014-03-03', '10', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('164', '518749', '广东深圳公司宝安区福永富桥分部', '2014-03-03', '2014-03-03', '10', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('165', '518276', '广东深圳公司福田区益田分部', '2014-03-06', '2014-03-06', '10', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('166', '518965', '广东深圳公司龙岗区大浪义乌分部', '2014-03-06', '2014-03-06', '10', '新建', '殷晨东', '电话关机、短信', '电话关机');
INSERT INTO `xt_site` VALUES ('167', '518976', '广东深圳公司宝安区公明下朗分部', '2014-03-06', '2014-03-06', '10', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('168', '518124', '广东深圳公司宝安区沙井上寮分部', '2014-03-06', '2014-03-06', '10', '新建', '殷晨东', '未接、短信', '电话未接');
INSERT INTO `xt_site` VALUES ('169', '518484', '广东深圳公司福田区梅林一村分部', '2014-03-06', '2014-03-06', '10', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('17', '518099', '广东深圳公司罗湖区贝丽南分部', '2013-08-15', '2013-08-15', '33', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('170', '518435', '广东深圳公司龙岗区坂田景俊分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('171', '518470', '广东深圳公司罗湖区华丽分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话通话中、短信', '');
INSERT INTO `xt_site` VALUES ('172', '518751', '广东深圳公司福田区投资分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('173', '518992', '广东深圳公司龙岗区布吉吉祥站分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('174', '518810', '广东深圳公司宝安区桃源居分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '短信', '电话未接');
INSERT INTO `xt_site` VALUES ('175', '518923', '广东深圳公司宝安区坪洲分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('176', '518404', '广东深圳公司南山区同乐分部', '2014-03-12', '2014-03-12', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('177', '518021', '广东深圳公司宝安区福永永福分部', '2014-03-13', '2014-03-13', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('178', '518940', '广东深圳公司龙岗区横岗振业城分部', '2014-03-14', '2014-03-14', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('179', '518813', '广东深圳公司福田区下沙分部', '2014-03-14', '2014-03-14', '11', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('18', '518037', '广东深圳公司福田区佳和华强分部', '2013-08-16', '2013-08-16', '33', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('180', '518028', '广东深圳公司龙岗区东环分拨分部', '2014-03-15', '2014-03-15', '11', '新建', '肖鹏飞', '已通知', '');
INSERT INTO `xt_site` VALUES ('181', '518016', '广东深圳公司罗湖区靖轩分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('182', '518986', '广东深圳公司宝安区沙井博安分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('183', '518005', '广东深圳公司宝安区恒明珠集包分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('184', '518864', '广东深圳公司罗湖区巴丁街分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('185', '518247', '广东深圳公司罗湖区商务中心分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('186', '518948', '广东深圳公司龙岗区盛平分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '短信', '通话中');
INSERT INTO `xt_site` VALUES ('187', '518017', '广东深圳公司罗湖区冶金分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '短信', '通话中');
INSERT INTO `xt_site` VALUES ('188', '518115', '广东深圳公司宝安光明田寮分部', '2014-03-18', '2014-03-18', '12', '新建', '肖鹏飞', '短信', '已关机');
INSERT INTO `xt_site` VALUES ('189', '518830', '广东深圳公司南山区永标平山村分部', '2014-03-20', '2014-03-20', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('19', '518065', '广东深圳公司罗湖区莲塘鹏基分部', '2013-08-17', '2013-08-17', '33', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('190', '518739', '广东深圳公司龙岗区龙华佳华分部', '2014-03-21', '2014-03-21', '12', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('191', '518972', '广东深圳公司龙岗区锦龙名苑分部', '2014-03-26', '2014-03-26', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('192', '518981', '广东深圳公司龙岗区深惠富文分部', '2014-03-26', '2014-03-26', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('193', '518954', '广东深圳公司南山区动漫园分部', '2014-03-26', '2014-03-26', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('194', '518997', '广东深圳公司罗湖区凤凰分部', '2014-03-26', '2014-03-26', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('195', '518443', '广东深圳公司龙岗区大运分部', '2014-03-26', '2014-03-26', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('196', '518558', '广东深圳公司罗湖泥岗分拨分部', '2014-03-27', '2014-03-27', '13', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('197', '518941', '广东深圳公司福田区红荔分部', '2014-04-01', '2014-04-01', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('198', '518878', '广东深圳公司宝安区松岗燕川分部', '2014-04-01', '2014-04-01', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('199', '518833', '广东深圳公司罗湖区东乐分部', '2014-04-01', '2014-04-01', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('2', '518088', '广东深圳公司福田区新华强广场分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('20', '518827', '广东深圳公司龙岗区宝山宇德分部', '2013-08-20', '2013-08-20', '34', '变更', '徐迪军', 'QQ', '');
INSERT INTO `xt_site` VALUES ('200', '518834', '广东深圳公司福田区皇岗分部', '2014-04-01', '2014-04-01', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('201', '518997', '广东深圳公司罗湖区凤凰分部', '2014-04-01', '2014-04-01', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('202', '518695', '广东深圳公司福田梅林二村分部', '2014-04-02', '2014-04-02', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('203', '518852', '广东深圳公司福田区金域分部', '2014-04-02', '2014-04-02', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('204', '518964', '广东深圳公司宝安区沙井茭塘分拨分部', '2014-04-02', '2014-04-02', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('205', '518143', '广东深圳公司南山区清华分部', '2014-04-04', '2014-04-04', '14', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('206', '518910', '广东深圳公司龙岗区横岗力嘉分部', '2014-04-08', '2014-04-08', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('207', '518985', '广东深圳公司龙岗区横岗新坡塘分部', '2014-04-08', '2014-04-08', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('208', '518953', '广东深圳公司龙岗区深惠富源居分部', '2014-04-08', '2014-04-08', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('209', '518613', '广东深圳公司宝安后瑞分部', '2014-04-08', '2014-04-08', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('21', '518857', '广东深圳公司龙岗区中心天虹分部', '2013-08-23', '2013-08-23', '34', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('210', '518644', '广东深圳公司龙岗区五联分拨分部', '2014-04-09', '2014-04-09', '15', '新建', '徐迪军', '', '');
INSERT INTO `xt_site` VALUES ('211', '518531', ' 广东深圳公司宝安区石岩田心官田分部', '2014-04-11', '2014-04-11', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('212', '518162', '广东深圳公司宝安区海城分部', '2014-04-12', '2014-04-12', '15', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('213', '518902', '广东深圳公司龙岗区深惠荣超分部', '2014-04-14', '2014-04-14', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('214', '518684', '广东深圳公司宝安区沙井芙蓉分部', '2014-04-14', '2014-04-14', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('215', '518599', '广东深圳公司龙岗区龙城国际分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('216', '518435', '广东深圳公司龙岗区坂田景俊分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('217', '518936', '广东深圳公司罗湖区八卦鹏盛分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('218', '518042', '广东深圳公司龙岗区观澜新塘分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('219', '518943', '广东深圳公司福田区会展中心分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('22', '518688', '广东深圳公司龙岗爱华普淘宝分部', '2013-08-23', '2013-08-23', '34', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('220', '518968', '广东深圳公司龙岗区坂田和成分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('221', '518990', '广东深圳公司龙岗区坂田马甲淘宝分部', '2014-04-19', '2014-04-19', '16', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('222', '518979', '广东深圳公司福田区AJA淘宝分部', '2014-04-23', '2014-04-23', '17', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('223', '518949', '广州深圳公司福田区新洲分拨分部', '2014-04-23', '2014-04-23', '17', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('224', '518937', '广东深圳公司宝安区光明分拨分部', '2014-04-23', '2014-04-23', '17', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('225', '518988', ' 广东深圳公司宝安区公明金车子分部 ', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('226', '518025', '广东深圳公司南山区蛇口招商分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('227', '518014', '广东深圳公司宝安区沙井永和分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话关机、短信', '');
INSERT INTO `xt_site` VALUES ('228', '518973', '广东深圳公司龙岗区观澜新富分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('229', '518804', '广东深圳公司龙岗观澜大富分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('23', '518158', '广东深圳公司龙岗区龙西分部', '2013-08-26', '2013-08-26', '35', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('230', '518739', '广东深圳公司龙岗区龙华佳华分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('231', '518988', '广东深圳公司宝安区公明金车子分部', '2014-04-25', '2014-04-25', '17', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('232', '518456', '广东深圳公司罗湖区东门鸿隆分部', '2014-05-04', '2014-05-04', '19', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('233', '518056', '广东深圳公司宝安区西乡分拨分部', '2014-05-04', '2014-05-04', '19', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('234', '518977', '广东深圳公司龙岗区观兰天天淘宝分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('235', '518029', '广东深圳公司宝安区石岩塘头宏发分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('236', '518600', '广东深圳公司宝安区石岩塘头工业区分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('237', '518026', '广东深圳公司宝安区沙井沙三分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('238', '518020', '广东深圳公司福田区财富分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('239', '518834', '广东深圳公司福田区皇岗分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('24', '518666', '广东深圳公司龙岗区宝湖分部', '2013-08-30', '2013-08-30', '35', '变更', '徐迪军', 'QQ', '');
INSERT INTO `xt_site` VALUES ('240', '518746', '广东深圳公司龙岗区正中时代分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('241', '518467', '广东深圳公司龙岗区华荣白云山分部', '2014-05-04', '2014-05-04', '19', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('242', '518902', '广东深圳公司龙岗区深惠荣超分部', '2014-05-07', '2014-05-07', '19', '新建', '殷晨东', '电话未接、短信', '');
INSERT INTO `xt_site` VALUES ('243', '518507', '广东深圳公司龙岗区白石龙分拨分部', '2014-05-12', '2014-05-12', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('244', '518059', '广东深圳公司龙岗区坂田吉华分拨分部', '2014-05-12', '2014-05-12', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('245', '518829', '广东深圳公司罗湖碧波分部', '2014-05-16', '2014-05-16', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('246', '518046', '广东深圳公司龙岗区观兰库坑分部', '2014-05-16', '2014-05-16', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('247', '518451', '广东深圳公司南山区西丽大学生创业园分部', '2014-05-16', '2014-05-16', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('248', '518390', '广东深圳公司宝安区福永新兴分部', '2014-05-17', '2014-05-17', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('249', '518286', '广东深圳公司福田区村分部', '2014-05-17', '2014-05-17', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('25', '518574', '广东深圳公司福田区通天地分部', '2013-08-30', '2013-08-30', '35', '变更', '徐迪军', '短信', '电话无人接听');
INSERT INTO `xt_site` VALUES ('250', '518368', '广东深圳公司罗湖区笋岗文批分部', '2014-05-29', '2014-05-29', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('251', '518631', '广东深圳公司龙岗区坂田和磡分部', '2014-05-26', '2014-05-26', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('252', '518647', '广东深圳公司龙岗区龙华中心分部', '2014-05-26', '2014-05-26', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('253', '518730', '广东深圳公司罗湖区湖贝新村分部', '2014-05-26', '2014-05-26', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('254', '518959', '广东深圳公司宝安区钟屋分部', '2014-05-26', '2014-05-26', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('255', '518969', '广东深圳公司宝安区公明李松朗工业区分部', '2014-05-26', '2014-05-26', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('256', '518909', '广东深圳公司宝安区沙井和壹分部', '2014-05-20', '2014-05-20', '21', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('257', '518714', '广东深圳公司南山区太古城分部', '2014-05-16', '2014-05-16', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('258', '518957', '广东深圳公司龙岗区新屯分部', '2014-05-14', '2014-05-14', '20', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('259', '518131', '广东深圳公司宝安区流塘新分部', '2014-05-28', '2014-05-28', '22', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('26', '518406', '广东深圳公司南山区保利分部', '2013-08-30', '2013-08-31', '35', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('260', '518994', '广东深圳公司宝安区凤塘福海分部', '2014-05-29', '2014-05-29', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('261', '518477', '广东深圳公司宝安区鹤州村分部', '2014-05-30', '2014-05-30', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('262', '518312', '广东深圳公司福田区华强贸业分部', '2014-05-30', '2014-05-30', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('263', '518869', '广东深圳公司宝安区翻身分部', '2014-05-30', '2014-05-30', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('264', '518241', '广东深圳公司龙岗区平湖富民分部', '2014-05-30', '2014-05-30', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('265', '518613', '广东深圳公司宝安后瑞分部', '2014-05-30', '2014-05-30', '22', '新建', '徐迪军', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('266', '518231', '广东深圳公司宝安区沙井德昌分部', '2014-06-06', '2014-06-06', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('267', '518983', '广东深圳公司龙岗区清林径分部', '2014-06-06', '2014-06-06', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('268', '518947', '广东深圳公司宝安区松岗星港城分部', '2014-06-06', '2014-06-06', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('269', '518887', '广东深圳公司龙岗区民治逸秀新村分部', '2014-06-06', '2014-06-06', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('27', '518846', '广东深圳公司宝安区华美分部', '2013-09-10', '2013-09-13', '37', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('270', '518946', '广东深圳公司宝安区九围分拨分部', '2014-06-05', '2014-06-05', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('271', '518024', '广东深圳公司龙岗区南约分部', '2014-06-05', '2014-06-05', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('272', '518866', '广东深圳公司龙岗区坂田光雅园分部', '2014-06-05', '2014-06-05', '23', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('273', '518736', '深圳南山西丽高职院站', '2014-06-07', '2014-06-07', '23', '变更负责人', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('274', '518798', '广东深圳公司民治北站分部', '2014-06-11', '2014-06-11', '24', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('275', '518470', '广东深圳公司罗湖区华丽分部', '2014-06-11', '2014-06-11', '24', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('276', '518085', '广东深圳公司宝安区松岗潭头分部', '2014-06-11', '2014-06-11', '24', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('277', '518641', '广东深圳公司南山区西丽麻堪分部', '2014-06-11', '2014-06-11', '24', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('278', '518918', '广东深圳公司南山区后海分部', '2014-06-11', '2014-06-11', '24', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('279', '518878', '广东深圳公司宝安区松岗燕川分部', '2014-06-11', '2014-06-11', '24', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('28', '518414', '广东深圳公司龙岗区布吉龙泉分部', '2013-09-10', '2013-09-13', '37', '变更', '徐迪军', '电话', '电话拒接');
INSERT INTO `xt_site` VALUES ('280', '518936', '广东深圳公司罗湖区八卦鹏盛分部', '2014-06-14', '2014-06-14', '24', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('281', '518239', '广东深圳公司龙岗区观兰汽车站分部', '2014-06-14', '2014-06-14', '24', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('282', '518881', '广东深圳公司龙岗区深惠东方卓越分部', '2014-06-19', '2014-06-19', '25', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('283', '518314', '广东深圳公司福田区百花分部', '2014-06-19', '2014-06-19', '25', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('284', '518064', '广东深圳公司罗湖区莲塘仙湖分部', '2014-06-19', '2014-06-19', '25', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('285', '518355', '广东深圳公司罗湖区银湖分部', '2014-06-19', '2014-06-19', '25', '变更负责人', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('286', '518982', '广东深圳公司南山区阳光分部', '2014-06-19', '2014-06-19', '25', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('287', '518914', '广东深圳公司宝安区光明长圳分部', '2014-06-19', '2014-06-19', '25', '新建', '肖鹏飞', '短信', '');
INSERT INTO `xt_site` VALUES ('288', '518899', '广东深圳公司龙岗区坪地富地岗分部', '2014-06-20', '2014-06-20', '25', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('289', '518033', '广东深圳公司龙岗区横岗西坑分部', '2014-06-25', '2014-06-25', '26', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('29', '518824', '广东深圳公司龙岗区民治民康分部', '2013-09-10', '2013-09-13', '37', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('290', '518662', '广东深圳公司南山区达实分部', '2014-06-25', '2014-06-25', '26', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('291', '518012', '广东深圳公司宝安区福永凤城分部', '2014-06-25', '2014-06-25', '26', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('292', '518007', '广东深圳公司宝安区福永新田分部', '2014-06-25', '2014-06-25', '26', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('293', '518938', '广东深圳公司宝安区石岩塘头长丰分部', '2014-06-25', '2014-06-25', '26', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('294', '518052', '广东深圳公司清水河腾邦分部', '2014-06-25', '2014-06-25', '26', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('295', '518048', '广东深圳公司宝安区裕丰分部', '2014-06-25', '2014-06-25', '26', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('296', '518852', '广东深圳公司福田区金域分部', '2014-07-06', '2014-07-06', '28', '变更负责人', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('297', '518837', '广东深圳公司南山大学校园分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('298', '518255', '广东深圳公司南山区西丽珠光村分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('299', '518456', '广东深圳公司罗湖区东门鸿隆分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('3', '518162', '广东深圳公司宝安区海城分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('30', '518618', '广东深圳公司宝安区新中心分部', '2013-09-10', '2013-09-15', '38', '变更', '易向兵', '电话', '');
INSERT INTO `xt_site` VALUES ('300', '518534', '广东深圳公司龙岗区布吉木绵湾分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('301', '518726', '广东深圳公司龙岗区平湖富新分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('302', '518091', '广东深圳公司龙岗区布吉民华分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('303', '518303', '广东深圳公司南山区东滨分拨分部', '2014-06-30', '2014-06-30', '27', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('304', '518959', '广东深圳公司宝安区钟屋分部', '2014-06-30', '2014-06-30', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('305', '518952', '广东深圳公司龙岗区东方茶都分部', '2014-07-01', '2014-07-01', '27', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('306', '518602', '广东深圳公司罗湖区东门印象分部', '2014-07-01', '2014-07-01', '27', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('307', '518062', '广东深圳公司福田区直营彩田分部', '2014-07-01', '2014-07-01', '27', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('308', '518583', '广东深圳公司宝安区福永怀德咸田分部', '2014-07-03', '2014-07-03', '27', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('309', '518435', '广东深圳公司龙岗区坂田景俊分部', '2014-07-26', '2014-07-26', '30', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('31', '518908', '广东深圳公司罗湖区莲塘岁宝分部', '2013-09-15', '2013-09-16', '38', '变更', '易向兵', '电话', '');
INSERT INTO `xt_site` VALUES ('310', '518892', '广东深圳公司南山区蔚蓝海岸分部', '2014-07-29', '2014-07-29', '31', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('311', '518435', '广东深圳公司龙岗区坂田景俊分部', '2014-07-27', '2014-07-27', '31', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('312', '518907', '广东深圳公司龙岗区民治宝山分部', '2014-08-11', '2014-08-11', '33', '变更负责人', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('313', '518023', '广东深圳公司龙岗区龙华同胜分部', '2014-08-10', '2014-08-10', '33', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('314', '518930', '广东深圳公司南山区南新分部', '2014-08-12', '2014-08-12', '33', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('315', '518064', '广东深圳公司罗湖区莲塘仙湖分部', '2014-08-12', '2014-08-12', '33', '变更负责人', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('316', '791738', '广东深圳公司宝安福永和平便民寄存点分部', '2014-08-19', '2014-08-19', '34', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('317', '791813', '广东深圳公司宝安愉盛便民寄存点分部', '2014-08-19', '2014-08-19', '34', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('318', '518995', '广东深圳公司龙岗区岗贝分部', '2014-08-17', '2014-08-17', '34', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('319', '518998', '广东深圳公司罗湖区口岸分部', '2014-08-17', '2014-08-17', '34', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('32', '518154', '广东深圳公司龙岗区葵涌分部', '2013-09-15', '2013-09-16', '38', '变更', '易向兵', '电话', '');
INSERT INTO `xt_site` VALUES ('320', '518945', '广东深圳公司罗湖区金城分部', '2014-08-17', '2014-08-17', '34', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('321', '518057', '广东深圳公司福田区直营国华分部', '2014-09-03', '2014-09-03', '36', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('322', '518453', '广东深圳公司福田区水围站分部', '2014-08-22', '2014-08-22', '34', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('323', '518296', '广东深圳公司福田区景密分部', '2014-08-26', '2014-08-26', '35', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('324', '518762', '广东深圳公司民治世纪春城分部', '2014-08-25', '2014-08-25', '35', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('325', '518750', '广东深圳公司福田区东方分部', '2014-08-26', '2014-08-26', '35', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('326', '518184', '广东深圳公司龙岗区横岭分部', '2014-08-29', '2014-08-29', '35', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('327', '509410', '广东深圳公司福田区南园分部', '2014-09-01', '2014-09-01', '36', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('328', '518941', '广东深圳公司福田区红荔分部', '2014-09-01', '2014-09-01', '36', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('329', '518467', '广东深圳公司龙岗区华荣白云山分部', '2014-09-01', '2014-09-01', '36', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('33', '518830', '广东深圳公司南山区永标平山村分部', '2013-09-15', '2013-09-16', '38', '变更', '易向兵', '电话', '');
INSERT INTO `xt_site` VALUES ('330', '518793', '广东深圳公司龙岗坪地六联分部', '2014-09-01', '2014-09-01', '36', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('331', '518009', '广东深圳公司龙岗区横岗志健分部', '2014-09-01', '2014-09-01', '36', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('332', '518534', '广东深圳公司龙岗区布吉木绵湾分部', '2014-09-01', '2014-09-01', '36', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('333', '518861', '广东深圳公司龙岗区观兰大和分部', '2014-09-01', '2014-09-01', '36', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('334', '518390', '广东深圳公司宝安区福永新兴分部', '2014-09-01', '2014-09-01', '36', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('335', '518237', '广东深圳公司罗湖区八卦又一居分部', '2014-09-02', '2014-09-02', '36', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('336', '509273', '广东深圳公司罗湖区宝岗分部', '2014-09-04', '2014-09-04', '36', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('337', '509014', '广东深圳公司宝安区沙井沙二分部', '2014-09-09', '2014-09-09', '37', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('338', '518063102', '深圳福田区沙嘴直营组站', '2014-09-09', '2014-09-09', '37', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('339', '518041', '广东深圳公司龙岗区布吉立信分部', '2014-09-11', '2014-09-11', '37', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('34', '518930', '广东深圳公司南山区南新分部', '2013-09-23', '2013-09-23', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('340', '518789', '广东深圳公司宝安区沙井沙头分部', '2014-09-17', '2014-09-17', '38', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('341', '509621', '广东深圳公司福田区设计之都分部', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('342', '518804', '广东深圳公司龙岗观澜大富分部', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('343', '518376001', '深圳南山鹏都苟三佳站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('344', '518376002', '深圳南山鹏都许江芝站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('345', '518376003', '深圳南山鹏都农晓杰站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('346', '518376004', '深圳南山鹏都刘宗刚站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('347', '518376005', '深圳南山鹏都潘小杰站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '已注销 9-23');
INSERT INTO `xt_site` VALUES ('348', '518376006', '深圳南山鹏都黄剑锋站', '2014-09-16', '2014-09-16', '38', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('349', '518752', '广东深圳公司宝安区沙井万丰分部', '2014-09-17', '2014-09-17', '38', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('35', '518769', '广东深圳公司罗湖区中信广场分部', '2013-09-23', '2013-09-23', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('350', '518271', '广东深圳公司福田区上沙分部', '2014-09-17', '2014-09-17', '38', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('351', '518363', '广东深圳公司南山南头前海分部', '2014-09-20', '2014-09-20', '38', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('352', '518061', '福田区直营益田村分部', '2014-09-19', '2014-09-19', '38', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('353', '792441', '广东深圳公司宝安石岩工业区便民寄存分部', '2014-09-22', '2014-09-22', '39', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('354', '791865', '广东深圳公司宝安沙井和二便民寄存点分部', '2014-09-22', '2014-09-22', '39', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('355', '518427', '广东深圳公司龙岗区南联七分部', '2014-09-22', '2014-09-22', '39', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('356', '518556', '广东深圳公司龙岗区南联十分部', '2014-09-22', '2014-09-22', '39', '新建', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('357', '518902', '广东深圳公司龙岗区深惠荣超分部', '2014-09-27', '2014-09-27', '39', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('358', '518077', '广东深圳公司罗湖索兰淘宝分部', '2014-09-27', '2014-09-27', '39', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('359', '791036', '广东深圳公司宝安西乡劳动便民寄存点分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('36', '518113', '广东深圳公司龙岗区布吉新百门前分部', '2013-09-23', '2013-09-23', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('360', '518847', '广东深圳公司福田区群星广场分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('361', '518186', '广东深圳公司龙岗区水尾分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('362', '518364', '广东深圳公司宝安区民治安居分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('363', '518893', '广东深圳公司龙岗区民治阳光分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('364', '518900', '广东深圳公司龙岗区龙华德城淘宝分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('365', '518880', '广东深圳公司龙岗区龙华旭日淘宝分部', '2014-09-29', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('366', '518401', '广东深圳公司南山区海岸城分部', '2014-09-30', '2014-09-29', '40', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('367', '518606', '广东深圳公司南山区天利分部', '2014-09-30', '2014-09-30', '40', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('368', '518613', '广东深圳公司宝安后瑞分部', '2014-09-30', '2014-10-01', '40', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('369', '518366', '广东深圳公司南山区大冲分部', '2014-10-01', '2014-10-02', '40', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('37', '518701', '广东深圳公司公明街道办分部', '2013-09-23', '2013-09-23', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('370', '518993', '广东深圳公司南山区软件基地分部', '2014-09-30', '2014-10-03', '40', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('371', '518308', '广东深圳公司福田区华富分部', '2014-09-27', '2014-09-26', '39', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('372', '509888', '广东深圳公司龙岗区布吉珠宝园分部', '2014-09-28', '2014-09-27', '39', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('373', '509457', '广东深圳公司龙岗区龙华峰达分部', '2014-09-27', '2014-09-26', '39', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('374', '509728', '广东深圳公司南山区西丽新围分部', '2014-09-26', '2014-09-25', '39', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('375', '518070', '广东深圳公司宝安区福永机场分部', '2014-09-26', '2014-09-25', '39', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('376', '518745', '广东深圳公司龙岗区坂田深港数码分部', '2014-09-30', '2014-09-29', '40', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('377', '518461', '广东深圳公司罗湖区太白西分部', '2014-10-08', '2014-10-08', '41', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('378', '518879', '广东深圳公司宝安区富盈门分部', '2014-10-10', '2014-10-09', '41', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('379', '518164', '广东深圳公司宝安区广场分部', '2014-10-10', '2014-10-09', '41', '新建', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('38', '518718', '广东深圳公司罗湖区罗湖村分部', '2013-09-23', '2013-09-23', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('380', '518540', '广东深圳公司龙岗区中心城志联佳站分部', '2014-10-11', '2014-10-11', '41', '启用', '肖鹏飞', '电话、短信', '大客户');
INSERT INTO `xt_site` VALUES ('381', '518612', '深圳南山西丽龙井', '2014-10-11', '2014-10-11', '41', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('382', '518223', '深圳龙岗嶂背', '2014-10-11', '2014-10-11', '41', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('383', '518178', '深圳南山西丽九翔', '2014-10-18', '2014-10-17', '42', '转让', '肖鹏飞', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('384', '518139', '深圳龙岗大浪分部', '2014-10-31', '2014-10-31', '44', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('385', '509621', '深圳福田设计之都站', '2014-10-31', '2014-10-31', '44', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('386', '518504', '深圳南山东部留创大厦站', '2014-10-31', '2014-10-31', '44', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('387', '509930', '宝安区沙井西部义乌分部', '2014-11-11', '2014-11-11', '46', '新建', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('388', '518592', '广东深圳公司宝安区福永塘尾荔园分部', '2014-11-12', '2014-11-12', '46', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('389', '518414', '广东深圳公司龙岗区布吉龙泉分部', '2014-11-16', '2014-11-16', '47', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('39', '518931', '广东深圳公司南山区海滨城分部', '2013-09-25', '2013-09-26', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('390', '518983', '广东深圳公司龙岗区清林径分部', '2014-11-21', '2014-11-21', '47', '转让', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('391', '518982', '广东深圳公司南山区阳光分部', '2014-11-27', '2014-11-27', '48', '转让', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('392', '518871', '广东深圳公司龙岗区布吉奔腾达分部', '2014-11-27', '2014-11-27', '48', '转让', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('393', '793439', '广东深圳公司龙岗坂田华为便民寄存点分部', '2014-11-27', '2014-11-27', '48', '转让', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('394', '790548', '广东深圳公司龙岗区布吉南湾便民寄存点分部', '2014-12-02', '2014-12-02', '49', '大客户', '殷晨东', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('395', '518930', '广东深圳公司南山区南新分部', '2014-12-02', '2014-12-02', '49', '转让', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('396', '790082', '广东深圳公司龙岗大浪华宁便民寄存', '2014-12-05', '2014-12-05', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('397', '791561', '广东深圳公司龙岗区漳坑五便民寄存点分部', '2014-12-05', '2014-12-05', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('398', '793325', '广东深圳公司南山保利便民寄存点分部', '2014-12-02', '2014-12-02', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('399', '789505', '广东深圳公司南山区海月便利店分部', '2014-12-02', '2014-12-02', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('4', '518479', '广东深圳公司福田区新洲国通分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('40', '518821', '广东深圳公司龙岗区平湖新夏分部', '2013-09-25', '2013-09-26', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('400', '791581', '广东深圳公司龙岗龙华富通便民寄存点分部', '2014-12-02', '2014-12-02', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('401', '683825', '广东深圳公司观兰大道淑女屋家居仓', '2014-12-05', '2014-12-05', '49', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('402', '509970', '广东深圳公司福田区红柳分部', '2014-12-08', '2014-12-08', '50', '站点', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('403', '509950', '广东深圳公司福田区福民分部', '2014-12-08', '2014-12-08', '50', '站点', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('404', '518947', '广东深圳公司宝安区松岗星港城分部', '2014-12-09', '2014-12-09', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('405', '518628', '广东深圳公司龙岗区横岗六约大康村分部', '2014-12-09', '2014-12-09', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('406', '680631', '广东深圳公司观兰大道凯润达数码仓储分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('407', '792276', '广东深圳公司龙岗观澜大富便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('408', '789999', '广东深圳公司龙岗南联便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('409', '793305', '广东深圳公司龙岗龙东便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('41', '518842', '广东深圳公司宝安区沙井中亚分部', '2013-09-25', '2013-09-26', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('410', '790587', '广东深圳公司松岗红星便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('411', '680199', '广东深圳公司宝安区度点科技仓储分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('412', '792534', '广东深圳公司宝安公明蒋石便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('413', '791670', '广东深圳公司宝安石岩塘头便民寄存点分部', '2014-12-09', '2014-12-09', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('414', '518276', '广东深圳公司福田区益田分部', '2014-12-10', '2014-12-10', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('415', '518968', '广东深圳公司龙岗区坂田和成分部', '2014-12-10', '2014-12-10', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('416', '518254', '广东深圳公司龙岗区布吉长龙分部', '2014-12-10', '2014-12-10', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('417', '518342', '广东深圳公司罗湖区黄贝岭分部', '2014-12-11', '2014-12-11', '50', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('418', '680639', '广东深圳公司观兰大道美如画炎炎仓储分部', '2014-12-11', '2014-12-11', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('419', '790395', '广东深圳公司龙岗布吉天虹便民寄存点分部', '2014-12-11', '2014-12-11', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('42', '518483', '广东深圳公司福田区中电分部', '2013-09-26', '2013-09-27', '39', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('420', '680906', '广东深圳公司观兰大道益言堂仓储分部', '2014-12-12', '2014-12-12', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('421', '791359', '广东深圳公司布吉新沙湾便民寄存点分部', '2014-12-12', '2014-12-12', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('422', '792437', '广东深圳公司南山西丽大联大便民寄存分部', '2014-12-12', '2014-12-12', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('423', '792357', '广东深圳公司南山花园城便民寄存分部', '2014-12-12', '2014-12-12', '50', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('424', '681451', '广东深圳公司观兰大道浩宇仓储分部', '2014-12-15', '2014-12-15', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('425', '792362', '广东深圳公司龙岗星河盛世便民寄存点分部', '2014-12-15', '2014-12-15', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('426', '791432', '广东深圳公司龙岗东龙便民寄存点分部', '2014-12-15', '2014-12-15', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('427', '509135', '广东深圳公司龙岗区爱联分部', '2014-12-15', '2014-12-15', '51', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('428', '518451', '广东深圳公司南山区西丽创业园分部', '2014-12-16', '2014-12-16', '51', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('429', '518866', '广东深圳公司龙岗区坂田光雅园分部', '2014-12-16', '2014-12-16', '51', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('43', '518787', '广东深圳公司布吉大都汇分部', '2013-10-08', '2013-10-09', '41', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('430', '518829', '广东深圳公司罗湖碧波分部', '2014-12-16', '2014-12-16', '51', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('431', '683232', '广东深圳公司宝安妈咪细语仓储分部', '2014-12-16', '2014-12-16', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('432', '518854', '广东深圳公司龙岗区横岗永湖分部', '2014-12-16', '2014-12-16', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('433', '791543', '广东深圳公司龙岗横岗四联便民寄存点分部', '2014-12-16', '2014-12-16', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('434', '682348', '广东深圳公司观兰大道本创数码仓储分部', '2014-12-16', '2014-12-16', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('435', '509444', '广东深圳公司福田区商会分部', '2014-12-18', '2014-12-18', '51', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('436', '518574', '广东深圳公司福田区通天地分部', '2014-12-18', '2014-12-18', '51', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('437', '792075', '广东深圳公司南山大新便民寄存点分部', '2014-12-19', '2014-12-19', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('438', '683223', '广东深圳公司宝安世纪通电子仓储分部', '2014-12-19', '2014-12-19', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('439', '683470', '广东深圳公司宝安华宝数码仓储分部', '2014-12-19', '2014-12-19', '51', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('44', '518887', '广东深圳公司龙岗区民治逸秀新村分部', '2013-10-08', '2013-10-09', '41', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('440', '792075', '广东深圳公司南山大新便民寄存点分部', '2014-12-23', '2014-12-23', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('441', '518879', '广东深圳公司宝安区富盈门分部', '2014-12-23', '2014-12-23', '52', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('442', '518889', '广东深圳公司龙岗区民治惠鑫分部', '2014-12-23', '2014-12-23', '52', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('443', '518429', '广东深圳公司龙岗区坂田花城分部', '2014-12-23', '2014-12-23', '52', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('444', '509183', '香港口岸分部', '2014-12-23', '2014-12-23', '52', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('445', '793063', '广东深圳公司坪山大工业区便民寄存点分部', '2014-12-24', '2014-12-24', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('446', '509942', '广东深圳公司龙岗区民治华顺分部', '2014-12-24', '2014-12-24', '52', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('447', '509304', '广东深圳公司市场开发部-KH耐拓能源分部', '2014-12-26', '2014-12-26', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('448', '792896', '广东深圳公司福田竹子林便民寄存点分部', '2014-12-26', '2014-12-26', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('449', '682911', '广东深圳公司观兰大道子涵专卖仓储分部', '2014-12-26', '2014-12-26', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('45', '518239', '广东深圳公司龙岗区观兰汽车站分部', '2013-10-08', '2013-10-09', '41', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('450', '789596', '广东深圳公司龙岗大都汇便民寄存点分部', '2014-12-26', '2014-12-26', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('451', '791471', '广东深圳公司龙岗佳华便民寄存点分部', '2014-12-26', '2014-12-26', '52', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('452', '790967', '广东深圳公司龙岗清湖便民寄存点分部', '2014-12-30', '2014-12-30', '53', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('453', '793085', '广东深圳公司龙岗区布吉罗岗便民寄存点分部', '2014-12-30', '2014-12-30', '53', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('454', '509183', '香港口岸分部', '2014-12-30', '2014-12-30', '53', '站点', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('455', '518836', '广东深圳公司龙岗中兴城睿霖母婴淘宝分部', '2014-12-30', '2014-12-30', '53', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('456', '789926', '广东深圳公司龙岗坪地高桥便民寄存点分部', '2014-12-30', '2014-12-30', '53', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('457', '793407', '广东深圳公司宝安茨田蒲便民寄存点分部', '2014-12-30', '2014-12-30', '53', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('458', '518355', '广东深圳公司罗湖区银湖分部', '2014-12-31', '2014-12-31', '53', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('459', '518167', '广东深圳公司宝安区流塘分部', '2014-12-31', '2014-12-31', '53', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('46', '518107', '广东深圳公司罗湖区罗芳分拨分部', '2013-10-14', '2013-10-14', '42', '变更', '徐迪军', '电话', '分拨点');
INSERT INTO `xt_site` VALUES ('460', '518327', '广东深圳公司罗湖区南湖分部', '2015-01-04', '2015-01-04', '2', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('461', '518556', '广东深圳公司龙岗区南联十分部', '2015-01-04', '2015-01-04', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('462', '791569', '广东深圳公司龙岗布吉木绵湾便民寄存点分部', '2015-01-04', '2015-01-04', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('463', '518674', '广东深圳公司龙岗区龙华龙观分部', '2015-01-04', '2015-01-04', '2', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('464', '518012', '广东深圳公司宝安区福永凤城分部', '2015-01-04', '2015-01-04', '2', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('465', '518398', '广东深圳公司南山区发展分部', '2015-01-04', '2015-01-04', '2', '站点', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('466', '681493', '广东深圳公司观兰大道沸斯仓储分部', '2015-01-05', '2015-01-05', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('467', '518930', '广东深圳公司南山区南新分部', '2015-01-06', '2015-01-06', '2', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('468', '682168', '广东深圳公司观兰大道炎炎数码仓储分部', '2015-01-06', '2015-01-06', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('469', '518991', '广东深圳公司龙岗区民治红宇分部', '2015-01-06', '2015-01-06', '2', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('47', '518280', '广东深圳公司福田区岗厦分部', '2013-10-14', '2013-10-14', '42', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('470', '682954', '广东深圳公司宝安捷昌达光电仓储分部', '2015-01-08', '2015-01-08', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('471', '681013', '广东深圳公司宝安区弗兰格乐器仓储分部', '2015-01-08', '2015-01-08', '2', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('472', '790294', '广东深圳公司宝安松岗楼岗便民寄存点分部', '2015-01-13', '2015-01-13', '3', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('473', '682465', '广东深圳公司观兰大道燕庆数码仓储分部', '2015-01-13', '2015-01-13', '3', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('474', '509745', '广东深圳公司龙岗区民治金地梅陇分部', '2015-01-13', '2015-01-13', '3', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('475', '518073', '广东深圳公司罗湖区东门宝华分部', '2015-01-15', '2015-01-15', '3', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('476', '509201', '广东深圳公司市场开发部-KH利达贸易分部', '2015-01-15', '2015-01-15', '3', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('477', '792719', '广东深圳公司福田中航便民寄存点分部', '2015-01-16', '2015-01-16', '3', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('478', '793283', '广东深圳公司宝安光明田寮便民寄存点分部', '2015-01-19', '2015-01-19', '4', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('479', '518534', '广东深圳公司龙岗区布吉木绵湾分部', '2015-01-19', '2015-01-19', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('48', '518473', '广东深圳公司龙岗区龙华梅花山庄分部', '2013-10-14', '2013-10-14', '42', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('480', '518401', '广东深圳公司南山区海岸城分部', '2015-01-19', '2015-01-19', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('481', '518726', '广东深圳公司龙岗区平湖富新分部', '2015-01-20', '2015-01-20', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('482', '518472', '广东深圳公司龙岗区平湖京华分部', '2015-01-23', '2015-01-23', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('483', '518471', '广东深圳公司福田区时代分部', '2015-01-23', '2015-01-23', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('484', '509284', '广东深圳公司福田区石厦分部', '2015-01-23', '2015-01-23', '4', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('485', '509556', '广东深圳公司市场开发部-KH欣饰创展分部', '2015-01-23', '2015-01-23', '4', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('486', '791910', '广东深圳公司南山东部工业区四便民寄存分部', '2015-01-23', '2015-01-23', '4', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('487', '518870', '广东深圳公司龙岗区龙华大浪华宁分部', '2015-01-26', '2015-01-26', '5', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('488', '681662', '广东深圳公司宝安宏跃母婴仓储分部', '2015-01-26', '2015-01-26', '5', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('489', '518278', '广东深圳公司福田区福中分部', '2015-01-29', '2015-01-29', '5', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('49', '518534', '广东深圳公司龙岗区布吉木绵湾分部', '2013-10-18', '2013-10-18', '42', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('490', '682715', '广东深圳公司观兰大道海威迩仓储分部', '2015-01-30', '2015-01-30', '5', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('491', '518840', '广东深圳公司龙岗区平湖新辅城坳分部', '2015-01-31', '2015-01-31', '5', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('492', '509454', '广东深圳公司福田区城市绿洲分部', '2015-02-07', '2015-02-07', '6', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('493', '518695', '广东深圳公司福田梅林二村分部', '2015-02-07', '2015-02-07', '6', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('494', '680932', '广东深圳公司观兰大道金立手机仓储分部', '2015-02-11', '2015-02-11', '7', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('495', '793120', '广东深圳公司罗湖黄贝岭便民寄存点分部', '2015-02-11', '2015-02-11', '7', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('496', '683396', '广东深圳公司观兰大道美视佳仓储分部', '2015-03-03', '2015-03-03', '10', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('497', '793120', '广东深圳公司罗湖黄贝岭便民寄存点分部', '2015-03-03', '2015-03-03', '10', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('498', '509264', '广东深圳公司福田区联合广场分部', '2015-03-03', '2015-03-03', '10', '站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('499', '682342', '广东广州海珠区同福公司宝岗大道仓储分部', '2015-03-04', '2015-03-04', '10', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('5', '518224', '广东深圳公司龙岗区红树林淘宝分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('50', '518675', '广东深圳公司福田区益田村分部', '2013-10-18', '2013-10-19', '42', '变更', '徐迪军', 'QQ', '');
INSERT INTO `xt_site` VALUES ('500', '518731', '广东深圳公司罗湖区淘游淘宝分部', '2015-03-04', '2015-03-04', '10', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('501', '518518', '广东深圳公司福田区上下沙分部', '2015-03-11', '2015-03-11', '11', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('502', '518824', '广东深圳公司龙岗区民治民康分部', '2015-03-11', '2015-03-11', '11', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('503', '518908', '广东深圳公司罗湖区莲塘岁宝分部', '2015-03-11', '2015-03-11', '11', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('504', '509264', '广东深圳公司福田区联合广场分部', '2015-03-11', '2015-03-11', '11', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('505', '682135', '广东深圳公司唯东数码仓储分部', '2015-03-11', '2015-03-11', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('506', '684843', '广东深圳公司观兰大道香曼服饰仓储分部', '2015-03-11', '2015-03-11', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('507', '683342', '广东深圳公司观兰大道菲丽洁母婴仓储分部', '2015-03-11', '2015-03-11', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('508', '792035', '广东深圳公司福田区喜年中心便民寄存点分部', '2015-03-11', '2015-03-11', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('509', '687763', '广东深圳公司观兰大道易菲服饰仓储分部', '2015-03-13', '2015-03-13', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('51', '518479', '广东深圳公司福田区新洲国通分部', '2013-10-21', '2013-10-21', '43', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('510', '790521', '广东深圳公司龙岗梅花山庄便民寄存点分部', '2015-03-13', '2015-03-13', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('511', '685878', '广东深圳公司观兰大道杨杨电器仓储分部', '2015-03-13', '2015-03-13', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('512', '683587', '广东深圳公司观兰大道音信佳数码仓储分部', '2015-03-13', '2015-03-13', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('513', '689690', '广东深圳公司观兰大道迪露仓储分部', '2015-03-13', '2015-03-13', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('514', '509453', '香港元朗分部', '2015-03-13', '2015-03-13', '11', '新站点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('515', '683956', '广东深圳公司观兰大道薇莉斯仓储分部', '2015-03-14', '2015-03-14', '11', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('516', '518010', '广东深圳公司南山区欢乐谷分部', '2015-03-18', '2015-03-18', '12', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('517', '790702', '广东深圳公司坂田万科城幸福驿站寄存点分部', '2015-03-19', '2015-03-19', '12', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('518', '790480', '广东深圳公司和平万科桂苑幸福驿站寄存分部', '2015-03-20', '2015-03-20', '12', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('519', '686299', '广东深圳公司观兰大道艾依米仓储分部', '2015-03-20', '2015-03-20', '12', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('52', '518456', '广东深圳公司罗湖区东门鸿隆分部', '2013-10-21', '2013-10-21', '43', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('520', '518016', '广东深圳公司罗湖区靖轩分部', '2015-03-20', '2015-03-20', '12', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('521', '518802', '广东深圳公司龙岗区龙华金龙华分部', '2015-03-23', '2015-03-23', '13', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('522', '792437', '广东深圳公司南山西丽大联大便民寄存分部', '2015-03-23', '2015-03-23', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('523', '792702', '广东深圳公司坂田永香万科四季花城寄存点', '2015-03-23', '2015-03-23', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('524', '790206', '广东深圳公司南山西丽龙井便民寄存点分部', '2015-03-23', '2015-03-23', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('525', '518042', '广东深圳公司龙岗区观澜新塘分部', '2015-03-24', '2015-03-24', '13', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('526', '689328', '广东深圳公司宝安区腾逸数码仓储分部', '2015-03-25', '2015-03-25', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('527', '688012', '广东深圳公司张记商行仓储分部', '2015-03-25', '2015-03-25', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('528', '518451', '广东深圳公司南山区西丽创业园分部', '2015-03-26', '2015-03-26', '13', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('529', '518573', '广东深圳公司龙岗区平湖宏泰分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('53', '518161', '广东深圳公司宝安区华丰分部', '2013-10-21', '2013-10-21', '43', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('530', '793327', '广东深圳公司福田嘉汇新城便民寄存点分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('531', '792621', '广东深圳公司宝安鹤洲村便民寄存点分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('532', '792753', '广东深圳公司宝安万科腾讯龙光大厦寄存分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('533', '684764', '广东深圳公司观兰大道艾斯蓝仓储分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('534', '687726', '广东深圳公司宝安攀能商贸仓储分部', '2015-03-27', '2015-03-27', '13', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('535', '518993', '广东深圳公司南山区软件基地分部', '2015-03-27', '2015-03-27', '13', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('536', '509071', '广东深圳公司福田区皇岗村分部', '2015-03-27', '2015-03-27', '13', '新开', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('537', '518794', '广东深圳公司龙岗区民治华景分部', '2015-03-27', '2015-03-27', '13', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('538', '518810', '广东深圳公司宝安区桃源居分部', '2015-03-31', '2015-03-31', '14', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('539', '518947', '广东深圳公司宝安区松岗星港城分部', '2015-03-31', '2015-03-31', '14', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('54', '518631', '广东深圳公司龙岗区坂田和磡分部', '2013-10-24', '2013-10-24', '43', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('540', '518564', '广东深圳公司龙岗区平湖数码淘宝分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('541', '789504', '广东深圳公司龙岗区布吉细靓便利店分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('542', '518884', '广东深圳公司龙岗区观兰卓悦淘宝分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('543', '509551', '广东深圳公司市场开发部-KH趣乐数码分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('544', '791214', '广东深圳公司龙岗龙华英泰便民寄存点分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('545', '683534', '广东深圳公司宝安咪宝猫仓储分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('546', '791806', '广东深圳公司惠鑫万科金域华府便民寄存分部', '2015-03-31', '2015-03-31', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('547', '792900', '广东深圳公司福田东海花园便民寄存点', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('548', '790041', '广东深圳公司福田万科金色家园便民寄存分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('549', '790072', '广东深圳公司宝安宝运达便民寄存点分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('55', '518665', '广东深圳公司龙岗区龙华东龙分部', '2013-10-24', '2013-10-24', '43', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('550', '792547', '广东深圳公司福田万科福景大厦寄存点分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('551', '792300', '广东深圳公司百合万科海轩广场便民寄存分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('552', '688053', '广东深圳公司观兰大道爱华普仓储分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('553', '688556', '广东深圳公司观兰大道风痕数码仓储分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('554', '790014', '广东深圳公司南山大冲特发便民寄存点分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('555', '792687', '广东深圳公司南山天安便民寄存点分部', '2015-04-02', '2015-04-02', '14', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('556', '518311', '广东深圳公司福田区华强电子分部', '2015-04-02', '2015-04-02', '14', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('557', '518714', '广东深圳公司南山区太古城分部', '2015-04-08', '2015-04-08', '15', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('558', '509445', '广东深圳公司福田区岗厦东西村分部', '2015-04-08', '2015-04-08', '15', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('559', '684547', '广东深圳公司宝安多米儿童仓储分部', '2015-04-09', '2015-04-09', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('56', '518211', '广东深圳公司宝安松岗红星分部', '2013-10-27', '2013-10-28', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('560', '792750', '广东深圳公司西丽珠光村便民寄存点分部', '2015-04-09', '2015-04-09', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('561', '791914', '广东深圳公司罗湖和平便民寄存点分部', '2015-04-09', '2015-04-09', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('562', '685148', '广东深圳公司宝安吉祥佛缘仓储分部', '2015-04-09', '2015-04-09', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('563', '688015', '广东深圳公司观兰大道丹尼爱特德源仓储分部', '2015-04-09', '2015-04-09', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('564', '793345', '广东深圳公司龙岗同富裕便民寄存点分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('565', '793479', '广东韶关公司始兴县便民寄存点分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('566', '682112', '广东深圳公司观兰大道gilliv仓储分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('567', '790750', '广东深圳公司龙岗龙胜便民寄存点分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('568', '686621', '广东深圳公司观兰大道臻礼阁仓储分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('569', '790498', '广东深圳公司坪山万科金域东郡寄存点分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('57', '518861', '广东深圳公司龙岗区观兰大和分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('570', '689022', '广东深圳公司观兰大道童胜仓储分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('571', '792016', '广东深圳公司南山麻雀岭便民寄存点分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('572', '509883', '广东深圳公司市场开发部-KH乐淘里分部', '2015-04-10', '2015-04-10', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('573', '518371', '广东深圳公司龙岗区龙华富士康分部', '2015-04-11', '2015-04-11', '15', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('574', '518916', '广东深圳公司罗湖区平安淘宝分部', '2015-04-11', '2015-04-11', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('575', '790375', '广东深圳公司南山鹏都便民寄存点分部', '2015-04-11', '2015-04-11', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('576', '792027', '广东深圳公司福田英龙便民寄存点分部', '2015-04-11', '2015-04-11', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('577', '791909', '广东深圳公司福田华强电子便民寄存点分部', '2015-04-11', '2015-04-11', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('578', '789976', '广东深圳公司名商便民寄存点分部', '2015-04-11', '2015-04-11', '15', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('579', '793211', '广东深圳公司吉明便民寄存点分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('58', '518107', '广东深圳公司罗湖区罗芳分拨分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('580', '789506', '广东深圳公司龙岗区布吉大靓分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('581', '792821', '广东深圳公司沙井中亚万科翡丽郡寄存点分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('582', '790618', '广东珠海公司北门生活配套区便民寄存分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('583', '792153', '广东深圳公司四季便民寄存点分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('584', '518336', '广东深圳公司罗湖区梅园分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('585', '791232', '广东深圳公司新中心万科兰乔花园寄存点分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('586', '789935', '广东深圳公司宝安臣田便民寄存点分部', '2015-04-14', '2015-04-14', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('587', '518021', '广东深圳公司宝安区福永永福分部', '2015-04-16', '2015-04-16', '16', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('588', '790577', '广东深圳公司龙岗坪地兰陵便民寄存分部', '2015-04-16', '2015-04-16', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('589', '792839', '广东深圳公司中兴城万科八意府寄存点分部', '2015-04-16', '2015-04-16', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('59', '518761', '广东深圳公司南山区南山桃园分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('590', '791432', '广东深圳公司龙岗东龙便民寄存点分部', '2015-04-16', '2015-04-16', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('591', '789970', '广东深圳公司香蜜湖万科规划大厦寄存点分部', '2015-04-17', '2015-04-17', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('592', '791742', '广东深圳公司东海花园万科东方大厦寄存点', '2015-04-17', '2015-04-17', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('593', '793404', '广东深圳公司万科荔景大厦幸福驿站寄存分部', '2015-04-17', '2015-04-17', '16', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('594', '790034', '广东深圳公司香蜜湖万科城市花园寄存点分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('595', '685991', '广东深圳公司宝安盛通锁具仓储分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('596', '681256', '广东深圳公司观兰大道gl母婴仓储分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('597', '687575', '广东深圳公司观兰大道耐诗礼品玩具仓储分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('598', '791541', '广东深圳公司福田国利便民寄存点分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('599', '518265', '广东深圳公司福田区安华分部', '2015-04-21', '2015-04-21', '17', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('6', '518895', '广东深圳公司宝安区石岩料坑分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('60', '518854', '广东深圳公司龙岗区横岗永湖分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('600', '689265', '广东深圳公司天之爱母婴仓储分部', '2015-04-21', '2015-04-21', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('601', '791051', '广东深圳公司宝安沙井新桥便民寄存分部', '2015-04-22', '2015-04-22', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('602', '791460', '广东深圳公司宝安沙井和壹便民寄存点分部', '2015-04-22', '2015-04-22', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('603', '518451', '广东深圳公司南山区西丽创业园分部', '2015-04-22', '2015-04-22', '17', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('604', '686701', '广东深圳公司观兰大道ztaste仓储分部', '2015-04-22', '2015-04-22', '17', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('605', '509287', '广东深圳公司宝安区福永环宇集包分部', '2015-04-28', '2015-04-28', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('606', '509143', '广东深圳公司中心区域分部', '2015-04-28', '2015-04-28', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('607', '509582', '广东深圳公司中心分拨分部', '2015-04-28', '2015-04-28', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('608', '793302', '广东深圳公司南山西丽高职院便民寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('609', '791457', '广东深圳公司深圳大学小麦公社寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('61', '518777', '广东深圳公司龙岗区龙华伍屋村分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('610', '687615', '广东深圳公司观兰大道欧瑞德饰品仓储分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('611', '791826', '广东深圳公司南山赤湾便民寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('612', '791126', '广东深圳公司龙岗观兰大布巷便民寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('613', '790989', '广东深圳公司樟树布万科公园里寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('614', '688911', '广东深圳公司观兰大道卡迪纳爱她仓储分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('615', '789926', '广东深圳公司龙岗坪地高桥便民寄存点分部', '2015-04-29', '2015-04-29', '18', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('616', '518846', '广东深圳公司宝安区华美分部', '2015-04-30', '2015-04-30', '18', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('617', '518531', '广东深圳公司宝安区石岩田心官田分部', '2015-04-30', '2015-04-30', '18', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('618', '518756', '广东深圳公司民治华通源分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('619', '792296', '广东深圳公司龙岗布吉莲花便民寄存点分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('62', '518211', '广东深圳公司宝安松岗红星分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('620', '790289', '广东深圳公司龙岗龙华龙翔便民寄存点分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('621', '686037', '广东深圳公司观兰大道winko仓储分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('622', '683476', '广东深圳公司观兰大道nowher仓储分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('623', '792269', '广东深圳公司龙岗坂田和磡便民寄存点分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('624', '792516', '广东深圳公司龙岗观澜桂花便民寄存点分部', '2015-05-04', '2015-05-04', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('625', '518734', '广东深圳公司龙岗区平湖鹅公岭分部', '2015-05-07', '2015-05-07', '19', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('626', '792387', '广东深圳公司南山海上世界便民寄存点分部', '2015-05-08', '2015-05-08', '19', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('627', '793344', '广东深圳公司百花万科证监局寄存点分部', '2015-05-09', '2015-05-09', '19', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('628', '793062', '广东深圳公司福田金创便民寄存分部', '2015-05-10', '2015-05-10', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('629', '792648', '广东深圳公司福田区福田村便民寄存点分部', '2015-05-11', '2015-05-11', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('63', '518631', '广东深圳公司龙岗区坂田和磡分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('630', '793086', '广东深圳公司龙岗区民治南景便民寄存点分部', '2015-05-12', '2015-05-12', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('631', '793428', '广东深圳公司龙岗区龙华龙观便民寄存点', '2015-05-13', '2015-05-13', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('632', '790231', '广东深圳公司龙岗民治北便民寄存点分部', '2015-05-14', '2015-05-14', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('633', '518336', '广东深圳公司罗湖区梅园分部', '2015-05-15', '2015-05-15', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('634', '791848', '广东深圳公司海田万科中信证劵寄存点分部', '2015-05-12', '2015-05-12', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('635', '518448', '广东深圳公司龙岗区宝腾分部', '2015-05-12', '2015-05-12', '20', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('636', '791879', '广东深圳公司福田福中便民寄存分部', '2015-05-12', '2015-05-12', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('637', '793120', '广东深圳公司罗湖黄贝岭便民寄存点分部', '2015-05-14', '2015-05-14', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('638', '791131', '广东深圳公司罗湖草埔便民寄存点分部', '2015-05-14', '2015-05-14', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('639', '518807', '广东深圳公司罗湖区佳宁娜淘宝分部', '2015-05-14', '2015-05-14', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('64', '518915', '广东深圳公司宝安区光明高新区分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('640', '509328', '广东深圳公司聚美优品VIP分部', '2015-05-14', '2015-05-14', '20', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('641', '518193', '广东深圳公司龙岗区布吉罗岗分部', '2015-05-14', '2015-05-14', '20', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('642', '791336', '广东深圳公司南山欢乐谷便民寄存点分部', '2015-05-19', '2015-05-19', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('643', '789505', '广东深圳公司南山区海月便利店分部', '2015-05-19', '2015-05-19', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('644', '687408', '广东深圳公司观兰大道铭珠舫珠宝仓储分部', '2015-05-19', '2015-05-19', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('645', '790964', '广东深圳公司南山湾夏便民寄存点分部', '2015-05-19', '2015-05-19', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('646', '509410', '广东深圳公司福田区南园分部', '2015-05-19', '2015-05-19', '21', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('647', '509190', '香港旺角分部', '2015-05-19', '2015-05-19', '21', '新开', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('648', '790304', '广东深圳公司杨美万科第五园便民寄存点分部', '2015-05-19', '2015-05-19', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('649', '790702', '广东深圳公司坂田万科城幸福驿站寄存点分部', '2015-05-21', '2015-05-21', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('65', '518167', '广东深圳公司宝安区流塘分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('650', '689834', '广东深圳公司观兰大道仓储分部', '2015-05-21', '2015-05-21', '21', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('651', '684193', '广东深圳公司宠物妈妈仓储分部', '2015-05-26', '2015-05-26', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('652', '509084', '广东深圳公司市场开发部-KH广度物流分部', '2015-05-26', '2015-05-26', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('653', '518004', '广东深圳公司罗湖区水贝分部', '2015-05-28', '2015-05-28', '22', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('654', '518930', '广东深圳公司南山区红花园分部', '2015-05-28', '2015-05-28', '22', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('655', '790070', '广东深圳公司龙岗坪地六联便民寄存分部', '2015-05-28', '2015-05-28', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('656', '792617', '广东深圳公司龙岗电子城便民寄存点分部', '2015-05-28', '2015-05-28', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('657', '513227', '广东深圳公司宝安区海天淘宝分部', '2015-05-28', '2015-05-28', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('658', '793229', '广东深圳公司龙西万科千林山居寄存点分部', '2015-05-28', '2015-05-28', '22', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('659', '518871', '广东深圳公司龙岗区布吉奔腾达分部', '2015-06-02', '2015-06-02', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('66', '518241', '广东深圳公司龙岗区平湖富民分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('660', '518868', '广东深圳公司龙岗区龙华滢水山庄分部', '2015-06-02', '2015-06-02', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('661', '790360', '广东深圳公司下沙万科金域蓝湾寄存点分部', '2015-06-02', '2015-06-02', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('662', '518814', '广东深圳公司宝安区松岗新天虹分部', '2015-06-02', '2015-06-02', '23', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('663', '791471', '广东深圳公司龙岗佳华便民寄存点分部', '2015-06-02', '2015-06-02', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('664', '689022', '广东深圳公司观兰大道童胜仓储分部', '2015-06-03', '2015-06-03', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('665', '791464', '广东深圳公司龙岗大康便民寄存点分部', '2015-06-03', '2015-06-03', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('666', '791548', '广东深圳公司杨美万科金色半山寄存点分部', '2015-06-04', '2015-06-04', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('667', '791932', '广东深圳公司宝安石岩罗租便民寄存分部', '2015-06-04', '2015-06-04', '23', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('668', '509745', '广东深圳公司龙岗区民治金地梅陇分部', '2015-06-04', '2015-06-04', '23', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('669', '518793', '广东深圳公司龙岗坪地六联分部', '2015-06-04', '2015-06-04', '23', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('67', '518381', '广东深圳公司南山区天安分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('670', '509819', '广东深圳公司龙岗区英泰集包分部', '2015-06-09', '2015-06-09', '24', '新开', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('671', '684893', '广东深圳公司观兰大道氧生活电器仓储分部', '2015-06-09', '2015-06-09', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('672', '518131', '广东深圳公司宝安区流塘新分部', '2015-06-11', '2015-06-11', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('673', '791133', '广东深圳公司宝安福永塘尾便民寄存点分部', '2015-06-11', '2015-06-11', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('674', '791313', '广东深圳公司宝安富通城便民寄存点分部', '2015-06-11', '2015-06-11', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('675', '790662', '广东深圳公司宝安松岗燕川便民寄存分部', '2015-06-11', '2015-06-11', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('676', '509615', '广东深圳公司福田区福庆分部', '2015-06-12', '2015-06-12', '24', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('677', '791382', '广东深圳公司福田华强志伟便民寄存点分部', '2015-06-15', '2015-06-15', '25', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('678', '682465', '广东深圳公司观兰大道燕庆数码仓储分部', '2015-06-15', '2015-06-15', '25', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('679', '518877', '广东深圳公司福田区沙埔头分部', '2015-06-15', '2015-06-15', '25', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('68', '518612', '广东深圳公司南山区西丽龙井分部', '2013-10-30', '2013-11-01', '44', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('680', '518401', '广东深圳公司南山区海岸城分部', '2015-06-17', '2015-06-17', '25', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('681', '790095', '广东深圳公司龙岗坂田国惠康便民寄存分部', '2015-06-18', '2015-06-18', '25', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('682', '792754', '广东深圳公司龙岗横岗六约便民寄存点分部', '2015-06-18', '2015-06-18', '25', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('683', '791551', '广东深圳公司罗湖八卦三便民寄存点分部', '2015-06-23', '2015-06-23', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('684', '518713', '广东深圳公司布吉桂芳园分部', '2015-06-24', '2015-06-24', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('685', '793439', '广东深圳公司龙岗坂田华为便民寄存点分部', '2015-06-24', '2015-06-24', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('686', '518427', '广东深圳公司龙岗区南联七分部', '2015-06-24', '2015-06-24', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('687', '518461', '广东深圳公司罗湖区太白西分部', '2015-06-26', '2015-06-26', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('688', '790967', '广东深圳公司龙岗清湖便民寄存点分部', '2015-06-26', '2015-06-26', '26', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('689', '518589', '广东深圳公司市场开发部-KH宏兆', '2015-06-29', '2015-06-29', '27', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('69', '518696', '广东深圳公司宝安石岩田心水田分部', '2013-11-03', '2013-11-03', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('690', '792283', '广东深圳公司南山创维便民寄存点分部', '2015-07-01', '2015-07-01', '27', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('691', '791167', '广东深圳公司福田赤尾便民寄存点分部', '2015-07-02', '2015-07-02', '27', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('692', '792933', '广东深圳公司福田电子科技便民寄存点分部', '2015-07-02', '2015-07-02', '27', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('693', '793224', '广东深圳公司宝安福永怀德便民寄存点分部', '2015-07-06', '2015-07-06', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('694', '518784', '广东深圳公司市场开发部-KH003', '2015-07-06', '2015-07-06', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('695', '792762', '广东深圳公司福田水围便民寄存点分部', '2015-07-06', '2015-07-06', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('696', '518881', '广东深圳公司龙岗区深惠东方卓越分部', '2015-07-06', '2015-07-06', '28', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('697', '518745', '广东深圳公司龙岗区坂田深港数码分部', '2015-07-07', '2015-07-07', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('698', '509448', '广东深圳公司龙岗区龙城集包分部', '2015-07-08', '2015-07-08', '28', '新开', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('699', '790616', '广东深圳公司南山学府便民寄存点分部', '2015-07-09', '2015-07-09', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('7', '518428', '广东深圳公司罗湖区京基分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('70', '518800', '广东深圳公司龙岗区坪地高桥分部', '2013-11-03', '2013-11-03', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('700', '792153', '广东深圳公司四季便民寄存点分部', '2015-07-10', '2015-07-10', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('701', '518028', '广东深圳公司龙岗区东环分拨分部', '2015-07-11', '2015-07-11', '28', '转让', '郭明星', '通知分拨点管理部', '');
INSERT INTO `xt_site` VALUES ('702', '518907', '广东深圳公司龙岗区民治宝山分部', '2015-07-11', '2015-07-11', '28', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('703', '509689', '广东深圳公司福田区振中分部', '2015-07-11', '2015-07-11', '28', '新开', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('704', '509304', '广东深圳公司市场开发部-KH耐拓能源分部', '2015-07-14', '2015-07-14', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('705', '791874', '广东深圳公司怀德万科金色领域寄存点分部', '2015-07-14', '2015-07-14', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('706', '793469', '广东深圳公司宝安松岗潭头便民寄存点分部', '2015-07-15', '2015-07-15', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('707', '518090', '广东深圳公司龙岗区布吉宝福分部', '2015-07-15', '2015-07-15', '29', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('708', '518586', '广东深圳公司市场开发部-KH网创园', '2015-07-16', '2015-07-16', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('709', '509190', '香港旺角分部', '2015-07-16', '2015-07-16', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('71', '518568', '广东深圳公司宝安区松岗天虹松涛分部', '2013-11-03', '2013-11-03', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('710', '791238', '广东深圳公司福田通天地便民寄存点分部', '2015-07-17', '2015-07-17', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('711', '509495', '广东深圳公司保税海捣淘宝分部', '2015-07-17', '2015-07-17', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('712', '793243', '广东深圳公司龙岗坂田新万科城便民寄存分部', '2015-07-17', '2015-07-17', '29', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('713', '793182', '广东深圳公司罗湖荔景便民寄存点分部', '2015-07-20', '2015-07-20', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('714', '790490', '广东深圳公司大和万科三九工业园寄存点分部', '2015-07-20', '2015-07-20', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('715', '518497', '广东深圳公司市场开发部-KH京华达', '2015-07-21', '2015-07-21', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('716', '509960', '广东深圳公司市场开发部-KH可瑞康分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('717', '790158', '广东深圳公司红桂万科威登别墅寄存点分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('718', '792362', '广东深圳公司龙岗星河盛世便民寄存点分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('719', '518818', '广东深圳公司龙岗区布吉百盛分部', '2015-07-23', '2015-07-23', '30', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('72', '518168', '广东深圳公司宝安区臣田分部', '2013-11-03', '2013-11-03', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('720', '518827', '广东深圳公司龙岗区宝山宇德分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('721', '518009', '广东深圳公司龙岗区横岗志健分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('722', '518023', '广东深圳公司龙岗区龙华同胜分部', '2015-07-23', '2015-07-23', '30', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('723', '518955', '广东深圳公司罗湖区东门集包分部', '2015-07-23', '2015-07-23', '30', '转让', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('724', '792371', '广东深圳公司南山科苑北便民寄存点分部', '2015-07-30', '2015-07-30', '31', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('725', '792357', '广东深圳公司南山花园城便民寄存分部', '2015-07-30', '2015-07-30', '31', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('726', '518311', '广东深圳公司福田区华强电子分部', '2015-07-30', '2015-07-30', '31', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('727', '518091', '广东深圳公司龙岗区布吉民华分部', '2015-07-30', '2015-07-30', '31', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('728', '518359', '广东深圳公司南山区白石洲分部', '2015-07-30', '2015-07-30', '31', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('729', '790593', '广东深圳公司龙岗鹅公岭便民寄存分部', '2015-07-30', '2015-07-30', '31', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('73', '518752', '广东深圳公司宝安区沙井万丰分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('730', '518807', '广东深圳公司罗湖区和胜达淘宝分部', '2015-07-30', '2015-07-30', '31', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('731', '792361', '广东深圳公司盐田沙头角便民寄存点分部', '2015-08-03', '2015-08-03', '32', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('732', '792441', '广东深圳公司宝安石岩工业区便民寄存分部', '2015-08-05', '2015-08-05', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('733', '680167', '广东深圳公司观澜大道博艺佳仓储分部', '2015-08-05', '2015-08-05', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('734', '790304', '广东深圳公司杨美万科第五园便民寄存点分部', '2015-08-05', '2015-08-05', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('735', '680966', '广东深圳公司观澜大道闪魔仓储分部', '2015-08-05', '2015-08-05', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('736', '518041', '广东深圳公司龙岗区布吉立信分部', '2015-08-05', '2015-08-05', '32', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('737', '791543', '广东深圳公司龙岗横岗四联便民寄存点分部', '2015-08-06', '2015-08-06', '32', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('738', '684893', '广东深圳公司观兰大道氧生活电器仓储分部', '2015-08-06', '2015-08-06', '32', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('739', '686701', '广东深圳公司观兰大道ztaste仓储分部', '2015-08-08', '2015-08-08', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('74', '518736', '广东深圳公司南山区西丽高职院分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('740', '682687', '广东深圳公司孩子王仓储分部', '2015-08-08', '2015-08-08', '32', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('741', '518204', '广东深圳公司福田区景田分拨分部', '2015-08-01', '2015-08-01', '31', '转让', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('742', '518562', '广东深圳公司福田区华强南分拨分部', '2015-08-01', '2015-08-01', '31', '转让', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('743', '519379', '广东深圳公司市场开发部-KHTCL分部', '2015-08-12', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('744', '792269', '广东深圳公司龙岗坂田和磡便民寄存点分部', '2015-08-12', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('745', '518216', '广东深圳公司宝安区张经理分部', '2015-08-12', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('746', '791237', '广东深圳公司罗湖新秀便民寄存点分部', '2015-08-12', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('747', '518102', '广东深圳公司龙岗区曾经理分部', '2015-08-12', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('748', '518611', '广东深圳公司市场开发部-KH朝暮之家', '2015-08-13', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('749', '790635', '广东深圳公司福田福侨便民寄存点分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('75', '518418', '广东深圳公司龙岗区观兰丹坑分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('750', '789891', '广东深圳公司福田益田便民寄存分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('751', '791183', '广东深圳公司宝安石龙仔便民寄存点分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('752', '791036', '广东深圳公司宝安西乡劳动便民寄存点分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('753', '791240', '广东深圳公司龙岗深坑便民寄存点分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('754', '518771', '广东深圳公司龙岗区平湖欣怡淘宝分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('755', '790082', '广东深圳公司龙岗大浪华宁便民寄存分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('756', '518706', '广东深圳公司市场开发部-KH禅妆', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('757', '689690', '广东深圳公司观兰大道迪露仓储分部', '2015-08-20', '2015-08-20', '34', '大客户', '王赋', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('758', '518918', '广东深圳公司南山区后海分部', '2015-08-20', '2015-08-20', '34', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('759', '518684', '广东深圳公司宝安区沙井芙蓉分部', '2015-08-20', '2015-08-20', '34', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('76', '518676', '广东深圳公司龙岗区吉布康桥分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('760', '518339', '广东深圳公司罗湖区三爱淘宝分部', '2015-08-24', '2015-08-24', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('761', '518684', '广东深圳公司宝安区沙井芙蓉分部', '2015-08-25', '2015-08-25', '35', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('762', '683849', '广东深圳公司畅想服饰仓储分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('763', '685151', '广东深圳公司美的净水网仓储分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('764', '684414', '广东深圳公司观兰大道加枫红红酒仓储分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('765', '518866', '广东深圳公司龙岗区坂田光雅园分部', '2015-08-28', '2015-08-28', '35', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('766', '790116', '广东深圳公司罗湖莲塘坳下便民寄存分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('767', '518745', '广东深圳公司龙岗区坂田深港数码分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('768', '518886', '广东深圳公司罗湖区鹏飞分部', '2015-08-28', '2015-08-28', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('769', '518782', '广东深圳公司市场开发部-KH001', '2015-08-29', '2015-08-29', '35', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('77', '518879', '广东深圳公司宝安区富盈门分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('770', '518209', '广东深圳公司南山区南油分部', '2015-09-01', '2015-09-01', '36', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('771', '518087', '广东深圳公司龙岗区平湖分拨分部', '2015-09-01', '2015-09-01', '36', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('772', '518134', '广东深圳公司罗湖区布吉分拨分部', '2015-09-01', '2015-09-01', '36', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('773', '518770', '广东深圳公司南山区苗豆商贸淘宝分部', '2015-09-02', '2015-09-02', '36', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('774', '686336', '广东深圳公司观兰大道亚洲大药房仓储分部', '2015-09-02', '2015-09-02', '36', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('775', '683849', '广东深圳公司畅想服饰仓储分部', '2015-09-02', '2015-09-02', '36', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('776', '685151', '广东深圳公司美的净水网仓储分部', '2015-09-02', '2015-09-02', '36', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('777', '684414', '广东深圳公司观兰大道加枫红红酒仓储分部', '2015-09-02', '2015-09-02', '36', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('778', '518828', '广东深圳公司龙岗布吉礼亲堂淘宝分部', '2015-09-07', '2015-09-07', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('779', '518904', '广东深圳公司龙岗区龙华华荣深特淘宝分部', '2015-09-07', '2015-09-07', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('78', '518038', '广东深圳公司南山区坚达分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('780', '518676', '广东深圳公司龙岗区吉布康桥分部', '2015-09-07', '2015-09-07', '37', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('781', '509164', '广东深圳公司宝安区中来集包分部', '2015-09-07', '2015-09-07', '37', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('782', '683849', '广东深圳公司畅想服饰仓储分部', '2015-09-08', '2015-09-08', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('783', '685151', '广东深圳公司美的净水网仓储分部', '2015-09-08', '2015-09-08', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('784', '684414', '广东深圳公司观兰大道加枫红红酒仓储分部', '2015-09-08', '2015-09-08', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('785', '689399', '广东深圳公司宝安芊妃美家装仓储分部', '2015-09-09', '2015-09-09', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('786', '791090', '广东深圳公司福田上梅林便民寄存点分部', '2015-09-09', '2015-09-09', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('787', '518861', '广东深圳公司龙岗区观兰大和分部', '2015-09-09', '2015-09-09', '37', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('788', '792405', '广东深圳公司鹏飞万科公寓便民寄存点分部', '2015-09-09', '2015-09-09', '37', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('789', '509046', '广东深圳公司鹏飞万科公寓便民寄存点分部', '2015-09-09', '2015-09-09', '37', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('79', '518629', '广东深圳公司罗湖区金湖分部', '2013-11-05', '2013-11-06', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('790', '792125', '广东深圳公司松岗新天虹便民寄存点分部', '2015-09-08', '2015-09-14', '38', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('791', '793497', '广东深圳公司天虹万科金色沁园寄存点分部', '2015-09-09', '2015-09-14', '38', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('792', '791609', '广东深圳公司中信湾上六座寄存点分部', '2015-09-09', '2015-09-14', '38', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('793', '518453', '广东深圳公司福田区水围站分部', '2015-09-09', '2015-09-14', '38', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('794', '790371', '广东深圳公司中信海阔天空雅居寄存点分部', '2015-09-17', '2015-09-17', '38', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('795', '792955', '广东深圳公司中信领航里程花园寄存点分部', '2015-09-17', '2015-09-17', '38', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('796', '518026', '广东深圳公司宝安区沙井沙三分部', '2015-09-17', '2015-09-17', '38', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('797', '518497', '广东深圳公司市场开发部-KH京华达', '2015-09-21', '2015-09-21', '39', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('798', '518703', '广东深圳公司龙岗坂田新万科城分部', '2015-09-21', '2015-09-21', '39', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('799', '792854', '广东深圳公司福田华胜便民寄存点分部', '2015-09-25', '2015-09-25', '39', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('8', '518909', '广东深圳公司宝安区沙井和壹分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('80', '518414', '广东深圳公司龙岗区布吉龙泉分部', '2013-11-09', '2013-11-09', '45', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('800', '684846', '广东深圳公司观兰大道优衣美仓储分部', '2015-09-25', '2015-09-25', '39', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('801', '518768', '广东深圳公司宝安灵芝分部', '2015-09-25', '2015-09-25', '39', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('802', '791886', '广东深圳公司罗湖立新便民寄存点分部', '2015-09-25', '2015-09-25', '39', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('803', '791268', '广东深圳公司中信高尔夫别墅寄存点分部', '2015-09-25', '2015-09-25', '39', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('804', '791335', '广东深圳公司苏泰便民寄存分部', '2015-09-28', '2015-09-28', '40', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('805', '791722', '广东深圳公司思域便民寄存分部', '2015-09-28', '2015-09-28', '40', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('806', '518456', '广东深圳公司罗湖区东门鸿隆分部', '2015-09-28', '2015-09-28', '40', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('807', '509459', '广东深圳公司龙岗区布吉宏辉分部', '2015-09-28', '2015-09-28', '40', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('808', '518085', '广东深圳公司宝安区松岗潭头分部 ', '2015-09-28', '2015-09-28', '40', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('809', '518996', '广东深圳公司宝安区鹏丽集包分部', '2015-09-30', '2015-09-30', '40', '分拨点', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('81', '518130', '广东深圳公司龙岗区观兰茜坑分部', '2013-11-12', '2013-11-12', '46', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('810', '791131', '广东深圳公司罗湖草埔便民寄存点分部', '2015-09-28', '2015-09-28', '40', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('811', '518815', '广东深圳公司公明顺风科技淘宝分部', '2015-10-09', '2015-10-09', '41', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('812', '518359', '广东深圳公司南山区白石洲分部', '2015-10-09', '2015-10-09', '41', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('813', '789979', '广东深圳公司龙岗葵涌便民寄存点分部', '2015-10-10', '2015-10-10', '41', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('814', '518846', '广东深圳公司宝安区华美分部', '2015-10-13', '2015-10-13', '42', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('815', '518891', '广东深圳公司宝安区华创达分部', '2015-10-13', '2015-10-13', '42', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('816', '518688', '广东深圳公司龙岗爱华普淘宝分部', '2015-10-10', '2015-10-13', '42', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('817', '793422', '广东深圳公司中信红树湾寄存点分部', '2015-10-10', '2015-10-13', '42', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('818', '792952', '广东深圳公司福田时代便民寄存点分部', '2015-10-10', '2015-10-13', '42', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('819', '792598', '广东深圳公司泰里丰特便民寄存点分部', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('82', '518793', '广东深圳公司龙岗坪地六联分部', '2013-11-12', '2013-11-12', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('820', '518706', '广东深圳公司市场开发部-KH禅妆', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('821', '791885', '广东深圳公司罗湖八卦又一居便民寄存点分部 ', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('822', '791183', '广东深圳公司宝安石龙仔便民寄存点分部', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('823', '518498', '广东深圳公司南山区创维营销分部', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('824', '518990', '广东深圳公司龙岗区坂田马甲淘宝分部', '2015-10-19', '2015-10-19', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('825', '518404', '广东深圳公司南山区同乐分部', '2015-10-19', '2015-10-19', '43', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('826', '791887', '广东深圳公司中信海滨花园寄存点分部', '2015-10-20', '2015-10-20', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('827', '518174', '广东深圳公司宝安区黄田分部', '2015-10-20', '2015-10-20', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('828', '518554', '广东深圳公司南山区东部蝌蚪电子分部', '2015-10-20', '2015-10-20', '43', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('829', '509006', '广东深圳公司盐田保税区分部', '2015-10-21', '2015-10-21', '43', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('83', '518130', '广东深圳公司龙岗区观兰茜坑分部', '2013-11-12', '2013-11-12', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('830', '518208', '广东深圳公司南山区高新分部', '2015-10-21', '2015-10-21', '43', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('831', '791622', '广东深圳公司宝安华丰便民寄存点分部', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('832', '792555', '广东深圳公司宝安金威便民寄存点分部', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('833', '518745', '广东深圳公司龙岗区坂田深港数码分部', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('834', '791806', '广东深圳公司惠鑫万科金域华府便民寄存分部', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('835', '518766', '广东深圳公司市场开发部-KH安奈儿', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('836', '791656', '广东深圳公司中信龙盛广场寄存点分部', '2015-10-26', '2015-10-26', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('837', '509264', '广东深圳公司福田区联合广场分部', '2015-10-26', '2015-10-26', '44', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('838', '518254', '广东深圳公司龙岗区布吉长龙分部', '2015-10-26', '2015-10-26', '44', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('839', '791237', '广东深圳公司罗湖新秀便民寄存点分部', '2015-10-27', '2015-10-27', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('84', '518872', '广东深圳公司罗湖区盐田商贸城分部', '2013-11-13', '2013-11-13', '46', '变更', '徐迪军', '电话', '已下发短信');
INSERT INTO `xt_site` VALUES ('840', '518838', '广东深圳公司龙岗百事可乐淘宝分部', '2015-10-30', '2015-10-30', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('841', '793119', '广东深圳公司岸芷汀兰中信物业寄存点分部', '2015-10-30', '2015-10-30', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('842', '518614', '广东深圳公司市场开发部-KH乐购', '2015-10-30', '2015-10-30', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('843', '792877', '广东深圳公司碧波万科天景花园寄存点分部', '2015-10-30', '2015-10-30', '44', '大客户', '郭明星', '通知网点管理部', '');
INSERT INTO `xt_site` VALUES ('844', '518628', '广东深圳公司龙岗区横岗六约大康村分部', '2015-10-30', '2015-10-30', '44', '转让', '郭明星', '电话', '');
INSERT INTO `xt_site` VALUES ('85', '518834', '广东深圳公司福田区皇岗分部', '2013-11-13', '2013-11-13', '46', '变更', '徐迪军', '电话', '已下发短信');
INSERT INTO `xt_site` VALUES ('86', '518531', '广东深圳公司宝安区石岩田心官田分部', '2013-11-14', '2013-11-14', '46', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('87', '518073', '广东深圳公司罗湖区东门老街二分部', '2013-11-16', '2013-11-16', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('88', '518418', '广东深圳公司龙岗区观兰丹坑分部', '2013-11-16', '2013-11-16', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('89', '518468', '广东深圳公司龙岗区民治鑫茂分部', '2013-11-16', '2013-11-16', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('9', '518369', '广东深圳公司宝安区福永安答分部', '2013-08-01', '2013-08-01', '31', '变更', '徐迪军', '电话', '');
INSERT INTO `xt_site` VALUES ('90', '518160', '广东深圳公司宝安区石岩田心径背分部', '2013-11-16', '2013-11-16', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('91', '518599', '广东深圳公司龙岗区观兰松元分部', '2013-11-16', '2013-11-16', '46', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('92', '518768', '广东深圳公司宝安灵芝分部', '2013-11-17', '2013-11-17', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('93', '518833', '广东深圳公司罗湖区东乐分部', '2013-11-19', '2013-11-19', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('94', '518736', '广东深圳公司南山区西丽高职院分部', '2013-11-19', '2013-11-19', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('95', '518363', '广东深圳公司南山南头前海分部', '2013-11-21', '2013-11-21', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('96', '518019', '广东深圳公司福田区华强振兴分拨分部', '2013-11-21', '2013-11-21', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('97', '518477', '广东深圳公司宝安区鹤州村分部', '2013-11-23', '2013-11-23', '47', '变更', '殷晨东', '电话', '');
INSERT INTO `xt_site` VALUES ('98', '518753', '广东深圳公司盐田港分部', '2013-11-25', '2013-11-25', '48', '变更', '殷晨东', '电话、短信', '');
INSERT INTO `xt_site` VALUES ('99', '518866', '广东深圳公司龙岗区坂田光雅园分部', '2013-11-28', '2013-11-28', '48', '变更', '殷晨东', '电话、短信', '电话未接');
INSERT INTO `xt_site` VALUES ('stop1', '518129', '深圳盐田大小梅沙分部', null, '2015-04-13', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop10', '792357', '广东深圳公司南山花园城便民寄存分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop100', '790892', '广东深圳公司宝安福永凤凰便民寄存点分部', null, '2016-01-11', '3', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop101', '792595', '广东深圳公司宝安光明高新便民寄存分部', null, '2016-01-11', '3', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop102', '790169', '广东深圳公司宝安李松朗便民寄存点分部', null, '2016-01-11', '3', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop103', '790662', '广东深圳公司宝安松岗燕川便民寄存分部', null, '2016-01-11', '3', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop104', '791240', '广东深圳公司龙岗深坑便民寄存点分部', null, '2016-01-11', '3', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop105', '518216', '广东深圳公司宝安区张经理分部', null, '2016-02-19', '8', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop106', '792976', '广东深圳公司宝安银田便民寄存点分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop107', '687763', '广东深圳公司观兰大道易菲服饰仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop108', '683534', '广东深圳公司宝安咪宝猫仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop109', '518900', '广东深圳公司龙岗区龙华德城淘宝分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop11', '680167', '广东深圳公司观兰大道博艺佳仓储分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop110', '791335', '广东深圳公司苏泰便民寄存分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop111', '518174', '广东深圳公司宝安区黄田分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop112', '680167', '广东深圳公司观兰大道博艺佳仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop113', '680167', '广东深圳公司观兰大道博艺佳仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop114', '791722', '广东深圳公司思域便民寄存分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop115', '683587', '广东深圳公司观兰大道音信佳数码仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop116', '791036', '广东深圳公司宝安西乡劳动便民寄存点分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop117', '791886', '广东深圳公司罗湖立新便民寄存点分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop118', '518884', '广东深圳公司龙岗区观兰卓悦淘宝分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop119', '683396', '广东深圳公司观兰大道美视佳仓储分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop12', '789505', '广东深圳公司南山区海月便利店分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop120', '793327', '广东深圳公司福田嘉汇新城便民寄存点分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop121', '793439', '广东深圳公司龙岗坂田华为便民寄存点分部', null, '2016-03-15', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop122', '518718', '广东深圳公司罗湖区罗湖村分部', null, '2016-03-16', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop123', '518150', '广东深圳公司宝安区松岗楼岗分部', null, '2016-03-17', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop124', '789970', '广东深圳公司香蜜湖万科规划大厦寄存点分部', null, '2016-03-17', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop125', '790041', '广东深圳公司福田万科金色家园便民寄存分部', null, '2016-03-18', '12', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop126', '518745', '广东深圳公司龙岗区坂田深港数码分部', null, '2016-03-22', '13', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop127', '518566', '广东深圳公司福田区电子世界分部', null, '2016-03-24', '13', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop128', '518591', '广东深圳公司宝安区福永塘尾南玻分部', null, '2016-03-28', '14', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop129', '790892', '广东深圳公司宝安福永凤凰便民寄存点分部', null, '2016-03-29', '14', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop13', '681451', '广东深圳公司观兰大道浩宇仓储分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop130', '791738', '广东深圳公司宝安福永和平便民寄存点分部', null, '2016-03-31', '14', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop131', '518933', '广东深圳公司福田区创新科技分部', null, '2016-04-05', '15', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop132', '791848', '广东深圳公司海田万科中信证劵寄存点分部', null, '2016-04-05', '15', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop133', '793469', '广东深圳公司宝安松岗潭头便民寄存点分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop134', '518529', '广东深圳公司宝安区宝运达分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop135', '518048', '广东深圳公司宝安区裕丰分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop136', '518789', '广东深圳公司宝安区沙井沙头分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop137', '791865', '广东深圳公司宝安沙井和二便民寄存点分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop138', '680639', '广东深圳公司观兰大道美如画炎炎仓储分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop139', '689265', '广东深圳公司天之爱母婴仓储分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop14', '790289', '广东深圳公司龙岗龙华龙翔便民寄存点分部', null, '2015-04-30', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop140', '793211', '广东深圳公司吉明便民寄存点分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop141', '789976', '广东深圳公司名商便民寄存点分部', null, '2016-04-11', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop142', '688556', '广东深圳公司观兰大道风痕数码仓储分部', null, '2016-04-26', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop143', '518841', '广东深圳公司龙岗龙华新区观兰新兰分部', null, '2016-05-01', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop144', '518077', '广东深圳公司罗湖索兰淘宝分部', null, '2016-05-12', '20', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop145', '792371', '广东深圳公司南山科苑北便民寄存点分部', null, '2016-05-17', '21', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop146', '518414', '深圳布吉木绵湾分部', null, '2016-05-20', '21', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop15', '792362', '广东深圳公司龙岗星河盛世便民寄存点分部', null, '2015-04-30', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop16', '790674', '广东深圳公司福田康乐便民寄存点分部', null, '2015-04-30', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop17', '790019', '广东深圳公司福田海田便民寄存点分部', null, '2015-04-30', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop18', '518874', '广东深圳公司福田区胜龙分部', null, '2015-05-01', '18', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop19', '518460', '广东深圳公司福田区美华联分部', null, '2015-05-05', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop2', '518281', '广东深圳公司福田区岗厦东西村分部', null, '2015-04-15', '16', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop20', '518497', '广东深圳公司市场开发部-KH京华达', null, '2015-05-06', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop21', '793243', '广东深圳公司龙岗坂田新万科城便民寄存分部', null, '2015-05-07', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop22', '793086', '广东深圳公司龙岗区民治南景便民寄存点分部', null, '2015-05-07', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop23', '793428', '广东深圳公司龙岗区龙华龙观便民寄存点', null, '2015-05-07', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop24', '790231', '广东深圳公司龙岗民治北便民寄存点分部', null, '2015-05-07', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop25', '682687', '广东深圳公司孩子王仓储分部', null, '2015-05-08', '19', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop26', '518880', '广东深圳公司龙岗区龙华旭日淘宝分部', null, '2015-05-11', '20', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop27', '791471', '广东深圳公司龙岗佳华便民寄存点分部', null, '2015-05-11', '20', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop28', '682465', '广东深圳公司观兰大道燕庆数码仓储分部', null, '2015-05-11', '20', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop29', '793211', '广东深圳公司吉明便民寄存点分部', null, '2015-05-12', '20', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop3', '518854', '广东深圳公司龙岗区横岗永湖分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop30', '518181', '广东深圳公司宝安区新和分部', null, '2015-06-17', '25', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop31', '790967', '广东深圳公司龙岗清湖便民寄存点分部', null, '2015-06-23', '26', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop32', '518461', '广东深圳公司罗湖区太白西分部', null, '2015-06-24', '26', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop33', '792269', '广东深圳公司龙岗坂田和磡便民寄存点分部', null, '2015-06-30', '27', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop34', '518745', '广东深圳公司龙岗区坂田深港数码分部', null, '2015-07-07', '28', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop35', '509014', '广东深圳公司宝安区沙井沙二分部', null, '2015-07-10', '28', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop36', '792441', '广东深圳公司宝安石岩工业区便民寄存分部', null, '2015-07-10', '28', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop37', '509304', '广东深圳公司市场开发部-KH耐拓能源分部', null, '2015-07-14', '29', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop38', '509190', '香港旺角分部', null, '2015-07-14', '29', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop39', '509960', '广东深圳公司市场开发部-KH可瑞康分部', null, '2015-07-21', '30', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop4', '518836', '广东深圳公司龙岗中兴城睿霖母婴淘宝分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop40', '518807', '广东深圳公司罗湖区和胜达淘宝分部', null, '2015-07-28', '31', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop41', '518907', '广东深圳公司龙岗区民治宝山分部', null, '2015-08-03', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop42', '518041', '广东深圳公司龙岗区布吉立信分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop43', '518077', '广东深圳公司罗湖索兰淘宝分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop44', '790082', '广东深圳公司龙岗大浪华宁便民寄存分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop45', '791561', '广东深圳公司龙岗区漳坑五便民寄存点分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop46', '518745', '广东深圳公司龙岗区坂田深港数码分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop47', '793497', '广东深圳公司天虹万科金色沁园寄存点分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop48', '684893', '广东深圳公司观兰大道氧生活电器仓储分部', null, '2015-08-05', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop49', '518271', '广东深圳公司福田区上沙分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop5', '789926', '广东深圳公司龙岗坪地高桥便民寄存点分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop50', '682168', '广东深圳公司观兰大道炎炎数码仓储分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop51', '790635', '广东深圳公司福田福侨便民寄存点分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop52', '791848', '广东深圳公司海田万科中信证劵寄存点分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop53', '791879', '广东深圳公司福田福中便民寄存分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop54', '792854', '广东深圳公司福田华胜便民寄存点分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop55', '686701', '广东深圳公司观兰大道ztaste仓储分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop56', '518611', '广东深圳公司市场开发部-KH朝暮之家', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop57', '682112', '广东深圳公司观兰大道gilliv仓储分部', null, '2015-08-06', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop58', '791183', '广东深圳公司宝安石龙仔便民寄存点分部', null, '2015-08-07', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop59', '791036', '广东深圳公司宝安西乡劳动便民寄存点分部', null, '2015-08-07', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop6', '518360', '广东深圳公司南山区市长中心分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop60', '792125', '广东深圳公司松岗新天虹便民寄存点分部', null, '2015-08-07', '32', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop61', '518847', '广东深圳公司福田区群星广场分部', null, '2015-08-12', '33', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop62', '518853', '广东深圳公司盐田区蓝田壹站分部', null, '2015-08-12', '33', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop63', '518314', '广东深圳公司福田区百花分部', null, '2015-08-31', '36', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop64', '792621', '广东深圳公司宝安鹤洲村便民寄存点分部', null, '2015-08-31', '36', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop65', '683849', '广东深圳公司畅想服饰仓储分部', null, '2015-09-01', '36', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop66', '685151', '广东深圳公司美的净水网仓储分部', null, '2015-09-01', '36', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop67', '684414', '广东深圳公司观兰大道加枫红红酒仓储分部', null, '2015-09-01', '36', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop68', '683849', '广东深圳公司畅想服饰仓储分部', null, '2015-09-08', '37', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop69', '685151', '广东深圳公司美的净水网仓储分部', null, '2015-09-08', '37', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop7', '518427', '广东深圳公司龙岗区南联七分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop70', '684414', '广东深圳公司观兰大道加枫红红酒仓储分部', null, '2015-09-08', '37', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop71', '689834', '广东深圳公司观兰大道仓储分部', null, '2015-09-22', '39', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop72', '518703', '广东深圳公司龙岗坂田新万科城分部', null, '2015-09-28', '40', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop73', '689265', '广东深圳公司天之爱母婴仓储分部', null, '2015-09-28', '40', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop74', '790304', '广东深圳公司杨美万科第五园便民寄存点分部', null, '2015-09-28', '40', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop75', '791131', '广东深圳公司罗湖草埔便民寄存点分部', null, '2015-09-30', '40', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop76', '791806', '广东深圳公司惠鑫万科金域华府便民寄存分部', null, '2015-10-09', '41', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop77', '789926', '广东深圳公司龙岗坪地高桥便民寄存点分部', null, '2015-10-13', '42', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop78', '790034', '广东深圳公司香蜜湖万科城市花园寄存点分部', null, '2015-10-13', '42', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop79', '518706', '广东深圳公司市场开发部-KH禅妆', null, '2015-10-13', '42', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop8', '790964', '广东深圳公司南山湾夏便民寄存点分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop80', '792598', '广东深圳公司泰里丰特便民寄存点分部', null, '2015-10-13', '42', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop81', '518790', '广东深圳公司布吉神枪手淘宝分部', null, '2015-10-20', '43', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop82', '792648', '广东深圳公司福田区福田村便民寄存点分部', null, '2015-10-20', '43', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop83', '518007', '广东深圳公司宝安区福永新田分部', null, '2015-11-02', '45', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop84', '518531', '广东深圳公司宝安区石岩田心官田分部', null, '2015-11-02', '45', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop85', '792296', '广东深圳公司龙岗布吉莲花便民寄存点分部', null, '2015-11-02', '45', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop86', '792296', '广东深圳公司龙岗布吉莲花便民寄存点分部', null, '2015-11-02', '45', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop87', '791914', '广东深圳公司罗湖和平便民寄存点分部', null, '2015-11-10', '46', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop88', '683470', '广东深圳公司宝安华宝数码仓储分部', null, '2015-11-25', '48', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop89', '790294', '广东深圳公司宝安松岗楼岗便民寄存点分部', null, '2015-11-25', '48', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop9', '792243', '广东深圳公司龙岗横岗六约二便民寄存分部', null, '2015-04-21', '17', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop90', '680167', '广东深圳公司观兰大道博艺佳仓储分部', null, '2015-11-25', '48', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop91', '792750', '广东深圳公司西丽珠光村便民寄存点分部', null, '2015-11-27', '48', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop92', '518972', '广东深圳公司龙岗区锦龙名苑分部', null, '2015-12-01', '49', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop93', '518830', '广东深圳公司南山区永标平山村分部', null, '2015-12-01', '49', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop94', '518912', '广东深圳公司宝安区福永和盛分部', null, '2015-12-02', '49', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop95', '791609', '广东深圳公司中信湾上六座寄存点分部', null, '2015-12-02', '49', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop96', '792035', '广东深圳公司福田区喜年中心便民寄存点分部', null, '2015-12-21', '52', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop97', '680906', '广东深圳公司观兰大道益言堂仓储分部', null, '2015-12-28', '53', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop98', '518461', '广东深圳公司罗湖区太白西分部', null, '2015-12-28', '53', '停止操作', null, null, '');
INSERT INTO `xt_site` VALUES ('stop99', '683223', '广东深圳公司宝安世纪通电子仓储分部', null, '2016-01-04', '2', '停止操作', null, null, '');

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
INSERT INTO `xt_zm_data` VALUES ('1', '2015-03-01', '0', '0', null, '1322', '256', '119133', '21666', '');
INSERT INTO `xt_zm_data` VALUES ('10', '2015-03-10', '0', '0', null, '916', '223', '94781', '23357', '');
INSERT INTO `xt_zm_data` VALUES ('100', '2015-06-08', '1154', '0', null, '6630', '952', '155538', '26602', '');
INSERT INTO `xt_zm_data` VALUES ('101', '2015-06-09', '54', '0', null, '5635', '4505', '153642', '29412', '');
INSERT INTO `xt_zm_data` VALUES ('102', '2015-06-10', '3338', '0', null, '4619', '1191', '149327', '26937', '');
INSERT INTO `xt_zm_data` VALUES ('103', '2015-06-11', '2119', '1193', null, '5255', '676', '137665', '24232', '');
INSERT INTO `xt_zm_data` VALUES ('104', '2015-06-12', '4196', '0', null, '5848', '812', '137902', '24263', '');
INSERT INTO `xt_zm_data` VALUES ('105', '2015-06-13', '0', '0', null, '6082', '565', '124281', '20986', '');
INSERT INTO `xt_zm_data` VALUES ('106', '2015-06-14', '0', '0', null, '3840', '697', '111721', '18050', '');
INSERT INTO `xt_zm_data` VALUES ('107', '2015-06-15', '56', '0', null, '3806', '798', '148277', '27258', '');
INSERT INTO `xt_zm_data` VALUES ('108', '2015-06-16', '0', '0', null, '2507', '1000', '173841', '27271', '');
INSERT INTO `xt_zm_data` VALUES ('109', '2015-06-17', '0', '0', null, '1943', '852', '166170', '25246', '');
INSERT INTO `xt_zm_data` VALUES ('11', '2015-03-11', '0', '0', null, '1016', '314', '100368', '23672', '');
INSERT INTO `xt_zm_data` VALUES ('110', '2015-06-18', '0', '0', null, '2423', '1170', '172174', '28400', '');
INSERT INTO `xt_zm_data` VALUES ('111', '2015-06-19', '12', '0', null, '1233', '992', '164157', '27003', '');
INSERT INTO `xt_zm_data` VALUES ('112', '2015-06-20', '0', '0', null, '812', '601', '85308', '11882', '');
INSERT INTO `xt_zm_data` VALUES ('113', '2015-06-21', '0', '0', null, '1194', '888', '123440', '15434', '');
INSERT INTO `xt_zm_data` VALUES ('114', '2015-06-22', '0', '0', null, '1594', '617', '149002', '23146', '');
INSERT INTO `xt_zm_data` VALUES ('115', '2015-06-23', '1', '0', null, '1975', '1044', '151190', '25328', '');
INSERT INTO `xt_zm_data` VALUES ('116', '2015-06-24', '0', '0', null, '1735', '1007', '158129', '24765', '');
INSERT INTO `xt_zm_data` VALUES ('117', '2015-06-25', '3233', '0', null, '1911', '922', '156135', '26036', '');
INSERT INTO `xt_zm_data` VALUES ('118', '2015-06-26', '1536', '0', null, '1549', '518', '158423', '24914', '');
INSERT INTO `xt_zm_data` VALUES ('119', '2015-06-27', '0', '0', null, '1447', '902', '135784', '20303', '');
INSERT INTO `xt_zm_data` VALUES ('12', '2015-03-12', '0', '0', null, '982', '257', '95383', '23614', '');
INSERT INTO `xt_zm_data` VALUES ('120', '2015-06-28', '0', '0', null, '1359', '533', '114826', '16712', '');
INSERT INTO `xt_zm_data` VALUES ('121', '2015-06-29', '0', '0', null, '1369', '925', '148353', '25595', '');
INSERT INTO `xt_zm_data` VALUES ('122', '2015-06-30', '0', '0', null, '1596', '1015', '142454', '24761', '');
INSERT INTO `xt_zm_data` VALUES ('123', '2015-07-01', '17', '0', '4480', '4410', '799', '135701', '24567', '');
INSERT INTO `xt_zm_data` VALUES ('124', '2015-07-02', '0', '0', '1575', '2184', '700', '131839', '22061', '');
INSERT INTO `xt_zm_data` VALUES ('125', '2015-07-03', '0', '0', '2756', '1170', '609', '129951', '23084', '');
INSERT INTO `xt_zm_data` VALUES ('126', '2015-07-04', '0', '0', '4793', '1101', '760', '119405', '21540', '');
INSERT INTO `xt_zm_data` VALUES ('127', '2015-07-05', '0', '0', '3418', '1529', '513', '104657', '16991', '');
INSERT INTO `xt_zm_data` VALUES ('128', '2015-07-06', '0', '0', '86', '1802', '686', '150063', '25042', '');
INSERT INTO `xt_zm_data` VALUES ('129', '2015-07-07', '3341', '0', '1304', '1522', '999', '146367', '23724', '');
INSERT INTO `xt_zm_data` VALUES ('13', '2015-03-13', '0', '0', null, '848', '208', '85511', '22924', '');
INSERT INTO `xt_zm_data` VALUES ('130', '2015-07-08', '0', '0', '4028', '1921', '785', '166962', '26947', '');
INSERT INTO `xt_zm_data` VALUES ('131', '2015-07-09', '0', '0', '15032', '3401', '1699', '213600', '26962', '');
INSERT INTO `xt_zm_data` VALUES ('132', '2015-07-10', '0', '0', '2353', '3506', '653', '180785', '26441', '');
INSERT INTO `xt_zm_data` VALUES ('133', '2015-07-11', '177', '0', '40', '1911', '828', '132801', '21731', '');
INSERT INTO `xt_zm_data` VALUES ('134', '2015-07-12', '0', '0', '32', '1988', '1021', '112698', '16900', '');
INSERT INTO `xt_zm_data` VALUES ('135', '2015-07-13', '120', '0', '101', '2174', '523', '152161', '27658', '');
INSERT INTO `xt_zm_data` VALUES ('136', '2015-07-14', '0', '0', '131', '3337', '910', '173892', '27953', '');
INSERT INTO `xt_zm_data` VALUES ('137', '2015-07-15', '0', '0', '4192', '5612', '6216', '208100', '26275', '');
INSERT INTO `xt_zm_data` VALUES ('138', '2015-07-16', '18', '18', '4192', '2467', '1650', '156850', '26830', '');
INSERT INTO `xt_zm_data` VALUES ('139', '2015-07-17', '0', '0', '2878', '2480', '2606', '156474', '24543', '');
INSERT INTO `xt_zm_data` VALUES ('14', '2015-03-14', '0', '0', null, '793', '88', '86728', '21573', '');
INSERT INTO `xt_zm_data` VALUES ('140', '2015-07-18', '0', '0', '656', '1869', '680', '147077', '21858', '');
INSERT INTO `xt_zm_data` VALUES ('141', '2015-07-19', '0', '0', '1085', '2428', '680', '131015', '16738', '');
INSERT INTO `xt_zm_data` VALUES ('142', '2015-07-20', '16', '0', '1947', '2551', '13471', '158688', '26324', '');
INSERT INTO `xt_zm_data` VALUES ('143', '2015-07-21', '0', '0', '811', '2990', '1008', '161350', '24290', '');
INSERT INTO `xt_zm_data` VALUES ('144', '2015-07-22', '0', '0', '0', '2504', '870', '152166', '26493', '');
INSERT INTO `xt_zm_data` VALUES ('145', '2015-07-23', '0', '0', '0', '2745', '1736', '149689', '25316', '');
INSERT INTO `xt_zm_data` VALUES ('146', '2015-07-24', '0', '0', '235', '2187', '802', '150923', '24446', '');
INSERT INTO `xt_zm_data` VALUES ('147', '2015-07-25', '0', '0', '0', '2074', '749', '139346', '22885', '');
INSERT INTO `xt_zm_data` VALUES ('148', '2015-07-26', '0', '0', '70', '1917', '800', '119360', '16654', '');
INSERT INTO `xt_zm_data` VALUES ('149', '2015-07-27', '0', '0', '800', '3977', '734', '167027', '29100', '');
INSERT INTO `xt_zm_data` VALUES ('15', '2015-03-15', '0', '0', null, '725', '92', '67527', '16057', '');
INSERT INTO `xt_zm_data` VALUES ('150', '2015-07-28', '500', '0', '0', '2463', '848', '165402', '25463', '');
INSERT INTO `xt_zm_data` VALUES ('151', '2015-07-29', '178', '0', '21', '3387', '837', '170582', '23790', '');
INSERT INTO `xt_zm_data` VALUES ('152', '2015-07-30', '150', '0', '0', '2301', '3049', '152186', '23561', '');
INSERT INTO `xt_zm_data` VALUES ('153', '2015-07-31', '145', '0', '161', '2303', '2674', '161000', '21457', '集包未到件站点电话无人接听，布谷鸟无回应');
INSERT INTO `xt_zm_data` VALUES ('154', '2015-08-01', '1465', '1472', '587', '2481', '1245', '191194', '23203', '518868无法上传');
INSERT INTO `xt_zm_data` VALUES ('155', '2015-08-02', '1472', '1472', '0', '3153', '860', '172222', '22376', '');
INSERT INTO `xt_zm_data` VALUES ('156', '2015-08-03', '1473', '0', '963', '5500', '783', '177164', '28160', '');
INSERT INTO `xt_zm_data` VALUES ('157', '2015-08-04', '4888', '4888', '68', '3721', '980', '162634', '29783', '');
INSERT INTO `xt_zm_data` VALUES ('158', '2015-08-05', '8962', '13213', '289', '3251', '759', '168344', '28142', '');
INSERT INTO `xt_zm_data` VALUES ('159', '2015-08-06', '13213', '13220', '3575', '14560', '779', '154310', '26143', '');
INSERT INTO `xt_zm_data` VALUES ('16', '2015-03-16', '0', '0', null, '984', '289', '102864', '24337', '');
INSERT INTO `xt_zm_data` VALUES ('160', '2015-08-07', '2563', '2563', '0', '21980', '974', '156832', '24355', '');
INSERT INTO `xt_zm_data` VALUES ('161', '2015-08-08', '2580', '2580', '0', '11017', '1213', '156851', '22780', '');
INSERT INTO `xt_zm_data` VALUES ('162', '2015-08-09', '2581', '2581', '178', '12858', '2294', '120177', '15690', '');
INSERT INTO `xt_zm_data` VALUES ('163', '2015-08-10', '2681', '2640', '2335', '2948', '820', '162154', '22640', '');
INSERT INTO `xt_zm_data` VALUES ('164', '2015-08-11', '2682', '2682', '670', '1847', '716', '158728', '16873', '');
INSERT INTO `xt_zm_data` VALUES ('165', '2015-08-12', '2682', '2682', '197', '1966', '562', '155675', '28759', '');
INSERT INTO `xt_zm_data` VALUES ('166', '2015-08-13', '2684', '318', '0', '2328', '790', '159059', '26361', '');
INSERT INTO `xt_zm_data` VALUES ('167', '2015-08-14', '318', '318', '1355', '2976', '753', '162856', '25578', '');
INSERT INTO `xt_zm_data` VALUES ('168', '2015-08-15', '335', '335', '34', '1955', '929', '155896', '24037', '');
INSERT INTO `xt_zm_data` VALUES ('169', '2015-08-16', '347', '347', '55', '1741', '585', '120130', '17999', '');
INSERT INTO `xt_zm_data` VALUES ('17', '2015-03-17', '0', '0', null, '1144', '71', '104416', '24799', '');
INSERT INTO `xt_zm_data` VALUES ('170', '2015-08-17', '347', '688', '617', '2713', '594', '176483', '27747', '');
INSERT INTO `xt_zm_data` VALUES ('171', '2015-08-18', '688', '688', '76', '2767', '723', '170452', '29706', '');
INSERT INTO `xt_zm_data` VALUES ('172', '2015-08-19', '811', '1311', '330', '2657', '840', '167968', '26999', '');
INSERT INTO `xt_zm_data` VALUES ('173', '2015-08-20', '1311', '1311', '107', '2640', '1431', '151695', '27209', '');
INSERT INTO `xt_zm_data` VALUES ('174', '2015-08-21', '1422', '1445', '26', '2019', '1047', '154126', '25115', '');
INSERT INTO `xt_zm_data` VALUES ('175', '2015-08-22', '1445', '1445', '0', '2300', '720', '150010', '23068', '');
INSERT INTO `xt_zm_data` VALUES ('176', '2015-08-23', '1445', '1445', '0', '1398', '856', '120095', '16932', '');
INSERT INTO `xt_zm_data` VALUES ('177', '2015-08-24', '1445', '1445', '0', '3007', '704', '170589', '28162', '');
INSERT INTO `xt_zm_data` VALUES ('178', '2015-08-25', '1425', '1425', '94', '2764', '12694', '165100', '27537', '');
INSERT INTO `xt_zm_data` VALUES ('179', '2015-08-26', '1425', '1425', '1748', '3097', '885', '173155', '30226', '');
INSERT INTO `xt_zm_data` VALUES ('18', '2015-03-18', '0', '0', null, '1886', '59', '98461', '23363', '');
INSERT INTO `xt_zm_data` VALUES ('180', '2015-08-27', '1425', '1425', '0', '4468', '2713', '165247', '28413', '');
INSERT INTO `xt_zm_data` VALUES ('181', '2015-08-28', '1425', '1425', '0', '2549', '899', '159058', '26302', '');
INSERT INTO `xt_zm_data` VALUES ('182', '2015-08-29', '1425', '441', '89', '2113', '681', '149191', '24917', '');
INSERT INTO `xt_zm_data` VALUES ('183', '2015-08-30', '441', '441', '0', '3190', '689', '123463', '18340', '');
INSERT INTO `xt_zm_data` VALUES ('184', '2015-08-31', '441', '592', '1707', '3578', '1120', '169970', '29033', '');
INSERT INTO `xt_zm_data` VALUES ('185', '2015-09-01', '592', '592', '268', '2684', '1170', '168322', '28664', '');
INSERT INTO `xt_zm_data` VALUES ('186', '2015-09-02', '592', '692', '1954', '2189', '1022', '164372', '30604', '');
INSERT INTO `xt_zm_data` VALUES ('187', '2015-09-03', '692', '692', '21', '1750', '714', '101395', '14364', '');
INSERT INTO `xt_zm_data` VALUES ('188', '2015-09-04', '692', '692', '511', '2227', '908', '166954', '19555', '');
INSERT INTO `xt_zm_data` VALUES ('189', '2015-09-05', '692', '692', '0', '3622', '747', '169822', '30956', '');
INSERT INTO `xt_zm_data` VALUES ('19', '2015-03-19', '0', '0', null, '1110', '356', '98393', '23554', '');
INSERT INTO `xt_zm_data` VALUES ('190', '2015-09-06', '692', '692', '3234', '2392', '784', '165670', '29201', '');
INSERT INTO `xt_zm_data` VALUES ('191', '2015-09-07', '792', '792', '79', '2860', '1039', '171323', '32131', '');
INSERT INTO `xt_zm_data` VALUES ('192', '2015-09-08', '792', '792', '743', '3052', '777', '171564', '34009', '');
INSERT INTO `xt_zm_data` VALUES ('193', '2015-09-09', '792', '640', '840', '3325', '1028', '179869', '36808', '');
INSERT INTO `xt_zm_data` VALUES ('194', '2015-09-10', '640', '492', '143', '2660', '5621', '169588', '41183', '');
INSERT INTO `xt_zm_data` VALUES ('195', '2015-09-11', '492', '492', '327', '3317', '1211', '177923', '37479', '');
INSERT INTO `xt_zm_data` VALUES ('196', '2015-09-12', '492', '492', '1997', '2340', '1113', '167325', '29001', '');
INSERT INTO `xt_zm_data` VALUES ('197', '2015-09-13', '492', '492', '0', '2619', '4099', '137944', '23834', '');
INSERT INTO `xt_zm_data` VALUES ('198', '2015-09-14', '492', '492', '137', '5457', '4752', '170433', '32919', '');
INSERT INTO `xt_zm_data` VALUES ('199', '2015-09-15', '505', '592', '1011', '3518', '942', '181830', '34108', '');
INSERT INTO `xt_zm_data` VALUES ('2', '2015-03-02', '0', '0', null, '977', '195', '106786', '24853', '');
INSERT INTO `xt_zm_data` VALUES ('20', '2015-03-20', '0', '0', null, '782', '308', '96370', '22549', '');
INSERT INTO `xt_zm_data` VALUES ('200', '2015-09-16', '592', '492', '0', '4013', '2110', '165903', '34475', '');
INSERT INTO `xt_zm_data` VALUES ('201', '2015-09-17', '492', '492', '0', '3371', '927', '173328', '37067', '');
INSERT INTO `xt_zm_data` VALUES ('202', '2015-09-18', '492', '492', '158', '4344', '1200', '184933', '39343', '');
INSERT INTO `xt_zm_data` VALUES ('203', '2015-09-19', '492', '492', '39', '2059', '1059', '170802', '37560', '');
INSERT INTO `xt_zm_data` VALUES ('204', '2015-09-20', '492', '492', '4741', '2629', '1130', '139822', '27303', '');
INSERT INTO `xt_zm_data` VALUES ('205', '2015-09-21', '492', '492', '0', '5116', '1021', '182811', '38265', '');
INSERT INTO `xt_zm_data` VALUES ('206', '2015-09-22', '492', '492', '37', '4746', '2611', '175435', '41229', '');
INSERT INTO `xt_zm_data` VALUES ('207', '2015-09-23', '3127', '492', '322', '3410', '1410', '186069', '38165', '');
INSERT INTO `xt_zm_data` VALUES ('208', '2015-09-24', '492', '492', '416', '3583', '2370', '167752', '33643', '');
INSERT INTO `xt_zm_data` VALUES ('209', '2015-09-25', '492', '492', '112', '1904', '1317', '162081', '33020', '');
INSERT INTO `xt_zm_data` VALUES ('21', '2015-03-21', '0', '0', null, '551', '269', '85457', '21870', '');
INSERT INTO `xt_zm_data` VALUES ('210', '2015-09-26', '492', '492', '0', '2167', '1318', '146464', '25843', '');
INSERT INTO `xt_zm_data` VALUES ('211', '2015-09-27', '492', '492', '0', '1823', '774', '52826', '12154', '');
INSERT INTO `xt_zm_data` VALUES ('212', '2015-09-28', '492', '492', '0', '4258', '1428', '178376', '29952', '');
INSERT INTO `xt_zm_data` VALUES ('213', '2015-09-29', '592', '592', '25', '3260', '578', '167249', '30073', '');
INSERT INTO `xt_zm_data` VALUES ('214', '2015-09-30', '592', '592', '0', '1568', '1028', '150398', '28567', '');
INSERT INTO `xt_zm_data` VALUES ('215', '2015-10-01', '592', '592', '0', '538', '722', '51921', '8725', '');
INSERT INTO `xt_zm_data` VALUES ('216', '2015-10-02', '592', '592', '0', '1030', '646', '110951', '13816', '');
INSERT INTO `xt_zm_data` VALUES ('217', '2015-10-03', '592', '592', '0', '1090', '494', '116268', '16236', '');
INSERT INTO `xt_zm_data` VALUES ('218', '2015-10-04', '592', '592', '286', '1551', '727', '141949', '17511', '');
INSERT INTO `xt_zm_data` VALUES ('219', '2015-10-05', '592', '592', '984', '2293', '934', '162170', '22685', '');
INSERT INTO `xt_zm_data` VALUES ('22', '2015-03-22', '162', '0', null, '715', '148', '74079', '15944', '');
INSERT INTO `xt_zm_data` VALUES ('220', '2015-10-06', '592', '592', '42', '2510', '959', '154539', '27589', '');
INSERT INTO `xt_zm_data` VALUES ('221', '2015-10-07', '592', '592', '1052', '3132', '995', '170023', '28784', '');
INSERT INTO `xt_zm_data` VALUES ('222', '2015-10-08', '592', '592', '9', '4166', '1131', '185901', '34522', '');
INSERT INTO `xt_zm_data` VALUES ('223', '2015-10-09', '592', '377', '52', '3382', '1097', '194112', '31816', '');
INSERT INTO `xt_zm_data` VALUES ('224', '2015-10-10', '377', '400', '14', '2945', '979', '185577', '28186', '');
INSERT INTO `xt_zm_data` VALUES ('225', '2015-10-11', '400', '400', '3113', '2302', '1380', '163069', '26113', '');
INSERT INTO `xt_zm_data` VALUES ('226', '2015-10-12', '400', '400', '610', '3484', '1049', '198454', '31439', '');
INSERT INTO `xt_zm_data` VALUES ('227', '2015-10-13', '400', '300', '632', '3723', '2039', '203039', '31291', '');
INSERT INTO `xt_zm_data` VALUES ('228', '2015-10-14', '300', '300', '1832', '3589', '2160', '203427', '32621', '');
INSERT INTO `xt_zm_data` VALUES ('229', '2015-10-15', '300', '610', '563', '3858', '2369', '200393', '31696', '');
INSERT INTO `xt_zm_data` VALUES ('23', '2015-03-23', '0', '0', null, '3239', '291', '99574', '27792', '');
INSERT INTO `xt_zm_data` VALUES ('230', '2015-10-16', '610', '400', '1340', '2049', '2105', '200421', '29853', '');
INSERT INTO `xt_zm_data` VALUES ('231', '2015-10-17', '400', '400', '586', '2246', '1517', '191577', '27892', '');
INSERT INTO `xt_zm_data` VALUES ('232', '2015-10-18', '400', '400', '17', '2357', '1925', '165276', '23274', '');
INSERT INTO `xt_zm_data` VALUES ('233', '2015-10-19', '400', '598', '2664', '4032', '1052', '211263', '33134', '');
INSERT INTO `xt_zm_data` VALUES ('234', '2015-10-20', '598', '802', '4970', '7824', '1002', '203577', '34132', '');
INSERT INTO `xt_zm_data` VALUES ('235', '2015-10-21', '802', '1002', '476', '2710', '1726', '222796', '32491', '');
INSERT INTO `xt_zm_data` VALUES ('236', '2015-10-22', '1002', '1002', '192', '3621', '1324', '216189', '33284', '');
INSERT INTO `xt_zm_data` VALUES ('237', '2015-10-23', '1002', '500', '1117', '11836', '1484', '223952', '30855', '');
INSERT INTO `xt_zm_data` VALUES ('238', '2015-10-24', '500', '400', '81', '2523', '1817', '219045', '31692', '');
INSERT INTO `xt_zm_data` VALUES ('239', '2015-10-25', '400', '400', '677', '2872', '1931', '201066', '20743', '');
INSERT INTO `xt_zm_data` VALUES ('24', '2015-03-24', '0', '0', null, '1169', '272', '100535', '25726', '');
INSERT INTO `xt_zm_data` VALUES ('240', '2015-10-26', '400', '400', '175', '6162', '3493', '253916', '30170', '');
INSERT INTO `xt_zm_data` VALUES ('241', '2015-10-27', '400', '500', '3036', '6435', '1346', '255897', '32237', '');
INSERT INTO `xt_zm_data` VALUES ('242', '2015-10-28', '504', '500', '1246', '6035', '1347', '247470', '30540', '');
INSERT INTO `xt_zm_data` VALUES ('243', '2015-10-29', '500', '500', '279', '3959', '1215', '231966', '28153', '');
INSERT INTO `xt_zm_data` VALUES ('244', '2015-10-30', '500', '500', '140', '3961', '1416', '216990', '29287', '');
INSERT INTO `xt_zm_data` VALUES ('245', '2015-10-31', '500', '500', '404', '2172', '1522', '206863', '27680', '');
INSERT INTO `xt_zm_data` VALUES ('246', '2015-11-01', '500', '600', '6', '2329', '3671', '201712', '25160', '');
INSERT INTO `xt_zm_data` VALUES ('247', '2015-11-02', '600', '700', '998', '3454', '1205', '232894', '32731', '');
INSERT INTO `xt_zm_data` VALUES ('248', '2015-11-03', '700', '600', '881', '4503', '1199', '214637', '34152', '');
INSERT INTO `xt_zm_data` VALUES ('249', '2015-11-04', '600', '600', '433', '2143', '1530', '233195', '33052', '');
INSERT INTO `xt_zm_data` VALUES ('25', '2015-03-25', '0', '0', null, '1416', '196', '94573', '25051', '');
INSERT INTO `xt_zm_data` VALUES ('250', '2015-11-05', '600', '600', '420', '2790', '2814', '221767', '34773', '');
INSERT INTO `xt_zm_data` VALUES ('251', '2015-11-06', '5230', '0', '735', '2749', '1221', '236340', '33061', '');
INSERT INTO `xt_zm_data` VALUES ('252', '2015-11-07', '0', '200', '2366', '2160', '1079', '203560', '28968', '');
INSERT INTO `xt_zm_data` VALUES ('253', '2015-11-08', '200', '0', '110', '2155', '5662', '179860', '23725', '');
INSERT INTO `xt_zm_data` VALUES ('254', '2015-11-09', '200', '0', '210', '4240', '1361', '235626', '35419', '');
INSERT INTO `xt_zm_data` VALUES ('255', '2015-11-10', '100', '0', '847', '4317', '1243', '246074', '23732', '');
INSERT INTO `xt_zm_data` VALUES ('256', '2015-11-11', '341', '0', '947', '36076', '3821', '453804', '61782', '');
INSERT INTO `xt_zm_data` VALUES ('257', '2015-11-12', '200', '0', '1468', '40941', '8671', '469436', '68390', '');
INSERT INTO `xt_zm_data` VALUES ('258', '2015-11-13', '100', '0', '275', '10755', '2379', '408917', '52987', '');
INSERT INTO `xt_zm_data` VALUES ('259', '2015-11-14', '341', '0', '514', '8524', '4127', '355124', '51671', '');
INSERT INTO `xt_zm_data` VALUES ('26', '2015-03-26', '0', '1070', null, '2078', '170', '92979', '24034', '');
INSERT INTO `xt_zm_data` VALUES ('260', '2015-11-15', '300', '0', '441', '3813', '3308', '243879', '32956', '');
INSERT INTO `xt_zm_data` VALUES ('261', '2015-11-16', '300', '0', '195', '6763', '3468', '268053', '41185', '');
INSERT INTO `xt_zm_data` VALUES ('262', '2015-11-17', '0', '0', '1254', '5316', '5567', '253086', '39201', '');
INSERT INTO `xt_zm_data` VALUES ('263', '2015-11-18', '100', '0', '1518', '7372', '3619', '243721', '37380', '');
INSERT INTO `xt_zm_data` VALUES ('264', '2015-11-19', '0', '0', '979', '9130', '2163', '258180', '36591', '');
INSERT INTO `xt_zm_data` VALUES ('265', '2015-11-20', '0', '0', '2385', '3098', '2368', '241917', '36011', '');
INSERT INTO `xt_zm_data` VALUES ('266', '2015-11-21', '0', '0', '604', '2641', '2069', '223746', '30156', '');
INSERT INTO `xt_zm_data` VALUES ('267', '2015-11-22', '0', '0', '190', '2935', '1811', '188532', '26918', '');
INSERT INTO `xt_zm_data` VALUES ('268', '2015-11-23', '0', '0', '965', '6613', '1417', '229511', '33847', '');
INSERT INTO `xt_zm_data` VALUES ('269', '2015-11-24', '0', '0', '19', '4968', '5186', '224286', '34125', '');
INSERT INTO `xt_zm_data` VALUES ('27', '2015-03-27', '0', '0', null, '756', '357', '94894', '23459', '');
INSERT INTO `xt_zm_data` VALUES ('270', '2015-11-25', '0', '0', '0', '2601', '1725', '222377', '31803', '');
INSERT INTO `xt_zm_data` VALUES ('271', '2015-11-26', '0', '0', '0', '4391', '1249', '215754', '31354', '');
INSERT INTO `xt_zm_data` VALUES ('272', '2015-11-27', '0', '0', '19', '2836', '1898', '199005', '29602', '');
INSERT INTO `xt_zm_data` VALUES ('273', '2015-11-28', '0', '0', '1503', '2129', '1440', '185942', '25607', '');
INSERT INTO `xt_zm_data` VALUES ('274', '2015-11-29', '0', '0', '0', '2405', '1207', '164548', '21129', '');
INSERT INTO `xt_zm_data` VALUES ('275', '2015-11-30', '0', '0', '447', '4365', '1105', '221546', '31735', '');
INSERT INTO `xt_zm_data` VALUES ('276', '2015-12-01', '1782', '1782', '125', '4646', '1539', '234062', '31071', '');
INSERT INTO `xt_zm_data` VALUES ('277', '2015-12-02', '1782', '0', '303', '3481', '1355', '221393', '31591', '');
INSERT INTO `xt_zm_data` VALUES ('278', '2015-12-03', '0', '0', '16', '2698', '2600', '213333', '35927', '');
INSERT INTO `xt_zm_data` VALUES ('279', '2015-12-04', '0', '0', '416', '2165', '1247', '210271', '33710', '');
INSERT INTO `xt_zm_data` VALUES ('28', '2015-03-28', '0', '0', null, '628', '380', '87337', '21411', '');
INSERT INTO `xt_zm_data` VALUES ('280', '2015-12-05', '0', '0', '85', '3047', '2211', '196046', '27499', '');
INSERT INTO `xt_zm_data` VALUES ('281', '2015-12-06', '0', '0', '0', '3268', '1705', '175484', '22416', '');
INSERT INTO `xt_zm_data` VALUES ('282', '2015-12-07', '0', '0', '233', '5618', '1032', '233995', '32387', '');
INSERT INTO `xt_zm_data` VALUES ('283', '2015-12-08', '0', '343', '14', '4067', '1260', '228967', '32706', '');
INSERT INTO `xt_zm_data` VALUES ('284', '2015-12-09', '0', '0', '41', '4298', '4618', '203270', '26944', '');
INSERT INTO `xt_zm_data` VALUES ('285', '2015-12-10', '9', '0', '0', '4898', '7776', '209547', '32146', '');
INSERT INTO `xt_zm_data` VALUES ('286', '2015-12-11', '0', '0', '77', '5796', '9536', '209846', '31778', '');
INSERT INTO `xt_zm_data` VALUES ('287', '2015-12-12', '0', '0', '693', '10704', '3346', '334703', '50454', '');
INSERT INTO `xt_zm_data` VALUES ('288', '2015-12-13', '0', '0', '64', '6725', '6991', '298417', '42989', '');
INSERT INTO `xt_zm_data` VALUES ('289', '2015-12-14', '0', '0', '0', '5326', '3474', '273072', '37259', '');
INSERT INTO `xt_zm_data` VALUES ('29', '2015-03-29', '0', '0', null, '529', '257', '75061', '16207', '');
INSERT INTO `xt_zm_data` VALUES ('290', '2015-12-15', '18', '0', '105', '5051', '4344', '240748', '43909', '');
INSERT INTO `xt_zm_data` VALUES ('291', '2015-12-16', '0', '0', '1331', '7831', '2597', '230264', '38786', '');
INSERT INTO `xt_zm_data` VALUES ('292', '2015-12-17', '0', '0', '504', '6953', '7187', '224297', '41867', '');
INSERT INTO `xt_zm_data` VALUES ('293', '2015-12-18', '0', '0', '1244', '11597', '2816', '234425', '35817', '');
INSERT INTO `xt_zm_data` VALUES ('294', '2015-12-19', '0', '0', '127', '5254', '1857', '208072', '32091', '');
INSERT INTO `xt_zm_data` VALUES ('295', '2015-12-20', '0', '0', '510', '3905', '1597', '172466', '26823', '');
INSERT INTO `xt_zm_data` VALUES ('296', '2015-12-21', '0', '0', '458', '5175', '2495', '239719', '36973', '');
INSERT INTO `xt_zm_data` VALUES ('297', '2015-12-22', '0', '0', '182', '6269', '2698', '231957', '36086', '');
INSERT INTO `xt_zm_data` VALUES ('298', '2015-12-23', '0', '0', '145', '5270', '2913', '244415', '36643', '');
INSERT INTO `xt_zm_data` VALUES ('299', '2015-12-24', '0', '0', '484', '4987', '2728', '212107', '33921', '');
INSERT INTO `xt_zm_data` VALUES ('3', '2015-03-03', '0', '0', null, '855', '247', '96215', '22976', '');
INSERT INTO `xt_zm_data` VALUES ('30', '2015-03-30', '0', '0', null, '987', '399', '109661', '26486', '');
INSERT INTO `xt_zm_data` VALUES ('300', '2015-12-25', '0', '0', '198', '5317', '2088', '202240', '32597', '');
INSERT INTO `xt_zm_data` VALUES ('301', '2015-12-26', '0', '0', '12', '3648', '1809', '200900', '27452', '');
INSERT INTO `xt_zm_data` VALUES ('302', '2015-12-27', '0', '0', '0', '3309', '1869', '165726', '23972', '');
INSERT INTO `xt_zm_data` VALUES ('303', '2015-12-28', '0', '0', '306', '6263', '2192', '215061', '36646', '');
INSERT INTO `xt_zm_data` VALUES ('304', '2015-12-29', '0', '0', '3', '4586', '1721', '210307', '35580', '');
INSERT INTO `xt_zm_data` VALUES ('305', '2015-12-30', '0', '0', '340', '3651', '1873', '193669', '33944', '');
INSERT INTO `xt_zm_data` VALUES ('306', '2015-12-31', '0', '0', '393', '3615', '4022', '190748', '30182', '');
INSERT INTO `xt_zm_data` VALUES ('307', '2016-01-01', '0', '0', '1', '2168', '1031', '86290', '12732', '');
INSERT INTO `xt_zm_data` VALUES ('308', '2016-01-02', '0', '0', '309', '4029', '4409', '179318', '20049', '');
INSERT INTO `xt_zm_data` VALUES ('309', '2016-01-03', '0', '0', '167', '3758', '2180', '181369', '29734', '');
INSERT INTO `xt_zm_data` VALUES ('31', '2015-03-31', '0', '0', null, '1110', '487', '106009', '25026', '');
INSERT INTO `xt_zm_data` VALUES ('310', '2016-01-04', '1468', '0', '1067', '4819', '2658', '214540', '36681', '');
INSERT INTO `xt_zm_data` VALUES ('311', '2016-01-05', '205', '0', '786', '5290', '1370', '226144', '35334', '');
INSERT INTO `xt_zm_data` VALUES ('312', '2016-01-06', '187', '0', '341', '5011', '6394', '212723', '41805', '');
INSERT INTO `xt_zm_data` VALUES ('313', '2016-01-07', '172', '0', '1031', '5298', '2193', '215011', '40662', '');
INSERT INTO `xt_zm_data` VALUES ('314', '2016-01-08', '165', '0', '771', '4182', '2150', '233379', '40917', '');
INSERT INTO `xt_zm_data` VALUES ('315', '2016-01-09', '0', '0', '160', '4225', '1863', '209677', '33230', '');
INSERT INTO `xt_zm_data` VALUES ('316', '2016-01-10', '0', '0', '43', '3520', '1579', '179328', '30237', '');
INSERT INTO `xt_zm_data` VALUES ('317', '2016-01-11', '0', '0', '31', '4261', '1807', '224926', '35928', '');
INSERT INTO `xt_zm_data` VALUES ('318', '2016-01-12', '0', '0', '148', '4462', '1605', '226475', '39464', '');
INSERT INTO `xt_zm_data` VALUES ('319', '2016-01-13', '0', '0', '155', '4858', '5975', '209823', '38339', '');
INSERT INTO `xt_zm_data` VALUES ('32', '2015-04-01', '0', '0', null, '1092', '366', '101018', '24782', '');
INSERT INTO `xt_zm_data` VALUES ('320', '2016-01-14', '0', '0', '2610', '4766', '1601', '214051', '34792', '');
INSERT INTO `xt_zm_data` VALUES ('321', '2016-01-15', '0', '0', '5', '5956', '1865', '208770', '34032', '');
INSERT INTO `xt_zm_data` VALUES ('322', '2016-01-16', '0', '0', '43', '4232', '9079', '190540', '33664', '');
INSERT INTO `xt_zm_data` VALUES ('323', '2016-01-17', '0', '0', '482', '8498', '1770', '197167', '37121', '');
INSERT INTO `xt_zm_data` VALUES ('324', '2016-01-18', '0', '0', '92', '6190', '2748', '239446', '43599', '');
INSERT INTO `xt_zm_data` VALUES ('325', '2016-01-19', '0', '0', '60', '14899', '3837', '251657', '49071', '');
INSERT INTO `xt_zm_data` VALUES ('326', '2016-01-20', '0', '0', '471', '8283', '2786', '256080', '51157', '');
INSERT INTO `xt_zm_data` VALUES ('327', '2016-01-21', '0', '0', '323', '6496', '3212', '231969', '50971', '');
INSERT INTO `xt_zm_data` VALUES ('328', '2016-01-22', '0', '0', '200', '5028', '2273', '207770', '44106', '');
INSERT INTO `xt_zm_data` VALUES ('329', '2016-01-23', '0', '0', '0', '9019', '8071', '131134', '37913', '');
INSERT INTO `xt_zm_data` VALUES ('33', '2015-04-02', '0', '0', null, '2343', '357', '24821', '103563', '');
INSERT INTO `xt_zm_data` VALUES ('330', '2016-01-24', '0', '0', '11', '7118', '10586', '165036', '47323', '');
INSERT INTO `xt_zm_data` VALUES ('331', '2016-01-25', '0', '0', '991', '30564', '7082', '156309', '36487', '');
INSERT INTO `xt_zm_data` VALUES ('332', '2016-01-26', '0', '0', '16', '30564', '7082', '156309', '36523', '');
INSERT INTO `xt_zm_data` VALUES ('333', '2016-01-27', '0', '0', '0', '17524', '14515', '115740', '32731', '');
INSERT INTO `xt_zm_data` VALUES ('334', '2016-01-28', '0', '0', '0', '11721', '1916', '90828', '23521', '');
INSERT INTO `xt_zm_data` VALUES ('335', '2016-01-29', '0', '0', '1', '24990', '18208', '1005', '15426', '');
INSERT INTO `xt_zm_data` VALUES ('336', '2016-01-30', '0', '0', '0', '5493', '19401', '411', '9778', '');
INSERT INTO `xt_zm_data` VALUES ('337', '2016-01-31', '0', '0', '0', '7965', '821', '1456', '3381', '');
INSERT INTO `xt_zm_data` VALUES ('338', '2016-02-01', '0', '0', '0', '326', '281', '7088', '1340', '');
INSERT INTO `xt_zm_data` VALUES ('339', '2016-02-02', '0', '0', '0', '166', '4', '5184', '370', '');
INSERT INTO `xt_zm_data` VALUES ('34', '2015-04-03', '0', '0', null, '1395', '196', '107598', '24495', '');
INSERT INTO `xt_zm_data` VALUES ('340', '2016-02-03', '0', '0', '0', '0', '0', '0', '44', '');
INSERT INTO `xt_zm_data` VALUES ('341', '2016-02-04', '0', '0', '0', '0', '0', '0', '44', '');
INSERT INTO `xt_zm_data` VALUES ('342', '2016-02-05', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('343', '2016-02-06', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('344', '2016-02-07', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('345', '2016-02-08', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('346', '2016-02-09', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('347', '2016-02-10', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('348', '2016-02-11', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('349', '2016-02-12', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('35', '2015-04-04', '0', '0', null, '553', '143', '111865', '18585', '');
INSERT INTO `xt_zm_data` VALUES ('350', '2016-02-13', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `xt_zm_data` VALUES ('351', '2016-02-14', '0', '0', '0', '6093', '2211', '1624', '0', '');
INSERT INTO `xt_zm_data` VALUES ('352', '2016-02-15', '0', '0', '0', '35950', '13565', '182619', '22967', '');
INSERT INTO `xt_zm_data` VALUES ('353', '2016-02-16', '0', '0', '0', '23524', '37218', '214295', '35729', '');
INSERT INTO `xt_zm_data` VALUES ('354', '2016-02-17', '0', '0', '0', '19601', '20778', '238440', '40479', '');
INSERT INTO `xt_zm_data` VALUES ('355', '2016-02-18', '0', '0', '0', '10051', '20304', '223475', '45817', '');
INSERT INTO `xt_zm_data` VALUES ('356', '2016-02-19', '0', '0', '0', '9606', '7640', '236372', '38384', '');
INSERT INTO `xt_zm_data` VALUES ('357', '2016-02-20', '0', '0', '4', '4428', '3385', '191377', '30219', '');
INSERT INTO `xt_zm_data` VALUES ('358', '2016-02-21', '0', '0', '2', '5041', '4303', '200393', '35384', '');
INSERT INTO `xt_zm_data` VALUES ('359', '2016-02-22', '0', '0', '0', '12448', '4863', '207709', '39626', '');
INSERT INTO `xt_zm_data` VALUES ('36', '2015-04-05', '0', '0', null, '423', '197', '102750', '10706', '');
INSERT INTO `xt_zm_data` VALUES ('360', '2016-02-23', '0', '0', '0', '8893', '7427', '230127', '39893', '');
INSERT INTO `xt_zm_data` VALUES ('361', '2016-02-24', '0', '0', '0', '8893', '7427', '230127', '39922', '');
INSERT INTO `xt_zm_data` VALUES ('362', '2016-02-25', '0', '0', '0', '6340', '4023', '226242', '41420', '');
INSERT INTO `xt_zm_data` VALUES ('363', '2016-02-26', '0', '0', '7', '6873', '2874', '219962', '35603', '');
INSERT INTO `xt_zm_data` VALUES ('364', '2016-02-27', '0', '0', '0', '6081', '3086', '204695', '35562', '');
INSERT INTO `xt_zm_data` VALUES ('365', '2016-02-28', '0', '0', '0', '4122', '2850', '192252', '32041', '');
INSERT INTO `xt_zm_data` VALUES ('366', '2016-02-29', '0', '0', '0', '6604', '2891', '245520', '39199', '');
INSERT INTO `xt_zm_data` VALUES ('367', '2016-03-01', '0', '0', '1', '7468', '3726', '310183', '45285', '');
INSERT INTO `xt_zm_data` VALUES ('368', '2016-03-02', '0', '0', '0', '6156', '6962', '278617', '41872', '');
INSERT INTO `xt_zm_data` VALUES ('369', '2016-03-03', '0', '0', '1', '5883', '4331', '267539', '39414', '');
INSERT INTO `xt_zm_data` VALUES ('37', '2015-04-06', '0', '0', null, '1673', '467', '87421', '18549', '');
INSERT INTO `xt_zm_data` VALUES ('370', '2016-03-04', '0', '0', '0', '5164', '2435', '207953', '33453', '');
INSERT INTO `xt_zm_data` VALUES ('371', '2016-03-05', '0', '0', '0', '5770', '2335', '197585', '28533', '');
INSERT INTO `xt_zm_data` VALUES ('372', '2016-03-06', '0', '0', '0', '7241', '7355', '238232', '41091', '');
INSERT INTO `xt_zm_data` VALUES ('373', '2016-03-07', '0', '0', '0', '7241', '7355', '238232', '41092', '');
INSERT INTO `xt_zm_data` VALUES ('374', '2016-03-08', '0', '0', '0', '5715', '7081', '231255', '41933', '');
INSERT INTO `xt_zm_data` VALUES ('375', '2016-03-09', '0', '0', '1', '5740', '4869', '238078', '40488', '');
INSERT INTO `xt_zm_data` VALUES ('376', '2016-03-10', '0', '0', '0', '4502', '4321', '226630', '43025', '');
INSERT INTO `xt_zm_data` VALUES ('377', '2016-03-11', '0', '0', '0', '6706', '4076', '228238', '45198', '');
INSERT INTO `xt_zm_data` VALUES ('378', '2016-03-12', '0', '0', '12', '4444', '3321', '221385', '35985', '');
INSERT INTO `xt_zm_data` VALUES ('379', '2016-03-13', '0', '0', '0', '3966', '3965', '189905', '30840', '');
INSERT INTO `xt_zm_data` VALUES ('38', '2015-04-07', '0', '0', null, '1154', '1022', '118760', '23862', '');
INSERT INTO `xt_zm_data` VALUES ('380', '2016-03-14', '372', '0', '3', '5211', '6184', '229898', '54643', '');
INSERT INTO `xt_zm_data` VALUES ('381', '2016-03-15', '0', '0', '0', '5383', '9805', '209617', '39750', '');
INSERT INTO `xt_zm_data` VALUES ('382', '2016-03-16', '0', '0', '0', '6019', '5393', '218742', '38754', '');
INSERT INTO `xt_zm_data` VALUES ('383', '2016-03-17', '0', '0', '0', '4160', '2655', '210528', '39260', '');
INSERT INTO `xt_zm_data` VALUES ('384', '2016-03-18', '0', '0', '0', '3855', '2149', '209653', '37904', '');
INSERT INTO `xt_zm_data` VALUES ('385', '2016-03-19', '0', '0', '0', '4403', '1791', '195295', '31763', '');
INSERT INTO `xt_zm_data` VALUES ('386', '2016-03-20', '0', '0', '0', '3493', '2565', '180060', '24628', '');
INSERT INTO `xt_zm_data` VALUES ('387', '2016-03-21', '0', '36', '0', '5309', '2879', '222719', '37967', '');
INSERT INTO `xt_zm_data` VALUES ('388', '2016-03-22', '0', '0', '1', '9043', '2750', '222807', '38246', '');
INSERT INTO `xt_zm_data` VALUES ('389', '2016-03-23', '0', '0', '0', '5407', '3884', '220583', '38498', '');
INSERT INTO `xt_zm_data` VALUES ('39', '2015-04-08', '0', '0', null, '1191', '324', '118190', '25083', '');
INSERT INTO `xt_zm_data` VALUES ('390', '2016-03-24', '250', '0', '0', '4753', '2200', '218522', '45498', '');
INSERT INTO `xt_zm_data` VALUES ('391', '2016-03-25', '0', '0', '4', '4752', '2013', '223125', '47933', '');
INSERT INTO `xt_zm_data` VALUES ('392', '2016-03-26', '0', '0', '0', '4414', '3268', '200940', '32941', '');
INSERT INTO `xt_zm_data` VALUES ('393', '2016-03-27', '0', '0', '1', '3421', '2329', '284002', '33184', '');
INSERT INTO `xt_zm_data` VALUES ('394', '2016-03-28', '2', '0', '0', '4812', '7151', '241002', '47219', '');
INSERT INTO `xt_zm_data` VALUES ('395', '2016-03-29', '0', '0', '0', '4567', '2108', '227658', '45403', '');
INSERT INTO `xt_zm_data` VALUES ('396', '2016-03-30', '0', '0', '0', '6989', '2148', '211199', '44640', '');
INSERT INTO `xt_zm_data` VALUES ('397', '2016-03-31', '807', '0', '0', '5414', '2097', '215264', '46420', '');
INSERT INTO `xt_zm_data` VALUES ('398', '2016-04-01', '0', '0', '0', '3657', '1685', '191047', '36060', '');
INSERT INTO `xt_zm_data` VALUES ('399', '2016-04-02', '0', '0', '0', '5369', '1800', '180666', '32934', '');
INSERT INTO `xt_zm_data` VALUES ('4', '2015-03-04', '0', '0', null, '835', '266', '103414', '22756', '');
INSERT INTO `xt_zm_data` VALUES ('40', '2015-04-09', '0', '0', null, '1105', '4000', '111741', '25766', '');
INSERT INTO `xt_zm_data` VALUES ('400', '2016-04-03', '0', '0', '0', '3071', '2425', '169618', '23368', '');
INSERT INTO `xt_zm_data` VALUES ('401', '2016-04-04', '0', '0', '0', '3147', '1322', '133499', '27487', '');
INSERT INTO `xt_zm_data` VALUES ('402', '2016-04-05', '17', '0', '0', '13107', '2704', '255823', '44241', '');
INSERT INTO `xt_zm_data` VALUES ('403', '2016-04-06', '0', '0', '0', '19067', '2108', '261862', '54180', '');
INSERT INTO `xt_zm_data` VALUES ('404', '2016-04-07', '15', '0', '0', '5279', '2772', '235113', '45198', '');
INSERT INTO `xt_zm_data` VALUES ('405', '2016-04-08', '0', '0', '0', '7267', '4365', '222651', '37213', '');
INSERT INTO `xt_zm_data` VALUES ('406', '2016-04-09', '0', '0', '0', '35340', '2523', '179769', '36512', '');
INSERT INTO `xt_zm_data` VALUES ('407', '2016-04-10', '0', '0', '0', '4506', '2350', '200319', '32145', '');
INSERT INTO `xt_zm_data` VALUES ('408', '2016-04-11', '0', '0', '0', '341', '105', '86562', '44414', '');
INSERT INTO `xt_zm_data` VALUES ('409', '2016-04-12', '0', '0', '20', '5963', '2802', '238387', '42860', '');
INSERT INTO `xt_zm_data` VALUES ('41', '2015-04-10', '0', '0', null, '962', '794', '106206', '24302', '');
INSERT INTO `xt_zm_data` VALUES ('410', '2016-04-13', '0', '0', '1', '4878', '2938', '235802', '38957', '');
INSERT INTO `xt_zm_data` VALUES ('411', '2016-04-14', '0', '0', '1', '4629', '1984', '221300', '41133', '');
INSERT INTO `xt_zm_data` VALUES ('412', '2016-04-15', '1011', '0', '0', '5146', '2077', '222220', '37190', '');
INSERT INTO `xt_zm_data` VALUES ('413', '2016-04-16', '900', '0', '0', '4325', '2234', '210283', '36747', '');
INSERT INTO `xt_zm_data` VALUES ('414', '2016-04-17', '0', '0', '0', '3795', '2891', '188888', '28237', '');
INSERT INTO `xt_zm_data` VALUES ('415', '2016-04-18', '595', '0', '0', '5055', '1889', '254522', '41312', '');
INSERT INTO `xt_zm_data` VALUES ('416', '2016-04-19', '203', '0', '0', '4708', '3346', '249163', '42614', '');
INSERT INTO `xt_zm_data` VALUES ('417', '2016-04-20', '46', '0', '0', '6461', '2584', '260073', '43701', '');
INSERT INTO `xt_zm_data` VALUES ('418', '2016-04-21', '0', '0', '0', '4614', '2471', '246233', '41863', '');
INSERT INTO `xt_zm_data` VALUES ('419', '2016-04-22', '394', '0', '1', '5231', '2524', '234869', '39064', '');
INSERT INTO `xt_zm_data` VALUES ('42', '2015-04-11', '0', '0', null, '831', '193', '103635', '20661', '');
INSERT INTO `xt_zm_data` VALUES ('420', '2016-04-23', '0', '0', '0', '4643', '2372', '220462', '39885', '');
INSERT INTO `xt_zm_data` VALUES ('421', '2016-04-24', '0', '0', '0', '3550', '2505', '198931', '28346', '');
INSERT INTO `xt_zm_data` VALUES ('422', '2016-04-25', '0', '0', '0', '5048', '2137', '263911', '41033', '');
INSERT INTO `xt_zm_data` VALUES ('423', '2016-04-26', '0', '0', '0', '5697', '2502', '259720', '42052', '');
INSERT INTO `xt_zm_data` VALUES ('424', '2016-04-27', '0', '0', '0', '6972', '2221', '275584', '42311', '');
INSERT INTO `xt_zm_data` VALUES ('425', '2016-04-28', '0', '0', '3', '4701', '4471', '235296', '41461', '');
INSERT INTO `xt_zm_data` VALUES ('426', '2016-04-29', '0', '0', '0', '4813', '2122', '240260', '38212', '');
INSERT INTO `xt_zm_data` VALUES ('427', '2016-04-30', '0', '0', '0', '5273', '3337', '213197', '36983', '');
INSERT INTO `xt_zm_data` VALUES ('428', '2016-05-01', '0', '0', '0', '2599', '1532', '117409', '16728', '');
INSERT INTO `xt_zm_data` VALUES ('429', '2016-05-02', '0', '0', '0', '4331', '1589', '219231', '27604', '');
INSERT INTO `xt_zm_data` VALUES ('43', '2015-04-12', '0', '0', null, '738', '587', '88694', '17464', '');
INSERT INTO `xt_zm_data` VALUES ('430', '2016-05-03', '0', '0', '0', '6779', '2091', '287108', '45913', '');
INSERT INTO `xt_zm_data` VALUES ('431', '2016-05-04', '0', '0', '2', '5958', '3578', '292590', '45036', '');
INSERT INTO `xt_zm_data` VALUES ('432', '2016-05-05', '0', '0', '0', '6416', '2297', '288724', '46281', '');
INSERT INTO `xt_zm_data` VALUES ('433', '2016-05-06', '603', '0', '0', '6054', '3379', '272815', '43930', '');
INSERT INTO `xt_zm_data` VALUES ('434', '2016-05-07', '0', '0', '0', '5793', '2589', '253587', '41184', '');
INSERT INTO `xt_zm_data` VALUES ('435', '2016-05-08', '0', '0', '1', '5377', '2238', '232919', '37847', '');
INSERT INTO `xt_zm_data` VALUES ('436', '2016-05-09', '1', '0', '7', '5679', '7784', '273030', '43740', '');
INSERT INTO `xt_zm_data` VALUES ('437', '2016-05-10', '0', '0', '6', '5413', '2727', '270203', '42099', '');
INSERT INTO `xt_zm_data` VALUES ('438', '2016-05-11', '0', '0', '0', '5660', '2275', '280199', '42324', '');
INSERT INTO `xt_zm_data` VALUES ('439', '2016-05-12', '0', '0', '0', '6332', '3564', '282569', '44440', '');
INSERT INTO `xt_zm_data` VALUES ('44', '2015-04-13', '0', '0', null, '1438', '412', '125392', '25730', '');
INSERT INTO `xt_zm_data` VALUES ('440', '2016-05-13', '0', '0', '0', '5032', '2703', '264145', '41664', '');
INSERT INTO `xt_zm_data` VALUES ('441', '2016-05-14', '0', '0', '0', '4801', '585', '262343', '39447', '');
INSERT INTO `xt_zm_data` VALUES ('442', '2016-05-15', '0', '0', '0', '4185', '1954', '229375', '29390', '');
INSERT INTO `xt_zm_data` VALUES ('443', '2016-05-16', '0', '0', '38', '7454', '3158', '299200', '43016', '');
INSERT INTO `xt_zm_data` VALUES ('444', '2016-05-17', '0', '0', '149', '5241', '4195', '312683', '49634', '');
INSERT INTO `xt_zm_data` VALUES ('445', '2016-05-18', '0', '0', '9', '6089', '2989', '312495', '42421', '');
INSERT INTO `xt_zm_data` VALUES ('446', '2016-05-19', '0', '0', '0', '6924', '3214', '308527', '48879', '');
INSERT INTO `xt_zm_data` VALUES ('447', '2016-05-20', '0', '0', '0', '5342', '1750', '257056', '39610', '');
INSERT INTO `xt_zm_data` VALUES ('448', '2016-05-21', '0', '0', '0', '4915', '3442', '255643', '38266', '');
INSERT INTO `xt_zm_data` VALUES ('449', '2016-05-22', '0', '0', '0', '4090', '1749', '243717', '32206', '');
INSERT INTO `xt_zm_data` VALUES ('45', '2015-04-14', '0', '0', null, '1145', '332', '131515', '26669', '');
INSERT INTO `xt_zm_data` VALUES ('450', '2016-05-23', '0', '0', '2', '7154', '2697', '325586', '44574', '');
INSERT INTO `xt_zm_data` VALUES ('451', '2016-05-24', '0', '0', '0', '5744', '9617', '311151', '50983', '');
INSERT INTO `xt_zm_data` VALUES ('452', '2016-05-25', '0', '0', '0', '5434', '3344', '293945', '51058', '');
INSERT INTO `xt_zm_data` VALUES ('453', '2016-05-26', '0', '0', '0', '6233', '2434', '278420', '49270', '');
INSERT INTO `xt_zm_data` VALUES ('454', '2016-05-27', '0', '0', '0', '6599', '2924', '289405', '42231', '');
INSERT INTO `xt_zm_data` VALUES ('455', '2016-05-28', '0', '0', '0', '4541', '1728', '268101', '39258', '');
INSERT INTO `xt_zm_data` VALUES ('456', '2016-05-29', '0', '0', '0', '3849', '3016', '233963', '33273', '');
INSERT INTO `xt_zm_data` VALUES ('457', '2016-05-30', '0', '0', '0', '5989', '2612', '299547', '43868', '');
INSERT INTO `xt_zm_data` VALUES ('458', '2016-05-31', '0', '0', '0', '5940', '2540', '292546', '43903', '');
INSERT INTO `xt_zm_data` VALUES ('459', '2016-06-01', '815', '0', '4', '5119', '1926', '272138', '46686', '');
INSERT INTO `xt_zm_data` VALUES ('46', '2015-04-15', '0', '0', null, '1415', '713', '125817', '26092', '');
INSERT INTO `xt_zm_data` VALUES ('460', '2016-06-02', '0', '0', '0', '5754', '4403', '280850', '43709', '');
INSERT INTO `xt_zm_data` VALUES ('461', '2016-06-03', '0', '0', '4', '6160', '7899', '297410', '46286', '');
INSERT INTO `xt_zm_data` VALUES ('462', '2016-06-04', '0', '0', '0', '4509', '9229', '251113', '35153', '');
INSERT INTO `xt_zm_data` VALUES ('463', '2016-06-05', '0', '0', '0', '4873', '1616', '241520', '38770', '');
INSERT INTO `xt_zm_data` VALUES ('464', '2016-06-06', '0', '0', '0', '5411', '7355', '310886', '50304', '');
INSERT INTO `xt_zm_data` VALUES ('465', '2016-06-07', '0', '0', '0', '5068', '3960', '285942', '53290', '');
INSERT INTO `xt_zm_data` VALUES ('466', '2016-06-08', '0', '0', '0', '5029', '3571', '281770', '50026', '');
INSERT INTO `xt_zm_data` VALUES ('467', '2016-06-09', '0', '0', '0', '3409', '2668', '171807', '35219', '');
INSERT INTO `xt_zm_data` VALUES ('468', '2016-06-10', '0', '0', '0', '5479', '2396', '285490', '40566', '');
INSERT INTO `xt_zm_data` VALUES ('469', '2016-06-11', '0', '0', '0', '4994', '1935', '263203', '35754', '');
INSERT INTO `xt_zm_data` VALUES ('47', '2015-04-16', '0', '0', null, '1413', '1014', '124367', '26908', '');
INSERT INTO `xt_zm_data` VALUES ('470', '2016-06-12', '0', '0', '0', '6642', '2036', '292241', '35299', '');
INSERT INTO `xt_zm_data` VALUES ('471', '2016-06-13', '0', '0', '0', '5100', '6201', '305287', '49306', '');
INSERT INTO `xt_zm_data` VALUES ('472', '2016-06-14', '0', '0', '0', '6294', '3702', '313153', '48761', '');
INSERT INTO `xt_zm_data` VALUES ('473', '2016-06-15', '0', '0', '0', '6356', '1977', '294381', '43768', '');
INSERT INTO `xt_zm_data` VALUES ('474', '2016-06-16', '0', '0', '0', '7050', '9226', '297557', '42785', '');
INSERT INTO `xt_zm_data` VALUES ('475', '2016-06-17', '0', '0', '6', '4577', '3526', '296411', '47848', '');
INSERT INTO `xt_zm_data` VALUES ('476', '2016-06-18', '0', '0', '0', '6760', '2973', '341249', '58176', '');
INSERT INTO `xt_zm_data` VALUES ('477', '2016-06-19', '0', '0', '0', '7174', '3192', '298785', '59238', '');
INSERT INTO `xt_zm_data` VALUES ('478', '2016-06-20', '825', '0', '0', '6498', '2766', '334084', '52418', '');
INSERT INTO `xt_zm_data` VALUES ('479', '2016-06-21', '0', '0', '0', '4849', '4937', '320059', '57780', '');
INSERT INTO `xt_zm_data` VALUES ('48', '2015-04-17', '0', '0', null, '1284', '524', '126501', '25645', '');
INSERT INTO `xt_zm_data` VALUES ('480', '2016-06-22', '0', '0', '0', '5422', '3110', '310910', '50228', '');
INSERT INTO `xt_zm_data` VALUES ('481', '2016-06-23', '0', '0', '0', '4924', '6909', '296901', '47504', '');
INSERT INTO `xt_zm_data` VALUES ('482', '2016-06-24', '0', '0', '0', '8554', '9854', '268100', '44595', '');
INSERT INTO `xt_zm_data` VALUES ('483', '2016-06-25', '0', '0', '0', '4084', '2226', '275843', '38137', '');
INSERT INTO `xt_zm_data` VALUES ('484', '2016-06-26', '0', '0', '0', '5782', '2702', '230913', '37146', '');
INSERT INTO `xt_zm_data` VALUES ('485', '2016-06-27', '0', '0', '0', '5355', '10876', '282595', '51201', '');
INSERT INTO `xt_zm_data` VALUES ('486', '2016-06-28', '0', '0', '0', '4644', '2303', '285152', '45457', '');
INSERT INTO `xt_zm_data` VALUES ('487', '2016-06-29', '0', '0', '0', '5862', '2636', '301103', '45248', '');
INSERT INTO `xt_zm_data` VALUES ('488', '2016-06-30', '0', '0', '0', '4701', '4663', '268977', '49284', '');
INSERT INTO `xt_zm_data` VALUES ('489', '2016-07-01', '0', '0', '0', '5270', '3344', '294968', '45439', '');
INSERT INTO `xt_zm_data` VALUES ('49', '2015-04-18', '0', '0', null, '940', '487', '121665', '21560', '');
INSERT INTO `xt_zm_data` VALUES ('490', '2016-07-02', '0', '0', '0', '4410', '3346', '270853', '38457', '');
INSERT INTO `xt_zm_data` VALUES ('491', '2016-07-03', '0', '0', '0', '5199', '2012', '235849', '33487', '');
INSERT INTO `xt_zm_data` VALUES ('492', '2016-07-04', '0', '0', '1', '5805', '2144', '296590', '50037', '');
INSERT INTO `xt_zm_data` VALUES ('493', '2016-07-05', '0', '0', '0', '5916', '2239', '312400', '46331', '');
INSERT INTO `xt_zm_data` VALUES ('494', '2016-07-06', '0', '0', '15', '5780', '2480', '317890', '47728', '');
INSERT INTO `xt_zm_data` VALUES ('495', '2016-07-07', '0', '0', '1', '8569', '1975', '304178', '44944', '');
INSERT INTO `xt_zm_data` VALUES ('496', '2016-07-08', '0', '0', '0', '5218', '2355', '277852', '42728', '');
INSERT INTO `xt_zm_data` VALUES ('497', '2016-07-09', '0', '0', '0', '5926', '2553', '278440', '37904', '');
INSERT INTO `xt_zm_data` VALUES ('498', '2016-07-10', '0', '0', '0', '4032', '1846', '236523', '29519', '');
INSERT INTO `xt_zm_data` VALUES ('499', '2016-07-11', '0', '0', '0', '5611', '1920', '306623', '48095', '');
INSERT INTO `xt_zm_data` VALUES ('5', '2015-03-05', '0', '0', null, '858', '126', '82898', '21109', '');
INSERT INTO `xt_zm_data` VALUES ('50', '2015-04-19', '0', '0', null, '1267', '24', '117367', '20415', '');
INSERT INTO `xt_zm_data` VALUES ('500', '2016-07-12', '0', '0', '0', '5412', '2212', '299824', '48809', '');
INSERT INTO `xt_zm_data` VALUES ('501', '2016-07-13', '0', '0', '0', '5819', '2746', '299537', '43832', '');
INSERT INTO `xt_zm_data` VALUES ('502', '2016-07-14', '2936', '0', '7', '5298', '2249', '276964', '44466', '');
INSERT INTO `xt_zm_data` VALUES ('503', '2016-07-15', '0', '0', '0', '5699', '2059', '291176', '38321', '');
INSERT INTO `xt_zm_data` VALUES ('504', '2016-07-16', '793', '0', '0', '11798', '2051', '277925', '37875', '');
INSERT INTO `xt_zm_data` VALUES ('505', '2016-07-17', '0', '0', '0', '9705', '6071', '244942', '47254', '');
INSERT INTO `xt_zm_data` VALUES ('506', '2016-07-18', '0', '0', '0', '10339', '5465', '313305', '50256', '');
INSERT INTO `xt_zm_data` VALUES ('507', '2016-07-19', '0', '0', '1', '15846', '2226', '305623', '48654', '');
INSERT INTO `xt_zm_data` VALUES ('508', '2016-07-20', '858', '0', '3', '10423', '24998', '290545', '46853', '');
INSERT INTO `xt_zm_data` VALUES ('509', '2016-07-21', '44', '0', '12', '11484', '1902', '297580', '47161', '');
INSERT INTO `xt_zm_data` VALUES ('51', '2015-04-20', '0', '0', null, '1624', '250', '153444', '27313', '');
INSERT INTO `xt_zm_data` VALUES ('510', '2016-07-22', '0', '0', '0', '8730', '2819', '285714', '42123', '');
INSERT INTO `xt_zm_data` VALUES ('511', '2016-07-23', '0', '0', '0', '8831', '6547', '293976', '40718', '');
INSERT INTO `xt_zm_data` VALUES ('512', '2016-07-24', '0', '0', '6', '3742', '2059', '365496', '30468', '');
INSERT INTO `xt_zm_data` VALUES ('513', '2016-07-25', '0', '0', '11', '12607', '2351', '315961', '48153', '');
INSERT INTO `xt_zm_data` VALUES ('514', '2016-07-26', '0', '0', '0', '11567', '2715', '313799', '46448', '');
INSERT INTO `xt_zm_data` VALUES ('515', '2016-07-27', '0', '0', '0', '11264', '2846', '329089', '51555', '');
INSERT INTO `xt_zm_data` VALUES ('516', '2016-07-28', '0', '0', '0', '9388', '2616', '322194', '47931', '');
INSERT INTO `xt_zm_data` VALUES ('517', '2016-07-29', '0', '0', '1', '6351', '2039', '305859', '42899', '');
INSERT INTO `xt_zm_data` VALUES ('518', '2016-07-30', '0', '0', '8', '9479', '2300', '291230', '54607', '');
INSERT INTO `xt_zm_data` VALUES ('519', '2016-07-31', '0', '0', '0', '3143', '1340', '240010', '31540', '');
INSERT INTO `xt_zm_data` VALUES ('52', '2015-04-21', '0', '0', null, '6587', '281', '147412', '26683', '');
INSERT INTO `xt_zm_data` VALUES ('520', '2016-08-01', '365', '0', '0', '11054', '2073', '300370', '46743', '');
INSERT INTO `xt_zm_data` VALUES ('521', '2016-08-02', '0', '0', '6', '3616', '4953', '261148', '33670', '');
INSERT INTO `xt_zm_data` VALUES ('522', '2016-08-03', '0', '0', '1', '12923', '3701', '351178', '50959', '');
INSERT INTO `xt_zm_data` VALUES ('523', '2016-08-04', '0', '0', '3', '8910', '3021', '377599', '47619', '');
INSERT INTO `xt_zm_data` VALUES ('524', '2016-08-05', '1772', '0', '0', '6354', '2578', '340453', '42908', '');
INSERT INTO `xt_zm_data` VALUES ('525', '2016-08-06', '0', '0', '1', '3929', '2328', '306472', '38945', '');
INSERT INTO `xt_zm_data` VALUES ('526', '2016-08-07', '0', '0', '0', '3621', '3930', '262782', '30704', '');
INSERT INTO `xt_zm_data` VALUES ('527', '2016-08-08', '0', '0', '0', '8615', '2080', '334148', '45776', '');
INSERT INTO `xt_zm_data` VALUES ('528', '2016-08-09', '0', '0', '0', '5869', '2859', '326447', '44479', '');
INSERT INTO `xt_zm_data` VALUES ('529', '2016-08-10', '0', '0', '0', '6402', '2372', '315428', '41428', '');
INSERT INTO `xt_zm_data` VALUES ('53', '2015-04-22', '0', '0', null, '1342', '344', '146853', '26717', '');
INSERT INTO `xt_zm_data` VALUES ('530', '2016-08-11', '51', '0', '0', '5884', '2575', '336735', '42835', '');
INSERT INTO `xt_zm_data` VALUES ('531', '2016-08-12', '2', '0', '0', '8206', '2832', '345161', '42153', '');
INSERT INTO `xt_zm_data` VALUES ('532', '2016-08-13', '0', '0', '0', '5904', '3010', '330434', '38431', '');
INSERT INTO `xt_zm_data` VALUES ('533', '2016-08-14', '0', '0', '0', '3677', '2607', '270063', '29970', '');
INSERT INTO `xt_zm_data` VALUES ('534', '2016-08-15', '0', '500', '0', '7276', '2825', '349801', '47976', '');
INSERT INTO `xt_zm_data` VALUES ('535', '2016-08-16', '6360', '0', '0', '5880', '3153', '358134', '45903', '');
INSERT INTO `xt_zm_data` VALUES ('536', '2016-08-17', '2054', '0', '0', '7249', '4321', '337500', '46033', '');
INSERT INTO `xt_zm_data` VALUES ('537', '2016-08-18', '2277', '2716', '6', '7255', '5327', '349959', '42302', '');
INSERT INTO `xt_zm_data` VALUES ('538', '2016-08-19', '3000', '0', '0', '5928', '2805', '354490', '42955', '');
INSERT INTO `xt_zm_data` VALUES ('539', '2016-08-20', '0', '0', '0', '5501', '2403', '329287', '40818', '');
INSERT INTO `xt_zm_data` VALUES ('54', '2015-04-23', '0', '0', null, '2189', '794', '136197', '24901', '');
INSERT INTO `xt_zm_data` VALUES ('540', '2016-08-21', '0', '0', '0', '4229', '1895', '281292', '30618', '');
INSERT INTO `xt_zm_data` VALUES ('541', '2016-08-22', '1083', '0', '0', '8839', '2695', '356013', '46084', '');
INSERT INTO `xt_zm_data` VALUES ('542', '2016-08-23', '0', '4113', '0', '7346', '1897', '350220', '45530', '1113香港聚美数据未上传成功');
INSERT INTO `xt_zm_data` VALUES ('543', '2016-08-24', '2661', '0', '0', '9626', '3182', '357757', '42276', '');
INSERT INTO `xt_zm_data` VALUES ('544', '2016-08-25', '2829', null, null, null, null, null, null, '');
INSERT INTO `xt_zm_data` VALUES ('55', '2015-04-24', '0', '0', null, '1367', '147', '142979', '25719', '');
INSERT INTO `xt_zm_data` VALUES ('56', '2015-04-25', '0', '0', null, '1071', '190', '126038', '22088', '');
INSERT INTO `xt_zm_data` VALUES ('57', '2015-04-26', '0', '0', null, '1245', '137', '119558', '17237', '');
INSERT INTO `xt_zm_data` VALUES ('58', '2015-04-27', '0', '0', null, '6893', '601', '156581', '26131', '');
INSERT INTO `xt_zm_data` VALUES ('59', '2015-04-28', '510', '0', null, '21374', '400', '149397', '27329', '');
INSERT INTO `xt_zm_data` VALUES ('6', '2015-03-06', '0', '0', null, '1078', '102', '86660', '22144', '');
INSERT INTO `xt_zm_data` VALUES ('60', '2015-04-29', '1960', '0', null, '5120', '223', '148506', '26029', '');
INSERT INTO `xt_zm_data` VALUES ('61', '2015-04-30', '0', '0', null, '3329', '387', '141015', '25208', '');
INSERT INTO `xt_zm_data` VALUES ('62', '2015-05-01', '0', '0', null, '423', '78', '55052', '8422', '');
INSERT INTO `xt_zm_data` VALUES ('63', '2015-05-02', '0', '0', null, '2893', '285', '109956', '11780', '');
INSERT INTO `xt_zm_data` VALUES ('64', '2015-05-03', '0', '0', null, '3384', '179', '119021', '24209', '');
INSERT INTO `xt_zm_data` VALUES ('65', '2015-05-04', '0', '0', null, '7850', '214', '150895', '28843', '');
INSERT INTO `xt_zm_data` VALUES ('66', '2015-05-05', '0', '0', null, '5528', '358', '157255', '29177', '');
INSERT INTO `xt_zm_data` VALUES ('67', '2015-05-06', '0', '0', null, '1745', '4153', '144451', '27029', '');
INSERT INTO `xt_zm_data` VALUES ('68', '2015-05-07', '0', '0', null, '1889', '281', '138562', '26097', '');
INSERT INTO `xt_zm_data` VALUES ('69', '2015-05-08', '0', '0', null, '1504', '161', '133370', '25612', '');
INSERT INTO `xt_zm_data` VALUES ('7', '2015-03-07', '0', '0', null, '1060', '52', '80980', '21784', '');
INSERT INTO `xt_zm_data` VALUES ('70', '2015-05-09', '0', '0', null, '1251', '294', '125138', '22151', '');
INSERT INTO `xt_zm_data` VALUES ('71', '2015-05-10', '0', '0', null, '1289', '97', '110472', '17061', '');
INSERT INTO `xt_zm_data` VALUES ('72', '2015-05-11', '0', '86', null, '1380', '176', '129426', '23910', '');
INSERT INTO `xt_zm_data` VALUES ('73', '2015-05-12', '0', '0', null, '3586', '396', '160318', '30254', '');
INSERT INTO `xt_zm_data` VALUES ('74', '2015-05-13', '0', '0', null, '1488', '215', '140114', '28234', '');
INSERT INTO `xt_zm_data` VALUES ('75', '2015-05-14', '0', '0', null, '1416', '507', '139142', '25969', '');
INSERT INTO `xt_zm_data` VALUES ('76', '2015-05-15', '0', '0', null, '1795', '160', '134033', '24677', '');
INSERT INTO `xt_zm_data` VALUES ('77', '2015-05-16', '0', '0', null, '1099', '164', '118468', '23939', '');
INSERT INTO `xt_zm_data` VALUES ('78', '2015-05-17', '0', '0', null, '891', '1828', '103440', '15405', '');
INSERT INTO `xt_zm_data` VALUES ('79', '2015-05-18', '0', '0', null, '1732', '2904', '146464', '25326', '');
INSERT INTO `xt_zm_data` VALUES ('8', '2015-03-08', '0', '0', null, '858', '90', '68120', '17532', '');
INSERT INTO `xt_zm_data` VALUES ('80', '2015-05-19', '0', '0', null, '1930', '369', '158329', '26858', '');
INSERT INTO `xt_zm_data` VALUES ('81', '2015-05-20', '0', '0', null, '1405', '246', '151863', '26065', '');
INSERT INTO `xt_zm_data` VALUES ('82', '2015-05-21', '0', '0', null, '2284', '598', '156356', '28192', '');
INSERT INTO `xt_zm_data` VALUES ('83', '2015-05-22', '0', '0', null, '1440', '281', '142703', '25920', '');
INSERT INTO `xt_zm_data` VALUES ('84', '2015-05-23', '0', '0', null, '989', '214', '118337', '20855', '');
INSERT INTO `xt_zm_data` VALUES ('85', '2015-05-24', '0', '0', null, '1252', '369', '110592', '16964', '');
INSERT INTO `xt_zm_data` VALUES ('86', '2015-05-25', '0', '0', null, '2375', '428', '147100', '25789', '');
INSERT INTO `xt_zm_data` VALUES ('87', '2015-05-26', '16805', '1087', null, '1549', '752', '153042', '26922', '');
INSERT INTO `xt_zm_data` VALUES ('88', '2015-05-27', '554', '558', null, '1525', '5537', '140512', '26557', '');
INSERT INTO `xt_zm_data` VALUES ('89', '2015-05-28', '569', '8', null, '1827', '688', '140159', '26540', '');
INSERT INTO `xt_zm_data` VALUES ('9', '2015-03-09', '0', '0', null, '754', '177', '97985', '24471', '');
INSERT INTO `xt_zm_data` VALUES ('90', '2015-05-29', '0', '0', null, '1669', '778', '137683', '24780', '');
INSERT INTO `xt_zm_data` VALUES ('91', '2015-05-30', '0', '0', null, '1372', '482', '122224', '21666', '');
INSERT INTO `xt_zm_data` VALUES ('92', '2015-05-31', '0', '0', null, '1324', '997', '108572', '17549', '');
INSERT INTO `xt_zm_data` VALUES ('93', '2015-06-01', '0', '0', null, '1683', '473', '153694', '26309', '');
INSERT INTO `xt_zm_data` VALUES ('94', '2015-06-02', '563', '1', null, '1812', '874', '152266', '26934', '');
INSERT INTO `xt_zm_data` VALUES ('95', '2015-06-03', '219', '0', null, '7355', '858', '142537', '25659', '');
INSERT INTO `xt_zm_data` VALUES ('96', '2015-06-04', '0', '0', null, '1663', '977', '148571', '24825', '');
INSERT INTO `xt_zm_data` VALUES ('97', '2015-06-05', '951', '479', null, '1871', '746', '134203', '23907', '');
INSERT INTO `xt_zm_data` VALUES ('98', '2015-06-06', '731', '731', null, '1692', '4452', '127559', '23033', '');
INSERT INTO `xt_zm_data` VALUES ('99', '2015-06-07', '731', '731', null, '2225', '849', '111532', '21574', '');

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
INSERT INTO `xt_zm_number` VALUES ('1', '2015-01-15', '质控部', '祝新国', '5180008944', '入职', '郭明星', '2015-01-15', '3', '');
INSERT INTO `xt_zm_number` VALUES ('10', '2015-03-10', '财务部 ', '曾明光', '5180008906', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('100', '2015-04-02', '操作管理部', '康飞鸣', '5180004655', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1000', '2016-02-18', '操作管理部', '韦好', '5180004173', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1001', '2016-02-18', '操作管理部', '向道才', '5180004174', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1002', '2016-02-18', '操作管理部', '马建文', '5180004175', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1003', '2016-02-18', '操作管理部', '黄火金', '5180004176', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1004', '2016-02-18', '操作管理部', '王开帅', '5180004177', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1005', '2016-02-18', '操作管理部', '范海波', '5180004178', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1006', '2016-02-18', '操作管理部', '曹彪', '5180004179', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1007', '2016-02-18', '操作管理部', '秦林平', '5180004180', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1008', '2016-02-18', '操作管理部', '任晏', '5180004181', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1009', '2016-02-18', '操作管理部', '周燕林', '5180004182', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('101', '2015-04-02', '操作管理部', '黄友权', '5180004669', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1010', '2016-02-18', '操作管理部', '陈全胜', '5180004183', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1011', '2016-02-18', '操作管理部', '唐代洪', '5180004184', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1012', '2016-02-18', '操作管理部', '罗觉荣', '5180004185', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1013', '2016-02-18', '操作管理部', '廖悦荣', '5180004186', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1014', '2016-02-18', '操作管理部', '丁其贵', '5180004187', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1015', '2016-02-18', '操作管理部', '罗志平', '5180004188', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1016', '2016-02-18', '操作管理部', '段吉兵', '5180004189', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1017', '2016-02-18', '操作管理部', '何先周', '5180004190', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1018', '2016-02-18', '操作管理部', '邓学林', '5180004191', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1019', '2016-02-18', '操作管理部', '王振华', '5180004192', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('102', '2015-04-02', '操作管理部', '王庆超', '5180004604', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1020', '2016-02-18', '操作管理部', '杨铭', '5180004193', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1021', '2016-02-18', '操作管理部', '王叶', '5180004194', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1022', '2016-02-18', '操作管理部', '艾欠芽', '5180004195', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1023', '2016-02-18', '操作管理部', '谢章权', '5180004196', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1024', '2016-02-18', '操作管理部', '梁友明', '5180004197', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1025', '2016-02-18', '操作管理部', '贺兴发', '5180004198', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1026', '2016-02-18', '操作管理部', '王刘强', '5180004199', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1027', '2016-02-18', '操作管理部', '梁长秋', '5180004200', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1028', '2016-02-18', '操作管理部', '凌军民', '5180004201', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1029', '2016-02-19', '操作管理部', '唐基军', '5180004354', '离职', '郭明星', '2016-02-19', '8', '');
INSERT INTO `xt_zm_number` VALUES ('103', '2015-04-07', '操作管理部', '陈妙君', '5180004128', '离职', '郭明星', '2015-04-07', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1030', '2016-02-19', '操作管理部', '黎飞', '5180004601', '离职', '郭明星', '2016-02-19', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1031', '2016-02-19', '操作管理部', '唐取飞', '5180004621', '离职', '郭明星', '2016-02-19', '8', '');
INSERT INTO `xt_zm_number` VALUES ('1032', '2016-02-23', '财务部', '胡海芬', '5180008922', '入职', '王科', '2016-02-23', '9', '');
INSERT INTO `xt_zm_number` VALUES ('1033', '2016-03-01', '质控部', '李道元', '5180008756', '入职', '郭明星', '2016-03-01', '10', '');
INSERT INTO `xt_zm_number` VALUES ('1034', '2016-03-10', '操作管理部', '张帅', '5180004355', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1035', '2016-03-10', '操作管理部', '沈凤英', '5095822005', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1036', '2016-03-10', '操作管理部', '沈凤英', '5095823001', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1037', '2016-03-10', '操作管理部', '沈凤英', '5180004302', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1038', '2016-03-10', '操作管理部', '沈凤英', '5180004609', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1039', '2016-03-10', '操作管理部', '王娥英', '5180004614', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('104', '2015-04-08', '操作管理部', '袁冰立', '5180004578', '离职', '郭明星', '2015-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1040', '2016-03-10', '操作管理部', '阙泽维', '5095821001', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1041', '2016-03-10', '操作管理部', '阙泽维', '5095822006', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1042', '2016-03-10', '操作管理部', '曾万宝', '5180004612', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1043', '2016-03-10', '操作管理部', '吴念', '5095821012', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1044', '2016-03-10', '操作管理部', '吴念', '5095822025', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1045', '2016-03-10', '操作管理部', '叶为维', '5180004643', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1046', '2016-03-10', '操作管理部', '刘波', '5095821016', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1047', '2016-03-10', '操作管理部', '刘波', '5095822008', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1048', '2016-03-10', '操作管理部', '欧义龙', '5095821026', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1049', '2016-03-10', '操作管理部', '欧义龙', '5095822032', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('105', '2015-04-09', ' 财务部', '陈琳 ', '5180008913', '离职', '郭明星', '2015-04-09', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1050', '2016-03-10', '操作管理部', '吴昊', '5095822046', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1051', '2016-03-10', '操作管理部', '马建文', '5180004175', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1052', '2016-03-10', '操作管理部', '吴文峰', '5095822055', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1053', '2016-03-10', '操作管理部', '胡鸯婕', '5180006106', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1054', '2016-03-10', '操作管理部', '张荣庭', '5180006011', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1055', '2016-03-10', '操作管理部', '石代元', '5180006107', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1056', '2016-03-10', '骏达网货仓', '程捷', '5180008890', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1057', '2016-03-10', '质控部', '李道元', '5180008756', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1058', '2016-03-10', '质控部', '曹婷', '5180008873', '离职', '郭明星', '2016-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('1059', '2016-03-15', '质控部', '从晓权', '5180008884', '入职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('106', '2015-04-09', '操作管理部', '何启欢', '5180004579', '离职', '郭明星', '2015-04-09', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1060', '2016-03-15', '质控部', '曾明', '5180008885', '入职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1061', '2016-03-15', '质控部', '左录姣', '5180008886', '入职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1062', '2016-03-15', '操作管理部', '梁琼源', '5180008751', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1063', '2016-03-15', '操作管理部', '李卢山', '5180006014', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1064', '2016-03-15', '操作管理部', '唐辉', '5180004331', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1065', '2016-03-15', '操作管理部', '唐辉', '5180004742', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1066', '2016-03-15', '操作管理部', '刘生华', '5180004836', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1067', '2016-03-15', '操作管理部', '黄洪江', '5180004835', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1068', '2016-03-15', '操作管理部', '潘爽', '5180004833', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1069', '2016-03-15', '操作管理部', '王乾', '5180004350', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('107', '2015-04-09', '操作管理部', '方钰', '5180004342', '离职', '郭明星', '2015-04-09', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1070', '2016-03-15', '操作管理部', '吴金亮', '5180004351', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1071', '2016-03-15', '质控部', '魏腾飞', '5180008878', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1072', '2016-03-15', '操作管理部', '乔天保', '5095822066', '离职', '郭明星', '2016-03-15', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1073', '2016-03-17', '内控部', '杨新华', '5180008751', '入职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1074', '2016-03-17', '仲裁部', '郭玲', '5180008640', '入职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1075', '2016-03-17', '仲裁部', '罗雨祺 ', '5180008641', '入职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1076', '2016-03-17', '操作管理部', '吴昌仁', '5095823005', '离职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1077', '2016-03-17', '操作管理部', '李靖', '5180086002', '离职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1078', '2016-03-17', '操作管理部', '李建峰', '5180005611', '离职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1079', '2016-03-17', '操作管理部', '郑象文', '5180006621', '离职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('108', '2015-04-10', '操作管理部', '宋俊辉', '5180004325', '离职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1080', '2016-03-17', '仲裁部', '杜涛', '5180008637', '离职', '郭明星', '2016-03-17', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1081', '2016-03-19', '财务部', '龙黄金', '5180008932', '入职', '郭明星', '2016-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('1082', '2016-03-21', '网点管理部', '蔡奔月', '5180008730', '入职', '郭明星', '2016-03-21', '13', '');
INSERT INTO `xt_zm_number` VALUES ('1083', '2016-03-22', '市场部 ', '陈佳', '5180008735', '入职', '郭明星', '2016-03-22', '13', '');
INSERT INTO `xt_zm_number` VALUES ('1084', '2016-03-24', '质控部', '陈婷婷', '5180008756', '入职', '郭明星', '2016-03-24', '13', '');
INSERT INTO `xt_zm_number` VALUES ('1085', '2016-03-28', '网点管理部', '胡梅', '5180008732', '入职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1086', '2016-03-28', '财务部', '朱小英', '5180008934', '入职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1087', '2016-03-28', '操作管理部', '汪安宁', '5180004631', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1088', '2016-03-28', '操作管理部', '王海', '5180004729', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1089', '2016-03-28', '操作管理部', '文星明', '5095822059', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('109', '2015-04-10', '操作管理部', '欧阳池', '5180004309', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1090', '2016-03-28', '操作管理部', '黄卫虎', '5180006017', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1091', '2016-03-28', '操作管理部', '鲜永祥', '5180004323', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1092', '2016-03-28', '操作管理部', '周烈', '5180004691', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1093', '2016-03-28', '操作管理部', '周烈', '5180004748', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1094', '2016-03-28', '操作管理部', '韩喜满', '5180004636', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1095', '2016-03-28', '仲裁部', '郭玲', '5180008640', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1096', '2016-03-28', '操作管理部', '曹彪', '5180004179', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1097', '2016-03-28', '操作管理部', '张传玉', '5180004172', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1098', '2016-03-28', '操作管理部', '欧阳宇', '5180004125', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1099', '2016-03-28', '操作管理部', '龙福庆', '5095822077', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('11', '2015-03-10', '操作部', '淘磊', '5180004104', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('110', '2015-04-10', '操作管理部', '史路路', '5180004342', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1100', '2016-03-28', '总经办', '邹琼', '5180008802', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1101', '2016-03-28', '操作管理部', '璩忠文', '5180004527', '离职', '郭明星', '2016-03-28', '14', '');
INSERT INTO `xt_zm_number` VALUES ('1102', '2016-04-07', '操作管理部', '沈佳俊', '5180004611', '入职', '郭明星', '2016-04-07', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1103', '2016-04-08', '网点管理部', '陈大忠', '5180008736', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1104', '2016-04-08', '网点管理部', '姚建国', '5180008737', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1105', '2016-04-08', '网点管理部', '文韬', '5180008738', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1106', '2016-04-08', '网点管理部', '刘煌', '5180008742', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1107', '2016-04-08', '网点管理部', '李超', '5180008743', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1108', '2016-04-08', '网点管理部', '王勇', '5180008745', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1109', '2016-04-08', '网点管理部', '赵蕊', '5180008747', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('111', '2015-04-10', '操作管理部', '陈海军', '5180004343', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1110', '2016-04-08', '网点管理部', '何剑辉', '5180008758', '入职', '郭明星', '2016-04-08', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1111', '2016-04-09', '内控部', '杨毅', '5180008760', '入职', '郭明星', '2016-04-09', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1112', '2016-04-09', '质控部', '梅哲华', '5180008759', '入职', '郭明星', '2016-04-09', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1113', '2016-04-25', '仲裁部', '何建娇', '5180008611', '入职', '郭明星', '2016-04-25', '18', '');
INSERT INTO `xt_zm_number` VALUES ('1114', '2016-04-25', '核算部', '张亚玲', '5180008925', '离职', '郭明星', '2016-04-25', '18', '');
INSERT INTO `xt_zm_number` VALUES ('1115', '2016-04-26', '网点管理部 ', '周才亮', '5180008761', '入职', '郭明星', '2016-04-26', '18', '');
INSERT INTO `xt_zm_number` VALUES ('1116', '2016-04-28', '分拨点管理部 ', '黄运平', '5180008762', '入职', '郭明星', '2016-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('1117', '2016-04-28', '仲裁部 ', '秦战歌 ', '5180008637', '入职', '郭明星', '2016-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('1118', '2016-05-04', '快运', '孙洋', '5180008763', '入职', '郭明星', '2016-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('1119', '2016-05-13', '网点管理部', '叶惠文', '5180008765', '入职', '郭明星', '2016-05-13', '20', '');
INSERT INTO `xt_zm_number` VALUES ('112', '2015-04-10', '操作管理部', '邱伟', '5180004346', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1120', '2016-05-19', '质控部', '梅哲华', '5180008759', '离职', '郭明星', '2016-05-19', '21', '');
INSERT INTO `xt_zm_number` VALUES ('1121', '2016-05-19', '网点管理部', '范炜斌', '5180008727', '离职', '郭明星', '2016-05-19', '21', '');
INSERT INTO `xt_zm_number` VALUES ('1122', '2016-06-02', '质控部', '陈浩 ', '5180008889', '入职', '郭明星', '2016-06-02', '23', '');
INSERT INTO `xt_zm_number` VALUES ('1123', '2016-06-07', '人力资源部', '张家露', '5180008854', '入职', '郭明星', '2016-06-07', '24', '');
INSERT INTO `xt_zm_number` VALUES ('1124', '2016-06-08', '核算部', '马春山', '5180008925', '入职', '郭明星', '2016-06-08', '24', '');
INSERT INTO `xt_zm_number` VALUES ('1125', '2016-06-13', '仲裁部', '吴娇', '5180008640', '入职', '郭明星', '2016-06-13', '25', '');
INSERT INTO `xt_zm_number` VALUES ('1126', '2016-06-14', '人力资源部', '刘嘉伦', '5180008855', '入职', '郭明星', '2016-06-14', '25', '');
INSERT INTO `xt_zm_number` VALUES ('1127', '2016-06-16', '网点管理部', '郝慧', '5180008759', '入职', '郭明星', '2016-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('1128', '2016-06-20', '质控部 ', '陈浩', '5180008727', '入职', '郭明星', '2016-06-20', '26', '');
INSERT INTO `xt_zm_number` VALUES ('1129', '2016-06-21', '操作部 ', '廖清元', '5180008767', '入职', '郭明星', '2016-06-21', '26', '');
INSERT INTO `xt_zm_number` VALUES ('113', '2015-04-10', '操作管理部', '赖强', '5180004307', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1130', '2016-06-29', '财务部', '陈丝', '5180008905', '入职', '郭明星', '2016-06-29', '27', '');
INSERT INTO `xt_zm_number` VALUES ('1131', '2016-07-01', '财务部', '尹琼', '5180008935', '入职', '郭明星', '2016-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('1132', '2016-07-12', '财务部', '罗京', '5180008936', '入职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1133', '2016-07-12', '仲裁部', '胡梅', '5180008732', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1134', '2016-07-12', '客服部', '李振宇', '5180008602', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1135', '2016-07-12', '仲裁部', '贺雨', '5180008606', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1136', '2016-07-12', '大客户客服部', '蔡奔月', '5180008730', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1137', '2016-07-12', '仲裁部', '罗海珠', '5180008626', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1138', '2016-07-12', '网点管理部', '叶惠文', '5180008765', '离职', '郭明星', '2016-07-12', '29', '');
INSERT INTO `xt_zm_number` VALUES ('1139', '2016-07-23', '操作管理部 ', '王远珊', '5180004612', '入职', '郭明星', '2016-07-23', '30', '');
INSERT INTO `xt_zm_number` VALUES ('114', '2015-04-10', '操作管理部', '邓宜龙', '5180004308', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('1140', '2016-07-27', '网点管理部', '张勇', '5180008730', '入职', '郭明星', '2016-07-27', '31', '');
INSERT INTO `xt_zm_number` VALUES ('1141', '2016-07-27', '操作管理部', '刘壮辉', '5180004614', '入职', '郭明星', '2016-07-27', '31', '');
INSERT INTO `xt_zm_number` VALUES ('1142', '2016-08-15', '网点管理部', '张倩', 'YD7158', '入职', '郭明星', '2016-08-15', '34', '');
INSERT INTO `xt_zm_number` VALUES ('1143', '2016-08-15', '操作管理部', '陈朝辉', 'YD7204', '入职', '郭明星', '2016-08-15', '34', '');
INSERT INTO `xt_zm_number` VALUES ('1144', '2016-08-15', '操作管理部', '苏凤祥 ', 'YD7205', '入职', '郭明星', '2016-08-15', '34', '');
INSERT INTO `xt_zm_number` VALUES ('1145', '2016-08-15', '操作管理部', '张一平', 'YD7206', '入职', '郭明星', '2016-08-15', '34', '');
INSERT INTO `xt_zm_number` VALUES ('1146', '2016-08-15', '操作管理部', '张欢', 'YD7207', '入职', '郭明星', '2016-08-15', '34', '');
INSERT INTO `xt_zm_number` VALUES ('1147', '2016-08-22', '仲裁部', '喻亚蓝', 'YD7187', '入职', '郭明星', '2016-08-22', '35', '');
INSERT INTO `xt_zm_number` VALUES ('115', '2015-04-10', '操作管理部', '衷诚镖', '5180004322', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('116', '2015-04-10', '操作管理部', '张陌生', '5180004303', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('117', '2015-04-10', '操作管理部', '曾交根', '5180004334', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('118', '2015-04-10', '操作管理部', '张天龙', '5180004347', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('119', '2015-04-10', '操作管理部', '李大任', '5180004348', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('12', '2015-03-10', '仲裁部', '彭舒舒', '5180008629', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('120', '2015-04-10', '操作管理部', '刘建设', '5180004349', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('121', '2015-04-10', '操作管理部', '李飞飞', '5180004336', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('122', '2015-04-10', '操作管理部', '向松', '5180004331', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('123', '2015-04-10', '操作管理部', '龚奇', '5180004333', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('124', '2015-04-10', '操作管理部', '罗正五', '5180004337', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('125', '2015-04-10', '操作管理部', '梁新生', '5180004306', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('126', '2015-04-10', '操作管理部', '陈惠', '5180004311', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('127', '2015-04-10', '操作管理部', '张来', '5180004313', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('128', '2015-04-10', '操作管理部', '陈平', '5180004314', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('129', '2015-04-10', '操作管理部', '龚开来', '5180004316', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('13', '2015-03-10', '操作部', '石奇生', '5180004303', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('130', '2015-04-10', '操作管理部', '周贤江波', '5180004697', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('131', '2015-04-10', '操作管理部', '刘玲', '5180004325', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('132', '2015-04-10', '操作管理部', '罗日表', '5180004520', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('133', '2015-04-10', '操作管理部', '马秀兰', '5180004523', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('134', '2015-04-10', '操作管理部', '江家琦', '5180004531', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('135', '2015-04-10', '操作管理部', '邱锦燊', '5180004532', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('136', '2015-04-10', '操作管理部', '邱宝源', '5180004533', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('137', '2015-04-10', '操作管理部', '赵肖丰', '5180004534', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('138', '2015-04-10', '操作管理部', '向喜冰', '5180004535', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('139', '2015-04-10', '操作管理部', '赵建文', '5180004536', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('14', '2015-03-10', '网点管理部', '王明妥', '5180008743', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('140', '2015-04-10', '操作管理部', '陈伟泽', '5180004537', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('141', '2015-04-10', '操作管理部', '廖壮壮', '5180001008', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('142', '2015-04-10', '操作管理部', '郭泉', '5180001010', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('143', '2015-04-10', '操作管理部', '谢昆', '5180001012', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('144', '2015-04-10', '操作管理部', '钟作芳', '5180001013', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('145', '2015-04-10', '操作管理部', '冉左祥', '5180001014', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('146', '2015-04-10', '操作管理部', '晏福勇', '5180001015', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('147', '2015-04-10', '操作管理部', '卢坚焕', '5180001017', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('148', '2015-04-10', '操作管理部', '左军', '5180001018', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('149', '2015-04-10', '操作管理部', '卢凤锦', '5180001019', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('15', '2015-03-10', '操作部', '黄美霞', '5180004058', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('150', '2015-04-10', '操作管理部', '刘柱', '5180001020', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('151', '2015-04-10', '操作管理部', '贺利平', '5180001021', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('152', '2015-04-10', '操作管理部', '黄美霞', '5180004062', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('153', '2015-04-10', '操作管理部', '吴慧玲', '5180004060', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('154', '2015-04-10', '操作管理部', '张永贵', '5180004066', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('155', '2015-04-10', '操作管理部', '李永辉', '5180004067', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('156', '2015-04-10', '操作管理部', '黄道凤', '5180004029', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('157', '2015-04-10', '操作管理部', '龙桂清', '5180004035', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('158', '2015-04-10', '操作管理部', '粟成秀', '5180004039', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('159', '2015-04-10', '操作管理部', '张鸣星', '5180004041', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('16', '2015-03-10', '操作部', '王汝森', '5180004566', '离职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('160', '2015-04-10', '操作管理部', '周奇奇', '5180004046', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('161', '2015-04-10', '操作管理部', '罗竞海', '5180004052', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('162', '2015-04-10', '操作管理部', '刘星', '5180004059', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('163', '2015-04-10', '操作管理部', '向成', '5180004079', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('164', '2015-04-10', '操作管理部', '吴淑涛', '5180004073', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('165', '2015-04-10', '操作管理部', '方明义', '5180004074', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('166', '2015-04-10', '操作管理部', '周学兵', '5180004078', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('167', '2015-04-10', '操作管理部', '李苏容', '5180004058', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('168', '2015-04-10', '操作管理部', '陈平', '5180004104', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('169', '2015-04-10', '操作管理部', '苟琼', '5180004064', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('17', '2015-03-11', '结算部', '管治如 ', '5180008926', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('170', '2015-04-10', '操作管理部', '唐天余', '5180004107', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('171', '2015-04-10', '操作管理部', '龚开来', '5180004113', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('172', '2015-04-10', '操作管理部', '覃多英', '5180004115', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('173', '2015-04-10', '操作管理部', '杨建琼', '5180004117', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('174', '2015-04-10', '操作管理部', '刘玉莲', '5180004003', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('175', '2015-04-10', '操作管理部', '古丽文', '5180004122', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('176', '2015-04-10', '操作管理部', '覃任元', '5180004123', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('177', '2015-04-10', '操作管理部', '乐俊辉', '5180004125', '入职', '郭明星', '2015-04-10', '15', '');
INSERT INTO `xt_zm_number` VALUES ('178', '2015-04-12', '质控部', '李峰', '5180008872', '入职', '郭明星', '2015-04-12', '16', '');
INSERT INTO `xt_zm_number` VALUES ('179', '2015-04-12', '操作管理部', '唐陈里', '5180004018', '入职', '郭明星', '2015-04-12', '16', '');
INSERT INTO `xt_zm_number` VALUES ('18', '2015-03-11', '操作部', '章锐萍', '5180004548', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('180', '2015-04-12', '操作管理部', '贺来发', '5180004105', '入职', '郭明星', '2015-04-12', '16', '');
INSERT INTO `xt_zm_number` VALUES ('181', '2015-04-12', '操作管理部', '梁小松', '5180004110', '入职', '郭明星', '2015-04-12', '16', '');
INSERT INTO `xt_zm_number` VALUES ('182', '2015-04-12', '操作管理部', '陈斌', '5180004118', '入职', '郭明星', '2015-04-12', '16', '');
INSERT INTO `xt_zm_number` VALUES ('183', '2015-04-15', '仲裁部', '姚智 ', '5180008609', '离职', '郭明星', '2015-04-15', '16', '');
INSERT INTO `xt_zm_number` VALUES ('184', '2015-04-15', '网点管理部', '魏成林', '5180008747', '离职', '郭明星', '2015-04-15', '16', '');
INSERT INTO `xt_zm_number` VALUES ('185', '2015-04-15', '信息与流程管理部', '殷晨东', '5180008821', '离职', '郭明星', '2015-04-15', '16', '');
INSERT INTO `xt_zm_number` VALUES ('186', '2015-04-15', '操作管理部', '向松', '5180004331', '离职', '郭明星', '2015-04-15', '16', '');
INSERT INTO `xt_zm_number` VALUES ('187', '2015-04-15', '操作管理部', '杨威', '5180004610', '离职', '郭明星', '2015-04-15', '16', '');
INSERT INTO `xt_zm_number` VALUES ('188', '2015-04-16', '操作管理部', '章锐萍', '5180004548', '离职', '郭明星', '2015-04-16', '16', '');
INSERT INTO `xt_zm_number` VALUES ('189', '2015-04-17', '操作管理部', '李孔妮', '5180004546', '离职', '郭明星', '2015-04-17', '16', '');
INSERT INTO `xt_zm_number` VALUES ('19', '2015-03-11', '操作部', '程风霞', '5180004549', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('190', '2015-04-17', '操作管理部', '陈兵', '5180004538', '离职', '郭明星', '2015-04-17', '16', '');
INSERT INTO `xt_zm_number` VALUES ('191', '2015-04-17', '操作管理部', '向喜冰', '5180004535', '离职', '郭明星', '2015-04-17', '16', '');
INSERT INTO `xt_zm_number` VALUES ('192', '2015-04-17', '操作管理部', '何启乐', '5180004574', '离职', '郭明星', '2015-04-17', '16', '');
INSERT INTO `xt_zm_number` VALUES ('193', '2015-04-20', '操作管理部', '张华东', '5180004556', '离职', '郭明星', '2015-04-20', '17', '');
INSERT INTO `xt_zm_number` VALUES ('194', '2015-04-20', '操作管理部', '闫渊', '5180004555', '离职', '郭明星', '2015-04-20', '17', '');
INSERT INTO `xt_zm_number` VALUES ('195', '2015-04-20', '操作管理部', '祝新国', '5180008860', '离职', '郭明星', '2015-04-20', '17', '');
INSERT INTO `xt_zm_number` VALUES ('196', '2015-04-22', '操作管理部', '肖陈云', '5180004627', '离职', '郭明星', '2015-04-22', '17', '');
INSERT INTO `xt_zm_number` VALUES ('197', '2015-04-22', '操作管理部', '刘星', '5180004059', '离职', '郭明星', '2015-04-22', '17', '');
INSERT INTO `xt_zm_number` VALUES ('198', '2015-04-22', '操作管理部', '周翔', '5180004106', '离职', '郭明星', '2015-04-22', '17', '');
INSERT INTO `xt_zm_number` VALUES ('199', '2015-04-22', '财务部', '禤永康', '5180008940', '离职', '郭明星', '2015-04-22', '17', '');
INSERT INTO `xt_zm_number` VALUES ('2', '2015-03-10', '操作部', '入职操作员', '5180004501', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('20', '2015-03-11', '操作部', '程盼', '5180004550', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('200', '2015-04-22', '操作管理部', '陈江杰', '5180004514', '离职', '郭明星', '2015-04-22', '17', '');
INSERT INTO `xt_zm_number` VALUES ('201', '2015-04-23', '网点管理部', '钟媚', '5180008732', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('202', '2015-04-23', '操作管理部', '曹艳艳', '5180004555', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('203', '2015-04-23', '操作管理部', '袁华山', '5180004556', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('204', '2015-04-23', '操作管理部', '许鹏', '5180004130', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('205', '2015-04-23', '操作管理部', '唐可求', '5180004131', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('206', '2015-04-23', '操作管理部', '黄祥', '5180004132', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('207', '2015-04-23', '操作管理部', '苏伟安', '5180004129', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('208', '2015-04-23', '操作管理部', '覃金雄', '5180004128', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('209', '2015-04-23', '操作管理部', '苏振', '5180004120', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('21', '2015-03-11', '操作部', '胡良才', '5180004346', '离职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('210', '2015-04-23', '操作管理部', '曾嘉', '5180004106', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('211', '2015-04-23', '操作管理部', '沈东林', '5180004059', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('212', '2015-04-23', '操作管理部', '张来', '5180004313', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('213', '2015-04-23', '操作管理部', '梁新生', '5180004306', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('214', '2015-04-23', '操作管理部', '唐志豪', '5180004579', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('215', '2015-04-23', '操作管理部', '杨阳', '5180004581', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('216', '2015-04-23', '操作管理部', '李飞飞', '5180004350', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('217', '2015-04-23', '操作管理部', '晏福勇', '5180004351', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('218', '2015-04-23', '操作管理部', '曾广星', '5180004352', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('219', '2015-04-23', '操作管理部', '王辉', '5180004331', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('22', '2015-03-11', '操作部', '周贤江波', '5180004336', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('220', '2015-04-23', '操作管理部', '曹爱兰', '5180001022', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('221', '2015-04-23', '操作管理部', '王落霞', '5180004048', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('222', '2015-04-23', '操作管理部', '刘玲', '5180004134', '入职', '郭明星', '2015-04-23', '17', '');
INSERT INTO `xt_zm_number` VALUES ('223', '2015-04-28', '操作管理部', '徐春利', '5180004568', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('224', '2015-04-28', '操作管理部', '陈成安', '5180004512', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('225', '2015-04-28', '操作管理部', '张云智', '5180004557', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('226', '2015-04-28', '操作管理部', '江家琦', '5180004531', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('227', '2015-04-28', '操作管理部', '沈东林', '5180004059', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('228', '2015-04-28', '操作管理部', '李小龙', '5180004664', '离职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('229', '2015-04-28', '操作管理部', '唐陈军', '5180004136', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('23', '2015-03-11', '操作部', '刘玉莲', '5180004003', '入职', '郭明星', '2015-03-11', '11', '');
INSERT INTO `xt_zm_number` VALUES ('230', '2015-04-28', '操作管理部', '江云', '5180004135', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('231', '2015-04-28', '操作管理部', '李春东', '5180004133', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('232', '2015-04-28', '操作管理部', '贺来发', '5180004105', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('233', '2015-04-28', '操作管理部', '康辉', '5180004087', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('234', '2015-04-28', '操作管理部', '梁小松', '5180004110', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('235', '2015-04-28', '操作管理部', '冯剑山', '5180004336', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('236', '2015-04-28', '操作管理部', '刘玲', '5180004682', '入职', '郭明星', '2015-04-28', '18', '');
INSERT INTO `xt_zm_number` VALUES ('237', '2015-04-29', '分拨点管理中心', '夏国文', '5180008737', '离职', '郭明星', '2015-04-29', '18', '');
INSERT INTO `xt_zm_number` VALUES ('238', '2015-04-30', '仲裁部', '杨辉', '5180008606', '离职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('239', '2015-04-30', '操作管理部', '黄道凤', '5180004059', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('24', '2015-03-18', '操作部', '卢光超', '5180004314', '离职', '郭明星', '2015-03-18', '12', '');
INSERT INTO `xt_zm_number` VALUES ('240', '2015-04-30', '操作管理部', '黄贤就', '5180004137', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('241', '2015-04-30', '操作管理部', '王远福', '5180004138', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('242', '2015-04-30', '操作管理部', '兰霞', '5180004139', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('243', '2015-04-30', '操作管理部', '罗勋平', '5180004140', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('244', '2015-04-30', '操作管理部', '林景怡', '5180004141', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('245', '2015-04-30', '操作管理部', '朱红军', '5180004142', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('246', '2015-04-30', '操作管理部', '王建军', '5180004143', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('247', '2015-04-30', '操作管理部', '石小华', '5180004144', '入职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('248', '2015-04-30', '操作管理部', '袁玉平', '5180004323', '离职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('249', '2015-04-30', '操作管理部', '余祥海', '5180004015', '离职', '郭明星', '2015-04-30', '18', '');
INSERT INTO `xt_zm_number` VALUES ('25', '2015-03-18', '操作部', '殷少伟', '5180004529', '入职', '郭明星', '2015-03-18', '12', '');
INSERT INTO `xt_zm_number` VALUES ('250', '2015-05-04', '质控部', '李明', '5180008865', '入职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('251', '2015-05-04', '结算部', '杨婷', '5180008924', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('252', '2015-05-04', '操作管理部', '龚万群', '5180004090', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('253', '2015-05-04', '操作管理部', '李念', '5180004318', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('254', '2015-05-04', '操作管理部', '王飞', '5180004081', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('255', '2015-05-04', '操作管理部', '蒙明敏', '5180004328', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('256', '2015-05-04', '操作管理部', '廖政伟', '5180004593', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('257', '2015-05-04', '操作管理部', '秦仕菊', '5180004544', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('258', '2015-05-04', '操作管理部', '陈卫兵', '5180004583', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('259', '2015-05-04', '操作管理部', '吴俊江', '5180004545', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('26', '2015-03-18', '操作部', '卞兴扬', '5180004530', '入职', '郭明星', '2015-03-18', '12', '');
INSERT INTO `xt_zm_number` VALUES ('260', '2015-05-04', '操作管理部', '刘小斌', '5180004582', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('261', '2015-05-04', '操作管理部', '陈自仁', '5180004598', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('262', '2015-05-04', '操作管理部', '李国垚', '5180004603', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('263', '2015-05-04', '操作管理部', '张志勇', '5180004662', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('264', '2015-05-04', '操作管理部', '陈伟泽', '5180004537', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('265', '2015-05-04', '操作管理部', '覃金雄', '5180004128', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('266', '2015-05-04', '操作管理部', '刘春香', '5180004508', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('267', '2015-05-04', '操作管理部', '匡润兰', '5180004007', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('268', '2015-05-04', '操作管理部', '张喜江', '5180004065', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('269', '2015-05-04', '仲裁部', '黄佳莹', '5180008602', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('27', '2015-03-19', '结算部', '李佳丽', '5180008932', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('270', '2015-05-04', '操作管理部', '袁华山', '5180004556', '离职', '郭明星', '2015-05-04', '19', '');
INSERT INTO `xt_zm_number` VALUES ('271', '2015-05-05', '操作管理部', '周贤江波', '5180004586', '入职', '郭明星', '2015-05-05', '19', '');
INSERT INTO `xt_zm_number` VALUES ('272', '2015-05-05', '操作管理部', '王定国', '5180004588', '入职', '郭明星', '2015-05-05', '19', '');
INSERT INTO `xt_zm_number` VALUES ('273', '2015-05-05', '操作管理部', '杨包', '5180004512', '入职', '郭明星', '2015-05-05', '19', '');
INSERT INTO `xt_zm_number` VALUES ('274', '2015-05-05', '操作管理部', '李中', '5180004531', '入职', '郭明星', '2015-05-05', '19', '');
INSERT INTO `xt_zm_number` VALUES ('275', '2015-05-05', '操作管理部', '黄仁峰', '5180004535', '入职', '郭明星', '2015-05-05', '19', '');
INSERT INTO `xt_zm_number` VALUES ('276', '2015-05-07', '操作管理部', '何小中', '5180004072', '离职', '郭明星', '2015-05-07', '19', '');
INSERT INTO `xt_zm_number` VALUES ('277', '2015-05-07', '操作管理部', '衷诚镖', '5180004322', '离职', '郭明星', '2015-05-07', '19', '');
INSERT INTO `xt_zm_number` VALUES ('278', '2015-05-07', '操作管理部', '唐志豪', '5180004579', '离职', '郭明星', '2015-05-07', '19', '');
INSERT INTO `xt_zm_number` VALUES ('279', '2015-05-08', '网点管理部', '钟媚', '5180008732', '离职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('28', '2015-03-19', '操作部', '程盼', '5180004550', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('280', '2015-05-08', '分拨点管理中心 ', '顾冬红', '5180008700', '离职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('281', '2015-05-09', '财务部', '邓霏', '5180008913', '入职', '郭明星', '2015-05-09', '19', '');
INSERT INTO `xt_zm_number` VALUES ('282', '2015-05-08', '操作管理部', '李金辉', '5180004353', '入职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('283', '2015-05-08', '操作管理部', '李洪飞', '5180004354', '入职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('284', '2015-05-08', '操作管理部', '李香柱', '5180004508', '入职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('285', '2015-05-08', '操作管理部', '龚本军', '5180004537', '入职', '郭明星', '2015-05-08', '19', '');
INSERT INTO `xt_zm_number` VALUES ('286', '2015-05-09', '财务部', '戴桃玲 ', '5180008918', '入职', '郭明星', '2015-05-09', '19', '');
INSERT INTO `xt_zm_number` VALUES ('287', '2015-05-11', '网点管理部', '刘旭光', '5180008715', '入职', '郭明星', '2015-05-11', '20', '');
INSERT INTO `xt_zm_number` VALUES ('288', '2015-05-12', '内控部 ', '潘永卿', '5180008860', '入职', '郭明星', '2015-05-12', '20', '');
INSERT INTO `xt_zm_number` VALUES ('289', '2015-05-12', '内控部 ', '李振宇', '5180008602', '入职', '郭明星', '2015-05-12', '20', '');
INSERT INTO `xt_zm_number` VALUES ('29', '2015-03-19', '操作部', '程风霞', '5180004549', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('290', '2015-05-12', '内控部 ', '黄晓雯', '5180008606', '入职', '郭明星', '2015-05-12', '20', '');
INSERT INTO `xt_zm_number` VALUES ('291', '2015-05-14', '外围运输部', '刘运培', '5180008723', '入职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('292', '2015-05-14', '质控部', '陈淡华', '5180008871', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('293', '2015-05-14', '操作管理部', '陈惠', '5180004071', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('294', '2015-05-14', '操作管理部', '陈惠', '5180004311', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('295', '2015-05-14', '操作管理部', '粟连连', '5180004096', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('296', '2015-05-14', '操作管理部', '李树雄', '5180004692', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('297', '2015-05-14', '操作管理部', '刘君', '5180004597', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('298', '2015-05-14', '操作管理部', '邓秘', '5180004676', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('299', '2015-05-14', '操作管理部', '谢昆', '5180001012', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('3', '2015-03-10', '操作部', '章悦萍', '5180004571', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('30', '2015-03-19', '操作部', '吴小燕', '5180004551', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('300', '2015-05-14', '操作管理部', '唐友良', '5180004507', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('301', '2015-05-14', '操作管理部', '刘安德', '5180008738', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('302', '2015-05-14', '操作管理部', '贺利平', '5180001021', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('303', '2015-05-14', '操作管理部', '李龙生', '5180004567', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('304', '2015-05-14', '操作管理部', '马秀兰', '5180001016', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('305', '2015-05-14', '操作管理部', '马秀兰', '5180004523', '离职', '郭明星', '2015-05-14', '20', '');
INSERT INTO `xt_zm_number` VALUES ('306', '2015-05-16', '操作管理部', '林景怡', '5180004076', '离职', '郭明星', '2015-05-16', '20', '');
INSERT INTO `xt_zm_number` VALUES ('307', '2015-05-16', '操作管理部', '林景怡', '5180004141', '离职', '郭明星', '2015-05-16', '20', '');
INSERT INTO `xt_zm_number` VALUES ('308', '2015-05-20', '仲裁部 ', '黄晓雯', '5180008606', '离职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('309', '2015-05-20', '操作管理部', '姜双', '5180004015', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('31', '2015-03-19', '操作部', '彭益飞', '5180004552', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('310', '2015-05-20', '操作管理部', '刘单敏', '5180004065', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('311', '2015-05-20', '操作管理部', '薛红', '5180004071', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('312', '2015-05-20', '操作管理部', '秦梅华', '5180004072', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('313', '2015-05-20', '操作管理部', '黄桂连', '5180004076', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('314', '2015-05-20', '操作管理部', '刘书琴', '5180004081', '入职', '郭明星', '2015-05-20', '21', '');
INSERT INTO `xt_zm_number` VALUES ('315', '2015-05-22', '网点管理部', '詹秋芳', '5180008731', '离职', '郭明星', '2015-05-22', '21', '');
INSERT INTO `xt_zm_number` VALUES ('316', '2015-05-22', '网点管理部', '陈倩倩', '5180008731', '入职', '郭明星', '2015-05-22', '21', '');
INSERT INTO `xt_zm_number` VALUES ('317', '2015-05-25', '质控部', '明丽雪', '5180008879', '入职', '郭明星', '2015-05-25', '22', '');
INSERT INTO `xt_zm_number` VALUES ('318', '2015-05-25', '仲裁部', '蔡霞', '5180004233', '入职', '郭明星', '2015-05-25', '22', '');
INSERT INTO `xt_zm_number` VALUES ('319', '2015-05-26', '仲裁部', '贺雨 ', '5180008606', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('32', '2015-03-19', '操作部', '江世军', '5180004553', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('320', '2015-05-26', '操作管理部', '宋清荣', '5180004523', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('321', '2015-05-26', '操作管理部', '杨建', '5180004544', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('322', '2015-05-26', '操作管理部', '蔡浠浠', '5180004318', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('323', '2015-05-26', '操作管理部', '许权铭', '5180004311', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('324', '2015-05-26', '操作管理部', '许权铭', '5180004012', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('325', '2015-05-26', '操作管理部', '石建宝', '5180004013', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('326', '2015-05-26', '操作管理部', '蔡浠浠', '5180004010', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('327', '2015-05-26', '操作管理部', '张宗莲', '5180004000', '入职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('328', '2015-05-26', '操作管理部', '黄祥', '5180004132', '离职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('329', '2015-05-26', '操作管理部', '赵庆爽', '5180004665', '离职', '郭明星', '2015-05-26', '22', '');
INSERT INTO `xt_zm_number` VALUES ('33', '2015-03-19', '操作部', '赖强', '5180004307', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('330', '2015-05-29', '操作管理部', '陈长姣', '5180004541', '离职', '郭明星', '2015-05-29', '22', '');
INSERT INTO `xt_zm_number` VALUES ('331', '2015-05-29', '操作管理部', '张优堂', '5180004004', '离职', '郭明星', '2015-05-29', '22', '');
INSERT INTO `xt_zm_number` VALUES ('332', '2015-06-03', '操作管理部', '唐可求', '5180004131', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('333', '2015-06-03', '操作管理部', '赵肖丰', '5180004534', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('334', '2015-06-03', '操作管理部', '邝寿生', '5180004528', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('335', '2015-06-03', '操作管理部', '罗日表', '5180004520', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('336', '2015-06-03', '操作管理部', '陈文滔', '5180004660', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('337', '2015-06-03', '操作管理部', '何启乐', '5180004574', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('338', '2015-06-03', '操作管理部', '杨航', '5180004554', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('339', '2015-06-03', '操作管理部', '林茂琛', '5180004527', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('34', '2015-03-19', '操作部', '邓宜龙', '5180004308', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('340', '2015-06-03', '操作管理部', '邓宜龙', '5180004308', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('341', '2015-06-03', '操作管理部', '赖强', '5180004307', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('342', '2015-06-03', '仲裁部', '陈思婷', '5180008612', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('343', '2015-06-03', '操作管理部', '陈家鸿', '5180004605', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('344', '2015-06-03', '操作管理部', '黄兰福', '5180004056', '离职', '郭明星', '2015-06-03', '23', '');
INSERT INTO `xt_zm_number` VALUES ('345', '2015-06-04', '操作管理部', '周俊龙', '5180004338', '离职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('346', '2015-06-04', '操作管理部', '张坤', '5180004520', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('347', '2015-06-04', '操作管理部', '韩大闯', '5180004527', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('348', '2015-06-04', '操作管理部', '姜小贞', '5180004528', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('349', '2015-06-04', '操作管理部', '徐美群', '5180004534', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('35', '2015-03-19', '操作部', '张陌生', '5180004303', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('350', '2015-06-04', '操作管理部', '唐植富', '5180004541', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('351', '2015-06-04', '操作管理部', '夏琦', '5180004545', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('352', '2015-06-04', '操作管理部', '易应祥', '5180004554', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('353', '2015-06-04', '操作管理部', '姜双', '5180004556', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('354', '2015-06-04', '操作管理部', '柯有正 ', '5180004567', '入职', '郭明星', '2015-06-04', '23', '');
INSERT INTO `xt_zm_number` VALUES ('355', '2015-06-05', '操作管理部', '周厚得', '5180004764', '离职', '郭明星', '2015-06-05', '23', '');
INSERT INTO `xt_zm_number` VALUES ('356', '2015-06-05', '操作管理部', '宋清荣', '5180004523', '离职', '郭明星', '2015-06-05', '23', '');
INSERT INTO `xt_zm_number` VALUES ('357', '2015-06-05', '操作管理部', '杨建', '5180004544', '离职', '郭明星', '2015-06-05', '23', '');
INSERT INTO `xt_zm_number` VALUES ('358', '2015-06-10', '操作管理部', '胡中原 ', '5180004231', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('359', '2015-06-10', '操作管理部', '赵文军', '5180004575', '离职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('36', '2015-03-19', '操作部', '欧阳池', '5180004309', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('360', '2015-06-10', '操作管理部', '李忠生', '5180004519', '离职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('361', '2015-06-10', '操作管理部', '廖顺杨', '5180004005', '离职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('362', '2015-06-10', '操作管理部', '赵理端', '5180004623', '离职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('363', '2015-06-10', '操作管理部', '李佳丽', '5180008932', '离职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('364', '2015-06-10', '操作管理部', '梁院生', '5180004519', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('365', '2015-06-10', '操作管理部', '覃基彬', '5180004523', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('366', '2015-06-10', '操作管理部', '黄广恩', '5180004544', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('367', '2015-06-10', '操作管理部', '张家培', '5180004574', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('368', '2015-06-10', '操作管理部', '吴飞乐', '5180004575', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('369', '2015-06-10', '操作管理部', '胡治海', '5180004579', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('37', '2015-03-19', '操作部', '叶艳青', '5180004006', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('370', '2015-06-10', '操作管理部', '尹成光', '5180004582', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('371', '2015-06-10', '操作管理部', '谭胜平', '5180004583', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('372', '2015-06-10', '操作管理部', '聂武奎', '5180004590', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('373', '2015-06-10', '操作管理部', '于奉仁', '5180004592', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('374', '2015-06-10', '操作管理部', '詹富城', '5180004593', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('375', '2015-06-10', '操作管理部', '谢令仁', '5180004597', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('376', '2015-06-10', '操作管理部', '陶勇', '5180004598', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('377', '2015-06-10', '操作管理部', '曾祥萍', '5180004600', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('378', '2015-06-10', '操作管理部', '李映红', '5180004603', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('379', '2015-06-10', '操作管理部', '李春兰', '5180004604', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('38', '2015-03-19', '操作部', '匡润兰', '5180004007', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('380', '2015-06-10', '操作管理部', '米冬雪', '5180004605', '入职', '郭明星', '2015-06-10', '24', '');
INSERT INTO `xt_zm_number` VALUES ('381', '2015-06-16', '操作管理部', '隆楚雄', '5180004675', '离职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('382', '2015-06-16', '操作管理部', '谭胜平', '5180004583', '离职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('383', '2015-06-16', '操作管理部', '乐俊辉', '5180004125', '离职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('384', '2015-06-16', '财务部', '张保国', '5180008802', '离职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('385', '2015-06-16', '操作管理部', '赵旭烨', '5180004627', '离职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('386', '2015-06-16', '信息与流程管理部', '王赋', '5180008824', '入职', '郭明星', '2015-06-16', '25', '');
INSERT INTO `xt_zm_number` VALUES ('387', '2015-06-17', '质控部', '李书艳', '5180008867', '入职', '郭明星', '2015-06-17', '25', '');
INSERT INTO `xt_zm_number` VALUES ('388', '2015-06-19', '仲裁部', '陆霞容 ', '5180008609', '入职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('389', '2015-06-19', '仲裁部', '罗佳 ', '5180008610', '入职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('39', '2015-03-19', '操作部', '李珍秀', '5180004016', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('390', '2015-06-19', '仲裁部', '李妹芳 ', '5180008612', '入职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('391', '2015-06-19', '操作管理部', '严冬', '5180004002', '离职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('392', '2015-06-19', '操作管理部', '张鸣星', '5180004041', '离职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('393', '2015-06-19', '操作管理部', '刘秋香', '5180004051', '离职', '郭明星', '2015-06-19', '25', '');
INSERT INTO `xt_zm_number` VALUES ('394', '2015-06-24', '操作管理部', '曾嘉', '5180004106', '离职', '郭明星', '2015-06-24', '26', '');
INSERT INTO `xt_zm_number` VALUES ('395', '2015-06-24', '操作管理部', '蔡森涛', '5180004691', '离职', '郭明星', '2015-06-24', '26', '');
INSERT INTO `xt_zm_number` VALUES ('396', '2015-06-24', '操作管理部', '唐启东', '5180004608', '离职', '郭明星', '2015-06-24', '26', '');
INSERT INTO `xt_zm_number` VALUES ('397', '2015-06-25', '操作管理部', '杨宇', '5180004623', '离职', '郭明星', '2015-06-25', '26', '');
INSERT INTO `xt_zm_number` VALUES ('398', '2015-06-29', '操作管理部', '庹明莲', '5180004089', '离职', '郭明星', '2015-06-29', '27', '');
INSERT INTO `xt_zm_number` VALUES ('399', '2015-06-29', '操作管理部', '古丽文', '5180004122', '离职', '郭明星', '2015-06-29', '27', '');
INSERT INTO `xt_zm_number` VALUES ('4', '2015-03-10', '操作部', '方古英', '5180004572', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('40', '2015-03-19', '操作部', '郑玉芳', '5180004028', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('400', '2015-06-29', '操作管理部', '欧任红', '5180004093', '离职', '郭明星', '2015-06-29', '27', '');
INSERT INTO `xt_zm_number` VALUES ('401', '2015-06-30', '操作管理部', '谢明明', '5180004307', '入职', '郭明星', '2015-06-30', '27', '');
INSERT INTO `xt_zm_number` VALUES ('402', '2015-06-30', '操作管理部', '谢海', '5180004308', '入职', '郭明星', '2015-06-30', '27', '');
INSERT INTO `xt_zm_number` VALUES ('403', '2015-06-30', '操作管理部', '粱清亮', '5180004322', '入职', '郭明星', '2015-06-30', '27', '');
INSERT INTO `xt_zm_number` VALUES ('404', '2015-06-30', '操作管理部', '鲜永祥', '5180004323', '入职', '郭明星', '2015-06-30', '27', '');
INSERT INTO `xt_zm_number` VALUES ('405', '2015-07-01', '操作管理部', '彭亮明', '5180004623', '入职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('406', '2015-07-01', '操作管理部', '杨超 ', '5180004627', '入职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('407', '2015-07-01', '操作管理部', '罗代清', '5180004589', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('408', '2015-07-01', '操作管理部', '晏福勇', '5180001015', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('409', '2015-07-01', '操作管理部', '晏福勇', '5180004351', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('41', '2015-03-19', '操作部', '杨先碧', '5180004037', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('410', '2015-07-01', '仲裁部', '关叶青', '5180008623', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('411', '2015-07-01', '操作管理部', '刘建设', '5180004349', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('412', '2015-07-01', '内控部', '陈鹏', '5180008873', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('413', '2015-07-01', '仲裁部', '黄考满', '5180008604', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('414', '2015-07-01', '仲裁部', '郝慧', '5180008601', '离职', '郭明星', '2015-07-01', '27', '');
INSERT INTO `xt_zm_number` VALUES ('415', '2015-07-02', '操作管理部', '黄爱红', '5095822018', '入职', '郭明星', '2015-07-02', '27', '');
INSERT INTO `xt_zm_number` VALUES ('416', '2015-07-02', '操作管理部', '温旭华', '5095822017', '入职', '郭明星', '2015-07-02', '27', '');
INSERT INTO `xt_zm_number` VALUES ('417', '2015-07-03', '操作管理部', '危才', '5180004594', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('418', '2015-07-03', '操作管理部', '许鹏', '5180004130', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('419', '2015-07-03', '操作管理部', '周奇奇', '5180004046', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('42', '2015-03-19', '操作部', '邓良琼', '5180004038', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('420', '2015-07-03', '操作管理部', '覃基彬', '5180004523', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('421', '2015-07-03', '操作管理部', '江德胜', '5180004584', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('422', '2015-07-03', '操作管理部', '吴乾铭', '5180004606', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('423', '2015-07-03', '操作管理部', '卢坚焕', '5095822007', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('424', '2015-07-03', '操作管理部', '苏伟安', '5180004129', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('425', '2015-07-03', '操作管理部', '张贝', '5180008902', '入职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('426', '2015-07-03', '操作管理部', '焦丰芳', '5180008904', '入职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('427', '2015-07-03', '操作管理部', '张萍 ', '5095821018', '入职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('428', '2015-07-03', '操作管理部', '伍春花', '5095821019', '入职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('429', '2015-07-03', '操作管理部', '韩祥泰', '5180004002', '入职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('43', '2015-03-19', '操作部', '罗小红', '5180004045', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('430', '2015-07-03', '操作管理部', '晏福勇', '5095821010', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('431', '2015-07-03', '操作管理部', '晏福勇', '5095822006', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('432', '2015-07-03', '操作管理部', '陈文专', '5180001015', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('433', '2015-07-03', '操作管理部', '岑伟观', '5180004698', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('434', '2015-07-03', '操作管理部', '岑伟观', '5095821016', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('435', '2015-07-03', '操作管理部', '冉左祥', '5095822005', '离职', '郭明星', '2015-07-03', '27', '');
INSERT INTO `xt_zm_number` VALUES ('436', '2015-07-06', '操作管理部', '王冠', '5180004504', '离职', '郭明星', '2015-07-06', '28', '');
INSERT INTO `xt_zm_number` VALUES ('437', '2015-07-06', '操作管理部', '覃映超', '5180004573', '离职', '郭明星', '2015-07-06', '28', '');
INSERT INTO `xt_zm_number` VALUES ('438', '2015-07-07', '操作管理部', '尹成光', '5180004582', '离职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('439', '2015-07-07', '操作管理部', '黄仁峰', '5180004535', '离职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('44', '2015-03-19', '操作部', '刘秋香', '5180004051', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('440', '2015-07-07', '操作管理部', '杨俊钱', '5180004674', '离职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('441', '2015-07-07', '仲裁部', '许开英', '5180008629', '离职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('442', '2015-07-07', '仲裁部', '李金焕', '5180008614', '离职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('443', '2015-07-07', '操作管理部', '曾锐雄', '5180004108', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('444', '2015-07-07', '操作管理部', '吴友峰', '5180004106', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('445', '2015-07-07', '操作管理部', '许大豪', '5180004096', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('446', '2015-07-07', '操作管理部', '刘裕华', '5180004093', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('447', '2015-07-07', '操作管理部', '张霞光', '5180004090', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('448', '2015-07-07', '操作管理部', '王玖珍', '5180004089', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('449', '2015-07-07', '操作管理部', '王强', '5180004056', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('45', '2015-03-19', '操作部', '刘玲', '5180004059', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('450', '2015-07-07', '操作管理部', '刘丽芬', '5180004051', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('451', '2015-07-07', '操作管理部', '罗彬', '5180004048', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('452', '2015-07-07', '操作管理部', '苏小英', '5180004046', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('453', '2015-07-07', '操作管理部', '岑成英', '5180004041', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('454', '2015-07-07', '操作管理部', '唐阳山', '5180004005', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('455', '2015-07-07', '操作管理部', '李青程', '5180004004', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('456', '2015-07-07', '操作管理部', '岑伟好', '5180004685', '入职', '郭明星', '2015-07-07', '28', '');
INSERT INTO `xt_zm_number` VALUES ('457', '2015-07-09', '操作管理部', '李金辉', '5095821012', '离职', '郭明星', '2015-07-09', '28', '');
INSERT INTO `xt_zm_number` VALUES ('458', '2015-07-09', '质控部', '明丽雪', '5180008879', '离职', '郭明星', '2015-07-09', '28', '');
INSERT INTO `xt_zm_number` VALUES ('459', '2015-07-09', '操作管理部', '万兰兰', '5180008601', '入职', '郭明星', '2015-07-09', '28', '');
INSERT INTO `xt_zm_number` VALUES ('46', '2015-03-19', '操作部', '甘芳丽', '5180004063', '入职', '郭明星', '2015-03-19', '12', '');
INSERT INTO `xt_zm_number` VALUES ('460', '2015-07-09', '质控部', '阳秀美', '5180008604', '入职', '郭明星', '2015-07-09', '28', '');
INSERT INTO `xt_zm_number` VALUES ('461', '2015-07-13', '质控部', '张丹', '5180008876', '离职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('462', '2015-07-13', '质控部', '张智智', '5180008863', '离职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('463', '2015-07-13', '结算部', '秦永峰', '5180008935', '离职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('464', '2015-07-13', '操作管理部', '殷浩', '5180004301', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('465', '2015-07-13', '操作管理部', '胡有才', '5180004114', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('466', '2015-07-13', '操作管理部', '姚俊发', '5180004116', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('467', '2015-07-13', '操作管理部', '李靖', '5180004119', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('468', '2015-07-13', '操作管理部', '赵伯庭', '5180004121', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('469', '2015-07-13', '操作管理部', '覃道涛', '5180004122', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('47', '2015-03-23', '操作部', '肖瑞委', '5180004340', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('470', '2015-07-13', '操作管理部', '贺军', '5180004125', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('471', '2015-07-13', '操作管理部', '苏振', '5180004120', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('472', '2015-07-13', '操作管理部', '沈家俊', '5180004129', '入职', '郭明星', '2015-07-13', '29', '');
INSERT INTO `xt_zm_number` VALUES ('473', '2015-07-14', '操作管理部', '卢凤锦', '5095822009', '离职', '郭明星', '2015-07-14', '29', '');
INSERT INTO `xt_zm_number` VALUES ('474', '2015-07-14', '操作管理部', '李飞飞', '5095821009', '离职', '郭明星', '2015-07-14', '29', '');
INSERT INTO `xt_zm_number` VALUES ('475', '2015-07-14', '操作管理部', '曾广星', '5095821011', '离职', '郭明星', '2015-07-14', '29', '');
INSERT INTO `xt_zm_number` VALUES ('476', '2015-07-14', '操作管理部', '王强', '5180004056', '离职', '郭明星', '2015-07-14', '29', '');
INSERT INTO `xt_zm_number` VALUES ('477', '2015-07-15', '操作管理部', '邹云辉', '5180004056', '入职', '郭明星', '2015-07-15', '29', '');
INSERT INTO `xt_zm_number` VALUES ('478', '2015-07-15', '操作管理部', '刘俊', '5095821009', '入职', '郭明星', '2015-07-15', '29', '');
INSERT INTO `xt_zm_number` VALUES ('479', '2015-07-15', '操作管理部', '刘乾皇', '5095821010', '入职', '郭明星', '2015-07-15', '29', '');
INSERT INTO `xt_zm_number` VALUES ('48', '2015-03-23', '操作部', '廖世国', '5180004341', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('480', '2015-07-18', '操作管理部', '李映东', '5180004607', '离职', '郭明星', '2015-07-18', '29', '');
INSERT INTO `xt_zm_number` VALUES ('481', '2015-07-18', '操作管理部', '唐阳山', '5180004005', '离职', '郭明星', '2015-07-18', '29', '');
INSERT INTO `xt_zm_number` VALUES ('482', '2015-07-21', '操作管理部', '钟坚辉', '5180004327', '离职', '郭明星', '2015-07-21', '30', '');
INSERT INTO `xt_zm_number` VALUES ('483', '2015-07-21', '操作管理部', '陆进达', '5180004095', '离职', '郭明星', '2015-07-21', '30', '');
INSERT INTO `xt_zm_number` VALUES ('484', '2015-07-21', '质控部', '邹培', '5180008863', '入职', '郭明星', '2015-07-21', '30', '');
INSERT INTO `xt_zm_number` VALUES ('485', '2015-07-27', '操作管理部', '刘柱', '5095822010', '离职', '郭明星', '2015-07-27', '31', '');
INSERT INTO `xt_zm_number` VALUES ('486', '2015-07-27', '结算部', '王敏', '5180008936', '离职', '郭明星', '2015-07-27', '31', '');
INSERT INTO `xt_zm_number` VALUES ('487', '2015-07-28', '操作管理部', '粟海波', '5180004504', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('488', '2015-07-28', '操作管理部', '龙章喜', '5180004523', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('489', '2015-07-28', '操作管理部', '龚磊', '5180004535', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('49', '2015-03-23', '操作部', '衷诚镖', '5180004322', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('490', '2015-07-28', '操作管理部', '陈爱军', '5180004573', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('491', '2015-07-28', '操作管理部', '何进文', '5180004578', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('492', '2015-07-28', '操作管理部', '冯家梁', '5180004582', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('493', '2015-07-28', '操作管理部', '黎际武', '5180004584', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('494', '2015-07-28', '操作管理部', '罗振平', '5180004589', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('495', '2015-07-28', '操作管理部', '唐家文', '5180004594', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('496', '2015-07-28', '操作管理部', '丁江发', '5180004606', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('497', '2015-07-28', '操作管理部', '刘延辉', '5180004607', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('498', '2015-07-28', '操作管理部', '刘春光', '5180004608', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('499', '2015-07-28', '操作管理部', '韩祥泰', '5180004002', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('5', '2015-03-10', '操作部', '何启欢', '5180004579', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('50', '2015-03-23', '操作部', '李国垚', '5180004603', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('500', '2015-07-28', '操作管理部', '张敏', '5180004633', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('501', '2015-07-28', '操作管理部', '孔毅', '5180004634', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('502', '2015-07-28', '操作管理部', '王强', '5180004636', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('503', '2015-07-28', '操作管理部', '胡宝华', '5180004642', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('504', '2015-07-28', '操作管理部', '肖华', '5180004643', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('505', '2015-07-28', '操作管理部', '张继臣', '5180004644', '入职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('506', '2015-07-28', '操作管理部', '龚奇', '5095821003', '离职', '郭明星', '2015-07-28', '31', '');
INSERT INTO `xt_zm_number` VALUES ('507', '2015-08-03', '操作管理部', '刘渊渊', '5180004128', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('508', '2015-08-03', '操作管理部', '聂志军', '5180004130', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('509', '2015-08-03', '操作管理部', '刘善军', '5180004131', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('51', '2015-03-23', '操作部', '王庆超', '5180004604', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('510', '2015-08-03', '操作管理部', '唐先明', '5180004132', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('511', '2015-08-03', '操作管理部', '罗燕流', '5180004141', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('512', '2015-08-03', '操作管理部', '李王祥', '5180004145', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('513', '2015-08-03', '操作管理部', '蒙开猛', '5180004146', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('514', '2015-08-03', '操作管理部', '周学兵', '5180004078', '入职', '郭明星', '2015-08-03', '32', '');
INSERT INTO `xt_zm_number` VALUES ('515', '2015-08-04', '内控部', '李峰', '5180008872', '离职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('516', '2015-08-04', '操作管理部', '邹云辉', '5180004056', '离职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('517', '2015-08-04', '操作管理部', '张清平', '5180004609', '离职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('518', '2015-08-04', '信息与流程管理部', '彭晃', '5180008816', '离职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('519', '2015-08-04', '操作管理部', '周烈', '5180004691', '入职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('52', '2015-03-23', '操作部', '陈家鸿', '5180004605', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('520', '2015-08-04', '操作管理部', '钟晓春', '5180004692', '入职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('521', '2015-08-04', '操作管理部', '刘飞乃', '5095821003', '入职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('522', '2015-08-04', '操作管理部', '李永康', '5095821012', '入职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('523', '2015-08-04', '操作管理部', '陈启聪', '5095821015', '入职', '郭明星', '2015-08-04', '32', '');
INSERT INTO `xt_zm_number` VALUES ('524', '2015-08-07', '操作管理部', '林长美', '5180004631', '入职', '郭明星', '2015-08-07', '32', '');
INSERT INTO `xt_zm_number` VALUES ('525', '2015-08-10', '仲裁部', '郭丽蓉', '5180008625', '入职', '郭明星', '2015-08-10', '33', '');
INSERT INTO `xt_zm_number` VALUES ('526', '2015-08-13', '操作管理部', '但鑫洋', '5180004230', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('527', '2015-08-13', '操作管理部', '朱亚东', '5180004601', '离职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('528', '2015-08-13', '操作管理部', '李青程', '5180004004', '离职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('529', '2015-08-13', '操作管理部', '罗小红', '5180004696', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('53', '2015-03-23', '操作部', '吴乾铭', '5180004606', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('530', '2015-08-13', '操作管理部', '叶艳青', '5180004698', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('531', '2015-08-13', '操作管理部', '甘芳丽', '5180004699', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('532', '2015-08-13', '操作管理部', '刘书琴', '5180004670', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('533', '2015-08-13', '操作管理部', '姜双', '5180004671', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('534', '2015-08-13', '操作管理部', '危文武', '5180004052', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('535', '2015-08-13', '操作管理部', '胡亚邦', '5180004056', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('536', '2015-08-13', '操作管理部', '邱双', '5180004147', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('537', '2015-08-13', '操作管理部', '詹凯钧', '5180004148', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('538', '2015-08-13', '操作管理部', '曾增', '5180004149', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('539', '2015-08-13', '分拨点管理部', '熊佳', '5180008754', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('54', '2015-03-23', '操作部', '李映东', '5180004607', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('540', '2015-08-13', '质控部', '周鹏飞', '5180008872', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('541', '2015-08-13', '操作管理部', '唐辉', '5180004331', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('542', '2015-08-13', '操作管理部', '孙传军', '5180004333', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('543', '2015-08-13', '操作管理部', '蓝海洁', '5180004337', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('544', '2015-08-13', '操作管理部', '潘亮', '5180004338', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('545', '2015-08-13', '操作管理部', '穆可超', '5180004339', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('546', '2015-08-13', '操作管理部', '李军华', '5180004340', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('547', '2015-08-13', '操作管理部', '高金宗', '5180004341', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('548', '2015-08-13', '操作管理部', '黄运林', '5180004345', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('549', '2015-08-13', '质控部', '刘洋', '5180008876', '入职', '郭明星', '2015-08-13', '33', '');
INSERT INTO `xt_zm_number` VALUES ('55', '2015-03-23', '操作部', '李勤', '5180004608', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('550', '2015-08-14', '仲裁部', '郭丽蓉', '5180008625', '离职', '郭明星', '2015-08-14', '33', '');
INSERT INTO `xt_zm_number` VALUES ('551', '2015-08-14', '操作管理部', '黄涛', '5180004235', '入职', '郭明星', '2015-08-14', '33', '');
INSERT INTO `xt_zm_number` VALUES ('552', '2015-08-18', '仲裁部 ', '郑晓敏 ', '5180008625', '入职', '郭明星', '2015-08-18', '34', '');
INSERT INTO `xt_zm_number` VALUES ('553', '2015-08-18', '操作管理部', '雷智清', '5180004559', '离职', '郭明星', '2015-08-18', '34', '');
INSERT INTO `xt_zm_number` VALUES ('554', '2015-08-18', '操作管理部', '何进文', '5180004578', '离职', '郭明星', '2015-08-18', '34', '');
INSERT INTO `xt_zm_number` VALUES ('555', '2015-08-18', '操作管理部', '刘延辉', '5180004607', '离职', '郭明星', '2015-08-18', '34', '');
INSERT INTO `xt_zm_number` VALUES ('556', '2015-08-18', '操作管理部', '陈爱军', '5180004573', '离职', '郭明星', '2015-08-18', '34', '');
INSERT INTO `xt_zm_number` VALUES ('557', '2015-08-21', '仲裁部', '陈燕', '5180008626', '入职', '郭明星', '2015-08-21', '34', '');
INSERT INTO `xt_zm_number` VALUES ('558', '2015-08-21', '操作管理部', '刘渊渊', '5180004128', '离职', '郭明星', '2015-08-21', '34', '');
INSERT INTO `xt_zm_number` VALUES ('559', '2015-08-21', '操作管理部', '李永康', '5095821012', '离职', '郭明星', '2015-08-21', '34', '');
INSERT INTO `xt_zm_number` VALUES ('56', '2015-03-23', '操作部', '黄美霞', '5180004062', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('560', '2015-08-25', '人力资源部', '陈婵', '5180008855', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('561', '2015-08-25', '人力资源部', '李牡珍', '5180008850', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('562', '2015-08-25', '操作管理部', '姚俊发', '5180004116', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('563', '2015-08-25', '操作管理部', '许权铭', '5180004012', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('564', '2015-08-25', '操作管理部', '许权铭', '5180004311', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('565', '2015-08-25', '操作管理部', '殷浩', '5180004301', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('566', '2015-08-25', '操作管理部', '黎际武', '5180004584', '离职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('567', '2015-08-25', '操作管理部', '沈凤英', '5095822005', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('568', '2015-08-25', '操作管理部', '阙泽维', '5095822006', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('569', '2015-08-25', '操作管理部', '唐清', '5095822007', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('57', '2015-03-23', '操作部', '吴慧玲', '5180004060', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('570', '2015-08-25', '操作管理部', '罗正五', '5095822017', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('571', '2015-08-25', '操作管理部', '肖瑞委', '5095822010', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('572', '2015-08-25', '操作管理部', '张萍', '5095822019', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('573', '2015-08-25', '操作管理部', '廖世国', '5095822020', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('574', '2015-08-25', '操作管理部', '王辉', '5095822021', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('575', '2015-08-25', '操作管理部', '李洪飞', '5095822022', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('576', '2015-08-25', '操作管理部', '刘飞乃', '5095822009', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('577', '2015-08-25', '财务部', '邵凤立', '51800089053', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('578', '2015-08-25', '操作管理部', '廖壮壮', '5180004004', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('579', '2015-08-25', '操作管理部', '陈龙生', '5180004611', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('58', '2015-03-23', '操作部', '陈慧', '5180004070', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('580', '2015-08-25', '操作管理部', '罗树广', '5180004559', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('581', '2015-08-25', '操作管理部', '许大豪', '5180004096', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('582', '2015-08-25', '操作管理部', '黎东', '5180004578', '入职', '郭明星', '2015-08-25', '35', '');
INSERT INTO `xt_zm_number` VALUES ('583', '2015-08-28', '内控部', '曾亮', '5180008879', '入职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('584', '2015-08-28', '操作管理部', '黄建平', '5180004301', '入职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('585', '2015-08-28', '操作管理部', '李王祥', '5180004311', '入职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('586', '2015-08-28', '操作管理部', '冉左祥', '5095822023', '入职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('587', '2015-08-28', '分拨点管理部', '徐小婷', '5180008751', '离职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('588', '2015-08-28', '操作管理部', '刘俊 ', '5095821009', '离职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('589', '2015-08-28', '操作管理部', '刘乾皇', '5092821010', '离职', '郭明星', '2015-08-28', '35', '');
INSERT INTO `xt_zm_number` VALUES ('59', '2015-03-23', '操作部', '李永辉', '5180004067', '入职', '郭明星', '2015-03-23', '13', '');
INSERT INTO `xt_zm_number` VALUES ('590', '2015-08-29', '操作管理部', '刘善军', '5180004131', '离职', '郭明星', '2015-08-29', '35', '');
INSERT INTO `xt_zm_number` VALUES ('591', '2015-08-29', '操作管理部', '肖华', '5180004643', '离职', '郭明星', '2015-08-29', '35', '');
INSERT INTO `xt_zm_number` VALUES ('592', '2015-09-01', '操作管理部', '覃多英', '5180004115', '离职', '郭明星', '2015-09-01', '36', '');
INSERT INTO `xt_zm_number` VALUES ('593', '2015-09-01', '操作管理部', '聂武奎', '5180004590', '离职', '郭明星', '2015-09-01', '36', '');
INSERT INTO `xt_zm_number` VALUES ('594', '2015-09-01', '操作管理部', '詹凯钧', '5180004148', '离职', '郭明星', '2015-09-01', '36', '');
INSERT INTO `xt_zm_number` VALUES ('595', '2015-09-01', '操作管理部', '邱双', '5180004147', '离职', '郭明星', '2015-09-01', '36', '');
INSERT INTO `xt_zm_number` VALUES ('596', '2015-09-01', '操作管理部', '胡亚邦', '5180004056', '离职', '郭明星', '2015-09-01', '36', '');
INSERT INTO `xt_zm_number` VALUES ('597', '2015-09-02', '信息与流程管理部', '王赋', '5180008824', '离职', '郭明星', '2015-09-02', '36', '');
INSERT INTO `xt_zm_number` VALUES ('598', '2015-09-02', '操作管理部', '贺军', '5180004125', '离职', '郭明星', '2015-09-02', '36', '');
INSERT INTO `xt_zm_number` VALUES ('599', '2015-09-02', '操作管理部', '但鑫洋', '5180004230', '离职', '郭明星', '2015-09-02', '36', '');
INSERT INTO `xt_zm_number` VALUES ('6', '2015-03-10', '操作部', '熊德利', '5180004585', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('60', '2015-03-26', '内控部', '余诗华', '5180008874', '入职', '郭明星', '2015-03-26', '13', '');
INSERT INTO `xt_zm_number` VALUES ('600', '2015-09-07', '操作管理部', '罗树广', '5180004559', '离职', '郭明星', '2015-09-07', '37', '');
INSERT INTO `xt_zm_number` VALUES ('601', '2015-09-08', '操作管理部', '袁小林', '5180008880', '入职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('602', '2015-09-08', '操作管理部', '罗海珠 ', '5180008626', '入职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('603', '2015-09-08', '操作管理部', '周秋才', '5180004577', '离职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('604', '2015-09-08', '操作管理部', '陈平彩', '5180004030', '离职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('605', '2015-09-08', '操作管理部', '彭亮明', '5180004623', '离职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('606', '2015-09-08', '操作管理部', '韦若邓', '5180004700', '入职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('607', '2015-09-08', '操作管理部', '盘辰平', '5180004701', '入职', '郭明星', '2015-09-08', '37', '');
INSERT INTO `xt_zm_number` VALUES ('608', '2015-09-12', '操作管理部', '张行', '5180004150', '离职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('609', '2015-09-12', '操作管理部', '李靖', '5180004119', '离职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('61', '2015-03-26', '内控部', '郑晖 ', '5180008875', '入职', '郭明星', '2015-03-26', '13', '');
INSERT INTO `xt_zm_number` VALUES ('610', '2015-09-12', '操作管理部', '谢明明', '5180004307', '离职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('611', '2015-09-12', '操作管理部', '覃道涛', '5180004122', '离职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('612', '2015-09-12', '操作管理部', '庞超', '5180004622', '离职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('613', '2015-09-12', '操作管理部', '张全', '5180004150', '入职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('614', '2015-09-12', '操作管理部', '宋群蓝', '5180004119', '入职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('615', '2015-09-12', '操作管理部', '李伟', '5180004122', '入职', '郭明星', '2015-09-12', '37', '');
INSERT INTO `xt_zm_number` VALUES ('616', '2015-09-14', '信息与流程管理部', '刘会友', '5180008821', '入职', '郭明星', '2015-09-14', '38', '');
INSERT INTO `xt_zm_number` VALUES ('617', '2015-09-14', '内控部', '刘颖', '5180008881', '入职', '郭明星', '2015-09-14', '38', '');
INSERT INTO `xt_zm_number` VALUES ('618', '2015-09-17', '操作管理部', '李妹芳', '5180008612', '离职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('619', '2015-09-17', '操作管理部', '彭益飞', '5180004552', '离职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('62', '2015-03-26', '操作部', '李令', '5180004590', '离职', '郭明星', '2015-03-26', '13', '');
INSERT INTO `xt_zm_number` VALUES ('620', '2015-09-17', '操作管理部', '谢海', '5180004308', '离职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('621', '2015-09-17', '操作管理部', '王强', '5180004636', '离职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('622', '2015-09-17', '操作管理部', '姜小贞', '5180004528', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('623', '2015-09-17', '操作管理部', '刘立飞', '5180004552', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('624', '2015-09-17', '操作管理部', '刘立鸿', '5180004559', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('625', '2015-09-17', '操作管理部', '王磊', '5180004573', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('626', '2015-09-17', '操作管理部', '何伯勇', '5180004577', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('627', '2015-09-17', '操作管理部', '黎飞', '5180004601', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('628', '2015-09-17', '操作管理部', '罗振平', '5180004589', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('629', '2015-09-17', '操作管理部', '王远珊', '5095821009', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('63', '2015-03-26', '操作部', '罗丹', '5180004000', '离职', '郭明星', '2015-03-26', '13', '');
INSERT INTO `xt_zm_number` VALUES ('630', '2015-09-17', '操作管理部', '唐红霞', '5095821010', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('631', '2015-09-17', '操作管理部', '唐清', '5095821011', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('632', '2015-09-17', '操作管理部', '吴念', '5095821012', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('633', '2015-09-17', '操作管理部', '谢甜梅', '5095821016', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('634', '2015-09-17', '操作管理部', '刘秋芳', '5095821020', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('635', '2015-09-17', '操作管理部', '冉左祥', '5095821021', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('636', '2015-09-17', '操作管理部', '王远珊', '5095822024', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('637', '2015-09-17', '操作管理部', '吴念', '5095822025', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('638', '2015-09-17', '操作管理部', '谢甜梅', '5095822026', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('639', '2015-09-17', '操作管理部', '刘秋芳', '5095822027', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('64', '2015-03-30', '质控部', '张丹', '5180008876', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('640', '2015-09-17', '操作管理部', '冉左祥', '5095822023', '入职', '郭明星', '2015-09-17', '38', '');
INSERT INTO `xt_zm_number` VALUES ('641', '2015-09-22', '人力资源部', '叶天升', '5180008854', '离职', '郭明星', '2015-09-22', '39', '');
INSERT INTO `xt_zm_number` VALUES ('642', '2015-09-22', '操作管理部', '黄广恩', '5180004544', '离职', '郭明星', '2015-09-22', '39', '');
INSERT INTO `xt_zm_number` VALUES ('643', '2015-09-23', '操作管理部', '伍春花', '5095822028', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('644', '2015-09-23', '操作管理部', '许川', '5180004544', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('645', '2015-09-23', '操作管理部', '胡小明', '5180004584', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('646', '2015-09-23', '操作管理部', '赵文', '5180004607', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('647', '2015-09-23', '操作管理部', '赵孝杏', '5180004622', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('648', '2015-09-23', '操作管理部', '沈家俊', '5180004129', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('649', '2015-09-23', '操作管理部', '刘洋', '5180004056', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('65', '2015-03-30', '质控部', '毛炜', '5180008877', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('650', '2015-09-23', '操作管理部', '黄涛', '5180004115', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('651', '2015-09-23', '操作管理部', '姚伟', '5180004623', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('652', '2015-09-23', '操作管理部', '叶为维', '5180004643', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('653', '2015-09-23', '操作管理部', '李芳芳', '5180004645', '入职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('654', '2015-09-23', '操作管理部', '黄维维', '5180004116', '离职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('655', '2015-09-23', '操作管理部', '兰霞', '5180004084', '离职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('656', '2015-09-23', '操作管理部', '兰霞', '5180004139', '离职', '郭明星', '2015-09-23', '39', '');
INSERT INTO `xt_zm_number` VALUES ('657', '2015-09-25', '仲裁部 ', '徐瑶', '5180008612', '入职', '郭明星', '2015-09-25', '39', '');
INSERT INTO `xt_zm_number` VALUES ('658', '2015-09-25', '操作管理部', '赵伯庭', '5180004121', '离职', '郭明星', '2015-09-25', '39', '');
INSERT INTO `xt_zm_number` VALUES ('659', '2015-09-25', '操作管理部', '李中', '5180004531', '离职', '郭明星', '2015-09-25', '39', '');
INSERT INTO `xt_zm_number` VALUES ('66', '2015-03-30', '质控部', '魏腾飞', '5180008878', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('660', '2015-09-28', '操作管理部', '黄仁芝', '5180004099', '离职', '郭明星', '2015-09-28', '40', '');
INSERT INTO `xt_zm_number` VALUES ('661', '2015-09-28', '操作管理部', '张家培', '5180004574', '离职', '郭明星', '2015-09-28', '40', '');
INSERT INTO `xt_zm_number` VALUES ('662', '2015-09-30', '操作管理部', '赖炎杰', '5180004324', '离职', '郭明星', '2015-09-30', '40', '');
INSERT INTO `xt_zm_number` VALUES ('663', '2015-09-30', '操作管理部', '覃多枚', '5180004680', '离职', '郭明星', '2015-09-30', '40', '');
INSERT INTO `xt_zm_number` VALUES ('664', '2015-09-30', '仲裁部', '薛莉琼', '5180008630', '离职', '郭明星', '2015-09-30', '40', '');
INSERT INTO `xt_zm_number` VALUES ('665', '2015-09-30', '操作管理部', '赵文', '5180004607', '离职', '郭明星', '2015-09-30', '40', '');
INSERT INTO `xt_zm_number` VALUES ('666', '2015-10-08', '仲裁部 ', '赖丽芳', '5180008627', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('667', '2015-10-08', '操作管理部', '林财武', '5180004531', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('668', '2015-10-08', '操作管理部', '张建华', '5180004574', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('669', '2015-10-08', '操作管理部', '李九洲', '5180004590', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('67', '2015-03-30', '操作部', '唐启东', '5180004002', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('670', '2015-10-08', '操作管理部', '何春平', '5180004607', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('671', '2015-10-08', '操作管理部', '韩喜满', '5180004636', '入职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('672', '2015-10-08', '仲裁部 ', '陆霞容', '5180008609', '离职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('673', '2015-10-08', '仲裁部 ', '罗佳', '5180008610', '离职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('674', '2015-10-08', '操作管理部', '林长美', '5180004631', '离职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('675', '2015-10-08', '操作管理部', '黄运林', '5180004345', '离职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('676', '2015-10-08', '操作管理部', '潘亮', '5180004338', '离职', '郭明星', '2015-10-08', '41', '');
INSERT INTO `xt_zm_number` VALUES ('677', '2015-10-09', '仲裁部 ', '唐春莲', '5180008609', '入职', '郭明星', '2015-10-09', '41', '');
INSERT INTO `xt_zm_number` VALUES ('678', '2015-10-10', '质控部', '刘洋', '5180008876', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('679', '2015-10-10', '操作管理部', '唐陈军', '5180004136', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('68', '2015-03-30', '操作部', '李苏容', '5180004058', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('680', '2015-10-10', '操作管理部', '梁小松', '5180004110', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('681', '2015-10-10', '操作管理部', '康辉', '5180004087', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('682', '2015-10-10', '操作管理部', '郭泉', '5095821008', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('683', '2015-10-10', '操作管理部', '郭泉', '5095822002', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('684', '2015-10-10', '操作管理部', '欧阳池', '5180004309', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('685', '2015-10-10', '操作管理部', '李军华', '5180004033', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('686', '2015-10-10', '操作管理部', '李军华', '5180004340', '离职', '郭明星', '2015-10-10', '41', '');
INSERT INTO `xt_zm_number` VALUES ('687', '2015-10-13', '操作管理部', '王玖珍', '5180004089', '离职', '郭明星', '2015-10-13', '42', '');
INSERT INTO `xt_zm_number` VALUES ('688', '2015-10-16', '操作管理部', '汪安宁', '5180004631', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('689', '2015-10-16', '操作管理部', '唐值富', '5180004646', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('69', '2015-03-30', '操作部', '苟琼', '5180004064', '入职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('690', '2015-10-16', '操作管理部', '刘世平', '5180004648', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('691', '2015-10-16', '操作管理部', '李慰鸿', '5180004649', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('692', '2015-10-16', '操作管理部', '陈丽萍', '5180004650', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('693', '2015-10-16', '操作管理部', '廖志刚', '5180004030', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('694', '2015-10-16', '操作管理部', '沈家俊', '5180004129', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('695', '2015-10-16', '操作管理部', '韩忠强', '5180004084', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('696', '2015-10-16', '操作管理部', '熊艺明', '5180004087', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('697', '2015-10-16', '操作管理部', '李炳文', '5180004089', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('698', '2015-10-16', '操作管理部', '陈平', '5180004104', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('699', '2015-10-16', '操作管理部', '杨其军', '5180004110', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('7', '2015-03-10', '操作部', '胡友权', '5180004587', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('70', '2015-03-30', '操作部', '戴盛红', '5180004636', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('700', '2015-10-16', '操作管理部', '黎铭', '5180004116', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('701', '2015-10-16', '操作管理部', '伍春花', '5095822028', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('702', '2015-10-16', '操作管理部', '曹元华', '5095822002', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('703', '2015-10-16', '操作管理部', '龚万群', '5095822029', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('704', '2015-10-16', '操作管理部', '曹元华', '5095821008', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('705', '2015-10-16', '操作管理部', '龚万群', '5095821022', '入职', '郭明星', '2015-10-16', '42', '');
INSERT INTO `xt_zm_number` VALUES ('706', '2015-10-21', '仲裁部 ', '王柳', '5180008610', '入职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('707', '2015-10-21', '仲裁部 ', '陈伟', '5180008628', '入职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('708', '2015-10-21', '仲裁部 ', '周玲', '5180008629', '入职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('709', '2015-10-21', '仲裁部 ', '林晓玲 ', '5180008630', '入职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('71', '2015-03-30', '质控部', '黄华丽', '5180008865', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('710', '2015-10-21', '人力资源部', '陈婵 ', '5180008855', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('711', '2015-10-21', '操作管理部', '冯永校', '5180008870', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('712', '2015-10-21', '操作管理部', '杜曼超', '5180008639', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('713', '2015-10-21', '操作管理部', '殷少伟', '5180004529', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('714', '2015-10-21', '操作管理部', '张小英', '5180004641', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('715', '2015-10-21', '操作管理部', '张敏', '5180004633', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('716', '2015-10-21', '操作管理部', '谢甜梅', '5095821016', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('717', '2015-10-21', '操作管理部', '谢甜梅', '5095822026', '离职', '郭明星', '2015-10-21', '43', '');
INSERT INTO `xt_zm_number` VALUES ('718', '2015-10-26', '信息与流程管理部', '刘会友', '5180008821', '离职', '郭明星', '2015-10-26', '44', '');
INSERT INTO `xt_zm_number` VALUES ('719', '2015-10-28', '骏达网货仓', '李炜', '5187008899', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('72', '2015-03-30', '操作部', '何洪峰', '5180004671', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('720', '2015-10-28', '操作管理部', '李顺花', '5180004647', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('721', '2015-10-28', '操作管理部', '吴飞乐', '5180004575', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('722', '2015-10-28', '操作管理部', '韩祥泰', '5180004002', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('723', '2015-10-28', '操作管理部', '左军', '5095822008', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('724', '2015-10-28', '操作管理部', '李达', '5180004320', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('725', '2015-10-28', '操作管理部', '黄沛', '5180004563', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('726', '2015-10-28', '操作管理部', '衷海洋', '5180004077', '离职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('727', '2015-10-28', '质控部', '陈珍丽', '5180008870', '入职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('728', '2015-10-28', '质控部', '张梦莉', '5180008876', '入职', '郭明星', '2015-10-28', '44', '');
INSERT INTO `xt_zm_number` VALUES ('729', '2015-10-30', '操作管理部', '罗绵燕', '5180004633', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('73', '2015-03-30', '操作部', '毛海春', '5180004237', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('730', '2015-10-30', '操作管理部', '蒙开猛', '5180004146', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('731', '2015-10-30', '操作管理部', '欧阳宇', '5180004125', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('732', '2015-10-30', '操作管理部', '吴淑涛', '5180004073', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('733', '2015-10-30', '操作管理部', '刘兆峰', '5180004136', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('734', '2015-10-30', '操作管理部', '欧伍云', '5180004139', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('735', '2015-10-30', '操作管理部', '周学兵', '5180004078', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('736', '2015-10-30', '操作管理部', '唐天余', '5180004107', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('737', '2015-10-30', '操作管理部', '彭利', '5180004152', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('738', '2015-10-30', '操作管理部', '赵双荣', '5180004529', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('739', '2015-10-30', '操作管理部', '岺国强', '5180004563', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('74', '2015-03-30', '操作部', '王桃红', '5180004002', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('740', '2015-10-30', '操作管理部', '李海洋', '5180004575', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('741', '2015-10-30', '操作管理部', '王鑫', '5180004641', '入职', '郭明星', '2015-10-30', '44', '');
INSERT INTO `xt_zm_number` VALUES ('742', '2015-10-31', '操作管理部', '罗艳流', '5180004012', '离职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('743', '2015-10-31', '操作管理部', '邓振金', '5180004647', '入职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('744', '2015-10-31', '操作管理部', '李振海', '5180004651', '入职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('745', '2015-10-31', '操作管理部', '吕先鹏', '5180004652', '入职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('746', '2015-10-31', '操作管理部', '周浩', '5180004653', '入职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('747', '2015-10-31', '操作管理部', '陈同旺', '5180004654', '入职', '郭明星', '2015-10-31', '44', '');
INSERT INTO `xt_zm_number` VALUES ('748', '2015-11-06', '仲裁部', '李永碧', '5180008631', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('749', '2015-11-06', '质控部', '黄永明', '5180008882', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('75', '2015-03-30', '操作部', '梁小华', '5180004117', '离职', '郭明星', '2015-03-30', '14', '');
INSERT INTO `xt_zm_number` VALUES ('750', '2015-11-06', '质控部', '董山峰', '5180008883', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('751', '2015-11-06', '操作管理部', '张志群', '5095821027', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('752', '2015-11-06', '操作管理部', '唐平平', '5095821028', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('753', '2015-11-06', '操作管理部', '马鹏飞', '5095821029', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('754', '2015-11-06', '操作管理部', '陈旭', '5095821030', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('755', '2015-11-06', '操作管理部', '殷秋燕', '5095821031', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('756', '2015-11-06', '操作管理部', '张志群', '5095822033', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('757', '2015-11-06', '操作管理部', '唐平平', '5095822034', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('758', '2015-11-06', '操作管理部', '马鹏飞', '5095822035', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('759', '2015-11-06', '操作管理部', '陈旭', '5095822036', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('76', '2015-04-02', '操作管理部', '李映东', '5180004607', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('760', '2015-11-06', '操作管理部', '殷秋燕', '5095822037', '入职', '郭明星', '2015-11-06', '45', '');
INSERT INTO `xt_zm_number` VALUES ('761', '2015-11-09', '仲裁部 ', '王柳', '5180008610', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('762', '2015-11-09', '仲裁部 ', '陈伟', '5180008628', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('763', '2015-11-09', '操作管理部', '余建兵', '5180004100', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('764', '2015-11-09', '操作管理部', '奉海东', '5180004506', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('765', '2015-11-09', '操作管理部', '粟小成', '5180004628', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('766', '2015-11-09', '操作管理部', '詹富城', '5180004593', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('767', '2015-11-09', '操作管理部', '杨超', '5180004627', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('768', '2015-11-09', '操作管理部', '龚磊', '5180004535', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('769', '2015-11-09', '操作管理部', '宋群蓝', '5180004119', '离职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('77', '2015-04-02', '操作管理部', '杨航', '5180004554', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('770', '2015-11-09', '操作管理部', '潘红伟', '5180004535', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('771', '2015-11-09', '操作管理部', '刘瑞情', '5180004593', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('772', '2015-11-09', '操作管理部', '莫浩文', '5180004627', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('773', '2015-11-09', '操作管理部', '郑时根', '5180004628', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('774', '2015-11-09', '操作管理部', '刘派', '5180004655', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('775', '2015-11-09', '操作管理部', '杨益娇', '5180004659', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('776', '2015-11-09', '操作管理部', '廖壮壮', '5180004660', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('777', '2015-11-09', '操作管理部', '李燕梅', '5180004661', '入职', '郭明星', '2015-11-09', '46', '');
INSERT INTO `xt_zm_number` VALUES ('778', '2015-11-12', '操作管理部', '吴建群', '5180004012', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('779', '2015-11-12', '操作管理部', '江云', '5180004135', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('78', '2015-04-02', '操作管理部', '闫渊', '5180004555', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('780', '2015-11-12', '操作管理部', '梁长坚', '5180004077', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('781', '2015-11-12', '操作管理部', '何兴发', '5180004099', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('782', '2015-11-12', '操作管理部', '陈惠', '5180004119', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('783', '2015-11-12', '操作管理部', '彭智', '5180004151', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('784', '2015-11-12', '操作管理部', '欧阳良勇', '5180004131', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('785', '2015-11-12', '操作管理部', '张建中', '5180004147', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('786', '2015-11-12', '操作管理部', '任我行', '5180004148', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('787', '2015-11-12', '操作管理部', '梁林峰', '5180004153', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('788', '2015-11-12', '操作管理部', '张阳', '5180004154', '入职', '郭明星', '2015-11-12', '46', '');
INSERT INTO `xt_zm_number` VALUES ('789', '2015-11-19', '仲裁部', '杨剑', '5180008610', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('79', '2015-04-02', '操作管理部', '陈家鸿', '5180004605', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('790', '2015-11-19', '操作管理部', '农泽伟', '5180004662', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('791', '2015-11-19', '操作管理部', '吴秀婷', '5180004663', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('792', '2015-11-19', '操作管理部', '温泽钦', '5180004664', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('793', '2015-11-19', '操作管理部', '李加信', '5180004665', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('794', '2015-11-19', '操作管理部', '周鹏', '5180004666', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('795', '2015-11-19', '操作管理部', '李明龙', '5180004667', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('796', '2015-11-19', '操作管理部', '覃春玲', '5180004668', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('797', '2015-11-19', '操作管理部', '陈开发', '5180004669', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('798', '2015-11-19', '操作管理部', '张丽', '5180004672', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('799', '2015-11-19', '操作管理部', '杨一凡', '5180004673', '入职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('8', '2015-03-10', '操作部', '甘荣昆', '5180004595', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('80', '2015-04-02', '操作管理部', '张华东', '5180004556', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('800', '2015-11-19', '操作管理部', '刘裕华', '5180004903', '离职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('801', '2015-11-19', '操作管理部', '胡小明', '5180004584', '离职', '郭明星', '2015-11-19', '47', '');
INSERT INTO `xt_zm_number` VALUES ('802', '2015-11-23', '操作管理部', '周剑飞', '5180008821', '入职', '郭明星', '2015-11-23', '48', '');
INSERT INTO `xt_zm_number` VALUES ('803', '2015-11-23', '操作管理部', '李孔妮', '5180004546', '离职', '郭明星', '2015-11-23', '48', '');
INSERT INTO `xt_zm_number` VALUES ('804', '2015-11-23', '操作管理部', '田波', '5180004674', '入职', '郭明星', '2015-11-23', '48', '');
INSERT INTO `xt_zm_number` VALUES ('805', '2015-11-23', '操作管理部', '覃剑霞', '5180004675', '入职', '郭明星', '2015-11-23', '48', '');
INSERT INTO `xt_zm_number` VALUES ('806', '2015-11-23', '操作管理部', '林倍思', '5180004676', '入职', '郭明星', '2015-11-23', '48', '');
INSERT INTO `xt_zm_number` VALUES ('807', '2015-11-27', '仲裁部', '叶小丽', '5180008628', '入职', '郭明星', '2015-11-27', '48', '');
INSERT INTO `xt_zm_number` VALUES ('808', '2015-11-27', '仲裁部', '刘瑞情', '5180004593', '离职', '郭明星', '2015-11-27', '48', '');
INSERT INTO `xt_zm_number` VALUES ('809', '2015-11-27', '仲裁部', '聂志军', '5180004130', '离职', '郭明星', '2015-11-27', '48', '');
INSERT INTO `xt_zm_number` VALUES ('81', '2015-04-02', '操作管理部', '张云智', '5180004557', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('810', '2015-11-28', '结算部', '李周', '5180008941', '离职', '郭明星', '2015-11-28', '48', '');
INSERT INTO `xt_zm_number` VALUES ('811', '2015-11-30', '仲裁部', '谢燕', '5180008636', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('812', '2015-11-30', '仲裁部', '粟艳梅', '5180008638', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('813', '2015-11-30', '操作管理部', '伍珈毅', '5180004155', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('814', '2015-11-30', '操作管理部', '谢斌', '5180004156', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('815', '2015-11-30', '操作管理部', '侯恩全', '5180004157', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('816', '2015-11-30', '操作管理部', '覃永德', '5180004158', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('817', '2015-11-30', '操作管理部', '赵富生', '5180004159', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('818', '2015-11-30', '操作管理部', '吴永辉', '5180004160', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('819', '2015-11-30', '操作管理部', '朱旭', '5180004161', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('82', '2015-04-02', '操作管理部', '张苏', '5180004558', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('820', '2015-11-30', '操作管理部', '李应海', '5180004162', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('821', '2015-11-30', '操作管理部', '蒲彬彬', '5180004163', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('822', '2015-11-30', '操作管理部', '张丽', '5180004164', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('823', '2015-11-30', '操作管理部', '唐令川', '5180004165', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('824', '2015-11-30', '操作管理部', '唐令梅', '5180004166', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('825', '2015-11-30', '操作管理部', '刘兆峰', '5180004136', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('826', '2015-11-30', '操作管理部', '郑明才', '5180004702', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('827', '2015-11-30', '操作管理部', '高义军', '5180004703', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('828', '2015-11-30', '操作管理部', '李根', '5180004704', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('829', '2015-11-30', '操作管理部', '邱新权', '5180004705', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('83', '2015-04-02', '操作管理部', '雷智清', '5180004559', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('830', '2015-11-30', '操作管理部', '谢辉均', '5180004706', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('831', '2015-11-30', '操作管理部', '王志勇', '5180004707', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('832', '2015-11-30', '操作管理部', '钟伟坚', '5180004708', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('833', '2015-11-30', '操作管理部', '孙自成', '5180004709', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('834', '2015-11-30', '操作管理部', '张华军', '5180004710', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('835', '2015-11-30', '操作管理部', '叶镇桂', '5180004711', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('836', '2015-11-30', '操作管理部', '宋世碌', '5180004712', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('837', '2015-11-30', '操作管理部', '何昌泽', '5180004713', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('838', '2015-11-30', '操作管理部', '胡继望', '5180004714', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('839', '2015-11-30', '操作管理部', '唐汇钟', '5180004715', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('84', '2015-04-02', '操作管理部', '张清平', '5180004609', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('840', '2015-11-30', '操作管理部', '张雄', '5180004716', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('841', '2015-11-30', '操作管理部', '葛运栋', '5180004717', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('842', '2015-11-30', '操作管理部', '肖龙军', '5180004718', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('843', '2015-11-30', '操作管理部', '肖成兵', '5180004719', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('844', '2015-11-30', '操作管理部', '蓝芊', '5180004720', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('845', '2015-11-30', '操作管理部', '王二林', '5180004721', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('846', '2015-11-30', '操作管理部', '黄珍发', '5180004722', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('847', '2015-11-30', '操作管理部', '万陵', '5180004723', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('848', '2015-11-30', '操作管理部', '李世治', '5180004724', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('849', '2015-11-30', '操作管理部', '蒋熙全', '5180004725', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('85', '2015-04-02', '操作管理部', '杨威', '5180004610', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('850', '2015-11-30', '操作管理部', '李文清', '5180004726', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('851', '2015-11-30', '操作管理部', '张勇平', '5180004727', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('852', '2015-11-30', '操作管理部', '吴海健', '5180004728', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('853', '2015-11-30', '操作管理部', '王海', '5180004729', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('854', '2015-11-30', '操作管理部', '武中云 ', '5180004730', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('855', '2015-11-30', '操作管理部', '陈启方', '5180004731', '入职', '郭明星', '2015-11-30', '49', '');
INSERT INTO `xt_zm_number` VALUES ('856', '2015-12-02', '仲裁部', '万兰兰', '5180008601', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('857', '2015-12-02', '操作管理部', '白亚丽', '5095822016', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('858', '2015-12-02', '操作管理部', '张萍', '5095821018', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('859', '2015-12-02', '操作管理部', '张萍', '5095822019', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('86', '2015-04-02', '操作管理部', '陈龙生', '5180004611', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('860', '2015-12-02', '操作管理部', '陈启聪', '5095821015', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('861', '2015-12-02', '操作管理部', '张富孝 ', '5180004324', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('862', '2015-12-02', '操作管理部', '孔毅', '5180004634', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('863', '2015-12-02', '操作管理部', '任我行', '5180004148', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('864', '2015-12-02', '人力支援部', '贺维维', '5180008853', '离职', '郭明星', '2015-12-02', '49', '');
INSERT INTO `xt_zm_number` VALUES ('865', '2015-12-07', '人力支援部', '杨晟安', '5180008850', '入职', '郭明星', '2015-12-07', '50', '');
INSERT INTO `xt_zm_number` VALUES ('866', '2015-12-08', '操作管理部', '曾庆谋', '5180004732', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('867', '2015-12-08', '操作管理部', '陈债', '5180004733', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('868', '2015-12-08', '操作管理部', '郭先荣', '5180004734', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('869', '2015-12-08', '操作管理部', '梁广海', '5180004735', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('87', '2015-04-02', '操作管理部', '曾万宝', '5180004612', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('870', '2015-12-08', '操作管理部', '吴祖浩', '5180004736', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('871', '2015-12-08', '操作管理部', '   钱海权', '5180004737', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('872', '2015-12-08', '操作管理部', '滕从高', '5180004738', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('873', '2015-12-08', '操作管理部', '邱伟', '5180004739', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('874', '2015-12-08', '操作管理部', '唐才沅', '5180004740', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('875', '2015-12-08', '操作管理部', '蓝海洁', '5180004741', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('876', '2015-12-08', '操作管理部', '唐辉', '5180004742', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('877', '2015-12-08', '操作管理部', '李志豪', '5180004743', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('878', '2015-12-08', '操作管理部', '孙传军', '5180004744', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('879', '2015-12-08', '操作管理部', '张佰生', '5180004745', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('88', '2015-04-02', '操作管理部', '唐阳水', '5180004626', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('880', '2015-12-08', '操作管理部', '陈海军', '5180004746', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('881', '2015-12-08', '操作管理部', '史永康', '5180004747', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('882', '2015-12-08', '操作管理部', '周烈', '5180004748', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('883', '2015-12-08', '操作管理部', '钟晓春', '5180004749', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('884', '2015-12-08', '操作管理部', '韦若邓', '5180004750', '入职', '王科', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('885', '2015-12-08', '结算部', '杨琴', '5180008924', '入职', '郭明星', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('886', '2015-12-08', '操作管理部', '吴宜', '5180008741', '入职', '郭明星', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('887', '2015-12-08', '操作管理部', '韦传民', '5180004538', '离职', '郭明星', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('888', '2015-12-08', '操作管理部', '韩大闯', '5180004527', '离职', '郭明星', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('889', '2015-12-08', '操作管理部', '韩大闯', '5180004576', '离职', '郭明星', '2015-12-08', '50', '');
INSERT INTO `xt_zm_number` VALUES ('89', '2015-04-02', '操作管理部', '肖陈云', '5180004627', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('890', '2015-12-09', '操作管理部', '陈佩', '5095821015', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('891', '2015-12-09', '操作管理部', '陈鹏', '5095821018', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('892', '2015-12-09', '操作管理部', '陈旭', '5095821030', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('893', '2015-12-09', '操作管理部', '陈佩', '5095822016', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('894', '2015-12-09', '操作管理部', '陈鹏', '5095822019', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('895', '2015-12-09', '操作管理部', '陈旭', '5095822036', '入职', '王科', '2015-12-09', '50', '');
INSERT INTO `xt_zm_number` VALUES ('896', '2015-12-10', '操作管理部', '欧伍云', '5180004139', '离职', '郭明星', '2015-12-10', '50', '');
INSERT INTO `xt_zm_number` VALUES ('897', '2015-12-11', '操作管理部', '张来', '5180004313', '入职', '郭明星', '2015-12-11', '50', '');
INSERT INTO `xt_zm_number` VALUES ('898', '2015-12-11', '操作管理部', '苏振', '5180004120', '入职', '郭明星', '2015-12-11', '50', '');
INSERT INTO `xt_zm_number` VALUES ('899', '2015-12-11', '操作管理部', '韩忠强', '5180004084', '入职', '郭明星', '2015-12-11', '50', '');
INSERT INTO `xt_zm_number` VALUES ('9', '2015-03-10', '操作部', '黄涛', '5180004599', '入职', '郭明星', '2015-03-10', '11', '');
INSERT INTO `xt_zm_number` VALUES ('90', '2015-04-02', '操作管理部', '陈文专', '5180004696', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('900', '2015-12-14', '操作管理部', '钱海权', '5180004737', '离职', '郭明星', '2015-12-14', '51', '');
INSERT INTO `xt_zm_number` VALUES ('901', '2015-12-16', '仲裁部', '韦柳池', '5180008601', '入职', '郭明星', '2015-12-16', '51', '');
INSERT INTO `xt_zm_number` VALUES ('902', '2015-12-16', '仲裁部', '谢燕', '5180008636', '离职', '郭明星', '2015-12-16', '51', '');
INSERT INTO `xt_zm_number` VALUES ('903', '2015-12-21', '操作管理部', '李慰鸿', '5180004649', '离职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('904', '2015-12-21', '操作管理部', '潘美辉', '5180004649', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('905', '2015-12-21', '操作管理部', '璩忠文', '5180004527', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('906', '2015-12-21', '操作管理部', '沈凤英', '5095823001', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('907', '2015-12-21', '操作管理部', '陈佩', '5095821015', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('908', '2015-12-21', '操作管理部', '陈鹏', '5095821018', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('909', '2015-12-21', '操作管理部', '陈旭', '5095821030', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('91', '2015-04-02', '操作管理部', '周贤江波', '5180004697', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('910', '2015-12-21', '操作管理部', '钱兴伟', '5095821032', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('911', '2015-12-21', '操作管理部', '罗家棉', '5095821033', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('912', '2015-12-21', '操作管理部', '丘习队', '5095821034', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('913', '2015-12-21', '操作管理部', '赵幼华', '5095821035', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('914', '2015-12-21', '操作管理部', '孙红', '5095821036', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('915', '2015-12-21', '操作管理部', '陈佩', '5095822016', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('916', '2015-12-21', '操作管理部', '陈鹏', '5095822019', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('917', '2015-12-21', '操作管理部', '陈旭', '5095822036', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('918', '2015-12-21', '操作管理部', '钱兴伟', '5095822038', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('919', '2015-12-21', '操作管理部', '罗家棉', '5095822039', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('92', '2015-04-02', '操作管理部', '岑伟观', '5180004698', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('920', '2015-12-21', '操作管理部', '丘习队', '5095822040', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('921', '2015-12-21', '操作管理部', '赵幼华', '5095822041', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('922', '2015-12-21', '操作管理部', '孙红', '5095822042', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('923', '2015-12-21', '操作管理部', '叶艳青', '5180004006', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('924', '2015-12-21', '操作管理部', '罗小红', '5180004045', '入职', '郭明星', '2015-12-21', '52', '');
INSERT INTO `xt_zm_number` VALUES ('925', '2015-12-22', '操作管理部', '刘洋', '5180004320', '入职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('926', '2015-12-22', '操作管理部', '孙传军', '5180004333', '离职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('927', '2015-12-22', '操作管理部', '孙传军', '5180004744', '离职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('928', '2015-12-22', '操作管理部', '彭智', '5180004151', '离职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('929', '2015-12-22', '操作管理部', '曾增', '5180004149', '离职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('93', '2015-04-02', '仲裁部', '李金焕', '5180008614', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('930', '2015-12-22', '操作管理部', '李九洲', '5180004590', '离职', '郭明星', '2015-12-22', '52', '');
INSERT INTO `xt_zm_number` VALUES ('931', '2015-12-25', '操作管理部', '刘立飞', '5180004552', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('932', '2015-12-25', '操作管理部', '刘得林', '5180004042', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('933', '2015-12-25', '操作管理部', '崔国辉', '5180004305', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('934', '2015-12-25', '操作管理部', '罗嘉聲', '5180004751', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('935', '2015-12-25', '操作管理部', '范丽清', '5180004752', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('936', '2015-12-25', '操作管理部', '罗柏雄', '5180004753', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('937', '2015-12-25', '操作管理部', '黄建平', '5180004754', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('938', '2015-12-25', '操作管理部', '康喜娇', '5180004755', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('939', '2015-12-25', '操作管理部', '杨海洋', '5180004756', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('94', '2015-04-02', '仲裁部', '许开英', '5180008629', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('940', '2015-12-25', '操作管理部', '王灿', '5180004757', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('941', '2015-12-25', '操作管理部', '王杰', '5180004758', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('942', '2015-12-25', '操作管理部', '尚海斌', '5180004759', '入职', '郭明星', '2015-12-25', '52', '');
INSERT INTO `xt_zm_number` VALUES ('943', '2015-12-28', '财务中心', '邵凤立', '5180008905', '离职', '郭明星', '2015-12-28', '53', '');
INSERT INTO `xt_zm_number` VALUES ('944', '2015-12-28', '操作管理部', '夏琦', '5180004545', '离职', '郭明星', '2015-12-28', '53', '');
INSERT INTO `xt_zm_number` VALUES ('945', '2015-12-28', '操作管理部', '潘虹宏', '5180004001', '入职', '郭明星', '2015-12-28', '53', '');
INSERT INTO `xt_zm_number` VALUES ('946', '2015-12-28', '操作管理部', '盘家东', '5180004557', '入职', '郭明星', '2015-12-28', '53', '');
INSERT INTO `xt_zm_number` VALUES ('947', '2015-12-28', '操作管理部', '向华', '5180004033', '入职', '郭明星', '2015-12-28', '53', '');
INSERT INTO `xt_zm_number` VALUES ('948', '2016-01-04', '操作管理部', '古明辉', '5180004349', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('949', '2016-01-04', '操作管理部', '王乾', '5180004350', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('95', '2015-04-02', '仲裁部', '杜曼超', '5180008639', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('950', '2016-01-04', '操作管理部', '吴金亮', '5180004351', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('951', '2016-01-04', '操作管理部', '杨振', '5180004352', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('952', '2016-01-04', '操作管理部', '罗敏明', '5180004353', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('953', '2016-01-04', '操作管理部', '唐基军', '5180004354', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('954', '2016-01-04', '操作管理部', '张帅', '5180004355', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('955', '2016-01-04', '操作管理部', '林财武', '5180004356', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('956', '2016-01-04', '操作管理部', '黄波', '5095821037', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('957', '2016-01-04', '操作管理部', '刘波', '5095821016', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('958', '2016-01-04', '操作管理部', '沈凤英', '5095823001', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('959', '2016-01-04', '操作管理部', '唐平平', '5095821028', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('96', '2015-04-02', '仲裁部', '薛莉琼', '5180008630', '入职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('960', '2016-01-04', '操作管理部', '罗家棉', '5095821033', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('961', '2016-01-04', '操作管理部', '黄  波', '5095822043', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('962', '2016-01-04', '操作管理部', '刘  波', '5095822008', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('963', '2016-01-04', '操作管理部', '唐平平', '5095822034', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('964', '2016-01-04', '操作管理部', '罗家棉', '5095822039', '入职', '郭明星', '2016-01-04', '2', '');
INSERT INTO `xt_zm_number` VALUES ('965', '2016-01-05', '操作管理部', '古明辉', '5180004349', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('966', '2016-01-05', '操作管理部', '王乾', '5180004350', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('967', '2016-01-05', '操作管理部', '吴金亮', '5180004351', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('968', '2016-01-05', '操作管理部', '杨振', '5180004352', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('969', '2016-01-05', '操作管理部', '罗敏明', '5180004353', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('97', '2015-04-02', '操作管理部', '刘洋', '5180008831', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('970', '2016-01-05', '操作管理部', '唐基军', '5180004354', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('971', '2016-01-05', '操作管理部', '张帅', '5180004355', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('972', '2016-01-05', '操作管理部', '林财武', '5180004356', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('973', '2016-01-05', '操作管理部', '吴宜', '5180008741', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('974', '2016-01-05', '信息与流程管理部', '王维', '5180008820', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('975', '2016-01-05', '操作管理部', '张霞光', '5180004090', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('976', '2016-01-05', '操作管理部', '刘飞乃', '5095821003', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('977', '2016-01-05', '操作管理部', '刘飞乃', '5095822009', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('978', '2016-01-05', '操作管理部', '廖志刚', '5180004030', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('979', '2016-01-05', '操作管理部', '杨其军', '5180004110', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('98', '2015-04-02', '操作管理部', '何顺军', '5180008631', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('980', '2016-01-05', '操作管理部', '覃永德', '5180004158', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('981', '2016-01-05', '操作管理部', '陈旭', '5095821030', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('982', '2016-01-05', '操作管理部', '陈旭', '5095822036', '离职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('983', '2016-01-05', '外围运输部', '黄开龙', '5180008729', '入职', '郭明星', '2016-01-05', '2', '');
INSERT INTO `xt_zm_number` VALUES ('984', '2016-01-08', '操作管理部', '肖瑞委', '5095823002', '入职', '郭明星', '2016-01-08', '2', '');
INSERT INTO `xt_zm_number` VALUES ('985', '2016-01-08', '操作管理部', '吴宜', '5180004230', '入职', '郭明星', '2016-01-08', '2', '');
INSERT INTO `xt_zm_number` VALUES ('986', '2016-01-08', '内控部 ', '梁琼源', '5180008751', '入职', '郭明星', '2016-01-08', '2', '');
INSERT INTO `xt_zm_number` VALUES ('987', '2016-01-08', '操作管理部', '肖龙军', '5180004718', '离职', '郭明星', '2016-01-08', '2', '');
INSERT INTO `xt_zm_number` VALUES ('988', '2016-01-11', '操作管理部', '陈龙生', '5180004611', '离职', '郭明星', '2016-01-11', '3', '');
INSERT INTO `xt_zm_number` VALUES ('989', '2016-01-13', '操作管理部', '梁彦波', '5180004333', '入职', '郭明星', '2016-01-13', '3', '');
INSERT INTO `xt_zm_number` VALUES ('99', '2015-04-02', '操作管理部', '欧伍云', '5180004107', '离职', '郭明星', '2015-04-02', '14', '');
INSERT INTO `xt_zm_number` VALUES ('990', '2016-01-20', '操作管理部', '王英', '5180004236', '入职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('991', '2016-01-20', '操作管理部', '刘书琴', '5180004081', '离职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('992', '2016-01-20', '操作管理部', '刘书琴', '5180004670', '离职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('993', '2016-01-20', '操作管理部', '叶镇桂', '5180004711', '离职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('994', '2016-01-20', '操作管理部', '张阳', '5180004154', '离职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('995', '2016-01-20', '操作管理部', '罗彬', '5180004048', '离职', '郭明星', '2016-01-20', '4', '');
INSERT INTO `xt_zm_number` VALUES ('996', '2016-02-18', '操作管理部', '何善略', '5180004169', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('997', '2016-02-18', '操作管理部', '姚逢安', '5180004170', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('998', '2016-02-18', '操作管理部', '王永明', '5180004171', '入职', '王科', '2016-02-18', '8', '');
INSERT INTO `xt_zm_number` VALUES ('999', '2016-02-18', '操作管理部', '张传玉', '5180004172', '入职', '王科', '2016-02-18', '8', '');

-- ----------------------------
-- Table structure for `zm_bq`
-- ----------------------------
DROP TABLE IF EXISTS `zm_bq`;
CREATE TABLE `zm_bq` (
  `b_id` varchar(255) NOT NULL DEFAULT '',
  `b_pda` varchar(255) DEFAULT NULL,
  `b_model` varchar(255) DEFAULT NULL,
  `b_type` varchar(255) DEFAULT NULL,
  `b_num` varchar(255) DEFAULT NULL,
  `b_sn` varchar(255) DEFAULT NULL,
  `b_mac` varchar(255) DEFAULT NULL,
  `b_wifi` varchar(255) DEFAULT NULL,
  `b_wifi_pass` varchar(255) DEFAULT NULL,
  `b_note` varchar(255) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_bq
-- ----------------------------

-- ----------------------------
-- Table structure for `zm_by_number`
-- ----------------------------
DROP TABLE IF EXISTS `zm_by_number`;
CREATE TABLE `zm_by_number` (
  `by_id` varchar(255) NOT NULL DEFAULT '',
  `by_oa_date` date DEFAULT NULL,
  `by_section` varchar(255) DEFAULT NULL,
  `by_name` varchar(255) DEFAULT NULL,
  `by_bgn` varchar(255) DEFAULT NULL,
  `by_mail` varchar(255) DEFAULT NULL,
  `by_mail_pass` varchar(255) DEFAULT NULL,
  `by_service` varchar(255) DEFAULT NULL,
  `by_on_job` varchar(255) DEFAULT NULL,
  `by_service_date` date DEFAULT NULL,
  `by_service_week` int(11) DEFAULT NULL,
  `by_service_time` int(11) DEFAULT NULL,
  `by_is_timely` varchar(255) DEFAULT NULL,
  `by_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_by_number
-- ----------------------------
INSERT INTO `zm_by_number` VALUES ('by011024093872571', null, '', '张顺', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011024138799307', null, '', '', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011024185225689', null, '', '', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011024207858067', null, '', '', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011040247062641', null, '', '张顺', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011041408901772', null, '', ', 张顺', '', '', '', '', '', null, null, null, '', '');
INSERT INTO `zm_by_number` VALUES ('by011041583104620', null, '1', '2016-09-01, 张顺', '1', '1', '1', '1', '1', '2016-09-01', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `zm_computer`
-- ----------------------------
DROP TABLE IF EXISTS `zm_computer`;
CREATE TABLE `zm_computer` (
  ` c_id` varchar(255) NOT NULL DEFAULT '',
  `c_section` varchar(255) DEFAULT NULL,
  `c_master` varchar(255) DEFAULT NULL,
  `c_num` varchar(255) DEFAULT NULL,
  `c_position` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_ad` varchar(255) DEFAULT NULL,
  `c_ip` varchar(255) DEFAULT NULL,
  `c_mac` varchar(255) DEFAULT NULL,
  `c_cpu_brand` varchar(255) DEFAULT NULL,
  `c_cpu_model` varchar(255) DEFAULT NULL,
  `c_board_brand` varchar(255) DEFAULT NULL,
  `c_board_chip` varchar(255) DEFAULT NULL,
  `c_memory_c` varchar(255) DEFAULT NULL,
  `c_memory_f` varchar(255) DEFAULT NULL,
  `c_disk` varchar(255) DEFAULT NULL,
  `c_display_brand` varchar(255) DEFAULT NULL,
  `c_display_c` varchar(255) DEFAULT NULL,
  `c_is_scrap` varchar(255) DEFAULT NULL,
  `c_note` varchar(255) DEFAULT NULL,
  `c_date` date DEFAULT NULL,
  PRIMARY KEY (` c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_computer
-- ----------------------------

-- ----------------------------
-- Table structure for `zm_oa_number`
-- ----------------------------
DROP TABLE IF EXISTS `zm_oa_number`;
CREATE TABLE `zm_oa_number` (
  `o_id` varchar(255) NOT NULL DEFAULT '',
  `o_date` date DEFAULT NULL,
  `o_service_week` int(11) DEFAULT NULL,
  `o_section` varchar(255) DEFAULT NULL,
  `o_apply` varchar(255) DEFAULT NULL,
  `o_position` varchar(255) DEFAULT NULL,
  `o_oa` varchar(255) DEFAULT NULL,
  `o_service` varchar(255) DEFAULT NULL,
  `o_service_date` date DEFAULT NULL,
  `o_service_time` varchar(255) DEFAULT NULL,
  `o_on_job` varchar(255) DEFAULT NULL,
  `o_is_timely` varchar(255) DEFAULT NULL,
  `o_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_oa_number
-- ----------------------------
INSERT INTO `zm_oa_number` VALUES ('o121547013345551', '2016-09-12', null, '', '', '', '', '', '2016-09-12', '', '', '', '');
INSERT INTO `zm_oa_number` VALUES ('o121548480429678', '2016-09-12', null, '', '', '', '', '', '2016-09-12', '', '', '', '');
INSERT INTO `zm_oa_number` VALUES ('o121602134977167', null, null, '', '', '', '', '', null, '', '', '', '');
INSERT INTO `zm_oa_number` VALUES ('o121602244243511', null, null, '', '', '', '', '', null, '', '', '', '');

-- ----------------------------
-- Table structure for `zm_phone_line`
-- ----------------------------
DROP TABLE IF EXISTS `zm_phone_line`;
CREATE TABLE `zm_phone_line` (
  `p_id` varchar(255) NOT NULL DEFAULT '',
  `p_a` varchar(255) DEFAULT NULL,
  `p_b` varchar(255) DEFAULT NULL,
  `p_c` varchar(255) DEFAULT NULL,
  `p_d` varchar(255) DEFAULT NULL,
  `p_e` varchar(255) DEFAULT NULL,
  `p_number` varchar(255) DEFAULT NULL,
  `p_section` varchar(255) DEFAULT NULL,
  `p_function` varchar(255) DEFAULT NULL,
  `p_bill` varchar(255) DEFAULT NULL,
  `p_note` varchar(255) DEFAULT NULL,
  `p_date` date DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_phone_line
-- ----------------------------

-- ----------------------------
-- Table structure for `zm_printer`
-- ----------------------------
DROP TABLE IF EXISTS `zm_printer`;
CREATE TABLE `zm_printer` (
  `p_id` varchar(255) NOT NULL DEFAULT '',
  `p_brand` varchar(255) DEFAULT NULL,
  `p_number` varchar(255) DEFAULT NULL,
  `p_area` varchar(255) DEFAULT NULL,
  `p_address` varchar(255) DEFAULT NULL,
  `p_type` varchar(255) DEFAULT NULL,
  `p_port` varchar(255) DEFAULT NULL,
  `p_ip` varchar(255) DEFAULT NULL,
  `p_cartridge` varchar(255) DEFAULT NULL,
  `p_toner` varchar(255) DEFAULT NULL,
  `p_trait` varchar(255) DEFAULT NULL,
  `p_function` varchar(255) DEFAULT NULL,
  `p_page` varchar(255) DEFAULT NULL,
  `p_add` varchar(255) DEFAULT NULL,
  `p_last` date DEFAULT NULL,
  `p_next` date DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_printer
-- ----------------------------
INSERT INTO `zm_printer` VALUES ('p121725440071991', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('p121727260039097', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('p121727445153790', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('p121728505629308', '1', '2', '3', '5', '6', '7', '8', '9', '0', '1', '2', '3', '2016-09-12 00:00:00.0', null, null);
INSERT INTO `zm_printer` VALUES ('p121729380813957', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '2016-09-12', '2016-09-12');

-- ----------------------------
-- Table structure for `zm_vpn`
-- ----------------------------
DROP TABLE IF EXISTS `zm_vpn`;
CREATE TABLE `zm_vpn` (
  `v_id` varchar(255) NOT NULL DEFAULT '',
  `v_num` varchar(255) DEFAULT NULL,
  `v_pass` varchar(255) DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `v_section` varchar(255) DEFAULT NULL,
  `v_card` varchar(255) DEFAULT NULL,
  `v_phone` varchar(255) DEFAULT NULL,
  `v_soa_pass` varchar(255) DEFAULT NULL,
  `v_vpn_pass` varchar(255) DEFAULT NULL,
  `v_note` varchar(255) DEFAULT NULL,
  `v_date` date DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_vpn
-- ----------------------------
INSERT INTO `zm_vpn` VALUES ('v311438253468607', '1', '2', '3', '4', '5', '6', '7', '88', '9', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311440004549352', '11', '11', '213', '12', '3124', '4', '67', '88', '0', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311440034647538', '', '', '', '', '', '', '', '', '', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311440059786421', '', '', '', '', '', '', '', '', '', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311605042685796', '', '', '', '', '', '', '', '', '', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311605063759066', '', '', '', '', '', '', '', '', '', '2016-08-31');
INSERT INTO `zm_vpn` VALUES ('v311605106675607', '', '', '', '', '', '', '', '', '', '2016-08-31');

-- ----------------------------
-- Table structure for `zm_wifi`
-- ----------------------------
DROP TABLE IF EXISTS `zm_wifi`;
CREATE TABLE `zm_wifi` (
  `w_id` varchar(255) NOT NULL DEFAULT '',
  `w_address` varchar(255) DEFAULT NULL,
  `w_ip` varchar(255) DEFAULT NULL,
  `w_manager_num` varchar(255) DEFAULT NULL,
  `w_manager_pass` varchar(255) DEFAULT NULL,
  `w_ssid` varchar(255) DEFAULT NULL,
  `w_pass` varchar(255) DEFAULT NULL,
  `w_note` varchar(255) DEFAULT NULL,
  `w_date` date DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_wifi
-- ----------------------------
