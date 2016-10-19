package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
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
	
	String id;
	String fbdName;
	String llName;
	String llState;
	
	
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
		fbdName=null;
		llName=null;
		llState=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
			fbdName=fbdName.trim();
			llName=llName.trim();
			llState=llState.trim();
			
		}
	}
	
	public String queryOfFenyeLL() throws UnsupportedEncodingException {
		id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		clearSpace();
		if (id!=null) {
			String hql2="from FbdListLink where llId like '%"+id+"%'";
			if(fbdName!=null&&!"".equals(fbdName)){
				hql2="from FbdListLink where fbdId in (select fbdId from SectionFenbodian where fbdName like '%"+fbdName+"%')";
			}
			if(llName!=null&&!"".equals(llName)){
				hql2=hql2+ " and llName like '%"+llName+"%'";
			}
			if(llState!=null&&!"".equals(llState)){
				hql2=hql2+" and llState like '%"+llState+"%'";
			}
			lls=ser.query(hql2, null, hql2, page, ser);
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
		getRequest().setAttribute("ll", ll);
		ll=null;
		return result_succ;
	}
	
	public String addLL() throws Exception {
		if(ll!=null){
			ll.setLlId("ll"+NameOfDate.getNum());
			ser.save(ll);
		}
		getRequest().setAttribute("ll", ll);
		ll=null;
		return result_succ;
	}
	
	
	
}
