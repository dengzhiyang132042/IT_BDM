package com.zs.entity;

/**
 * SectionFenbu entity. @author MyEclipse Persistence Tools
 */

public class SectionFenbu implements java.io.Serializable {

	// Fields

	private String fbId;
	private String fbName;
	private String fbMaser;
	private String fbPhonePrivate;
	private String fbPhoneCompany;
	private String fbPhoneShort;
	private String qbId;

	// Constructors

	/** default constructor */
	public SectionFenbu() {
	}

	/** minimal constructor */
	public SectionFenbu(String fbId) {
		this.fbId = fbId;
	}

	/** full constructor */
	public SectionFenbu(String fbId, String fbName, String fbMaser,
			String fbPhonePrivate, String fbPhoneCompany, String fbPhoneShort,
			String qbId) {
		this.fbId = fbId;
		this.fbName = fbName;
		this.fbMaser = fbMaser;
		this.fbPhonePrivate = fbPhonePrivate;
		this.fbPhoneCompany = fbPhoneCompany;
		this.fbPhoneShort = fbPhoneShort;
		this.qbId = qbId;
	}

	// Property accessors

	public String getFbId() {
		return this.fbId;
	}

	public void setFbId(String fbId) {
		this.fbId = fbId;
	}

	public String getFbName() {
		return this.fbName;
	}

	public void setFbName(String fbName) {
		this.fbName = fbName;
	}

	public String getFbMaser() {
		return this.fbMaser;
	}

	public void setFbMaser(String fbMaser) {
		this.fbMaser = fbMaser;
	}

	public String getFbPhonePrivate() {
		return this.fbPhonePrivate;
	}

	public void setFbPhonePrivate(String fbPhonePrivate) {
		this.fbPhonePrivate = fbPhonePrivate;
	}

	public String getFbPhoneCompany() {
		return this.fbPhoneCompany;
	}

	public void setFbPhoneCompany(String fbPhoneCompany) {
		this.fbPhoneCompany = fbPhoneCompany;
	}

	public String getFbPhoneShort() {
		return this.fbPhoneShort;
	}

	public void setFbPhoneShort(String fbPhoneShort) {
		this.fbPhoneShort = fbPhoneShort;
	}

	public String getQbId() {
		return this.qbId;
	}

	public void setQbId(String qbId) {
		this.qbId = qbId;
	}

}