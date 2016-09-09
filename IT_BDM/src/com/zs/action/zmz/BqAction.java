package com.zs.action.zmz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BqAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	Page page;
	
	ZmBq bq;
	List<ZmBq> bqs;
	
	String result="bq";
	String result_succ="succ";
	String result_fail="fail";
	
	private Logger logger=Logger.getLogger(BqAction.class);
	
	
	
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

	public ZmBq getBq() {
		return bq;
	}

	public void setBq(ZmBq bq) {
		this.bq = bq;
	}

	public List<ZmBq> getBqs() {
		return bqs;
	}

	public void setBqs(List<ZmBq> bqs) {
		this.bqs = bqs;
	}

	//**********************************************
	public void clearOptions() {
		// TODO Auto-generated method stub
		
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		if(id!=null){
			String hql="from ZmBq";
			hql=hql+" order by BDate desc";
			bqs=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmBq order by BDate desc";
			String ss[]={};
			String hql2="from ZmBq order by BDate desc";
			bqs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		if(bq!=null){
			bq.setBId("b"+NameOfDate.getNum());
			Date date=new Date();
			bq.setBDate(new Timestamp(date.getTime()));
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			bq=(ZmBq) ser.get(ZmBq.class, id);
			ser.delete(bq);
		}
		bq=null;
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmBq order by BDate desc";
		String ss[]={};
		String hql2="from ZmBq order by BDate desc";
		bqs=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}

	public String update() throws Exception {
		if(bq!=null && bq.getBId()!=null && !"".equals(bq.getBId().trim())){
			ZmBq zmBq=(ZmBq) ser.get(ZmBq.class, bq.getBId());
			bq.setBDate(zmBq.getBDate());
			ser.update(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}

}
