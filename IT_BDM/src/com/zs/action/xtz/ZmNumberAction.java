package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmNumberAction extends MyBaseAction{
	IService ser;
	Page page;
	
	Logger logger=Logger.getLogger(ZmNumberAction.class);
	
	XtZmNumber zmn;
	List<XtZmNumber> zmns;
	
	String result="zmn";
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
	public XtZmNumber getZmn() {
		return zmn;
	}
	public void setZmn(XtZmNumber zmn) {
		this.zmn = zmn;
	}
	public List<XtZmNumber> getZmns() {
		return zmns;
	}
	public void setZmns(List<XtZmNumber> zmns) {
		this.zmns = zmns;
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
			String hql="from XtZmNumber where zmId  = ?";
			String ss[]={id};
			String hql2="from XtZmNumber where zmId = '"+id+"'";
			zmns=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from XtZmNumber";
			String ss[]={};
			String hql2="from XtZmNumber";
			zmns=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			zmn=(XtZmNumber) ser.get(XtZmNumber.class, id);
			ser.delete(zmn);
		}
		zmn=null;
		return result_succ;
	}
	
	public String update() throws Exception {
		if(zmn!=null && zmn.getZmId()!=null && !"".equals(zmn.getZmId().trim())){
			ser.update(zmn);
		}
		zmn=null;
		return result_succ;
	}
	
	public String add() throws Exception {
		if(zmn!=null){
			zmn.setZmId("zm"+NameOfDate.getNum());
			ser.save(zmn);
		}
		zmn=null;
		return result_succ;
	}	
	
}
 