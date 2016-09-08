package com.zs.entity;

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
			String BWifiPass, String BNote, Date BDate) {
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

}