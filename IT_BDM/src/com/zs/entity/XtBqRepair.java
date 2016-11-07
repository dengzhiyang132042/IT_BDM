package com.zs.entity;

import java.util.Date;

/**
 * XtBqRepair entity. @author MyEclipse Persistence Tools
 */

public class XtBqRepair implements java.io.Serializable {

	// Fields

	private String RId;
	private Date RDate;
	private Integer RWeek;
	private String RNum;
	private String RSn;
	private String RSim;
	private String RBattery;
	private String RLib;
	private String RNote;

	// Constructors

	/** default constructor */
	public XtBqRepair() {
	}

	/** minimal constructor */
	public XtBqRepair(String RId) {
		this.RId = RId;
	}

	/** full constructor */
	public XtBqRepair(String RId, Date RDate, Integer RWeek, String RNum,
			String RSn, String RSim, String RBattery, String RLib, String RNote) {
		this.RId = RId;
		this.RDate = RDate;
		this.RWeek = RWeek;
		this.RNum = RNum;
		this.RSn = RSn;
		this.RSim = RSim;
		this.RBattery = RBattery;
		this.RLib = RLib;
		this.RNote = RNote;
	}

	// Property accessors

	public String getRId() {
		return this.RId;
	}

	public void setRId(String RId) {
		this.RId = RId;
	}

	public Date getRDate() {
		return this.RDate;
	}

	public void setRDate(Date RDate) {
		this.RDate = RDate;
	}

	public Integer getRWeek() {
		return this.RWeek;
	}

	public void setRWeek(Integer RWeek) {
		this.RWeek = RWeek;
	}

	public String getRNum() {
		return this.RNum;
	}

	public void setRNum(String RNum) {
		this.RNum = RNum;
	}

	public String getRSn() {
		return this.RSn;
	}

	public void setRSn(String RSn) {
		this.RSn = RSn;
	}

	public String getRSim() {
		return this.RSim;
	}

	public void setRSim(String RSim) {
		this.RSim = RSim;
	}

	public String getRBattery() {
		return this.RBattery;
	}

	public void setRBattery(String RBattery) {
		this.RBattery = RBattery;
	}

	public String getRLib() {
		return this.RLib;
	}

	public void setRLib(String RLib) {
		this.RLib = RLib;
	}

	public String getRNote() {
		return this.RNote;
	}

	public void setRNote(String RNote) {
		this.RNote = RNote;
	}

}