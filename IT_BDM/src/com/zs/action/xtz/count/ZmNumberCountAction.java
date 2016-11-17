package com.zs.action.xtz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.entity.XtBranches;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.entity.XtZmNumberCount;
import com.zs.service.IService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.Constant;
import com.zs.tools.ExcelExport;
import com.zs.tools.Page;

public class ZmNumberCountAction extends MyBaseAction implements IMyBaseAction{

	private IService ser;
	private iXtZmNumberService xtZmNumberSer;
	private Page page;
	private List<XtZmNumberCount> counts;
	private String filtrate;
	
	String result="zmNumberCount";
	String result_succ="succ";
	String result_fail="fail";
	
	String dates;
	String datee;

	Logger logger=Logger.getLogger(ZmNumberCountAction.class);
	
	//--------------------------------------------------------
	public String getFiltrate() {
		return filtrate;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public iXtZmNumberService getXtZmNumberSer() {
		return xtZmNumberSer;
	}
	public void setXtZmNumberSer(iXtZmNumberService xtZmNumberSer) {
		this.xtZmNumberSer = xtZmNumberSer;
	}
	public void setFiltrate(String filtrate) {
		this.filtrate = filtrate;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<XtZmNumberCount> getCounts() {
		return counts;
	}
	public void setCounts(List<XtZmNumberCount> counts) {
		this.counts = counts;
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
	public void clearOptions() {
		filtrate=null;
	}
	//----------------------------------------------------
	
	
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
	private void initCount(Date dateStart,Date dateEnd,List counts,int number) {
		//组装一个XtZmNumberCount
		XtZmNumberCount count=new XtZmNumberCount();
		count.setsTime(new Timestamp(dateStart.getTime()));
		count.seteTime(new Timestamp(dateEnd.getTime()));
		//获取在该时间范围内故障报修总量
		String hql="from XtZmNumber where zmServiceDate>='"+count.getsTime()+"' and zmServiceDate<='"+count.geteTime()+"' and zmServiceDate!=null";
		List<XtZmNumber> list2=ser.find(hql, null);
		if (list2.size()!=0) {//如果为0就不要了
			count.setCount(list2.size());
			//这里填装周数、月数、年数这种信息
			count.setNumber(number);
			counts.add(count);
		}
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<XtZmNumberCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		XtZmNumber d1 = null,d2=null;
		String str="from XtZmNumber where zmServiceDate!=null";
		String str1="from XtZmNumber where zmServiceDate!=null";
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		if(dates!=null&&datee!=null&&!dates.equals("")&&!datee.equals("")){
			//备用
//			if(dt.equals("D")){
//				System.out.println(dates);
//				System.out.println(datee);
//				str=str+" where zmApplyDate <='"+datee+"'";
//				str1=str1+" where zmApplyDate >='"+dates+"'";
//			}
			if(dt.equals("W")){
//				System.out.println(dates);
//				System.out.println(datee);
				//头时间
				Calendar cal1 = Calendar.getInstance();
		        cal1.clear();
		        cal1.set(Calendar.YEAR, Integer.parseInt(dates.substring(0,4)));
		        //此处为了解决html5中使用日期插件和Calendar的不同
		        if(Integer.parseInt(dates.substring(0,4))%5==1){
		        	cal1.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(dates.substring(6))+1);
		        }else{
		        	cal1.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(dates.substring(6)));
		        }
		        cal1.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		        //获取尾时间
		        Calendar cal2 = Calendar.getInstance();
		        cal2.clear();
		        cal2.set(Calendar.YEAR, Integer.parseInt(datee.substring(0,4)));
		        if(Integer.parseInt(dates.substring(0,4))%5==1){
		        	cal2.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(datee.substring(6))+1);
		        }else{
		        	cal2.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(datee.substring(6)));
		        }
		        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
//		        System.out.println(cal2.getTime());
		        
				str=str+" and zmApplyDate <='"+sdf.format(cal2.getTime())+"'";
				str1=str1+" and zmApplyDate >='"+sdf.format(cal1.getTime())+"'";
			}
			if(dt.equals("M")){
//				System.out.println(dates);
//				System.out.println(datee);	
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee.substring(0,4))-1900, Integer.parseInt(datee.substring(5)),0);
				str=str+" and zmApplyDate <='"+sdf.format(edate)+"'";
				str1=str1+" and zmApplyDate >='"+dates+"'";
			}
			if(dt.equals("Y")){
				System.out.println(dates);
				System.out.println(datee);
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee)-1900, 12,0);
				str=str+" and zmApplyDate <='"+sdf.format(edate)+"'";
				str1=str1+" and zmApplyDate >='"+dates+"'";
			}
		}
		str=str+" order by zmApplyDate desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(XtZmNumber) list.get(0);//尾巴
		}
		str1=str1+" order by zmApplyDate asc";
		list=ser.query(str1, null, str1, page, ser);
		if (list.size()>0) {
			d2=(XtZmNumber) list.get(0);//头
		}
		//用完清空
		str=null;
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				//获取相差天数
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getZmApplyDate().getYear(), d1.getZmApplyDate().getMonth(), d1.getZmApplyDate().getDate());
				ca2.set(d2.getZmApplyDate().getYear(), d2.getZmApplyDate().getMonth(), d2.getZmApplyDate().getDate());
				int weeknum = (ca1.get(Calendar.YEAR)-ca2.get(Calendar.YEAR))*52+(ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR));
				//从第一天开始循环组装数据封装
				for (int i = 0; i <=weeknum+1; i++) {
					Date tmp=new Date(d1.getZmServiceDate().getYear(), d1.getZmServiceDate().getMonth(), d1.getZmServiceDate().getDate()-7*i,0,0,0);
					Date dateStart=ser.weekDate(tmp).get(ser.KEY_DATE_START);
					Date dateEnd=ser.weekDate(tmp).get(ser.KEY_DATE_END);
					Calendar cas = Calendar.getInstance();
					Calendar cae = Calendar.getInstance();
					cas.setTime(dateStart);
					int week=cas.get(cas.WEEK_OF_YEAR);
					initCount(dateStart, dateEnd, counts,week);
				}
			}else if (dt.equals("M")) {
				//获取相差月数
				long ms=(d1.getZmServiceDate().getYear()-d2.getZmServiceDate().getYear())*12+(d1.getZmServiceDate().getMonth()-d2.getZmServiceDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d1.getZmServiceDate().getYear(), d1.getZmServiceDate().getMonth()-i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d1.getZmServiceDate().getYear(), 1+d1.getZmServiceDate().getMonth()-i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
					int m=dateStart.getMonth();
					initCount(dateStart, dateEnd, counts,m+1);
				}
			}else if (dt.equals("Y")) {
				//获得相差年数
				long ys=d1.getZmServiceDate().getYear()-d2.getZmServiceDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d1.getZmServiceDate().getYear()-i, 0, 1,0,0,0);
					Date dateEnd=new Date(d1.getZmServiceDate().getYear()-i, 11, 31,23,59,59);
					int y=dateStart.getYear();
					initCount(dateStart, dateEnd, counts,y+1900);
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
		counts=new ArrayList<XtZmNumberCount>();
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
		return null;
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
		String filePath=getRequest().getRealPath("/")+"/files/export/xtz/zmNumber.xls";
		String dayType = "周数";
		if(filtrate.equals("M")){
			dayType = "月数";
		}else if(filtrate.equals("Y")){
			dayType = "年数";
		}
		Object[] obj ={"序号","开始时间","结束时间",dayType,"维护数量"};
		Object objtmp[][]=new Object[counts.size()][5];
		for (int i = 0; i < objtmp.length; i++) {
			objtmp[i][0]=i+1;
			objtmp[i][1]=sdf.format(counts.get(i).getsTime());
			objtmp[i][2]=sdf.format(counts.get(i).geteTime());
			objtmp[i][3]=counts.get(i).getNumber();
			objtmp[i][4]=counts.get(i).getCount();
		}
		
		ExcelExport.OutExcel(obj, objtmp, filePath);
		getResponse().sendRedirect(Constant.WEB_URL+"files/export/xtz/zmNumber.xls");
		return result;
	}
	
	
}
