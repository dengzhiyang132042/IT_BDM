package com.zs.action.zmz.count;

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
import com.zs.entity.XtSite;
import com.zs.entity.XtSiteCount;
import com.zs.entity.XtZmNumber;
import com.zs.entity.XtZmNumberCount;
import com.zs.entity.ZmByNumber;
import com.zs.entity.ZmVpn;
import com.zs.entity.custom.XtZmDataCount;
import com.zs.entity.custom.ZmByNumCount;
import com.zs.entity.custom.ZmVpnCount;
import com.zs.service.IService;
import com.zs.service.iVpnService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.ExcelExport;
import com.zs.tools.Page;
import com.zs.tools.WeekDateArea;

public class ByNumCountAction extends MyBaseAction implements IMyBaseAction{

	private IService ser;
	private Page page;
	private List<ZmByNumCount> counts;
	private String filtrate;
	
	String result="byNumber";
	String result_succ="succ";
	String result_fail="fail";
	
	String dates;
	String datee;

	Logger logger=Logger.getLogger(ByNumCountAction.class);
	
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
	public void setFiltrate(String filtrate) {
		this.filtrate = filtrate;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<ZmByNumCount> getCounts() {
		return counts;
	}
	public void setCounts(List<ZmByNumCount> counts) {
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
	//----------------------------------------------------
	
	public void clearOptions() {
		filtrate=null;
		dates=null;
		datee=null;
		counts=null;
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
		List list5 = ser.find("select byOnJob from ZmByNumber where byServiceDate>=? and byServiceDate<=? and byServiceDate!=null group by byOnJob", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
		if(list5!=null&&list5.size()>0){
			for(int i = 0 ;i < list5.size(); i++){
				//获取在该时间范围内站点资料的所有数据
				List list2=ser.find("from ZmByNumber where byServiceDate>=? and byServiceDate<=? and byServiceDate!=null and byOnJob =?", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime()),list5.get(i).toString()});
				if (list2.size()!=0) {//如果为0就不要了
					ZmByNumCount count = new ZmByNumCount();
					if(i<1){
						count.setsTime(new Timestamp(dateStart.getTime()));
						count.seteTime(new Timestamp(dateEnd.getTime()));
						count.setOrderNum(orderNumber);
						count.setNumber(num);
						count.setRows(list5.size());
					}else{
						count.setRows(0);
					}
					count.setState(list5.get(i).toString());
					count.setCount(list2.size());
					counts.add(count);
				}
			}
		}
		
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<ZmByNumCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		ZmByNumber d1 = null,d2=null;
		String str="from ZmByNumber where byServiceDate!=null";
		String str1="from ZmByNumber where byServiceDate!=null";
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		if(dates!=null&&datee!=null&&!dates.equals("")&&!datee.equals("")){
			if(dt.equals("W")){
				List datelist = WeekDateArea.weekdate(dates, datee);
				str=str+" and byServiceDate <='"+datelist.get(0)+"'";
				str1=str1+" and byServiceDate >='"+datelist.get(1)+"'";
			}
			if(dt.equals("M")){
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee.substring(0,4))-1900, Integer.parseInt(datee.substring(5)),0);
				str=str+" and byServiceDate <='"+sdf.format(edate)+"'";
				str1=str1+" and byServiceDate >='"+dates+"'";
			}
			if(dt.equals("Y")){
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee)-1900, 12,0);
				str=str+" and byServiceDate <='"+sdf.format(edate)+"'";
				str1=str1+" and byServiceDate >='"+dates+"'";
			}
		}
		str=str+" order by byServiceDate desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(ZmByNumber) list.get(0);//尾巴
		}
		str1=str1+" order by byServiceDate asc";
		list=ser.query(str1, null, str1, page, ser);
		if (list.size()>0) {
			d2=(ZmByNumber) list.get(0);//头
		}
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				//设置序号初始值
				int orderNumber=0;
				//获取相差天数
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getByServiceDate().getYear(), d1.getByServiceDate().getMonth(), d1.getByServiceDate().getDate());
				ca2.set(d2.getByServiceDate().getYear(), d2.getByServiceDate().getMonth(), d2.getByServiceDate().getDate());
				int weeknum = (ca1.get(Calendar.YEAR)-ca2.get(Calendar.YEAR))*52+(ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR));
				//从第一天开始循环组装数据封装
				for (int i = 0; i <=weeknum+1; i++) {
					Date tmp=new Date(d1.getByServiceDate().getYear(), d1.getByServiceDate().getMonth(), d1.getByServiceDate().getDate()-(7*i));
					Date dateStart=ser.weekDate(tmp).get(ser.KEY_DATE_START);
					Date dateEnd=ser.weekDate(tmp).get(ser.KEY_DATE_END);
					Calendar cas = Calendar.getInstance();
					Calendar cae = Calendar.getInstance();
					cas.setTime(dateStart);
					int week=cas.get(cas.WEEK_OF_YEAR);
					orderNumber++;
					initCount(dateStart, dateEnd, counts,week,orderNumber);
				}
			}else if (dt.equals("M")) {
				//设置序号初始值
				int orderNumber=0;
				//获取相差月数
				long ms=(d1.getByServiceDate().getYear()-d2.getByServiceDate().getYear())*12+(d1.getByServiceDate().getMonth()-d2.getByServiceDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms+1; i++) {
					Date dateStart=new Date(d1.getByServiceDate().getYear(), d1.getByServiceDate().getMonth()-i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d1.getByServiceDate().getYear(), 1+d1.getByServiceDate().getMonth()-i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
					int m=dateStart.getMonth();
					orderNumber++;
					initCount(dateStart, dateEnd, counts,m+1,orderNumber);
				}
			}else if (dt.equals("Y")) {
				//设置序号初始值
				int orderNumber=0;
				//获得相差年数
				long ys=d1.getByServiceDate().getYear()-d2.getByServiceDate().getYear();
				for (int i = 0; i <= ys+1; i++) {
					Date dateStart=new Date(d1.getByServiceDate().getYear()-i, 0, 1,0,0,0);
					Date dateEnd=new Date(d1.getByServiceDate().getYear()-i, 11, 31,23,59,59);
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
		counts=new ArrayList<ZmByNumCount>();
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
		String filePath=getRequest().getRealPath("/")+"/files/export/zmz/IMO、邮箱账号统计.xls";
		String dayType = "周数";
		if(filtrate.equals("M")){
			dayType = "月数";
		}else if(filtrate.equals("Y")){
			dayType = "年数";
		}
		Object[] obj ={"序号","开始时间","结束时间",dayType,"在职情况","维护数量"};
		Object objtmp[][]=new Object[counts.size()][6];
		for (int i = 0; i < objtmp.length; i++) {
			if(counts.get(i).getRows()!=0){
				objtmp[i][0]=counts.get(i).getOrderNum();
				objtmp[i][1]=sdf.format(new Date(counts.get(i).getsTime().getTime()));
				objtmp[i][2]=sdf.format(new Date(counts.get(i).geteTime().getTime()));
				objtmp[i][3]=counts.get(i).getNumber();
			}else{
				objtmp[i][0]="";
				objtmp[i][1]="";
				objtmp[i][2]="";
				objtmp[i][3]="";
			}
			objtmp[i][4]=counts.get(i).getState();
			objtmp[i][5]=counts.get(i).getCount();
		}
		
		ExcelExport.OutExcel(obj, objtmp, filePath);
//		getResponse().sendRedirect(Constant.WEB_URL+"files/export/xtz/site.xls");
//		return result;
		return null;
	}
	
}
