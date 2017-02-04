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

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmOaNumber;
import com.zs.entity.ZmPrinter;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PrintAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	Page page;
	iDataImportService importSer;
	
	ZmPrinter p;
	List ps;
	
	String result="print";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String brand;
	String ip;
	String address;
	String cz;
	
	private Logger logger=Logger.getLogger(PrintAction.class);
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
//----------------------------------------------------------------------------------	
	
	public IService getSer() {
		return ser;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public ZmPrinter getP() {
		return p;
	}
	public void setP(ZmPrinter p) {
		this.p = p;
	}
	public List getPs() {
		return ps;
	}
	public void setPs(List ps) {
		this.ps = ps;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	//----------------------------------------------------------------------------------
	public String add() throws Exception {
		if (p!=null) {
			p.setPId("p"+NameOfDate.getNum());
			p.setPCreateTime(new Timestamp(new Date().getTime()));
			p.setPServiceType("注册");
			p.setPState("有效");
			Users us = (Users) getSession().getAttribute("user");
			p.setUNum(us.getUNum());
			ser.save(p);
			getRequest().setAttribute("p", p);
		}
		clearOptions();
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		brand=null;
		address=null;
		ip=null;
		p=null;
		ps=null;
		cz=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			p=(ZmPrinter) ser.get(ZmPrinter.class, id);
			ser.delete(p);
		}
		clearOptions();
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from ZmPrinter where PState='有效' order by PCreateTime desc , PLast desc";
		ps=ser.query(hql, null, hql, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from ZmPrinter where PState='有效'";
		if(id!=null&&!id.equals("")){
			hql=hql+" and PId like '%"+id+"%'";
		}
		if(brand!=null&&!brand.equals("")){
			hql=hql+" and PBrand like '%"+brand+"%'";
		}
		if(address!=null&&!address.equals("")){
			hql=hql+" and PAddress like '%"+address+"%'";
		}
		if(ip!=null&&!ip.equals("")){
			hql=hql+" and PIp like '%"+ip+"%'";
		}
		hql=hql+" order by PCreateTime desc , PLast desc";
		ps=ser.query(hql, null, hql, page, ser);
		return result;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (brand!=null) {
			brand=brand.trim();
		}
		if (address!=null) {
			address=address.trim();
 		}
		if (ip!=null) {
			ip=ip.trim();
		}
		if(cz!=null){
			cz = cz.trim();
		}
	}

	public String update() throws Exception {
		if(p!=null && p.getPId()!=null && !"".equals(p.getPId().trim())){
			ZmPrinter zp = (ZmPrinter) ser.get(ZmPrinter.class, p.getPId());
			zp.setPState("无效");
			ser.update(zp);
			getRequest().setAttribute("zp", zp);
			
			p.setPId("p"+NameOfDate.getNum());
			p.setPCreateTime(new Timestamp(new Date().getTime()));
			p.setPServiceType("维护");
			p.setPState("有效");
			Users us = (Users) getSession().getAttribute("user");
			p.setUNum(us.getUNum());
			ser.save(p);
			getRequest().setAttribute("p", p);
		}
		clearOptions();
		return gotoQuery();
	}
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
	
}
