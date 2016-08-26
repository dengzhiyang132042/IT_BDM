package com.zs.action.xtz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.xml.registry.infomodel.User;

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
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from XtSite where SId  = ? order by SMaintainDate desc";
			String ss[]={id};
			String hql2="from XtSite where SId = '"+id+"' order by SMaintainDate desc";
			sites=ser.query(hql, ss, hql2, page, ser);
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
