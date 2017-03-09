package com.zs.entity;

import java.sql.Timestamp;

/**
 * DaPerform entity. @author MyEclipse Persistence Tools
 */

public class DaPerform implements java.io.Serializable {

	// Fields

	private String PId;
	private String UNum;
	private Timestamp PTime;
	private String PState;
	private String UNumNext;
	private String DId;
	private String PNote;
	private String PReason;
	private String PDesc;

	// Constructors
	private String UName;
	private String UNameNext;
	private String PTimeString;

	public String getPTimeString() {
		return PTimeString;
	}

	public void setPTimeString(String pTimeString) {
		PTimeString = pTimeString;
	}
	
	
	/** default constructor */
	public DaPerform() {
	}

	/** minimal constructor */
	public DaPerform(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public DaPerform(String PId, String UNum, Timestamp PTime, String PState,
			String UNumNext, String DId, String PNote, String PReason,
			String PDesc) {
		this.PId = PId;
		this.UNum = UNum;
		this.PTime = PTime;
		this.PState = PState;
		this.UNumNext = UNumNext;
		this.DId = DId;
		this.PNote = PNote;
		this.PReason = PReason;
		this.PDesc = PDesc;
	}

	// Property accessors

	public String getPId() {
		return this.PId;
	}

	public void setPId(String PId) {
		this.PId = PId;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

	public Timestamp getPTime() {
		return this.PTime;
	}

	public void setPTime(Timestamp PTime) {
		this.PTime = PTime;
	}

	public String getPState() {
		return this.PState;
	}

	public void setPState(String PState) {
		this.PState = PState;
	}

	public String getUNumNext() {
		return this.UNumNext;
	}

	public void setUNumNext(String UNumNext) {
		this.UNumNext = UNumNext;
	}

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public String getPNote() {
		return this.PNote;
	}

	public void setPNote(String PNote) {
		this.PNote = PNote;
	}

	public String getPReason() {
		return this.PReason;
	}

	public void setPReason(String PReason) {
		this.PReason = PReason;
	}

	public String getPDesc() {
		return this.PDesc;
	}

	public void setPDesc(String PDesc) {
		this.PDesc = PDesc;
	}

	public String getUName() {
		return UName;
	}

	public void setUName(String uName) {
		UName = uName;
	}

	public String getUNameNext() {
		return UNameNext;
	}

	public void setUNameNext(String uNameNext) {
		UNameNext = uNameNext;
	}

}