package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * FbdListLink entity. @author MyEclipse Persistence Tools
 */

public class FbdListLink implements java.io.Serializable {

	// Fields

	private String llId;
	private String fbdId;
	private String csMaster;
	private Date llDateNeed;
	private Date llDateCommit;
	private String llName;
	private Integer llNumber;
	private String llUnit;
	private String llNorms;
	private String llLink;
	private String llNote;
	private String llState;
	private String llType;
	private Timestamp llCreateTime;
	private String llValidState;
	private String UNum;

	private SectionFenbodian fbd;

	// Constructors

	public SectionFenbodian getFbd() {
		return fbd;
	}

	public void setFbd(SectionFenbodian fbd) {
		this.fbd = fbd;
	}
	/** default constructor */
	public FbdListLink() {
	}

	/** minimal constructor */
	public FbdListLink(String llId) {
		this.llId = llId;
	}

	/** full constructor */
	public FbdListLink(String llId, String fbdId, String csMaster,
			Date llDateNeed, Date llDateCommit, String llName,
			Integer llNumber, String llUnit, String llNorms, String llLink,
			String llNote, String llState, String llType,
			Timestamp llCreateTime, String llValidState, String UNum) {
		this.llId = llId;
		this.fbdId = fbdId;
		this.csMaster = csMaster;
		this.llDateNeed = llDateNeed;
		this.llDateCommit = llDateCommit;
		this.llName = llName;
		this.llNumber = llNumber;
		this.llUnit = llUnit;
		this.llNorms = llNorms;
		this.llLink = llLink;
		this.llNote = llNote;
		this.llState = llState;
		this.llType = llType;
		this.llCreateTime = llCreateTime;
		this.llValidState = llValidState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getLlId() {
		return this.llId;
	}

	public void setLlId(String llId) {
		this.llId = llId;
	}

	public String getFbdId() {
		return this.fbdId;
	}

	public void setFbdId(String fbdId) {
		this.fbdId = fbdId;
	}

	public String getCsMaster() {
		return this.csMaster;
	}

	public void setCsMaster(String csMaster) {
		this.csMaster = csMaster;
	}

	public Date getLlDateNeed() {
		return this.llDateNeed;
	}

	public void setLlDateNeed(Date llDateNeed) {
		this.llDateNeed = llDateNeed;
	}

	public Date getLlDateCommit() {
		return this.llDateCommit;
	}

	public void setLlDateCommit(Date llDateCommit) {
		this.llDateCommit = llDateCommit;
	}

	public String getLlName() {
		return this.llName;
	}

	public void setLlName(String llName) {
		this.llName = llName;
	}

	public Integer getLlNumber() {
		return this.llNumber;
	}

	public void setLlNumber(Integer llNumber) {
		this.llNumber = llNumber;
	}

	public String getLlUnit() {
		return this.llUnit;
	}

	public void setLlUnit(String llUnit) {
		this.llUnit = llUnit;
	}

	public String getLlNorms() {
		return this.llNorms;
	}

	public void setLlNorms(String llNorms) {
		this.llNorms = llNorms;
	}

	public String getLlLink() {
		return this.llLink;
	}

	public void setLlLink(String llLink) {
		this.llLink = llLink;
	}

	public String getLlNote() {
		return this.llNote;
	}

	public void setLlNote(String llNote) {
		this.llNote = llNote;
	}

	public String getLlState() {
		return this.llState;
	}

	public void setLlState(String llState) {
		this.llState = llState;
	}

	public String getLlType() {
		return this.llType;
	}

	public void setLlType(String llType) {
		this.llType = llType;
	}

	public Timestamp getLlCreateTime() {
		return this.llCreateTime;
	}

	public void setLlCreateTime(Timestamp llCreateTime) {
		this.llCreateTime = llCreateTime;
	}

	public String getLlValidState() {
		return this.llValidState;
	}

	public void setLlValidState(String llValidState) {
		this.llValidState = llValidState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}