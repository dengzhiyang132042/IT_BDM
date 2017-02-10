/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.entity.custom.QuotaGroupDay;
import com.zs.service.IService;
import com.zs.tools.Page;

public class QuotaGroupDayAction extends MyBaseAction implements IMyBaseAction{
	String result = "quotaGroup";
	private QuotaGroupDay qgd;
	private List<QuotaGroupDay> qgds;
	private IService ser;
	private QuotaMan qm;
	private List<QuotaMan> qms;
	
	
	public QuotaGroupDay getQgd() {
		return qgd;
	}
	public void setQgd(QuotaGroupDay qgd) {
		this.qgd = qgd;
	}
	public List<QuotaGroupDay> getQgds() {
		return qgds;
	}
	public void setQgds(List<QuotaGroupDay> qgds) {
		this.qgds = qgds;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public QuotaMan getQm() {
		return qm;
	}
	public void setQm(QuotaMan qm) {
		this.qm = qm;
	}
	public List<QuotaMan> getQms() {
		return qms;
	}
	public void setQms(List<QuotaMan> qms) {
		this.qms = qms;
	}

	
	public void clearOptions() {

	}
	
	public void clearSpace(){
	
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String hql ="select qmDate from QuotaMan group by qmDate";
		List list = ser.find(hql, null);
		System.out.println(11111);
		for (int i = 0; i < list.size(); i++) {
			List<QuotaGroupDay> tmpList = initCount(list.get(i).toString());
			System.out.println(JSONArray.fromObject(tmpList));
		}
		
		return result;
	}
	
	public String add() throws Exception {
		
		return gotoQuery();
	}

	public String update() throws Exception {
		
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		
		return gotoQuery();
	}
	
	public List<QuotaGroupDay>  initCount(String date){
		List<QuotaGroupDay> tmpQms = new ArrayList<QuotaGroupDay>();
		QuotaGroupDay xtz = new QuotaGroupDay();
		QuotaGroupDay yjz = new QuotaGroupDay();
		QuotaGroupDay zmz = new QuotaGroupDay();
		QuotaGroupDay whz = new QuotaGroupDay();
		String hql1="from QuotaMan where qmDate = '"+date+"'";
		List<QuotaMan> lqms = ser.find(hql1, null);
		for (int i = 0; i < lqms.size(); i++) {
			if(lqms.get(i).getQmTable().equals("站点资料登记")||lqms.get(i).getQmTable().equals("二级站点登记")||
				lqms.get(i).getQmTable().equals("哲盟职能用户")||lqms.get(i).getQmTable().equals("哲盟数据检查")||
				lqms.get(i).getQmTable().equals("巴枪条码变更")||lqms.get(i).getQmTable().equals("设备维修登记")||
				lqms.get(i).getQmTable().equals("哲盟异常登记")||lqms.get(i).getQmTable().equals("公司BQQ登记")||
				lqms.get(i).getQmTable().equals("网点IMO登记")||lqms.get(i).getQmTable().equals("系统开发登记")){
				xtz.setZc(lqms.get(i).getQmTypeZc()+xtz.getZc());
				xtz.setWh(lqms.get(i).getQmTypeWh()+xtz.getWh());
				xtz.setZx(lqms.get(i).getQmTypeZx()+xtz.getZx());
			}
			if(lqms.get(i).getQmTable().equals("ADSL宽带登记")||lqms.get(i).getQmTable().equals("监控信息登记")||
				lqms.get(i).getQmTable().equals("监控材料清单")||lqms.get(i).getQmTable().equals("SIM费用报销")||
				lqms.get(i).getQmTable().equals("外出登记新表")){
				yjz.setZc(lqms.get(i).getQmTypeZc()+yjz.getZc());
				yjz.setWh(lqms.get(i).getQmTypeWh()+yjz.getWh());
				yjz.setZx(lqms.get(i).getQmTypeZx()+yjz.getZx());
			}
			if(lqms.get(i).getQmTable().equals("VPN账号登记")||lqms.get(i).getQmTable().equals("IMO账号登记")||
				lqms.get(i).getQmTable().equals("邮箱账号登记")||lqms.get(i).getQmTable().equals("公司电脑信息")||
				lqms.get(i).getQmTable().equals("骏达设备登记")||lqms.get(i).getQmTable().equals("公司wifi管理")||
				lqms.get(i).getQmTable().equals("总部呼叫系统")||lqms.get(i).getQmTable().equals("网点呼叫系统")||
				lqms.get(i).getQmTable().equals("oa账号登记")||lqms.get(i).getQmTable().equals("打印机登记")||
				lqms.get(i).getQmTable().equals("电话线分布")){
				zmz.setZc(lqms.get(i).getQmTypeZc()+zmz.getZc());
				zmz.setWh(lqms.get(i).getQmTypeWh()+zmz.getWh());
				zmz.setZx(lqms.get(i).getQmTypeZx()+zmz.getZx());
			}
			if(lqms.get(i).getQmTable().equals("操作设备巡检")||lqms.get(i).getQmTable().equals("监控设备巡检")||
				lqms.get(i).getQmTable().equals("观澜3楼巡检")||lqms.get(i).getQmTable().equals("新仓仓库巡检")||
				lqms.get(i).getQmTable().equals("巴枪维修登记")||lqms.get(i).getQmTable().equals("设备外修登记")){
				whz.setZc(lqms.get(i).getQmTypeZc()+whz.getZc());
				whz.setWh(lqms.get(i).getQmTypeWh()+whz.getWh());
				whz.setZx(lqms.get(i).getQmTypeZx()+whz.getZx());
			}
		}
		tmpQms.add(xtz);
		tmpQms.add(yjz);
		tmpQms.add(zmz);
		tmpQms.add(whz);
		return tmpQms;
	}
}
