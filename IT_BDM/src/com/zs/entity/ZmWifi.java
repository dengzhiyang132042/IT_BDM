package com.zs.entity;

import java.sql.Timestamp;
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
	private String WType;
	private Timestamp WCreateTime;
	private String WState;
	private String UNum;

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
			Date WDate, String WType, Timestamp WCreateTime, String WState,
			String UNum) {
		this.WId = WId;
		this.WAddress = WAddress;
		this.WIp = WIp;
		this.WManagerNum = WManagerNum;
		this.WManagerPass = WManagerPass;
		this.WSsid = WSsid;
		this.WPass = WPass;
		this.WNote = WNote;
		this.WDate = WDate;
		this.WType = WType;
		this.WCreateTime = WCreateTime;
		this.WState = WState;
		this.UNum = UNum;
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

	public String getWType() {
		return this.WType;
	}

	public void setWType(String WType) {
		this.WType = WType;
	}

	public Timestamp getWCreateTime() {
		return this.WCreateTime;
	}

	public void setWCreateTime(Timestamp WCreateTime) {
		this.WCreateTime = WCreateTime;
	}

	public String getWState() {
		return this.WState;
	}

	public void setWState(String WState) {
		this.WState = WState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}