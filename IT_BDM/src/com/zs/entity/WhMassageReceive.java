package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * WhMassageReceive entity. @author MyEclipse Persistence Tools
 */

public class WhMassageReceive implements java.io.Serializable {

	// Fields

	private String MId;
	private String MIt;
	private Date MDate;
	private String MType;
	private String MName;
	private String MNum;
	private String MSn;
	private String MSim;
	private String MHitchType;
	private String MHitchNote;
	private String EId;
	private String MNote;
	private Timestamp MCreateDatetime;
	private String MCzType;
	private String MState;
	private String UNum;

	// Constructors

	/** default constructor */
	public WhMassageReceive() {
	}

	/** minimal constructor */
	public WhMassageReceive(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public WhMassageReceive(String MId, String MIt, Date MDate, String MType,
			String MName, String MNum, String MSn, String MSim,
			String MHitchType, String MHitchNote, String EId, String MNote,
			Timestamp MCreateDatetime, String MCzType, String MState,
			String UNum) {
		this.MId = MId;
		this.MIt = MIt;
		this.MDate = MDate;
		this.MType = MType;
		this.MName = MName;
		this.MNum = MNum;
		this.MSn = MSn;
		this.MSim = MSim;
		this.MHitchType = MHitchType;
		this.MHitchNote = MHitchNote;
		this.EId = EId;
		this.MNote = MNote;
		this.MCreateDatetime = MCreateDatetime;
		this.MCzType = MCzType;
		this.MState = MState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public String getMIt() {
		return this.MIt;
	}

	public void setMIt(String MIt) {
		this.MIt = MIt;
	}

	public Date getMDate() {
		return this.MDate;
	}

	public void setMDate(Date MDate) {
		this.MDate = MDate;
	}

	public String getMType() {
		return this.MType;
	}

	public void setMType(String MType) {
		this.MType = MType;
	}

	public String getMName() {
		return this.MName;
	}

	public void setMName(String MName) {
		this.MName = MName;
	}

	public String getMNum() {
		return this.MNum;
	}

	public void setMNum(String MNum) {
		this.MNum = MNum;
	}

	public String getMSn() {
		return this.MSn;
	}

	public void setMSn(String MSn) {
		this.MSn = MSn;
	}

	public String getMSim() {
		return this.MSim;
	}

	public void setMSim(String MSim) {
		this.MSim = MSim;
	}

	public String getMHitchType() {
		return this.MHitchType;
	}

	public void setMHitchType(String MHitchType) {
		this.MHitchType = MHitchType;
	}

	public String getMHitchNote() {
		return this.MHitchNote;
	}

	public void setMHitchNote(String MHitchNote) {
		this.MHitchNote = MHitchNote;
	}

	public String getEId() {
		return this.EId;
	}

	public void setEId(String EId) {
		this.EId = EId;
	}

	public String getMNote() {
		return this.MNote;
	}

	public void setMNote(String MNote) {
		this.MNote = MNote;
	}

	public Timestamp getMCreateDatetime() {
		return this.MCreateDatetime;
	}

	public void setMCreateDatetime(Timestamp MCreateDatetime) {
		this.MCreateDatetime = MCreateDatetime;
	}

	public String getMCzType() {
		return this.MCzType;
	}

	public void setMCzType(String MCzType) {
		this.MCzType = MCzType;
	}

	public String getMState() {
		return this.MState;
	}

	public void setMState(String MState) {
		this.MState = MState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}