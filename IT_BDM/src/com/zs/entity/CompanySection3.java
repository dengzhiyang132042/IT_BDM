package com.zs.entity;

/**
 * CompanySection3 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection3 implements java.io.Serializable {

	// Fields

	private String s3Id;
	private String s3Name;
	private String s3Master;
	private String s3Position;
	private String s3PhonePrivate;
	private String s3PhoneCompany;
	private String s3PhoneShort;
	private String SIdLast;
	private String s3Note;

	// Constructors

	/** default constructor */
	public CompanySection3() {
	}

	/** minimal constructor */
	public CompanySection3(String s3Id) {
		this.s3Id = s3Id;
	}

	/** full constructor */
	public CompanySection3(String s3Id, String s3Name, String s3Master,
			String s3Position, String s3PhonePrivate, String s3PhoneCompany,
			String s3PhoneShort, String SIdLast, String s3Note) {
		this.s3Id = s3Id;
		this.s3Name = s3Name;
		this.s3Master = s3Master;
		this.s3Position = s3Position;
		this.s3PhonePrivate = s3PhonePrivate;
		this.s3PhoneCompany = s3PhoneCompany;
		this.s3PhoneShort = s3PhoneShort;
		this.SIdLast = SIdLast;
		this.s3Note = s3Note;
	}

	// Property accessors

	public String getS3Id() {
		return this.s3Id;
	}

	public void setS3Id(String s3Id) {
		this.s3Id = s3Id;
	}

	public String getS3Name() {
		return this.s3Name;
	}

	public void setS3Name(String s3Name) {
		this.s3Name = s3Name;
	}

	public String getS3Master() {
		return this.s3Master;
	}

	public void setS3Master(String s3Master) {
		this.s3Master = s3Master;
	}

	public String getS3Position() {
		return this.s3Position;
	}

	public void setS3Position(String s3Position) {
		this.s3Position = s3Position;
	}

	public String getS3PhonePrivate() {
		return this.s3PhonePrivate;
	}

	public void setS3PhonePrivate(String s3PhonePrivate) {
		this.s3PhonePrivate = s3PhonePrivate;
	}

	public String getS3PhoneCompany() {
		return this.s3PhoneCompany;
	}

	public void setS3PhoneCompany(String s3PhoneCompany) {
		this.s3PhoneCompany = s3PhoneCompany;
	}

	public String getS3PhoneShort() {
		return this.s3PhoneShort;
	}

	public void setS3PhoneShort(String s3PhoneShort) {
		this.s3PhoneShort = s3PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS3Note() {
		return this.s3Note;
	}

	public void setS3Note(String s3Note) {
		this.s3Note = s3Note;
	}

}