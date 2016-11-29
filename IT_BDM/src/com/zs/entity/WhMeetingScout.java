package com.zs.entity;

import java.sql.Timestamp;

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
			String MYdSoftware, String MNote) {
		this.MId = MId;
		this.MDate = MDate;
		this.MIt = MIt;
		this.MComputer = MComputer;
		this.MMouseKeyboard = MMouseKeyboard;
		this.MProjector = MProjector;
		this.MYdSoftware = MYdSoftware;
		this.MNote = MNote;
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

}