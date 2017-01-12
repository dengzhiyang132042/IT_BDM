package com.zs.action.xtz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.MyBaseAction;
import com.zs.entity.ChildNum;
import com.zs.entity.Users;
import com.zs.entity.XtNetImo;
import com.zs.service.IService;
import com.zs.service.iXtNetImoService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class NetImoAction extends MyBaseAction{
	
	private IService ser;
	private iXtNetImoService netInoSer;
	private Page page;
	private XtNetImo imo;
	private List<XtNetImo> imos;
	private String result_b="netImo";
	private String id;
	private String cz;
	private String area;
	private String num;
	private String netName;
	private String dates;
	private String datee;
	private String childNumStart;
	private String childNumEnd;
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getNetName() {
		return netName;
	}
	public void setNetName(String netName) {
		this.netName = netName;
	}
	public XtNetImo getImo() {
		return imo;
	}
	public void setImo(XtNetImo imo) {
		this.imo = imo;
	}
	public List<XtNetImo> getImos() {
		return imos;
	}
	public void setImos(List<XtNetImo> imos) {
		this.imos = imos;
	}
	public String getChildNumStart() {
		return childNumStart;
	}
	public void setChildNumStart(String childNumStart) {
		this.childNumStart = childNumStart;
	}
	public String getChildNumEnd() {
		return childNumEnd;
	}
	public void setChildNumEnd(String childNumEnd) {
		this.childNumEnd = childNumEnd;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public iXtNetImoService getNetInoSer() {
		return netInoSer;
	}
	public void setNetInoSer(iXtNetImoService netInoSer) {
		this.netInoSer = netInoSer;
	}
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		num=null;
		area=null;
		netName=null;
		dates=null;
		datee=null;
		imo=null;
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
		if(area!=null){
			area=area.trim();
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
		String hql="from XtNetImo where IState='有效'";
		if (id!=null)
			hql=hql+" and IId like '%"+id+"%'";
		if (num!=null && !num.trim().equals(""))
			hql=hql+" and INum like '%"+num+"%'";
		if (area!=null && !area.trim().equals(""))
			hql=hql+" and IArea like '%"+area+"%'";
		if (netName!=null && !netName.trim().equals(""))
			hql=hql+" and IName like '%"+netName+"%'";
		if (dates!=null && !dates.trim().equals("")) 
			hql=hql+" and IRegisterDate >= '"+dates+"'";
		if (datee!=null && !datee.trim().equals("")) 
			hql=hql+" and IRegisterDate <= '"+datee+"'";
		hql=hql+" order by IServiceDate desc";
		imos=ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < imos.size(); i++) {
			List<ChildNum> clist = ser.find("from ChildNum where NNum=?",new Object[]{imos.get(i).getIAccount()});
			String childString = "";	
			for(int j = 0 ; j < clist.size() ; j++){
				childString =childString + clist.get(j).getNChildNum()+",";
			}
			imos.get(i).setChildNum(childString);
		}
		return result_b;
	}
	
	private String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from XtNetImo where IState='有效' order by IServiceDate desc";
		imos=ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < imos.size(); i++) {
			List<ChildNum> clist = ser.find("from ChildNum where NNum=?",new Object[]{imos.get(i).getIAccount()});
			String childString = "";	
			for(int j = 0 ; j < clist.size() ; j++){
				childString =childString + clist.get(j).getNChildNum()+",";
			}
			imos.get(i).setChildNum(childString);
		}
		return result_b;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			imo=(XtNetImo) ser.get(XtNetImo.class, id);
			List list = ser.find("from ChildNum where NNum=?", new Object[]{imo.getIAccount()});
			if(list.size()>0){
				for (int i = 0; i < list.size(); i++) {
					ChildNum c =(ChildNum) list.get(i);
					ser.delete(c);
				}
			}
			ser.delete(imo);
		}
		return gotoQuery();
	}
	
	public String update() throws Exception {
		if(imo!=null && imo.getIId()!=null && !"".equals(imo.getIId().trim())){
			XtNetImo uimo = (XtNetImo) ser.get(XtNetImo.class, imo.getIId());
			uimo.setIState("无效");
			ser.update(uimo);
			getRequest().setAttribute("uimo", uimo);
			
			imo.setIId("i"+NameOfDate.getNum());
			Users users=(Users) getSession().getAttribute("user");
			imo.setIIt(users.getUName());
			imo.setIUnum(users.getUNum());
			imo.setIServiceDate(new Timestamp(new Date().getTime()));
			imo.setIState("有效");
			ser.save(imo);
			getRequest().setAttribute("imo", imo);
			
			if(childNumStart!=null&&!childNumStart.equals("")){
				ChildNum cn = new ChildNum();
				cn.setNId(NameOfDate.getNum());
				cn.setNNum(imo.getIAccount());
				String [] ss = new String [2];
				ss = imo.getIAccount().split("@");
				String cs1 = ss[0]+ childNumStart +"@" +ss[1];
				cn.setNChildNum(cs1);
				List blist1 = ser.find("from ChildNum where NChildNum=?", new Object[]{cs1});
				if(blist1.size()<0){
					ser.save(cn);
				}
				cn=null;
				if(childNumEnd!=null&&!childNumEnd.equals("")&&!childNumEnd.equals(childNumStart)){
					int childEnd = Integer.parseInt(childNumEnd);
					int childStart = Integer.parseInt(childNumStart);
					for(int i=1; i<=childEnd-childStart;i++){
						ChildNum icn = new ChildNum();
						icn.setNId(NameOfDate.getNum());
						icn.setNNum(imo.getIAccount());
						String cs  = ss[0]+ "0" + (childStart+i)  +"@" +ss[1]; 
						icn.setNChildNum(cs);
						List blist = ser.find("from ChildNum where NChildNum=?", new Object[]{cs});
						if(blist.size()<=0){
							ser.save(icn);
						}
						icn=null;
					}
				}
			}
		}
		return gotoQuery();
	}
	
	public String add() throws Exception {
		if(imo!=null){
			imo.setIId("i"+NameOfDate.getNum());
			Date date=new Date();
			imo.setIServiceDate(new Timestamp(date.getTime()));
			Users users=(Users) getSession().getAttribute("user");
			if (users!=null) {
				imo.setIIt(users.getUName());
				imo.setIUnum(users.getUNum());
			}
			imo.setIState("有效");
			ser.save(imo);
			if(childNumStart!=null&&!childNumStart.equals("")){
				ChildNum cn = new ChildNum();
				cn.setNId(NameOfDate.getNum());
				cn.setNNum(imo.getIAccount());
				String [] ss = new String [2];
				ss = imo.getIAccount().split("@");
				String cs1 = ss[0]+ childNumStart +"@" +ss[1];
				cn.setNChildNum(cs1);
				ser.save(cn);
				cn=null;
				if(childNumEnd!=null&&!childNumEnd.equals("")&&!childNumEnd.equals(childNumStart)){
					int childEnd = Integer.parseInt(childNumEnd);
					int childStart = Integer.parseInt(childNumStart);
					for(int i=1; i<=childEnd-childStart;i++){
						ChildNum icn = new ChildNum();
						icn.setNId(NameOfDate.getNum());
						icn.setNNum(imo.getIAccount());
						String cs  = ss[0]+ "0" + (childStart+i)  +"@" +ss[1]; 
						icn.setNChildNum(cs);
						ser.save(icn);
						icn=null;
					}
				}
			}
			getRequest().setAttribute("imo", imo);
		}
		return gotoQuery();
	}	
	
	
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		netInoSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
