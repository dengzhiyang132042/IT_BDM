/**
 * 
 */
package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.XtDevelopEfficiency;
import com.zs.entity.XtProject;
import com.zs.entity.XtProjectDetail;
import com.zs.service.IService;
import com.zs.service.iXtProjectCountService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;
import com.zs.tools.WorkDays;

/**
 * 2016年12月12日14:37:42
 * @author 黄光辉
 *	
 */
public class ProjectAction extends MyBaseAction implements IMyBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IService ser;
	iXtProjectCountService proSer;
	private Page page;
	private List<XtProject> ps;
	private List<XtProjectDetail> pds;
	private XtProjectDetail pd;
	private XtProjectDetail pd1;
	private XtProjectDetail pd2;
	private XtProjectDetail pd3;
	private XtProjectDetail pd4;
	private XtProjectDetail pd5;
	private XtProject p;
	String id;
	String cz;
	String pname;
	String dates;
	String datee;
	String result="project";
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName;
	
	private Logger logger = Logger.getLogger(ProjectAction.class);
	
	
	public iXtProjectCountService getProSer() {
		return proSer;
	}
	public void setProSer(iXtProjectCountService proSer) {
		this.proSer = proSer;
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
	public List<XtProjectDetail> getPds() {
		return pds;
	}
	public void setPds(List<XtProjectDetail> pds) {
		this.pds = pds;
	}
	public XtProject getP() {
		return p;
	}
	public void setP(XtProject p) {
		this.p = p;
	}
	public XtProjectDetail getPd1() {
		return pd1;
	}
	public void setPd1(XtProjectDetail pd1) {
		this.pd1 = pd1;
	}
	public XtProjectDetail getPd2() {
		return pd2;
	}
	public void setPd2(XtProjectDetail pd2) {
		this.pd2 = pd2;
	}
	public XtProjectDetail getPd3() {
		return pd3;
	}
	public void setPd3(XtProjectDetail pd3) {
		this.pd3 = pd3;
	}
	public XtProjectDetail getPd4() {
		return pd4;
	}
	public void setPd4(XtProjectDetail pd4) {
		this.pd4 = pd4;
	}
	public XtProjectDetail getPd5() {
		return pd5;
	}
	public void setPd5(XtProjectDetail pd5) {
		this.pd5 = pd5;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<XtProject> getPs() {
		return ps;
	}
	public void setPs(List<XtProject> ps) {
		this.ps = ps;
	}
	public XtProjectDetail getPd() {
		return pd;
	}
	public void setPd(XtProjectDetail pd) {
		this.pd = pd;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
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
	
	
	
	public void clearOptions() {
		ps=null;
		pd=null;
		pd1=null;
		pd2=null;
		pd3=null;
		pd4=null;
		pd5=null;
		p=null;
		pds=null;
		id=null;
		pname=null;
		dates=null;
		datee=null;
		cz=null;
	}
	public void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
		if(pname!=null){
			pname=pname.trim();
		}
		if(dates!=null){
			dates=dates.trim();
		}
		if(datee!=null){
			datee=datee.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
			String hql="from XtProject order by PDate desc";
			String ss[]={};
			ps=ser.query(hql, ss, hql, page, ser);
			for(int i = 0;i<ps.size();i++){
				String hql2="from XtProjectDetail where PId=?";
				pds = ser.find(hql2,new Object[]{ps.get(i).getPId()});
				ps.get(i).setProjectDetails(pds);
			}
		return result;
	}
	public String queryOfFenye() throws UnsupportedEncodingException {
		id=getRequest().getParameter("id");
		cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 1);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 1);
			clearOptions();
		}
		clearSpace();
		if (id!=null) {
			String hql="from XtProject where PId like '%"+id+"%'";
			if(pname!=null){
				hql=hql+" and PProject like '%"+pname+"%'";
			}
			if(dates!=null&&!dates.equals("")){
				hql=hql+" and PDate >='"+dates+"'";
			}
			if(datee!=null&&!datee.equals("")){
				hql=hql+" and PDate <='"+datee+"'";
			}
			hql=hql+" order by PDate desc";
			ps =ser.query(hql, null, hql, page, ser);
			for(int i = 0;i<ps.size();i++){
				String hql2="from XtProjectDetail where PId=?";
				pds = ser.find(hql2,new Object[]{ps.get(i).getPId()});
				ps.get(i).setProjectDetails(pds);
			}
		}else {
			String hql="from XtProject order by PDate desc";
			String ss[]={};
			ps=ser.query(hql, ss, hql, page, ser);
			for(int i = 0;i<ps.size();i++){
				String hql2="from XtProjectDetail where PId=?";
				pds = ser.find(hql2,new Object[]{ps.get(i).getPId()});
				ps.get(i).setProjectDetails(pds);
			}
		}
		return result;
	}

	public String add() throws Exception {
		String year = getRequest().getParameter("pyear");
		String month = getRequest().getParameter("pmonth");
		if(p!=null){
			p.setPId("p"+NameOfDate.getNum());
			Date pdate = new Date(Integer.parseInt(year)-1900,Integer.parseInt(month)-1, 20);
			System.out.println(pdate);
			p.setPDate(pdate);
			ser.save(p);
			getRequest().setAttribute("p", p);
			if(pd1!=null){
				pd1.setDId(NameOfDate.getNum());
				pd1.setPId(p.getPId());
				pd1.setDSituation(pd1.getDSituation().replaceAll("\n", "<br/>"));
				ser.save(pd1);
			}
			if(pd2!=null){
				pd2.setDId(NameOfDate.getNum());
				pd2.setPId(p.getPId());
				pd2.setDSituation(pd2.getDSituation().replaceAll("\n", "<br/>"));
				ser.save(pd2);
			}
			if(pd3!=null){
				pd3.setDId(NameOfDate.getNum());
				pd3.setPId(p.getPId());
				pd3.setDSituation(pd3.getDSituation().replaceAll("\n", "<br/>"));
				ser.save(pd3);
			}
			if(pd4!=null){
				pd4.setDId(NameOfDate.getNum());
				pd4.setPId(p.getPId());
				pd4.setDSituation(pd4.getDSituation().replaceAll("\n", "<br/>"));
				ser.save(pd4);
			}
			if(pd5!=null){
				pd5.setDId(NameOfDate.getNum());
				pd5.setPId(p.getPId());
				pd5.setDSituation(pd5.getDSituation().replaceAll("\n", "<br/>"));
				ser.save(pd5);
			}
		}
		//更新效率表
		List<XtDevelopEfficiency> xdes  =ser.find("from XtDevelopEfficiency where EMonth=?", new Object[]{p.getPDate()});
		if(xdes!=null&&xdes.size()>0){
			ser.delete(xdes.get(0));		
		}
		List<XtProject> pros=ser.find("from XtProject where PDate=?", new Object[]{p.getPDate()});
		proSer.createTable(pros);
		
		p=null;
		pd1=null;
		pd2=null;
		pd3=null;
		pd4=null;
		pd5=null;
		return gotoQuery();
	}
	public String delete() throws Exception {
		if(id!=null){
			XtProject dproject = (XtProject) ser.get(XtProject.class, id);
			ser.delete(dproject);
			List<XtProjectDetail> dpds = ser.find("from XtProjectDetail where PId = ?", new Object[]{id});
			for (int i = 0; i < dpds.size(); i++) {
				ser.delete(dpds.get(i));
			}
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(pd!=null){
			XtProjectDetail proDetail = (XtProjectDetail) ser.get(XtProjectDetail.class, pd.getDId());
			pd.setPId(proDetail.getPId());
			pd.setDDetail(proDetail.getDDetail());
			pd.setDSituation(proDetail.getDSituation());
			pd.setDMan(proDetail.getDMan());
			pd.setDSchedule(pd.getDSchedule()/100);
			if(pd.getDStartDate()!=null&&pd.getDRealityDate()!=null){
				WorkDays wd = new WorkDays();
				double userDate =wd.getWorkdayTimeInMillis(pd.getDRealityDate().getTime(),pd.getDStartDate().getTime());
				int usDate=(int)userDate/(1000*60*60*24)+1;
				pd.setDUserDate(usDate);
			}else{
				
			}
			ser.update(pd);
			getRequest().setAttribute("pd", pd);
			XtProject up =(XtProject) ser.get(XtProject.class, pd.getPId());
			
			//更新效率表
			List<XtDevelopEfficiency> xdes  =ser.find("from XtDevelopEfficiency where EMonth=?", new Object[]{up.getPDate()});
			if(xdes!=null){
				ser.delete(xdes.get(0));		
			}
			List<XtProject> pros=ser.find("from XtProject where PDate=?", new Object[]{up.getPDate()});
			proSer.createTable(pros);
		}
		pd=null;
		return gotoQuery();
	}
	public String importExcel() throws InterruptedException, IOException, ParseException {
		logger.debug(fileExcel);
		logger.debug(fileExcelContentType);
		logger.debug(fileExcelFileName);
		proSer.ExcelImport(fileExcelFileName, fileExcel);
		return gotoQuery();
	}
}
