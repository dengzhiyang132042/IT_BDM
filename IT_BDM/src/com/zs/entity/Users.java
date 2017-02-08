package com.zs.entity;

import java.sql.Timestamp;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private String UNum;
	private String UPass;
	private String UName;
	private String csId;
	private String UJob;
	private Timestamp UStartTime;
	private String RId;
	private String UMail;
	private String UState;

	// Constructors
	private Role r;
	private String csGroup;
	
	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String UNum) {
		this.UNum = UNum;
	}

	/** full constructor */
	public Users(String UNum, String UPass, String UName, String csId,
			String UJob, Timestamp UStartTime, String RId, String UMail,
			String UState) {
		this.UNum = UNum;
		this.UPass = UPass;
		this.UName = UName;
		this.csId = csId;
		this.UJob = UJob;
		this.UStartTime = UStartTime;
		this.RId = RId;
		this.UMail = UMail;
		this.UState = UState;
	}

	// Property accessors

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

	public String getUPass() {
		return this.UPass;
	}

	public void setUPass(String UPass) {
		this.UPass = UPass;
	}

	public String getUName() {
		return this.UName;
	}

	public void setUName(String UName) {
		this.UName = UName;
	}

	public String getCsId() {
		return this.csId;
	}

	public void setCsId(String csId) {
		this.csId = csId;
	}

	public String getUJob() {
		return this.UJob;
	}

	public void setUJob(String UJob) {
		this.UJob = UJob;
	}

	public Timestamp getUStartTime() {
		return this.UStartTime;
	}

	public void setUStartTime(Timestamp UStartTime) {
		this.UStartTime = UStartTime;
	}

	public String getRId() {
		return this.RId;
	}

	public void setRId(String RId) {
		this.RId = RId;
	}

	public String getUMail() {
		return this.UMail;
	}

	public void setUMail(String UMail) {
		this.UMail = UMail;
	}

	public String getUState() {
		return this.UState;
	}

	public void setUState(String UState) {
		this.UState = UState;
	}

	public Role getR() {
		return r;
	}

	public void setR(Role r) {
		this.r = r;
	}

	public String getCsGroup() {
		return csGroup;
	}

	public void setCsGroup(String csGroup) {
		this.csGroup = csGroup;
	}
	
}