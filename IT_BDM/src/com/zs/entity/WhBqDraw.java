package com.zs.entity;

import java.util.Date;

/**
 * WhBqDraw entity. @author MyEclipse Persistence Tools
 */

public class WhBqDraw implements java.io.Serializable {

	// Fields

	private String DId;
	private String EId;
	private String DSn;
	private String DDraw;
	private String DMan;
	private String DPhone;
	private Date DDate;
	private String DAppendix;
	private String DIt;

	// Constructors

	/** default constructor */
	public WhBqDraw() {
	}

	/** minimal constructor */
	public WhBqDraw(String DId) {
		this.DId = DId;
	}

	/** full constructor */
	public WhBqDraw(String DId, String EId, String DSn, String DDraw,
			String DMan, String DPhone, Date DDate, String DAppendix, String DIt) {
		this.DId = DId;
		this.EId = EId;
		this.DSn = DSn;
		this.DDraw = DDraw;
		this.DMan = DMan;
		this.DPhone = DPhone;
		this.DDate = DDate;
		this.DAppendix = DAppendix;
		this.DIt = DIt;
	}

	// Property accessors

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public String getEId() {
		return this.EId;
	}

	public void setEId(String EId) {
		this.EId = EId;
	}

	public String getDSn() {
		return this.DSn;
	}

	public void setDSn(String DSn) {
		this.DSn = DSn;
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

}