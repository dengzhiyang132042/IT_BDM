package com.zs.entity;

import java.util.Date;

/**
 * XtSite entity. @author MyEclipse Persistence Tools
 */

public class XtSite implements java.io.Serializable {

	// Fields

	private String SId;
	private String SNum;
	private String SName;
	private String SFbd;
	private Date SStartDate;
	private Date SMaintainDate;
	private Integer SMaintainCycle;
	private String SMaintainType;
	private String SMaintainMan;
	private String SNotice;
	private String SHanding;
	private String SNote;

	// Constructors

	/** default constructor */
	public XtSite() {
	}

	/** minimal constructor */
	public XtSite(String SId) {
		this.SId = SId;
	}

	/** full constructor */
	public XtSite(String SId, String SNum, String SName, String SFbd,
			Date SStartDate, Date SMaintainDate, Integer SMaintainCycle,
			String SMaintainType, String SMaintainMan, String SNotice,
			String SHanding, String SNote) {
		this.SId = SId;
		this.SNum = SNum;
		this.SName = SName;
		this.SFbd = SFbd;
		this.SStartDate = SStartDate;
		this.SMaintainDate = SMaintainDate;
		this.SMaintainCycle = SMaintainCycle;
		this.SMaintainType = SMaintainType;
		this.SMaintainMan = SMaintainMan;
		this.SNotice = SNotice;
		this.SHanding = SHanding;
		this.SNote = SNote;
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

	public String getSFbd() {
		return this.SFbd;
	}

	public void setSFbd(String SFbd) {
		this.SFbd = SFbd;
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

	public String getSHanding() {
		return this.SHanding;
	}

	public void setSHanding(String SHanding) {
		this.SHanding = SHanding;
	}

	public String getSNote() {
		return this.SNote;
	}

	public void setSNote(String SNote) {
		this.SNote = SNote;
	}

}