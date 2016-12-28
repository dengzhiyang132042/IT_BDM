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
import com.zs.entity.WhOutRepair;
import com.zs.entity.WhThreeMeetingScout;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class OutAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	private iDataImportService importSer;
	private Page page;
	private String result="out";
	private String id;
	private String cz;
	private WhOutRepair ot;
	private List<WhOutRepair> ots;
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public WhOutRepair getOt() {
		return ot;
	}
	public void setOt(WhOutRepair ot) {
		this.ot = ot;
	}
	public List<WhOutRepair> getOts() {
		return ots;
	}
	public void setOts(List<WhOutRepair> ots) {
		this.ots = ots;
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
		clearSpace();
		if (ot!=null && ot.getODate()!=null) {
			ot.setOId("o"+NameOfDate.getNum());
			ot.setOCreateDatetime(new Timestamp(new Date().getTime()));
			ser.save(ot);
		}
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		cz=null;
		dates=null;
		datee=null;
		ot=null;
		ots=null;
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			ot=(WhOutRepair) ser.get(WhOutRepair.class, id);
			if (ot!=null) {
				ser.delete(ot);
			}
		}
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearSpace();
		clearOptions();
		String hql="from WhOutRepair order by OCreateDatetime desc";
		ots=ser.query(hql, null, hql, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
			page=new Page(1, 0, 5);
		}
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from WhOutRepair where OId like '%"+id+"%'";
			if(dates!=null&&!dates.equals("")){
				hql=hql+" and ODate >='"+dates+"'";
			}
			if(datee!=null&&!datee.equals("")){
				hql=hql+" and ODate <='"+datee+"'";
			}
			hql=hql+" order by OCreateDatetime desc";
			ots=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from WhOutRepair order by OCreateDatetime desc";
			ots=ser.query(hql, null, hql, page, ser);
		}
		return result;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (cz!=null) {
			cz=cz.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
	}

	public String update() throws Exception {
		clearSpace();
		if (ot!=null) {
 			ser.update(ot);
		}
		return gotoQuery();
	}
	public String importExcel() throws UnsupportedEncodingException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
