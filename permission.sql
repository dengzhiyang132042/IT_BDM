/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-10-11 15:13:41
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `permission` VALUES ('87', '管理电脑统计查看');
INSERT INTO `permission` VALUES ('88', '管理电脑统计删除');
INSERT INTO `permission` VALUES ('89', '管理电脑统计修改');
INSERT INTO `permission` VALUES ('90', '管理电脑统计添加');
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
