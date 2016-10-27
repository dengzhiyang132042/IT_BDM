package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BranchesAction extends MyBaseAction{
	IService ser;
	Page page;
	
	XtBranches b;
	List<XtBranches> bs;
	
	String result_b="branches";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String num1;
	String num2;
	String name1;
	String name2;
	String dates;
	String datee;
	
	
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
			String hql="from XtBranches where BId like '%"+id+"%'";
			if (num1!=null && !num1.trim().equals("")) {
				hql=hql+" and BNum1 like '%"+num1+"%'";
			}
			if (num2!=null && !num2.trim().equals("")) {
				hql=hql+" and BNum2 like '%"+num2+"%'";
			}
			if (name1!=null && !name1.trim().equals("")) {
				hql=hql+" and BName1 like '%"+name1+"%'";
			}
			if (name2!=null && !name2.trim().equals("")) {
				hql=hql+" and BName2 like '%"+name2+"%'";
			}
			if (dates!=null && !dates.trim().equals("")) {
				hql=hql+" and BMaintainDate >= '"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql=hql+" and BMaintainDate <= '"+datee+"'";
			}
			hql=hql+" order by BMaintainDate desc";
			bs=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtBranches order by BMaintainDate desc";
			String ss[]={};
			String hql2="from XtBranches order by BMaintainDate desc";
			bs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result_b;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtBranches order by BMaintainDate desc";
		String ss[]={};
		String hql2="from XtBranches order by BMaintainDate desc";
		bs=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result_b;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			b=(XtBranches) ser.get(XtBranches.class, id);
			ser.delete(b);
		}
		b=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(b!=null && b.getBId()!=null && !"".equals(b.getBId().trim())){
			XtBranches branches=(XtBranches) ser.get(XtBranches.class, b.getBId());
			b.setBDate(branches.getBDate());
			b.setBMaintainDate(branches.getBMaintainDate());
			b.setBMaintainWeek(branches.getBMaintainWeek());
			ser.update(b);
			getRequest().setAttribute("b", b);
		}
		b=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(b!=null){
			b.setBId("b"+NameOfDate.getNum());
			
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			b.setBDate(new Timestamp(date.getTime()));
			b.setBMaintainDate(new Timestamp(date.getTime()));
			b.setBMaintainWeek(ca.get(Calendar.WEEK_OF_YEAR));
			ser.save(b);
			getRequest().setAttribute("b", b);
		}
		b=null;
		return gotoQuery();
	}	
	
}
