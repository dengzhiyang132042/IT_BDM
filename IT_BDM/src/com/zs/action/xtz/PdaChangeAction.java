package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONObject;

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
	
	String id;
	String weekNum;
	String sn;
	String dates;
	String datee;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		weekNum=null;
		sn=null;
		dates=null;
		datee=null;
		pda=null;
		pdas=null;
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
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from XtPdaChange where CState = '有效' "; 
		if (id!=null&&!id.equals(""))
			hql = hql +" and CId like '%"+id+"%'";
		if(weekNum!=null&&!weekNum.equals(""))
			hql=hql+" and CWeek like '%"+weekNum+"%'";
		if(sn!=null&&!sn.equals(""))
			hql=hql+" and CSn like '%"+sn+"%'";
		if(dates!=null&&!dates.equals(""))
			hql=hql+" and CChangeDate >='"+dates+"'";
		if(datee!=null&&!dates.equals(""))
			hql=hql+" and CChangeDate <='"+datee+"'";
		hql=hql+" order by CChangeDate desc";
		pdas=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result_pda;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtPdaChange where CState = '有效'  order by CCreateTime desc CChangeDate desc";
		pdas=ser.query(hql, null, hql, page, ser);
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
			pdachange.setCState("无效");
			ser.update(pdachange);
			
			pda.setCId("c"+NameOfDate.getNum());
			pda.setCDate(pdachange.getCDate());
			pda.setCChangeDate(new Date());
			pda.setCCreateTime(new Timestamp(new Date().getTime()));
			pda.setCWeek(pdachange.getCWeek());
			pda.setCState("有效");
			Users users=(Users) getSession().getAttribute("user");
			if(users!=null){
				pda.setCIt(users.getUName());
				pda.setUNum(users.getUNum());
			}
			ser.save(pda);
			getRequest().setAttribute("pda", pda);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		String email = getRequest().getParameter("email");
		if(pda!=null){
			Users users=(Users) getSession().getAttribute("user");
			pda.setCId("c"+NameOfDate.getNum());
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			pda.setCWeek(ca.get(Calendar.WEEK_OF_YEAR));
			pda.setCCreateTime(new Timestamp(date.getTime()));
			pda.setCState("有效");
			pda.setUNum(users.getUNum());
			if(pda.getCResult()!=null&&pda.getCReceiveMan()!=null
					&&!pda.getCResult().trim().equals("")
					&&!pda.getCReceiveMan().trim().equals("")){
				pda.setCIt(users.getUName());
				pda.setCChangeDate(new Date());
			}
			ser.save(pda);
			if(email.equals("是")){
				System.out.println("----成功进入");
				pdaChangeSer.outEmail(users, pda);
			}
			getRequest().setAttribute("pda", pda);
		}
		return gotoQuery();
	}	

	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		pdaChangeSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
