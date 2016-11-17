package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.service.iXtZmDataService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmDataAction extends MyBaseAction{
	IService ser;
	iXtZmDataService xtZmDataSer;
	Page page;
	
	Logger logger=Logger.getLogger(ZmDataAction.class);
	
	XtZmData zmd;
	List<XtZmData> zmds;
	
	String result="zmd";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String dates;
	String datee;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
	public iXtZmDataService getXtZmDataSer() {
		return xtZmDataSer;
	}
	public void setXtZmDataSer(iXtZmDataService xtZmDataSer) {
		this.xtZmDataSer = xtZmDataSer;
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
	public XtZmData getZmd() {
		return zmd;
	}
	public void setZmd(XtZmData zmd) {
		this.zmd = zmd;
	}
	public List<XtZmData> getZmds() {
		return zmds;
	}
	public void setZmds(List<XtZmData> zmds) {
		this.zmds = zmds;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		dates=null;
		datee=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
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
			String hql="from XtZmData where DId like '%"+id+"%'";
			if (dates!=null && !dates.trim().equals("")) {
				hql=hql+" and DDate >= '"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql=hql+" and DDate <= '"+datee+"'";
			}
			hql=hql+" order by DDate desc";
			zmds=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtZmData order by DDate desc";
			String ss[]={};
			String hql2="from XtZmData order by DDate desc";
			zmds=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}
	
	private String gotoQuery() {
		clearOptions();
		String hql="from XtZmData order by DDate desc";
		String ss[]={};
		String hql2="from XtZmData order by DDate desc";
		zmds=ser.query(hql, ss, hql2, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			zmd=(XtZmData) ser.get(XtZmData.class, id);
			ser.delete(zmd);
		}
		zmd=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(zmd!=null && zmd.getDId()!=null && !"".equals(zmd.getDId().trim())){
			XtZmData data=(XtZmData) ser.get(XtZmData.class, zmd.getDId());
			zmd.setDDate(data.getDDate());
			ser.update(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		zmd=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(zmd!=null){
			zmd.setDId("d"+NameOfDate.getNum());
			zmd.setDDate(new Timestamp(new Date().getTime()));
			ser.save(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		zmd=null;
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		xtZmDataSer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
}
 