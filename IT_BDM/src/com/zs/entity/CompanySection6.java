package com.zs.entity;

import java.util.List;

/**
 * CompanySection6 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection6 implements java.io.Serializable {

	// Fields

	private String s6Id;
	private String s6Name;
	private String s6Master;
	private String s6Position;
	private String s6PhonePrivate;
	private String s6PhoneCompany;
	private String s6PhoneShort;
	private String SIdLast;
	private String s6Note;

	private List nexts;
	
	public List getNexts() {
		return nexts;
	}

	public void setNexts(List nexts) {
		this.nexts = nexts;
	}
	// Constructors

	/** default constructor */
	public CompanySection6() {
	}

	/** minimal constructor */
	public CompanySection6(String s6Id) {
		this.s6Id = s6Id;
	}

	/** full constructor */
	public CompanySection6(String s6Id, String s6Name, String s6Master,
			String s6Position, String s6PhonePrivate, String s6PhoneCompany,
			String s6PhoneShort, String SIdLast, String s6Note) {
		this.s6Id = s6Id;
		this.s6Name = s6Name;
		this.s6Master = s6Master;
		this.s6Position = s6Position;
		this.s6PhonePrivate = s6PhonePrivate;
		this.s6PhoneCompany = s6PhoneCompany;
		this.s6PhoneShort = s6PhoneShort;
		this.SIdLast = SIdLast;
		this.s6Note = s6Note;
	}

	// Property accessors

	public String getS6Id() {
		return this.s6Id;
	}

	public void setS6Id(String s6Id) {
		this.s6Id = s6Id;
	}

	public String getS6Name() {
		return this.s6Name;
	}

	public void setS6Name(String s6Name) {
		this.s6Name = s6Name;
	}

	public String getS6Master() {
		return this.s6Master;
	}

	public void setS6Master(String s6Master) {
		this.s6Master = s6Master;
	}

	public String getS6Position() {
		return this.s6Position;
	}

	public void setS6Position(String s6Position) {
		this.s6Position = s6Position;
	}

	public String getS6PhonePrivate() {
		return this.s6PhonePrivate;
	}

	public void setS6PhonePrivate(String s6PhonePrivate) {
		this.s6PhonePrivate = s6PhonePrivate;
	}

	public String getS6PhoneCompany() {
		return this.s6PhoneCompany;
	}

	public void setS6PhoneCompany(String s6PhoneCompany) {
		this.s6PhoneCompany = s6PhoneCompany;
	}

	public String getS6PhoneShort() {
		return this.s6PhoneShort;
	}

	public void setS6PhoneShort(String s6PhoneShort) {
		this.s6PhoneShort = s6PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS6Note() {
		return this.s6Note;
	}

	public void setS6Note(String s6Note) {
		this.s6Note = s6Note;
	}

}