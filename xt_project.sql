/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : it_bdm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-09 11:35:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xt_project`
-- ----------------------------
DROP TABLE IF EXISTS `xt_project`;
CREATE TABLE `xt_project` (
  `p_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `p_date` date DEFAULT NULL,
  `p_project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `p_target` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `p_type` varchar(255) DEFAULT NULL,
  `p_create_time` datetime DEFAULT NULL,
  `p_state` varchar(255) DEFAULT NULL,
  `u_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xt_project
-- ----------------------------
INSERT INTO `xt_project` VALUES ('p131406041841889', '2017-01-20', '快运产品', '为提升快运货量做好后勤保障，并为快运后期做好铺垫', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418584455946', '2014-11-20', '【仲裁财务对比】报表', '匹配上海出单数据与深圳仲裁', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418589598354', '2014-11-20', '【客服日志录入】模块', '帮助客服通话时实现实时记录', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418591008171', '2014-11-20', '3【二级独立结算体系】功能', '完成收件、到件确认、到件、集包、装车5个环节数据对比', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418592255066', '2014-12-20', '【面单条码分配批量查询】功能', '批量追踪面单发放网点数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418593654753', '2015-03-20', '加盟商信息库Ⅰ ', '统计公司加盟商详细信息，了解加盟商实力', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418595374985', '2015-03-20', '仲裁财务对比', '增加数据标示栏位（数据导入刷新）', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418596775251', '2015-03-20', '到件集包装车对比Ⅰ', '完成收件、到件确认、到件、集包、装车5个环节数据对比', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418598179897', '2015-03-20', '二级结算ⅠⅠ', '实现二级账单自动批价自动结算功能', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161418599423642', '2015-03-20', '大客户发货量统计', '监控公司电子面单、菜鸟面单客户发货监控', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419000834405', '2015-03-20', '到件数据延迟统计', '监控分拨点上传数据的时效性', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419002232616', '2015-03-20', '计泡价格修改', '按2015年新价格批价维护', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419003639664', '2015-03-20', '条码分配信息查询', '存储系统内已查询过单号的面单分配信息', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419004887468', '2015-04-20', '批量申诉', '上海新出的批量申诉类型添加到哲盟', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419006292653', '2015-03-20', '数据查询上限调整', '根据业务量发展情况调整哲盟数据查询上限数到20W峰值', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419007691090', '2015-04-20', '站点签收率报表', '分班次查看站点详细的签收数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419008948519', '2015-03-20', '仲裁综合报表', '按站点、区域、部门统计仲裁费用及数量', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419010343972', '2015-03-20', '到件集包装车对比Ⅰ', '完成收件、到件确认、到件、集包、装车5个环节数据对比', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419011756315', '2015-04-20', '运营中心每日滞留监控表', '通过系统数据监控运营中心，每日发件中专是否及时、滞留的情况', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419012995702', '2015-04-20', '超规定未签收遗失预警', '预付款数据导入哲盟系统，实际返款数据系统需要审核结余', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419014557063', '2015-04-20', '屏蔽二级站点接收哲盟公告', '为了加强对下面站点的综合管理，哲盟公告只让一级网点接收，以达到分级管理', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419015966225', '2015-04-20', '运单信息追踪轨迹（收、派）增加区域栏位', '运单信息追踪轨迹（收、派)分区域查询和追踪数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419017214338', '2015-05-20', '运单下模块完善审批结余功能', '数据导入-系统自动批价-审核-结余（直接进预付款）', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419018926183', '2015-05-20', '站点签收率罚款模块', '实现站点签收率罚款系统化，结余进入预付款', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419020178590', '2015-06-20', '进出港信息导入管理模块', '实现站点导入进出港的详细情况', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419021572872', '2015-06-20', '签收单号单独查询存储模块', '依照单号追踪收、派的签收数据，并存储到这么系统，方便其他模块调用数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419022825120', '2015-06-20', '财务导入加入到二级结算', '一级站点可冲账，结余进入到二级站点预付款', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419024238813', '2015-06-20', '区域签收率报表修改数据源', '修改数据源为卸车数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419025476096', '2015-07-20', '同城件的开发', '通过哲盟数据操作达到收派件实际操作的数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419026882612', '2015-07-20', '数据自动追踪', '对签收/集包/卸车/条码分配等功能系统进行自动追踪；要有日志                                                   ', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419028284141', '2015-07-20', '15w分页显示', '韵达报表数据量超过十五万，需要进行优化\n                                    ', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419029535695', '2015-07-20', '二级结算外围网费用结算', '1、完善二级结算的相关功能模块    \n2、把派费类型进行区分，单独统计汇总            ', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419031719903', '2015-07-20', '总部接口数据上传', '深圳扫描数据使用接口上传数据到上海', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419033431584', '2015-07-20', '中心业务统计报表（重量）', '按重量段分析统计网点收件情况', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419034681625', '2015-08-20', '运单追踪轨迹（大包）', '增加派件到达大包数据追踪', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419036243747', '2015-08-20', '财务大货结余审批（大货录入）', '优化现有的大货录入模块，方可达到要求', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419037807042', '2015-08-20', '运营中心每日滞留监控报表修改', '数据源修改，报表调整', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419039201600', '2015-08-20', '仲裁上海结案率', '新做数据导入、匹配、结案率等相关模块', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419040762974', '2015-08-20', '深圳哲盟结案率（同城）', '新做数据导入、匹配、结案率等相关模块', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419042483974', '2015-08-20', '签收信息导入', '签收信息导入，以便个模块取值签收信息', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419043736740', '2015-10-20', '集包滞留统计', '按集包点分时间统计到件和集包数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419045292419', '2015-09-20', '通联支付', '用通联支付用于加盟商充值预付款', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419046858976', '2015-12-20', '集包点上传监控', '用于监控集包点数据上传', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419048253840', '2015-12-20', '集包点分拨点车线统计', '根据目的地统计集包点分拨点车发出运单的梳理和重量', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419049504659', '2015-12-20', '优博迅I3000功能开发（I）', '根据操作实际要求对把枪进行功能开发', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419050751473', '2016-01-20', '操作异常数据统计表', '统计公司扫描各类型的延迟上传的数据按照站点进行统计', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419051995030', '2016-02-20', 'i3000把枪重量限制\n', '重量必须大于0小于等于60kg的重量限制\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419053407781', '2016-01-20', '猫屋代收件', '猫屋可代韵达网点进行收件', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419054656737', '2016-02-20', '加盟商收件滞留分析报表', '统计加盟商揽件后未发出快件，减少滞留，提升快件运转时效，考核网运中心及分管副总绩效', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419055899753', '2016-02-20', '派件延误报表', '统计操作中心发出票数未在规定时间内未转出快件，考核市内运输部、分拨点绩效', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419057305891', '2016-02-20', '省内收件滞留数据分析报表', '统计省内收件数据，分析省内件滞留原因，减少滞留，提升快件运转时效，考核网运中心及分管副总绩效', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419058556185', '2016-03-20', '外围车线统计表', '根据目的地和装车凭证统计各车车线信息，流程优化，数据挖掘，费用成本分析', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419059793764', '2016-03-20', '收件操作各单位用时', '根据各操作节点统计各环节所用时间', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419061044767', '2016-03-20', '操作能效统计表', '统计所有站点在一天24小时，每1小时为一个时间段，共24个时间区段内，所有扫描类型所统计的扫描数量', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419062297670', '2016-03-20', '物料模块（Ⅰ）', '①、帮助公司实现物料出入库及库存管理；\n②、网点/网点大客户/公司大客户物料单价及物料下单管理；\n③、网点面单分配及物料库存消耗统计报表', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419063542387', '2016-04-20', '物料模块（Ⅱ）', '①、梳理物料面单操作流程及开发相应功能配合实现；\n②、物料面单监控及相关报表功能；\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419064796059', '2016-03-20', '到件运单号重复', '筛选同个运单多个到件记录的数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419067754766', '2016-03-20', '二级结算报价设置', '优化二级结算，二级站点价格维护用公式代替', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419069317090', '2016-04-20', '拦截收件功能', '拦截网点提前收件数据，提升公司整体收件时效及淘系排名', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419070567484', '2016-03-20', '快运产品功能模块', '配合快运产品新产品功能开发，实现网点大件快运批量录入/审批/结余返利，提升公司新产品市场占有率\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419071816871', '2016-04-20', '巴枪sim卡信息管理', '①、注销总部巴枪SIM卡自行采购降低费用；\n②公司操作单位及网点巴枪SIM卡管理功能；\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419073059677', '2016-05-20', '集包计件', '①、统计集包小件考勤、扫描量进行员工计件工资计算；\n②、员工单位操作能效核算，协助评估操作部门人员量合理性；\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419074307248', '2016-05-20', '加盟商资料管理', '统计网点负责人信息及网点员工等信息', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419075556042', '2016-05-20', '条码分配信息查询优化', '条码分配查询追踪优化，优化条分配，自动筛选运单查询（收）发放对象为空的数据', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419076806371', '2016-06-20', '淘宝订单签收导入', '签收信息导入，以便个模块取值签收信息', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419078056408', '2016-06-20', '集包滞留统计报表修改', '调整统计规则，分省内省外统计数据和新增统计项目', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419079293378', '2016-06-20', '无头件管理修改及新增', '优化原因无头件模块以及新增无头件报表', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419080545994', '2016-06-20', '哲盟新增扫描标识', '哲盟i3000扫描进入系统是数据新增模块标识', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419082735369', '2016-07-20', '中心集包晚操作报表', '统计中心集包晚操作数据分节点统计', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419084444473', '2016-08-20', '派件操作各单位用时', '根据各操作节点统计各环节所用时间', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419085857350', '2016-07-20', '中心计件Ⅰ期', '①、统计中心各个班组考勤、扫描量进行员工计件工资计算；\n②、员工单位操作能效核算，协助评估操作部门人员量合理性；\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419087419290', '2016-09-20', '站点分发数据统计表', '统计站点分发各个时间段的数据量\n', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419088816106', '2016-09-20', '派件签收数据生成模块', '根据分发数据选择签收时间，生成签收数据上传到内网', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419090537120', '2016-09-20', '财务打印发票需求', '根据财务导入信息生成财务发票所需的自定义面单号码，替换上海的运单号码节约成本', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419092249921', '2016-10-20', '中心计件Ⅱ期', '①、大件ABC组匹配表已经各个岗位系数可以自己维护；\n②、各个工序工作量计算；\n③中心计件Ⅰ期白班小件粗分组、白班卸车组、晚班卸车组部分计算公式更改；', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419093493103', '2016-11-20', '外围进出港统计表', '根据哲盟中心对账到件数据和运单信息查询（收）装车数据，按照相关规则，自动生成汇总报表', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419095215764', '2016-11-20', '业绩划分报表', '同步站点资料的条码和名称，调用站点的所属分部所占比例', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419096925386', '2016-11-20', '预付款收入报表', '根据站点和分部、片区、大区统计中转费、扫描费、车线费（含固定车线费）', null, null, null, null);
INSERT INTO `xt_project` VALUES ('p161419098176965', '2016-11-20', '同城件需求', '通过哲盟数据操作达到收派件实际操作的数据，并测试相关功能', null, null, null, null);
