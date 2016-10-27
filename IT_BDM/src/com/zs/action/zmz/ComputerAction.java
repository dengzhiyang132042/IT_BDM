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
import com.zs.entity.ZmComputer;
import com.zs.entity.ZmOaNumber;
import com.zs.entity.ZmPrinter;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ComputerAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	Page page;
	
	ZmComputer c;
	List cs;
	
	String result="computer";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String section;
	String name;
	String num;
	
	private Logger logger=Logger.getLogger(ComputerAction.class);

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
	public ZmComputer getC() {
		return c;
	}
	public void setC(ZmComputer c) {
		this.c = c;
	}
	public List getCs() {
		return cs;
	}
	public void setCs(List cs) {
		this.cs = cs;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	//----------------------------------------------------------------------------------

	public void clearOptions() {
		id=null;
		section=null;
		name=null;
		num=null;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if(section!=null){
			section=section.trim();
		}
		if(name!=null){
			name=name.trim();
		}
		if(num!=null){
			num=num.trim();
		}
	}
	
	public String add() throws Exception {
		if (c!=null) {
			c.setCId("c"+NameOfDate.getNum());
			c.setCDate(new Date());
			ser.save(c);
			getRequest().setAttribute("c", c);
		}
		c=null;
		clearOptions();
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			c=(ZmComputer) ser.get(ZmComputer.class, id);
			ser.delete(c);
		}
		c=null;
		clearOptions();
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from ZmComputer order by CDate desc";
		String ss[]={};
		String hql2="from ZmComputer order by CDate desc";
		cs=ser.query(hql, ss, hql2, page, ser);
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
			String hql="from ZmComputer where CId like '%"+id+"%'";
			if(section!=null){
				hql=hql+"and CSection like '%"+section+"%'";
			}
			if(name!=null){
				hql=hql+"and CMaster like '%"+name+"%'";
			}
			if(num!=null){
				hql=hql+"and CNum like '%"+num+"%'";
			}
			hql=hql+" order by CDate desc";
			cs=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmComputer order by CDate desc";
			String ss[]={};
			String hql2="from ZmComputer order by CDate desc";
			cs=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}


	public String update() throws Exception {
		if(c!=null && c.getCId()!=null && !"".equals(c.getCId().trim())){
			ser.update(c);
			getRequest().setAttribute("c", c);
		}
		c=null;
		clearOptions();
		return gotoQuery();
	}
	
}
