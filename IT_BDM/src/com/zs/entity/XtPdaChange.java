package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * XtPdaChange entity. @author MyEclipse Persistence Tools
 */

public class XtPdaChange implements java.io.Serializable {

	// Fields

	private String CId;
	private Date CDate;
	private Integer CWeek;
	private String CMan;
	private String CPage;
	private String COldNum;
	private String CNewNum;
	private String CSn;
	private String CIt;
	private Date CChangeDate;
	private String CResult;
	private String CReceiveMan;
	private String CNote;
	private Timestamp CCreateTime;
	private String CType;
	private String CState;
	private String UNum;

	// Constructors

	/** default constructor */
	public XtPdaChange() {
	}

	/** minimal constructor */
	public XtPdaChange(String CId) {
		this.CId = CId;
	}

	/** full constructor */
	public XtPdaChange(String CId, Date CDate, Integer CWeek, String CMan,
			String CPage, String COldNum, String CNewNum, String CSn,
			String CIt, Date CChangeDate, String CResult, String CReceiveMan,
			String CNote, Timestamp CCreateTime, String CType, String CState,
			String UNum) {
		this.CId = CId;
		this.CDate = CDate;
		this.CWeek = CWeek;
		this.CMan = CMan;
		this.CPage = CPage;
		this.COldNum = COldNum;
		this.CNewNum = CNewNum;
		this.CSn = CSn;
		this.CIt = CIt;
		this.CChangeDate = CChangeDate;
		this.CResult = CResult;
		this.CReceiveMan = CReceiveMan;
		this.CNote = CNote;
		this.CCreateTime = CCreateTime;
		this.CType = CType;
		this.CState = CState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getCId() {
		return this.CId;
	}

	public void setCId(String CId) {
		this.CId = CId;
	}

	public Date getCDate() {
		return this.CDate;
	}

	public void setCDate(Date CDate) {
		this.CDate = CDate;
	}

	public Integer getCWeek() {
		return this.CWeek;
	}

	public void setCWeek(Integer CWeek) {
		this.CWeek = CWeek;
	}

	public String getCMan() {
		return this.CMan;
	}

	public void setCMan(String CMan) {
		this.CMan = CMan;
	}

	public String getCPage() {
		return this.CPage;
	}

	public void setCPage(String CPage) {
		this.CPage = CPage;
	}

	public String getCOldNum() {
		return this.COldNum;
	}

	public void setCOldNum(String COldNum) {
		this.COldNum = COldNum;
	}

	public String getCNewNum() {
		return this.CNewNum;
	}

	public void setCNewNum(String CNewNum) {
		this.CNewNum = CNewNum;
	}

	public String getCSn() {
		return this.CSn;
	}

	public void setCSn(String CSn) {
		this.CSn = CSn;
	}

	public String getCIt() {
		return this.CIt;
	}

	public void setCIt(String CIt) {
		this.CIt = CIt;
	}

	public Date getCChangeDate() {
		return this.CChangeDate;
	}

	public void setCChangeDate(Date CChangeDate) {
		this.CChangeDate = CChangeDate;
	}

	public String getCResult() {
		return this.CResult;
	}

	public void setCResult(String CResult) {
		this.CResult = CResult;
	}

	public String getCReceiveMan() {
		return this.CReceiveMan;
	}

	public void setCReceiveMan(String CReceiveMan) {
		this.CReceiveMan = CReceiveMan;
	}

	public String getCNote() {
		return this.CNote;
	}

	public void setCNote(String CNote) {
		this.CNote = CNote;
	}

	public Timestamp getCCreateTime() {
		return this.CCreateTime;
	}

	public void setCCreateTime(Timestamp CCreateTime) {
		this.CCreateTime = CCreateTime;
	}

	public String getCType() {
		return this.CType;
	}

	public void setCType(String CType) {
		this.CType = CType;
	}

	public String getCState() {
		return this.CState;
	}

	public void setCState(String CState) {
		this.CState = CState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}