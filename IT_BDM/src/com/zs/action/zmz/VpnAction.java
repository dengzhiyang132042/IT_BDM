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

	//------------------------------------------------
	private void clearOptions() {
		id=null;     
		num=null;    
		name=null;   
		section=null;
		dates=null;  
		datee=null;  
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
		
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException, ParseException {
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
			String hql="from ZmVpn where VId like '%"+id+"%'";
			if (num!=null && !num.trim().equals("")) {
				hql=hql+" and VNum like '%"+num+"%'";
			}
			if (name!=null && !name.trim().equals("")) {
				hql=hql+" and VName like '%"+name+"%'";
			}
			if (section!=null && !section.trim().equals("")) {
				hql=hql+" and VSection like '%"+section+"%'";
			}
			if (dates!=null && !dates.trim().equals("")) {
				hql=hql+" and VDate >= '"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql=hql+" and VDate <= '"+datee+"'";
			}
			hql=hql+" order by VDate desc";
			vpns=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmVpn order by VDate desc";
			String ss[]={};
			String hql2="from ZmVpn order by VDate desc";
			vpns=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmVpn order by VDate desc";
		String ss[]={};
		String hql2="from ZmVpn order by VDate desc";
		vpns=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
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
			vpn.setVDate(zmVpn.getVDate());
			ser.update(vpn);
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
