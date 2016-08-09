package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BranchesAction extends MyBaseAction{
	IService ser;
	Page page;
	
	XtBranches b;
	List<XtBranches> bs;
	
	String result_b="branches";
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
	public XtBranches getB() {
		return b;
	}
	public void setB(XtBranches b) {
		this.b = b;
	}
	public List<XtBranches> getBs() {
		return bs;
	}
	public void setBs(List<XtBranches> bs) {
		this.bs = bs;
	}
	//------------------------------------------------
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from XtBranches where BId  = ?";
			String ss[]={id};
			String hql2="from XtBranches where BId = '"+id+"'";
			bs=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from XtBranches";
			String ss[]={};
			String hql2="from XtBranches";
			bs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result_b;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			b=(XtBranches) ser.get(XtBranches.class, id);
			ser.delete(b);
		}
		b=null;
		return result_succ;
	}
	
	public String update() throws Exception {
		if(b!=null && b.getBId()!=null && !"".equals(b.getBId().trim())){
			ser.update(b);
		}
		b=null;
		return result_succ;
	}
	
	public String add() throws Exception {
		if(b!=null){
			b.setBId("b"+NameOfDate.getNum());
			ser.save(b);
		}
		b=null;
		return result_succ;
	}	
	
}
