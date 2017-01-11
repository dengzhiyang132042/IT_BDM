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
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.service.iXtZmDataService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmDataAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Logger logger=Logger.getLogger(ZmDataAction.class);
	IService ser;
	iXtZmDataService xtZmDataSer;
	Page page;
	
	XtZmData zmd;
	List<XtZmData> zmds;
	
	String result="zmd";
	
	String id;
	String cz;
	String dates;
	String datee;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
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
		cz=null;
		dates=null;
		datee=null;
		zmd=null;
		zmds=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		id=id==null?null:id.trim();
		cz=cz==null?null:cz.trim();
		dates=dates==null?null:dates.trim();
		datee=datee==null?null:datee.trim();
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from XtZmData where DState='有效' ";
		if (id!=null && !id.equals("")) 
			hql=hql+"and DId like '%"+id+"%' ";
		if (dates!=null && !dates.trim().equals("")) 
			hql=hql+"and DDate >= '"+dates+"' ";
		if (datee!=null && !datee.trim().equals("")) 
			hql=hql+"and DDate <= '"+datee+"' ";
		hql=hql+"order by DCreateTime desc,DDate desc";
		zmds=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() {
		clearOptions();
		String hql="from XtZmData where DState='有效' order by DCreateTime desc,DDate desc";
		zmds=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			zmd=(XtZmData) ser.get(XtZmData.class, id);
			ser.delete(zmd);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(zmd!=null && zmd.getDId()!=null && !"".equals(zmd.getDId().trim())){
			XtZmData data=(XtZmData) ser.get(XtZmData.class, zmd.getDId());
			data.setDState("无效");
			ser.update(data);
			getRequest().setAttribute("data", data);
			
			zmd.setDId(NameOfDate.getNum());
			zmd.setDDate(data.getDDate());
			zmd.setDCreateTime(new Timestamp(new Date().getTime()));
			zmd.setDState("有效");
			zmd.setUNum(user.getUNum());
			ser.save(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(zmd!=null){
			zmd.setDId("d"+NameOfDate.getNum());
			zmd.setDDate(new Timestamp(new Date().getTime()));
			
			zmd.setDCreateTime(new Timestamp(new Date().getTime()));
			zmd.setDState("有效");
			zmd.setUNum(user.getUNum());
			ser.save(zmd);
			getRequest().setAttribute("zmd", zmd);
		}
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users user=(Users) getSession().getAttribute("user");
		xtZmDataSer.importExcelData(fileExcelFileName, fileExcel,user.getUNum());
		return gotoQuery();
	}
}
 