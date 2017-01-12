package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ZmNumberAction extends MyBaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Logger logger=Logger.getLogger(ZmNumberAction.class);
	IService ser;
	iXtZmNumberService xtZmNumberSer;
	Page page;
	
	XtZmNumber zmn;
	List<XtZmNumber> zmns;
	
	String result="zmn";
	
	String id;
	String cz;
	String section;
	String men;
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
	public iXtZmNumberService getXtZmNumberSer() {
		return xtZmNumberSer;
	}
	public void setXtZmNumberSer(iXtZmNumberService xtZmNumberSer) {
		this.xtZmNumberSer = xtZmNumberSer;
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
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getMen() {
		return men;
	}
	public void setMen(String men) {
		this.men = men;
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
	public XtZmNumber getZmn() {
		return zmn;
	}
	public void setZmn(XtZmNumber zmn) {
		this.zmn = zmn;
	}
	public List<XtZmNumber> getZmns() {
		return zmns;
	}
	public void setZmns(List<XtZmNumber> zmns) {
		this.zmns = zmns;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		cz=null;
		section=null;
		men=null;
		dates=null;
		datee=null; 
		zmn=null;
		zmns=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		id=id==null?null:id.trim();
		section=section==null?null:section.trim();
		men=men==null?null:men.trim();
		dates=dates==null?null:dates.trim();
		datee=datee==null?null:datee.trim();
		cz=cz==null?null:cz.trim();
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from XtZmNumber where zmState='有效' ";
		if (id!=null && !id.equals("")) 
			hql=hql+"and zmId like '%"+id+"%' ";
		if (section!=null && !section.trim().equals("")) 
			hql=hql+"and zmApplyCs like '%"+section+"%' ";
		if (men!=null && !men.trim().equals("")) 
			hql=hql+"and zmApplyMaster like '%"+men+"%' ";
		if (dates!=null && !dates.trim().equals("")) 
			hql=hql+"and zmApplyDate >= '"+dates+"' ";
		if (datee!=null && !datee.trim().equals("")) 
			hql=hql+"and zmApplyDate <= '"+datee+"' ";
		hql=hql+" order by zmCreateTime desc,zmServiceDate desc"; 
		zmns=ser.query(hql, null, hql, page, ser);
		/*老版tree方法——已不用
		//带上通讯录信息
		getRequest().setAttribute("html", ser.fitting1(ser.queryFirst()));
		*/
		//新版——自动补全
		ser.querySection(getRequest());
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtZmNumber where zmState='有效' order by zmCreateTime desc,zmServiceDate desc";
		zmns=ser.query(hql, null, hql, page, ser);
		/*老版tree方法——已不用
		//带上通讯录信息
		getRequest().setAttribute("html", ser.fitting1(ser.queryFirst()));
		*/
		//新版——自动补全
		ser.querySection(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			zmn=(XtZmNumber) ser.get(XtZmNumber.class, id);
			ser.delete(zmn);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(zmn!=null && zmn.getZmId()!=null && !"".equals(zmn.getZmId().trim())){
			XtZmNumber number=(XtZmNumber) ser.get(XtZmNumber.class, zmn.getZmId());
			number.setZmState("无效");
			ser.update(number);
			getRequest().setAttribute("number", number);
			
			zmn.setZmId(NameOfDate.getNum());
			zmn.setZmServiceMaster(number.getZmServiceMaster());
			zmn.setZmApplyDate(number.getZmApplyDate());
			zmn.setZmServiceDate(number.getZmServiceDate());
			zmn.setZmServiceWeek(number.getZmServiceWeek());
			zmn.setZmCreateTime(new Timestamp(new Date().getTime()));
			zmn.setZmState("有效");
			zmn.setUNum(user.getUNum());
			ser.save(zmn);
			
			getRequest().setAttribute("zmn", zmn);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(zmn!=null){
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			zmn.setZmId("n"+NameOfDate.getNum());
			zmn.setZmApplyDate(new Timestamp(date.getTime()));
			zmn.setZmServiceDate(new Timestamp(date.getTime()));
			zmn.setZmServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			if (user!=null)
				zmn.setZmServiceMaster(user.getUName());
			zmn.setZmCreateTime(new Timestamp(new Date().getTime()));
			zmn.setZmState("有效");
			zmn.setUNum(user.getUNum());
			
			ser.save(zmn);
			getRequest().setAttribute("zmn", zmn);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users user=(Users) getSession().getAttribute("user");
		xtZmNumberSer.importExcelData(fileExcelFileName, fileExcel,user.getUNum());
		return gotoQuery();
	}
	
}
 