package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaDemPer;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class DaManagerAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	
	String result="manager";
	String result_succ="succ";
	String result_fail="fail";

	DaDemand d;
	DaPerform p;
	List demPers;
	
	String id;
	String dates;
	String datee;
	String type;
	
	Logger logger=Logger.getLogger(DaManagerAction.class);
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public DaDemand getD() {
		return d;
	}
	public void setD(DaDemand d) {
		this.d = d;
	}
	public DaPerform getP() {
		return p;
	}
	public void setP(DaPerform p) {
		this.p = p;
	}
	public List<DaDemPer> getDemPers() {
		return demPers;
	}
	public void setDemPers(List<DaDemPer> demPers) {
		this.demPers = demPers;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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

	//----------------------------------------------------------
	public void clearOptions() {
		id=null;
		dates=null;
		datee=null;
		type=null;
	}
	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
		if (type!=null) {
			type=type.trim();
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
		
		
		if(id!=null){
			/*
			logger.debug(id);
			logger.debug(type);
			logger.debug(dates);
			logger.debug(datee);
			*/
			String hql="from DaDemand where DId like '%"+id+"%'";
			if (type!=null && !type.equals("")) {
				hql=hql+" and DType = '"+type+"'";
			}
			if(dates!=null && !dates.equals("")){
				hql=hql+" and DTime >= '"+dates+"'";
			}
			if(datee!=null && !datee.equals("")){
				hql=hql+" and DTime <= '"+datee+"'";
			}
			hql=hql+" order by DTime desc";
			List dems=ser.query(hql, null, hql, page, ser);
			demPers=ser.initDemPers(dems);
		}else {
			String hql="from DaDemand order by DTime desc";
			String ss[]={};
			String hql2="from DaDemand order by DTime desc";
			List dems=ser.query(hql, ss, hql2, page, ser);
			demPers=ser.initDemPers(dems);
		}
		ser.bringUsers(getRequest());
		JSONArray json=JSONArray.fromObject(demPers);
		getRequest().setAttribute("json", json);
		return result;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from DaDemand order by DTime desc";
		String ss[]={};
		String hql2="from DaDemand order by DTime desc";
		List dems=ser.query(hql, ss, hql2, page, ser);
		demPers=ser.initDemPers(dems);
		ser.bringUsers(getRequest());
		JSONArray json=JSONArray.fromObject(demPers);
		getRequest().setAttribute("json", json);
		return result;
	}
    
	public String add() throws Exception {
		if (d!=null) {
			d.setDId("d"+NameOfDate.getNum());
			d.setDTime(new Timestamp(new Date().getTime()));
			ser.save(d);
			p.setPId("p"+NameOfDate.getNum());
			p.setDId(d.getDId());
			p.setPTime(new Timestamp(new Date().getTime()));
			p.setPState("进行中");
			ser.save(p);
		}
		return gotoQuery();
	}

	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	public String update() throws Exception {
		if (d!=null && !"".equals(d.getDId())) {
			d=(DaDemand) ser.get(DaDemand.class, d.getDId());
			//找到当前执行表数据
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if (templi.size()>0) {
				DaPerform tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setUNumNext(p.getUNumNext());
				tmpper.setPState("转发");
				ser.update(tmpper);
				
				DaPerform daPerform=new DaPerform();
				daPerform.setPId("p"+NameOfDate.getNum());
				daPerform.setDId(d.getDId());
				daPerform.setUNum(p.getUNumNext());
				Date date1=new Date();
				Date date2=new Date(date1.getYear(), date1.getMonth(), date1.getDate(), date1.getHours(), date1.getMinutes(), date1.getSeconds()+1);
				daPerform.setPTime(new Timestamp(date2.getTime()));
				daPerform.setPState("进行中");
				ser.save(daPerform);
				
			}
		}
		
		return gotoQuery();
	}

}
