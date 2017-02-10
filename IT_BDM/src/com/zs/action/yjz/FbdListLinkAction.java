package com.zs.action.yjz;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.CompanySection;
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
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdListLinkAction extends MyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	Page page;
	
	FbdListLink ll;
	List<FbdListLink> lls;
	
	String result_ll="ll";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String cz;
	String fbdName;
	String llName;
	String llState;
	
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFbdName() {
		return fbdName;
	}
	public void setFbdName(String fbdName) {
		this.fbdName = fbdName;
	}
	public String getLlName() {
		return llName;
	}
	public void setLlName(String llName) {
		this.llName = llName;
	}
	public String getLlState() {
		return llState;
	}
	public void setLlState(String llState) {
		this.llState = llState;
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
	private void clearOptions() {
		id=null;
		cz=null;
		fbdName=null;
		llName=null;
		llState=null;
		ll=null;
		lls=null;
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
		if (cz!=null) {
			cz=cz.trim();
		}
		if(fbdName!=null){
			fbdName=fbdName.trim();
		}
		if(llName!=null){
			llName=llName.trim();
		}
		if(llState!=null){
			llState=llState.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from FbdListLink where llValidState = '有效' order by llCreateTime desc";
		lls=ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < lls.size(); i++) {
			if (lls.get(i).getFbdId()!=null) {
				//带上分部区部分拨点信息
				SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, lls.get(i).getFbdId());
				SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
				SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
				fb.setQb(qb);
				fbd.setFb(fb);
				lls.get(i).setFbd(fbd);
			}
		}
		ser.receiveStructure(getRequest());
		return result_ll;
	}
	
	
	public String queryOfFenyeLL() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from FbdListLink where llValidState = '有效' ";
		if (id!=null && !id.equals(""))
			hql=hql+"and llId like '%"+id+"%' ";
		if(fbdName!=null && !fbdName.equals(""))
			hql=hql+"and fbdId in (select fbdId from SectionFenbodian where fbdName like '%"+fbdName+"%') ";
		if(llName!=null && !llName.equals(""))
			hql=hql+"and llName like '%"+llName+"%' ";
		if(llState!=null && !llState.equals(""))
			hql=hql+"and llState like '%"+llState+"%' ";
		hql=hql+" order by llCreateTime desc";
		lls=ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < lls.size(); i++) {
			if (lls.get(i).getFbdId()!=null) {
				//带上分部区部分拨点信息
				SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, lls.get(i).getFbdId());
				SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
				SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
				fb.setQb(qb);
				fbd.setFb(fb);
				lls.get(i).setFbd(fbd);
			}
		}
		ser.receiveStructure(getRequest());
		return result_ll;
	}
	
	public String deleteLL() throws Exception {
		clearSpace();
		if (id!=null) {
			ll=(FbdListLink) ser.get(FbdListLink.class, id);
			ser.delete(ll);
		}
		return gotoQuery();
	}
	
	public String updateLL() throws Exception {
		clearSpace();
		if(ll!=null && ll.getLlId()!=null && !"".equals(ll.getLlId().trim())){
			FbdListLink fll = (FbdListLink) ser.get(FbdListLink.class, ll.getLlId());
			fll.setLlValidState("无效");
			ser.update(fll);
			getRequest().setAttribute("fll", fll);
			
			ll.setLlId("ll"+NameOfDate.getNum());
			ll.setLlCreateTime(new Timestamp(new Date().getTime()));
			ll.setLlType("维护");
			ll.setLlValidState("有效");
			Users us = (Users) getSession().getAttribute("user");
			ll.setUNum(us.getUNum());
			ser.save(ll);
			getRequest().setAttribute("ll", ll);
		}
		return gotoQuery();
	}
	
	public String addLL() throws Exception {
		clearSpace();
		if(ll!=null){
			ll.setLlId("ll"+NameOfDate.getNum());
			ll.setLlCreateTime(new Timestamp(new Date().getTime()));
			ll.setLlType("注册");
			ll.setLlValidState("有效");
			Users us = (Users) getSession().getAttribute("user");
			ll.setUNum(us.getUNum());
			ser.save(ll);
			getRequest().setAttribute("ll", ll);
		}
		return gotoQuery();
	}
	
	
}
