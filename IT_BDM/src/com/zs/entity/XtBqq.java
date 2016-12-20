package com.zs.entity;

import java.util.Date;

/**
 * XtBqq entity. @author MyEclipse Persistence Tools
 */

public class XtBqq implements java.io.Serializable {

	// Fields

	private String BId;
	private String BNum;
	private String BName;
	private String BNetNumber;
	private String BNetName;
	private String BSection;
	private Date BRegisterDate;
	private String BIt;
	private Date BServiceDate;
	private String BType;

	// Constructors

	/** default constructor */
	public XtBqq() {
	}

	/** minimal constructor */
	public XtBqq(String BId) {
		this.BId = BId;
	}

	/** full constructor */
	public XtBqq(String BId, String BNum, String BName, String BNetNumber,
			String BNetName, String BSection, Date BRegisterDate, String BIt,
			Date BServiceDate, String BType) {
		this.BId = BId;
		this.BNum = BNum;
		this.BName = BName;
		this.BNetNumber = BNetNumber;
		this.BNetName = BNetName;
		this.BSection = BSection;
		this.BRegisterDate = BRegisterDate;
		this.BIt = BIt;
		this.BServiceDate = BServiceDate;
		this.BType = BType;
	}

	// Property accessors

	public String getBId() {
		return this.BId;
	}

	public void setBId(String BId) {
		this.BId = BId;
	}

	public String getBNum() {
		return this.BNum;
	}

	public void setBNum(String BNum) {
		this.BNum = BNum;
	}

	public String getBName() {
		return this.BName;
	}

	public void setBName(String BName) {
		this.BName = BName;
	}

	public String getBNetNumber() {
		return this.BNetNumber;
	}

	public void setBNetNumber(String BNetNumber) {
		this.BNetNumber = BNetNumber;
	}

	public String getBNetName() {
		return this.BNetName;
	}

	public void setBNetName(String BNetName) {
		this.BNetName = BNetName;
	}

	public String getBSection() {
		return this.BSection;
	}

	public void setBSection(String BSection) {
		this.BSection = BSection;
	}

	public Date getBRegisterDate() {
		return this.BRegisterDate;
	}

	public void setBRegisterDate(Date BRegisterDate) {
		this.BRegisterDate = BRegisterDate;
	}

	public String getBIt() {
		return this.BIt;
	}

	public void setBIt(String BIt) {
		this.BIt = BIt;
	}

	public Date getBServiceDate() {
		return this.BServiceDate;
	}

	public void setBServiceDate(Date BServiceDate) {
		this.BServiceDate = BServiceDate;
	}

	public String getBType() {
		return this.BType;
	}

	public void setBType(String BType) {
		this.BType = BType;
	}

}