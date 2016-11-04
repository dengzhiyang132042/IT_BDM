package com.zs.action.xtz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.XtSite;
import com.zs.entity.XtSiteCount;

import com.zs.service.IService;
import com.zs.tools.Page;

public class SiteCountAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	Page page;
	
	List<XtSiteCount> counts;
	
	String filtrate;
	
	String result="siteCount";
	String result_succ="succ";
	String result_fail="fail";
	
	Logger logger=Logger.getLogger(SiteCountAction.class);
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
	public List<XtSiteCount> getCounts() {
		return counts;
	}
	public void setCounts(List<XtSiteCount> counts) {
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
		//组装一个XtSiteCount
		List list5 = ser.find("select SMaintainType from XtSite where SStartDate>=? and SStartDate<=? group by SMaintainType", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
		if(list5!=null&&list5.size()>0){
//			System.out.println("----list5.size---->>"+list5.size());
			for(int i = 0 ;i < list5.size(); i++){
//				System.out.println("----list5---->>"+list5.get(i));
				//获取在该时间范围内站点资料的所有数据
				List list2=ser.find("from XtSite where SStartDate>=? and SStartDate<=? and SMaintainType =?", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime()),list5.get(i).toString()});
				if (list2.size()!=0) {//如果为0就不要了
					XtSiteCount count = new XtSiteCount();
					//这个组装数据有问题类型问题没有解决
					if(i<1){
						count.setsTime(new Timestamp(dateStart.getTime()));
						count.seteTime(new Timestamp(dateEnd.getTime()));
						count.setOrderNum(orderNumber);
						count.setNum(num);
						count.setRows(list5.size());
					}else{
						count.setRows(0);
					}
					count.setType(list5.get(i).toString());
					count.setCount(list2.size());
					counts.add(count);
				}
			}
//			System.out.println("---------------------------");
		}
		
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<XtSiteCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		XtSite d1 = null,d2=null;
		String str="from XtSite order by SStartDate desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(XtSite) list.get(0);//尾巴
		}
		str="from XtSite order by SStartDate asc";
		list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d2=(XtSite) list.get(0);//头
		}
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				//设置序号初始值
				int orderNumber=0;
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getSStartDate().getYear()+1900, d1.getSStartDate().getMonth()+1, d1.getSStartDate().getDate());
				ca2.set(d2.getSStartDate().getYear()+1900, d2.getSStartDate().getMonth()+1, d2.getSStartDate().getDate());
				int weekyear = d1.getSStartDate().getYear()-d2.getSStartDate().getYear();
				int weeknum =weekyear*52 + ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR);
				for (int i = 0; i <= weeknum+1; i++) {
					Date date = new Date(d1.getSStartDate().getYear(),d1.getSStartDate().getMonth(),d1.getSStartDate().getDate()-(7*i));
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
				long ms=(d1.getSStartDate().getYear()-d2.getSStartDate().getYear())*12+(d1.getSStartDate().getMonth()-d2.getSStartDate().getMonth());
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d1.getSStartDate().getYear(), d1.getSStartDate().getMonth()-i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d1.getSStartDate().getYear(), 1+d1.getSStartDate().getMonth()-i, 0);
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
				long ys=d1.getSStartDate().getYear()-d2.getSStartDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d1.getSStartDate().getYear()-i, 0, 1,0,0,0);
					Date dateEnd=new Date(d1.getSStartDate().getYear()-i, 11, 31,23,59,59);
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
		counts=new ArrayList<XtSiteCount>();
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
	

}
