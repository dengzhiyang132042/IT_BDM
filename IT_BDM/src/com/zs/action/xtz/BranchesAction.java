package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.service.IService;
import com.zs.service.iBranchesService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BranchesAction extends MyBaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	private iBranchesService branchesSer;
	private Page page;
	private Page pageGj;
	private String result_b="branches";
	private XtBranches b;
	private List<XtBranches> bs;
	private String id;
	private String num1;
	private String num2;
	private String name1;
	private String name2;
	private String dates;
	private String datee;
	private String cz;
	
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
	public Page getPageGj() {
		return pageGj;
	}
	public void setPageGj(Page pageGj) {
		this.pageGj = pageGj;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
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
	public iBranchesService getBranchesSer() {
		return branchesSer;
	}
	public void setBranchesSer(iBranchesService branchesSer) {
		this.branchesSer = branchesSer;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNum1() {
		return num1;
	}
	public void setNum1(String num1) {
		this.num1 = num1;
	}
	public String getNum2() {
		return num2;
	}
	public void setNum2(String num2) {
		this.num2 = num2;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
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
	public XtBranches getB() {
		return b;
	}
	public void setB(XtBranches b) {
		this.b = b;
	}
	public List<XtBranches> getBs() {
		return bs;
	}
	public void setBs(List<XtBranches> bs) {
		this.bs = bs;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		num1=null;
		name1=null;
		num2=null;
		name2=null;
		dates=null;
		datee=null;
		cz=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
		if (pageGj==null) {
			pageGj=new Page(1, 0, 5);
		}else {
			pageGj.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(num1!=null){
			num1=num1.trim();
		}
		if(name1!=null){
			name1=name1.trim();
		}
		if(num2!=null){
			num2=num2.trim();
		}
		if(name2!=null){
			name2=name2.trim();
		}
		dates=dates==null?null:dates.trim();
		datee=datee==null?null:datee.trim();
		cz=cz==null?null:cz.trim();
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String gj=getRequest().getParameter("gj");
		String more=getRequest().getParameter("more");
		String hql="from XtBranches where BState='有效' ";
		if (id!=null && !id.equals(""))
			hql=hql+"and BId like '%"+id+"%' ";
		if (num1!=null && !num1.equals("")) 
			hql=hql+"and BNum1 like '%"+num1+"%' ";
		if (num2!=null && !num2.equals("")) 
			hql=hql+"and BNum2 like '%"+num2+"%' ";
		if (name1!=null && !name1.equals("")) 
			hql=hql+"and BName1 like '%"+name1+"%' ";
		if (name2!=null && !name2.equals("")) 
			hql=hql+"and BName2 like '%"+name2+"%' ";
		if (dates!=null && !dates.equals("")) 
			hql=hql+"and BMaintainDate >= '"+dates+"' ";
		if (datee!=null && !datee.equals("")) 
			hql=hql+"and BMaintainDate <= '"+datee+"' ";
		if (gj!=null && gj.equals("yes")) {
			if (more!=null && more.equals("yes")) {
				pageGj.setPageOn(pageGj.getPageOn()+1);
			}else {
				pageGj.setPageOn(1);
			}
			hql=hql+"order by BCreateTime desc,BMaintainDate desc";
			bs=ser.query(hql, null, hql, pageGj, ser);
			sendArrayJson(bs, ser);
			return null;
		}else {
			hql=hql+"order by BCreateTime desc,BMaintainDate desc";
			bs=ser.query(hql, null, hql, page, ser);
			return result_b;
		}
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtBranches where BState='有效' order by BCreateTime desc,BMaintainDate desc";
		bs=ser.query(hql, null, hql, page, ser);
		return result_b;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			b=(XtBranches) ser.get(XtBranches.class, id);
			ser.delete(b);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(b!=null && b.getBId()!=null && !"".equals(b.getBId().trim())){
			XtBranches branches=(XtBranches) ser.get(XtBranches.class, b.getBId());
			branches.setBState("无效");
			ser.update(branches);
			getRequest().setAttribute("branches", branches);
			
			b.setBId("b"+NameOfDate.getNum());
			b.setBDate(branches.getBDate());
			b.setBMaintainDate(branches.getBMaintainDate());
			b.setBMaintainWeek(branches.getBMaintainWeek());
			b.setBCreateTime(new Timestamp(new Date().getTime()));
			b.setBState("有效");
			b.setUNum(user.getUNum());
			
			ser.save(b);
			getRequest().setAttribute("b", b);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(b!=null && user!=null){
			b.setBId("b"+NameOfDate.getNum());
			
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			b.setBDate(new Timestamp(date.getTime()));
			b.setBMaintainDate(new Timestamp(date.getTime()));
			b.setBMaintainWeek(ca.get(Calendar.WEEK_OF_YEAR));
			
			b.setBCreateTime(new Timestamp(new Date().getTime()));
			b.setBState("有效");
			b.setUNum(user.getUNum());
			
			ser.save(b);
			getRequest().setAttribute("b", b);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users user=(Users) getSession().getAttribute("user");
		branchesSer.importExcelData(fileExcelFileName, fileExcel,user.getUNum());
		return gotoQuery();
	}
	
}
