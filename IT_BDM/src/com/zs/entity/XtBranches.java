package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * XtBranches entity. @author MyEclipse Persistence Tools
 */

public class XtBranches implements java.io.Serializable {

	// Fields

	private String BId;
	private Date BDate;
	private Date BMaintainDate;
	private Integer BMaintainWeek;
	private String BNum1;
	private String BName1;
	private String BMaster1;
	private String BNum2;
	private String BName2;
	private String BNote;
	private String BType;
	private Timestamp BCreateTime;
	private String BState;
	private String UNum;

	// Constructors

	/** default constructor */
	public XtBranches() {
	}

	/** minimal constructor */
	public XtBranches(String BId) {
		this.BId = BId;
	}

	/** full constructor */
	public XtBranches(String BId, Date BDate, Date BMaintainDate,
			Integer BMaintainWeek, String BNum1, String BName1,
			String BMaster1, String BNum2, String BName2, String BNote,
			String BType, Timestamp BCreateTime, String BState, String UNum) {
		this.BId = BId;
		this.BDate = BDate;
		this.BMaintainDate = BMaintainDate;
		this.BMaintainWeek = BMaintainWeek;
		this.BNum1 = BNum1;
		this.BName1 = BName1;
		this.BMaster1 = BMaster1;
		this.BNum2 = BNum2;
		this.BName2 = BName2;
		this.BNote = BNote;
		this.BType = BType;
		this.BCreateTime = BCreateTime;
		this.BState = BState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getBId() {
		return this.BId;
	}

	public void setBId(String BId) {
		this.BId = BId;
	}

	public Date getBDate() {
		return this.BDate;
	}

	public void setBDate(Date BDate) {
		this.BDate = BDate;
	}

	public Date getBMaintainDate() {
		return this.BMaintainDate;
	}

	public void setBMaintainDate(Date BMaintainDate) {
		this.BMaintainDate = BMaintainDate;
	}

	public Integer getBMaintainWeek() {
		return this.BMaintainWeek;
	}

	public void setBMaintainWeek(Integer BMaintainWeek) {
		this.BMaintainWeek = BMaintainWeek;
	}

	public String getBNum1() {
		return this.BNum1;
	}

	public void setBNum1(String BNum1) {
		this.BNum1 = BNum1;
	}

	public String getBName1() {
		return this.BName1;
	}

	public void setBName1(String BName1) {
		this.BName1 = BName1;
	}

	public String getBMaster1() {
		return this.BMaster1;
	}

	public void setBMaster1(String BMaster1) {
		this.BMaster1 = BMaster1;
	}

	public String getBNum2() {
		return this.BNum2;
	}

	public void setBNum2(String BNum2) {
		this.BNum2 = BNum2;
	}

	public String getBName2() {
		return this.BName2;
	}

	public void setBName2(String BName2) {
		this.BName2 = BName2;
	}

	public String getBNote() {
		return this.BNote;
	}

	public void setBNote(String BNote) {
		this.BNote = BNote;
	}

	public String getBType() {
		return this.BType;
	}

	public void setBType(String BType) {
		this.BType = BType;
	}

	public Timestamp getBCreateTime() {
		return this.BCreateTime;
	}

	public void setBCreateTime(Timestamp BCreateTime) {
		this.BCreateTime = BCreateTime;
	}

	public String getBState() {
		return this.BState;
	}

	public void setBState(String BState) {
		this.BState = BState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}