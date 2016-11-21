package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import sun.security.krb5.internal.PAData;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtPdaChange;
import com.zs.service.IService;
import com.zs.service.iXtPdaChangeService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PdaChangeAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	iXtPdaChangeService pdaChangeSer;
	Page page;
	
	XtPdaChange pda;
	
	List<XtPdaChange> pdas;
	
	String result_pda="pdachange";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String weekNum;
	String sn;
	String dates;
	String datee;
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
	public iXtPdaChangeService getPdaChangeSer() {
		return pdaChangeSer;
	}
	public void setPdaChangeSer(iXtPdaChangeService pdaChangeSer) {
		this.pdaChangeSer = pdaChangeSer;
	}
	public String getWeekNum() {
		return weekNum;
	}
	public void setWeekNum(String weekNum) {
		this.weekNum = weekNum;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
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
	public XtPdaChange getPda() {
		return pda;
	}
	public void setPda(XtPdaChange pda) {
		this.pda = pda;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<XtPdaChange> getPdas() {
		return pdas;
	}
	public void setPdas(List<XtPdaChange> pdas) {
		this.pdas = pdas;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		weekNum=null;
		sn=null;
		dates=null;
		datee=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(weekNum!=null){
			weekNum=weekNum.trim();
		}
		if(sn!=null){
			sn=sn.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
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
			String hql="from XtPdaChange where CId like '%"+id+"%'";
				if(weekNum!=null){
					hql=hql+" and CWeek like '%"+weekNum+"%'";
				}
				if(sn!=null){
					hql=hql+" and CSn like '%"+sn+"%'";
				}
				if(dates!=null&&!dates.equals("")){
					hql=hql+" and CChangeDate >='"+dates+"'";
				}
				if(datee!=null&&!dates.equals("")){
					hql=hql+" and CChangeDate <='"+datee+"'";
				}
			hql=hql+" order by CChangeDate desc";
			pdas=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtPdaChange order by CChangeDate desc";
			String ss[]={};
			String hql2="from XtPdaChange order by CChangeDate desc";
			pdas=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result_pda;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtPdaChange order by CChangeDate desc";
		String ss[]={};
		String hql2="from XtPdaChange order by CChangeDate desc";
		pdas=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result_pda;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			pda=(XtPdaChange) ser.get(XtPdaChange.class, id);
			ser.delete(pda);
		}
		pda=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(pda!=null && pda.getCId()!=null && !"".equals(pda.getCId().trim())){
			XtPdaChange pdachange=(XtPdaChange) ser.get(XtPdaChange.class, pda.getCId());
			pda.setCDate(pdachange.getCDate());
			pda.setCChangeDate(pdachange.getCChangeDate());
			pda.setCWeek(pdachange.getCWeek());
			ser.update(pda);
			getRequest().setAttribute("pda", pda);
		}
		pda=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(pda!=null){
			Users users=(Users) getSession().getAttribute("user");
			pda.setCId("p"+NameOfDate.getNum());
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			pda.setCChangeDate(new Timestamp(date.getTime()));
			pda.setCWeek(ca.get(Calendar.WEEK_OF_YEAR));
			if(users!=null){
				pda.setCIt(users.getUName());
			}
			ser.save(pda);
			getRequest().setAttribute("pda", pda);
		}
		pda=null;
		return gotoQuery();
	}	

	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		pdaChangeSer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
}
