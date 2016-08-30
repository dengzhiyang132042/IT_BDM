package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.xml.registry.infomodel.User;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class SiteAction extends MyBaseAction{
	IService ser;
	Page page;
	
	XtSite site;
	List<XtSite> sites;
	
	String result_site="site";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String num;
	String dates;
	String datee;
	String it;
	String type;
	
	
	
	private Logger logger=Logger.getLogger(SiteAction.class);
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getIt() {
		return it;
	}
	public void setIt(String it) {
		this.it = it;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public XtSite getSite() {
		return site;
	}
	public void setSite(XtSite site) {
		this.site = site;
	}
	public List<XtSite> getSites() {
		return sites;
	}
	public void setSites(List<XtSite> sites) {
		this.sites = sites;
	}	
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		num=null;
		dates=null;
		datee=null;
		it=null;
		type=null;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException, ParseException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		
		
		SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd");
		
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		if (id!=null) {
			String hql2="from XtSite where SId like '%"+id+"%'";
			if (num!=null && !num.trim().equals("")) {
				hql2=hql2+" and SNum like '%"+num+"%'";
			}
			if (dates!=null && !dates.trim().equals("")) {
				hql2=hql2+" and SMaintainDate>='"+dates+"'";
			}
			if (datee!=null && !datee.trim().equals("")) {
				hql2=hql2+" and SMaintainDate<='"+datee+"'";
			}
			if (it!=null && !it.trim().equals("")) {
				hql2=hql2+" and SMaintainMan like '%"+it+"%'";
			}
			if (type!=null && !type.trim().equals("")) {
				hql2=hql2+" and SMaintainType like '%"+type+"%'";
			}
			hql2=hql2+" order by SMaintainDate desc";
			
			sites=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from XtSite order by SMaintainDate desc";
			String ss[]={};
			String hql2="from XtSite order by SMaintainDate desc";
			sites=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result_site;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtSite order by SMaintainDate desc";
		String ss[]={};
		String hql2="from XtSite order by SMaintainDate desc";
		sites=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result_site;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			site=(XtSite) ser.get(XtSite.class, id);
			ser.delete(site);
		}
		site=null;
		
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(site!=null && site.getSId()!=null && !"".equals(site.getSId().trim())){
			XtSite xtSite=(XtSite) ser.get(XtSite.class, site.getSId());
			site.setSStartDate(xtSite.getSStartDate());
			site.setSMaintainDate(xtSite.getSMaintainDate());
			site.setSMaintainCycle(xtSite.getSMaintainCycle());
			site.setSMaintainMan(xtSite.getSMaintainMan());
			ser.update(site);
			getRequest().setAttribute("site", site);
		}
		site=null;

		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(site!=null){
			site.setSId("s"+NameOfDate.getNum());
			
			Users users=(Users) getSession().getAttribute("user");
			Date date=new Date();
			Calendar ca = Calendar.getInstance();//创建一个日期实例
			ca.setTime(date);//实例化一个日期
			site.setSStartDate(new Timestamp(date.getTime()));
			site.setSMaintainDate(new Timestamp(date.getTime()));
			site.setSMaintainCycle(ca.get(Calendar.WEEK_OF_YEAR));
			if (users!=null) {
				site.setSMaintainMan(users.getUName());
			}
			ser.save(site);
			getRequest().setAttribute("site", site);
		}
		site=null;
		return gotoQuery();
	}	
	
}
