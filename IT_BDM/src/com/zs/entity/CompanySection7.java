package com.zs.entity;

import java.util.List;

/**
 * CompanySection7 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection7 implements java.io.Serializable {

	// Fields

	private String s7Id;
	private String s7Name;
	private String s7Master;
	private String s7Position;
	private String s7PhonePrivate;
	private String s7PhoneCompany;
	private String s7PhoneShort;
	private String SIdLast;
	private String s7Note;

	private List nexts;
	
	public List getNexts() {
		return nexts;
	}

	public void setNexts(List nexts) {
		this.nexts = nexts;
	}
	// Constructors

	/** default constructor */
	public CompanySection7() {
	}

	/** minimal constructor */
	public CompanySection7(String s7Id) {
		this.s7Id = s7Id;
	}

	/** full constructor */
	public CompanySection7(String s7Id, String s7Name, String s7Master,
			String s7Position, String s7PhonePrivate, String s7PhoneCompany,
			String s7PhoneShort, String SIdLast, String s7Note) {
		this.s7Id = s7Id;
		this.s7Name = s7Name;
		this.s7Master = s7Master;
		this.s7Position = s7Position;
		this.s7PhonePrivate = s7PhonePrivate;
		this.s7PhoneCompany = s7PhoneCompany;
		this.s7PhoneShort = s7PhoneShort;
		this.SIdLast = SIdLast;
		this.s7Note = s7Note;
	}

	// Property accessors

	public String getS7Id() {
		return this.s7Id;
	}

	public void setS7Id(String s7Id) {
		this.s7Id = s7Id;
	}

	public String getS7Name() {
		return this.s7Name;
	}

	public void setS7Name(String s7Name) {
		this.s7Name = s7Name;
	}

	public String getS7Master() {
		return this.s7Master;
	}

	public void setS7Master(String s7Master) {
		this.s7Master = s7Master;
	}

	public String getS7Position() {
		return this.s7Position;
	}

	public void setS7Position(String s7Position) {
		this.s7Position = s7Position;
	}

	public String getS7PhonePrivate() {
		return this.s7PhonePrivate;
	}

	public void setS7PhonePrivate(String s7PhonePrivate) {
		this.s7PhonePrivate = s7PhonePrivate;
	}

	public String getS7PhoneCompany() {
		return this.s7PhoneCompany;
	}

	public void setS7PhoneCompany(String s7PhoneCompany) {
		this.s7PhoneCompany = s7PhoneCompany;
	}

	public String getS7PhoneShort() {
		return this.s7PhoneShort;
	}

	public void setS7PhoneShort(String s7PhoneShort) {
		this.s7PhoneShort = s7PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS7Note() {
		return this.s7Note;
	}

	public void setS7Note(String s7Note) {
		this.s7Note = s7Note;
	}

}