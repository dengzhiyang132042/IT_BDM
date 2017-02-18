/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.QuotaGroup;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.service.iQuotaService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;
import com.zs.tools.WeekDateArea;

public class QuotaGroupWeekAction extends MyBaseAction implements IMyBaseAction{
	String result = "quotaGroupWeek";
	private List<QuotaGroup> qgds;
	private IService ser;
	private iQuotaService quser;
	String cz;
	String option;
	String dates;
	String datee;
	String timeType;
	
	public List<QuotaGroup> getQgds() {
		return qgds;
	}
	public void setQgds(List<QuotaGroup> qgds) {
		this.qgds = qgds;
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
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
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
	public iQuotaService getQuser() {
		return quser;
	}
	public void setQuser(iQuotaService quser) {
		this.quser = quser;
	}
	public String getTimeType() {
		return timeType;
	}
	public void setTimeType(String timeType) {
		this.timeType = timeType;
	}
	
	
	public void clearOptions() {
		qgds=null;
		cz=null;
		dates=null;
		datee=null;
		timeType=null;
		if(option==null){
			option="group";
		}
	}
	
	public void clearSpace(){
		if(timeType==null||timeType.equals("")){
			timeType = "W";
		}
	
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			//更新数据
			quser.dataUpdate();
		}
		clearSpace();
		//首先查找组表中的头尾时间
		//为了显示效果和显示速度，此处采取先不查询所有数据而是采取，取前两周的数据进行一个筛选
		String str ="from QuotaGroup ";
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
		str = str +" where qgDate >='"+dates+"' and qgDate <='"+datee+"'";
		String str1 =str+" order by qgDate asc";
		List list1 =  ser.find(str1, null);
		QuotaGroup ls = (QuotaGroup) list1.get(0);
		String str2 =str+" order by qgDate desc";
		List list2 =  ser.find(str2, null);
		QuotaGroup le = (QuotaGroup) list2.get(0);
		//先对集合进行实例化 --方便组装数据的时候可以直接使用
		qgds= new ArrayList<QuotaGroup>();
		//判断它属于哪一周
		if (timeType.equals("W")) {
			int weeknum =(int)((le.getQgDate().getTime()-ls.getQgDate().getTime())/(1000*60*60*24))/7;
			for (int i = 0; i <= weeknum; i++) {
				Date date = new Date(le.getQgDate().getYear(),le.getQgDate().getMonth(),le.getQgDate().getDate()-(7*i));
				Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
				Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
				Calendar ca3 = Calendar.getInstance();
				ca3.setTime(dateStart);
				int weekNum = ca3.get(ca3.WEEK_OF_YEAR);
				String nums = "第"+weekNum+"周";
				//将起始时间和周数传出来；
				initCount(dateStart, dateEnd,nums);
			}
		}else if(timeType.equals("M")){
			int ms=(le.getQgDate().getYear()-ls.getQgDate().getYear())*12+(le.getQgDate().getMonth()-ls.getQgDate().getMonth());
			for (int i = 0; i <= ms; i++) {
				Date dateStart=new Date(le.getQgDate().getYear(), le.getQgDate().getMonth()-i, 1,0,0,0);
				Calendar ca = Calendar.getInstance();    
				ca.set(1900+le.getQgDate().getYear(), 1+le.getQgDate().getMonth()-i, 0);
				Date dateTmp=ca.getTime();
				Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
				int m=dateStart.getMonth()+1;
				String nums = "第"+m+"月";
				initCount(dateStart, dateEnd,nums);
			}
		}else if (timeType.equals("Y")) {
			//设置序号初始值
			int orderNumber = 0;
			//获得相差年数
			int ys=le.getQgDate().getYear()-ls.getQgDate().getYear();
			for (int i = 0; i <= ys; i++) {
				Date dateStart=new Date(le.getQgDate().getYear()-i, 0, 1,0,0,0);
				Date dateEnd=new Date(le.getQgDate().getYear()-i, 11, 31,23,59,59);
				int y=dateStart.getYear()+1900;
				String ynum = y+"年";
				initCount(dateStart, dateEnd,ynum);
			}
		}
		return result;
	}
	//封装数据
	public void initCount(Date dateStart,Date dateEnd,String Numbers){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String[] g = new  String[]{"系统组","运维组","维护组"};
		for (int i = 0; i < g.length; i++) {
			QuotaGroup qg = new QuotaGroup("",0,0,0,0,0.0);
			if(i==0){
				qg.setQuantum(sdf.format(dateStart)+"<br/>至<br/>"+sdf.format(dateEnd));
				qg.setWeekNum(Numbers);
			}
			qg.setQgGroup(g[i]);
			
			String hql = "from QuotaGroup where qgDate >= ? and qgDate <= ? and qgGroup = ?";
			List<QuotaGroup> lqg = ser.find(hql, new Object[]{dateStart,dateEnd,g[i]});
			for (int j = 0; j < lqg.size(); j++) {
				qg.setQgFunctionary(lqg.get(j).getQgFunctionary());
				qg.setQgTypeZc(lqg.get(j).getQgTypeZc()+qg.getQgTypeZc());
				qg.setQgTypeWh(lqg.get(j).getQgTypeWh()+qg.getQgTypeWh());
				qg.setQgTypeZx(lqg.get(j).getQgTypeZx()+qg.getQgTypeZx());
			}
			qg.setQgCount(qg.getQgTypeZc()+qg.getQgTypeWh()+qg.getQgTypeZx());
			//录入率暂时没计算方法
			qgds.add(qg);
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
