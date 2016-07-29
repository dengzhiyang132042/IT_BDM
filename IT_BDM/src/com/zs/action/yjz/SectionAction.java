package com.zs.action.yjz;

import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class SectionAction extends MyBaseAction{
	IService ser;
	List<SectionQubu> qbs; 
	List<SectionFenbu> fbs; 
	List<SectionFenbodian> fbds; 
	
	SectionQubu qb;
	SectionFenbu fb;
	SectionFenbodian fbd;
	
	Page page;
	
	
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<SectionQubu> getQbs() {
		return qbs;
	}
	public void setQbs(List<SectionQubu> qbs) {
		this.qbs = qbs;
	}
	public List<SectionFenbu> getFbs() {
		return fbs;
	}
	public void setFbs(List<SectionFenbu> fbs) {
		this.fbs = fbs;
	}
	public List<SectionFenbodian> getFbds() {
		return fbds;
	}
	public void setFbds(List<SectionFenbodian> fbds) {
		this.fbds = fbds;
	}
	public SectionQubu getQb() {
		return qb;
	}
	public void setQb(SectionQubu qb) {
		this.qb = qb;
	}
	public SectionFenbu getFb() {
		return fb;
	}
	public void setFb(SectionFenbu fb) {
		this.fb = fb;
	}
	public SectionFenbodian getFbd() {
		return fbd;
	}
	public void setFbd(SectionFenbodian fbd) {
		this.fbd = fbd;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	String result1="success";
	String result2="qubu";
	
	
	/*2016年7月29日15:35:14
	 * 张顺
	 * 该方法是测试用方法
	 * */
	public String queryAll() throws Exception {
		StringBuffer hql=new StringBuffer("from Timeline");
		String ss[]={};
		List list=ser.find(hql.toString(), ss);
		return result2;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			qb=(SectionQubu) ser.get(SectionQubu.class, id);
			ser.delete(qb);
		}
		qb=null;
		return queryOfFenye();
	}
	
	public String update() throws Exception {
		if(qb!=null && qb.getQbId()!=null && !"".equals(qb.getQbId().trim())){
			ser.update(qb);
		}
		qb=null;
		return queryOfFenye();
	}
	
	public String add() throws Exception {
		if(qb!=null){
			qb.setQbId("qb"+NameOfDate.getNum());
			ser.save(qb);
		}
		qb=null;
		return queryOfFenye();
	}
	
	public String queryOfFenye() {
		
		String hql="from SectionQubu where qbId like ?"; 
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (qb==null) {
			qb=new SectionQubu("");
		}
		List list=ser.find(hql,new String[]{"%"+qb.getQbId()+"%"});
		if (0==list.size()%page.getSize()) {
			page.setPageMax(list.size()/page.getSize());
		}else {
			page.setPageMax(list.size()/page.getSize()+1);
		}
//		System.out.println(list.size()+"(list)   "+page.getPageMax()+"(max)   "+page.getPageOn()+"(On)");
		String hql2="from SectionQubu where qbId like '%"+qb.getQbId()+"%'";
		qbs=ser.findOfFenYe(hql2, (page.getPageOn()-1)*page.getSize(), page.getSize());
		return result2;
	}
}

