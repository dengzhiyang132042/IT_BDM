package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
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
	//-------------------------------------------
	public String add() throws Exception {
		device.setDId("d"+NameOfDate.getNum());
		device.setDDate(new Date());
		Users user=(Users) getSession().getAttribute("user");
		if (user!=null && device.getDTime()!=null) {
 			device.setDIt(user.getUName());
			ser.save(device);
		}
		device=null;
		return gotoQuery();
	}

	public void clearOptions() {
		if (id!=null) {
			id=null;
		}
		if (dates!=null) {
			dates=null;
		}
		if (datee!=null) {
			datee=null;
		}
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		device=(WhDeviceScout) ser.get(WhDeviceScout.class, id);
		if (device!=null) {
			ser.delete(device);
		}
		device=null;
		clearOptions();
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from WhDeviceScout order by DTime desc";
		devices=ser.query(hql, null, hql, page, ser);
		return result;
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
			String hql="from WhDeviceScout where DId like '%"+id+"%'";
			if(dates!=null&&!dates.equals("")){
				hql=hql+" and DDate >='"+dates+"'";
			}
			if(datee!=null&&!datee.equals("")){
				hql=hql+" and DDate <='"+datee+"'";
			}
			hql=hql+" order by DTime desc";
			devices=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from WhDeviceScout order by DTime desc";
			devices=ser.query(hql, null, hql, page, ser);
		}
		ser.receiveStructure(getRequest());
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
	}

	public String update() throws Exception {
		WhDeviceScout device2=(WhDeviceScout) ser.get(WhDeviceScout.class, device.getDId());
		device.setDDate(device2.getDDate());
		device.setDIt(device2.getDIt());
		ser.update(device);
		device=null;
		return gotoQuery();
	}
	public String importExcel() throws UnsupportedEncodingException {
		importSer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
}
