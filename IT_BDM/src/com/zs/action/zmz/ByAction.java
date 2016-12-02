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
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iZmByService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ByAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iZmByService bySer;
	Page page;
	
	ZmByNumber by;
	List bys;
	String result="by";
	String result_succ="succ";
	String result_fail="fail";
	String id;
	String name;
	String section;
	String dates;
	String datee;
	String job;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	private Logger logger=Logger.getLogger(ByAction.class);
	
	

	public iZmByService getBySer() {
		return bySer;
	}
	public void setBySer(iZmByService bySer) {
		this.bySer = bySer;
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
	public ZmByNumber getBy() {
		return by;
	}
	public void setBy(ZmByNumber by) {
		this.by = by;
	}
	public List<ZmByNumber> getBys() {
		return bys;
	}
	public void setBys(List<ZmByNumber> bys) {
		this.bys = bys;
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
	
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	//------------------------------------------------
	public void clearOptions() {
		id=null;     
		name=null;   
		section=null;
		dates=null;  
		datee=null;  
		job=null;
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
		if (id!=null) {
			String hql="from ZmByNumber where byId like '%"+id+"%'";
			if (name!=null && !name.trim().equals("")) {
				hql=hql+" and byName like '%"+name+"%'";
			}
			if (section!=null && !section.trim().equals("")) {
				hql=hql+" and bySection like '%"+section+"%'";
			}
			if (job!=null && !job.trim().equals("")) {
				hql=hql+" and byOnJob like '%"+job+"%'";
			}
			if (dates!=null && !dates.trim().equals("")) {
				hql=hql+" and byServiceDate >= '"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql=hql+" and byServiceDate <= '"+datee+"'";
			}
			hql=hql+" order by byServiceDate desc";
			bys=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmByNumber order by byServiceDate desc";
			String ss[]={};
			String hql2="from ZmByNumber order by byServiceDate desc";
			bys=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmByNumber order by byServiceDate desc";
		String ss[]={};
		String hql2="from ZmByNumber order by byServiceDate desc";
		bys=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			by=(ZmByNumber) ser.get(ZmByNumber.class, id);
			ser.delete(by);
		}
		by=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(by!=null && by.getById()!=null && !"".equals(by.getById().trim())){
			ZmByNumber zmby=(ZmByNumber) ser.get(ZmByNumber.class, by.getById());
			ser.update(by);
			getRequest().setAttribute("by", by);
		}
		by=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(by!=null){
			by.setById("by"+NameOfDate.getNum());
			Date date=new Date();
			by.setByOaDate(new Timestamp(date.getTime()));
			Users user=(Users) getSession().getAttribute("user");
			if(user!=null){
				by.setByService(user.getUName());
			}
			Calendar ca = Calendar.getInstance();
			ca.setTime(by.getByServiceDate());
			System.out.println(ca.get(Calendar.WEEK_OF_YEAR));
			by.setByServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			ser.save(by);
			getRequest().setAttribute("by", by);
		}
		by=null;
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		bySer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
}
