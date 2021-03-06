package com.zs.action.whz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.WhMassageReceive;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.WhTimeliness;
import com.zs.entity.XtPdaLoss;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.service.iWhTimelineService;
import com.zs.service.iXtPdaLossService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class MassageAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Logger log=Logger.getLogger(MassageAction.class); 
	IService ser;
	iDataImportService importSer;
	iWhTimelineService tlSer;
	Page page;
	
	WhMassageReceive massage;
	List<WhMassageReceive> massages;
	String result="massage";
	String id;
	String cz;
	String dates;
	String datee;
	String type;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public iWhTimelineService getTlSer() {
		return tlSer;
	}
	public void setTlSer(iWhTimelineService tlSer) {
		this.tlSer = tlSer;
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
	public WhMassageReceive getMassage() {
		return massage;
	}
	public void setMassage(WhMassageReceive massage) {
		this.massage = massage;
	}
	public List<WhMassageReceive> getMassages() {
		return massages;
	}
	public void setMassages(List<WhMassageReceive> massages) {
		this.massages = massages;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		cz=null;
		massage=null;
		massages=null;
		type=null;
		dates=null;
		datee=null;
		if (page==null) {
			page=new Page(1, 0, 5);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if (cz!=null) {
			cz=cz.trim();
		}
		if(type!=null){
			type=type.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from WhMassageReceive where MState='有效' ";
		if (id!=null) {
			hql=hql+" and MId like '%"+id+"%'";
		}
		if	(type!=null){
			hql=hql+" and MType like '%"+type+"%'";
		}
		if (dates!=null && !dates.equals("")) {
			hql=hql+" and MDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.equals("")) {
			hql=hql+" and MDate <= '"+datee+"'";
		}
		hql=hql+" order by MCreateDatetime desc";
		massages=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from WhMassageReceive where MState='有效' order by MCreateDatetime desc";
		massages=ser.query(hql, null, hql, page, ser);
		return result;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			massage= (WhMassageReceive) ser.get(WhMassageReceive.class, id);
			if (massage!=null) {
				ser.delete(massage);
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(massage!=null && user!=null){
			WhMassageReceive mr=(WhMassageReceive) ser.get(WhMassageReceive.class, massage.getMId());
			mr.setMState("无效");
			ser.update(mr);
			massage.setMId("m"+NameOfDate.getNum());
			massage.setMCreateDatetime(new Timestamp(new Date().getTime()));
			massage.setMState("有效");
			massage.setMCzType("维护");
			massage.setUNum(user.getUNum());
			ser.save(massage);
			getRequest().setAttribute("massage", massage);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(massage!=null && user!=null){
			massage.setMId("m"+NameOfDate.getNum());
			massage.setMIt(user.getUName());
			massage.setMCreateDatetime(new Timestamp(new Date().getTime()));
			massage.setMCzType("注册");
			massage.setMState("有效");
			massage.setUNum(user.getUNum());
			ser.save(massage);
			getRequest().setAttribute("massage", massage);
		}
		return gotoQuery();
	}	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
	public String queryTime() {
		String mid;
		try {
			mid = getRequest().getParameter("mid");
			if (mid!=null) {
				WhTimeliness tlt=(WhTimeliness) ser.get(WhTimeliness.class, mid);
				if (tlt!=null) {
					JSONObject json=JSONObject.fromObject(tlt);
					getOut().print(json);
					getOut().flush();
					getOut().close();
					return null;
				}else {
					WhTimeliness tl=tlSer.getTimeliness(mid);
					tlSer.saveTimeliness(tl);
					JSONObject json=JSONObject.fromObject(tl);
					getOut().print(json);
					getOut().flush();
					getOut().close();
					return null;
				}
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			log.error("查询时效错误:获取mid错误");
		} catch (IOException e) {
			e.printStackTrace();
			log.error("查询时效错误：json转换错误");
		}
		try {
			getOut().print("null");
			getOut().flush();
			getOut().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
