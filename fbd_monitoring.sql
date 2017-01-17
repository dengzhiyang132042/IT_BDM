/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-01-16 18:50:34
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `m_displayer` varchar(255) DEFAULT NULL,
  `m_mainframe_brand` varchar(255) DEFAULT NULL,
  `m_mainframe_number` varchar(255) DEFAULT NULL,
  `m_interface` int(11) DEFAULT NULL,
  `m_time_start` date DEFAULT NULL,
  `m_used_year` double(30,2) DEFAULT NULL,
  `m_scrap` varchar(255) DEFAULT NULL,
  `m_period` varchar(255) DEFAULT NULL,
  `m_note` varchar(255) DEFAULT NULL,
  `m_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_monitoring
-- ----------------------------
INSERT INTO `fbd_monitoring` VALUES ('1', 'fbd141350419511277', null, '1', '4T', 'admin', '201517', '', '大华', '', '24', '2016-06-23', '0.60', '', '', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('10', 'fbd141350419511277', '15', '4', '2T+2T+2T+2T', 'admin', '201517/空', '', '大华', '', '16', '2016-01-23', '1.00', '', '90', '这个数据分拨点是错误的，分拨点是观澜', '');
INSERT INTO `fbd_monitoring` VALUES ('11', 'fbd141411150273369', '13', '1', '4T', 'admin/001', '201517', '液晶显示屏', '大华', '', '16', '2016-01-01', '1.00', '', '40', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('12', 'fbd141411393551200', '8', '4', '2T+2T+2T+2T', 'admin/001', '201517', '杂牌', '大华', '', '16', '2015-01-01', '2.00', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('13', 'fbd141400338413716', '14', '4', '2T+2T+2T+2T', 'admin/001', '201517/未知', 'dell', '大华', '', '16', '2014-01-01', '3.00', '', '50', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('14', 'fbd141401220936294', '16', '2', '4T+4T', 'admin/001', '201517/空', '清华紫光', '大华', '', '16', '2014-01-01', '3.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('15', 'fbd141402191551172', '8', '3', '2T+2T+2T', 'admin/001', '201517/空', '其他', '大华', '', '16', '2014-01-01', '3.00', '', '120', '', null);
INSERT INTO `fbd_monitoring` VALUES ('16', 'fbd141412019727588', '10', '3', '2T+2T+2T', 'admin/001', '201517/空', '优派', '大华', '', '16', '2014-01-01', '3.00', '', '30', '', null);
INSERT INTO `fbd_monitoring` VALUES ('17', 'fbd141414511667963', '14', '1', '4T', 'admin/001', '201517/空', 'Acre', '大华', '', '16', '2016-08-15', '0.40', '', '40', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('18', 'fbd141420017222766', '9', '2', '4T+2T', '88888888/001', '201517/198635', '未知', '大华', '', '16', '2014-01-01', '3.00', '', '30', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('19', 'fbd141354583085830', '8', '3', '2T', 'admin/001', '201517/001', '大头', '大华', '', '16', '2013-01-01', '4.00', '', '90', '', null);
INSERT INTO `fbd_monitoring` VALUES ('2', 'fbd141354053595858', null, '1', '4T', 'admin', '201517', '', '大华', '', '24', '2016-06-23', '0.60', '', '', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('20', 'fbd141357009696912', '9', '2', '4T+4T', 'admin/001', '201517/001', 'Viewsonic', '大华', '', '16', '2013-01-01', '4.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('21', 'fbd141417466766909', '8', '2', '4T+4T', 'admin/001', '201517/空', '大头', '大华', '', '16', '2013-01-01', '4.00', '', '50', '', null);
INSERT INTO `fbd_monitoring` VALUES ('22', 'fbd141418429785179', '9', '2', '2T', 'admin', '201517', '大头', '大华', '', '16', '2013-01-01', '4.00', '', '50', '', null);
INSERT INTO `fbd_monitoring` VALUES ('23', 'fbd141359107432924', '8', '1', '2T', 'admin', '201517', 'DELL', '大华', '', '8', '2012-01-01', '5.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('24', 'fbd141409136034396', '10', '1', '4T', 'admin/001', '201517/空', '无', '大华', '', '16', '2016-09-09', '0.40', '', '40', '', null);
INSERT INTO `fbd_monitoring` VALUES ('25', 'fbd141116211657358', '8', '2', '1.5T', 'admin', '201517', '大头', '杂牌', '', '8', '2010-01-01', '7.00', '', '80', '', null);
INSERT INTO `fbd_monitoring` VALUES ('26', 'fbd141415185804188', '8', '2', '2T+2T', 'admin', '201517', '大头', '杂牌', '', '8', '2010-01-01', '7.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('27', 'fbd021002107147666', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('28', 'fbd021005077193149', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('29', 'fbd021006423989684', '10', '1', '4T', 'admin', '201517', '杂牌', '大华', '', '16', '2015-01-01', '2.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('3', 'fbd141403371589674', '15', '2', '4T+4T', 'admin', '201517/空', 'ACO', '大华', '', '16', '2016-06-28', '0.60', '', '20', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('30', 'fbd141351090698714', '11', null, '', '', '', '', '', '', '16', null, '117.00', '', '30', '', null);
INSERT INTO `fbd_monitoring` VALUES ('31', 'fbd141351325127367', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('32', 'fbd141352006835908', '12', null, '', '', '', '', '', '', null, null, '117.00', '', '29', '', null);
INSERT INTO `fbd_monitoring` VALUES ('33', 'fbd141353082617139', '9', '1', '4T', 'admin/001', '201517/001', 'Acre', '大华', '无公司在用电脑', '16', '2016-07-11', '0.50', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('34', 'fbd141354350598244', '7', '1', '4T', 'admin/001', '201517/001', 'Acre', '大华', '', '16', '2016-08-22', '0.40', '', '60', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('35', 'fbd141355242844155', '6', '1', '2T+2T', 'admin/001', '201517/001', 'Viewsonic', '大华', '', '8', '2010-01-01', '7.00', '', '45', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('36', 'fbd141355448172565', '9', null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('37', 'fbd141356368226800', '8', null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('38', 'fbd141358110468832', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('39', 'fbd141359388972799', '15', '2', '4T+4T', 'admin/001', '201517/001', 'Acre', '大华', '', '16', '2016-07-29', '0.50', '', '60', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('4', 'fbd141115199569898', '8', '1', '4T', 'admin/001', '201517/空', '大头', '大华', '', '24', '2016-06-23', '0.60', '', '50', '', null);
INSERT INTO `fbd_monitoring` VALUES ('40', 'fbd141400041993882', null, null, '', '', '', '', '', '', null, null, null, '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('41', 'fbd141401497321214', '8', '2', '2T+2T', 'admin/001', '201517/001', '未知', '其他', '', '8', '2014-01-01', '3.00', '', '60', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('42', 'fbd141406145142662', '16', null, '', '', '', '', '', '', '16', null, '117.00', '', '30', '', null);
INSERT INTO `fbd_monitoring` VALUES ('43', 'fbd141407123096770', '8', '5', '2T+2T+2T+2T+2T', 'admin/001', '201517/0011', 'Viewsonic', '大华', '', '16', '2014-07-01', '2.50', '', '40', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('44', 'fbd141407508543216', '12', '1', '4T', 'admin/001', '201517/001', 'DELL', '大华', '', '16', '2016-07-11', '0.50', '', '40', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('45', 'fbd141409374513834', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('46', 'fbd141415446172366', '11', '2', '2T+2T', 'admin', '201517', 'DELL', '大华', '', '16', '2015-01-01', '2.00', '', '45', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('47', 'fbd141416072972374', '8', null, '', '', '', '', '', '', null, null, '117.00', '', '90', '', null);
INSERT INTO `fbd_monitoring` VALUES ('48', 'fbd141416345656856', '8', '2', '4T+4T', 'admin', '201517', 'DELL', '大华', '', '8', '2014-01-01', '3.00', '', '40', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('49', 'fbd141416581021160', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('5', 'fbd141357282313657', '8', '1', '4T', 'admin/001', '201517/空', 'DELL', '大华', '', '16', '2016-05-17', '0.70', '', '66', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('50', 'fbd141417235583973', null, null, '', '', '', '', '', '', null, null, '117.00', '', '', '', null);
INSERT INTO `fbd_monitoring` VALUES ('51', 'fbd141418103976372', '11', '1', '4T', 'admin', '2451/9/24', 'acer', '大华', '', '16', '2016-07-20', '0.50', '', '90', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('52', 'fbd141419127189685', '10', '1', '4T', 'admin', '201517', 'acer', '大华', '', '16', '2016-07-20', '0.50', '', '45', '罗志标核实', null);
INSERT INTO `fbd_monitoring` VALUES ('53', 'fbd141420419397698', '10', '2', '2T+2T', 'admin', '201517', '清华紫光', '大华', '', '16', '2014-01-01', '3.00', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('54', 'fbd141421032315126', '12', '6', '2T+2T+2T', 'admin', '201517', '清华紫光', '大华', '', '16', '2015-07-11', '1.50', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('55', 'fbd141421374406870', '9', '1', '4T', 'admin', '201517', '清华紫光', '大华', '', '8', '2016-07-11', '0.50', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('6', 'fbd141419345605605', '14', '2', '2T', '88888888/666666?', '201517/空', 'DELL', '大华', '', '16', '2016-05-28', '0.60', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('7', 'fbd141357524822065', '8', '1', '4T', 'admin/001', '201517/空', 'DELL', '大华', '', '16', '2016-05-01', '0.70', '', '90', '', null);
INSERT INTO `fbd_monitoring` VALUES ('8', 'fbd141358337016360', '13', '2', '4T+4T', 'admin/001', '201517/001', 'AOC', '大华', '', '16', '2016-03-26', '0.80', '', '90', '谢剑文核实', null);
INSERT INTO `fbd_monitoring` VALUES ('9', 'fbd141408386435021', '13', '1', '4T', 'admin/001', '201517/空', '大头', '大华', 'DH-HCVR4116HS-V3', '16', '2016-07-11', '0.50', '', '30', '', null);
