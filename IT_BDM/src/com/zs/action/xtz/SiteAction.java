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

import javax.xml.registry.infomodel.User;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.service.IService;
import com.zs.service.iSiteService;
import com.zs.tools.Constant;
import com.zs.tools.Copy;
import com.zs.tools.ExcelExport;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class SiteAction extends MyBaseAction{
	private IService ser;
	private iSiteService siteSer;
	private Page page;
	private XtSite site;
	private List<XtSite> sites;
	private String result_site="site";
	private String result_succ="succ";
	private String result_fail="fail";
	private String id;
	private String num;
	private String dates;
	private String datee;
	private String it;
	private String type;
	private String cz;
	
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	private Logger logger=Logger.getLogger(SiteAction.class);
	
	
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public iSiteService getSiteSer() {
		return siteSer;
	}
	public void setSiteSer(iSiteService siteSer) {
		this.siteSer = siteSer;
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
		cz=null;
		site=null;
		sites=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if (type!=null) {
			type=type.trim();
		}
		if (it!=null) {
			it=it.trim();
		}
		if (num!=null) {
			num=num.trim();
		}
		dates=dates==null?null:dates.trim();
		datee=datee==null?null:datee.trim();
		cz=cz==null?null:cz.trim();
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException, ParseException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		String gj=getRequest().getParameter("gj");
		String hql="from XtSite where 1=1 ";
		if (id!=null)
			hql=hql+"and SId like '%"+id+"%' ";
		if (num!=null)
			hql=hql+"and SNum like '%"+num+"%' ";
		if (dates!=null && !dates.trim().equals("")) 
			hql=hql+"and SMaintainDate>='"+dates+"' ";
		if (datee!=null && !datee.trim().equals("")) 
			hql=hql+"and SMaintainDate<='"+datee+"' ";
		if (it!=null)
			hql=hql+"and SMaintainMan like '%"+it+"%' ";
		if (type!=null)
			hql=hql+"and SMaintainType like '%"+type+"%' ";
		if (gj!=null && gj.equals("yes")) {
			hql=hql+"order by SMaintainDate desc";
			sites=ser.query(hql, null, hql, page, ser);
			sendArrayJson(sites, ser);
			System.out.println(hql);
			return null;
		}else {
			hql=hql+"and SState='有效' order by SMaintainDate desc";
			sites=ser.query(hql, null, hql, page, ser);
			return result_site;
		}
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		if (page==null) {
			page=new Page(1, 0, 5);
		}else {
			page.setPageOn(1);
		}
		String hql="from XtSite where SState='有效' order by SMaintainDate desc";
		sites=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result_site;
	}
	
	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			site=(XtSite) ser.get(XtSite.class, id);
			ser.delete(site);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		clearSpace();
		Users user=(Users) getSession().getAttribute("user");
		if(user!=null && site!=null && site.getSId()!=null && !"".equals(site.getSId().trim())){
			XtSite xtSite=(XtSite) ser.get(XtSite.class, site.getSId());
			site.setSId("s"+NameOfDate.getNum());
			site.setSStartDate(xtSite.getSStartDate());
			site.setSMaintainDate(xtSite.getSMaintainDate());
			site.setSMaintainCycle(xtSite.getSMaintainCycle());
			site.setSMaintainMan(user.getUName());
			site.setSCreateTime(new Timestamp(new Date().getTime()));
			site.setSState("有效");
			site.setUNum(user.getUNum());
			xtSite.setSState("无效");
			ser.update(xtSite);
			ser.save(site);
			getRequest().setAttribute("site", site);
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		clearSpace();
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
			site.setSCreateTime(new Timestamp(new Date().getTime()));
			site.setSState("有效");
			site.setUNum(users.getUNum());
			ser.save(site);
			getRequest().setAttribute("site", site);
		}
		return gotoQuery();
	}	
	
	/**
	 * 张顺 2016-11-11
	 * <br>导入数据
	 * @return
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users user=(Users) getSession().getAttribute("user");
		siteSer.importExcelData(fileExcelFileName, fileExcel,user.getUNum());
		return gotoQuery();
	}
}
