package com.zs.entity;

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
			String VVpnPass, String VNote, Date VDate) {
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

}