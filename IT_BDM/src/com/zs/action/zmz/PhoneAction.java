package com.zs.action.zmz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ClearSessionInterceptor;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.ZmPhoneLine;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PhoneAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	
	ZmPhoneLine phone;
	List<ZmPhoneLine> phones;
	
	String result="phone";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String PNumber;
	String PSection;
	String cz;
	
	private Logger logger=Logger.getLogger(PhoneAction.class);
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPNumber() {
		return PNumber;
	}

	public void setPNumber(String pNumber) {
		PNumber = pNumber;
	}

	public String getPSection() {
		return PSection;
	}

	public void setPSection(String pSection) {
		PSection = pSection;
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

	public ZmPhoneLine getPhone() {
		return phone;
	}

	public void setPhone(ZmPhoneLine phone) {
		this.phone = phone;
	}

	public List<ZmPhoneLine> getPhones() {
		return phones;
	}

	public void setPhones(List<ZmPhoneLine> phones) {
		this.phones = phones;
	}

	public String getCz() {
		return cz;
	}

	public void setCz(String cz) {
		this.cz = cz;
	}

	//**********************************************
	public void clearOptions() {
		id=null;
		PNumber=null;
		PSection=null;
		cz=null;
		phone=null;
		phones=null;
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
		if(PNumber!=null){
			PNumber=PNumber.trim();
		}
		if(PSection!=null){
			PSection=PSection.trim();
		}
		if(cz!=null){
			cz = cz.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmPhoneLine where PState='有效' order by PCreateTime desc , PDate desc";
		phones=ser.query(hql,null, hql, page, ser);
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql2="from ZmPhoneLine where PState='有效'";
		if(id!=null&&!id.equals("")){
			hql2=hql2+" and PId like '%"+id+"%'";
		}
		if(PNumber!=null&&!PNumber.equals("")){
			hql2=hql2+" and PNumber like '%"+PNumber+"%'";
		}
		if(PSection!=null&&!PSection.equals("")){
			hql2=hql2+" and PSection like '%"+PSection+"%'";
		}
		hql2=hql2+" order by PCreateTime desc , PDate desc";
		phones=ser.query(hql2, null, hql2, page, ser);
		return result;
	}
	
	public String add() throws Exception {
		clearSpace();
		if(phone!=null){
			phone.setPId("p"+NameOfDate.getNum());
			Date date=new Date();
			phone.setPDate(new Timestamp(date.getTime()));
			phone.setPCreateTime(new Timestamp(date.getTime()));
			phone.setPType("注册");
			phone.setPState("有效");
			Users us = (Users) getSession().getAttribute("user");
			phone.setUNum(us.getUNum());
			ser.save(phone);
			getRequest().setAttribute("phone", phone);
		}
		return gotoQuery();
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			phone=(ZmPhoneLine) ser.get(ZmPhoneLine.class, id);
			ser.delete(phone);
		}
		return gotoQuery();
	}


	public String update() throws Exception {
		clearSpace();
		if(phone!=null && phone.getPId()!=null && !"".equals(phone.getPId().trim())){
			ZmPhoneLine phoneline=(ZmPhoneLine) ser.get(ZmPhoneLine.class, phone.getPId());
			phoneline.setPState("无效");
			ser.update(phoneline);
			getRequest().setAttribute("phoneline", phoneline);
			
			phone.setPId("p"+NameOfDate.getNum());
			phone.setPDate(phoneline.getPDate());
			phone.setPCreateTime(new Timestamp(new Date().getTime()));
			phone.setPType("维护");
			phone.setPState("有效");
			Users us = (Users) getSession().getAttribute("user");
			phone.setUNum(us.getUNum());
			ser.save(phone);
			getRequest().setAttribute("phone", phone);
		}
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
