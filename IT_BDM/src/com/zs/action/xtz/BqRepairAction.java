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
import com.zs.entity.XtBqRepair;
import com.zs.service.IService;
import com.zs.service.iXtBqRepairService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BqRepairAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	iXtBqRepairService bqRepairSer;
	Page page;
	
	XtBqRepair bq;
	
	List<XtBqRepair> bqs;
	
	String result_bq="bqrepair";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String dates;
	String datee;
	String sn;
	String num;
	String cz;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
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
	public iXtBqRepairService getBqRepairSer() {
		return bqRepairSer;
	}
	public void setBqRepairSer(iXtBqRepairService bqRepairSer) {
		this.bqRepairSer = bqRepairSer;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public XtBqRepair getBq() {
		return bq;
	}
	public void setBq(XtBqRepair bq) {
		this.bq = bq;
	}
	public List<XtBqRepair> getBqs() {
		return bqs;
	}
	public void setBqs(List<XtBqRepair> bqs) {
		this.bqs = bqs;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		dates=null;
		datee=null;
		sn=null;
		num=null;
		cz=null;
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
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
		if(sn!=null){
			sn=sn.trim();
		}
		if(num!=null){
			num=num.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from XtBqRepair where RState ='有效'";
		if(id!=null)
			hql=hql+" and RId like '%"+id+"%'";
		if(sn!=null)
			hql=hql+" and RSn like '%"+sn+"%'";
		if(num!=null)
			hql=hql+" and RNum like '%"+num+"%'";
		if(dates!=null&&!dates.equals(""))
			hql=hql+" and RDate >='"+dates+"'";
		if(datee!=null&&!datee.equals(""))
			hql=hql+" and RDate <='"+datee+"'";
		hql=hql+" order by RCreateTime desc , RDate desc";
		bqs=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result_bq;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtBqRepair where RState ='有效' order by RCreateTime desc , RDate desc";
		bqs=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result_bq;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			bq=(XtBqRepair) ser.get(XtBqRepair.class, id);
			ser.delete(bq);
		}
		bq=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(bq!=null && bq.getRId()!=null && !"".equals(bq.getRId().trim())){
			XtBqRepair bqrepair=(XtBqRepair) ser.get(XtBqRepair.class, bq.getRId());
			bqrepair.setRState("无效");
			ser.update(bqrepair);
			getRequest().setAttribute("bqrepair",bqrepair);
			
			bq.setRId("R"+NameOfDate.getNum());
			bq.setRCreateTime(new Timestamp(new Date().getTime()));
			bq.setRType("维护");
			bq.setRState("有效");
			Users users=(Users) getSession().getAttribute("user");
			bq.setUNum(users.getUNum());
			bq.setRDate(bqrepair.getRDate());
			bq.setRWeek(bqrepair.getRWeek());
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(bq!=null){
			bq.setRId("R"+NameOfDate.getNum());
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			Users users=(Users) getSession().getAttribute("user");
			bq.setUNum(users.getUNum());
			bq.setRCreateTime(new Timestamp(new Date().getTime()));
			bq.setRType("维护");
			bq.setRState("有效");
			bq.setRDate(new Timestamp(date.getTime()));
			bq.setRWeek(ca.get(Calendar.WEEK_OF_YEAR));
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users us = (Users) getSession().getAttribute("user");
		bqRepairSer.importExcelData(fileExcelFileName, fileExcel,us.getUNum());
		return gotoQuery();
	}
	
}
