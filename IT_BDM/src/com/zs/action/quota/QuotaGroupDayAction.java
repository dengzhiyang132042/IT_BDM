/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.Page;

public class QuotaGroupDayAction extends MyBaseAction implements IMyBaseAction{
	private QuotaMan qm ;
	private List<QuotaMan> qms;
	private IService ser;
	private Page page;
	
	String result = "quotaMan";
	String cz;
	String id;
	String name;
	String dates;
	String datee;
	
	public QuotaMan getQm() {
		return qm;
	}
	public void setQm(QuotaMan qm) {
		this.qm = qm;
	}
	public List<QuotaMan> getQms() {
		return qms;
	}
	public void setQms(List<QuotaMan> qms) {
		this.qms = qms;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		qm=null;
		qms=null;
		dates=null;
		datee=null;
		name=null;
		id=null;
		cz=null;
		if (page==null) {
			page=new Page(1, 0, 15);
		}else {
			page.setPageOn(1);
		}
	}
	
	public void clearSpace(){
		if(name!=null){
			name=name.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
		if(id!=null){
			id=id.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql = "from QuotaMan where 1=1 ";
		if(id!=null&&!id.equals("")){
			hql=hql+" and qmId like '%"+id+"%' ";
		}
		if(name!=null&&!name.equals("")){
			hql=hql+" and UNum in (select UNum from Users where UName like '%"+name+"%') ";
		}
		if (dates!=null && !dates.trim().equals("")) {
			hql=hql+" and qmDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.trim().equals("")) {
			hql=hql+" and qmDate <= '"+datee+"'";
		}
		hql=hql+" order by qmDate desc";
		qms = ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < qms.size(); i++) {
			Users us = (Users) ser.get(Users.class,qms.get(i).getUNum() );
			qms.get(i).setuName(us.getUName());
			qms.get(i).setCount(qms.get(i).getQmTypeZc()+qms.get(i).getQmTypeWh()+qms.get(i).getQmTypeZx());
			if(qms.get(i).getCount()>0){
				qms.get(i).setProductivity(1);
			}
		}
		return result;
	}
	
	public String add() throws Exception {
		
		return gotoQuery();
	}

	public String update() throws Exception {
		
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		
		return gotoQuery();
	}
}
