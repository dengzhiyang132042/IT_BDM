package com.zs.action.zmz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.ZmWifi;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class WifiAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	
	ZmWifi wifi;
	List<ZmWifi> wifis;
	


	String result="wifi";
	String result_succ="succ";
	String result_fail="fail";
	
	String cz;
	String id;
	String WIp;
	String WAddress;
	String WSsid;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWIp() {
		return WIp;
	}

	public void setWIp(String wIp) {
		WIp = wIp;
	}

	public String getWAddress() {
		return WAddress;
	}

	public void setWAddress(String wAddress) {
		WAddress = wAddress;
	}

	public String getWSsid() {
		return WSsid;
	}

	public void setWSsid(String wSsid) {
		WSsid = wSsid;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public IService getSer() {
		return ser;
	}

	public void setSer(IService ser) {
		this.ser = ser;
	}

	public ZmWifi getWifi() {
		return wifi;
	}

	public void setWifi(ZmWifi wifi) {
		this.wifi = wifi;
	}

	public List<ZmWifi> getWifis() {
		return wifis;
	}

	public void setWifis(List<ZmWifi> wifis) {
		this.wifis = wifis;
	}

	public String getCz() {
		return cz;
	}

	public void setCz(String cz) {
		this.cz = cz;
	}

	private Logger logger=Logger.getLogger(WifiAction.class);
	
	
	//**********************************************
	public void clearOptions() {
		id=null;
		WAddress=null;
		WIp=null;
		WSsid=null;
		cz=null;
		wifi=null;
		wifis=null;
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
		if(WAddress!=null){
			WAddress=WAddress.trim();
		}
		if(WIp!=null){
			WIp=WIp.trim();
		}	
		if(WSsid!=null){
			WSsid=WSsid.trim();
		}
		if(cz!=null){
			cz = cz.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql2="from ZmWifi where WState='有效'  order by WCreateTime desc , WDate desc";
		wifis=ser.query(hql2, null, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql2="from ZmWifi where WState='有效'";
		if(id!=null&&!id.equals("")){
			 hql2=hql2 + " and WId like '%"+id+"%'";
		}
		if(WAddress!=null&&!WAddress.equals("")){
			hql2=hql2+" and WAddress like '%"+WAddress+"%'";
		}
		if(WIp!=null&&!WIp.equals("")){
			hql2=hql2+" and WIp like '%"+WIp+"%'";
		}
		if(WSsid!=null&&!WSsid.equals("")){
			hql2=hql2+" and WSsid like '%"+WSsid+"%'";
		}
		hql2=hql2+" order by WCreateTime desc , WDate desc";
		wifis=ser.query(hql2, null, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		if(wifi!=null){
			wifi.setWId("w"+NameOfDate.getNum());
			Date date=new Date();
			wifi.setWDate(new Timestamp(date.getTime()));
			wifi.setWType("注册");
			wifi.setWCreateTime(new Timestamp(new Date().getTime()));
			wifi.setWState("有效");
			Users us = (Users) getSession().getAttribute("user");
			wifi.setUNum(us.getUNum());
			ser.save(wifi);
			getRequest().setAttribute("wifi", wifi);
		}
		return gotoQuery();
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			wifi=(ZmWifi) ser.get(ZmWifi.class, id);
			ser.delete(wifi);
		}
		return gotoQuery();
	}

	public String update() throws Exception {
		clearSpace();
		if(wifi!=null && wifi.getWId()!=null && !"".equals(wifi.getWId().trim())){
			ZmWifi ZmWifi=(ZmWifi) ser.get(ZmWifi.class, wifi.getWId());
			ZmWifi.setWState("无效");
			ser.update(ZmWifi);
			
			wifi.setWId("w"+NameOfDate.getNum());
			wifi.setWDate(ZmWifi.getWDate());
			wifi.setWType("维护");
			wifi.setWCreateTime(new Timestamp(new Date().getTime()));
			wifi.setWState("有效");
			Users us = (Users) getSession().getAttribute("user");
			wifi.setUNum(us.getUNum());
			ser.save(wifi);
			
			getRequest().setAttribute("wifi", wifi);
		}
		return gotoQuery();
	}

	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
