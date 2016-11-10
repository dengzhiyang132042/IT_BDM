package com.zs.action.xtz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.DateFormat;
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
import com.zs.entity.XtBranches;
import com.zs.entity.custom.XtBranchesCount;

import com.zs.service.IService;
import com.zs.tools.ExcelExport;
import com.zs.tools.Page;

public class BranchesAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	Object[][] obj2;
	
	List<XtBranchesCount> counts;
	
	String filtrate;
	
	String result="branchesCount";
	String result_succ="succ";
	String result_fail="fail";
	
	String dates;
	String datee;
	
	Logger logger=Logger.getLogger(BranchesAction.class);
//----------------------------------------------------	
	
	public IService getSer() {
		return ser;
	}
	public String getFiltrate() {
		return filtrate;
	}
	public void setFiltrate(String filtrate) {
		this.filtrate = filtrate;
	}
	public List<XtBranchesCount> getCounts() {
		return counts;
	}
	public void setCounts(List<XtBranchesCount> counts) {
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
	//----------------------------------------------------
	public void clearOptions() {
		filtrate=null;
	}
	private void clearSpace() {
		if (filtrate!=null && !filtrate.equals("")) {
			filtrate=filtrate.trim();
		}else {
			filtrate="D";
		}
	}
	
	
	/**
	 * 组装count
	 */
	private void initCount(Date dateStart,Date dateEnd,List counts,int num) {
		//获取在该时间范围内二级站点资料的所有数据
		List list2=ser.find("from XtBranches where BMaintainDate>=? and BMaintainDate<=? ", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
		if (list2.size()!=0) {//如果为0就不要了
			XtBranchesCount count = new XtBranchesCount();
			//这个组装数据有问题类型问题没有解决
			count.setsTime(new Timestamp(dateStart.getTime()));
			count.seteTime(new Timestamp(dateEnd.getTime()));
			count.setNumber(num);
			count.setCount(list2.size());
			counts.add(count);
		}
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<XtBranchesCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		XtBranches d1 = null,d2=null;
		String str="from XtBranches";
		String str1="from XtBranches";
		if(dates!=null&&datee!=null&&!dates.equals("")&&!datee.equals("")){
			if(dt.equals("D")){
				System.out.println(dates);
				System.out.println(datee);
				str=str+" where BMaintainDate <='"+datee+"'";
				str1=str1+" where BMaintainDate >='"+dates+"'";
			}
			if(dt.equals("W")){
				System.out.println(dates);
				System.out.println(datee);
				
				
				Calendar cal1 = Calendar.getInstance();
		        cal1.clear();
		        cal1.set(Calendar.YEAR, Integer.parseInt(dates.substring(0,4)));
		        cal1.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(dates.substring(6)));
		        cal1.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		        System.out.println(cal1.getTime());
		        
		        Calendar cal2 = Calendar.getInstance();
		        cal2.clear();
		        cal2.set(Calendar.YEAR, Integer.parseInt(datee.substring(0,4)));
		        cal2.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(datee.substring(6)));
		        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
		        System.out.println(cal2.getTime());
		        
				str=str+" where BMaintainDate <='"+datee+"'";
				str1=str1+" where BMaintainDate >='"+dates+"'";
			}
			if(dt.equals("M")){
				System.out.println(dates);
				System.out.println(datee);	
				str=str+" where BMaintainDate <='"+datee+"'";
				str1=str1+" where BMaintainDate >='"+dates+"'";
			}
			if(dt.equals("Y")){
				System.out.println(dates);
				System.out.println(datee);
				str=str+" where BMaintainDate <='"+datee+"'";
				str1=str1+" where BMaintainDate >='"+dates+"'";
			}
		}else{
		
			
		}
		str=str+" order by BMaintainDate desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(XtBranches) list.get(0);//尾巴
		}
		str1=str1+" order by BMaintainDate asc";
		list=ser.query(str1, null, str1, page, ser);
		if (list.size()>0) {
			d2=(XtBranches) list.get(0);//头
		}
		//用完清空
		str=null;
		if (d1!=null && d2!=null) {
			if(dt.equals("D")){
				//获取相差天数
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date1=sdf.parse(d1.getBMaintainDate().toLocaleString());
				Date date2=sdf.parse(d2.getBMaintainDate().toLocaleString());
				long days=(date1.getTime()-date2.getTime())/(1000*3600*24);
				for (int i = 0; i <=days; i++) {
					Date dateStart=new Date(d1.getBMaintainDate().getYear(), d1.getBMaintainDate().getMonth(), d1.getBMaintainDate().getDate()-i,0,0,0);
					Date dateEnd=new Date(d1.getBMaintainDate().getYear(), d1.getBMaintainDate().getMonth(), d1.getBMaintainDate().getDate()-i,23, 59, 59);
					Calendar caDay = Calendar.getInstance();
					caDay.setTime(dateStart);
					int day = caDay.get(caDay.DAY_OF_MONTH);
					initCount(dateStart, dateEnd, counts,day);
				}
			}
			if (dt.equals("W")) {
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getBMaintainDate().getYear()+1900, d1.getBMaintainDate().getMonth()+1, d1.getBMaintainDate().getDate());
				ca2.set(d2.getBMaintainDate().getYear()+1900, d2.getBMaintainDate().getMonth()+1, d2.getBMaintainDate().getDate());
				int weekyear = d1.getBMaintainDate().getYear()-d2.getBMaintainDate().getYear();
				int weeknum =weekyear*52 + ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR);
				for (int i = 0; i <=weeknum+1; i++) {
					Date date = new Date(d1.getBMaintainDate().getYear(),d1.getBMaintainDate().getMonth(),d1.getBMaintainDate().getDate()-(7*i));
					Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
					Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
					Calendar ca3 = Calendar.getInstance();
					ca3.setTime(dateStart);
					int week = ca3.get(ca3.WEEK_OF_YEAR);
					initCount(dateStart, dateEnd, counts,week);
				}
			}else if (dt.equals("M")) {
				//获取相差月数
				long ms=(d1.getBMaintainDate().getYear()-d2.getBMaintainDate().getYear())*12+(d1.getBMaintainDate().getMonth()-d2.getBMaintainDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d1.getBMaintainDate().getYear(), d1.getBMaintainDate().getMonth()-i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d1.getBMaintainDate().getYear(), 1+d1.getBMaintainDate().getMonth()-i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
//					logger.debug(dateEnd.toLocaleString()+"  "+dateStart.getYear()+"  "+dateStart.getMonth()+"  "+i);
					int m=dateStart.getMonth();
					initCount(dateStart, dateEnd, counts,m+1);
				}
			}else if (dt.equals("Y")) {
				//获得相差年数
				long ys=d1.getBMaintainDate().getYear()-d2.getBMaintainDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d1.getBMaintainDate().getYear()-i, 0, 1,0,0,0);
					Date dateEnd=new Date(d1.getBMaintainDate().getYear()-i, 11, 31,23,59,59);
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
		counts=new ArrayList<XtBranchesCount>();
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
		
//		logger.debug(counts.size());
//		for (int i = 0; i < counts.size(); i++) {
//			System.out.println(counts.get(i).toString());
//		}
//		
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
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date dateStart = format.parse(dates);
		Date dateEnd = format.parse(datee);
		String filePath=getRequest().getRealPath("/")+"\\files\\branches.xls";
//		String path="C:/Users/it025/Desktop/cssss.xls";
		//获取相差天数
		List list=ser.find("from XtBranches where BMaintainDate>='"+dates+"' and BMaintainDate<='"+datee+"'" ,null);
//		System.out.println(list.size());
		//首行
		List<Object[]> list3 = new ArrayList<Object[]>();
		Object[] obj ={"序号","时间","维护数量"};
		for (int i = 0,j=1; i <list.size(); i++) {
			Object tmpobj[] = new Object[3]; 
			Date dStart=new Date(dateStart.getYear(), dateStart.getMonth(), dateStart.getDate()+i,0,0,0);
			Date eStart=new Date(dateStart.getYear(), dateStart.getMonth(), dateStart.getDate()+i,23, 59, 59);
//			System.out.println(dStart.toString());
//			System.out.println(eStart.toString());
			List list1 = ser.find("from XtBranches where BMaintainDate>=? and BMaintainDate<=? ", new Object[]{new Timestamp(dStart.getTime()),new Timestamp(dStart.getTime())});
//			System.out.println(list1.size());
			
			if(list1.size()!=0){
				tmpobj[0]=j;
				tmpobj[1]=format.format(dStart);
				tmpobj[2]=list1.size();
				list3.add(tmpobj);
				j++;
			}	
		}
		//定义数组装数据
		Object[][] obj2 =new Object[list3.size()][3];
		for (int i = 0; i < obj2.length; i++) {
			
			for (int j = 0; j < obj2[i].length; j++) {
				obj2[i][j]=list3.get(i)[j];
			}
		}
		ExcelExport.OutExcel(obj, obj2, filePath);
		Object objtmp[][]=new Object[counts.size()][3];
		for (int i = 0; i < objtmp.length; i++) {
			objtmp[i][0]=counts.get(i).getsTime();
			objtmp[i][1]=counts.get(i).geteTime();
			objtmp[i][2]=counts.get(i).getCount();
		}
		
		
		
		return result;
	}
}
