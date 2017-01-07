package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmBq entity. @author MyEclipse Persistence Tools
 */

public class ZmBq implements java.io.Serializable {

	// Fields

	private String BId;
	private String BPda;
	private String BModel;
	private String BType;
	private String BNum;
	private String BSn;
	private String BMac;
	private String BWifi;
	private String BWifiPass;
	private String BNote;
	private Date BDate;
	private String BIp;
	private Timestamp BCreateTime;
	private String BServiceType;
	private String BServiceMan;
	private String BState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmBq() {
	}

	/** minimal constructor */
	public ZmBq(String BId) {
		this.BId = BId;
	}

	/** full constructor */
	public ZmBq(String BId, String BPda, String BModel, String BType,
			String BNum, String BSn, String BMac, String BWifi,
			String BWifiPass, String BNote, Date BDate, String BIp,
			Timestamp BCreateTime, String BServiceType, String BServiceMan,
			String BState, String UNum) {
		this.BId = BId;
		this.BPda = BPda;
		this.BModel = BModel;
		this.BType = BType;
		this.BNum = BNum;
		this.BSn = BSn;
		this.BMac = BMac;
		this.BWifi = BWifi;
		this.BWifiPass = BWifiPass;
		this.BNote = BNote;
		this.BDate = BDate;
		this.BIp = BIp;
		this.BCreateTime = BCreateTime;
		this.BServiceType = BServiceType;
		this.BServiceMan = BServiceMan;
		this.BState = BState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getBId() {
		return this.BId;
	}

	public void setBId(String BId) {
		this.BId = BId;
	}

	public String getBPda() {
		return this.BPda;
	}

	public void setBPda(String BPda) {
		this.BPda = BPda;
	}

	public String getBModel() {
		return this.BModel;
	}

	public void setBModel(String BModel) {
		this.BModel = BModel;
	}

	public String getBType() {
		return this.BType;
	}

	public void setBType(String BType) {
		this.BType = BType;
	}

	public String getBNum() {
		return this.BNum;
	}

	public void setBNum(String BNum) {
		this.BNum = BNum;
	}

	public String getBSn() {
		return this.BSn;
	}

	public void setBSn(String BSn) {
		this.BSn = BSn;
	}

	public String getBMac() {
		return this.BMac;
	}

	public void setBMac(String BMac) {
		this.BMac = BMac;
	}

	public String getBWifi() {
		return this.BWifi;
	}

	public void setBWifi(String BWifi) {
		this.BWifi = BWifi;
	}

	public String getBWifiPass() {
		return this.BWifiPass;
	}

	public void setBWifiPass(String BWifiPass) {
		this.BWifiPass = BWifiPass;
	}

	public String getBNote() {
		return this.BNote;
	}

	public void setBNote(String BNote) {
		this.BNote = BNote;
	}

	public Date getBDate() {
		return this.BDate;
	}

	public void setBDate(Date BDate) {
		this.BDate = BDate;
	}

	public String getBIp() {
		return this.BIp;
	}

	public void setBIp(String BIp) {
		this.BIp = BIp;
	}

	public Timestamp getBCreateTime() {
		return this.BCreateTime;
	}

	public void setBCreateTime(Timestamp BCreateTime) {
		this.BCreateTime = BCreateTime;
	}

	public String getBServiceType() {
		return this.BServiceType;
	}

	public void setBServiceType(String BServiceType) {
		this.BServiceType = BServiceType;
	}

	public String getBServiceMan() {
		return this.BServiceMan;
	}

	public void setBServiceMan(String BServiceMan) {
		this.BServiceMan = BServiceMan;
	}

	public String getBState() {
		return this.BState;
	}

	public void setBState(String BState) {
		this.BState = BState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}