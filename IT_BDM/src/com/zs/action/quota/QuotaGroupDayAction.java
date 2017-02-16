/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.QuotaGroup;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.service.iQuotaService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class QuotaGroupDayAction extends MyBaseAction implements IMyBaseAction{
	String result = "quotaGroup";
	private List<QuotaGroup> qgds;
	private IService ser;
	private iQuotaService quser;
	private Page page;
	String cz;
	String option;
	String dates;
	String datee;
	
	public List<QuotaGroup> getQgds() {
		return qgds;
	}
	public void setQgds(List<QuotaGroup> qgds) {
		this.qgds = qgds;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
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
	public iQuotaService getQuser() {
		return quser;
	}
	public void setQuser(iQuotaService quser) {
		this.quser = quser;
	}
	
	
	public void clearOptions() {
		qgds=null;
		cz=null;
		dates=null;
		datee=null;
		if(option==null){
			option="group";
		}
		if (page==null) {
			page=new Page(1, 0, 12);
		}else {
			page.setPageOn(1);
		}
	}
	
	public void clearSpace(){
	
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		String hql = "from QuotaGroup order by qgDate desc";
		qgds = ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < qgds.size(); i++) {
			if(i%4!=0){
				qgds.get(i).setQgDate(null);
			}
		}
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			//更新数据
			quser.dataUpdate();
		}
		//查询数据并显示
		String hql = "from QuotaGroup where 1=1 ";
		if(dates!=null&&!dates.trim().equals("")){
			hql = hql+" and qgDate >= '"+dates+"' ";
		}
		if(datee!=null&&!datee.trim().equals("")){
			hql = hql+" and qgDate <= '"+datee+"' ";
		}
		hql = hql +" order by qgDate desc";
		qgds = ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < qgds.size(); i++) {
			if(i%4!=0){ 
				qgds.get(i).setQgDate(null);
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
