/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection;
import com.zs.entity.QuotaGroup;
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
	String name;
	String dates;
	String datee;
	String option;
	String qmid;
	
	
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
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getQmid() {
		return qmid;
	}
	public void setQmid(String qmid) {
		this.qmid = qmid;
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
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		option = "detail";
		String str = "";
		if(qmid!=null&&!qmid.equals("")){
			QuotaGroup qg;
			qg = (QuotaGroup) ser.get(QuotaGroup.class,qmid);
			dates=sdf.format(qg.getQgDate());
			datee=sdf.format(qg.getQgDate());
			String cshql = "from CompanySection where csMaster = ?";
			List<CompanySection> cs = ser.find(cshql,new Object[]{ qg.getQgFunctionary()});
			String userhql ="select UNum from Users where csId = ?";
			List list = ser.find(userhql,new Object[]{ cs.get(0).getCsId()});
			for (int i = 0; i < list.size(); i++) {
				if(i==list.size()-1){
					str = str+"'"+list.get(i)+"'";
				}else{
					str = str+"'"+list.get(i)+"'"+",";
				}
			}
		}
		String hql = "from QuotaMan where 1=1 ";
		if(id!=null&&!id.equals("")){
			hql=hql+" and qmId like '%"+id+"%' ";
		}
		if(qmid!=null&&!qmid.equals("")){
			hql=hql+" and UNum in ("+str+")";
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
		qmid=null;
		dates=null;
		datee=null;
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
