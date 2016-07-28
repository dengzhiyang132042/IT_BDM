package com.zs.entity;

/**
 * CompanySection2 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection2 implements java.io.Serializable {

	// Fields

	private String s2Id;
	private String s2Name;
	private String s2Master;
	private String s2Position;
	private String s2PhonePrivate;
	private String s2PhoneCompany;
	private String s2PhoneShort;
	private String SIdLast;
	private String s2Note;

	// Constructors

	/** default constructor */
	public CompanySection2() {
	}

	/** minimal constructor */
	public CompanySection2(String s2Id) {
		this.s2Id = s2Id;
	}

	/** full constructor */
	public CompanySection2(String s2Id, String s2Name, String s2Master,
			String s2Position, String s2PhonePrivate, String s2PhoneCompany,
			String s2PhoneShort, String SIdLast, String s2Note) {
		this.s2Id = s2Id;
		this.s2Name = s2Name;
		this.s2Master = s2Master;
		this.s2Position = s2Position;
		this.s2PhonePrivate = s2PhonePrivate;
		this.s2PhoneCompany = s2PhoneCompany;
		this.s2PhoneShort = s2PhoneShort;
		this.SIdLast = SIdLast;
		this.s2Note = s2Note;
	}

	// Property accessors

	public String getS2Id() {
		return this.s2Id;
	}

	public void setS2Id(String s2Id) {
		this.s2Id = s2Id;
	}

	public String getS2Name() {
		return this.s2Name;
	}

	public void setS2Name(String s2Name) {
		this.s2Name = s2Name;
	}

	public String getS2Master() {
		return this.s2Master;
	}

	public void setS2Master(String s2Master) {
		this.s2Master = s2Master;
	}

	public String getS2Position() {
		return this.s2Position;
	}

	public void setS2Position(String s2Position) {
		this.s2Position = s2Position;
	}

	public String getS2PhonePrivate() {
		return this.s2PhonePrivate;
	}

	public void setS2PhonePrivate(String s2PhonePrivate) {
		this.s2PhonePrivate = s2PhonePrivate;
	}

	public String getS2PhoneCompany() {
		return this.s2PhoneCompany;
	}

	public void setS2PhoneCompany(String s2PhoneCompany) {
		this.s2PhoneCompany = s2PhoneCompany;
	}

	public String getS2PhoneShort() {
		return this.s2PhoneShort;
	}

	public void setS2PhoneShort(String s2PhoneShort) {
		this.s2PhoneShort = s2PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS2Note() {
		return this.s2Note;
	}

	public void setS2Note(String s2Note) {
		this.s2Note = s2Note;
	}

}