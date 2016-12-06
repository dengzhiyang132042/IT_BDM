package com.zs.action.whz;

import java.io.UnsupportedEncodingException;
import java.util.List;
import com.zs.action.MyBaseAction;
import com.zs.entity.WhBqDraw;
import com.zs.service.IService;
import com.zs.tools.Page;

public class BqDrawAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	Page page;
	
	WhBqDraw bd;
	List<WhBqDraw> bds;
	String result="bqDraw";
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
	public WhBqDraw getBd() {
		return bd;
	}
	public void setBd(WhBqDraw bd) {
		this.bd = bd;
	}
	public List<WhBqDraw> getBds() {
		return bds;
	}
	public void setBds(List<WhBqDraw> bds) {
		this.bds = bds;
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
		bd=null;
		bds=null;
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
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		String idlike=getRequest().getParameter("idlike");//用于判断是否清理page，yes模糊，no精确，默认模糊
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			page=new Page(1, 0, 5);
		}
		clearSpace();
		String hql="from WhBqDraw where 1=1";
		if (id!=null && idlike!=null && idlike.equals("no")) {
			hql=hql+" and MId='"+id+"'";
		}else if (id!=null) {
			hql=hql+" and MId like '%"+id+"%'";
		}
		hql=hql+" order by DDate desc";
		bds=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhBqDraw order by DDate desc";
		bds=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			bd= (WhBqDraw) ser.get(WhBqDraw.class, id);
			if (bds!=null) {
				ser.delete(bd);
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(bd!=null){
			ser.update(bd);
			getRequest().setAttribute("bd", bd);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(bd!=null){
			ser.save(bd);
			getRequest().setAttribute("bd", bd);
		}
		return gotoQuery();
	}	
	
	
}
