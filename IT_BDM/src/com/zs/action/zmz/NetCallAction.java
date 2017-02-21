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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.ZmNetCall;
import com.zs.service.IService;
import com.zs.service.iDataImportNewService;
import com.zs.service.iXtNetImoService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class NetCallAction extends MyBaseAction{
	
	private IService ser;
	private iDataImportNewService importSer;
	private Page page;
	private ZmNetCall c;
	private List<ZmNetCall> ncs;
	private String result_b="netCall";
	private String id;
	private String cz;
	private String site;
	private String num;
	private String phone;
	private String dates;
	private String datee;
	private String childNumStart;
	private String childNumEnd;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	private String newcall;
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public ZmNetCall getC() {
		return c;
	}
	public void setC(ZmNetCall c) {
		this.c = c;
	}
	public List<ZmNetCall> getNcs() {
		return ncs;
	}
	public void setNcs(List<ZmNetCall> ncs) {
		this.ncs = ncs;
	}
	public String getChildNumStart() {
		return childNumStart;
	}
	public void setChildNumStart(String childNumStart) {
		this.childNumStart = childNumStart;
	}
	public String getChildNumEnd() {
		return childNumEnd;
	}
	public void setChildNumEnd(String childNumEnd) {
		this.childNumEnd = childNumEnd;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public iDataImportNewService getImportSer() {
		return importSer;
	}
	public void setImportSer(iDataImportNewService importSer) {
		this.importSer = importSer;
	}
	public String getNewcall() {
		return newcall;
	}
	public void setNewcall(String newcall) {
		this.newcall = newcall;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		num=null;
		site=null;
		phone=null;
		dates=null;
		datee=null;
		newcall=null;
		c=null;
		ncs=null;
		cz=null;
		if (page==null) {
			page=new Page(1, 0, 15);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(num!=null){
			num=num.trim();
		}
		if(site!=null){
			site=site.trim();
		}
		if(phone!=null){
			phone=phone.trim();
		}
		if(cz!=null){
			cz = cz.trim();
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
		String hql="from ZmNetCall where NState='有效'";
		if (id!=null&&!id.equals(""))
			hql=hql+" and NId like '%"+id+"%'";
		if (num!=null && !num.equals(""))
			hql=hql+" and NNumber like '%"+num+"%'";
		if (site!=null && !site.equals(""))
			hql=hql+" and NSite like '%"+site+"%'";
		if (phone!=null && !phone.equals(""))
			hql=hql+" and NPhone like '%"+phone+"%'";
		if (dates!=null && !dates.equals("")) 
			hql=hql+" and NServiceDate >= '"+dates+"'";
		if (datee!=null && !datee.equals("")) 
			hql=hql+" and NServiceDate <= '"+datee+"'";
		if(newcall!=null && !newcall.equals("")){
			hql=hql+" order by NCallAll desc";
		}else{
			hql=hql+" order by NCreateDate desc";
		}
		ncs=ser.query(hql, null, hql, page, ser);
		return result_b;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmNetCall where NState='有效' order by NCreateDate desc";
		ncs=ser.query(hql, null, hql, page, ser);
		return result_b;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			c=(ZmNetCall) ser.get(ZmNetCall.class, id);
			ser.delete(c);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		if(c!=null && c.getNId()!=null && !"".equals(c.getNId().trim())){
			ZmNetCall znc = (ZmNetCall) ser.get(ZmNetCall.class, c.getNId());
			znc.setNState("无效");
			ser.update(znc);
			getRequest().setAttribute("znc", znc);
			
			c.setNId("i"+NameOfDate.getNum());
			c.setNCreateDate(new Timestamp(new Date().getTime()));
			Calendar ca = Calendar.getInstance();
			ca.setTime(c.getNServiceDate());
			c.setNServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			Users users=(Users) getSession().getAttribute("user");
			if(users!=null){
				c.setNIt(users.getUName());
				c.setUNum(users.getUNum());
			}
			c.setNState("有效");
			ser.save(c);
			getRequest().setAttribute("c", c);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		if(c!=null){
			c.setNId("c"+NameOfDate.getNum());
			c.setNCreateDate(new Timestamp(new Date().getTime()));
			Calendar ca = Calendar.getInstance();
			ca.setTime(c.getNServiceDate());
			c.setNServiceWeek(ca.get(Calendar.WEEK_OF_YEAR));
			Users users=(Users) getSession().getAttribute("user");
			if(users!=null){
				c.setNIt(users.getUName());
				c.setUNum(users.getUNum());
			}
			c.setNState("有效");
			ser.save(c);
			getRequest().setAttribute("c", c);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
