package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.MyBaseAction;
import com.zs.entity.FbdAsdl;
import com.zs.entity.FbdMonitoring;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class FbdMAction extends MyBaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	IService ser;
	
	FbdMonitoring m;
	List<FbdMonitoring> ms;
	
	Page page;
	
	String result_m="m";
	String result_fail="fail";
	
	String id;
	String fbdName;
	String MNum;
	String MScrap;
	String MState;
	String cz;
	
	public String getMScrap() {
		return MScrap;
	}
	public void setMScrap(String mScrap) {
		MScrap = mScrap;
	}
	public String getMState() {
		return MState;
	}
	public void setMState(String mState) {
		MState = mState;
	}
	public String getMNum() {
		return MNum;
	}
	public void setMNum(String MNum) {
		this.MNum = MNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFbdName() {
		return fbdName;
	}
	public void setFbdName(String fbdName) {
		this.fbdName = fbdName;
	}

	private Logger logger=Logger.getLogger(FbdAsdlAction.class);
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public FbdMonitoring getM() {
		return m;
	}
	public void setM(FbdMonitoring m) {
		this.m = m;
	}
	public List<FbdMonitoring> getMs() {
		return ms;
	}
	public void setMs(List<FbdMonitoring> ms) {
		this.ms = ms;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	
	//------------------------------------------------
	private void clearOptions() {
		id=null;
		fbdName =null;
		MNum =null;
		MScrap =null;
		MState =null;
		cz=null;
		m=null;
		ms=null;
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
		if(fbdName!=null){
			fbdName=fbdName.trim();
		}
		if(MNum!=null){
			MNum=MNum.trim();
		}
		if(MScrap!=null){
			MScrap=MScrap.trim();
		}
		if(MState!=null){
			MState=MState.trim();
		}
		if(cz!=null){
			cz=cz.trim();
		}
	}
	
	public String queryOfFenyeM() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql2="from FbdMonitoring where MStateRealy='有效' ";
		if (id!=null) {
			hql2 =hql2+" and MId like '%"+id+"%' ";
		}
		if(fbdName != null && !"".equals(fbdName)){
			hql2="from FbdMonitoring where fbdId in (select fbdId from SectionFenbodian where fbdName like '%"+fbdName+"%') ";
		}
		if(MNum != null && !"".equals(MNum)){
			hql2=hql2+" and MNum like '%"+MNum+"%' ";
		}
		if(MScrap!=null && ! "".equals(MScrap)){
			hql2=hql2+" and MScrap like '%"+MScrap+"%' ";
		}
		if(MState!=null && ! "".equals(MState)){
			hql2=hql2+" and MState like '%"+MState+"%' ";
		}
		hql2=hql2+" order by MTimeStart desc,MCreateTime desc ";
		ms=ser.query(hql2, null, hql2, page, ser);
		//带上分部区部分拨点信息
		for (int i = 0; i < ms.size(); i++) {
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, ms.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			ms.get(i).setFbd(fbd);
		}
		ser.receiveStructure(getRequest());
		return result_m;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException{
		clearOptions();
		String hql="from FbdMonitoring where  MStateRealy='有效' order by MTimeStart desc,MCreateTime desc ";
		ms=ser.query(hql, null, hql, page, ser);
		for (int i = 0; i < ms.size(); i++) {
			SectionFenbodian fbd=(SectionFenbodian) ser.get(SectionFenbodian.class, ms.get(i).getFbdId());
			SectionFenbu fb=(SectionFenbu) ser.get(SectionFenbu.class, fbd.getFbId());
			SectionQubu qb=(SectionQubu) ser.get(SectionQubu.class, fb.getQbId());
			fb.setQb(qb);
			fbd.setFb(fb);
			ms.get(i).setFbd(fbd);
		}
		ser.receiveStructure(getRequest());
		return result_m;
	}
	
	public String deleteM() throws Exception {
		clearSpace();
		if (id!=null) {
			m=(FbdMonitoring) ser.get(FbdMonitoring.class, id);
			ser.delete(m);
			getRequest().setAttribute("m", m);
		}
		return gotoQuery();
	}
	
	public String updateM() throws Exception {
		clearSpace();
		Users u=(Users) getSession().getAttribute("user");
		if(m!=null && m.getMId()!=null && !"".equals(m.getMId().trim())){
			FbdMonitoring mtmp=(FbdMonitoring) ser.get(FbdMonitoring.class, m.getMId());
			mtmp.setMStateRealy("无效");
			ser.update(mtmp);
			//-----------------------
			m.setMId("m"+NameOfDate.getNum());
			m.setMCreateTime(new Timestamp(new Date().getTime()));
			m.setMStateRealy("有效");
			m.setUNum(u.getUNum());
			ser.save(m);
			
			getRequest().setAttribute("m", m);
		}
		return gotoQuery();
	}
	
	public String addM() throws Exception {
		clearSpace();
		Users u=(Users) getSession().getAttribute("user");
		if(m!=null){
			m.setMId("m"+NameOfDate.getNum());
			//------------------
			m.setMCreateTime(new Timestamp(new Date().getTime()));
			m.setMStateRealy("有效");
			m.setUNum(u.getUNum());
			
			ser.save(m);
			getRequest().setAttribute("m", m);
		}
		return gotoQuery();
	}
	
	
	
}
