package com.zs.action.zmz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;


import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.ZmComputer;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ComputerAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	
	ZmComputer c;
	List cs;
	
	String result="computer";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String cz;
	String section;
	String name;
	String num;
	
	private Logger logger=Logger.getLogger(ComputerAction.class);
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
//----------------------------------------------------------------------------------	
	
	public IService getSer() {
		return ser;
	}
	public iDataImportService getImportSer() {
		return importSer;
	}
	public void setImportSer(iDataImportService importSer) {
		this.importSer = importSer;
	}
	public File getFileExcel() {
		return fileExcel;
	}
	public void setFileExcel(File fileExcel) {
		this.fileExcel = fileExcel;
	}
	public String getFileExcelContentType() {
		return fileExcelContentType;
	}
	public void setFileExcelContentType(String fileExcelContentType) {
		this.fileExcelContentType = fileExcelContentType;
	}
	public String getFileExcelFileName() {
		return fileExcelFileName;
	}
	public void setFileExcelFileName(String fileExcelFileName) {
		this.fileExcelFileName = fileExcelFileName;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	
	
	//----------------------------------------------------------------------------------

	public void clearOptions() {
		id=null;
		section=null;
		name=null;
		num=null;
		cz=null;
		c=null;
		cs=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
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
		if(cz!=null){
			cz=cz.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from ZmComputer where CState='有效' ";
		if(id!=null&&!id.equals("")){
			hql=hql+" and CId like '%"+id+"%'";
		}
		if(section!=null&&!section.equals("")){
			hql=hql+" and CSection like '%"+section+"%'";
		}
		if(name!=null&&!name.equals("")){
			hql=hql+" and CMaster like '%"+name+"%'";
		}
		if(num!=null&&!num.equals("")){
			hql=hql+" and CNum like '%"+num+"%'";
		}
		hql=hql+" order by CCreateTime desc , CDate desc";
		cs=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmComputer where CState = '有效' order by CCreateTime desc , CDate desc";
		cs=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String add() throws Exception {
		clearSpace();
		if (c!=null) {
			c.setCId("c"+NameOfDate.getNum());
			c.setCDate(new Date());
			c.setCType("注册");
			c.setCState("有效");
			c.setCCreateTime(new Timestamp(new Date().getTime()));
			Users us = (Users) getSession().getAttribute("user");
			c.setUNum(us.getUNum());
			ser.save(c);
			getRequest().setAttribute("c", c);
		}
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			c=(ZmComputer) ser.get(ZmComputer.class, id);
			ser.delete(c);
		}
		return gotoQuery();
	}


	public String update() throws Exception {
		clearSpace();
		if(c!=null && c.getCId()!=null && !"".equals(c.getCId().trim())){
			ZmComputer zc = (ZmComputer) ser.get(ZmComputer.class, c.getCId());
			zc.setCState("无效");
			ser.update(zc);
			
			c.setCId("c"+NameOfDate.getNum());
			c.setCType("维护");
			c.setCState("有效");
			c.setCCreateTime(new Timestamp(new Date().getTime()));
			Users us = (Users) getSession().getAttribute("user");
			c.setUNum(us.getUNum());
			ser.save(c);
			getRequest().setAttribute("c", c);
		}
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	

}
