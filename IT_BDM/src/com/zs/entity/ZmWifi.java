package com.zs.entity;

import java.util.Date;

/**
 * ZmWifi entity. @author MyEclipse Persistence Tools
 */

public class ZmWifi implements java.io.Serializable {

	// Fields

	private String WId;
	private String WAddress;
	private String WIp;
	private String WManagerNum;
	private String WManagerPass;
	private String WSsid;
	private String WPass;
	private String WNote;
	private Date WDate;

	// Constructors

	/** default constructor */
	public ZmWifi() {
	}

	/** minimal constructor */
	public ZmWifi(String WId) {
		this.WId = WId;
	}

	/** full constructor */
	public ZmWifi(String WId, String WAddress, String WIp, String WManagerNum,
			String WManagerPass, String WSsid, String WPass, String WNote,
			Date WDate) {
		this.WId = WId;
		this.WAddress = WAddress;
		this.WIp = WIp;
		this.WManagerNum = WManagerNum;
		this.WManagerPass = WManagerPass;
		this.WSsid = WSsid;
		this.WPass = WPass;
		this.WNote = WNote;
		this.WDate = WDate;
	}

	// Property accessors

	public String getWId() {
		return this.WId;
	}

	public void setWId(String WId) {
		this.WId = WId;
	}

	public String getWAddress() {
		return this.WAddress;
	}

	public void setWAddress(String WAddress) {
		this.WAddress = WAddress;
	}

	public String getWIp() {
		return this.WIp;
	}

	public void setWIp(String WIp) {
		this.WIp = WIp;
	}

	public String getWManagerNum() {
		return this.WManagerNum;
	}

	public void setWManagerNum(String WManagerNum) {
		this.WManagerNum = WManagerNum;
	}

	public String getWManagerPass() {
		return this.WManagerPass;
	}

	public void setWManagerPass(String WManagerPass) {
		this.WManagerPass = WManagerPass;
	}

	public String getWSsid() {
		return this.WSsid;
	}

	public void setWSsid(String WSsid) {
		this.WSsid = WSsid;
	}

	public String getWPass() {
		return this.WPass;
	}

	public void setWPass(String WPass) {
		this.WPass = WPass;
	}

	public String getWNote() {
		return this.WNote;
	}

	public void setWNote(String WNote) {
		this.WNote = WNote;
	}

	public Date getWDate() {
		return this.WDate;
	}

	public void setWDate(Date WDate) {
		this.WDate = WDate;
	}

}