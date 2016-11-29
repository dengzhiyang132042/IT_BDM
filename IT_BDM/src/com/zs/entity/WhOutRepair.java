package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * WhOutRepair entity. @author MyEclipse Persistence Tools
 */

public class WhOutRepair implements java.io.Serializable {

	// Fields

	private String OId;
	private Date ODate;
	private String OPage;
	private String OType;
	private String ONum;
	private String OSn;
	private String ONote;
	private Integer OPeriod;
	private Timestamp OCreateDatetime;

	// Constructors

	/** default constructor */
	public WhOutRepair() {
	}

	/** minimal constructor */
	public WhOutRepair(String OId) {
		this.OId = OId;
	}

	/** full constructor */
	public WhOutRepair(String OId, Date ODate, String OPage, String OType,
			String ONum, String OSn, String ONote, Integer OPeriod,
			Timestamp OCreateDatetime) {
		this.OId = OId;
		this.ODate = ODate;
		this.OPage = OPage;
		this.OType = OType;
		this.ONum = ONum;
		this.OSn = OSn;
		this.ONote = ONote;
		this.OPeriod = OPeriod;
		this.OCreateDatetime = OCreateDatetime;
	}

	// Property accessors

	public String getOId() {
		return this.OId;
	}

	public void setOId(String OId) {
		this.OId = OId;
	}

	public Date getODate() {
		return this.ODate;
	}

	public void setODate(Date ODate) {
		this.ODate = ODate;
	}

	public String getOPage() {
		return this.OPage;
	}

	public void setOPage(String OPage) {
		this.OPage = OPage;
	}

	public String getOType() {
		return this.OType;
	}

	public void setOType(String OType) {
		this.OType = OType;
	}

	public String getONum() {
		return this.ONum;
	}

	public void setONum(String ONum) {
		this.ONum = ONum;
	}

	public String getOSn() {
		return this.OSn;
	}

	public void setOSn(String OSn) {
		this.OSn = OSn;
	}

	public String getONote() {
		return this.ONote;
	}

	public void setONote(String ONote) {
		this.ONote = ONote;
	}

	public Integer getOPeriod() {
		return this.OPeriod;
	}

	public void setOPeriod(Integer OPeriod) {
		this.OPeriod = OPeriod;
	}

	public Timestamp getOCreateDatetime() {
		return this.OCreateDatetime;
	}

	public void setOCreateDatetime(Timestamp OCreateDatetime) {
		this.OCreateDatetime = OCreateDatetime;
	}

}