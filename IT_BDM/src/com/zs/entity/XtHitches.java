package com.zs.entity;

import java.sql.Timestamp;

/**
 * XtHitches entity. @author MyEclipse Persistence Tools
 */

public class XtHitches implements java.io.Serializable {

	// Fields

	private String HId;
	private Timestamp HTimeStart;
	private Timestamp HTimeEnd;
	private String HDesc;
	private String HNote;
	private String HSolve;
	private Timestamp HCreateTime;
	private String HState;
	private String HType;
	private String UNum;
	private int HTimeInterval;

	// Constructors

	/** default constructor */
	public XtHitches() {
	}

	/** minimal constructor */
	public XtHitches(String HId) {
		this.HId = HId;
	}

	/** full constructor */
	public XtHitches(String HId, Timestamp HTimeStart, Timestamp HTimeEnd,
			String HDesc, String HNote, String HSolve, Timestamp HCreateTime,
			String HState, String HType, String UNum) {
		this.HId = HId;
		this.HTimeStart = HTimeStart;
		this.HTimeEnd = HTimeEnd;
		this.HDesc = HDesc;
		this.HNote = HNote;
		this.HSolve = HSolve;
		this.HCreateTime = HCreateTime;
		this.HState = HState;
		this.HType = HType;
		this.UNum = UNum;
	}

	// Property accessors

	public String getHId() {
		return this.HId;
	}

	public void setHId(String HId) {
		this.HId = HId;
	}

	public Timestamp getHTimeStart() {
		return this.HTimeStart;
	}

	public void setHTimeStart(Timestamp HTimeStart) {
		this.HTimeStart = HTimeStart;
	}

	public Timestamp getHTimeEnd() {
		return this.HTimeEnd;
	}

	public void setHTimeEnd(Timestamp HTimeEnd) {
		this.HTimeEnd = HTimeEnd;
	}

	public String getHDesc() {
		return this.HDesc;
	}

	public void setHDesc(String HDesc) {
		this.HDesc = HDesc;
	}

	public String getHNote() {
		return this.HNote;
	}

	public void setHNote(String HNote) {
		this.HNote = HNote;
	}

	public String getHSolve() {
		return this.HSolve;
	}

	public void setHSolve(String HSolve) {
		this.HSolve = HSolve;
	}

	public Timestamp getHCreateTime() {
		return this.HCreateTime;
	}

	public void setHCreateTime(Timestamp HCreateTime) {
		this.HCreateTime = HCreateTime;
	}

	public String getHState() {
		return this.HState;
	}

	public void setHState(String HState) {
		this.HState = HState;
	}

	public String getHType() {
		return this.HType;
	}

	public void setHType(String HType) {
		this.HType = HType;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

	public int getHTimeInterval() {
		return HTimeInterval;
	}

	public void setHTimeInterval(int hTimeInterval) {
		HTimeInterval = hTimeInterval;
	}

}