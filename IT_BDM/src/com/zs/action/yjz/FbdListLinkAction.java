package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.CompanySection4;
import com.zs.entity.CompanySection5;
import com.zs.entity.CompanySection6;
import com.zs.entity.CompanySection7;
import com.zs.entity.CompanySection8;
import com.zs.entity.FbdComputer;
import com.zs.entity.FbdListLink;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdListLinkAction extends MyBaseAction{

	IService ser;
	Page page;
	
	FbdListLink ll;
	List<FbdListLink> lls;
	
	String result_ll="ll";
	String result_succ="succ";
	String result_fail="fail";
	
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
	public FbdListLink getLl() {
		return ll;
	}
	public void setLl(FbdListLink ll) {
		this.ll = ll;
	}
	public List<FbdListLink> getLls() {
		return lls;
	}
	public void setLls(List<FbdListLink> lls) {
		this.lls = lls;
	}
	
	//------------------------------------------------
	public String queryOfFenyeLL() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from FbdListLink where llId  = ?";
			String ss[]={id};
			String hql2="from FbdListLink where llId = '"+id+"'";
			lls=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from FbdListLink";
			String ss[]={};
			String hql2="from FbdListLink";
			lls=ser.query(hql, ss, hql2, page, ser);
		}
		for (int i = 0; i < lls.size(); i++) {
			//带上分部区部分拨点信息
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, lls.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			lls.get(i).setFbd(fbd);
			//带上硬件专员姓名
			lls.get(i).setCsMaster(ser.idToMaster(lls.get(i).getCsId()));
		}
		ser.receiveStructure(getRequest());
		return result_ll;
	}
	
	public String deleteLL() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			ll=(FbdListLink) ser.get(FbdListLink.class, id);
			ser.delete(ll);
		}
		ll=null;
		return result_succ;
	}
	
	public String updateLL() throws Exception {
		if(ll!=null && ll.getLlId()!=null && !"".equals(ll.getLlId().trim())){
			ser.update(ll);
		}
		ll=null;
		return result_succ;
	}
	
	public String addLL() throws Exception {
		if(ll!=null){
			ll.setLlId("ll"+NameOfDate.getNum());
			ser.save(ll);
		}
		ll=null;
		return result_succ;
	}
	
	
	
}
