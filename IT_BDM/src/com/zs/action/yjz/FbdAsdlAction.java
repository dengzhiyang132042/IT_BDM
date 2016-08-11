package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.FbdAsdl;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdAsdlAction extends MyBaseAction{
	
	IService ser;
	FbdAsdl asdl;
	List<FbdAsdl> asdls;
	
	Page page;
	
	String result_asdl="asdl";
	String result_succ="succ";
	String result_fail="fail";
	
	
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public FbdAsdl getAsdl() {
		return asdl;
	}
	public void setAsdl(FbdAsdl asdl) {
		this.asdl = asdl;
	}
	public List<FbdAsdl> getAsdls() {
		return asdls;
	}
	public void setAsdls(List<FbdAsdl> asdls) {
		this.asdls = asdls;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	//--------------------------------------------------
	public String queryOfFenyeAsdl() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (asdl==null) {
			asdl=new FbdAsdl("");
		}
		if (id!=null) {
			String hql="from FbdAsdl where asdlId  = ?";
			String ss[]={id};
			String hql2="from FbdAsdl where asdlId = '"+id+"'";
			asdls=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from FbdAsdl";
			String ss[]={};
			String hql2="from FbdAsdl";
			asdls=ser.query(hql, ss, hql2, page, ser);
		}
		//带上分部区部分拨点信息
		for (int i = 0; i < asdls.size(); i++) {
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, asdls.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			asdls.get(i).setFbd(fbd);
		}
		ser.receiveStructure(getRequest());
		return result_asdl;
	}
	
	public String deleteAsdl() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			asdl=(FbdAsdl) ser.get(FbdAsdl.class, id);
			ser.delete(asdl);
		}
		asdl=null;
		return result_succ;
	}
	
	public String updateAsdl() throws Exception {
		if(asdl!=null && asdl.getAsdlId()!=null && !"".equals(asdl.getAsdlId().trim())){
			ser.update(asdl);
		}
		getRequest().setAttribute("asdl", asdl); 
		asdl=null;
		return result_succ;
	}
	
	public String addAsdl() throws Exception {
		if(asdl!=null){
			asdl.setAsdlId("asdl"+NameOfDate.getNum());
			ser.save(asdl);
		}
		getRequest().setAttribute("asdl", asdl);
		System.out.println("1111  "+asdl.getAsdlId());
		asdl=null;
		return result_succ;
	}
	
	
	
	
}
