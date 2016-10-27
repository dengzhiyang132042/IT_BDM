package com.zs.action.zmz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.ZmPhoneLine;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class PhoneAction extends MyBaseAction implements IMyBaseAction{
	IService ser;
	Page page;
	
	ZmPhoneLine phone;
	List<ZmPhoneLine> phones;
	
	String result="phone";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String PNumber;
	String PSection;
	
	
	private Logger logger=Logger.getLogger(PhoneAction.class);
	
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPNumber() {
		return PNumber;
	}

	public void setPNumber(String pNumber) {
		PNumber = pNumber;
	}

	public String getPSection() {
		return PSection;
	}

	public void setPSection(String pSection) {
		PSection = pSection;
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

	public ZmPhoneLine getPhone() {
		return phone;
	}

	public void setPhone(ZmPhoneLine phone) {
		this.phone = phone;
	}

	public List<ZmPhoneLine> getPhones() {
		return phones;
	}

	public void setPhones(List<ZmPhoneLine> phones) {
		this.phones = phones;
	}

	//**********************************************
	public void clearOptions() {
		id=null;
		PNumber=null;
		PSection=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(PNumber!=null){
			PNumber=PNumber.trim();
		}
		if(PSection!=null){
			PSection=PSection.trim();
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
			String hql2="from ZmPhoneLine where PId like '%"+id+"%'";
			if(PNumber!=null){
				hql2=hql2+" and PNumber like '%"+PNumber+"%'";
			}
			if(PSection!=null){
				hql2=hql2+" and PSection like '%"+PSection+"%'";
			}
			phones=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from ZmPhoneLine order by PDate desc";
			String ss[]={};
			String hql2="from ZmPhoneLine order by PDate desc";
			phones=ser.query(hql, ss, hql2, page, ser);
		}
		ser.receiveStructure(getRequest());
		return result;
	}
	
	public String add() throws Exception {
		if(phone!=null){
			phone.setPId("p"+NameOfDate.getNum());
			Date date=new Date();
			phone.setPDate(new Timestamp(date.getTime()));
			ser.save(phone);
			getRequest().setAttribute("phone", phone);
		}
		phone=null;
		return gotoQuery();
	}

	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			phone=(ZmPhoneLine) ser.get(ZmPhoneLine.class, id);
			ser.delete(phone);
		}
		phone=null;
		return gotoQuery();
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from ZmPhoneLine order by PDate desc";
		String ss[]={};
		String hql2="from ZmPhoneLine order by PDate desc";
		phones=ser.query(hql, ss, hql2, page, ser);
		ser.receiveStructure(getRequest());
		return result;
	}

	public String update() throws Exception {
		if(phone!=null && phone.getPId()!=null && !"".equals(phone.getPId().trim())){
			ZmPhoneLine phoneline=(ZmPhoneLine) ser.get(ZmPhoneLine.class, phone.getPId());
			phone.setPDate(phoneline.getPDate());
			ser.update(phone);
			getRequest().setAttribute("phone", phone);
		}
		phone=null;
		return gotoQuery();
	}

}
