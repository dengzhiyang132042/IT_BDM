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
import com.zs.entity.XtZmNumber;
import com.zs.entity.XtZmNumberCount;
import com.zs.service.IService;
import com.zs.service.iXtZmNumberService;
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
	private void initCount(Date dateStart,Date dateEnd,List counts,int number) {
		//组装一个XtZmNumberCount
		XtZmNumberCount count=new XtZmNumberCount();
		count.setsTime(new Timestamp(dateStart.getTime()));
		count.seteTime(new Timestamp(dateEnd.getTime()));
		//获取在该时间范围内故障报修总量
		String hql="from XtZmNumber where zmServiceDate>='"+count.getsTime()+"' and zmServiceDate<='"+count.geteTime()+"' and zmServiceDate!=null";
//		List<XtZmNumber> list2=ser.query(hql, null, hql, page, ser);
		List<XtZmNumber> list2=ser.find(hql, null);
		if (list2.size()!=0) {//如果为0就不要了
			count.setCount(list2.size());
			
			//这里填装周数、月数、年数这种信息
			count.setNumber(number);
			
			//设置ZmNumbers
			List list4=xtZmNumberSer.initXtZmBumberService(list2);
			count.setZmNumbers(list4);
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
		String str="from XtZmNumber where zmServiceDate!=null order by zmServiceDate desc";
		List list=ser.query(str, null, str, new Page(1, 0, 1), ser);
		if (list.size()>0) {
			d1=(XtZmNumber) list.get(0);//尾巴
		}
		str="from XtZmNumber where zmServiceDate!=null order by zmServiceDate asc";
		list=ser.query(str, null, str, new Page(1, 0, 1), ser);
		if (list.size()>0) {
			d2=(XtZmNumber) list.get(0);//头
		}
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				//获取相差天数
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date1=sdf.parse(d1.getZmServiceDate().toLocaleString());
				Date date2=sdf.parse(d2.getZmServiceDate().toLocaleString());
				long days=(date1.getTime()-date2.getTime())/(1000*3600*24);
				/*
				logger.debug(date1.toLocaleString()+" "+date2.toLocaleString());
				logger.debug(d1.getDTime().toLocaleString()+" "+d2.getDTime().toLocaleString());
				logger.debug(d1.getDTime().getDate());
				*/
				//从第一天开始循环组装数据封装
				for (int i = 0; i <=days; i++) {
					Date dateStart=new Date(d2.getZmServiceDate().getYear(), d2.getZmServiceDate().getMonth(), d2.getZmServiceDate().getDate()+i,0,0,0);
					Date dateEnd=new Date(d2.getZmServiceDate().getYear(), d2.getZmServiceDate().getMonth(), d2.getZmServiceDate().getDate()+i,23, 59, 59);
					initCount(dateStart, dateEnd, counts,(int)days+1);
				}
			}else if (dt.equals("M")) {
				//获取相差月数
				long ms=(d1.getZmServiceDate().getYear()-d2.getZmServiceDate().getYear())*12+(d1.getZmServiceDate().getMonth()-d2.getZmServiceDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d2.getZmServiceDate().getYear(), d2.getZmServiceDate().getMonth()+i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d2.getZmServiceDate().getYear(), 1+d2.getZmServiceDate().getMonth()+i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
//					logger.debug(dateEnd.toLocaleString()+"  "+dateStart.getYear()+"  "+dateStart.getMonth()+"  "+i);
					initCount(dateStart, dateEnd, counts,(int)ms+1);
				}
			}else if (dt.equals("Y")) {
				//获得相差年数
				long ys=d1.getZmServiceDate().getYear()-d2.getZmServiceDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d2.getZmServiceDate().getYear()+i, 0, 1,0,0,0);
					Date dateEnd=new Date(d2.getZmServiceDate().getYear()+i, 11, 31,23,59,59);
					initCount(dateStart, dateEnd, counts,(int)ys+1);
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

	
	
}
