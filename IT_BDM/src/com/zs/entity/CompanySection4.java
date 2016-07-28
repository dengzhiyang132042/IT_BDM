package com.zs.entity;

/**
 * CompanySection4 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection4 implements java.io.Serializable {

	// Fields

	private String s4Id;
	private String s4Name;
	private String s4Master;
	private String s4Position;
	private String s4PhonePrivate;
	private String s4PhoneCompany;
	private String s4PhoneShort;
	private String SIdLast;
	private String s4Note;

	// Constructors

	/** default constructor */
	public CompanySection4() {
	}

	/** minimal constructor */
	public CompanySection4(String s4Id) {
		this.s4Id = s4Id;
	}

	/** full constructor */
	public CompanySection4(String s4Id, String s4Name, String s4Master,
			String s4Position, String s4PhonePrivate, String s4PhoneCompany,
			String s4PhoneShort, String SIdLast, String s4Note) {
		this.s4Id = s4Id;
		this.s4Name = s4Name;
		this.s4Master = s4Master;
		this.s4Position = s4Position;
		this.s4PhonePrivate = s4PhonePrivate;
		this.s4PhoneCompany = s4PhoneCompany;
		this.s4PhoneShort = s4PhoneShort;
		this.SIdLast = SIdLast;
		this.s4Note = s4Note;
	}

	// Property accessors

	public String getS4Id() {
		return this.s4Id;
	}

	public void setS4Id(String s4Id) {
		this.s4Id = s4Id;
	}

	public String getS4Name() {
		return this.s4Name;
	}

	public void setS4Name(String s4Name) {
		this.s4Name = s4Name;
	}

	public String getS4Master() {
		return this.s4Master;
	}

	public void setS4Master(String s4Master) {
		this.s4Master = s4Master;
	}

	public String getS4Position() {
		return this.s4Position;
	}

	public void setS4Position(String s4Position) {
		this.s4Position = s4Position;
	}

	public String getS4PhonePrivate() {
		return this.s4PhonePrivate;
	}

	public void setS4PhonePrivate(String s4PhonePrivate) {
		this.s4PhonePrivate = s4PhonePrivate;
	}

	public String getS4PhoneCompany() {
		return this.s4PhoneCompany;
	}

	public void setS4PhoneCompany(String s4PhoneCompany) {
		this.s4PhoneCompany = s4PhoneCompany;
	}

	public String getS4PhoneShort() {
		return this.s4PhoneShort;
	}

	public void setS4PhoneShort(String s4PhoneShort) {
		this.s4PhoneShort = s4PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS4Note() {
		return this.s4Note;
	}

	public void setS4Note(String s4Note) {
		this.s4Note = s4Note;
	}

}