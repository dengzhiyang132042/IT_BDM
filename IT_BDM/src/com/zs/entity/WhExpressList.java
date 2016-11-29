package com.zs.entity;

import java.util.Date;

/**
 * WhExpressList entity. @author MyEclipse Persistence Tools
 */

public class WhExpressList implements java.io.Serializable {

	// Fields

	private String EId;
	private Date EStartDate;
	private Date EEndDate;

	// Constructors

	/** default constructor */
	public WhExpressList() {
	}

	/** minimal constructor */
	public WhExpressList(String EId) {
		this.EId = EId;
	}

	/** full constructor */
	public WhExpressList(String EId, Date EStartDate, Date EEndDate) {
		this.EId = EId;
		this.EStartDate = EStartDate;
		this.EEndDate = EEndDate;
	}

	// Property accessors

	public String getEId() {
		return this.EId;
	}

	public void setEId(String EId) {
		this.EId = EId;
	}

	public Date getEStartDate() {
		return this.EStartDate;
	}

	public void setEStartDate(Date EStartDate) {
		this.EStartDate = EStartDate;
	}

	public Date getEEndDate() {
		return this.EEndDate;
	}

	public void setEEndDate(Date EEndDate) {
		this.EEndDate = EEndDate;
	}

}