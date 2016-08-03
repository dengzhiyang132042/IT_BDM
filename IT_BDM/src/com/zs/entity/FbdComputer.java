package com.zs.entity;

import java.util.Date;


/**
 * FbdComputer entity. @author MyEclipse Persistence Tools
 */

public class FbdComputer  implements java.io.Serializable {

	private String cId;
    private String fbdId;
    private String CCpu;
    private String CMainboard;
    private String CMemory;
    private String CDisk;
    private String CMac;
    private String CDisplayer;
    private Date CTimeStart;
    private Double CUsedYear;
    private String CScrap;
    private String CNote;
    private String CState;
	
    private SectionFenbodian fbd;
	public SectionFenbodian getFbd() {
		return fbd;
	}

	public void setFbd(SectionFenbodian fbd) {
		this.fbd = fbd;
	}
	/** default constructor */
	public FbdComputer() {
	}
    
    public FbdComputer(String cId) {
    	this.cId=cId;
	}
    public FbdComputer(String cId,String fbdId,String CCpu,String CMainboard,String CMemory ,String CDisk ,String CMac ,String CDisplayer 
    		,Date CTimeStart ,Double CUsedYear ,String CScrap ,String CNote ,String CState) {
    	this.cId=cId;
    	this.fbdId=fbdId;
    	this.CCpu=CCpu;
    	this.CMainboard=CMainboard;
    	this.CMemory=CMemory;
    	this.CDisk=CDisk;
    	this.CMac=CMac;
    	this.CDisplayer=CDisplayer;
    	this.CTimeStart=CTimeStart;
    	this.CUsedYear=CUsedYear;
    	this.CScrap=CScrap;
    	this.CNote=CNote;
    	this.CState=CState;
	}
    
    //***************
    public String getcId() {
    	return cId;
    }
    
    public void setcId(String cId) {
    	this.cId = cId;
    }
	public String getFbdId() {
		return fbdId;
	}
	public void setFbdId(String fbdId) {
		this.fbdId = fbdId;
	}
	public String getCCpu() {
		return CCpu;
	}
	public void setCCpu(String cCpu) {
		CCpu = cCpu;
	}
	public String getCMainboard() {
		return CMainboard;
	}
	public void setCMainboard(String cMainboard) {
		CMainboard = cMainboard;
	}
	public String getCMemory() {
		return CMemory;
	}
	public void setCMemory(String cMemory) {
		CMemory = cMemory;
	}
	public String getCDisk() {
		return CDisk;
	}
	public void setCDisk(String cDisk) {
		CDisk = cDisk;
	}
	public String getCMac() {
		return CMac;
	}
	public void setCMac(String cMac) {
		CMac = cMac;
	}
	public String getCDisplayer() {
		return CDisplayer;
	}
	public void setCDisplayer(String cDisplayer) {
		CDisplayer = cDisplayer;
	}
	public Date getCTimeStart() {
		return CTimeStart;
	}
	public void setCTimeStart(Date cTimeStart) {
		CTimeStart = cTimeStart;
	}
	public Double getCUsedYear() {
		return CUsedYear;
	}
	public void setCUsedYear(Double cUsedYear) {
		CUsedYear = cUsedYear;
	}
	public String getCScrap() {
		return CScrap;
	}
	public void setCScrap(String cScrap) {
		CScrap = cScrap;
	}
	public String getCNote() {
		return CNote;
	}
	public void setCNote(String cNote) {
		CNote = cNote;
	}
	public String getCState() {
		return CState;
	}
	public void setCState(String cState) {
		CState = cState;
	}


}