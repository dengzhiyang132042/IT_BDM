package com.zs.action.yjz;

import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;

public class SectionAction extends MyBaseAction{
	IService ser;
	List<SectionQubu> qbs; 
	List<SectionFenbu> fbs; 
	List<SectionFenbodian> fbds; 
	
	SectionQubu sec;
	SectionFenbu fb;
	SectionFenbodian fbd;
	
	
	
	public List<SectionQubu> getQbs() {
		return qbs;
	}
	public void setQbs(List<SectionQubu> qbs) {
		this.qbs = qbs;
	}
	public List<SectionFenbu> getFbs() {
		return fbs;
	}
	public void setFbs(List<SectionFenbu> fbs) {
		this.fbs = fbs;
	}
	public List<SectionFenbodian> getFbds() {
		return fbds;
	}
	public void setFbds(List<SectionFenbodian> fbds) {
		this.fbds = fbds;
	}
	public SectionQubu getSec() {
		return sec;
	}
	public void setSec(SectionQubu sec) {
		this.sec = sec;
	}
	public SectionFenbu getFb() {
		return fb;
	}
	public void setFb(SectionFenbu fb) {
		this.fb = fb;
	}
	public SectionFenbodian getFbd() {
		return fbd;
	}
	public void setFbd(SectionFenbodian fbd) {
		this.fbd = fbd;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	
	
	@Override
	public String execute() throws Exception {
		qbs=ser.find("from SectionQubu where qb_id=?",new String[]{"qb1"});
		return SUCCESS;
	}
	
	public String add() throws Exception {
		for (int i = 0; i < 10; i++) {
			SectionQubu qubu=new SectionQubu("qb"+i);
			ser.save(qubu);
		}
		return SUCCESS;
	}
	
}

