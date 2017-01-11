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
import com.zs.entity.WhThreeMeetingScout;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class ThreeMeetAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	private iDataImportService importSer;
	private Page page;
	private String result="threeMeet";
	private String id;
	private String cz;
	private WhThreeMeetingScout tm;
	private List<WhThreeMeetingScout> tms;
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
	public WhThreeMeetingScout getTm() {
		return tm;
	}
	public void setTm(WhThreeMeetingScout tm) {
		this.tm = tm;
	}
	public List<WhThreeMeetingScout> getTms() {
		return tms;
	}
	public void setTms(List<WhThreeMeetingScout> tms) {
		this.tms = tms;
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
		if (user!=null && tm!=null && tm.getTDate()!=null) {
			tm.setTId("t"+NameOfDate.getNum());
			tm.setTIt(user.getUName());
			tm.setTCreateTime(new Timestamp(new Date().getTime()));
			tm.setTType("维护");
			tm.setTState("有效");
			tm.setUNum(user.getUNum());
			ser.save(tm);
			getRequest().setAttribute("tm",tm);
		}
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		cz=null;
		dates=null;
		datee=null;
		tm=null;
		tms=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			tm=(WhThreeMeetingScout) ser.get(WhThreeMeetingScout.class, id);
			if (tm!=null) {
				ser.delete(tm);
			}
		}
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearSpace();
		clearOptions();
		String hql="from WhThreeMeetingScout where TState =  '有效' order by TCreateTime desc TDate desc";
		tms=ser.query(hql, null, hql, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from WhThreeMeetingScout where TState =  '有效' ";
		if (id!=null&&!id.equals("")) {
			hql=hql+" and TId like '%"+id+"%'";
		}
		if(dates!=null&&!dates.equals("")){
			hql=hql+" and TDate >='"+dates+"'";
		}
		if(datee!=null&&!datee.equals("")){
			hql=hql+" and TDate <='"+datee+" 23:59:59'";
		}
		hql=hql+" order by TCreateTime desc TDate desc";
		tms=ser.query(hql, null, hql, page, ser);
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
		WhThreeMeetingScout tmp = (WhThreeMeetingScout) ser.get(WhThreeMeetingScout.class, tm.getTId());
		tmp.setTState("无效");
		ser.update(tmp);
		getRequest().setAttribute("tmp",tmp);
		
		Users user=(Users) getSession().getAttribute("user");
		if (tm!=null) {
			tm.setTId("t"+NameOfDate.getNum());
			tm.setTIt(user.getUName());
			tm.setTCreateTime(new Timestamp(new Date().getTime()));
			tm.setTType("维护");
			tm.setTState("有效");
			tm.setUNum(user.getUNum());
			ser.save(tm);
			getRequest().setAttribute("tm",tm);
		}
		return gotoQuery();
	}
	public String importExcel() throws UnsupportedEncodingException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
}
