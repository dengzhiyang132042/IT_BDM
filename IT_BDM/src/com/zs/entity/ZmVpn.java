package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmVpn entity. @author MyEclipse Persistence Tools
 */

public class ZmVpn implements java.io.Serializable {

	// Fields

	private String VId;
	private String VNum;
	private String VPass;
	private String VName;
	private String VSection;
	private String VCard;
	private String VPhone;
	private String VSoaPass;
	private String VVpnPass;
	private String VNote;
	private Date VDate;
	private String VIt;
	private Timestamp VCreateTime;
	private String VType;
	private String VState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmVpn() {
	}

	/** minimal constructor */
	public ZmVpn(String VId) {
		this.VId = VId;
	}

	/** full constructor */
	public ZmVpn(String VId, String VNum, String VPass, String VName,
			String VSection, String VCard, String VPhone, String VSoaPass,
			String VVpnPass, String VNote, Date VDate, String VIt,
			Timestamp VCreateTime, String VType, String VState, String UNum) {
		this.VId = VId;
		this.VNum = VNum;
		this.VPass = VPass;
		this.VName = VName;
		this.VSection = VSection;
		this.VCard = VCard;
		this.VPhone = VPhone;
		this.VSoaPass = VSoaPass;
		this.VVpnPass = VVpnPass;
		this.VNote = VNote;
		this.VDate = VDate;
		this.VIt = VIt;
		this.VCreateTime = VCreateTime;
		this.VType = VType;
		this.VState = VState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getVId() {
		return this.VId;
	}

	public void setVId(String VId) {
		this.VId = VId;
	}

	public String getVNum() {
		return this.VNum;
	}

	public void setVNum(String VNum) {
		this.VNum = VNum;
	}

	public String getVPass() {
		return this.VPass;
	}

	public void setVPass(String VPass) {
		this.VPass = VPass;
	}

	public String getVName() {
		return this.VName;
	}

	public void setVName(String VName) {
		this.VName = VName;
	}

	public String getVSection() {
		return this.VSection;
	}

	public void setVSection(String VSection) {
		this.VSection = VSection;
	}

	public String getVCard() {
		return this.VCard;
	}

	public void setVCard(String VCard) {
		this.VCard = VCard;
	}

	public String getVPhone() {
		return this.VPhone;
	}

	public void setVPhone(String VPhone) {
		this.VPhone = VPhone;
	}

	public String getVSoaPass() {
		return this.VSoaPass;
	}

	public void setVSoaPass(String VSoaPass) {
		this.VSoaPass = VSoaPass;
	}

	public String getVVpnPass() {
		return this.VVpnPass;
	}

	public void setVVpnPass(String VVpnPass) {
		this.VVpnPass = VVpnPass;
	}

	public String getVNote() {
		return this.VNote;
	}

	public void setVNote(String VNote) {
		this.VNote = VNote;
	}

	public Date getVDate() {
		return this.VDate;
	}

	public void setVDate(Date VDate) {
		this.VDate = VDate;
	}

	public String getVIt() {
		return this.VIt;
	}

	public void setVIt(String VIt) {
		this.VIt = VIt;
	}

	public Timestamp getVCreateTime() {
		return this.VCreateTime;
	}

	public void setVCreateTime(Timestamp VCreateTime) {
		this.VCreateTime = VCreateTime;
	}

	public String getVType() {
		return this.VType;
	}

	public void setVType(String VType) {
		this.VType = VType;
	}

	public String getVState() {
		return this.VState;
	}

	public void setVState(String VState) {
		this.VState = VState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}