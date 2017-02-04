/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-04 17:20:16
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `asdl_type` varchar(255) DEFAULT NULL,
  `asdl_create_time` datetime DEFAULT NULL,
  `asdl_state_realy` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`asdl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbd_asdl
-- ----------------------------
INSERT INTO `fbd_asdl` VALUES ('asdl041703264511643', 'fbd141354350598244', '12312', '12312', '123123', null, '2017-02-04', '', '12312', '', '维护', '2017-02-04 17:03:26', '无效', 'yd-7111');
INSERT INTO `fbd_asdl` VALUES ('asdl041703350618609', 'fbd141354350598244', '12312', '12312', '123123', null, '2017-02-04', '', '12312', '', '维护', '2017-02-04 17:03:35', '有效', 'yd-7111');
INSERT INTO `fbd_asdl` VALUES ('asdl041716533152468', 'fbd141354350598244', '32123', '', '', null, '2017-02-04', '', '', '', '注册', '2017-02-04 17:16:53', '无效', 'yd-7111');
INSERT INTO `fbd_asdl` VALUES ('asdl041716594684516', 'fbd141354350598244', '32123', '', '', null, '2017-02-04', '', '爱迪生', '', '维护', '2017-02-04 17:16:59', '有效', 'yd-7111');
INSERT INTO `fbd_asdl` VALUES ('asdl141721072658658', 'fbd021002107147666', 'ADSLD6057749', 'sz000000000744686951@163.gd ', '87654321', '1980.00', '2017-01-31', '续约', '', null, null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721073123559', 'fbd141354350598244', 'ADSLD2060092518', '075506070744@163.gd', 'CTYRCHHJ', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721073274063', 'fbd141354583085830', 'ADSLD2102694256', '075505476772@163.gd', '88885555', '1760.00', '2017-06-30', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721073595668', 'fbd141355242844155', 'ADSLD2110758850', '18902851574@163.gd', 'QUYGVQGQ', '1760.00', '2017-10-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721073742090', 'fbd141355448172565', 'ADSLD20804555', '075508687604@163.gd', '12345678', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721073904853', 'fbd141356368226800', 'ADSLD3633126', 'sz8154564@163.gd', '88885555', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721074052243', 'fbd141357009696912', 'ADSLD2078134620', '075507463151@163.gd', 'XKPEHPGE', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721074379500', 'fbd141357282313657', '', '', '', null, null, '', '站点网络', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721074837219', 'fbd141357524822065', 'ADSLD2132747789', '075529050713@163.com', 'XSQIOSNF', '1760.00', '2017-10-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721074999405', 'fbd141358110468832', 'ADSLD2086954232', '18902852354@163.gd', '88885555', '1760.00', '2017-06-30', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721075159067', 'fbd141358337016360', 'ADSLD2064909916', '075503114376@163.gd', 'UJYKEDJT', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721075301886', 'fbd021005077193149', 'ADSLD2100968006', '075529050650@163.gd', '88885555', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721075617349', 'fbd141359107432924', 'ADSLD19586770', 'sz42040038@163.gd', 'Aa888888', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721075934397', 'fbd141359388972799', 'ADSLD2137480376', '075505716405@163.gd', 'PRXUIOHC', '1760.00', '2017-05-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721076088014', 'fbd141400041993882', 'ADSLD2137480376', '075505716405@163.gd', 'AHVKNAMA', '1980.00', '2017-05-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721076242491', 'fbd141400338413716', 'ADSLD2057066258', '075501724166@163.gd', 'NMKSRETB', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721076557097', 'fbd141401220936294', 'ADSLD2060812873', '075501407828@163.gd', '12345678', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721076718891', 'fbd141401497321214', 'ADSLD2115426483', '075503041615@163.gd', 'GEKXDFCU', '1980.00', '2017-02-28', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721076867421', 'fbd141402191551172', '', '', '', null, null, '', '站点网络', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721077174810', 'fbd141403371589674', 'ADSLD2110759633', '18902851468@163.gd', 'DYOXRHGK', '1760.00', '2017-10-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721077333497', 'fbd141406145142662', 'ADSLD2081894681', '18902851554@163.gd', 'Aa888888', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721077642735', 'fbd141407123096770', 'ADSLD2100974313', '075583379809@163.gd', 'OOOSUUGI', '1980.00', '2017-05-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721077803036', 'fbd021006423989684', 'ADSLD18208935', 'szdsa45jha@163.gd', 'EUMHXQFO', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721077953772', 'fbd141407508543216', 'ADSLD2117355675', '075500238327@163.gd', 'SHSPSKPN', '1760.00', '2017-04-30', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721078271443', 'fbd141408386435021', '', '', '', null, null, '', '站点网络', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721078589238', 'fbd141409136034396', 'ADSLD2102273129', '075504151436@163.gd', 'Aa888888', '1760.00', '2017-11-30', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721078734551', 'fbd141409374513834', 'ADSLD5506353', 'SZ5506353@163.gd', '88888888', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721078891662', 'fbd141410519209834', 'ADSLD19408520', 'sz63088031@163.gd', 'WGKHWIRG', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721079203688', 'fbd141411150273369', '', '', '', null, null, '', '站点网络', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721079365382', 'fbd141411393551200', 'ADSLD2059111652', '075504285316@163.gd', 'RFWISNLH', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721079512922', 'fbd141412019727588', 'ADSLD3148618', 'szdjk4011@163.gd', '12345678', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721079838740', 'fbd141116211657358', 'ADSLD2067175373', '075508712863@163.gd', 'RBHGHSQI', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721080149540', 'fbd141115199569898', 'ADSLD2055402531', '075506430187@163.gd', 'Aa888888', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721080294879', 'fbd141350419511277', 'ADSLD2073727235', '075507400536@163.gd', 'PHEYFQOJ', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721080457297', 'fbd141414511667963', 'ADSLD2067182420', '075503768316@163.gd', 'MSYYITVW', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721080762686', 'fbd141415185804188', 'ADSLD19408296', 'sz45616224@163.gd', '88885555', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721080928695', 'fbd141415446172366', 'ADSLD2053136796', '075508450240@163.gd', 'APDMNLTN', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721081072555', 'fbd141416072972374', 'ADSLD2118292733', '075521182927@163.gd', 'PSCDVYQT', '1980.00', '2017-05-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721081397203', 'fbd141416345656856', 'ADSLD2118292733', '075521182927@163.gd', 'PSCDVYQT', '1980.00', '2017-05-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721081549895', 'fbd141416581021160', 'ADSLD2069056800', '075506411843@163.gd', '12345678', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721081709340', 'fbd141417235583973', 'ADSLD2073727478', '075504315446@163.gd', '12345678', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082013402', 'fbd141417466766909', 'AN200504517843', 'sz626086@163.gd', 'Aa888888', '1980.00', '2017-02-01', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082176465', 'fbd141418103976372', 'ADSLD2057920901', '075503461018@163.gd', '87654321', '1980.00', '2017-02-01', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082323660', 'fbd141418429785179', 'ADSLD6279530', 'sz6279530@163.gd', '12345678', '1980.00', '2017-02-01', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082634790', 'fbd141351090698714', 'ADSLD2054307048', '075500755316@163.gd', 'EODCXVRF', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082797108', 'fbd141419127189685', 'ADSLD2060092563', '075506364373@163.gd', 'LVQQWVWY', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721082955022', 'fbd141419345605605', 'ADSLD2116247546', '075507253534@163.gd', 'CJAQHLHK', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721083266525', 'fbd141420017222766', 'ADSLD16079092', 'sz44364251231@163.gd', 'Aa888888', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721083419442', 'fbd141420419397698', 'ADSLD2072687703', '075507073588@163.gd', '39937627', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721083571062', 'fbd141421032315126', 'ADSLD2067266202', '075506468517@163.gd', 'RLRVCJTQ', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721083888371', 'fbd141421374406870', 'ADSLD2079995003', '18926051729@163.gd', 'TNLJGEGX', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721084048406', 'fbd161015330156414', 'ADSLD2124934599', '075502862467@163.gd', '', null, null, '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721084199741', 'fbd161000518116120', 'ADSLD2134452305', '075501236758@163.gd', 'LMUJSLTH', '1980.00', '2017-01-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721084512609', 'fbd161000518116120', 'ADSLD2091155169', '075506704411@163.gd ', '44822344', '1980.00', '2017-01-31', '未使用9-29', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721084662914', 'fbd161000518116120', 'ADSLD2059506168', '075504456154@163.gd ', '', '1980.00', '2017-01-31', '', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721084972614', 'fbd141351325127367', 'ADSLD2065980093', '075507426630@163.gd', 'AEQBNSBT', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721085134200', 'fbd161000518116120', 'ADSLD2059506169', '075500368507@163.gd', 'FDARIETB', null, null, '', '光明顺丰仓', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721085292819', 'fbd141352006835908', 'ADSLD2050620646', '075501275121@163.gd', 'IJOFWAMN', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721085605875', 'fbd141353082617139', 'ADSLD2052316401', '075502324052@163.gd', 'XIHJANYK', '1980.00', '2017-01-31', '续约', '', '', null, null, null, null);
INSERT INTO `fbd_asdl` VALUES ('asdl141721085916577', 'fbd141354053595858', '', '', '', null, null, '', '站点网络', '', null, null, null, null);
