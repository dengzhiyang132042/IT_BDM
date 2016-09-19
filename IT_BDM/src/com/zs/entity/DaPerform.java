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
	private String UName;
	private String UNameNext;
	
	
	// Constructors

	/** default constructor */
	public DaPerform() {
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

	/** minimal constructor */
	public DaPerform(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public DaPerform(String PId, String UNum, Timestamp PTime, String PState,
			String UNumNext, String DId) {
		this.PId = PId;
		this.UNum = UNum;
		this.PTime = PTime;
		this.PState = PState;
		this.UNumNext = UNumNext;
		this.DId = DId;
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

}