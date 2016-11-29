package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * WhDeviceScout entity. @author MyEclipse Persistence Tools
 */

public class WhDeviceScout implements java.io.Serializable {

	// Fields

	private String DId;
	private Date DDate;
	private Timestamp DTime;
	private String DFit;
	private String DFitFirm;
	private String DAbnormalNote;
	private String DResult;
	private String DIt;
	private String DWeekMaintain;
	private String DMonthMaintain;
	private String DNote;

	// Constructors

	/** default constructor */
	public WhDeviceScout() {
	}

	/** minimal constructor */
	public WhDeviceScout(String DId) {
		this.DId = DId;
	}

	/** full constructor */
	public WhDeviceScout(String DId, Date DDate, Timestamp DTime, String DFit,
			String DFitFirm, String DAbnormalNote, String DResult, String DIt,
			String DWeekMaintain, String DMonthMaintain, String DNote) {
		this.DId = DId;
		this.DDate = DDate;
		this.DTime = DTime;
		this.DFit = DFit;
		this.DFitFirm = DFitFirm;
		this.DAbnormalNote = DAbnormalNote;
		this.DResult = DResult;
		this.DIt = DIt;
		this.DWeekMaintain = DWeekMaintain;
		this.DMonthMaintain = DMonthMaintain;
		this.DNote = DNote;
	}

	// Property accessors

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public Date getDDate() {
		return this.DDate;
	}

	public void setDDate(Date DDate) {
		this.DDate = DDate;
	}

	public Timestamp getDTime() {
		return this.DTime;
	}

	public void setDTime(Timestamp DTime) {
		this.DTime = DTime;
	}

	public String getDFit() {
		return this.DFit;
	}

	public void setDFit(String DFit) {
		this.DFit = DFit;
	}

	public String getDFitFirm() {
		return this.DFitFirm;
	}

	public void setDFitFirm(String DFitFirm) {
		this.DFitFirm = DFitFirm;
	}

	public String getDAbnormalNote() {
		return this.DAbnormalNote;
	}

	public void setDAbnormalNote(String DAbnormalNote) {
		this.DAbnormalNote = DAbnormalNote;
	}

	public String getDResult() {
		return this.DResult;
	}

	public void setDResult(String DResult) {
		this.DResult = DResult;
	}

	public String getDIt() {
		return this.DIt;
	}

	public void setDIt(String DIt) {
		this.DIt = DIt;
	}

	public String getDWeekMaintain() {
		return this.DWeekMaintain;
	}

	public void setDWeekMaintain(String DWeekMaintain) {
		this.DWeekMaintain = DWeekMaintain;
	}

	public String getDMonthMaintain() {
		return this.DMonthMaintain;
	}

	public void setDMonthMaintain(String DMonthMaintain) {
		this.DMonthMaintain = DMonthMaintain;
	}

	public String getDNote() {
		return this.DNote;
	}

	public void setDNote(String DNote) {
		this.DNote = DNote;
	}

}