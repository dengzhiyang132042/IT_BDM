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
import com.zs.entity.XtBranches;
import com.zs.entity.custom.XtBranchesCount;

import com.zs.service.IService;
import com.zs.tools.Page;

public class BranchesAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	
	List<XtBranchesCount> counts;
	
	String filtrate;
	
	String result="branchesCount";
	String result_succ="succ";
	String result_fail="fail";
	
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
	private void initCount(Date dateStart,Date dateEnd,List counts,int num) {
		//获取在该时间范围内二级站点资料的所有数据
		List list2=ser.find("from XtBranches where BDate>=? and BDate<=? ", new Object[]{new Timestamp(dateStart.getTime()),new Timestamp(dateEnd.getTime())});
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
		String str="from XtBranches order by BDate desc";
		List list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d1=(XtBranches) list.get(0);//尾巴
		}
		str="from XtBranches order by BDate asc";
		list=ser.query(str, null, str, page, ser);
		if (list.size()>0) {
			d2=(XtBranches) list.get(0);//头
		}
		if (d1!=null && d2!=null) {
			if (dt.equals("W")) {
				Calendar ca1 = Calendar.getInstance();
				Calendar ca2 = Calendar.getInstance();
				ca1.set(d1.getBDate().getYear()+1900, d1.getBDate().getMonth()+1, d1.getBDate().getDate());
				ca2.set(d2.getBDate().getYear()+1900, d2.getBDate().getMonth()+1, d2.getBDate().getDate());
				int weekyear = d1.getBDate().getYear()-d2.getBDate().getYear();
				int weeknum =weekyear*52 + ca1.get(Calendar.WEEK_OF_YEAR)-ca2.get(Calendar.WEEK_OF_YEAR);
				for (int i = 0; i <=weeknum; i++) {
					Date date = new Date(d2.getBDate().getYear(),d2.getBDate().getMonth(),d2.getBDate().getDate()+(7*i));
					Date dateStart= ser.weekDate(date).get(ser.KEY_DATE_START);
					Date dateEnd=ser.weekDate(date).get(ser.KEY_DATE_END);
					Calendar ca3 = Calendar.getInstance();
					ca3.setTime(dateStart);
					int week = ca3.get(ca3.WEEK_OF_YEAR);
					initCount(dateStart, dateEnd, counts,week);
				}
			}else if (dt.equals("M")) {
				//获取相差月数
				long ms=(d1.getBDate().getYear()-d2.getBDate().getYear())*12+(d1.getBDate().getMonth()-d2.getBDate().getMonth());
				//logger.debug(ms);
				for (int i = 0; i <= ms; i++) {
					Date dateStart=new Date(d2.getBDate().getYear(), d2.getBDate().getMonth()+i, 1,0,0,0);
					Calendar ca = Calendar.getInstance();    
					ca.set(1900+d2.getBDate().getYear(), 1+d2.getBDate().getMonth()+i, 0);
					Date dateTmp=ca.getTime();
					Date dateEnd=new Date(dateTmp.getYear(), dateTmp.getMonth(), dateTmp.getDate(),23,59,59);
//					logger.debug(dateEnd.toLocaleString()+"  "+dateStart.getYear()+"  "+dateStart.getMonth()+"  "+i);
					int m=dateStart.getMonth();
					initCount(dateStart, dateEnd, counts,m+1);
				}
			}else if (dt.equals("Y")) {
				//获得相差年数
				long ys=d1.getBDate().getYear()-d2.getBDate().getYear();
				for (int i = 0; i <= ys; i++) {
					Date dateStart=new Date(d2.getBDate().getYear()+i, 0, 1,0,0,0);
					Date dateEnd=new Date(d2.getBDate().getYear()+i, 11, 31,23,59,59);
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
	

}
