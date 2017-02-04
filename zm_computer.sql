/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-04 17:55:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zm_computer`
-- ----------------------------
DROP TABLE IF EXISTS `zm_computer`;
CREATE TABLE `zm_computer` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
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
  `c_type` varchar(255) DEFAULT NULL,
  `c_create_time` datetime DEFAULT NULL,
  `c_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_computer
-- ----------------------------
INSERT INTO `zm_computer` VALUES ('1', '总经办', '吴娟', '', '', '总经办', 'wl040', '172.16.3.23', '74-d4-35-6c-30-b7', 'Intel', 'G2020', '微星', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('10', '信息与流程管理部', '王科', 'YD-5852', '系统分析专员', '大仓2楼-201', 'it004', '172.16.1.32', 'd8-CB-8A-7b-6c-ac', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('100', '财务', '朱小英', '', '', '财务', 'cw062', '172.16.4.113', '00:30:18:A6:49:7D', 'AMD', 'X3 435', '捷波', '890G', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('101', '财务', '朱小英', '', '', '财务', 'CW012', '172.16.4.100', '20:CF:30:CB:A4:44', 'Intel', 'E7580', '华硕', 'G31', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('102', '财务', '朱小英', '', '', '财务', 'CW013', '172.16.4.58', '08:60:6E:D9:F3:33', 'Intel', 'G860', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('103', '财务', '朱小英', '', '', '财务', 'CW033', '172.16.4.15', '14:FE:B5:ED:FF:A9', 'Intel', 'E5800', '技嘉', 'H61', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('104', '财务', '朱小英', '', '', '财务', 'CW039', '172.16.4.123', '00:30:18:A6:49:7D', 'AMD', 'X3 435', '捷波', '890G', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('105', '财务', '邓亮亮', '', '', '财务', 'CW015', '172.16.4.136', '50:E5:49:13:4D:9E', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('106', '财务', '甘萍', '', '', '财务', 'CW037', '172.16.4.19', '94:DE:80:EB:8E:E0', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('107', '财务', '易斌', '', '', '财务', 'CW009', '172.16.4.12', '50:E5:49:BB:2C:84', 'AMD', 'X 240', '技嘉', '880G', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('108', '财务', '曾艳', '', '', '财务', 'CW014', '172.16.4.25', '08:60:6E:75:F3:B0', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('109', '财务', '黄秋蝉', '', '', '财务', 'CW080', '172.16.4.117', '4C:CC:6A:29:50:32', 'Intel', '4360', '华硕', 'H81', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('11', '信息与流程管理部', '张顺', 'YD-7111', '系统开发专员', '大仓2楼-201', 'it023', '172.16.1.45', 'FC-AA-14-B5-67-42', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('110', '财务', '张贝', '', '', '财务', 'CW024', '172.16.4.99', 'F4:6D:04:CC:AE:43', 'Intel', 'E7500', '华硕', 'G31', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('111', '财务', '杨晨', '', '', '财务', 'CW020', '172.16.4.201', '08:60:6E:D9:F3:1B', 'Intel', 'G860', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('112', '财务', '管治如', '', '', '财务', 'CW011', '172.16.4.102', '30:85:A9:46:86:80', 'Intel', 'G840', '华硕', 'H61', '4', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('113', '财务', '尹总', '', '', '财务', 'user 20160504kt', '172.16.4.23', '14:DD:A9:09:20:F8', 'Intel', 'G840', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('114', '财务', '丁小丽', '', '', '财务', 'CW001', '172.16.4.89', '08:60:6E:D9:F3:35', 'Intel', 'G860', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('115', '财务', '余海燕', '', '', '财务', 'CW051', '172.16.4.81', '50:E5:49:13:C3:31', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('116', '财务', '谭辉', '', '', '财务', 'CW016', '172.16.4.108', '08:60:6E:07:9B:EE', 'Intel', 'G860', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('117', '财务', '周曼玉', '', '', '财务', 'CW018', '172.16.4.24', '50:E5:49:14:8C:85', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('118', '财务', '千彩婷', '', '', '财务', 'CW041', '172.16.4.224', 'D8:CB:8A:7B:74:E2', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('119', '财务', '马春山', '', '', '财务', 'CW036', '172.16.4.27', 'D0:67:E5:1D:E6:A4', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('12', '信息与流程管理部', '钟家瑜', 'YD-6804', '桌面专员', '大仓2楼-201', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('120', '财务', '耿黎明', '', '', '财务', 'CW002', '172.16.4.85', '14:FE:B5:ED:EC:A1', 'Intel', 'E5800', '戴尔', 'H61', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('121', '财务', '公用', '', '', '财务', 'KCGXUBT…6CWN', '172.16.4.96', 'FC:AA:14:B5:64:55', 'Intel', 'G3258', '技嘉', 'H81', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('122', '财务', '王牡丹', '', '', '财务', 'CW004', '172.16.4.189', '20:CF:30:BB:2C:90', 'Intel', 'E7500', '华硕', 'G31', '3', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('123', '财务', '李晴', '', '', '财务', 'CW555', '172.16.4.9', 'C0:3F:D5:3C:7E:6A', 'Intel', 'G1620', '技嘉', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('124', '财务', '赵静', '', '', '财务', 'CW031', '172.16.4.37', 'D8:CB:8A:C1:2C:7F', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500+500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('125', '财务', '曾爱玲', '', '', '财务', 'CW008', '172.16.4.22', 'D8:CB:8A:50:8F:E6', 'Intel', 'I3 4150', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('126', '财务', '刘迎', '', '', '财务', 'CW019', '172.16.4.59', 'D0:67:E5:09:3B:D3', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('127', '财务', '刘静', '', '', '财务', 'CW038', '172.16.4.206', 'FC:AA:14:85:66:53', 'Intel', 'G3258', '技嘉', 'H81', '4', '1600', '500+250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('128', '财务', '批价公用1', '', '', '财务', 'CW012', '172.16.4.100', 'D8:CB:8A:C7:0C:FC', 'Intel', 'I7 4790K', '微星', 'Z97', '8', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('129', '财务', '批价公用2', '', '', '财务', 'CW062', '172.16.4.123', 'D8:CB:8A:C7:0A:E4', 'Intel', 'I7 4790K', '微星', 'Z97', '8', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('13', '信息与流程管理部', '徐路', 'YD-6970', '桌面专员', '大仓2楼-201', 'it019', '172.16.1.57', 'D8-CB-8A-C1-2D-8F', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('130', '外围财务', '贺李斌', '', '', '', 'cw023', '172.16.4.97', '00-30-67-82-ee-22', 'Intel', 'E7500', '映泰', 'G31', '2', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('131', '外围财务', '邓霏', '', '', '', 'cw022', '172.16.4.73', 'f4-6d-04-cc-b0-cc', 'Intel', 'E7500', '华硕', 'G31', '3', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('132', '外围财务', '尹琼', '', '', '', 'cw030', '172.16.4.109', 'd0-67-e5-1d-e8-92', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('133', '外围财务', '焦丰芳', '', '', '', 'cw003', '172.16.4.11', '94-de-80-57-6e-ae', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('134', '外围财务', '陈琴芳', '', '', '', 'cw026', '172.16.4.56', '94-de-80-5f-fe-df', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('135', '外围财务', '胡海芬', '', '', '', 'cw021', '172.16.4.71', '00-30-67-82-e9-38', 'Intel', 'E7500', '映泰', 'G31', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('136', '外围财务', '戴桃玲', '', '', '', 'cw027', '172.16.4.112', 'd0-67-e5-0b-6d-2b', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('137', '外围财务', '扬琴', '', '', '', 'cw035', '172.16.4.32', '08-60-6e-75-f7-b9', 'Intel', 'G860', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('138', '外围财务', '龙黄金', '', '', '', 'cw029', '172.16.4.231', 'd0-67-e5-13-de-5d', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('139', '外围财务', '杨艳萍', '', '', '', 'cw034', '172.16.4.119', '94-de-80-5f-fe-f8', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('14', '信息与流程管理部', '谢剑文', 'YD-6897', '硬件专员', '大仓2楼-201', 'it015', '', '', '', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('140', '三楼经理办公室', '曹总', '', '', '', 'hr004', '192.168.1.4', '94.de.80.e9.b2.85', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('141', '三楼经理办公室', '王忠红', '', '', '', 'yd619', '172.16.2.93', 'fc.aa.14.b5.66.26', 'Intel', 'i3 4160', '技嘉', 'H81', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('142', '三楼经理办公室', '曾总', '', '', '', 'gmo003', '172.16.3.40', 'd0.67.e5.19.e5.98', 'Intel', 'G840', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('143', '三楼经理办公室', '韩总', '', '', '', 'cmo009', '172.16.3.211', '94.de.80.ed.bd.a6', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('144', '小仓', '小仓1', '', '', '', 'user-20160510IG', '192.168.1.102', 'd0.67.e5.1d.e8.a2', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('145', '小仓', '小仓2', '', '', '', 'user-20160510VA', '192.168.1.104', 'f4.6d.04.cs.b0.e2', 'Intel', 'E7500', '华硕', 'G31', '4', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('146', '小仓', '小仓3', '', '', '', 'user-20160510GK', '192.168.1.113', 'd0.67.e5.1d.ea.e0', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('147', '小仓', '小仓4', '', '', '', 'user-20160510GD', '192.168.1.103', 'd0.67.e5.1d.e9.17', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('148', '小仓', '小仓5', '', '', '', 'user-20160510SC', '192.168.1.116', 'd0.67.e5.1d.e9.97', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('149', '小仓', '小仓6', '', '', '', 'wwopvrfchvbxsed', '192.168.1.114', '50.e5.49.13.4b.18', 'Intel', 'E7500', '技嘉', 'G41', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('15', '信息与流程管理部', '罗志标', 'YD-7027', '硬件专员', '大仓2楼-201', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('150', '小仓', '小仓7', '', '', '', 'tcecv52b55g6520', '192.168.1.121', '18.03.73.31.c6.43', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('151', '小仓', '小仓8', '', '', '', 'user-20160510PU', '192.168.1.115', '5c.f9.dd.75.fd.ff', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('152', '小仓', '小仓9', '', '', '', 'user-20160510VE', '192.168.1.117', 'd0.67.e5.13.e2.8b', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('153', '小仓', '小仓10', '', '', '', 'user-20160510EF', '192.168.1.105', 'd0.67.e5.1d.e8.0d', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('154', '小仓', '小仓11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('155', '大仓', '大仓1', '', '', '', 'NZKFMVKED5FNVSM', '192.168.1.106', '18.03.73.34.49.9c', 'Intel', 'G630', '戴尔', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('156', '大仓', '大仓2', '', '', '', 'ZF1RZXXWAWK4PGW', '192.168.1.108', 'd0.67.e5.1e.b2.d0', 'Intel', 'G840', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('157', '大仓', '大仓3', '', '', '', 'WIN7-20150926UD', '192.168.1.107', '4c.72.b9.58.0b.40', 'AMD', 'A4 3400', 'AMD', 'K12', '4', '1600', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('158', '大仓', '大仓4', '', '', '', '4T2ER7WYMDVYSY', '192.168.1.150', '40.8d.5c.21.01.6b', 'Intel', 'G3420', '技嘉', 'H81', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('159', '大仓', '大仓5', '', '', '', 'DELL-PC', '192.168.1.100', 'ec.22.80.a7.44.4c', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('160', '大仓', '大仓6', '', '', '', 'JUNDA-123456', '192.168.1.105', 'd8.fe.e3.67.14.87', 'Intel', 'G630', '戴尔', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('161', '大仓', '大仓7', '', '', '', 'LHR', '192.168.1.110', '00.cf.e0.1d.cc.b5', 'Intel', 'G1610', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('162', '大仓', '大仓8', '', '', '', 'DELL4', '192.168.1.108', '18.03.73.33.dd.be', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('163', '大仓', '大仓9', '', '', '', 'DELL5', '192.168.1.106', 'f8.e9.03.ad.9d.44', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('164', '大仓', '大仓10', '', '', '', 'ADMIN-PC', '192.168.1.111', 'e8-.cc.18.e9.92.87', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('165', '大仓', '大仓11', '', '', '', 'JUNDA-CC02', '192.168.1.150 ', '6c.19.8f.01.ac.58', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('166', '大仓', '大仓12', '', '', '', 'ZF1RZXXWAWK4PGW', '192.168.1.108', 'c4.a8.1d.00.9e.66', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('167', '大仓', '大仓13', '', '', '', 'user-20160613KP', '192.168.1.101', '6c.19.8f.01.ae.e3', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('168', '大仓', '大仓14', '', '', '', 'user-20160519PW', '192.168.1.104', '28.10.7b.42.f2.84', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('169', '大仓', '大仓15', '', '', '', 'XP-201204022341', '192.168.1.110', 'c4.a8.1d.00.9e.78', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('170', '大仓', '大仓16', '', '', '', 'SC-201506141616', '192.168.1.103', '6c.19.8f.01.ad.66', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('171', '大仓', '大仓17', '', '', '', 'IT-PC', '192.168.1.100', 'c4.a8.1d.00.9e.5f', 'Intel', 'G630', '戴尔', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('172', '骏达网货仓', '骏达网货仓', '', '', '大仓2楼网货仓办公室', 'CC002', '172.16.1.156', 'd0.67.e5.13.e2.td', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('173', '骏达网货仓', '骏达网货仓', '', '', '大仓2楼网货仓办公室', 'whs002', '172.16.1.56', '18.03.73.33.dd.65', 'Intel', 'G630', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('174', '骏达网货仓', '骏达网货仓', '', '', '大仓2楼网货仓办公室', 'yunda-cc015', '172.16.1.86', 'd0.67.e5.1d.e8.92', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('175', '骏达网货仓', '吕浩亮', '', '', '大仓2楼网货仓办公室', 'yund-cc006', '172.16.1.158', 'd0.67.e5.1d.e8.04', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('176', '骏达网货仓', '李欢', '', '', '大仓2楼网货仓办公室', 'whs008', '172.16.1.175', 'd0.67.e5.15.09.2a', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('177', '骏达网货仓', '罗丽君', '', '', '大仓2楼网货仓办公室', 'kf120', '172.16.2.157', '00.30.67.64.c7.46', 'Intel', 'E7500', '映泰', 'G31', '4', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('178', '骏达网货仓', '朱九凤', '', '', '大仓2楼网货仓办公室', 'kf047', '172.16.2.145', '00.30.67.56.a6.a6', 'Intel', 'E7500', '映泰', 'G31', '4', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('179', '网店管理部', '郝慧', '', '', '2楼', 'wl028', '172.16.2.69', '74.d4.35.4d.bd.60', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('18', '大客户市场部', '甘宏瑗', '', '', '大仓1楼-玻璃房', 'bus027', '172.16.1.95', '90-2B-34-09-0F-67', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('180', '网店管理部', '公用', '', '', '', '2012-20150426TI', '172.16.2.21', '74.d4.35.ca.4f.b0', 'Intel', 'G2020', '技嘉', 'H61', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('181', '网店管理部', '敬莺梅', '', '', '', 'wl030', '172.16.2.57', 'd8.cb.8a.74.80.d5', 'Intel', 'i3 4150', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('182', '网店管理部', '周新红', '', '', '', 'wl061', '172.16.2.103', '4c.cc.6a.0b.55.db', 'Intel', 'i3 4360', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('183', '网店管理部', '熊聪', '', '', '', 'wl060', '172.16.2.104', '4c.cc.6a.0b.50.53', 'Intel', 'i3 4360', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('184', '网店管理部', '袁小林', '', '', '', 'yuanda-yyzz014', '172.16.2.25', '74.d4.35.44.46.d8', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('185', '网店管理部', '陈倩倩', '', '', '', 'wl027', '172.16.2.15', 'd8.cb.8a.7b.73.20', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('186', '人力资源部', '刘嘉伦', '', '', '1楼-人力资源部', 'X2022', '172.16.5.146', '94-0E-80-5F-B7-0B', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('187', '人力资源部', '杨小平', '', '', '1楼-人力资源部', 'hr006', '172.16.5.36', '74-D4-35-69-A1-B4', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('188', '人力资源部', '张家露', '', '', '1楼-人力资源部', 'X2017', '172.16.5.251', '90-2B-34-23-4A-31', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('189', '人力资源部', '刘文斌', '', '', '1楼-人力资源部', 'x2006', '172.16.5.38', '00-30-67-64-C7-4A', 'Intel', 'I34160', '映泰', 'G31', '2', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('19', '大客户市场部', '', '', '', '大仓1楼-玻璃房', 'bus028', '172.16.1.94', '78-45-C4-DF-4C-72', 'Intel', 'G840', '戴尔', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('190', '人力资源部', '陈智慧', '', '', '1楼-人力资源部', 'hr010', '172.16.5.37', '08-CB-8A-C1-2D-8A', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('191', '人力资源部', '空闲', '', '', '1楼-人力资源部', 'x2002', '172.16.5.43', 'D0-67-E5-0B-6E-8A', 'Intel', 'E5800', '戴尔', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('192', '人力资源部', '李佩雷', '', '', '1楼-人力资源部', 'HR011', '172.16.5.31', '4C-CC-6A-0B-50-1F', 'Intel', 'I34360', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('193', '人力资源部', '龙凤致', '', '', '1楼-人力资源部', 'x2013', '172.16.5.15', '50-E5-49-BC-02-76', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '500+500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('194', '人力资源部', '方雪钊', '', '', '1楼-人力资源部', 'x2001', '172.16.5.156', 'D0-67-E5-0B-6D-32', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('195', '人力资源部', '杨晟安', '', '', '1楼-人力资源部', '', '', '', 'Intel', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('196', '人力资源部', '打印机', '', '', '1楼-人力资源部', 'x2027', '172.16.5.40', '00-30-67-82-4D-95', 'Intel', 'E7500', '映泰', 'G31', '3', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('197', '人力资源部', '陈骏（绩效）', '', '', '1楼-人力资源部', 'hr002', '172.16.5.29', '94-DE-80-88-F9-0B', 'Intel', 'G860', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('198', '人力资源部', '熊江辉', '', '', '1楼-人力资源部', 'hr009', '172.16.5.26', 'D8-CB-0A-C1-20-89', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('199', '人力资源部', '费龙波', '', '', '1楼-人力资源部', 'x2016', '172.16.5.24', 'D30-85-A9-46-76-0D', 'Intel', 'G840', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('2', '总经办', '田昊', '', '主任', '总经办', 'gmo010', '', '', 'Intel', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('20', '大客户市场部', '', '', '', '大仓1楼-玻璃房', 'kf028', '172.16.1.78', 'F4-6D-04-CC-B5-BB', 'Intel', 'E7500', '华硕', 'G31', '2', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('200', '行政部', '伍琼燕', '', '', '1楼-行政部', 'x2009', '172.16.5.41', 'D0-67-E5-1D-E8-EA', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('201', '行政部', '袁琳', '', '', '1楼-行政部', 'HR005', '172.16.5.23', '50-E5-49-E5-8B-50', 'Intel', 'E7500', '技嘉', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('202', '行政部', '卢丽珍', '', '', '1楼-行政部', 'x2025', '172.16.5.34', '00-30-67-9F-39-55', 'AMD', 'X 240', '映泰', '880G', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('203', '行政部', '黄秀', '', '', '1楼-行政部', 'YUNDA-GMO0-005', '172.16.5.35', 'D0-67-E5-1B-59-7B', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('204', '行政部', '晏海霞', '', '', '1楼-行政部', 'x2007', '172.16.5.89', 'D0-67-E5-CD-EE-FA', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('205', '行政部', '丁波', '', '', '1楼-行政部', 'x2010', '', '', 'Intel', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('206', '行政部', '倪军', '', '', '1楼-行政部', 'x2100', '172.16.5.27', '94-0E-80-EA-87-20', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('207', '付文君', '', '', '', '1楼-行政部', 'X2026', '172.10.2.250', 'D0-E0-62-01-56-51', 'AMD', 'CE1250', '', '', '1', '', '160', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('208', '市场部', '陈佳', '', '', '3楼-市场部', 'LZGWX-7A', '172.16.3.231', '74-D4-35-4F-D8-6F', 'Intel', 'G2030', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('209', '市场部', '王倩', '', '', '3楼-市场部', 'USER-20160326QA', '172.16.3.22', 'D8-CB-8A-7B-72-7F', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('21', '大客户市场部', '', '', '', '大仓1楼-玻璃房', 'kf043', '172.16.1.92', '4C-CC-6A-23-C1-F8', 'Intel', 'I3 4360', '微星', 'H81', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('210', '市场部', '唐叶庆', '', '', '3楼-市场部', 'wl015', '172.16.3.54', '94-DE-80-EA-E0-97', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('211', '市场部', '邹', '', '', '3楼-市场部', 'LCF091', '172.16.3.101', '74-D4-35-6A-3F-9D', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('212', '市场部', '朱江辉', '', '', '3楼-市场部', 'wl010', '172.16.3.28', '00-30-67-82-E9-39', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('213', '快运部', '孙洋', '', '', '快运部', 'user20160326qa', '172.16.3.110', '4C-CC-6A-22-65-96', 'Intel', 'I34360', '微星', 'H81', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('214', '快运部', '谢建华', '', '', '快运部', 'PC201602291231', '172.16.3.56', 'D8-CB-8A-E9-B6-E7', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('215', '快运部', '彭勇', '', '', '快运部', 'GM0006', '172.16.3.215', '00-30-67-9F-52-83', 'AMD', 'X 240', '映泰', '880G', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('216', '快运部', '黄开龙', '', '', '快运部', 'WD-HUANG', '172.16.3.107', 'D8-CB-8A-71-CC-BD', 'AMD', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('22', '大客户市场部', '梁艳梅', '', '', '大仓1楼-玻璃房', '', '172.16.1.132', 'D8-CB-8A-FE-A5-9D', 'Intel', 'I3 4360', '微星', 'H81', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('23', '大客户市场部', '打印机', '', '', '大仓1楼-玻璃房', 'bus009', '172.16.1.21', '20:CF:30:CB:A4:22', 'Intel', 'D336', '华硕', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('24', '大客户市场部', '何金球', '', '项目文员', '大仓1楼-玻璃房', 'kf073', '172.16.1.144', '20:CF:30:CB:A4:B2', 'Intel', 'E7500', '华硕', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('25', '大客户市场部', '曹晓萍', '', '项目文员', '大仓1楼-玻璃房', 'bus017', '172.16.1.124', 'D0:67:E5:15:09:26', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '2012', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('26', '大客户市场部', '杨丹丹', '', '项目文员', '大仓1楼-玻璃房', 'kf090', '172.16.1.62', '74:D4:35:6C:35:0D', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '2013', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('27', '大客户市场部', '廖川', '', '项目主管', '大仓1楼-玻璃房', 'kf044', '172.16.1.64', 'D8:CB:8A:7B:72:B5', 'Intel', 'I3 4150', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('28', '大客户市场部', '梁玉婷', '', '项目文员', '大仓1楼-玻璃房', 'kf029', '172.16.1.65', '00:30:67:82:EE:96', 'Intel', 'E7500', '映泰', 'G31', '3', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('29', '大客户市场部', '彭静', '', '项目文员', '大仓1楼-玻璃房', 'kf100', '172.16.1.148', 'D8:CB:8A:7B:72:BB', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2016', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('3', '总经办', '闲置', '', '', '总经办', 'cw055', '172.16.3.98', '10-BF-48-E3-52-87', 'Intel', 'G840', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('30', '大客户市场部', '徐荣', '', '', '大仓1楼-玻璃房', 'JUNDAA047', '172.16.1.132', '90-2B-34-09-0F-67', 'Intel', 'E7500', '技嘉', 'G41', '4', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('31', '大客户市场部', '张细娇', '', '', '大仓1楼-玻璃房', 'JUNDA-KF001', '172.16.1.143', '50-E5-49-14-9E-7E', 'Intel', 'E7500', '技嘉', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('32', '大客户市场部', '袁路彩', '', '', '大仓1楼-玻璃房', 'JUNDA-BUS016', '172.16.1.103', 'D0-67-E5-19-B7-50', 'Intel', 'G840', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('33', '大客户市场部', '汪祥讯', '', '', '大仓1楼-玻璃房', 'YUNDA-KF127', '172.16.1.139', 'D8-CB-8A-7D-28-39', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('34', '大客户市场部', '唐湘', '', '', '大仓1楼-玻璃房', 'YUNDA-KF160', '172.16.1.131', '4C-CC-6A-0D-33-EA', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('35', '大客户市场部', '张慧芳', '', '', '大仓1楼-玻璃房', 'YUNDA-KF118', '172.16.1.115', 'D8-CB-8A-C1-2D-AD', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('36', '大客户市场部', '石兰秀', '', '', '大仓1楼-玻璃房', 'YUNDA-BUS005', '172.16.1.146', 'D0-67-E5-15-09-20', 'Intel', 'E5800', '戴尔', 'G41', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('37', '大客户市场部', '曹雪萍', '', '', '大仓1楼-玻璃房', 'YUNDA-KF087', '172.16.1.119', 'D8-CB-8A-EA-39-DC', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('38', '大客户市场部', '詹志', '', '', '大仓1楼-玻璃房', 'YUNDA-KF084', '172.16.1.133', 'D8-CB-8A-7D-22-52', 'Intel', 'I34150', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('39', '大客户市场部', '蔡奔月', '', '', '大仓1楼-玻璃房', 'YUNDA-BUS015', '172.16.1.135', '14-FE-B5-ED-11-8D', 'Intel', 'E5800', '戴尔', 'H61', '4', '800', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('4', '数据中心', '费龙波', '', '经理', '总经办', 'xz016', '172.16.3.97', 'd8-cb-8a-c7-0a-aa', 'Intel', 'i7 4790K', '微星', 'Z97', '8', '1600', '1000', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('40', '大客户市场部', '卢桂玲', '', '', '大仓1楼-玻璃房', 'YUNDA-KF116', '172.16.1.139', 'D8-CB-8A-C1-2D-86', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('41', '大客户市场部', '周婷', '', '', '大仓1楼-玻璃房', 'YUNDA-KF119', '172.16.1.193', 'D8-CB-8A-C1-2D-8B', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('42', '大客户市场部', '庞敏怡', '', '', '大仓1楼-玻璃房', 'YUNDA-KF117', '172.16.1.126', 'D8-CB-8A-C1-2D-8C', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('43', '大客户市场部', '鲁庆华', '', '', '大仓1楼-玻璃房', 'YUNDA-BUS025', '172.16.1.137', 'D0-67-E5-1D-E8-0E', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('44', '大客户市场部', '黄晓芳', '', '', '大仓1楼-玻璃房', 'KF051', '172.16.1.145', 'F4-6D-04-CC-B5-A1', 'Intel', 'E7500', '华硕', 'G31', '2', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('45', '大客户市场部', '罗润芝', '', '', '大仓1楼-玻璃房', 'KF075', '172.16.1.147', '00-30-67-64-C5-66', 'Intel', 'E7500', '映泰', 'G31', '2', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('46', '大客户市场部', '刘慧芳', '', '', '大仓1楼-玻璃房', 'KF111', '172.16.1.149', 'D8-CB-8A-7B-6C-B2', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('47', '大客户市场部', '朱晓斌', '', '', '大仓1楼-玻璃房', 'KF122', '172.16.1.138', 'D8-CB-8A-7D-21-94', 'Intel', 'I34160', '微星', 'B85', '6', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('48', '大客户市场部', '陈敏娟', '', '', '大仓1楼-玻璃房', 'KF112', '172.16.1.140', 'D8-CB-8A-7B-6C-96', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('49', '大客户市场部', '张风琴', '', '', '大仓1楼-玻璃房', 'YUNDA-014', '172.16.1.139', 'D0-67-E5-15-06-C3', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('5', '数据中心', '备用', '', '主管', '总经办', 'gmo013', '172.16.3.95', 'd8-cb-8a-c7-0a-c7', 'Intel', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('50', '大客户市场部', '李晓红', '', '', '大仓1楼-玻璃房', 'KF028', '172.16.1.78', 'E4-6D-04-CC-B5-BB', 'Intel', 'E7500', '华硕', 'G31', '2', '800', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('51', '大客户市场部', '王春梅', '', '', '大仓1楼-玻璃房', 'NEW-PC', '172.16.1.134', 'D8-CB-8A-7D-22-46', 'Intel', 'I34160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('52', '大客户市场部', '肖小琴', '', '', '大仓1楼-玻璃房', 'KF043', '172.16.1.150', '00-30-67-64-C7-3F', 'Intel', 'E5800', '映泰', 'G41', '2', '1333', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('53', '大客户市场部', '胡蕾', '', '', '大仓1楼-玻璃房', 'BUS007', '172.16.1.36', 'D0-67-E5-15-09-27', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('54', '大客户市场部', '魏笑天', '', '', '大仓1楼-玻璃房', 'BUS020', '172.16.1.136', 'D0-67-E5-1A-1C-7C', 'Intel', 'G840', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('55', '大客户市场部', '曹经理', '', '', '大仓1楼-玻璃房', 'BUS011', '172.16.1.27', 'D0-67-E5-15-09-17', 'Intel', 'G840', '戴尔', 'G41', '2', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('56', '客服部1', '文忠兴', '', '', '2楼-客服1', 'kf1', '172.16.2.171', 'D8:CB:8A:7B:73:33', 'Intel', 'I3 4150', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('57', '客服部1', '熊燕华', '', '', '2楼-客服1', 'kf120', '172.16.2.157', '00:30:67:64:C7:46', 'Intel', 'E7500', '华硕', 'G31', '6', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('58', '客服部1', '黄英', '', '', '2楼-客服1', 'kf062', '172.16.2.178', '00:30:67:BC:EC:4A', 'AMD', '', '映泰', '', '2', '1333', '500', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('59', '客服部1', '郑雪茹', '', '', '2楼-客服1', 'kf039', '172.16.2.144', 'F4:6D:04:CC:BC:3B', 'Intel', 'E7500', '映泰', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('6', '信息与流程管理部', '何胜利', 'YD-4298', '高级经理', '大仓2楼-201', 'it002', '172.16.1.251', 'fc-aa-14-b8-7a-ba', 'Intel', 'i3 4160', '技嘉', 'H81', '8', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('60', '客服部1', '肖叶丽', '', '', '2楼-客服1', 'kf077', '172.16.2.142', '00:30:67:65:72:D5', 'Intel', 'E7500', '映泰', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('61', '客服部1', '黄岸珠', '', '', '2楼-客服1', 'kf126', '172.16.2.173', '00:30:67:65:73:39', 'Intel', 'E7500', '华硕', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('62', '客服部1', '余林', '', '', '2楼-客服1', 'kf052', '172.16.2.156', '20:CF:30:CB:A4:45', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('63', '客服部1', '卢梅', '', '', '2楼-客服1', 'kf041', '172.16.2.197', '00:30:67:82:E4:51', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('64', '客服部1', '赵玲玲', '', '', '2楼-客服1', 'kf071', '172.16.2.179', '50:E5:49:12:DB:42', 'Intel', 'E7500', '技嘉', 'G41', '2', '1333', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('65', '客服部1', '杨华', '', '', '2楼-客服1', 'kf069', '172.16.2.152', '90:2B:34:07:F3:OF', 'Intel', 'E7500', '技嘉', 'G41', '2', '1333', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('66', '客服部1', '黄岸珠', '', '', '2楼-客服1', 'bus002', '172.16.2.141', '20:CF:30:CB:A4:43', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('67', '客服部1', '朱宛澍', '', '', '2楼-客服1', 'kf128', '172.16.2.154', '74:D4:35:CA:4B:82', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '2012', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('68', '客服部2', '朱九凤', '', '', '2楼-客服2', 'kf047', '172.16.2.145', '', 'Intel', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('69', '客服部2', '贾德俊', '', '', '2楼-客服2', 'kf034', '172.16.2.151', 'F4:6D:04:CC:B0:DF', 'Intel', 'E7500', '技嘉', 'G31', '3', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('7', '信息与流程管理部', '徐迪军', 'YD-0346', '技术支持主管', '大仓2楼-201', 'it003', '172.16.1.50', 'D8-CB-8A-E4-A5-5C', 'Intel', 'i7 4790K', '微星', 'Z97', '16', '1600', '240', 'AOC', '23', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('70', '客服部2', '刘敏', '', '', '2楼-客服2', '', '172.16.2.159', '20:CF:30:CB:A4:39', 'Intel', 'E7500', '技嘉', 'G31', '3', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('71', '客服部2', '庄细妹', '', '', '2楼-客服2', 'kf033', '172.16.2.153', '20:CF:30:A0:CB:AD', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('72', '客服部2', '钟慧敏', '', '', '2楼-客服2', 'kf113', '172.16.2.140', '08:CB:5A:7B:6C:B4', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('73', '客服部2', '张璐', '', '', '2楼-客服2', 'kf068', '172.16.2.148', '20:CF:30:CB:A4:42', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('74', '客服部2', '余秋红', '', '', '2楼-客服2', 'kf002', '172.16.2.172', '00:30:18:A6:3A:9A', 'AMD', 'X435', '', '', '3', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('75', '客服部2', '黄巧玲', '', '', '2楼-客服2', 'kf032', '172.16.2.149', '00:30:67:82:F4:5C', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('76', '客服部2', '陈佳妍', '', '', '2楼-客服2', 'kf074', '172.16.2.147', '90:2B:34:23:77:8E', 'Intel', 'E7500', '技嘉', 'G31', '2', '1333', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('77', '客服部2', '谢云妮', '', '', '2楼-客服2', 'kf045', '172.16.2.58', 'F4:6D:04:CC:AB:B3', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('78', '客服部2', '高扬', '', '', '2楼-客服2', 'kf046', '172.16.2.143', 'F4:6D:04:CC:B0:DC', 'Intel', 'E7500', '技嘉', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('79', '客服部3', '苏一坤', '', '', '2楼-客服3', 'kf058', '172.16.2.195', 'D8:CB:8A:7B:75:A0', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('8', '信息与流程管理部', '郭明星', 'YD-4221', '系统分析专员', '大仓2楼-201', '', '', '', 'Intel', 'i7 4790K', '微星', 'Z97', '16', '1600', '240', 'AOC', '23', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('80', '客服部3', '冯磊磊', '', '', '2楼-客服3', 'kf115', '172.16.2.193', 'D8:CB:0A:7B:6B:84', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('81', '客服部3', '严彩凤', '', '', '2楼-客服3', '', '172.16.2.196', 'D0:67:E5:15:09:8E', 'Intel', 'E5800', '戴尔', 'G41', '4', '1333', '500', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('82', '客服部3', '罗胜', '', '', '2楼-客服3', 'kf081', '172.16.2.192', 'D8:CB:8H:7B:6C:AF', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('83', '客服部3', '刘守冰', '', '', '2楼-客服3', 'kf089', '172.16.2.146', '00:67:E5:1D:E9:63', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('84', '客服部3', '付小静', '', '', '2楼-客服3', '', '172.16.2.155', '00:CB:8A:7B:72:C8', 'Intel', 'I3 4160', '微星', 'B85', '4', '1600', '500', '', '', '2015', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('85', '客服部3', '徐超', '', '', '2楼-客服3', 'bus008', '172.16.2.194', '00:61:E5:15:09:74', 'Intel', 'E5800', '戴尔', 'G41', '2', '1333', '500', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('86', '客服部4', '李永碧', '', '', '2楼-客服4', 'kf008', '172.16.2.186', '00.30.67.56.93.c4', 'Intel', 'E7500', '映泰', 'G31', '4', '800', '160', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('87', '客服部4', '李永碧', '', '', '2楼-客服4', 'kf010', '172.16.2.185', 'f4.6d.04.cc.b1.35', 'Intel', 'E7500', '华硕', 'G31', '4', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('88', '客服部4', '游先东', '', '', '2楼-客服4', 'kf017', '172.16.2.190', '48.5b.39.40.07.ed', 'Intel', 'E7500', '华硕', 'G31', '4', '800', '500', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('89', '客服部4', '韦柳池', '', '', '2楼-客服4', 'zc010', '172.16.2.182', 'd8.cb.8a.7b.72.78', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('9', '信息与流程管理部', '胡越', 'YD-7119', '流程分析专员', '大仓2楼-201', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('90', '客服部4', '杨全良', '', '', '2楼-客服4', 'kf049', '172.16.2.180', '74.d4.35.65.39.09', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('91', '客服部4', '伍俊', '', '', '2楼-客服4', 'kf011', '172.16.2.184', 'd8.cb.8a.9b.62.c6', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('92', '客服部4', '李秋苗', '', '', '2楼-客服4', 'kf048', '172.16.2.191', 'd8.cb.8a.9b.62.be', 'Intel', 'i3 4160', '微星', 'B85', '4', '1600', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('93', '客服部4', '赖丽芳', '', '', '2楼-客服4', 'kf031', '172.16.2.187', '00.30.67.82.ee.81', 'Intel', 'E7500', '映泰', 'G31', '2', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('94', '客服部4', '华贝贝', '', '', '2楼-客服4', 'kf086', '172.16.2.188', '74.d4.35.ca.4f.ac', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('95', '客服部4', '陈杏花', '', '', '2楼-客服4', 'kf040', '172.16.2.179', '74.d4.35.6a.47.ea', 'Intel', 'G2020', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('96', '客服部4', '…', '', '', '2楼-客服4', 'kf124', '172.16.2.177', 'c4.cc.6a.0b..58.24', 'Intel', 'i3 4150', '微星', 'B85', '4', '1600', '250', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('97', '客服部4', '周娟娟', '', '', '2楼-客服4', 'kf134', '172.16.2.189', '30.85.a9.3a.df.7f', 'Intel', 'G840', '华硕', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('98', '客服部4', '杜涛', '', '', '2楼-客服4', 'zc002', '172.16.2.181', '74.d4.35.cf.7b.d2', 'Intel', 'G2030', '技嘉', 'H61', '4', '1333', '500', '', '', '', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('99', '客服部4', '郑晓敏', '', '', '2楼-客服4', 'kf015', '172.16.2.183', '00.30.67.65.7e.2c', 'Intel', 'E7500', '映泰', 'G31', '4', '800', '250', '', '', '2011', '', null, null, null, null, null);
INSERT INTO `zm_computer` VALUES ('c041605183504631', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '2017-02-04', '注册', '2017-02-04 16:05:18', '无效', 'yd-7264');
INSERT INTO `zm_computer` VALUES ('c041612165556944', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '2017-02-04', '注册', '2017-02-04 16:12:16', '无效', 'yd-7264');
INSERT INTO `zm_computer` VALUES ('c041612199477000', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '2017-02-04', '维护', '2017-02-04 16:12:19', '有效', 'yd-7264');

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
  `p_type` varchar(255) DEFAULT NULL,
  `p_create_time` datetime DEFAULT NULL,
  `p_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_phone_line
-- ----------------------------
INSERT INTO `zm_phone_line` VALUES ('1', '', '', '', null, null, '27610265', 'HR', '员工招聘', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('2', null, null, null, null, '传真', '83379850', 'HR', '收发传真', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('3', null, null, null, null, '电话', '83379011', 'HR', '经理招聘', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('4', null, null, null, null, '电话', '83379950', '行政部', '采购号码', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('5', null, null, null, null, '电话', '83379909', '保安室', '保安室', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('6', null, null, null, null, '电话', '29050713', '核算部', '出纳办公', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('7', null, null, null, null, '电话', '29050650', '核算部', '税务办公', '韵达', '通', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('8', null, null, null, null, '传真', '29307550', '仲裁部', '收发传真', '韵达', '新仓使用', null, null, null, null, null);
INSERT INTO `zm_phone_line` VALUES ('p041749288736797', null, null, null, null, null, '1', '2', '3', '4', '5', '2017-02-04', '注册', '2017-02-04 17:49:28', '无效', 'yd-7264');
INSERT INTO `zm_phone_line` VALUES ('p041749321297016', null, null, null, null, null, '1', '2', '3', '4', '5', '2017-02-04', '维护', '2017-02-04 17:49:32', '有效', 'yd-7264');

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
  `p_service_type` varchar(255) DEFAULT NULL,
  `p_create_time` datetime DEFAULT NULL,
  `p_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_printer
-- ----------------------------
INSERT INTO `zm_printer` VALUES ('1', '兄弟', 'DCP-9020CDN', '观澜总部', '4楼-总经办', '公司', '网络', '172.16.4.6', '办公室自备', '无', '彩色激光多功能一体机', '打印、复印、扫描', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('10', '富士施乐', 'M268 dw', '观澜总部', '2楼-信息与流程管理部', '公司', '网络', '172.16.1.35', 'IT办公室，1瓶，3个硒鼓（没粉）', 'IT', '多功能商用一体机', '打印/复印/扫描', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('11', '三星', 'K2200ND', '观澜总部', '1楼-骏达仓储部', '租赁', 'USB', '172.16.1.98', 'IT机房一个新粉盒', 'IT', '数码复合机', '复印/打印/扫描', 'A3', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('12', 'HP', '1536', '观澜总部', '1楼-骏达仓储部', '租赁', 'USB', '', '大仓留有4-5个备用粉盒', '骏达', '黑白激光多功能一体机', '打印/复印/扫描/传真', 'A4', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('13', '京瓷', '1125MFD', '观澜总部', '1楼-骏达仓储部', '租赁', '网络', '172.16.1.243', '', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO `zm_printer` VALUES ('14', '兄弟', 'DCP-9020CDN', '观澜总部', '', '', '', '172.16.3.9', '', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO `zm_printer` VALUES ('2', '京瓷', '1125MFD', '观澜总部', '4楼-会计室', '租赁', '网络', '172.16.4.5', 'IT办公室1桶新的，4楼一小半桶', 'IT', '黑白激光多功能一体机', '打印/复印/扫描/传真', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('3', '美村村田', 'MFX-1820/2010', '观澜总部', '3楼-网点管理部', '租赁', '网络', '172.16.3.10', 'IT办公室1个新的墨粉盒，1个半盒', 'IT', '数码复合机', '打印/复印/连续扫描/传真', 'A3', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('4', 'HP', 'M176', '观澜总部', '3楼-总经办曾总', '公司', '网络', '172.16.3.32', '办公室自备', '无', '彩色激光多功能一体机', '打印/复印/扫描', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('5', '美村村田', 'MFX-1820/2010', '观澜总部', '2楼-客服部', '租赁', '网络', '172.16.2.2', 'IT办公室1个新的墨粉盒，1个半盒', 'IT', '数码复合机', '打印/复印/扫描/传真', 'A3', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('6', 'HP', 'M225-M226', '观澜总部', '1楼-人力资源部', '租赁', '网络', '172.16.5.100', '1楼左边抽屉3瓶新，IT办公室4瓶新', 'IT', '黑白激光', '打印/复印/扫描/传真', 'A4', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('7', '爱普生', 'PHOTO R230', '观澜总部', '1楼-人力资源部', '公司', 'USB', '', '墨水，有备用', 'HR', '照片打印机', '打印照片，工牌用', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('8', '爱普生', 'L350', '观澜总部', '1楼-人力资源部', '公司', '网络', '172.16.5.40', '墨水，黑色墨水无备用', 'HR', '喷墨多功能一体机', '打印/复印/扫描', 'A4', 'IT', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('9', '京瓷', '1125MFD', '观澜总部', '1楼-大客户客服部', '租赁', '网络', '172.16.1.21', 'IT办公室1桶新的，4楼一小半桶', 'IT', '黑白激光多功能一体机', '打印/复印/扫描/传真', 'A4', '售后', '2016-06-28', '2016-07-25', null, null, null, null);
INSERT INTO `zm_printer` VALUES ('p041725225485107', '1', '2', null, '3', '注册', '5', '6', '7', '8', '9', '10', '11', '12', '2017-02-01', '2017-02-02', null, '2017-02-04 17:25:22', '有效', 'yd-7264');
INSERT INTO `zm_printer` VALUES ('p041726508933182', '1', '2', null, '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '2017-02-01', '2017-02-02', '注册', '2017-02-04 17:26:50', '无效', 'yd-7264');
INSERT INTO `zm_printer` VALUES ('p041726563213369', '1', '2', null, '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', null, null, '维护', '2017-02-04 17:26:56', '有效', 'yd-7264');

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
  `w_type` varchar(255) DEFAULT NULL,
  `w_create_time` datetime DEFAULT NULL,
  `w_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zm_wifi
-- ----------------------------
INSERT INTO `zm_wifi` VALUES ('1', '202猫屋', '172.16.2.121', 'admin', '9qe2wytt', 'mw002', 'mworg002', '450M企业路由', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('11', '大仓主WIFI', '172.16.1.166', 'admin', '9qe2wytt', 'junda-dc', 'Junda+123', '进行了MAC地址绑定，目前只有仓库电脑可以连', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('12', '大仓A区WIFI', '172.16.1.100', 'admin', '9qe2wytt', 'DC-A', 'Junda++123', '大仓A区手机使用,已做MAC管控，全网限制,开通qq、购物权限', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('13', '大仓后面退件', '172.16.1.179/180', 'admin', '9qe2wytt', 'dacang-kufang', 'Junda123', '', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('15', '小仓操作区', '172.16.2.211/212', 'admin', '9qe2wytt', 'Junda-xc1', '', '450M-1', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('16', '小仓操作区', '172.16.2.213/214', 'admin', '9qe2wytt', 'Junda-xc2', '', '451M-2', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('17', '小仓操作区', '172.16.2.215/216', 'admin', '9qe2wytt', 'Junda-xc01', 'Junda+123..', '300M-1，备用', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('18', '小仓操作区', '172.16.2.217/218', 'admin', '9qe2wytt', 'Junda-xc02', 'Junda+123..', '300M-2', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('19', '小仓操作区', '172.16.2.219/220', 'admin', '9qe2wytt', 'Junda-xc03', 'Junda+123..', '300M-3', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('2', '207客服3', '172.16.2.232', 'admin', '9qe2wytt', 'Junda-kf3', 'Junda+1230.', '', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('20', '小仓操作区', '172.16.2.221/222', 'admin', '9qe2wytt', 'Junda-xc04', 'Junda+123..', '300M-4', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('21', '小仓操作区', '172.16.2.223/224', 'admin', '9qe2wytt', 'Junda-xc05', 'Junda+123..', '300M-5', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('22', '小仓操作区', '172.16.2.225/226', 'admin', '9qe2wytt', 'Junda-xc06', 'Junda+123..', '300M-6', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('3', '301网点管理部', '172.16.3.231', '', '9qe2wytt', 'junda_wdgl', 'jundawdgl', '网点管理部自购的设备', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('4', '306王总办公室', '172.16.3.31', 'admin', '', 'dlink999', '', '王总自购路由器', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('5', '308曹总办公室', '172.16.3.32', 'admin', '9qe2wytt', 'CMCC', 'yd518000', '各位副总用，位于曹总办公桌下', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('6', '四楼会议室', '172.16.4.7:9000 ', 'admin', '9qe2wytt', 'office-401/yunda-AP', 'office401/yd518000', '四楼会议室(会议使用)', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('7', '童总办公室', '172.16.4.10', 'admin', '9qe2wytt', 'office-405', 'szyd888888', '童总办公室所用', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('8', 'IT办公室', '172.16.1.48', 'admin', '9qe2wytt', 'IT@CCTV', 'yd161217@Ec2E', 'IT部测试使用', null, null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('w021511146958876', '童总车库', '自动获取ip', 'admin', '9qe2wytt', 'szyd001', 'SZyd123456', '', '2016-12-02', null, null, null, null);
INSERT INTO `zm_wifi` VALUES ('w041705466948630', '1', '2', '3', '4', '5', '6', '7', '2017-02-04', '注册', '2017-02-04 17:05:46', '无效', 'yd-7264');
INSERT INTO `zm_wifi` VALUES ('w041705521826648', '1', '2', '3', '4', '5', '6', '7', '2017-02-04', '注册', '2017-02-04 17:05:52', '有效', 'yd-7264');
