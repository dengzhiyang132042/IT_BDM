package com.zs.action.xtz;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmNumberAction extends MyBaseAction{
	IService ser;
	Page page;
	
	Logger logger=Logger.getLogger(ZmNumberAction.class);
	
	XtZmNumber zmn;
	List<XtZmNumber> zmns;
	
	String result="zmn";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String section;
	String men;
	String dates;
	String datee;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getMen() {
		return men;
	}
	public void setMen(String men) {
		this.men = men;
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
	public XtZmNumber getZmn() {
		return zmn;
	}
	public void setZmn(XtZmNumber zmn) {
		this.zmn = zmn;
	}
	public List<XtZmNumber> getZmns() {
		return zmns;
	}
	public void setZmns(List<XtZmNumber> zmns) {
		this.zmns = zmns;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		section=null;
		men=null;
		dates=null;
		datee=null; 
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if (section!=null) {
			section=section.trim();
		}
		if (men!=null) {
			men=men.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		clearSpace();
		if (id!=null) {
			String hql="from XtZmNumber where zmId like '%"+id+"%'";
			if (section!=null && !section.trim().equals("")) {
				hql=hql+" and zmApplyCs like '%"+section+"%'";
			}
			if (men!=null && !men.trim().equals("")) {
				hql=hql+" and zmApplyMaster like '%"+men+"%'";
			}
			if (dates!=null && !dates.trim().equals("")) {
				hql=hql+" and zmApplyDate >= '"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql=hql+" and zmApplyDate <= '"+datee+"'";
			}
			hql=hql+" order by zmServiceDate desc"; 
			zmns=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtZmNumber order by zmServiceDate desc";
			String ss[]={};
			String hql2="from XtZmNumber order by zmServiceDate desc";
			zmns=ser.query(hql, ss, hql2, page, ser);
		}
		/*老版tree方法——已不用
		//带上通讯录信息
		getRequest().setAttribute("html", ser.fitting1(ser.queryFirst()));
		*/
		//新版——自动补全
		ser.querySection(getRequest());
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtZmNumber order by zmServiceDate desc";
		String ss[]={};
		String hql2="from XtZmNumber order by zmServiceDate desc";
		zmns=ser.query(hql, ss, hql2, page, ser);
		/*老版tree方法——已不用
		//带上通讯录信息
		getRequest().setAttribute("html", ser.fitting1(ser.queryFirst()));
		*/
		//新版——自动补全
		ser.querySection(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			zmn=(XtZmNumber) ser.get(XtZmNumber.class, id);
			ser.delete(zmn);
		}
		zmn=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(zmn!=null && zmn.getZmId()!=null && !"".equals(zmn.getZmId().trim())){
			XtZmNumber number=(XtZmNumber) ser.get(XtZmNumber.class, zmn.getZmId());
			zmn.setZmApplyDate(number.getZmApplyDate());
			zmn.setZmServiceDate(number.getZmServiceDate());
			zmn.setZmServiceWeek(number.getZmServiceWeek());
			ser.update(zmn);
			getRequest().setAttribute("zmn", zmn);
		}
		zmn=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(zmn!=null){
			zmn.setZmId("zm"+NameOfDate.getNum());

			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			zmn.setZmApplyDate(new Timestamp(date.getTime()));
			zmn.setZmServiceDate(new Timestamp(date.getTime()));
			zmn.setZmServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			Users user=(Users) getSession().getAttribute("user");
			if (user!=null) {
				zmn.setZmServiceMaster(user.getUName());
			}
			ser.save(zmn);
			getRequest().setAttribute("zmn", zmn);
		}
		zmn=null;
		return gotoQuery();
	}	
	
	public String test() throws IOException {
		
//		String str=ser.querySection();
//		System.out.println("【str】"+str);
//		getResponse().getWriter().println(str);
		
		return null;
	}
	
}
 