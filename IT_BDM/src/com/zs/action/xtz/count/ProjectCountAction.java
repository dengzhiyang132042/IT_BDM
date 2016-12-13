package com.zs.action.xtz.count;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import sun.security.krb5.internal.PAData;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtDevelopEfficiency;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ProjectCountAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	Page page;
	List<XtDevelopEfficiency> des;
	String result="projectCount";
	
	String id;
	String year;
	
	
	
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<XtDevelopEfficiency> getDes() {
		return des;
	}
	public void setDes(List<XtDevelopEfficiency> des) {
		this.des = des;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		year=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
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
			String hql="from XtDevelopEfficiency where EId like '%"+id+"%'";
			hql=hql+" order by EMonth desc";
			des=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtDevelopEfficiency order by EMonth desc";
			String ss[]={};
			String hql2="from XtDevelopEfficiency order by EMonth desc";
			des=ser.query(hql, ss, hql2, page, ser);
			if(des==null){
				//第一次生成数据
			}
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtDevelopEfficiency order by EMonth desc";
		String ss[]={};
		String hql2="from XtDevelopEfficiency order by EMonth desc";
		des=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		return gotoQuery();
	}
	
	public String update() throws Exception {
		return gotoQuery();
	}
	
	public String add() throws Exception {
		return gotoQuery();
	}	

}
