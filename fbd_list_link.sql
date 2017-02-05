/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-05 16:54:51
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `ll_type` varchar(255) DEFAULT NULL,
  `ll_create_time` datetime DEFAULT NULL,
  `ll_valid_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_list_link
-- ----------------------------
INSERT INTO `fbd_list_link` VALUES ('1', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控主机', '1', '台', '大华DH-HCVR5232AN-V4高清硬盘录像机 32路HDCVI同轴1080P监控主机 无硬盘', 'https://item.jd.com/10051657201.html', '32路主机', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('10', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '扎带', '2', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('100', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '监控硬盘', '0', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('101', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '监控视频线', '3', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('102', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '监控显示器', '0', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('103', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '监控摄像机', '16', '个', '沃仕达（woshida） 776F6Z 高清1200线 监控摄像头 监控器 探头红外夜视阵列 4MM高清6灯', 'http://item.jd.com/1045653.html', '高清6灯', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('104', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '摄像机电源', '16', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'http://item.jd.com/702684.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('105', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '摄像机支架', '16', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('106', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '扎带', '4', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('107', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '胶布', '2', '卷', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('108', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', 'BNC头', '5', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('109', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '螺丝钉', '1', '盒', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('11', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '猫', '0', '台', 'TP-LINK TD-8620T ADSL2+ Modem（白色）', 'http://item.jd.com/574731.html', '白色', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('12', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '交换机', '1', '台', '华为（HUAWEI）S1700-24GR 24口千兆非网管 交换机', 'https://item.jd.com/1535164.html', '24口交换机', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('13', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '路由器', '1', '台', 'TP-LINK TL-WR886N 450M无线路由器（宝蓝） WIFI无线穿墙王', 'http://item.jd.com/1238332.html', '450M旗舰 宝蓝', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('14', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '电工胶带', '6', '卷', '舒氏电工胶带10支装', 'http://item.jd.com/1053169176.html', '绿', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('15', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '网线', '1', '箱', '安普西蒙超五类网线 超六类网线 屏蔽网线 全铜纯铜无氧铜网线 水晶头网线钳网线 A50 超五类非屏蔽300米 整箱', 'http://item.jd.com/1746157005.html', '超五类非屏蔽线300米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('16', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', 'BNC头', '10', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('17', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '监控主机', '0', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051657201.html', '2个硬盘接口', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('18', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '监控硬盘', '0', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('19', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '监控视频线', '1', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('2', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控硬盘', '2', '个', '6TB监控专用盘 录像机硬盘 希捷ST硬盘监控设备套装Video 3.5 6000G', 'http://item.jd.com/11096060172.html', '6T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('20', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '监控显示器', '0', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('21', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '监控摄像机', '4', '个', '沃仕达（woshida） 776F6Z 高清1200线 监控摄像头 监控器 探头红外夜视阵列 4MM高清6灯', 'http://item.jd.com/1045653.html', '高清6灯', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('22', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '摄像机电源', '4', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'http://item.jd.com/702684.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('23', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '摄像机支架', '4', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('24', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '扎带', '2', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('25', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '胶布', '2', '卷', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('26', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', 'BNC头', '3', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('27', 'fbd021006423989684', '罗志标', '2016-10-14', '2016-10-14', '螺丝钉', '0', '盒', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('28', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '监控主机', '0', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051657201.html', '2个硬盘接口', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('29', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '监控硬盘', '0', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('3', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控硬盘', '1', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177780.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('30', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '监控视频线', '4', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('31', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '监控显示器', '0', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('32', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '监控摄像机', '9', '个', '沃仕达（woshida） 776F6Z 高清1200线 监控摄像头 监控器 探头红外夜视阵列 4MM高清6灯', 'http://item.jd.com/1045653.html', '高清6灯', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('33', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '摄像机电源', '9', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'http://item.jd.com/702684.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('34', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '摄像机支架', '9', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('35', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '扎带', '2', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('36', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', '胶布', '2', '卷', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('37', 'fbd141415446172366', '罗志标', '2016-11-11', '2016-11-11', 'BNC头', '10', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('38', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '监控主机', '1', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051657201.html', '2个硬盘接口，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('39', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '监控硬盘', '2', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('4', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控视频线', '8', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('40', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '监控视频线', '4', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('41', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '监控显示器', '1', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('42', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '监控摄像机', '26', '个', '沃仕达（woshida） 776F6Z 高清1200线 监控摄像头 监控器 探头红外夜视阵列 4MM高清6灯', 'http://item.jd.com/1045653.html', '高清6灯，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('43', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '摄像机电源', '26', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'http://item.jd.com/702684.html', '监控专用电源，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('44', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '摄像机支架', '26', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('45', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '线槽', '0', '根', '联塑PVC线槽 电线槽板 走线槽4分6分 5根套装 20*40 2米/根 5根套装', 'http://item.jd.com/1242306161.html', '20*40 2米/根，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('46', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '扎带', '6', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('47', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '猫', '0', '台', 'TP-LINK TD-8620T ADSL2+ Modem（白色）', 'http://item.jd.com/574731.html', '白色，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('48', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '交换机', '0', '台', 'TP-LINK TL-SF1008+ 8口百兆交换机', 'http://item.jd.com/114095.html', '8口百兆TL-SF1008+，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('49', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '路由器', '0', '台', 'TP-LINK TL-WR886N 450M无线路由器（宝蓝） WIFI无线穿墙王', 'http://item.jd.com/1238332.html', '450M旗舰 宝蓝，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('5', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控显示器', '1', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('50', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '胶布', '4', '卷', '', '', '，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('51', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', 'BNC跳线', '0', '条', 'BNC跳线Q9头成品线DVR硬盘录像机连接摄像机 监控视频线0.5/1/1.5/2/3/5 BNC跳线1.5米', 'http://item.jd.com/1573929960.html', '1.5米，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('52', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', '网线', '0', '箱', '安普西蒙超五类网线 超六类网线 屏蔽网线 全铜纯铜无氧铜网线 水晶头网线钳网线 A50 超五类非屏蔽300米 整箱', 'http://item.jd.com/1746157009.html', '超五类非屏蔽线300米，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('53', 'fbd141409136034396', '罗志标', '2016-08-23', '2016-08-24', 'BNC头', '6', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头，包含五联的申购', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('54', null, '许晓天', '2016-11-13', '2016-11-13', '监控主机', '1', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051670245.html', '2个硬盘接口', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('55', null, '许晓天', '2016-11-13', '2016-11-13', '监控硬盘', '1', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('56', null, '许晓天', '2016-11-13', '2016-11-13', '监控视频线', '3', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('57', null, '许晓天', '2016-11-13', '2016-11-13', '监控显示器', '1', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('58', null, '许晓天', '2016-11-13', '2016-11-13', '监控摄像机', '6', '个', '沃仕达（woshida）S9604 监控摄像头 防水 监控摄像机夜视高清 四灯阵列 监控 镜头4mm', 'https://item.jd.com/930957.html', '镜头4mm', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('59', null, '许晓天', '2016-11-13', '2016-11-13', '摄像机电源', '6', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'https://item.jd.com/1840170.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('6', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '监控摄像机', '34', '个', '沃仕达（woshida）S9604 监控摄像头 防水 监控摄像机夜视高清 四灯阵列 监控 镜头4mm', 'https://item.jd.com/930957.html', '镜头4mm', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('60', null, '许晓天', '2016-11-13', '2016-11-13', '摄像机支架', '8', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('61', null, '许晓天', '2016-11-13', '2016-11-13', '线槽', '0', '根', '联塑PVC线槽 电线槽板 走线槽4分6分 5根套装 20*40 2米/根 5根套装', 'http://item.jd.com/1242306161.html', '20*40 2米/根', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('62', null, '许晓天', '2016-11-13', '2016-11-13', '扎带', '3', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('63', null, '许晓天', '2016-11-13', '2016-11-13', '猫', '0', '台', 'TP-LINK TD-8620T ADSL2+ Modem（白色）', 'http://item.jd.com/574731.html', '白色', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('64', null, '许晓天', '2016-11-13', '2016-11-13', '交换机', '0', '台', 'TP-LINK TL-SF1008+ 8口百兆交换机', 'http://item.jd.com/114095.html', '8口百兆TL-SF1008+', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('65', null, '许晓天', '2016-11-13', '2016-11-13', '路由器', '0', '台', 'TP-LINK TL-WR886N 450M无线路由器（宝蓝） WIFI无线穿墙王', 'http://item.jd.com/1238332.html', '450M旗舰 宝蓝', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('66', null, '许晓天', '2016-11-13', '2016-11-13', '电工胶带', '1', '卷', '舒氏电工胶带10支装', 'http://item.jd.com/1053169176.html', '绿', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('67', null, '许晓天', '2016-11-13', '2016-11-13', '网线', '0', '箱', '安普西蒙超五类网线 超六类网线 屏蔽网线 全铜纯铜无氧铜网线 水晶头网线钳网线 A50 超五类非屏蔽300米 整箱', 'http://item.jd.com/1746157009.html', '超五类非屏蔽线300米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('68', null, '许晓天', '2016-11-13', '2016-11-13', 'BNC头', '3', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('69', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '监控主机', '1', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051670245.html', '16路主机', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('7', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '摄像机电源', '40', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源（链接只有5V 需联系客服）', 'https://item.jd.com/1840170.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('70', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '监控硬盘', '2', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177780.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('71', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '监控视频线', '7', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('72', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '监控显示器', '0', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('73', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '监控摄像机', '26', '个', '沃仕达（woshida）S9604 监控摄像头 防水 监控摄像机夜视高清 四灯阵列 监控 镜头4mm', 'https://item.jd.com/930957.html', '镜头4mm', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('74', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '摄像机电源', '26', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源（链接只有5V 需联系客服）', 'https://item.jd.com/1840170.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('75', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '摄像机支架', '26', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('76', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '水晶头', '0', '盒', 'dostyle NC103超五类8P8C网络水晶头100个/盒', 'https://item.jd.com/941628.html', '20*40 2米/根', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('77', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '扎带', '2', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('78', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '猫', '0', '台', 'TP-LINK TD-8620T ADSL2+ Modem（白色）', 'http://item.jd.com/574731.html', '白色', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('79', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '交换机', '0', '台', '华为（HUAWEI）S1700-24GR 24口千兆非网管 交换机', 'https://item.jd.com/1535164.html', '24口交换机', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('8', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '摄像机支架', '40', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('80', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '路由器', '0', '台', 'TP-LINK TL-WR886N 450M无线路由器（宝蓝） WIFI无线穿墙王', 'http://item.jd.com/1238332.html', '450M旗舰 宝蓝', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('81', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '电工胶带', '1', '条', '舒氏电工胶带10支装', 'http://item.jd.com/1053169171.html', '黑', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('82', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', '网线', '0', '箱', '安普西蒙超五类网线 超六类网线 屏蔽网线 全铜纯铜无氧铜网线 水晶头网线钳网线 A50 超五类非屏蔽300米 整箱', 'http://item.jd.com/1746157005.html', '超五类非屏蔽线300米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('83', 'fbd171408519381851', '罗志标', '2017-01-07', '2017-01-09', 'BNC头', '6', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('84', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '监控主机', '0', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051657201.html', '2个硬盘接口', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('85', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '监控硬盘', '0', '个', '希捷(SEAGATE)SV7系列 4TB 5900转64M SATA3 监控级硬盘(ST4000VX000)', 'http://item.jd.com/1177779.html', '4T', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('86', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '监控视频线', '2', '卷', '沃仕达（woshida） 75-5 监控安防专用视频线 128编 足200米', 'http://item.jd.com/807990.html', '200米', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('87', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '监控显示器', '0', '台', '宏碁(acer) S200HQL Hb 19.5英寸液晶显示器', 'http://item.jd.com/1363907.html', '19.5寸，TN屏', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('88', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '监控摄像机', '4', '个', '沃仕达（woshida） 776F6Z 高清1200线 监控摄像头 监控器 探头红外夜视阵列 4MM高清6灯', 'http://item.jd.com/1045653.html', '高清6灯', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('89', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '摄像机电源', '4', '个', '沃仕达（woshida) 监控 电源 12V 2A 监控专用电源 摄像机电源', 'http://item.jd.com/702684.html', '监控专用电源', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('9', 'fbd171408519381851', '罗志标', '2016-12-26', '2016-12-26', '水晶头', '1', '盒', 'dostyle NC103超五类8P8C网络水晶头100个/盒', 'https://item.jd.com/941628.html', '20*40 2米/根', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('90', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '摄像机支架', '4', '套', '沃仕达（woshida) 05加长型摄像机支架 监控支架 摄像头支架', 'http://item.jd.com/703360.html', '05加长', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('91', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '扎带', '4', '包', '赛拓（SANTO）3.6*300mm 100根装尼龙扎带 0021', 'http://item.jd.com/1276987.html', '3.6*300 100根 ', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('92', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '胶布', '2', '卷', '', '', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('93', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', 'BNC头', '3', '套', '沃仕达（woshida) Q9 BNC接头 免焊接 BNC转接头 Q9 监控专用 10个装', 'http://item.jd.com/703354.html', '监控专用BNC头', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('94', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '水晶头', '0', '盒', 'dostyle NC103超五类8P8C网络水晶头100个/盒', 'https://item.jd.com/941628.html', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('95', 'fbd141358337016360', '罗志标', '2016-11-01', '2016-11-01', '网线', '0', '箱', '安普西蒙超五类网线 超六类网线 屏蔽网线 全铜纯铜无氧铜网线 水晶头网线钳网线 A50 超五类非屏蔽300米 整箱', 'http://item.jd.com/1746157005.html', '', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('96', 'fbd161015330156414', '罗志标', '2016-10-24', '2016-11-22', '猫', '1', '台', 'TP-LINK TD-8620T ADSL2+ Modem（白色）', 'https://item.jd.com/574731.html', 'ADSL猫', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('97', 'fbd161015330156414', '罗志标', '2016-10-24', '2016-11-22', '路由器', '1', '台', 'TP-LINK TL-WR886N 450M无线路由器（宝蓝） WIFI无线穿墙王', 'https://item.jd.com/1238332.html', '普通家用无线路由器', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('98', 'fbd161015330156414', '罗志标', '2016-10-24', '2016-11-22', '交换机', '1', '台', '华为（HUAWEI）S1724G-AC 非网管24口千兆 交换机', 'https://item.jd.com/1535116.html', '千兆交换机', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('99', 'fbd141416581021160', '罗志标', '2016-09-18', '2016-09-18', '监控主机', '0', '台', '大华16路720P高清硬盘录像机 远程监控DVR主机 DH-HCVR4216AN-V3', 'http://item.jd.com/10051657201.html', '2个硬盘接口', null, null, null, null, null);
INSERT INTO `fbd_list_link` VALUES ('ll051628299267057', 'fbd141354350598244', '1', '2017-02-01', '2017-02-02', '2', '3', '4', '5', '6', '7', '8', '注册', '2017-02-05 16:28:29', '无效', 'yd-7264');
INSERT INTO `fbd_list_link` VALUES ('ll051629023319086', 'fbd141354350598244', '12', '2017-02-01', '2017-02-02', '22', '32', '42', '52', '62', '72', '82', '维护', '2017-02-05 16:29:02', '有效', 'yd-7264');

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
  `s_type` varchar(255) DEFAULT NULL,
  `s_create_time` datetime DEFAULT NULL,
  `s_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sim
-- ----------------------------
INSERT INTO `sim` VALUES ('1', '操作管理部', '271', '12', '1897.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('10', '网点管理部', '6', '1', '42.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('11', '信息与流程管理部', '10', '1', '70.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('12', '2017年1月总计', '510', '1', '3570.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('2', '分拨点管理部', '168', '12', '1176.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('3', '骏达网货仓', '55', '12', '385.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('4', '网点管理部', '6', '12', '42.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('5', '信息与流程管理部', '10', '12', '70.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('6', '2016年12月总计', '510', '12', '3570.00', '2016-12-10', null, null, null, null, null);
INSERT INTO `sim` VALUES ('7', '操作管理部', '271', '1', '1897.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('8', '分拨点管理部', '168', '1', '1176.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('9', '骏达网货仓', '55', '1', '385.00', '2016-12-09', null, null, null, null, null);
INSERT INTO `sim` VALUES ('sim051652039654501', '韵达', '1', '2', '3.00', '2017-02-01', '4', '注册', '2017-02-05 16:52:03', '无效', 'yd-7264');
INSERT INTO `sim` VALUES ('sim051652152564133', '韵达', '12', '22', '23.00', '2017-02-01', '24', '维护', '2017-02-05 16:52:15', '有效', 'yd-7264');

-- ----------------------------
-- Table structure for `yj_out`
-- ----------------------------
DROP TABLE IF EXISTS `yj_out`;
CREATE TABLE `yj_out` (
  `o_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `o_fbd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_djrq` date DEFAULT NULL,
  `o_djr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_lxr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_fbd_dz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_gs` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xy_sxt_sl` int(11) DEFAULT NULL,
  `o_xy_sxt_zt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xy_jkzj_zt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xy_jkzj_zh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_kdh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_pass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_azsj` date DEFAULT NULL,
  `o_dqsj` date DEFAULT NULL,
  `o_wl_qy` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_wl_gz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_jk_qy` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_jk_az` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_jk_hz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_jk_wx` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_dd_sl` int(11) DEFAULT NULL,
  `o_dd_sj` date DEFAULT NULL,
  `o_zyxz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xg_sxt_sl` int(11) DEFAULT NULL,
  `o_xg_sxt_xh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xg_jkzj_sl` int(11) DEFAULT NULL,
  `o_xg_jkzj_xh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_xg_xc` int(11) DEFAULT NULL,
  `o_xg_zj` int(11) DEFAULT NULL,
  `o_xgdw_sxt` int(11) DEFAULT NULL,
  `o_xgdw_jkzj` int(11) DEFAULT NULL,
  `o_xgdw_xc` int(11) DEFAULT NULL,
  `o_xgdw_zj` int(11) DEFAULT NULL,
  `o_ywc_sxt` int(11) DEFAULT NULL,
  `o_ywc_jkzj` int(11) DEFAULT NULL,
  `o-ywc_zj` int(11) DEFAULT NULL,
  `o_ywc_xc` int(11) DEFAULT NULL,
  `o_ywc_sj` date DEFAULT NULL,
  `o_wwc_sxt` int(11) DEFAULT NULL,
  `o_wwc_jkzj` int(11) DEFAULT NULL,
  `o_wwc_zj` int(11) DEFAULT NULL,
  `o_wwc_xc` int(11) DEFAULT NULL,
  `o_wwc_sj` date DEFAULT NULL,
  `o_sgyj` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_gjr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_wcqk` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_jhsj` date DEFAULT NULL,
  `o_sjsj` date DEFAULT NULL,
  `o_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `o_create_time` datetime DEFAULT NULL,
  `o_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yj_out
-- ----------------------------
INSERT INTO `yj_out` VALUES ('1', '宝安', '宝安区', null, '', '葛耀毅/13723795356', '', '监控安装', null, '', '', '', '', '', null, null, '', '', '', '安装1路监控', '', '维修一路监控', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-17', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('10', '沙井', '宝安区', null, '', '孟智辉/13352900873', '', '场地搬迁', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-01', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('11', '龙城', '龙岗区', '2016-11-04', '许晓天', '曾明/18270569917 ', '', '电话沟通14个监控只有6个能用，需要加装更换', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-14', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('12', '横岗', '龙岗区', '2016-11-04', '许晓天', '曾明/18270569917 ', '', '电话沟通分拨点只有4个能用，需要加装跟换', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-15', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('13', '海滨', '福田区', '2016-11-07', '罗志标', '李崇云/13430925353', '', '监控安装', null, '', '', '', '', '', null, null, '', '', '', '已完成13路主机监控安装与调试', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-14', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('14', '科技园', '南山区', '2016-11-04', '王长健', '夏良凤/13760319294', '', '确认场地及监控点', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-09', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('15', '高新', '南山区', null, '', '邓华/18617063499', '', '换装2个摄像头并走线', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-07', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('16', '坂田', '龙华区', null, '', '唐熙洋/15728525628', '', '换装2个摄像头，做3个监控防水', null, '', '', '', '', '', null, null, '', '', '', '安装1个摄像头，走1根视频线，做3个监控防水', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-16', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('17', '平湖', '龙岗区', null, '', '马全喜/13689501471', '', '换装5个摄像头并走线', null, '', '', '', '', '', null, null, '', '', '', '换装5个摄像头并走线', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-07', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('18', '东昌', '罗湖区', null, '', '刘晓宇/13544842911', '', '2个监控不亮', null, '', '', '', '', '', null, null, '', '', '', '', '', '2个监控不亮', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-08', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('19', '红花岭', '南山区', '2016-11-07', '罗志标', '陈经理/15118831317', '', '主机坏了', null, '', '', '', '', '', null, null, '', '', '', '', '', '主机开不了解', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', null, null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('2', '华强南', '福田区', '2016-11-03', '罗志标', '谭小兵/13480836810', '', '网络故障', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-05', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('20', '九围', '宝安区', null, '', '覃业凡/13714798087', '', '更换新主机后，监控画面全部不显示', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-08', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('21', '龙坑', '龙岗区', '2016-11-23', '罗志标', '刘煌/13794482747', '龙岗靠近惠州坑梓镇', '7路监控已完成', '0', '安装7路', '已安装', '', '用集包点的', '无', null, null, '无', '无', '', '安装新的7路监控', '', '', '7', '2016-11-18', '线槽或桥架', '7', '沃世达', '1', '大华', '3', '7', '7', '1', null, '7', '7', '1', '7', null, null, '0', '0', '0', null, null, '已买回', '罗志标', '已完成', '2016-12-05', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('22', '横岗', '龙岗区', '2016-11-15', '许晓天', '曾明/18270569917 ', '深圳市龙岗区横岗街道红棉四路6号森城工业园D栋一楼', '场地已确认，等待材料申购', '10', '已安装', '', '', '075504151436@163.gd', 'Aa888888', null, '2016-11-01', '无', '无', '', '新增4个监控并走线', '', '', '4', null, '', '4', '沃世达', '0', '大华', '3', '6', null, null, null, null, '4', null, '4', '5', '2016-11-25', null, null, null, null, null, '已发邮件', '许晓天', '已完成', '2016-11-25', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('23', '深惠', '龙岗区', '2016-11-16', '许晓天', '别经理/18826576783', '', '场地监控13路，亮8路', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '无需申购', '许晓天', '已完成', '2016-11-17', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('24', '民治', '龙华区', '2016-11-21', '罗志标', '胡小川/13530675811', '深圳市龙华新区民治街道办沙吓工业区', '待确认监拍角度等正常', '14', '', '', '', '075501724166@163.gd', 'NMKSRETB', null, '2017-01-31', '无', '无', '需要重新安装', '', '', '', '14', '2016-12-02', '线槽或桥架', null, '', null, '', null, null, null, null, null, null, null, null, '14', null, null, '0', null, null, null, null, '未发邮件', '罗志标', '已完成', '2016-12-05', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('25', '横岗', '龙岗区', '2016-11-22', '许晓天', '王国际/15999699909', '深圳市龙岗区横岗街道红棉四路6号森城工业园D栋一楼', '电话沟通有2个监控不亮', '10', '已维修', '', '', '075504151436@163.gd', 'Aa888888', null, '2016-11-01', '无', '无', '', '', '', '2个', null, null, '', null, '', null, '', null, null, null, null, null, null, '2', null, null, null, '2016-11-24', null, null, null, null, null, '无需申购', '许晓天', '已完成', '2016-11-24', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('26', '科技园', '南山区', '2016-11-23', '罗志标', '姚建国/13713544257', '南山高新技术产业园朗山二号路3号', '6个监控不显示', '7', '全部已正常', '正常', '', '075507426630@163.gd', 'AEQBNSBT', null, '2017-01-31', '无', '无', '', '', '', '6路监控待排查，首先电工完成电路维修', '7', null, '无', null, '', null, '', null, null, null, null, null, null, '7', null, null, null, '2016-11-24', '0', null, null, null, null, '无需申购', '罗志标', '已完成', '2016-11-25', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('27', '蛇口', '南山区', '2016-11-25', '罗志标', '高博/13825210750', '南山区蛇口湾夏路126号南山电子商务创新服务基地（二）115', '1个监控不显示', '12', '已完成维修', '正常', '', '075501275121@163.gd', 'IJOFWAMN', null, '2017-01-31', '无', '无', '', '', '', '已完成维修', '12', null, '无', null, '', null, '', null, null, null, null, null, null, null, null, '1', null, null, '0', null, null, null, null, '无需申购', '罗志标', '已完成', '2016-11-29', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('28', '福永', '宝安区', '2016-11-28', '许晓天', '袁志兵/13217900632', '深圳市福围第一工业区A3栋第一层厂房', '监控录像只能存两天2监控不亮', '9', '待确认', '', '', 'sz626086@163.gd', 'Aa888888', null, '2017-02-01', '无', '无', '3个不亮', '录像只能保存2天', '', '', null, null, '', '1', '沃世达', null, '', null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '无需申购', '许晓天', '已完成', '2016-11-29', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('29', '高新', '南山区', '2016-11-30', '许晓天', '廖林敏/15119744454', '南山区白石洲路沙河工业区工贸27栋101号', '场地搬迁', '13', '拆卸完成', '', '', 'szdsa45jha@163.gd', 'EUMHXQFO', null, '2017-01-31', '有', '无', '13', '10个监控', '', '', '10', '2016-12-01', '', null, '', null, '', '3', null, null, null, null, null, '10', null, null, '10', '2016-12-07', '0', null, null, null, null, '已发邮件', '许晓天', '已完成', '2016-12-07', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('3', '西乡', '宝安区', '2016-11-07', '罗志标', '覃晓景/15012484283', '', '电信师傅已到点处理，检查是路由器故障', null, '', '', '', '', '', null, null, '', '买好路由器，已提供账号密码，新仓同事协助配置拨号上网', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-04', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('30', '南油', '南山区', '2016-11-30', '罗志标', '李广/18823712820', '深圳市南山区东滨路86号南华印染厂的工业厂房D1位置', '两个监控画面不显示', '12', '', '', '', '075502324052@163.gd', 'XIHJANYK', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, '0', null, null, '2', null, null, null, null, '无需申购', '罗志标', '已完成', '2016-12-01', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('31', '华强东', '福田区', '2016-12-05', '', '谭小兵/13480836810', '福田区深南中路2038号爱华大院4号楼B10', '3个监控不显示已完成维修', '10', '', '', '', 'szdjk4011@163.gd', '12345678', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '无需申购', '罗志标', '已完成', '2016-12-08', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('32', '布吉', '罗湖区', '2016-12-07', '许晓天', '胡利/1348096984', '深圳市丹竹头高新科技园铁皮房105号', '电话沟通共8个监控只有1个亮', '8', '7个不亮', '', '', 'sz42040038@163.gd', 'Aa888888', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, '3', null, '3', null, null, null, null, null, '0', null, null, null, null, '无需申购', '许晓天', '已完成', '2016-12-08', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('33', '景田', '宝安区', '2016-12-08', '罗志标', '谭小兵/13480836810', '深圳市福田区莲花街道办香梅路1072号（缇香名苑）7栋1层', '监控不显示，监拍不稳定时有时无', null, '', '', '', 'sz45616224@163.gd', '88885555', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-12-24', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('34', '沙嘴', '宝安区', '2016-12-16', '罗志标', '秦勇华/13823237011', '深圳市福田区香蜜湖街道办侨香路3081号（深圳市建筑机械动力总公司）', '已完成维修，一共重换6个电源，重做8个BNC头、重新接了2个视频线', null, '', '', '', '075506430187@163.gd', 'Aa888888', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-12-19', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('35', '南头', '宝安区', '2016-12-25', '罗志标', '曾德桓/13242427508', '南山区月亮湾大道阳光棕榈园28栋一层105A号商铺', '一个监控烧坏一个不显示', null, '不显示', '', '', '75507400536@163.gd', 'PHEYFQOJ', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', '1', '', null, '', null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '无需申购', '许晓天', '已完成', '2017-01-04', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('36', '东部大区', '龙岗区', '2016-12-25', '罗志标', '周才亮/13684960207', '龙岗区横岗街道荷坳社区桂坪路41号', '大区需求网络与监控', null, '', '', '', '075500368507@163.gd', 'FDARIETB', null, null, '安装待定', '', '', '', '', '', '31', null, '', '31', '沃世达', '1', '大华', null, '31', '31', null, null, null, null, null, null, null, null, null, null, null, null, null, '待定', '罗志标', '已完成', '2017-01-05', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('37', '红桂', '罗湖区', '2017-01-03', '许晓天', '邹正伟/13641489146', '深圳市罗湖桂园北路22号一楼102号', '6个监控不显示，显示器不亮', '6', '', '不显示', '', '075506070744@163.gd\n', 'CTYRCHHJ', null, '2017-01-31', '无', '无', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '待定', '许晓天', '已完成', '2017-01-06', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('38', '坪山', '龙岗区', '2017-01-06', '罗志标', '夏伟员/13428990810', '深圳市龙岗区坪山新区远香路12号', '视频显示不正常，重做2个BNC头', '8', '', '正常', '', '站点网络', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2017-01-11', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('39', '九围', '宝安区', '2017-01-09', '罗志标', '何剑辉/13392888472', '搬迁新场地未确定', '搬迁新场地未确定', null, '走线已完成', '', '', 'sz44364251231@163.gd', 'Aa888888', null, '2017-01-31', '待定', '', '', '', '', '', null, null, '', '14', '', '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '已发', '罗志标', '未完成', '2017-01-20', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('4', '东滨', '南山区', null, '', '张杰/18820923110', '深圳市南山区月亮湾大道汉京确悦a109商铺', '电信未及时处理', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', null, null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('40', '沙嘴', '福田区', '2017-01-09', '罗志标', '李超/15818781235', '搬迁新场地未确定', '搬迁新场地未确定', null, '走线已完成', '', '', '075506430187@163.gd', 'Aa888888', null, '2017-01-31', '待定', '', '', '', '', '', null, null, '', '12', '', '1', '大华', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '已发', '罗志标', '未完成', '2017-01-19', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('41', '东昌', '罗湖区', '2017-01-12', '罗志标', '刘旭光13925210732', '深圳市罗湖区东晓街道办翠竹北路5号(水贝石化工业区)1栋1层 ', '两个监控不显示', null, '', '', '', '075507463151@163.gd', 'XKPEHPGE', null, '2017-01-31', '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '未完成', '2017-01-18', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('42', '国贸', '罗湖区', '2017-01-13', '许晓天', '沈建臻/13723783078', '深圳市福田东园路富豪大厦A座一楼', '主机不显示', null, '', '', '', '075505476772@163.gd', '88885555', null, '2017-06-30', '待定', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '待定', '许晓天', '已完成', '2017-01-14', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('43', '东部大区', '龙岗区', '2017-01-16', '许晓天', '周才亮/13684960207', '龙岗区横岗街道荷坳社区桂坪路41号', '操作场地网络', null, '', '', '', '075500368507@163.gd', 'FDARIETB', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '待定', '许晓天', '未完成', '2017-01-17', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('5', '田面', '福田区', null, '', '邹艳辉/13128775799', '', '网络已正常', null, '', '', '', '', '', null, null, '', '', '', '监控主机移位，摄像头重新规划，供电修改', '', '电话沟通监控有3个不亮的，原因不详', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-05', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('6', '高新', '南山区', null, '', '邓华/18617063499', '', '场地重新扩大，需要加装摄像头', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-07', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('7', '民治', '龙华区', null, '', '胡小川/13530675811', '', '确认场地及监控点', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-10', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('8', '凤塘', '宝安区', '2016-11-05', '罗志标', '杨彪/13926590074', '', '确认场地及监控点', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '罗志标', '已完成', '2016-11-03', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('9', '深惠', '龙岗区', null, '', '别经理/18826576783', '', '确认场地及监控点', null, '', '', '', '', '', null, null, '', '', '', '', '', '', null, null, '', null, '', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '许晓天', '已完成', '2016-11-16', null, null, null, null, null);
INSERT INTO `yj_out` VALUES ('o051631293164797', '1', '2', '2017-02-01', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '2017-02-02', '2017-02-03', '13', '14', '15', '16', '17', '18', '19', '2017-02-04', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '34', '33', '2017-02-05', '35', '36', '38', '37', '2017-02-07', '41', '40', '42', '2017-02-10', '2017-02-06', '注册', '2017-02-05 16:31:29', '无效', 'yd-7264');
INSERT INTO `yj_out` VALUES ('o051633243989965', '11', '12', '2017-02-01', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '2017-02-02', '2017-02-03', '23', '24', '25', '26', '27', '28', '29', '2017-02-04', '30', '313', '32', '33', '34', '353', '36', '373', '38', '39', '40', '40', '42', '44', '43', '2017-02-05', '45', '46', '48', '47', '2017-02-07', '51', '50', '52', '0053-05-16', '2017-02-06', '维护', '2017-02-05 16:33:24', '有效', 'yd-7264');
