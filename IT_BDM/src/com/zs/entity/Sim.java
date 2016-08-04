package com.zs.entity;

import java.util.Date;

/**
 * Sim entity. @author MyEclipse Persistence Tools
 */

public class Sim implements java.io.Serializable {

	// Fields

	private String SId;
	private String csId;
	private Integer SNumber;
	private Integer SMonth;
	private Double SFeeSum;
	private Date SDate;
	private String SNote;

	private String csName;
	
	// Constructors

	public String getCsName() {
		return csName;
	}

	public void setCsName(String csName) {
		this.csName = csName;
	}

	/** default constructor */
	public Sim() {
	}

	/** minimal constructor */
	public Sim(String SId) {
		this.SId = SId;
	}

	/** full constructor */
	public Sim(String SId, String csId, Integer SNumber, Integer SMonth,
			Double SFeeSum, Date SDate, String SNote) {
		this.SId = SId;
		this.csId = csId;
		this.SNumber = SNumber;
		this.SMonth = SMonth;
		this.SFeeSum = SFeeSum;
		this.SDate = SDate;
		this.SNote = SNote;
	}

	// Property accessors

	public String getSId() {
		return this.SId;
	}

	public void setSId(String SId) {
		this.SId = SId;
	}

	public String getCsId() {
		return this.csId;
	}

	public void setCsId(String csId) {
		this.csId = csId;
	}

	public Integer getSNumber() {
		return this.SNumber;
	}

	public void setSNumber(Integer SNumber) {
		this.SNumber = SNumber;
	}

	public Integer getSMonth() {
		return this.SMonth;
	}

	public void setSMonth(Integer SMonth) {
		this.SMonth = SMonth;
	}

	public Double getSFeeSum() {
		return this.SFeeSum;
	}

	public void setSFeeSum(Double SFeeSum) {
		this.SFeeSum = SFeeSum;
	}

	public Date getSDate() {
		return this.SDate;
	}

	public void setSDate(Date SDate) {
		this.SDate = SDate;
	}

	public String getSNote() {
		return this.SNote;
	}

	public void setSNote(String SNote) {
		this.SNote = SNote;
	}

}