package com.zs.entity;

/**
 * SectionFenbodian entity. @author MyEclipse Persistence Tools
 */

public class SectionFenbodian implements java.io.Serializable {

	// Fields

	private String fbdId;
	private String fbdName;
	private String fbdMaster;
	private String fbdPhonePrivate;
	private String fbdPhoneCompany;
	private String fbdPhoneShort;
	private String fbdAddress;
	private String fbId;

	private SectionFenbu fb;

	// Constructors

	public SectionFenbu getFb() {
		return fb;
	}

	public void setFb(SectionFenbu fb) {
		this.fb = fb;
	}

	/** default constructor */
	public SectionFenbodian() {
	}

	/** minimal constructor */
	public SectionFenbodian(String fbdId) {
		this.fbdId = fbdId;
	}

	/** full constructor */
	public SectionFenbodian(String fbdId, String fbdName, String fbdMaster,
			String fbdPhonePrivate, String fbdPhoneCompany,
			String fbdPhoneShort, String fbdAddress, String fbId) {
		this.fbdId = fbdId;
		this.fbdName = fbdName;
		this.fbdMaster = fbdMaster;
		this.fbdPhonePrivate = fbdPhonePrivate;
		this.fbdPhoneCompany = fbdPhoneCompany;
		this.fbdPhoneShort = fbdPhoneShort;
		this.fbdAddress = fbdAddress;
		this.fbId = fbId;
	}

	// Property accessors

	public String getFbdId() {
		return this.fbdId;
	}

	public void setFbdId(String fbdId) {
		this.fbdId = fbdId;
	}

	public String getFbdName() {
		return this.fbdName;
	}

	public void setFbdName(String fbdName) {
		this.fbdName = fbdName;
	}

	public String getFbdMaster() {
		return this.fbdMaster;
	}

	public void setFbdMaster(String fbdMaster) {
		this.fbdMaster = fbdMaster;
	}

	public String getFbdPhonePrivate() {
		return this.fbdPhonePrivate;
	}

	public void setFbdPhonePrivate(String fbdPhonePrivate) {
		this.fbdPhonePrivate = fbdPhonePrivate;
	}

	public String getFbdPhoneCompany() {
		return this.fbdPhoneCompany;
	}

	public void setFbdPhoneCompany(String fbdPhoneCompany) {
		this.fbdPhoneCompany = fbdPhoneCompany;
	}

	public String getFbdPhoneShort() {
		return this.fbdPhoneShort;
	}

	public void setFbdPhoneShort(String fbdPhoneShort) {
		this.fbdPhoneShort = fbdPhoneShort;
	}

	public String getFbdAddress() {
		return this.fbdAddress;
	}

	public void setFbdAddress(String fbdAddress) {
		this.fbdAddress = fbdAddress;
	}

	public String getFbId() {
		return this.fbId;
	}

	public void setFbId(String fbId) {
		this.fbId = fbId;
	}

}