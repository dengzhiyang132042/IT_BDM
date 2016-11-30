package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
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
	
	String result="pdaloss";
	
	String id;
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
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
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
			String hql="from WhMonitorScout where MId like '%"+id+"%'";
			hql=hql+" order by MTime desc";
			monis=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from WhMonitorScout where MId like '%"+id+"%'";
			hql=hql+" order by MTime desc";
			monis=ser.query(hql, null, hql, page, ser);
		}
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhMonitorScout where MId like '%"+id+"%'";
		hql=hql+" order by MTime desc";
		monis=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			moni= (WhMonitorScout) ser.get(WhMonitorScout.class, id);
			ser.delete(moni);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		/*
		if(pl!=null && pl.getLId()!=null && !"".equals(pl.getLId().trim())){
			XtPdaLoss pdaloss=(XtPdaLoss) ser.get(XtPdaLoss.class, pl.getLId());
			pl.setLDate(pdaloss.getLDate());
			pl.setLWeek(pdaloss.getLWeek());
			pl.setLHandleDate(pdaloss.getLHandleDate());
			ser.update(pl);
			getRequest().setAttribute("pl", pl);
		}
		pl=null;
		*/
		return gotoQuery();
	}
	
	public String add() throws Exception {
		/*
		if(pl!=null){
			pl.setLId("L"+NameOfDate.getNum());
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			if(pl.getLDate()==null){
				pl.setLDate(new Timestamp(date.getTime()));
			}
			pl.setLHandleDate(new Timestamp(date.getTime()));
			pl.setLWeek(ca.get(Calendar.WEEK_OF_YEAR));
			ser.save(pl);
			getRequest().setAttribute("pl", pl);
		}
		pl=null;
		*/
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		importSer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
	
}
