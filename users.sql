/*
Navicat MySQL Data Transfer

Source Server         : b
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-08 17:08:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_num` varchar(255) NOT NULL DEFAULT '',
  `u_pass` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `cs_id` varchar(255) DEFAULT NULL,
  `u_job` varchar(255) DEFAULT NULL,
  `u_start_time` datetime DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  `u_mail` varchar(255) DEFAULT NULL,
  `u_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('yd-0346', '123456', '徐迪军', 'cs181701262302450', '系统应用主管', '2016-09-29 09:54:07', 'r291006061579535', 'dijun_xu@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-0501', '123456', '易向兵', 'cs181706154913403', '维护主管', '2016-10-14 16:41:58', 'r291006061579535', 'xiangbing_yi@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-1968', '123456', '李义丰', 'cs181706154913403', '维护专员', '2016-10-14 16:34:39', 'r141630484495137', 'yifeng_li@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-3962', '123456', '王鹏', 'cs181706154913403', '维护专员', '2016-10-14 16:35:51', 'r141630484495137', 'peng_wang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-4221', '123456', '郭明星', 'cs181701262302450', '系统需求专员', '2016-08-19 09:57:17', 'r190954449306917', 'mingxing_guo@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-4298', 'it@2016', '何胜利', 'cs181643107762681', '信息流程高级经理', '2016-09-29 10:11:26', 'r291006061579535', 'shengli_he@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-4610', '123456', '蓝业驰', 'cs181706154913403', '维护专员', '2016-10-14 16:37:34', 'r141630484495137', 'yechi_lan@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-4685', '123456', '郑涛', 'cs181706154913403', '维护专员', '2016-10-14 16:38:53', 'r141630484495137', 'tao_zheng@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-4988', '123456', '何清泽', 'cs181706154913403', '维护专员', '2016-10-14 16:32:41', 'r141630484495137', 'qingze_he@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-5852', '123456', '王科', 'cs181701262302450', '流程分析专员', '2016-08-31 10:15:28', 'r190954449306917', 'ke_wang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-6312', '123456', '周剑飞', 'cs181706154913403', '维护专员', '2016-10-14 16:40:03', 'r141630484495137', 'jianfei_zhou@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-6804', '123456', '钟家瑜', 'cs221045082233130', '桌面专员', '2016-09-29 10:08:52', 'r291001481383931', 'jiayu_zhong@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-6970', '123456', '徐路', 'cs221045082233130', '桌面专员', '2016-09-29 09:58:55', 'r291001481383931', 'lu_xu@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7027', '123456', '罗志标', 'cs221045082233130', '硬件专员', '2016-09-29 09:57:30', 'r131526334505203', 'zhibiao_luo@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7111', '123456', '张顺', 'cs181701262302450', '开发专员', '2016-08-10 14:45:00', 'r111613371752208', 'shun_zhang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7119', '123456', '胡越', 'cs181701262302450', '流程分析专员', '2016-09-29 09:55:28', 'r190954449306917', 'yue_hu@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7264', '123456', '黄光辉', 'cs181701262302450', '开发专员', '2016-09-30 09:49:23', 'r111613371752208', 'guanghui_huang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7361', '123456', '王长健', 'cs221045082233130', '运维主管', '2016-10-14 16:24:56', 'r291006061579535', 'changjian_wang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7448', '123456', '张沥丹', 'cs181643107762681', '客服专员', '2016-10-25 09:41:28', 'r291018145843610', 'lidan_zhang@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7496', '123456', '许晓天', 'cs221045082233130', '硬件专员', '2016-10-27 18:01:13', 'r131526334505203', 'xiaotian_xu@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7692', '123456', '闫少增', 'cs181701262302450', '测试专员', '2016-12-10 11:25:00', 'r101126052013377', 'shaozeng_yan@szexpress.com.cn', '在职');
INSERT INTO `users` VALUES ('yd-7698', '123456', '颜斌', 'cs181706154913403', '桌面专员', '2016-12-17 10:01:27', 'r291001481383931', 'bin_yan@szexpress.com.cn', '在职');
