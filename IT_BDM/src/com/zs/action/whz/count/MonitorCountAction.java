package com.zs.action.whz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.custom.WhDeviceScoutCount;
import com.zs.entity.custom.WhMonitorCount;

import com.zs.service.IService;
import com.zs.tools.Constant;
import com.zs.tools.ExcelExport;
import com.zs.tools.Page;
import com.zs.tools.WeekDateArea;

public class MonitorCountAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	Page page;
	
	List<WhMonitorCount> counts;
	
	String filtrate;
	
	String result="monitorCount";
	String result_succ="succ";
	String result_fail="fail";
	
	String dates;
	String datee;
	
	Logger logger=Logger.getLogger(MonitorCountAction.class);
//----------------------------------------------------	
	
	public IService getSer() {
		return ser;
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
	public String getFiltrate() {
		return filtrate;
	}
	public void setFiltrate(String filtrate) {
		this.filtrate = filtrate;
	}
	public List<WhMonitorCount> getCounts() {
		return counts;
	}
	public void setCounts(List<WhMonitorCount> counts) {
		this.counts = counts;
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
//----------------------------------------------------
	public void clearOptions() {
		filtrate=null;
		dates=null;
		datee=null;
	}
	private void clearSpace() {
		if (filtrate!=null && !filtrate.equals("")) {
			filtrate=filtrate.trim();
		}else {
			filtrate="W";
		}
	}
	
	
	/**
	 * 组装count
	 */
	private void initCount(Date dateStart,Date dateEnd,List counts,int num,int orderNumber) {
		List list1=ser.find("from WhMonitorScout where MTime>=? and MTime<=?", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
		List list2 = ser.find("from WhMonitorScout where MTime>=? and MTime<=? and MNote!=''", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
		for(int i = 0; i < 2; i++){
			WhDeviceScoutCount count = new WhDeviceScoutCount();
				count.setsTime(new Timestamp(dateStart.getTime()));
				count.seteTime(new Timestamp(dateEnd.getTime()));
				count.setOrderNum(orderNumber);
				count.setNumber(num);
				count.setAbnormal("正常");
				count.setCount(list1.size()-list2.size());
				count.setRows(2);
				if(i>0){
					count.setCount(list2.size());
					count.setAbnormal("异常");
					count.setRows(0);
				}
			counts.add(count);
		}
		
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<WhMonitorCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		WhMonitorScout d1 = null,d2=null;
		String str="from WhMonitorScout where MTime!=null ";
		String str1="from WhMonitorScout where MTime!=null";
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		if(dates!=null&&datee!=null&&!dates.equals("")&&!datee.equals("")){
			if(dt.equals("W")){
				List datelist = WeekDateArea.weekdate(dates, datee);
				str=str+" and MTime <='"+datelist.get(0)+"'";
				str1=str1+" and MTime >='"+datelist.get(1)+"'";
			}
			if(dt.equals("M")){
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee.substring(0,4))-1900, Integer.parseInt(datee.substring(5)),0);
				str=str+" and MTime <='"+sdf.format(edate)+"'";
				str1=str1+" and MTime >='"+dates+"'";
			}
			if(dt.equals("Y")){
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee)-1900, 12,0);
				str=str+" and MTime <='"+sdf.format(edate)+"'";
				str1=str1+" and MTime >='"+dates+"'";
			}
		}
		str=str+" order by MTime desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(WhMonitorScout) list.get(0);//尾巴
		}
		str1=str1+" order by MTime asc";
		list=ser.query(str1, null, str1, page, ser);
		if (list.size()>0) {
			d2=(WhMonitorScout) list.get(0);//头
		}
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				//设置序号初始值
				int orderNumber=0;
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getMTime().getYear()+1900, d1.getMTime().getMonth()+1, d1.getMTime().getDate());
				ca2.set(d2.getMTime().getYear()+1900, d2.getMTime().getMonth()+1, d2.getMTime().getDate());
				int weekyear = d1.getMTime().getYear()-d2.getMTime().getYear();
				int weeknum =weekyear*52 + ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR);
				for (int i = 0; i <= weeknum+1; i++) {
					Date date = new Date(d1.getMTime().getYear(),d1.getMTime().getMonth(),d1.getMTime().getDate()-(7*i));
					Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
					Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
					Calendar ca3 = Calendar.getInstance();
					ca3.setTime(dateStart);
					int week = ca3.get(ca3.WEEK_OF_YEAR);
					orderNumber++;
					initCount(dateStart, dateEnd, counts,week,orderNumber);
				}
			}else if (dt.equals("M")) {
				//设置序号初始值
				int orderNumber = 0;
				//获取相差月数
				long ms=(d1.getMTime().getYear()-d2.getMTime().getYear())*12+(d1.getMTime().getMonth()-d2.getMTime().getMonth());
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d1.getMTime().getYear(), d1.getMTime().getMonth()-i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d1.getMTime().getYear(), 1+d1.getMTime().getMonth()-i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
					int m=dateStart.getMonth();
					orderNumber++;
					initCount(dateStart, dateEnd, counts,m+1,orderNumber);
				}
			}else if (dt.equals("Y")) {
				//设置序号初始值
				int orderNumber = 0;
				//获得相差年数
				long ys=d1.getMTime().getYear()-d2.getMTime().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d1.getMTime().getYear()-i, 0, 1,0,0,0);
					Date dateEnd=new Date(d1.getMTime().getYear()-i, 11, 31,23,59,59);
					int y=dateStart.getYear();
					orderNumber++;
					initCount(dateStart, dateEnd, counts,y+1900,orderNumber);
				}
			}
		}
	}
	
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		clearSpace();
		counts=new ArrayList<WhMonitorCount>();
		if(id!=null){
			/*
			由于是统计模块所以不需要按编号查询功能，但为了兼容，故保留，只不过其代码为空而已。
			*/
		}else {
			try {
				initCounts(counts,filtrate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		JSONArray json=JSONArray.fromObject(counts);
		getRequest().setAttribute("json", json);
		
		return result;
	}
	
	
	public String gotoQuery() throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		return result;
	}
	
	
	public String add() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public String update() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public String exportExc() throws Exception{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String filePath=getRequest().getRealPath("/")+"/files/export/whz/监控设备巡检统计.xls";
		String dayType = "周数";
		if(filtrate.equals("M")){
			dayType = "月数";
		}else if(filtrate.equals("Y")){
			dayType = "年数";
		}
		Object[] obj ={"序号","开始时间","结束时间",dayType,"类型","数量"};
		Object objtmp[][]=new Object[counts.size()][6];
		for (int i = 0; i < objtmp.length; i++) {
			objtmp[i][0]=counts.get(i).getOrderNum();
			objtmp[i][1]=sdf.format(new Date(counts.get(i).getsTime().getTime()));
			objtmp[i][2]=sdf.format(new Date(counts.get(i).geteTime().getTime()));
			objtmp[i][3]=counts.get(i).getNumber();
			objtmp[i][4]=counts.get(i).getAbnormal();
			objtmp[i][5]=counts.get(i).getCount();
		}
		
		ExcelExport.OutExcel(obj, objtmp, filePath);
//		getResponse().sendRedirect(Constant.WEB_URL+"files/export/xtz/site.xls");
//		return result;
		return null;
	}
}
