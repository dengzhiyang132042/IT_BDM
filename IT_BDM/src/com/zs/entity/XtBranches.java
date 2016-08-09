package com.zs.entity;

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
	private String BPhone1;
	private String BMaster2;
	private String BCard2;
	private String BPhone2;
	private String BNum2;
	private String BName2;
	private String BNote;

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
			String BMaster1, String BPhone1, String BMaster2, String BCard2,
			String BPhone2, String BNum2, String BName2, String BNote) {
		this.BId = BId;
		this.BDate = BDate;
		this.BMaintainDate = BMaintainDate;
		this.BMaintainWeek = BMaintainWeek;
		this.BNum1 = BNum1;
		this.BName1 = BName1;
		this.BMaster1 = BMaster1;
		this.BPhone1 = BPhone1;
		this.BMaster2 = BMaster2;
		this.BCard2 = BCard2;
		this.BPhone2 = BPhone2;
		this.BNum2 = BNum2;
		this.BName2 = BName2;
		this.BNote = BNote;
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

	public String getBPhone1() {
		return this.BPhone1;
	}

	public void setBPhone1(String BPhone1) {
		this.BPhone1 = BPhone1;
	}

	public String getBMaster2() {
		return this.BMaster2;
	}

	public void setBMaster2(String BMaster2) {
		this.BMaster2 = BMaster2;
	}

	public String getBCard2() {
		return this.BCard2;
	}

	public void setBCard2(String BCard2) {
		this.BCard2 = BCard2;
	}

	public String getBPhone2() {
		return this.BPhone2;
	}

	public void setBPhone2(String BPhone2) {
		this.BPhone2 = BPhone2;
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

}