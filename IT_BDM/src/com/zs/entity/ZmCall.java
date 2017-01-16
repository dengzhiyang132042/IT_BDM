package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmCall entity. @author MyEclipse Persistence Tools
 */

public class ZmCall implements java.io.Serializable {

	// Fields

	private String CId;
	private Date CDate;
	private String CSection;
	private String CNum;
	private String CName;
	private String CPhone;
	private String CPass;
	private String CIt;
	private String CJob;
	private Integer CWeek;
	private String CNote;
	private Timestamp CCreateTime;
	private String CType;
	private String CState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmCall() {
	}

	/** minimal constructor */
	public ZmCall(String CId) {
		this.CId = CId;
	}

	/** full constructor */
	public ZmCall(String CId, Date CDate, String CSection, String CNum,
			String CName, String CPhone, String CPass, String CIt, String CJob,
			Integer CWeek, String CNote, Timestamp CCreateTime, String CType,
			String CState, String UNum) {
		this.CId = CId;
		this.CDate = CDate;
		this.CSection = CSection;
		this.CNum = CNum;
		this.CName = CName;
		this.CPhone = CPhone;
		this.CPass = CPass;
		this.CIt = CIt;
		this.CJob = CJob;
		this.CWeek = CWeek;
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

	public String getCSection() {
		return this.CSection;
	}

	public void setCSection(String CSection) {
		this.CSection = CSection;
	}

	public String getCNum() {
		return this.CNum;
	}

	public void setCNum(String CNum) {
		this.CNum = CNum;
	}

	public String getCName() {
		return this.CName;
	}

	public void setCName(String CName) {
		this.CName = CName;
	}

	public String getCPhone() {
		return this.CPhone;
	}

	public void setCPhone(String CPhone) {
		this.CPhone = CPhone;
	}

	public String getCPass() {
		return this.CPass;
	}

	public void setCPass(String CPass) {
		this.CPass = CPass;
	}

	public String getCIt() {
		return this.CIt;
	}

	public void setCIt(String CIt) {
		this.CIt = CIt;
	}

	public String getCJob() {
		return this.CJob;
	}

	public void setCJob(String CJob) {
		this.CJob = CJob;
	}

	public Integer getCWeek() {
		return this.CWeek;
	}

	public void setCWeek(Integer CWeek) {
		this.CWeek = CWeek;
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