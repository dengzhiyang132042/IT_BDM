package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
	List<DaDemPer> demPers;
	
	String id;
	String dates;
	String datee;
	
	
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
	}
	
	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (dates!=null) {
			dates=id.trim();
		}
		if (datee!=null) {
			datee=id.trim();
		}
	}
	
	
	
	/**张顺
	 * <br>2016年9月19日10:33:26
	 * <br>完成dempers的组装
	 * @param dems 查询到的需求表集合
	 */
	private void initDemPers(List dems) {
		demPers=new ArrayList<DaDemPer>();
		for (int i = 0; i < dems.size(); i++) {
			DaDemand d=(DaDemand) dems.get(i);
			d.setDTimeString(d.getDTime().toString());
			List pers=ser.find("from DaPerform where DId = ? order by PTime desc", new Object[]{d.getDId()});
			for (int j = 0; j < pers.size(); j++) {
				DaPerform perform=(DaPerform) pers.get(j);
				perform.setPTimeString(perform.getPTime().toString());
				if (perform.getUNum()!=null && !"".equals(perform.getUNum())) {
					Users u1=(Users) ser.get(Users.class, perform.getUNum());
					perform.setUName(u1.getUName());
				}
				if (perform.getUNumNext()!=null && !"".equals(perform.getUNumNext())) {
					Users u2=(Users) ser.get(Users.class, perform.getUNumNext());
					perform.setUNameNext(u2.getUName());
				}
			}
			demPers.add(new DaDemPer(d, pers));
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
			String hql="from DaDemand where DId like '%"+id+"%'";
			if(dates!=null){
				hql=hql+" and DTime >= '"+dates+"'";
			}
			if(datee!=null){
				hql=hql+" and DTime <= '"+datee+"'";
			}
			hql=hql+" order by DTime desc";
			List dems=ser.query(hql, null, hql, page, ser);
			initDemPers(dems);
		}else {
			String hql="from DaDemand order by DTime desc";
			String ss[]={};
			String hql2="from DaDemand order by DTime desc";
			List dems=ser.query(hql, ss, hql2, page, ser);
			initDemPers(dems);
		}
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

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from DaDemand order by DTime desc";
		String ss[]={};
		String hql2="from DaDemand order by DTime desc";
		List dems=ser.query(hql, ss, hql2, page, ser);
		initDemPers(dems);
		ser.bringUsers(getRequest());
		return result;
	}

	

	public String update() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
