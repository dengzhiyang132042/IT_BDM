package com.zs.action.zmz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.service.iDataImportService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BqAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	iDataImportService importSer;
	Page page;
	
	ZmBq bq;
	List<ZmBq> bqs;
	
	String result="bq";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String BPda;
	String BModel;
	String BType;
	String BNum;
	String BSn;
	String BMac;
	String cz;
	
	private Logger logger=Logger.getLogger(BqAction.class);
	private File fileExcel;
	private String fileExcelContentType;
	private String fileExcelFileName; 
	
	
	
	public String getBMac() {
		return BMac;
	}
	public void setBMac(String bMac) {
		BMac = bMac;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBPda() {
		return BPda;
	}

	public void setBPda(String bPda) {
		BPda = bPda;
	}

	public String getBModel() {
		return BModel;
	}

	public void setBModel(String bModel) {
		BModel = bModel;
	}

	public String getBType() {
		return BType;
	}

	public void setBType(String bType) {
		BType = bType;
	}

	public String getBNum() {
		return BNum;
	}

	public void setBNum(String bNum) {
		BNum = bNum;
	}

	public String getBSn() {
		return BSn;
	}

	public void setBSn(String bSn) {
		BSn = bSn;
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

	public ZmBq getBq() {
		return bq;
	}

	public void setBq(ZmBq bq) {
		this.bq = bq;
	}

	public List<ZmBq> getBqs() {
		return bqs;
	}

	public void setBqs(List<ZmBq> bqs) {
		this.bqs = bqs;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	
	//**********************************************
	public void clearOptions() {
		id=null;
		BPda=null;
		BModel=null;
		BType=null;
		BNum=null;
		BSn=null;
		BMac=null;
		bq=null;
		bqs=null;
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
		if(BPda!=null){
			BPda=BPda.trim();
		}
		if(BModel!=null){
			BModel=BModel.trim();
		}
		if(BType!=null){
			BType=BType.trim();
		}
		if(BNum!=null){
			BNum=BNum.trim();
		}
		if(BSn!=null){
			BSn=BSn.trim();
		}
		if(BMac!=null){
			BMac=BMac.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmBq where BState='有效' order by BCreateTime desc , BDate desc";
		bqs=ser.query(hql, null, hql, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql2="from ZmBq where BState='有效'";
		if(id!=null&&!id.equals("")){
			hql2=hql2+" and BId like '%"+id+"%'";
		}
		if(BPda!=null&&!BPda.equals("")){
			hql2=hql2+" and BPda like '%"+BPda+"%'";
		}
		if(BModel!=null&&!BModel.equals("")){
			hql2=hql2+" and BModel like '%"+BModel+"%'";
		}
		if(BType!=null&&!BType.equals("")){
			hql2=hql2+" and BType like '%"+BType+"%'";
		}
		if(BNum!=null&&!BNum.equals("")){
			hql2=hql2+" and BNum like '%"+BNum+"%'";
		}
		if(BSn!=null&&!BSn.equals("")){
			hql2=hql2+" and BSn like '%"+BSn+"%'";
		}
		if(BMac!=null&&!BMac.equals("")){
			hql2=hql2+" and BMac like '%"+BMac+"%'";
		}
		hql2=hql2+" order by BCreateTime desc , BDate desc";
		bqs=ser.query(hql2, null, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		clearSpace();
		if(bq!=null){
			bq.setBId("b"+NameOfDate.getNum());
			Date date=new Date();
			bq.setBDate(new Timestamp(date.getTime()));
			bq.setBCreateTime(new Timestamp(new Date().getTime()));
			bq.setBState("有效");
			Users users=(Users) getSession().getAttribute("user"); 
			bq.setBServiceMan(users.getUName());
			bq.setUNum(users.getUNum());
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		return gotoQuery();
	}

	public String delete() throws Exception {
		clearSpace();
		if (id!=null) {
			bq=(ZmBq) ser.get(ZmBq.class, id);
			ser.delete(bq);
		}
		return gotoQuery();
	}

	

	public String update() throws Exception {
		clearSpace();
		if(bq!=null && bq.getBId()!=null && !"".equals(bq.getBId().trim())){
			ZmBq zmBq=(ZmBq) ser.get(ZmBq.class, bq.getBId());
			zmBq.setBState("无效");
			ser.update(zmBq);
			getRequest().setAttribute("zmBq", zmBq);
			
			bq.setBId("b"+NameOfDate.getNum());
			bq.setBCreateTime(new Timestamp(new Date().getTime()));
			bq.setBState("有效");
			Users users=(Users) getSession().getAttribute("user"); 
			bq.setUNum(users.getUNum());
			bq.setBDate(new Date());
			bq.setBServiceMan(users.getUName());
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		return gotoQuery();
	}
	public String importExcel() throws InterruptedException, IOException, ParseException {
		Users users=(Users) getSession().getAttribute("user");
		importSer.importExcelData(fileExcelFileName, fileExcel,users.getUNum());
		return gotoQuery();
	}
	
}
