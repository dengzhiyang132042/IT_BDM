package com.zs.action.zmz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmVpn;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class BqAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
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
	
	private Logger logger=Logger.getLogger(BqAction.class);
	
	
	
	
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

	public String getBMac() {
		return BMac;
	}

	public void setBMac(String bMac) {
		BMac = bMac;
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
		if(id!=null){
			String hql2="from ZmBq where BId like '%"+id+"%'";
			if(BPda!=null){
				hql2=hql2+" and BPda like '%"+BPda+"%'";
			}
			if(BModel!=null){
				hql2=hql2+" and BModel like '%"+BModel+"%'";
			}
			if(BType!=null){
				hql2=hql2+" and BType like '%"+BType+"%'";
			}
			if(BNum!=null){
				hql2=hql2+" and BNum like '%"+BNum+"%'";
			}
			if(BSn!=null){
				hql2=hql2+" and BSn like '%"+BSn+"%'";
			}
			if(BMac!=null){
				hql2=hql2+" and BMac like '%"+BMac+"%'";
			}
			bqs=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from ZmBq order by BDate desc";
			String ss[]={};
			String hql2="from ZmBq order by BDate desc";
			bqs=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		if(bq!=null){
			bq.setBId("b"+NameOfDate.getNum());
			Date date=new Date();
			bq.setBDate(new Timestamp(date.getTime()));
			ser.save(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			bq=(ZmBq) ser.get(ZmBq.class, id);
			ser.delete(bq);
		}
		bq=null;
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmBq order by BDate desc";
		String ss[]={};
		String hql2="from ZmBq order by BDate desc";
		bqs=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}

	public String update() throws Exception {
		if(bq!=null && bq.getBId()!=null && !"".equals(bq.getBId().trim())){
			ZmBq zmBq=(ZmBq) ser.get(ZmBq.class, bq.getBId());
			bq.setBDate(zmBq.getBDate());
			ser.update(bq);
			getRequest().setAttribute("bq", bq);
		}
		bq=null;
		return gotoQuery();
	}

}
