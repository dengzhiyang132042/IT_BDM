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

	private Logger logger=Logger.getLogger(WifiAction.class);
	
	
	//**********************************************
	public void clearOptions() {
		id=null;
		WAddress=null;
		WIp=null;
		WSsid=null;
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
		if(id!=null){
			String hql2="from ZmWifi where WId like '%"+id+"%'";
			if(WAddress!=null){
				hql2=hql2+" and WAddress like '%"+WAddress+"%'";
			}
			if(WIp!=null){
				hql2=hql2+" and WIp like '%"+WIp+"%'";
			}
			if(WSsid!=null){
				hql2=hql2+" and WSsid like '%"+WSsid+"%'";
			}
			wifis=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from ZmWifi order by WDate desc";
			String ss[]={};
			String hql2="from ZmWifi order by WDate desc";
			wifis=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		if(wifi!=null){
			wifi.setWId("w"+NameOfDate.getNum());
			Date date=new Date();
			wifi.setWDate(new Timestamp(date.getTime()));
			ser.save(wifi);
			getRequest().setAttribute("wifi", wifi);
		}
		wifi=null;
		return gotoQuery();
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			wifi=(ZmWifi) ser.get(ZmWifi.class, id);
			ser.delete(wifi);
		}
		wifi=null;
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmWifi order by WDate desc";
		String ss[]={};
		String hql2="from ZmWifi order by WDate desc";
		wifis=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}

	public String update() throws Exception {
		if(wifi!=null && wifi.getWId()!=null && !"".equals(wifi.getWId().trim())){
			ZmWifi ZmWifi=(ZmWifi) ser.get(ZmWifi.class, wifi.getWId());
			wifi.setWDate(ZmWifi.getWDate());
			ser.update(wifi);
			getRequest().setAttribute("wifi", wifi);
		}
		wifi=null;
		return gotoQuery();
	}

	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
