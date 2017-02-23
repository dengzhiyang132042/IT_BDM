/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection;
import com.zs.entity.QuotaGroup;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.Page;
import com.zs.tools.WeekDateArea;

public class QuotaManWeekAction extends MyBaseAction implements IMyBaseAction{
	private QuotaMan qm ;
	private List<QuotaMan> qms;
	private IService ser;
	private Page page;
	
	String result = "quotaManWeek";
	String cz;
	String dates;
	String datee;
	String option;
	String timeType;
	String group;
	
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
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public String getDatee() {
		return datee;
	}
	public void setDatee(String datee) {
		this.datee = datee;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getTimeType() {
		return timeType;
	}
	public void setTimeType(String timeType) {
		this.timeType = timeType;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	
	
	public void clearOptions() {
		qm=null;
		qms=null;
		dates=null;
		datee=null;
		group=null;
		cz=null;
	}
	
	public void clearSpace(){
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
		if(timeType==null||timeType.equals("")){
			timeType = "W";
		}
		if(option==null||option.equals("")){
			option = "detail";
		}
		if(group==null){
			group="";
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		clearSpace();
		//处理查看详情的问题
		String gs="";
		if(group.equals("系统组")){
			gs="('站点资料登记','二级站点登记','哲盟职能用户','哲盟数据检查','巴枪条码变更','哲盟异常登记','公司BQQ登记','系统开发登记')";
		}else if(group.equals("运维组")){
			gs="('ASDL宽带登记','监控信息登记','监控材料清单','SIM费用报销','外出登记新表','设备维修登记','VPN账号登记','邮箱账号登记','公司电脑信息','骏达设备登记','公司wifi管理','总部呼叫系统','网点呼叫系统','oa账号登记','打印机登记','电话线分布')";
		}else if(group.equals("维护组")){
			gs="('操作设备巡检','监控设备巡检','观澜3楼巡检','新仓仓库巡检','巴枪维修登记','设备外修登记')";
		}
		//首先查找组表中的头尾时间
		//为了显示效果和显示速度，此处采取先不查询所有数据而是采取，取前两周的数据进行一个筛选
		String str ="from QuotaMan ";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = new Date();
		if(timeType.equals("W")){
			try {
				dates=sdf.format(new Date(d.getYear(), d.getMonth(), d.getDate()-14));
				datee=sdf.format(d);
				List datelist = WeekDateArea.weekdate(dates, datee);
				dates=datelist.get(1).toString();
			} catch (ParseException e) {
				System.out.println("周数据错误");
			}
		}else if(timeType.equals("M")){
			dates=sdf.format(new Date(d.getYear(), d.getMonth()-1, 1));
			datee=sdf.format(d);
		}else if(timeType.equals("Y")){
			dates=sdf.format(new Date(d.getYear()-1,1, 1));
			datee=sdf.format(d);
		}
		str = str +" where qmDate >='"+dates+"' and qmDate <='"+datee+"'";
		String str1 =str+" order by qmDate asc";
		List list1 =  ser.find(str1, null);
		QuotaMan ls = (QuotaMan) list1.get(0);
		String str2 =str+" order by qmDate desc";
		List list2 =  ser.find(str2, null);
		QuotaMan le = (QuotaMan) list2.get(0);
		//先对集合进行实例化 --方便组装数据的时候可以直接使用
		qms= new ArrayList<QuotaMan>();
		//判断它属于哪一周
		if (timeType.equals("W")) {
			int weeknum = 0 ;
			try {
				List lse =  WeekDateArea.weekdate(sdf.format(ls.getQmDate()), sdf.format(le.getQmDate()));
				sdf.parse(lse.get(0).toString()).getTime();
				weeknum =(int)((sdf.parse(lse.get(0).toString())).getTime()-(sdf.parse(lse.get(1).toString())).getTime())/(1000*60*60*24*7);
			} catch (ParseException e) {
				System.out.println("周数据统计按人时间转换错误");
			}
			for (int i = 0; i <= weeknum; i++) {
				Date date = new Date(le.getQmDate().getYear(),le.getQmDate().getMonth(),le.getQmDate().getDate()-(7*i));
				Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
				Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
				Calendar ca3 = Calendar.getInstance();
				ca3.setTime(dateStart);
				int weekNum = ca3.get(ca3.WEEK_OF_YEAR);
				String nums = "第"+weekNum+"周";
				//将起始时间和周数传出来；
				initCount(dateStart, dateEnd,nums,gs);
			}
		}else if(timeType.equals("M")){
			int ms=(le.getQmDate().getYear()-ls.getQmDate().getYear())*12+(le.getQmDate().getMonth()-ls.getQmDate().getMonth());
			for (int i = 0; i <= ms; i++) {
				Date dateStart=new Date(le.getQmDate().getYear(), le.getQmDate().getMonth()-i, 1,0,0,0);
				Calendar ca = Calendar.getInstance();    
				ca.set(1900+le.getQmDate().getYear(), 1+le.getQmDate().getMonth()-i, 0);
				Date dateTmp=ca.getTime();
				Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
				int m=dateStart.getMonth()+1;
				String nums = "第"+m+"月";
				initCount(dateStart, dateEnd,nums,gs);
			}
		}else if (timeType.equals("Y")) {
			//设置序号初始值
			int orderNumber = 0;
			//获得相差年数
			int ys=le.getQmDate().getYear()-ls.getQmDate().getYear();
			for (int i = 0; i <= ys; i++) {
				Date dateStart=new Date(le.getQmDate().getYear()-i, 0, 1,0,0,0);
				Date dateEnd=new Date(le.getQmDate().getYear()-i, 11, 31,23,59,59);
				int y=dateStart.getYear()+1900;
				String ynum = y+"年";
				initCount(dateStart, dateEnd,ynum,gs);
			}
		}
		gs="";
		
		return result;
	}
	
	//封装数据
	public void initCount(Date dateStart,Date dateEnd,String Numbers,String gs){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String chql="";
		
		if(gs.equals("")){
			chql = "select qmTable from QuotaMan where  qmDate >= ? and qmDate <= ? group by qmTable";
		}else{
			chql = "select qmTable from QuotaMan where qmTable in "+gs+" and qmDate >= ? and qmDate <= ? group by qmTable";
		}
		List li = ser.find(chql, new Object[]{dateStart,dateEnd});
		for (int i = 0; i < li.size(); i++) {
			QuotaMan qman = new QuotaMan(0,0,0,0,0.0);
			if(i==0){
				qman.setQuantum(sdf.format(dateStart)+"<br/>至<br/>"+sdf.format(dateEnd));
				qman.setWeekNum(Numbers);
				qman.setLineNum(li.size());
			}else{
				qman.setQuantum(null);
				qman.setWeekNum(null);
			}
			qman.setQmTable(li.get(i).toString());
			String hql = "from QuotaMan where qmDate >= ? and qmDate <= ? and qmTable = ?";
			List<QuotaMan> lqm = ser.find(hql, new Object[]{dateStart,dateEnd,li.get(i).toString()});
			for (int j = 0; j < lqm.size(); j++) {
				Users us = (Users) ser.get(Users.class, lqm.get(j).getUNum());
				qman.setuName(us.getUName());
				qman.setQmTypeZc(lqm.get(j).getQmTypeZc()+qman.getQmTypeZc());
				qman.setQmTypeWh(lqm.get(j).getQmTypeWh()+qman.getQmTypeWh());
				qman.setQmTypeZx(lqm.get(j).getQmTypeZx()+qman.getQmTypeZx());
			}
			qman.setCount(qman.getQmTypeZc()+qman.getQmTypeWh()+qman.getQmTypeZx());
			qman.setProductivity((double)lqm.size()/5);
			if(qman.getProductivity()>1){
				qman.setProductivity(1.0);
			}
			qms.add(qman);
		}
		
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
}
