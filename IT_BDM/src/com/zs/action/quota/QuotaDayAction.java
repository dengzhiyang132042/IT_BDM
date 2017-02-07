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

public class QuotaDayAction extends MyBaseAction implements IMyBaseAction{
	private QuotaMan qm ;
	private List<QuotaMan> qms;
	private IService ser;
	private Page page;
	
	String result = "quotaMan";
	String cz;
	String id;
	
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
	
	
	public void clearOptions() {
		qm=null;
		qms=null;
		id=null;
		cz=null;
	}
	
	public void clearSpace(){
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
		String hql = "from QuotaMan";
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
