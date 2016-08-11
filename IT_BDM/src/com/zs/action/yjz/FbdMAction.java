package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.FbdAsdl;
import com.zs.entity.FbdMonitoring;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdMAction extends MyBaseAction{
	
	IService ser;
	
	FbdMonitoring m;
	List<FbdMonitoring> ms;
	
	Page page;
	
	String result_m="m";
	String result_succ="succ";
	String result_fail="fail";
	
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public FbdMonitoring getM() {
		return m;
	}
	public void setM(FbdMonitoring m) {
		this.m = m;
	}
	public List<FbdMonitoring> getMs() {
		return ms;
	}
	public void setMs(List<FbdMonitoring> ms) {
		this.ms = ms;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	//------------------------------------------------
	public String queryOfFenyeM() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from FbdMonitoring where MId  = ?";
			String ss[]={id};
			String hql2="from FbdMonitoring where MId = '"+id+"'";
			ms=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from FbdMonitoring";
			String ss[]={};
			String hql2="from FbdMonitoring";
			ms=ser.query(hql, ss, hql2, page, ser);
		}
		//带上分部区部分拨点信息
		for (int i = 0; i < ms.size(); i++) {
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, ms.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			ms.get(i).setFbd(fbd);
		}
		ser.receiveStructure(getRequest());
		return result_m;
	}
	
	public String deleteM() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			m=(FbdMonitoring) ser.get(FbdMonitoring.class, id);
			ser.delete(m);
		}
		m=null;
		return result_succ;
	}
	
	public String updateM() throws Exception {
		if(m!=null && m.getMId()!=null && !"".equals(m.getMId().trim())){
			ser.update(m);
		}
		getRequest().setAttribute("m", m);
		m=null;
		return result_succ;
	}
	
	public String addM() throws Exception {
		if(m!=null){
			m.setMId("m"+NameOfDate.getNum());
			ser.save(m);
		}
		getRequest().setAttribute("m", m);
		m=null;
		return result_succ;
	}
	
	
	
}
