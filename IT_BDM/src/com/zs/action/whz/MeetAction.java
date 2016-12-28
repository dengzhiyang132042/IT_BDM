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
import com.zs.entity.WhMeetingScout;
import com.zs.entity.WhThreeMeetingScout;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class MeetAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	private iDataImportService importSer;
	private Page page;
	private String result="meet";
	private String id;
	private String cz;
	private WhMeetingScout m;
	private List<WhMeetingScout> ms;
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
	public WhMeetingScout getM() {
		return m;
	}
	public void setM(WhMeetingScout m) {
		this.m = m;
	}
	public List<WhMeetingScout> getMs() {
		return ms;
	}
	public void setMs(List<WhMeetingScout> ms) {
		this.ms = ms;
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
		Users user=(Users) getSession().getAttribute("user");
		if (user!=null && m!=null && m.getMDate()!=null) {
			m.setMId("m"+NameOfDate.getNum());
			m.setMIt(user.getUName());
			ser.save(m);
		}
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		cz=null;
		dates=null;
		datee=null;
		m=null;
		ms=null;
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			m=(WhMeetingScout) ser.get(WhMeetingScout.class, id);
			if (m!=null) {
				ser.delete(m);
			}
		}
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearSpace();
		clearOptions();
		String hql="from WhMeetingScout order by MDate desc";
		ms=ser.query(hql, null, hql, page, ser);
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
			String hql="from WhMeetingScout where MId like '%"+id+"%'";
			if(dates!=null&&!dates.equals("")){
				hql=hql+" and MDate >='"+dates+"'";
			}
			if(datee!=null&&!datee.equals("")){
				hql=hql+" and MDate <='"+datee+" 23:59:59'";
			}
			hql=hql+" order by MDate desc";
			ms=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from WhMeetingScout order by MDate desc";
			ms=ser.query(hql, null, hql, page, ser);
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
		if (m!=null) {
 			ser.update(m);
		}
		return gotoQuery();
	}
	public String importExcel() throws UnsupportedEncodingException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
