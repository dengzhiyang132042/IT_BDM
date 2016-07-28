package com.zs.entity;

/**
 * SectionQubu entity. @author MyEclipse Persistence Tools
 */

public class SectionQubu implements java.io.Serializable {

	// Fields

	private String qbId;
	private String qbName;
	private String qbMaster;
	private String qbPhonePrivate;
	private String qbPhoneCompany;
	private String qbPhoneShort;

	// Constructors

	/** default constructor */
	public SectionQubu() {
	}

	/** minimal constructor */
	public SectionQubu(String qbId) {
		this.qbId = qbId;
	}

	/** full constructor */
	public SectionQubu(String qbId, String qbName, String qbMaster,
			String qbPhonePrivate, String qbPhoneCompany, String qbPhoneShort) {
		this.qbId = qbId;
		this.qbName = qbName;
		this.qbMaster = qbMaster;
		this.qbPhonePrivate = qbPhonePrivate;
		this.qbPhoneCompany = qbPhoneCompany;
		this.qbPhoneShort = qbPhoneShort;
	}

	// Property accessors

	public String getQbId() {
		return this.qbId;
	}

	public void setQbId(String qbId) {
		this.qbId = qbId;
	}

	public String getQbName() {
		return this.qbName;
	}

	public void setQbName(String qbName) {
		this.qbName = qbName;
	}

	public String getQbMaster() {
		return this.qbMaster;
	}

	public void setQbMaster(String qbMaster) {
		this.qbMaster = qbMaster;
	}

	public String getQbPhonePrivate() {
		return this.qbPhonePrivate;
	}

	public void setQbPhonePrivate(String qbPhonePrivate) {
		this.qbPhonePrivate = qbPhonePrivate;
	}

	public String getQbPhoneCompany() {
		return this.qbPhoneCompany;
	}

	public void setQbPhoneCompany(String qbPhoneCompany) {
		this.qbPhoneCompany = qbPhoneCompany;
	}

	public String getQbPhoneShort() {
		return this.qbPhoneShort;
	}

	public void setQbPhoneShort(String qbPhoneShort) {
		this.qbPhoneShort = qbPhoneShort;
	}

}