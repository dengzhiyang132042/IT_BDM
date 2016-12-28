package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.XtPdaLoss;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iXtPdaLossService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class MonitorAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	iDataImportService importSer;
	Page page;
	
	WhMonitorScout moni;
	List<WhMonitorScout> monis;
	String result="monitor";
	String id;
	String dates;
	String datee;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
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
	public WhMonitorScout getMoni() {
		return moni;
	}
	public void setMoni(WhMonitorScout moni) {
		this.moni = moni;
	}
	public List<WhMonitorScout> getMonis() {
		return monis;
	}
	public void setMonis(List<WhMonitorScout> monis) {
		this.monis = monis;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	//------------------------------------------------
	private void clearOptions() {
		id=null;
		moni=null;
		monis=null;
		dates=null;
		datee=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			page=new Page(1, 0, 5);
		}
		clearSpace();
		String hql="from WhMonitorScout where 1=1";
		if (id!=null) {
			hql=hql+" and MId like '%"+id+"%'";
		}
		if (dates!=null && !dates.equals("")) {
			hql=hql+" and MDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.equals("")) {
			hql=hql+" and MDate <= '"+datee+"'";
		}
		hql=hql+" order by MTime desc";
		monis=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhMonitorScout order by MTime desc";
		monis=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			moni= (WhMonitorScout) ser.get(WhMonitorScout.class, id);
			if (moni!=null) {
				ser.delete(moni);
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		String time=getRequest().getParameter("time");
		if (moni!=null && time!=null) {
 			String da1=new SimpleDateFormat("yyyy-MM-dd").format(moni.getMDate());
 			Timestamp tit=new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(da1+" "+time).getTime());
 			moni.setMTime(tit);
 			ser.update(moni);
 			getRequest().setAttribute("moni", moni);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		Users user=(Users) getSession().getAttribute("user");
		String time=getRequest().getParameter("time");
		if(moni!=null && user!=null && time!=null){
			moni.setMId("m"+NameOfDate.getNum());
			moni.setMIt(user.getUName());
			moni.setMDate(new Date());
			if (user!=null && time!=null) {
	 			String da1=new SimpleDateFormat("yyyy-MM-dd").format(moni.getMDate());
	 			Timestamp tit=new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(da1+" "+time).getTime());
	 			moni.setMTime(tit);
	 			ser.save(moni);
			}
			getRequest().setAttribute("moni", moni);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
