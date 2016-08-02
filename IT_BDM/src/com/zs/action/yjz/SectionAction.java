package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.CompanySection4;
import com.zs.entity.CompanySection5;
import com.zs.entity.CompanySection6;
import com.zs.entity.CompanySection7;
import com.zs.entity.CompanySection8;
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

	String result1="success";
	String result2="qubu";
	String result3="fenbu";
	String result4="add";
	String result5="succ";
	String result6="fail";
	String result7="fenbodian";
	
	
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
	
	
	/*2016年7月30日14:32:04
	 * 张顺
	 * 主要是带数据过去
	 * */
	public String gotoAdd() throws UnsupportedEncodingException {
		ser.receiveStructure(getRequest());
		return result4;
	}
	
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
	//-------------------------------------------------------------------
	public String deleteQb() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			qb=(SectionQubu) ser.get(SectionQubu.class, id);
			List<SectionFenbu> fbsList=ser.find("from SectionFenbu where qbId=?",new String[]{qb.getQbId()});
			for (int j = 0; j < fbsList.size(); j++) {
				List<SectionFenbodian> fbdsList=ser.find("from SectionFenbodian where fbId=?", new String[]{fbsList.get(j).getFbId()});
				for (int k = 0; k < fbdsList.size(); k++) {
					ser.delete(fbdsList.get(k));
				}
				ser.delete(fbsList.get(j));
			}
			ser.delete(qb);
		}
		qb=null;
		return result5;
	}
	
	public String updateQb() throws Exception {
		if(qb!=null && qb.getQbId()!=null && !"".equals(qb.getQbId().trim())){
			ser.update(qb);
		}
		qb=null;
		return result5;
	}
	
	public String addQb() throws Exception {
		if(qb!=null){
			qb.setQbId("qb"+NameOfDate.getNum());
			ser.save(qb);
		}
		qb=null;
		return result5;
	}
	
	public String queryOfFenyeQb() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (qb==null) {
			qb=new SectionQubu("");
		}
		if (id!=null) {
			String hql="from SectionQubu where qbId = ?";
			String ss[]={id};
			String hql2="from SectionQubu where qbId = '"+id+"'";
			qbs=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from SectionQubu where qbId like ?";
			String ss[]={"%"+qb.getQbId()+"%"};
			String hql2="from SectionQubu where qbId like '%"+qb.getQbId()+"%'";
			qbs=ser.query(hql, ss, hql2, page, ser);
		}
		return result2;
	}
	//---------------------------------------------------------------------------------------
	public String deleteFb() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			fb=(SectionFenbu) ser.get(SectionFenbu.class, id);
			List<SectionFenbodian> fbdsList=ser.find("from SectionFenbodian where fbId=?", new String[]{fb.getFbId()});
			for (int k = 0; k < fbdsList.size(); k++) {
				ser.delete(fbdsList.get(k));
			}
			ser.delete(fb);
		}
		fb=null;
		return result5;
	}
	
	public String updateFb() throws Exception {
		String structure=getRequest().getParameter("structure");
		if(fb!=null && fb.getFbId()!=null && !"".equals(fb.getFbId().trim())){
			fb.setQbId(structure);
			ser.update(fb);
		}
		fb=null;
		return result5;
	}
	
	public String addFb() throws Exception {
		String structure=getRequest().getParameter("structure");
		if(fb!=null){
			fb.setFbId("fb"+NameOfDate.getNum());
			fb.setQbId(structure);
			ser.save(fb);
		}
		fb=null;
		return result5;
	}
	public String queryOfFenyeFb() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (fb==null) {
			fb=new SectionFenbu("");
		}
		if (id!=null) {
			String hql="from SectionFenbu where fbId  = ?";
			String ss[]={id};
			String hql2="from SectionFenbu where fbId = '"+id+"'";
			fbs=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from SectionFenbu";
			String ss[]={};
			String hql2="from SectionFenbu";
			fbs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result3;
	}
	//--------------------------------------------------------------------
	
	//---------------------------------------------------------------------------------------
	public String deleteFbd() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, id);
			ser.delete(fbd);
		}
		fbd=null;
		return result5;
	}
	
	public String updateFbd() throws Exception {
		String structure=getRequest().getParameter("structure");
		if(fbd!=null && fbd.getFbdId()!=null && !"".equals(fbd.getFbdId().trim())){
			fbd.setFbId(structure);
			ser.update(fbd);
		}
		fbd=null;
		return result5;
	}
	
	public String addFbd() throws Exception {
		String structure=getRequest().getParameter("structure");
		if(fbd!=null){
			fbd.setFbdId("fbd"+NameOfDate.getNum());
			fbd.setFbId(structure);
			ser.save(fbd);
		}
		fbd=null;
		return result5;
	}
	public String queryOfFenyeFbd() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (fbd==null) {
			fbd=new SectionFenbodian("");
		}
		if (id!=null) {
			String hql="from SectionFenbodian where fbdId  = ?";
			String ss[]={id};
			String hql2="from SectionFenbodian where fbdId = '"+id+"'";
			fbds=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result7;
	}
	//--------------------------------------------------------------------
	
}

