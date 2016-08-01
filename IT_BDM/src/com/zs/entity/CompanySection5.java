package com.zs.entity;

import java.util.List;

/**
 * CompanySection5 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection5 implements java.io.Serializable {

	// Fields

	private String s5Id;
	private String s5Name;
	private String s5Master;
	private String s5Position;
	private String s5PhonePrivate;
	private String s5PhoneCompany;
	private String s5PhoneShort;
	private String SIdLast;
	private String s5Note;
	
	private List nexts;
	
	public List getNexts() {
		return nexts;
	}

	public void setNexts(List nexts) {
		this.nexts = nexts;
	}
	// Constructors

	/** default constructor */
	public CompanySection5() {
	}

	/** minimal constructor */
	public CompanySection5(String s5Id) {
		this.s5Id = s5Id;
	}

	/** full constructor */
	public CompanySection5(String s5Id, String s5Name, String s5Master,
			String s5Position, String s5PhonePrivate, String s5PhoneCompany,
			String s5PhoneShort, String SIdLast, String s5Note) {
		this.s5Id = s5Id;
		this.s5Name = s5Name;
		this.s5Master = s5Master;
		this.s5Position = s5Position;
		this.s5PhonePrivate = s5PhonePrivate;
		this.s5PhoneCompany = s5PhoneCompany;
		this.s5PhoneShort = s5PhoneShort;
		this.SIdLast = SIdLast;
		this.s5Note = s5Note;
	}

	// Property accessors

	public String getS5Id() {
		return this.s5Id;
	}

	public void setS5Id(String s5Id) {
		this.s5Id = s5Id;
	}

	public String getS5Name() {
		return this.s5Name;
	}

	public void setS5Name(String s5Name) {
		this.s5Name = s5Name;
	}

	public String getS5Master() {
		return this.s5Master;
	}

	public void setS5Master(String s5Master) {
		this.s5Master = s5Master;
	}

	public String getS5Position() {
		return this.s5Position;
	}

	public void setS5Position(String s5Position) {
		this.s5Position = s5Position;
	}

	public String getS5PhonePrivate() {
		return this.s5PhonePrivate;
	}

	public void setS5PhonePrivate(String s5PhonePrivate) {
		this.s5PhonePrivate = s5PhonePrivate;
	}

	public String getS5PhoneCompany() {
		return this.s5PhoneCompany;
	}

	public void setS5PhoneCompany(String s5PhoneCompany) {
		this.s5PhoneCompany = s5PhoneCompany;
	}

	public String getS5PhoneShort() {
		return this.s5PhoneShort;
	}

	public void setS5PhoneShort(String s5PhoneShort) {
		this.s5PhoneShort = s5PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS5Note() {
		return this.s5Note;
	}

	public void setS5Note(String s5Note) {
		this.s5Note = s5Note;
	}

}