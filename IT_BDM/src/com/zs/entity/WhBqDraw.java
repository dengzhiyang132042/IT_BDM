package com.zs.entity;

import java.util.Date;

/**
 * WhBqDraw entity. @author MyEclipse Persistence Tools
 */

public class WhBqDraw implements java.io.Serializable {

	// Fields

	private String MId;
	private String EId;
	private String DDraw;
	private String DMan;
	private String DPhone;
	private Date DDate;
	private String DAppendix;
	private String DIt;
	private String DResult;
	private String DNote;

	// Constructors

	/** default constructor */
	public WhBqDraw() {
	}

	/** minimal constructor */
	public WhBqDraw(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public WhBqDraw(String MId, String EId, String DDraw, String DMan,
			String DPhone, Date DDate, String DAppendix, String DIt,
			String DResult, String DNote) {
		this.MId = MId;
		this.EId = EId;
		this.DDraw = DDraw;
		this.DMan = DMan;
		this.DPhone = DPhone;
		this.DDate = DDate;
		this.DAppendix = DAppendix;
		this.DIt = DIt;
		this.DResult = DResult;
		this.DNote = DNote;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public String getEId() {
		return this.EId;
	}

	public void setEId(String EId) {
		this.EId = EId;
	}

	public String getDDraw() {
		return this.DDraw;
	}

	public void setDDraw(String DDraw) {
		this.DDraw = DDraw;
	}

	public String getDMan() {
		return this.DMan;
	}

	public void setDMan(String DMan) {
		this.DMan = DMan;
	}

	public String getDPhone() {
		return this.DPhone;
	}

	public void setDPhone(String DPhone) {
		this.DPhone = DPhone;
	}

	public Date getDDate() {
		return this.DDate;
	}

	public void setDDate(Date DDate) {
		this.DDate = DDate;
	}

	public String getDAppendix() {
		return this.DAppendix;
	}

	public void setDAppendix(String DAppendix) {
		this.DAppendix = DAppendix;
	}

	public String getDIt() {
		return this.DIt;
	}

	public void setDIt(String DIt) {
		this.DIt = DIt;
	}

	public String getDResult() {
		return this.DResult;
	}

	public void setDResult(String DResult) {
		this.DResult = DResult;
	}

	public String getDNote() {
		return this.DNote;
	}

	public void setDNote(String DNote) {
		this.DNote = DNote;
	}

}