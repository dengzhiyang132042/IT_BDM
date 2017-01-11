package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import sun.security.provider.IdentityDatabase;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.WhDeviceScout;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class DeviceAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	private iDataImportService importSer;
	private Page page;
	private String result="device";
	private String id;
	private String cz;
	private WhDeviceScout device;
	private List<WhDeviceScout> devices;
	private String dates;
	private String datee;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public WhDeviceScout getDevice() {
		return device;
	}
	public void setDevice(WhDeviceScout device) {
		this.device = device;
	}
	public List<WhDeviceScout> getDevices() {
		return devices;
	}
	public void setDevices(List<WhDeviceScout> devices) {
		this.devices = devices;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	//-------------------------------------------
	public String add() throws Exception {
		String dTime=getRequest().getParameter("d_time");
		device.setDId("d"+NameOfDate.getNum());
		device.setDDate(new Date());
		Users user=(Users) getSession().getAttribute("user");
		if (user!=null && dTime!=null) {
 			device.setDIt(user.getUName());
 			String da1=new SimpleDateFormat("yyyy-MM-dd").format(device.getDDate());
 			Timestamp tit=new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(da1+" "+dTime).getTime());
 			device.setDTime(tit);
 			device.setDCreateTime(new Timestamp(new Date().getTime()));
 			device.setDType("维护");
 			device.setDState("有效");
 			device.setUNum(user.getUNum());
 			ser.save(device);
 			getRequest().setAttribute("device", device);
		}
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		dates=null;
		datee=null;
		cz=null;
		device=null;
		devices=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}

	public String delete() throws Exception {
		device=(WhDeviceScout) ser.get(WhDeviceScout.class, id);
		if (device!=null) {
			ser.delete(device);
		}
		device=null;
		clearOptions();
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhDeviceScout where DState = '有效' order by DCreateTime desc DTime desc";
		devices=ser.query(hql, null, hql, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from WhDeviceScout where DState = '有效' ";
		if (id!=null&&!id.equals("")) {
			hql=hql+" and DId like '%"+id+"%'";
		}
		if(dates!=null&&!dates.equals("")){
			hql=hql+" and DDate >='"+dates+"'";
		}
		if(datee!=null&&!datee.equals("")){
			hql=hql+" and DDate <='"+datee+"'";
		}
		hql=hql+" order by DCreateTime desc DTime desc";
		devices=ser.query(hql, null, hql, page, ser);
		return result;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
		if (cz!=null){
			cz=cz.trim();
		}
	}

	public String update() throws Exception {
		WhDeviceScout device2=(WhDeviceScout) ser.get(WhDeviceScout.class, device.getDId());
		device2.setDState("无效");
		ser.update(device2);
		getRequest().setAttribute("device2", device2);
		
		device.setDId("d"+NameOfDate.getNum());
		String dTime=getRequest().getParameter("d_time");
		device.setDDate(device2.getDDate());
		device.setDIt(device2.getDIt());
		Users user=(Users) getSession().getAttribute("user");
		if (dTime!=null) {
 			String da1=new SimpleDateFormat("yyyy-MM-dd").format(device.getDDate());
 			Timestamp tit=new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(da1+" "+dTime).getTime());
 			device.setDIt(user.getUName());
 			device.setDTime(tit);
 			device.setDCreateTime(new Timestamp(new Date().getTime()));
 			device.setDType("维护");
 			device.setDState("有效");
 			device.setUNum(user.getUNum());
 			ser.save(device);
 			getRequest().setAttribute("device", device);
		}
		return gotoQuery();
	}
	public String importExcel() throws UnsupportedEncodingException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
