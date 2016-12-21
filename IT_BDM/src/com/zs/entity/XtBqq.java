package com.zs.entity;

import java.sql.Timestamp;
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
	private String BMan;
	private String BSection;
	private Date BRegisterDate;
	private String BIt;
	private Timestamp BServiceDate;
	private String BType;
	private String BState;
	private String UNum;

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
			String BNetName, String BMan, String BSection, Date BRegisterDate,
			String BIt, Timestamp BServiceDate, String BType, String BState,
			String UNum) {
		this.BId = BId;
		this.BNum = BNum;
		this.BName = BName;
		this.BNetNumber = BNetNumber;
		this.BNetName = BNetName;
		this.BMan = BMan;
		this.BSection = BSection;
		this.BRegisterDate = BRegisterDate;
		this.BIt = BIt;
		this.BServiceDate = BServiceDate;
		this.BType = BType;
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

	public String getBMan() {
		return this.BMan;
	}

	public void setBMan(String BMan) {
		this.BMan = BMan;
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

	public Timestamp getBServiceDate() {
		return this.BServiceDate;
	}

	public void setBServiceDate(Timestamp BServiceDate) {
		this.BServiceDate = BServiceDate;
	}

	public String getBType() {
		return this.BType;
	}

	public void setBType(String BType) {
		this.BType = BType;
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