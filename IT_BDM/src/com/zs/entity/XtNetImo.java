package com.zs.entity;

import java.util.Date;

/**
 * XtNetImo entity. @author MyEclipse Persistence Tools
 */

public class XtNetImo implements java.io.Serializable {

	// Fields

	private String IId;
	private String IArea;
	private String INum;
	private String IName;
	private String IType;
	private String IAccount;
	private String IPass;
	private String IIt;
	private Date IRegisterDate;
	private Date IServiceDate;
	private String IServiceType;

	// Constructors

	/** default constructor */
	public XtNetImo() {
	}

	/** minimal constructor */
	public XtNetImo(String IId) {
		this.IId = IId;
	}

	/** full constructor */
	public XtNetImo(String IId, String IArea, String INum, String IName,
			String IType, String IAccount, String IPass, String IIt,
			Date IRegisterDate, Date IServiceDate, String IServiceType) {
		this.IId = IId;
		this.IArea = IArea;
		this.INum = INum;
		this.IName = IName;
		this.IType = IType;
		this.IAccount = IAccount;
		this.IPass = IPass;
		this.IIt = IIt;
		this.IRegisterDate = IRegisterDate;
		this.IServiceDate = IServiceDate;
		this.IServiceType = IServiceType;
	}

	// Property accessors

	public String getIId() {
		return this.IId;
	}

	public void setIId(String IId) {
		this.IId = IId;
	}

	public String getIArea() {
		return this.IArea;
	}

	public void setIArea(String IArea) {
		this.IArea = IArea;
	}

	public String getINum() {
		return this.INum;
	}

	public void setINum(String INum) {
		this.INum = INum;
	}

	public String getIName() {
		return this.IName;
	}

	public void setIName(String IName) {
		this.IName = IName;
	}

	public String getIType() {
		return this.IType;
	}

	public void setIType(String IType) {
		this.IType = IType;
	}

	public String getIAccount() {
		return this.IAccount;
	}

	public void setIAccount(String IAccount) {
		this.IAccount = IAccount;
	}

	public String getIPass() {
		return this.IPass;
	}

	public void setIPass(String IPass) {
		this.IPass = IPass;
	}

	public String getIIt() {
		return this.IIt;
	}

	public void setIIt(String IIt) {
		this.IIt = IIt;
	}

	public Date getIRegisterDate() {
		return this.IRegisterDate;
	}

	public void setIRegisterDate(Date IRegisterDate) {
		this.IRegisterDate = IRegisterDate;
	}

	public Date getIServiceDate() {
		return this.IServiceDate;
	}

	public void setIServiceDate(Date IServiceDate) {
		this.IServiceDate = IServiceDate;
	}

	public String getIServiceType() {
		return this.IServiceType;
	}

	public void setIServiceType(String IServiceType) {
		this.IServiceType = IServiceType;
	}

}