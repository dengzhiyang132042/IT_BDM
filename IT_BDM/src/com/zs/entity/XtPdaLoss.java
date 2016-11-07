package com.zs.entity;

import java.util.Date;

/**
 * XtPdaLoss entity. @author MyEclipse Persistence Tools
 */

public class XtPdaLoss implements java.io.Serializable {

	// Fields

	private String LId;
	private Date LDate;
	private String LNum;
	private String LSn;
	private String LTel;
	private Date LHandleDate;
	private String LSeriesNumber;
	private String LPhone;
	private Integer LWeek;
	private String LNote;

	// Constructors

	/** default constructor */
	public XtPdaLoss() {
	}

	/** minimal constructor */
	public XtPdaLoss(String LId) {
		this.LId = LId;
	}

	/** full constructor */
	public XtPdaLoss(String LId, Date LDate, String LNum, String LSn,
			String LTel, Date LHandleDate, String LSeriesNumber, String LPhone,
			Integer LWeek, String LNote) {
		this.LId = LId;
		this.LDate = LDate;
		this.LNum = LNum;
		this.LSn = LSn;
		this.LTel = LTel;
		this.LHandleDate = LHandleDate;
		this.LSeriesNumber = LSeriesNumber;
		this.LPhone = LPhone;
		this.LWeek = LWeek;
		this.LNote = LNote;
	}

	// Property accessors

	public String getLId() {
		return this.LId;
	}

	public void setLId(String LId) {
		this.LId = LId;
	}

	public Date getLDate() {
		return this.LDate;
	}

	public void setLDate(Date LDate) {
		this.LDate = LDate;
	}

	public String getLNum() {
		return this.LNum;
	}

	public void setLNum(String LNum) {
		this.LNum = LNum;
	}

	public String getLSn() {
		return this.LSn;
	}

	public void setLSn(String LSn) {
		this.LSn = LSn;
	}

	public String getLTel() {
		return this.LTel;
	}

	public void setLTel(String LTel) {
		this.LTel = LTel;
	}

	public Date getLHandleDate() {
		return this.LHandleDate;
	}

	public void setLHandleDate(Date LHandleDate) {
		this.LHandleDate = LHandleDate;
	}

	public String getLSeriesNumber() {
		return this.LSeriesNumber;
	}

	public void setLSeriesNumber(String LSeriesNumber) {
		this.LSeriesNumber = LSeriesNumber;
	}

	public String getLPhone() {
		return this.LPhone;
	}

	public void setLPhone(String LPhone) {
		this.LPhone = LPhone;
	}

	public Integer getLWeek() {
		return this.LWeek;
	}

	public void setLWeek(Integer LWeek) {
		this.LWeek = LWeek;
	}

	public String getLNote() {
		return this.LNote;
	}

	public void setLNote(String LNote) {
		this.LNote = LNote;
	}

}