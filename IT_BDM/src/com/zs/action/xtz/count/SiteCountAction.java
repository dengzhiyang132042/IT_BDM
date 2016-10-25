package com.zs.action.xtz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.entity.XtSite;
import com.zs.entity.XtSiteCount;

import com.zs.service.IService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.Page;

public class SiteCountAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	iXtZmNumberService iSer;
	
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
			filtrate="D";
		}
	}
	
	
	/**
	 * 组装count
	 */
	private void initCount(Date dateStart,Date dateEnd,List counts) {
		//组装一个DaCount
		DaCount count=new DaCount();
		count.setsTime(new Timestamp(dateStart.getTime()));
		count.seteTime(new Timestamp(dateEnd.getTime()));
		//获取在该时间范围内故障报修总量
		List list2=ser.find("from DaDemand where DTime>=? and DTime<=?", new Timestamp[]{count.getsTime(),count.geteTime()});
		if (list2.size()!=0) {//如果为0就不要了
			count.setDaAll(list2.size());
			//获取在该时间范围内故障报修完成的量
			List list3=ser.find("from DaDemand where DTime>=? and DTime<=? and DId in (select DId from DaPerform where PState='已完成')", new Timestamp[]{count.getsTime(),count.geteTime()});
			count.setDaSuc(list3.size());
			//计算完成率
			if (list2.size()==0) {
				count.setRatioSuc(0);
			}else {
				double ratio=(double)list3.size()/(double)list2.size()*100;
				count.setRatioSuc((int)ratio);
			}
			//设置DemPer
			List list4=ser.initDemPers(list2);
			count.setDemPer(list4);
			counts.add(count);
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
				/*
				logger.debug(date1.toLocaleString()+" "+date2.toLocaleString());
				logger.debug(d1.getDTime().toLocaleString()+" "+d2.getDTime().toLocaleString());
				logger.debug(d1.getDTime().getDate());
				*/
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getSStartDate().getYear(), d1.getSStartDate().getMonth(), d1.getSStartDate().getDate());
				ca2.set(d2.getSStartDate().getYear(), d2.getSStartDate().getMonth(), d2.getSStartDate().getDate());
				logger.debug(ca1.get(Calendar.WEEK_OF_YEAR));
				logger.debug(ca2.get(Calendar.WEEK_OF_YEAR));
				
				int weeknum = ca1.get(Calendar.WEEK_OF_YEAR)-ca1.get(Calendar.WEEK_OF_YEAR);
				for (int i = 0; i <=weeknum; i++) {
					Date date = new Date(d2.getSStartDate().getYear(),d2.getSStartDate().getMonth(),d2.getSStartDate().getDate()+(7*i));
					Map<String, Date> map = iSer.weekDate(date);
					
				}
			}else if (dt.equals("M")) {
				//获取相差月数
				long ms=(d1.getSStartDate().getYear()-d2.getSStartDate().getYear())*12+(d1.getSStartDate().getMonth()-d2.getSStartDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d2.getSStartDate().getYear(), d2.getSStartDate().getMonth()+i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d2.getSStartDate().getYear(), 1+d2.getSStartDate().getMonth(), 0);
					Date dateTmp=ca.getTime();
					//logger.debug(dateTmp.toLocaleString()+"  "+d2.getDTime().getYear()+"  "+d2.getDTime().getMonth());
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth()+i, dateTmp.getDate(),23,59,59);
					initCount(dateStart, dateEnd, counts);
				}
			}else if (dt.equals("Y")) {
				//获得相差年数
				long ys=d1.getSStartDate().getYear()-d2.getSStartDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d2.getSStartDate().getYear()+i, 0, 1,0,0,0);
					Date dateEnd=new Date(d2.getSStartDate().getYear()+i, 11, 31,23,59,59);
					initCount(dateStart, dateEnd, counts);
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
