package com.zs.action.xtz;

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
import com.zs.entity.WhMassageReceive;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.XtHitches;
import com.zs.entity.XtPdaLoss;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iXtPdaLossService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class HitchesAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	iDataImportService importSer;
	Page page;
	
	XtHitches h;
	List<XtHitches> hs;
	String result="hitches";
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
	public XtHitches getH() {
		return h;
	}
	public void setH(XtHitches h) {
		this.h = h;
	}
	public List<XtHitches> getHs() {
		return hs;
	}
	public void setHs(List<XtHitches> hs) {
		this.hs = hs;
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
		h=null;
		hs=null;
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
		String hql="from XtHitches where HState ='有效' ";
		if (id!=null) {
			hql=hql+" and HId like '%"+id+"%'";
		}
		if (dates!=null && !dates.equals("")) {
			hql=hql+" and HTimeStart >= '"+dates+"'";
		}
		if (datee!=null && !datee.equals("")) {
			hql=hql+" and HTimeStart <= '"+datee+" 23:59:59'";
		}
		hql=hql+" order by HCreateTime desc , HTimeStart desc";
		hs=ser.query(hql, null, hql, page, ser);
		for(int i = 0 ; i< hs.size(); i++){
			int interval =  (int) ((hs.get(i).getHTimeEnd().getTime()-hs.get(i).getHTimeStart().getTime())/(1000*60));
			hs.get(i).setHTimeInterval(interval);
		}
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtHitches where HState ='有效' order by HCreateTime desc , HTimeStart desc";
		hs=ser.query(hql, null, hql, page, ser);
		for(int i = 0 ; i< hs.size(); i++){
			int interval =  (int) ((hs.get(i).getHTimeEnd().getTime()-hs.get(i).getHTimeStart().getTime())/(1000*60));
			hs.get(i).setHTimeInterval(interval);
		}
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			h= (XtHitches) ser.get(XtHitches.class, id);
			if (h!=null) {
				ser.delete(h);
				getRequest().setAttribute("h", h);
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		String date=getRequest().getParameter("h_date");
		String times=getRequest().getParameter("h_time_s");
		String timee=getRequest().getParameter("h_time_e");
		if(h!=null && date!=null && times!=null && timee!=null && h.getHId()!=null){
			XtHitches xh = (XtHitches) ser.get(XtHitches.class, h.getHId());
			xh.setHState("无效");
			ser.update(xh);
			getRequest().setAttribute("xh",xh);
			
			h.setHId(NameOfDate.getNum());
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Date date1=format.parse(date+" "+times);
			Date date2=format.parse(date+" "+timee);
			h.setHTimeStart(new Timestamp(date1.getTime()));
			h.setHTimeEnd(new Timestamp(date2.getTime()));
			h.setHCreateTime(new Timestamp(new Date().getTime()));
			h.setHState("有效");
			h.setHType("维护");
			Users users=(Users) getSession().getAttribute("user");
			h.setUNum(users.getUNum());
			ser.save(h);
			getRequest().setAttribute("h", h);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		String date=getRequest().getParameter("h_date");
		String times=getRequest().getParameter("h_time_s");
		String timee=getRequest().getParameter("h_time_e");
		if(h!=null && date!=null && times!=null && timee!=null){
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Date date1=format.parse(date+" "+times);
			Date date2=format.parse(date+" "+timee);
			h.setHId(NameOfDate.getNum());
			h.setHTimeStart(new Timestamp(date1.getTime()));
			h.setHTimeEnd(new Timestamp(date2.getTime()));
			h.setHCreateTime(new Timestamp(new Date().getTime()));
			h.setHState("有效");
			h.setHType("维护");
			Users users=(Users) getSession().getAttribute("user");
			h.setUNum(users.getUNum());
			ser.save(h);
			getRequest().setAttribute("h", h);
		}
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
