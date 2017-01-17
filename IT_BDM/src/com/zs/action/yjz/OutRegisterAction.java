package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.XtBranches;
import com.zs.entity.YjOut;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class OutRegisterAction extends MyBaseAction implements IMyBaseAction{
	
	IService ser;
	YjOut o;
	List<YjOut> outs;
	
	Page page;
	
	String result="outRegister";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String cz;
	String fbdName;
	String itman;
	String area;
	String dates;
	String datee;
	
	private Logger logger=Logger.getLogger(OutRegisterAction.class);
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public YjOut getO() {
		return o;
	}
	public void setO(YjOut o) {
		this.o = o;
	}
	public List<YjOut> getOuts() {
		return outs;
	}
	public void setOuts(List<YjOut> outs) {
		this.outs = outs;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getFbdName() {
		return fbdName;
	}
	public void setFbdName(String fbdName) {
		this.fbdName = fbdName;
	}
	public String getItman() {
		return itman;
	}
	public void setItman(String itman) {
		this.itman = itman;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
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
	
	//------------------------------------------------
	public void clearOptions() {
		id=null;
		cz=null;
		outs=null;
		o=null;
		fbdName=null;
		area=null;
		dates=null;
		datee=null;
		itman=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(fbdName!=null){
			fbdName=fbdName.trim();
		}
		if(area!=null){
			area=area.trim();
		}
		if(itman!=null){
			itman=itman.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
	}
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from YjOut order by ODjrq desc";
		String ss[]={};
		String hql2="from YjOut order by ODjrq desc";
		outs=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		if (id!=null) {
			String hql2="from YjOut where OId like '%"+id+"%'";
			if(fbdName!=null){
				hql2=hql2+" and OFbd like '%"+fbdName+"%'";
			}
			if(itman!=null){
				hql2=hql2+" and OGjr like '%"+itman+"%'";
			}
			if(area!=null){
				hql2=hql2+" and OArea like '%"+area+"%'";
			}
			if(dates!=null&&!dates.trim().equals("")){
				hql2=hql2+" and ODjrq >= '"+dates+"'";
			}
			if(datee!=null&&!datee.trim().equals("")){
				hql2=hql2+" and ODjrq <= '"+datee+"'";
			}
			hql2 = hql2+" order by ODjrq desc";
			outs=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from YjOut order by ODjrq desc";
			String ss[]={};
			String hql2="from YjOut order by ODjrq desc";
			outs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			o=(YjOut) ser.get(YjOut.class, id);
			ser.delete(o);
		}
		o=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(o.getOId()!=null&&o!=null){
			ser.update(o);
			getRequest().setAttribute("o",o);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(o!=null){
			o.setOId("o"+NameOfDate.getNum());
			ser.save(o);
			getRequest().setAttribute("o",o);
		}
		return gotoQuery();
	}
	
	
}
