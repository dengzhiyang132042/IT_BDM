package com.zs.action.zmz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.xml.registry.infomodel.User;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmOaNumber;
import com.zs.entity.ZmPrinter;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PrintAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	Page page;
	
	ZmPrinter p;
	List ps;
	
	String result="print";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String brand;
	String address;
	String ip;
	
	private Logger logger=Logger.getLogger(PrintAction.class);

//----------------------------------------------------------------------------------	
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
	public ZmPrinter getP() {
		return p;
	}
	public void setP(ZmPrinter p) {
		this.p = p;
	}
	public List getPs() {
		return ps;
	}
	public void setPs(List ps) {
		this.ps = ps;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
//----------------------------------------------------------------------------------
	public String add() throws Exception {
		if (p!=null) {
			p.setPId("p"+NameOfDate.getNum());
			ser.save(p);
			getRequest().setAttribute("p", p);
		}
		p=null;
		clearOptions();
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		brand=null;
		address=null;
		ip=null;
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			p=(ZmPrinter) ser.get(ZmPrinter.class, id);
			ser.delete(p);
		}
		p=null;
		clearOptions();
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from ZmPrinter order by PLast desc";
		String ss[]={};
		String hql2="from ZmPrinter order by PLast desc";
		ps=ser.query(hql, ss, hql2, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
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
		if(id!=null){
			String hql="from ZmPrinter where PId like '%"+id+"%'";
			if(brand!=null){
				hql=hql+" and PBrand like '%"+brand+"%'";
			}
			if(address!=null){
				hql=hql+" and PAddress like '%"+address+"%'";
			}
			if(ip!=null){
				hql=hql+" and PIp like '%"+ip+"%'";
			}
			hql=hql+" order by PLast desc";
			ps=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmPrinter order by PLast desc";
			String ss[]={};
			String hql2="from ZmPrinter order by PLast desc";
			ps=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (brand!=null) {
			brand=brand.trim();
		}
		if (address!=null) {
			address=address.trim();
		}
		if (ip!=null) {
			ip=ip.trim();
		}
	}

	public String update() throws Exception {
		if(p!=null && p.getPId()!=null && !"".equals(p.getPId().trim())){
			ser.update(p);
			getRequest().setAttribute("p", p);
		}
		p=null;
		clearOptions();
		return gotoQuery();
	}
	
}
