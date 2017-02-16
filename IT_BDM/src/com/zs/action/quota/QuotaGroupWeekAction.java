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

public class QuotaGroupWeekAction extends MyBaseAction implements IMyBaseAction{
	String result = "quotaGroupWeek";
	private List<QuotaGroup> qgds;
	private IService ser;
	private iQuotaService quser;
	private Page page;
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
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
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
		if(option==null){
			option="group";
		}
		if (page==null) {
			page=new Page(1, 0, 12);
		}else {
			page.setPageOn(1);
		}
		if(timeType==null||timeType.equals("")){
			timeType = "W";
		}
	}
	
	public void clearSpace(){
	
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		String hql = "from QuotaGroup order by qgDate desc";
		qgds = ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < qgds.size(); i++) {
			if(i%4!=0){
				qgds.get(i).setQgDate(null);
			}
		}
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			//更新数据
			quser.dataUpdate();
		}
		//首先查找组表中的头尾时间
		String hqltimes ="from QuotaGroup order by qgDate asc";
		List list1 =  ser.find(hqltimes, null);
		QuotaGroup ls = (QuotaGroup) list1.get(0);
		String hqltimee ="from QuotaGroup order by qgDate desc";
		List list2 =  ser.find(hqltimee, null);
		QuotaGroup le = (QuotaGroup) list2.get(0);
		System.out.println("---->>");
		
		System.out.println(ls.getQgDate());
		System.out.println(le.getQgDate());
		//先对集合进行实例化 --方便组装数据的时候可以直接使用
		qgds= new ArrayList<QuotaGroup>();
		//判断它属于哪一周
		if (timeType.equals("W")) {
			Calendar cas = Calendar.getInstance();
			cas.setTime(ls.getQgDate());
			Calendar cae = Calendar.getInstance();
			cae.setTime(le.getQgDate());
			int weeknum =cae.get(cae.WEEK_OF_YEAR)-cas.get(cas.WEEK_OF_YEAR);
			for (int i = 0; i <= weeknum; i++) {
				Date date = new Date(le.getQgDate().getYear(),le.getQgDate().getMonth(),le.getQgDate().getDate()-(7*i));
				Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
				Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
				Calendar ca3 = Calendar.getInstance();
				ca3.setTime(dateStart);
				int weekNum = ca3.get(ca3.WEEK_OF_YEAR);
				//将起始时间和周数传出来；
				initCount(dateStart, dateEnd,weekNum);
			}
		}
		return result;
	}
	//封装数据
	public void initCount(Date dateStart,Date dateEnd,int Number){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String[] g = new  String[]{"系统应用组","硬件组","桌面组","维护组"};
		for (int i = 0; i < g.length; i++) {
			QuotaGroup qg = new QuotaGroup("",0,0,0,0,0.0);
			if(i==0){
				qg.setQuantum(sdf.format(dateStart)+"-"+sdf.format(dateEnd));
				qg.setWeekNum("第"+Number+"周");
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
