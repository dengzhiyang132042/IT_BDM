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

import javax.xml.registry.infomodel.User;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iVpnService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class VpnAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	iDataImportService vpnSer;
	Page page;
	
	ZmVpn vpn;
	List<ZmVpn> vpns;
	
	String result="vpn";
	String result_succ="succ";
	String result_fail="fail";
	String id;
	String num;
	String name;
	String section;
	String dates;
	String datee;
	String cz;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	private Logger logger= Logger.getLogger(VpnAction.class);
	
	
	
	public iDataImportService getVpnSer() {
		return vpnSer;
	}
	public void setVpnSer(iDataImportService vpnSer) {
		this.vpnSer = vpnSer;
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
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
	public ZmVpn getVpn() {
		return vpn;
	}
	public void setVpn(ZmVpn vpn) {
		this.vpn = vpn;
	}
	public List<ZmVpn> getVpns() {
		return vpns;
	}
	public void setVpns(List<ZmVpn> vpns) {
		this.vpns = vpns;
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
		num=null;    
		name=null;   
		section=null;
		dates=null;  
		datee=null;  
		cz=null;
		vpn=null;
		vpns=null;
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
		if(num!=null){
			num=num.trim();
		}
		if(name!=null){
			name=name.trim();
		}
		if(section!=null){
			section=section.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException, ParseException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from ZmVpn where VState='有效'";
		if (id!=null&&!id.equals("")) {
			hql=hql+" VId like '%"+id+"%'";
		}
		if (num!=null && !num.equals("")) {
			hql=hql+" and VNum like '%"+num+"%'";
		}
		if (name!=null && !name.equals("")) {
			hql=hql+" and VName like '%"+name+"%'";
		}
		if (section!=null && !section.equals("")) {
			hql=hql+" and VSection like '%"+section+"%'";
		}
		if (dates!=null && !dates.equals("")) {
			hql=hql+" and VDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.equals("")) {
			hql=hql+" and VDate <= '"+datee+"'";
		}
		hql=hql+" order by VCreateTime desc , VDate desc";
		vpns=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmVpn where VState='有效' order by VCreateTime desc , VDate desc";
		vpns=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			vpn=(ZmVpn) ser.get(ZmVpn.class, id);
			ser.delete(vpn);
		}
		vpn=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(vpn!=null && vpn.getVId()!=null && !"".equals(vpn.getVId().trim())){
			ZmVpn zmVpn=(ZmVpn) ser.get(ZmVpn.class, vpn.getVId());
			zmVpn.setVState("无效");
			ser.update(zmVpn);
			getRequest().setAttribute("zmVpn", zmVpn);
			
			Users users=(Users) getSession().getAttribute("user");
			vpn.setVId("v"+NameOfDate.getNum());
			vpn.setVDate(new Date());
			vpn.setVCreateTime(new Timestamp(new Date().getTime()));
			vpn.setUNum(users.getUNum());
			vpn.setVIt(users.getUName());
			vpn.setVState("有效");
			ser.save(vpn);
			getRequest().setAttribute("vpn", vpn);
		}
		vpn=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(vpn!=null){
			vpn.setVId("v"+NameOfDate.getNum());
			Date date=new Date();
			vpn.setVDate(new Timestamp(date.getTime()));
			Users users=(Users) getSession().getAttribute("user"); 
			vpn.setVCreateTime(new Timestamp(new Date().getTime()));
			vpn.setUNum(users.getUNum());
			vpn.setVIt(users.getUName());
			vpn.setVState("有效");
			ser.save(vpn);
			getRequest().setAttribute("vpn", vpn);
		}
		vpn=null;
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		vpnSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
