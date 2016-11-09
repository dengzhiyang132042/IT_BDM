package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.XtBqRepair;
import com.zs.entity.XtPdaLoss;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PdaLossAction extends MyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IService ser;
	Page page;
	
	XtPdaLoss pl;
	
	List<XtPdaLoss> pls;
	
	String result_pl="pdaloss";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String dates;
	String datee;
	String sn;
	String num;
	
	
	
	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
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

	public XtPdaLoss getPl() {
		return pl;
	}

	public void setPl(XtPdaLoss pl) {
		this.pl = pl;
	}

	public List<XtPdaLoss> getPls() {
		return pls;
	}

	public void setPls(List<XtPdaLoss> pls) {
		this.pls = pls;
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

	//------------------------------------------------
	private void clearOptions() {
		id=null;
		dates=null;
		datee=null;
		sn=null;
		num=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
		if(sn!=null){
			sn=sn.trim();
		}
		if(num!=null){
			num=num.trim();
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
			String hql="from XtPdaLoss where LId like '%"+id+"%'";
				if(sn!=null){
					hql=hql+" and LSn like '%"+sn+"%'";
				}
				if(num!=null){
					hql=hql+" and LNum like '%"+num+"%'";
				}
				if(dates!=null&&!dates.equals("")){
					hql=hql+" and LDate >='"+dates+"'";
				}
				if(datee!=null&&!dates.equals("")){
					hql=hql+" and LDate <='"+datee+"'";
				}
			hql=hql+" order by LDate desc";
			pls=ser.query(hql, null, hql, page, ser);
		}else {
			String hql="from XtPdaLoss order by LDate desc";
			String ss[]={};
			String hql2="from XtPdaLoss order by LDate desc";
			pls=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result_pl;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtPdaLoss order by LDate desc";
		String ss[]={};
		String hql2="from XtPdaLoss order by LDate desc";
		pls=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result_pl;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			pl=(XtPdaLoss) ser.get(XtPdaLoss.class, id);
			ser.delete(pl);
		}
		pl=null;
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(pl!=null && pl.getLId()!=null && !"".equals(pl.getLId().trim())){
			XtPdaLoss pdaloss=(XtPdaLoss) ser.get(XtPdaLoss.class, pl.getLId());
			pl.setLDate(pdaloss.getLDate());
			pl.setLWeek(pdaloss.getLWeek());
			pl.setLHandleDate(pdaloss.getLHandleDate());
			ser.update(pl);
			getRequest().setAttribute("pl", pl);
		}
		pl=null;
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(pl!=null){
			pl.setLId("L"+NameOfDate.getNum());
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			if(pl.getLDate()==null){
				pl.setLDate(new Timestamp(date.getTime()));
			}
			pl.setLHandleDate(new Timestamp(date.getTime()));
			pl.setLWeek(ca.get(Calendar.WEEK_OF_YEAR));
			ser.save(pl);
			getRequest().setAttribute("pl", pl);
		}
		pl=null;
		return gotoQuery();
	}	
	
}
