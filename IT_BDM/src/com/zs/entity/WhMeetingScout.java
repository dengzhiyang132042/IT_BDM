package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * WhMeetingScout entity. @author MyEclipse Persistence Tools
 */

public class WhMeetingScout implements java.io.Serializable {

	// Fields

	private String MId;
	private Timestamp MDate;
	private String MIt;
	private String MComputer;
	private String MMouseKeyboard;
	private String MProjector;
	private String MYdSoftware;
	private String MNote;
	private Date MCreateTime;
	private String MType;
	private String MState;
	private String UNum;

	// Constructors

	/** default constructor */
	public WhMeetingScout() {
	}

	/** minimal constructor */
	public WhMeetingScout(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public WhMeetingScout(String MId, Timestamp MDate, String MIt,
			String MComputer, String MMouseKeyboard, String MProjector,
			String MYdSoftware, String MNote, Date MCreateTime, String MType,
			String MState, String UNum) {
		this.MId = MId;
		this.MDate = MDate;
		this.MIt = MIt;
		this.MComputer = MComputer;
		this.MMouseKeyboard = MMouseKeyboard;
		this.MProjector = MProjector;
		this.MYdSoftware = MYdSoftware;
		this.MNote = MNote;
		this.MCreateTime = MCreateTime;
		this.MType = MType;
		this.MState = MState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public Timestamp getMDate() {
		return this.MDate;
	}

	public void setMDate(Timestamp MDate) {
		this.MDate = MDate;
	}

	public String getMIt() {
		return this.MIt;
	}

	public void setMIt(String MIt) {
		this.MIt = MIt;
	}

	public String getMComputer() {
		return this.MComputer;
	}

	public void setMComputer(String MComputer) {
		this.MComputer = MComputer;
	}

	public String getMMouseKeyboard() {
		return this.MMouseKeyboard;
	}

	public void setMMouseKeyboard(String MMouseKeyboard) {
		this.MMouseKeyboard = MMouseKeyboard;
	}

	public String getMProjector() {
		return this.MProjector;
	}

	public void setMProjector(String MProjector) {
		this.MProjector = MProjector;
	}

	public String getMYdSoftware() {
		return this.MYdSoftware;
	}

	public void setMYdSoftware(String MYdSoftware) {
		this.MYdSoftware = MYdSoftware;
	}

	public String getMNote() {
		return this.MNote;
	}

	public void setMNote(String MNote) {
		this.MNote = MNote;
	}

	public Date getMCreateTime() {
		return this.MCreateTime;
	}

	public void setMCreateTime(Date MCreateTime) {
		this.MCreateTime = MCreateTime;
	}

	public String getMType() {
		return this.MType;
	}

	public void setMType(String MType) {
		this.MType = MType;
	}

	public String getMState() {
		return this.MState;
	}

	public void setMState(String MState) {
		this.MState = MState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}