package com.zs.action.xtz.count;

import java.io.UnsupportedEncodingException;
import java.util.List;
import com.zs.action.MyBaseAction;
import com.zs.entity.XtDevelopEfficiency;
import com.zs.entity.XtProject;
import com.zs.service.IService;
import com.zs.service.iXtProjectCountService;
import com.zs.tools.Page;

public class ProjectCountAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	iXtProjectCountService proSer;
	Page page;
	XtDevelopEfficiency de;
	List<XtDevelopEfficiency> des;
	String result="projectCount";
	
	String id;
	String cz;
	String year;
	
	
	
	public XtDevelopEfficiency getDe() {
		return de;
	}
	public void setDe(XtDevelopEfficiency de) {
		this.de = de;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public iXtProjectCountService getProSer() {
		return proSer;
	}
	public void setProSer(iXtProjectCountService proSer) {
		this.proSer = proSer;
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
		cz=null;
		year=null;
		de=null;
		des=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if (year!=null) {
			year=year.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		if (page==null) {
			page=new Page(1, 0, 10);
		}
		String hqltmp="from XtDevelopEfficiency order by EMonth desc";
		List destmp=ser.query(hqltmp, null, hqltmp, page, ser);
		if(destmp==null || destmp.size()==0){
			//第一次生成数据
			proSer.createTableAll();
		}
		String hql="from XtDevelopEfficiency where 1=1 ";
		if (id!=null) {
			hql=hql+"and EId like '%"+id+"%' ";
		}
		hql=hql+"order by EMonth desc";
		des=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		if (page!=null) {
			page.setPageOn(1);
		}else {
			page=new Page(1, 0, 10);
		}
		String hql="from XtDevelopEfficiency order by EMonth desc";
		des=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		clearSpace();
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		return gotoQuery();
	}	

}
