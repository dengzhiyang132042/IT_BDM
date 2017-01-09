package com.zs.action.zmz;

import java.io.File;
import java.io.IOException;
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
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class OaAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	ZmOaNumber oa;
	List oas;
	String result="oa";
	String result_succ="succ";
	String result_fail="fail";
	String id;
	String section;
	String apply;
	String num;
	String dates;
	String datee;
	String job;
	String cz;
	private Logger logger=Logger.getLogger(OaAction.class);
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
	public ZmOaNumber getOa() {
		return oa;
	}
	public void setOa(ZmOaNumber oa) {
		this.oa = oa;
	}
	public List getOas() {
		return oas;
	}
	public void setOas(List oas) {
		this.oas = oas;
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
	public String getApply() {
		return apply;
	}
	public void setApply(String apply) {
		this.apply = apply;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public String getDatee() {
		return datee;
	}
	public void setDatee(String datee) {
		this.datee = datee;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	
//----------------------------------------------------------------------------------	
	
	
	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (apply!=null) {
			apply=apply.trim();
		}
		if (section!=null) {
			section=section.trim();
		}
		if (num!=null) {
			num=num.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
		if(job!=null){
			job=job.trim();
		}
	}


	public void clearOptions() {
		id=null;
		section=null;
		apply=null;
		num=null;
		dates=null;
		datee=null;
		job=null;
		cz=null;
		oa=null;
		oas=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	public String add() throws Exception {
		if (oa!=null) {
			oa.setOId("o"+NameOfDate.getNum());
			Date date = new Date();
			oa.setOCreateTime(new Timestamp(date.getTime()));
			oa.setODate(date);
			Calendar ca = Calendar.getInstance();
			ca.setTime(date);
			oa.setOServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			Users users=(Users) getSession().getAttribute("user"); 
			oa.setOService(users.getUName());
			oa.setUNum(users.getUNum());
			oa.setOState("有效");
			String type="";
			if(oa.getOOnJob().equals("入职")){
				type = "注册";
			}else if(oa.getOOnJob().equals("离职")){
				type = "注销";
			}else{
				type="维护";
			}
			oa.setOType(type);
			ser.save(oa);
			getRequest().setAttribute("oa", oa);
		}
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			oa=(ZmOaNumber) ser.get(ZmOaNumber.class, id);
			ser.delete(oa);
		}
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from ZmOaNumber where OState ='有效' order by OCreateTime desc ODate desc";
		oas=ser.query(hql, null, hql, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from ZmOaNumber where OState ='有效' ";
		if(id!=null&&!id.equals("")){
			hql=hql+" and OId like '%"+id+"%'";
		}
		if(section!=null && !"".equals(section)){
			hql=hql+" and OSection like '%"+section+"%'";
		}
		if(num!=null && !"".equals(num)){
			hql=hql+" and OOa like '%"+num+"%'";
		}
		if(apply!=null && !"".equals(apply)){
			hql=hql+" and OApply like '%"+apply+"%'";
		}
		if(job!=null && !"".equals(job)){
			hql = hql+" and OOnJob like '%"+job+"%'";
		}
		if(dates!=null && !"".equals(dates)){
			hql=hql+" and ODate >= '"+dates+"'";
		}
		if(datee!=null && !"".equals(datee)){
			hql=hql+" and ODate <= '"+datee+"'";
		}
		hql=hql+" order by OCreateTime desc ODate desc";
		oas=ser.query(hql, null, hql, page, ser);
		return result;
	}

	
	public String update() throws Exception {
		if(oa!=null && oa.getOId()!=null && !"".equals(oa.getOId().trim())){
			ZmOaNumber zmOa = (ZmOaNumber) ser.get(ZmOaNumber.class, oa.getOId());
			zmOa.setOState("无效");
			ser.update(zmOa);
			
			oa.setOId("o"+NameOfDate.getNum());
			Date date = new Date();
			oa.setOCreateTime(new Timestamp(date.getTime()));
			oa.setODate(date);
			Calendar ca = Calendar.getInstance();
			ca.setTime(date);
			oa.setOServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			Users users=(Users) getSession().getAttribute("user"); 
			oa.setOService(users.getUName());
			oa.setUNum(users.getUNum());
			oa.setOState("有效");
			String type="";
			if(oa.getOOnJob().equals("入职")){
				type = "注册";
			}else if(oa.getOOnJob().equals("离职")){
				type = "注销";
			}else{
				type="维护";
			}
			oa.setOType(type);
			ser.save(oa);
			getRequest().setAttribute("oa", oa);
		}
		clearOptions();
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
