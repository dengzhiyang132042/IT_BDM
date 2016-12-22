package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * XtZmNumber entity. @author MyEclipse Persistence Tools
 */

public class XtZmNumber implements java.io.Serializable {

	// Fields

	private String zmId;
	private Date zmApplyDate;
	private String zmApplyCs;
	private String zmApplyMaster;
	private String zmNumber;
	private String zmOnJob;
	private String zmServiceMaster;
	private Date zmServiceDate;
	private Integer zmServiceWeek;
	private String zmNote;
	private String zmType;
	private Timestamp zmCreateTime;
	private String zmState;
	private String UNum;

	// Constructors

	/** default constructor */
	public XtZmNumber() {
	}

	/** minimal constructor */
	public XtZmNumber(String zmId) {
		this.zmId = zmId;
	}

	/** full constructor */
	public XtZmNumber(String zmId, Date zmApplyDate, String zmApplyCs,
			String zmApplyMaster, String zmNumber, String zmOnJob,
			String zmServiceMaster, Date zmServiceDate, Integer zmServiceWeek,
			String zmNote, String zmType, Timestamp zmCreateTime,
			String zmState, String UNum) {
		this.zmId = zmId;
		this.zmApplyDate = zmApplyDate;
		this.zmApplyCs = zmApplyCs;
		this.zmApplyMaster = zmApplyMaster;
		this.zmNumber = zmNumber;
		this.zmOnJob = zmOnJob;
		this.zmServiceMaster = zmServiceMaster;
		this.zmServiceDate = zmServiceDate;
		this.zmServiceWeek = zmServiceWeek;
		this.zmNote = zmNote;
		this.zmType = zmType;
		this.zmCreateTime = zmCreateTime;
		this.zmState = zmState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getZmId() {
		return this.zmId;
	}

	public void setZmId(String zmId) {
		this.zmId = zmId;
	}

	public Date getZmApplyDate() {
		return this.zmApplyDate;
	}

	public void setZmApplyDate(Date zmApplyDate) {
		this.zmApplyDate = zmApplyDate;
	}

	public String getZmApplyCs() {
		return this.zmApplyCs;
	}

	public void setZmApplyCs(String zmApplyCs) {
		this.zmApplyCs = zmApplyCs;
	}

	public String getZmApplyMaster() {
		return this.zmApplyMaster;
	}

	public void setZmApplyMaster(String zmApplyMaster) {
		this.zmApplyMaster = zmApplyMaster;
	}

	public String getZmNumber() {
		return this.zmNumber;
	}

	public void setZmNumber(String zmNumber) {
		this.zmNumber = zmNumber;
	}

	public String getZmOnJob() {
		return this.zmOnJob;
	}

	public void setZmOnJob(String zmOnJob) {
		this.zmOnJob = zmOnJob;
	}

	public String getZmServiceMaster() {
		return this.zmServiceMaster;
	}

	public void setZmServiceMaster(String zmServiceMaster) {
		this.zmServiceMaster = zmServiceMaster;
	}

	public Date getZmServiceDate() {
		return this.zmServiceDate;
	}

	public void setZmServiceDate(Date zmServiceDate) {
		this.zmServiceDate = zmServiceDate;
	}

	public Integer getZmServiceWeek() {
		return this.zmServiceWeek;
	}

	public void setZmServiceWeek(Integer zmServiceWeek) {
		this.zmServiceWeek = zmServiceWeek;
	}

	public String getZmNote() {
		return this.zmNote;
	}

	public void setZmNote(String zmNote) {
		this.zmNote = zmNote;
	}

	public String getZmType() {
		return this.zmType;
	}

	public void setZmType(String zmType) {
		this.zmType = zmType;
	}

	public Timestamp getZmCreateTime() {
		return this.zmCreateTime;
	}

	public void setZmCreateTime(Timestamp zmCreateTime) {
		this.zmCreateTime = zmCreateTime;
	}

	public String getZmState() {
		return this.zmState;
	}

	public void setZmState(String zmState) {
		this.zmState = zmState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}