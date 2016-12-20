package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * XtSite entity. @author MyEclipse Persistence Tools
 */

public class XtSite implements java.io.Serializable {

	// Fields

	private String SId;
	private String SNum;
	private String SName;
	private Date SStartDate;
	private Date SMaintainDate;
	private Integer SMaintainCycle;
	private String SMaintainType;
	private String SMaintainMan;
	private String SNotice;
	private String SNote;
	private String SSiteType;
	private Timestamp SCreateTime;
	private String SState;
	private String UNum;

	// Constructors

	/** default constructor */
	public XtSite() {
	}

	/** minimal constructor */
	public XtSite(String SId) {
		this.SId = SId;
	}

	/** full constructor */
	public XtSite(String SId, String SNum, String SName, Date SStartDate,
			Date SMaintainDate, Integer SMaintainCycle, String SMaintainType,
			String SMaintainMan, String SNotice, String SNote,
			String SSiteType, Timestamp SCreateTime, String SState, String UNum) {
		this.SId = SId;
		this.SNum = SNum;
		this.SName = SName;
		this.SStartDate = SStartDate;
		this.SMaintainDate = SMaintainDate;
		this.SMaintainCycle = SMaintainCycle;
		this.SMaintainType = SMaintainType;
		this.SMaintainMan = SMaintainMan;
		this.SNotice = SNotice;
		this.SNote = SNote;
		this.SSiteType = SSiteType;
		this.SCreateTime = SCreateTime;
		this.SState = SState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getSId() {
		return this.SId;
	}

	public void setSId(String SId) {
		this.SId = SId;
	}

	public String getSNum() {
		return this.SNum;
	}

	public void setSNum(String SNum) {
		this.SNum = SNum;
	}

	public String getSName() {
		return this.SName;
	}

	public void setSName(String SName) {
		this.SName = SName;
	}

	public Date getSStartDate() {
		return this.SStartDate;
	}

	public void setSStartDate(Date SStartDate) {
		this.SStartDate = SStartDate;
	}

	public Date getSMaintainDate() {
		return this.SMaintainDate;
	}

	public void setSMaintainDate(Date SMaintainDate) {
		this.SMaintainDate = SMaintainDate;
	}

	public Integer getSMaintainCycle() {
		return this.SMaintainCycle;
	}

	public void setSMaintainCycle(Integer SMaintainCycle) {
		this.SMaintainCycle = SMaintainCycle;
	}

	public String getSMaintainType() {
		return this.SMaintainType;
	}

	public void setSMaintainType(String SMaintainType) {
		this.SMaintainType = SMaintainType;
	}

	public String getSMaintainMan() {
		return this.SMaintainMan;
	}

	public void setSMaintainMan(String SMaintainMan) {
		this.SMaintainMan = SMaintainMan;
	}

	public String getSNotice() {
		return this.SNotice;
	}

	public void setSNotice(String SNotice) {
		this.SNotice = SNotice;
	}

	public String getSNote() {
		return this.SNote;
	}

	public void setSNote(String SNote) {
		this.SNote = SNote;
	}

	public String getSSiteType() {
		return this.SSiteType;
	}

	public void setSSiteType(String SSiteType) {
		this.SSiteType = SSiteType;
	}

	public Timestamp getSCreateTime() {
		return this.SCreateTime;
	}

	public void setSCreateTime(Timestamp SCreateTime) {
		this.SCreateTime = SCreateTime;
	}

	public String getSState() {
		return this.SState;
	}

	public void setSState(String SState) {
		this.SState = SState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}