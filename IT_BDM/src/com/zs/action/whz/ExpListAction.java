package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.WhExpressList;
import com.zs.entity.WhMassageReceive;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.XtPdaLoss;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iXtPdaLossService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ExpListAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	Page page;
	
	WhExpressList el;
	List<WhExpressList> els;
	String result="exp";
	String id;
	String dates;
	String datee;
	
	
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
	public WhExpressList getEl() {
		return el;
	}
	public void setEl(WhExpressList el) {
		this.el = el;
	}
	public List<WhExpressList> getEls() {
		return els;
	}
	public void setEls(List<WhExpressList> els) {
		this.els = els;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	//------------------------------------------------
	private void clearOptions() {
		id=null;
		el=null;
		els=null;
		dates=null;
		datee=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理，默认不清理
		String idlike=getRequest().getParameter("idlike");//用于判断是否清理page，yes模糊，no精确，默认模糊
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			page=new Page(1, 0, 5);
		}
		clearSpace();
		String hql="from WhExpressList where 1=1";
		if (id!=null && idlike!=null && idlike.equals("no")) {
			hql=hql+" and EId='"+id+"'";
		}else if (id!=null) {
			hql=hql+" and EId like '%"+id+"%'";
		}
		if (dates!=null && !dates.equals("")) {
			hql=hql+" and EStartDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.equals("")) {
			hql=hql+" and EStartDate <= '"+datee+"'";
		}
		hql=hql+" order by EStartDate desc";
		els=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhExpressList order by EStartDate desc";
		els=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			el= (WhExpressList) ser.get(WhExpressList.class, id);
			if (el!=null) {
				ser.delete(el);
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(el!=null){
			ser.update(el);
			getRequest().setAttribute("el", el);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(el!=null){
			ser.save(el);
			getRequest().setAttribute("el", el);
		}
		return gotoQuery();
	}	
	
	
}
