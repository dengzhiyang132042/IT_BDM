package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.FbdAsdl;
import com.zs.entity.FbdComputer;
import com.zs.entity.FbdMonitoring;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdComputerAction extends MyBaseAction{
	
	IService ser;
	
	FbdComputer c;
	List<FbdComputer> cs;
	
	Page page;
	
	String result_c="c";
	String result_succ="succ";
	String result_fail="fail";
	
	
	
	public IService getSer() {
		return ser;
	}

	public void setSer(IService ser) {
		this.ser = ser;
	}

	public FbdComputer getC() {
		return c;
	}

	public void setC(FbdComputer c) {
		this.c = c;
	}

	public List<FbdComputer> getCs() {
		return cs;
	}

	public void setCs(List<FbdComputer> cs) {
		this.cs = cs;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	//------------------------------------------------
	public String queryOfFenyeC() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from FbdComputer where cId  = ?";
			String ss[]={id};
			String hql2="from FbdComputer where cId = '"+id+"'";
			cs=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from FbdComputer";
			String ss[]={};
			String hql2="from FbdComputer";
			cs=ser.query(hql, ss, hql2, page, ser);
		}
		//带上分部区部分拨点信息
		for (int i = 0; i < cs.size(); i++) {
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, cs.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			cs.get(i).setFbd(fbd);
		}
		ser.receiveStructure(getRequest());
		return result_c;
	}
	
	public String deleteC() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			c=(FbdComputer) ser.get(FbdComputer.class, id);
			ser.delete(c);
		}
		c=null;
		return result_succ;
	}
	
	public String updateC() throws Exception {
		if (c!=null) {
			c.setcId(getRequest().getParameter("c.cId"));
		}
		if(c!=null && c.getcId()!=null && !"".equals(c.getcId().trim())){
			ser.update(c);
		}
		c=null;
		return result_succ;
	}
	
	public String addC() throws Exception {
		if(c!=null){
			c.setcId("c"+NameOfDate.getNum());
			ser.save(c);
		}
		c=null;
		return result_succ;
	}
	
	
	
}
