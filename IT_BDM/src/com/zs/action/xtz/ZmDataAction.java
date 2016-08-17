package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmDataAction extends MyBaseAction{
	IService ser;
	Page page;
	
	Logger logger=Logger.getLogger(ZmDataAction.class);
	
	XtZmData zmd;
	List<XtZmData> zmds;
	
	String result="zmd";
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
	public XtZmData getZmd() {
		return zmd;
	}
	public void setZmd(XtZmData zmd) {
		this.zmd = zmd;
	}
	public List<XtZmData> getZmds() {
		return zmds;
	}
	public void setZmds(List<XtZmData> zmds) {
		this.zmds = zmds;
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
			String hql="from XtZmData where DId  = ?";
			String ss[]={id};
			String hql2="from XtZmData where DId = '"+id+"'";
			zmds=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from XtZmData";
			String ss[]={};
			String hql2="from XtZmData";
			zmds=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			zmd=(XtZmData) ser.get(XtZmData.class, id);
			ser.delete(zmd);
		}
		zmd=null;
		return result_succ;
	}
	
	public String update() throws Exception {
		if(zmd!=null && zmd.getDId()!=null && !"".equals(zmd.getDId().trim())){
			ser.update(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		zmd=null;
		return result_succ;
	}
	
	public String add() throws Exception {
		if(zmd!=null){
			zmd.setDId("d"+NameOfDate.getNum());
			ser.save(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		zmd=null;
		return result_succ;
	}	
	
}
 