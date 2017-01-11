package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtBqq;
import com.zs.service.IService;
import com.zs.service.iXtBqqService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BqqAction extends MyBaseAction{
	
	private IService ser;
	private iXtBqqService bqqSer;
	private Page page;
	private XtBqq b;
	private List<XtBqq> bs;
	private String result_b="bqq";
	private String id;
	private String num;
	private String name;
	private String netName;
	private String dates;
	private String datee;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	private String cz;
	
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
	public XtBqq getB() {
		return b;
	}
	public void setB(XtBqq b) {
		this.b = b;
	}
	public List<XtBqq> getBs() {
		return bs;
	}
	public void setBs(List<XtBqq> bs) {
		this.bs = bs;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNetName() {
		return netName;
	}
	public void setNetName(String netName) {
		this.netName = netName;
	}
	public iXtBqqService getBqqSer() {
		return bqqSer;
	}
	public void setBqqSer(iXtBqqService bqqSer) {
		this.bqqSer = bqqSer;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		num=null;
		name=null;
		netName=null;
		dates=null;
		datee=null;
		b=null;
		bs=null;
		cz=null;
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
		if(num!=null){
			num=num.trim();
		}
		if(name!=null){
			name=name.trim();
		}
		if(netName!=null){
			netName=netName.trim();
		}
		if(cz!=null){
			cz = cz.trim();
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
		String hql="from XtBqq where BState='有效'";
		if (id!=null && !id.equals(""))
			hql=hql+" and BId like '%"+id+"%'";
		if (num!=null && !num.trim().equals("")) {
			hql=hql+" and BNum like '%"+num+"%'";
		}
		if (name!=null && !name.trim().equals("")) {
			hql=hql+" and BName like '%"+name+"%'";
		}
		if (netName!=null && !netName.trim().equals("")) {
			hql=hql+" and BNetName like '%"+netName+"%'";
		}
		if (dates!=null && !dates.trim().equals("")) {
			hql=hql+" and BRegisterDate >= '"+dates+"'";
		}
		if (datee!=null && !datee.trim().equals("")) {
			hql=hql+" and BRegisterDate <= '"+datee+"'";
		}
		hql=hql+" order by BServiceDate desc";
		bs=ser.query(hql, null, hql, page, ser);
		return result_b;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtBqq where BState='有效' order by BServiceDate desc";
		bs=ser.query(hql, null, hql, page, ser);
		return result_b;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			b=(XtBqq) ser.get(XtBqq.class, id);
			ser.delete(b);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		if(b!=null && b.getBId()!=null && !"".equals(b.getBId().trim())){
			XtBqq ob = (XtBqq) ser.get(XtBqq.class, b.getBId());
			ob.setBState("无效");
			ser.update(ob);
			getRequest().setAttribute("ob",ob);
			
			b.setBId("b"+NameOfDate.getNum());
			Users users=(Users) getSession().getAttribute("user");
			b.setBIt(users.getUName());
			b.setUNum(users.getUNum());
			b.setBServiceDate(new Timestamp(new Date().getTime()));
			b.setBState("有效");
			ser.save(b);
			getRequest().setAttribute("b",b);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		if(b!=null){
			b.setBId("b"+NameOfDate.getNum());
			Date date=new Date();
			b.setBServiceDate(new Timestamp(date.getTime()));
			Users users=(Users) getSession().getAttribute("user");
			if (users!=null) {
				b.setBIt(users.getUName());
				b.setUNum(users.getUNum());
			}
			b.setBState("有效");
			ser.save(b);
			getRequest().setAttribute("b", b);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		bqqSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
