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
import com.zs.entity.ZmByNumber;
import com.zs.entity.ZmMail;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iZmByService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class MailAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService impo;
	Page page;
	
	ZmMail m;
	List<ZmMail> ms;
	String result="mail";
	String result_succ="succ";
	String result_fail="fail";
	String id;
	String name;
	String section;
	String dates;
	String datee;
	String job;
	String cz;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	private Logger logger=Logger.getLogger(MailAction.class);
	
	
	
	public iDataImportService getImpo() {
		return impo;
	}
	public void setImpo(iDataImportService impo) {
		this.impo = impo;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
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
	public ZmMail getM() {
		return m;
	}
	public void setM(ZmMail m) {
		this.m = m;
	}
	public List<ZmMail> getMs() {
		return ms;
	}
	public void setMs(List<ZmMail> ms) {
		this.ms = ms;
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
	//------------------------------------------------
	public void clearOptions() {
		id=null;     
		name=null;   
		section=null;
		dates=null;  
		datee=null;  
		job=null;
		cz=null;
		ms=null;
		m=null;
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
		if(name!=null){
			name=name.trim();
		}
		if(section!=null){
			section=section.trim();
		}
		if(job!=null){
			job=job.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from ZmMail where MState='有效' ";
		if (id!=null) {
			hql=hql+" and MId like '%"+id+"%'";
		}
		if (name!=null && !name.trim().equals("")) {
			hql=hql+" and MName like '%"+name+"%'";
		}
		if (section!=null && !section.trim().equals("")) {
			hql=hql+" and MSection like '%"+section+"%'";
		}
		if (job!=null && !job.trim().equals("")) {
			hql=hql+" and MOnJob like '%"+job+"%'";
		}
		if (dates!=null && !dates.trim().equals("")) {
			hql=hql+" and MServiceDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.trim().equals("")) {
			hql=hql+" and MServiceDate <= '"+datee+"'";
		}
		hql=hql+" order by MServiceDate desc , MCreateTime desc";
		ms=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmMail where MState='有效' order by MServiceDate desc , MCreateTime desc";
		ms=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			m=(ZmMail) ser.get(ZmMail.class, id);
			ser.delete(m);
		}
		m=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(m!=null && m.getMId()!=null && !"".equals(m.getMId().trim())){
			ZmMail zm=(ZmMail) ser.get(ZmMail.class, m.getMId());
			zm.setMState("无效");
			ser.update(zm);
			getRequest().setAttribute("zm", zm);
			
			m.setMId("m"+NameOfDate.getNum());
			Users user=(Users) getSession().getAttribute("user");
			if(user!=null){
				m.setMService(user.getUName());
				m.setUNum(user.getUNum());
			}
			m.setMOaDate(zm.getMOaDate());
			m.setMServiceWeek(zm.getMServiceWeek());
			if(m.getMOnJob().equals("入职")){
				m.setMType("注册");
			}else if(m.getMOnJob().equals("离职")){
				m.setMType("注销");
			}else{
				m.setMType("维护");
			}
			m.setMState("有效");
			m.setMCreateTime(new Timestamp(new Date().getTime()));
			ser.save(m);
			getRequest().setAttribute("m", m);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(m!=null){
			m.setMId("m"+NameOfDate.getNum());
			Date date=new Date();
			m.setMOaDate(new Timestamp(date.getTime()));
			Users user=(Users) getSession().getAttribute("user");
			if(user!=null){
				m.setMService(user.getUName());
				m.setUNum(user.getUNum());
			}
			Calendar ca = Calendar.getInstance();
			ca.setTime(m.getMServiceDate());
			m.setMServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			if(m.getMOnJob().equals("入职")){
				m.setMType("注册");
			}else if(m.getMOnJob().equals("离职")){
				m.setMType("注销");
			}else{
				m.setMType("维护");
			}
			m.setMState("有效");
			m.setMCreateTime(new Timestamp(date.getTime()));
			ser.save(m);
			getRequest().setAttribute("m", m);
		}
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users user=(Users) getSession().getAttribute("user");
		impo.importExcelData(fileExcelFileName, fileExcel,user.getUNum());
		return gotoQuery();
	}
}
