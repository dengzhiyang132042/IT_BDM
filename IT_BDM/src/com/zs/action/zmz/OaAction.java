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
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;
import com.zs.service.iDataImportService;

public class OaAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	
	ZmOaNumber oa;
	List oas;
	
	String result="oa";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String section;
	String apply;
	String num;
	String dates;
	String datee;
	
	private Logger logger=Logger.getLogger(OaAction.class);
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

	public ZmOaNumber getOa() {
		return oa;
	}

	public void setOa(ZmOaNumber oa) {
		this.oa = oa;
	}

	public List getOas() {
		return oas;
	}

	public void setOas(List oas) {
		this.oas = oas;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getApply() {
		return apply;
	}

	public void setApply(String apply) {
		this.apply = apply;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
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

//----------------------------------------------------------------------------------	
	
	public String add() throws Exception {
		if (oa!=null) {
			oa.setOId("o"+NameOfDate.getNum());
			ser.save(oa);
			getRequest().setAttribute("oa", oa);
		}
		oa=null;
		clearOptions();
		return gotoQuery();
	}

	public void clearOptions() {
		id=null;
		section=null;
		apply=null;
		num=null;
		dates=null;
		datee=null;
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			oa=(ZmOaNumber) ser.get(ZmOaNumber.class, id);
			ser.delete(oa);
		}
		oa=null;
		clearOptions();
		return gotoQuery();
	}
	public String importExcel() throws InterruptedException, IOException, ParseException {
		importSer.importExcelData(fileExcelFileName, fileExcel);
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		String hql="from ZmOaNumber order by ODate desc";
		String ss[]={};
		String hql2="from ZmOaNumber order by ODate desc";
		oas=ser.query(hql, ss, hql2, page, ser);
		return result;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 15);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 15);
			clearOptions();
		}
		clearSpace();
		if(id!=null){
			String hql="from ZmOaNumber where OId like '%"+id+"%'";
			if(section!=null && !"".equals(section)){
				hql=hql+" and OSection like '%"+section+"%'";
			}
			if(num!=null && !"".equals(num)){
				hql=hql+" and OOa like '%"+num+"%'";
			}
			if(apply!=null && !"".equals(apply)){
				hql=hql+" and OApply like '%"+apply+"%'";
			}
			if(dates!=null && !"".equals(dates)){
				hql=hql+" and ODate >= '"+dates+"'";
			}
			if(datee!=null && !"".equals(datee)){
				hql=hql+" and ODate <= '"+datee+"'";
			}
			hql=hql+" order by ODate desc";
			oas=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from ZmOaNumber order by ODate desc";
			String ss[]={};
			String hql2="from ZmOaNumber order by ODate desc";
			oas=ser.query(hql, ss, hql2, page, ser);
		}
		return result;
	}

	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (apply!=null) {
			apply=apply.trim();
		}
		if (section!=null) {
			section=section.trim();
		}
		if (num!=null) {
			num=num.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
	}

	public String update() throws Exception {
		if(oa!=null && oa.getOId()!=null && !"".equals(oa.getOId().trim())){
			ser.update(oa);
			getRequest().setAttribute("oa", oa);
		}
		oa=null;
		clearOptions();
		return gotoQuery();
	}
	
}
