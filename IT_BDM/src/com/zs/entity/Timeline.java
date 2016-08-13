package com.zs.entity;

import java.sql.Timestamp;

/**
 * Timeline entity. @author MyEclipse Persistence Tools
 */

public class Timeline implements java.io.Serializable {

	// Fields

	private String tlId;
	private String userNum;
	private Timestamp tlTime;
	private String tlState;
	private String tlTableName;
	private String tlTableId;

	private String tlTableName2;//新加的中文表名
	
	// Constructors

	public String getTlTableName2() {
		return tlTableName2;
	}

	public void setTlTableName2(String tlTableName2) {
		this.tlTableName2 = tlTableName2;
	}

	/** default constructor */
	public Timeline() {
	}

	/** minimal constructor */
	public Timeline(String tlId) {
		this.tlId = tlId;
	}

	/** full constructor */
	public Timeline(String tlId, String userNum, Timestamp tlTime,
			String tlState, String tlTableName, String tlTableId) {
		this.tlId = tlId;
		this.userNum = userNum;
		this.tlTime = tlTime;
		this.tlState = tlState;
		this.tlTableName = tlTableName;
		this.tlTableId = tlTableId;
	}

	// Property accessors

	public String getTlId() {
		return this.tlId;
	}

	public void setTlId(String tlId) {
		this.tlId = tlId;
	}

	public String getUserNum() {
		return this.userNum;
	}

	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}

	public Timestamp getTlTime() {
		return this.tlTime;
	}

	public void setTlTime(Timestamp tlTime) {
		this.tlTime = tlTime;
	}

	public String getTlState() {
		return this.tlState;
	}

	public void setTlState(String tlState) {
		this.tlState = tlState;
	}

	public String getTlTableName() {
		return this.tlTableName;
	}

	public void setTlTableName(String tlTableName) {
		this.tlTableName = tlTableName;
	}

	public String getTlTableId() {
		return this.tlTableId;
	}

	public void setTlTableId(String tlTableId) {
		this.tlTableId = tlTableId;
	}

}