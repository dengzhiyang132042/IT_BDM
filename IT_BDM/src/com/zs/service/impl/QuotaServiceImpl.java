/**
 * 
 */
package com.zs.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zs.entity.QuotaGroup;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.service.BaseService;
import com.zs.service.iQuotaService;
import com.zs.tools.NameOfDate;

/**
 * @author 黄光辉
 *
 */
public class QuotaServiceImpl extends BaseService implements iQuotaService{
	
	/**
	 * @author 黄光辉  2017年2月16日14:43:56
	 * <br/>封装的是统计报表更新数据的方法
	 */
	public void dataUpdate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//先判断数据是否需要重新更新
		//查询组统计表中的最新时间
		String hql = "from QuotaGroup order by qgDate desc";
		List<QuotaGroup> qgTime = find(hql, null);
		if(qgTime.size()>0){
			qgTime.get(0).getQgDate();
			//将当天的数据先删除再重新计算
			for (int i = 0; i < 4; i++) {
				delete(qgTime.get(i));
			}
			tabUpdate(sdf.format(qgTime.get(0).getQgDate()));
		}else{
			tabUpdate("2016-01-01");
		}
	}
	/**
	 * 将数据装入数据库中
	 */
	public void tabUpdate(String td){
		String hql ="select qmDate from QuotaMan where qmDate >= '"+td+"' group by qmDate";
		List list = find(hql, null);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			List<QuotaGroup> tmpqgds = initCount(list.get(i).toString());
			for (int j = 0; j < tmpqgds.size(); j++) {
				try {
					Date d = sdf.parse(list.get(i).toString());
					tmpqgds.get(j).setQgDate(d);
				} catch (ParseException e) {
					System.out.println("时间类型转换错误");
				}
				save(tmpqgds.get(j));
			}
		}
	}
	public List<QuotaGroup>  initCount(String date){
		List<QuotaGroup> tmpQms = new ArrayList<QuotaGroup>();
		QuotaGroup xtz = new QuotaGroup("qg"+NameOfDate.getNum(),0,0,0,0,0.0);
		QuotaGroup yjz = new QuotaGroup("qg"+NameOfDate.getNum(),0,0,0,0,0.0);
		QuotaGroup zmz = new QuotaGroup("qg"+NameOfDate.getNum(),0,0,0,0,0.0);
		QuotaGroup whz = new QuotaGroup("qg"+NameOfDate.getNum(),0,0,0,0,0.0);
		String hql1="from QuotaMan where qmDate = '"+date+"'";
		List<QuotaMan> lqms = find(hql1, null);
		//计算所属分组，并进行合计
		for (int i = 0; i < lqms.size(); i++) {
			if(lqms.get(i).getQmTable().equals("站点资料登记")||lqms.get(i).getQmTable().equals("二级站点登记")||
				lqms.get(i).getQmTable().equals("哲盟职能用户")||lqms.get(i).getQmTable().equals("哲盟数据检查")||
				lqms.get(i).getQmTable().equals("巴枪条码变更")||lqms.get(i).getQmTable().equals("设备维修登记")||
				lqms.get(i).getQmTable().equals("哲盟异常登记")||lqms.get(i).getQmTable().equals("公司BQQ登记")||
				lqms.get(i).getQmTable().equals("网点IMO登记")||lqms.get(i).getQmTable().equals("系统开发登记")){
				xtz.setQgTypeZc(lqms.get(i).getQmTypeZc()+xtz.getQgTypeZc());
				xtz.setQgTypeWh(lqms.get(i).getQmTypeWh()+xtz.getQgTypeWh());
				xtz.setQgTypeZx(lqms.get(i).getQmTypeZx()+xtz.getQgTypeZx());
			}
			if(lqms.get(i).getQmTable().equals("ADSL宽带登记")||lqms.get(i).getQmTable().equals("监控信息登记")||
				lqms.get(i).getQmTable().equals("监控材料清单")||lqms.get(i).getQmTable().equals("SIM费用报销")||
				lqms.get(i).getQmTable().equals("外出登记新表")){
				yjz.setQgTypeZc(lqms.get(i).getQmTypeZc()+yjz.getQgTypeZc());
				yjz.setQgTypeWh(lqms.get(i).getQmTypeWh()+yjz.getQgTypeWh());
				yjz.setQgTypeZx(lqms.get(i).getQmTypeZx()+yjz.getQgTypeZx());
			}
			if(lqms.get(i).getQmTable().equals("VPN账号登记")||lqms.get(i).getQmTable().equals("IMO账号登记")||
				lqms.get(i).getQmTable().equals("邮箱账号登记")||lqms.get(i).getQmTable().equals("公司电脑信息")||
				lqms.get(i).getQmTable().equals("骏达设备登记")||lqms.get(i).getQmTable().equals("公司wifi管理")||
				lqms.get(i).getQmTable().equals("总部呼叫系统")||lqms.get(i).getQmTable().equals("网点呼叫系统")||
				lqms.get(i).getQmTable().equals("oa账号登记")||lqms.get(i).getQmTable().equals("打印机登记")||
				lqms.get(i).getQmTable().equals("电话线分布")){
				zmz.setQgTypeZc(lqms.get(i).getQmTypeZc()+zmz.getQgTypeZc());
				zmz.setQgTypeWh(lqms.get(i).getQmTypeZc()+zmz.getQgTypeWh());
				zmz.setQgTypeZx(lqms.get(i).getQmTypeZx()+zmz.getQgTypeZx());
			}
			if(lqms.get(i).getQmTable().equals("操作设备巡检")||lqms.get(i).getQmTable().equals("监控设备巡检")||
				lqms.get(i).getQmTable().equals("观澜3楼巡检")||lqms.get(i).getQmTable().equals("新仓仓库巡检")||
				lqms.get(i).getQmTable().equals("巴枪维修登记")||lqms.get(i).getQmTable().equals("设备外修登记")){
				whz.setQgTypeZc(lqms.get(i).getQmTypeZc()+whz.getQgTypeZc());
				whz.setQgTypeWh(lqms.get(i).getQmTypeWh()+whz.getQgTypeWh());
				whz.setQgTypeZx(lqms.get(i).getQmTypeZx()+whz.getQgTypeZx());
			}
		}
		//添加组信息
		//此处为了以后方便维护，采取到用户表中取信息进行匹对,此处用到的条件与组织架构相关
		List<Users> ls = find("from Users where UJob like '%主管%'",null );
		for (int i = 0; i < ls.size(); i++) {
			if(ls.get(i).getCsId().equals("cs181701262302450")){
				xtz.setQgGroup("系统应用组");
				xtz.setQgFunctionary(ls.get(i).getUName());
			}
			if(ls.get(i).getCsId().equals("cs221045082233130")){
				yjz.setQgGroup("硬件组");
				yjz.setQgFunctionary(ls.get(i).getUName());
			}
			if(ls.get(i).getCsId().equals("cs221045082233130")){
				zmz.setQgGroup("桌面组");
				zmz.setQgFunctionary(ls.get(i).getUName());
			}
			if(ls.get(i).getCsId().equals("cs181706154913403")){
				whz.setQgGroup("维护组");
				whz.setQgFunctionary(ls.get(i).getUName());
			}
			
		}
		//加入合计
		xtz.setQgCount(xtz.getQgTypeZc()+xtz.getQgTypeWh()+xtz.getQgTypeZx());
		yjz.setQgCount(yjz.getQgTypeZc()+yjz.getQgTypeWh()+yjz.getQgTypeZx());
		zmz.setQgCount(zmz.getQgTypeZc()+zmz.getQgTypeWh()+zmz.getQgTypeZx());
		whz.setQgCount(whz.getQgTypeZc()+whz.getQgTypeWh()+whz.getQgTypeZx());
		
		tmpQms.add(xtz);
		tmpQms.add(yjz);
		tmpQms.add(zmz);
		tmpQms.add(whz);
		return tmpQms;
	}

}
