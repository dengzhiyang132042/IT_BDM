package com.zs.entity;

import java.util.List;

/**
 * CompanySection8 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection8 implements java.io.Serializable {

	// Fields

	private String s8Id;
	private String s8Name;
	private String s8Master;
	private String s8Position;
	private String s8PhonePrivate;
	private String s8PhoneCompany;
	private String s8PhoneShort;
	private String SIdLast;
	private String s8Note;

	private List nexts;
	
	public List getNexts() {
		return nexts;
	}

	public void setNexts(List nexts) {
		this.nexts = nexts;
	}
	// Constructors

	/** default constructor */
	public CompanySection8() {
	}

	/** minimal constructor */
	public CompanySection8(String s8Id) {
		this.s8Id = s8Id;
	}

	/** full constructor */
	public CompanySection8(String s8Id, String s8Name, String s8Master,
			String s8Position, String s8PhonePrivate, String s8PhoneCompany,
			String s8PhoneShort, String SIdLast, String s8Note) {
		this.s8Id = s8Id;
		this.s8Name = s8Name;
		this.s8Master = s8Master;
		this.s8Position = s8Position;
		this.s8PhonePrivate = s8PhonePrivate;
		this.s8PhoneCompany = s8PhoneCompany;
		this.s8PhoneShort = s8PhoneShort;
		this.SIdLast = SIdLast;
		this.s8Note = s8Note;
	}

	// Property accessors

	public String getS8Id() {
		return this.s8Id;
	}

	public void setS8Id(String s8Id) {
		this.s8Id = s8Id;
	}

	public String getS8Name() {
		return this.s8Name;
	}

	public void setS8Name(String s8Name) {
		this.s8Name = s8Name;
	}

	public String getS8Master() {
		return this.s8Master;
	}

	public void setS8Master(String s8Master) {
		this.s8Master = s8Master;
	}

	public String getS8Position() {
		return this.s8Position;
	}

	public void setS8Position(String s8Position) {
		this.s8Position = s8Position;
	}

	public String getS8PhonePrivate() {
		return this.s8PhonePrivate;
	}

	public void setS8PhonePrivate(String s8PhonePrivate) {
		this.s8PhonePrivate = s8PhonePrivate;
	}

	public String getS8PhoneCompany() {
		return this.s8PhoneCompany;
	}

	public void setS8PhoneCompany(String s8PhoneCompany) {
		this.s8PhoneCompany = s8PhoneCompany;
	}

	public String getS8PhoneShort() {
		return this.s8PhoneShort;
	}

	public void setS8PhoneShort(String s8PhoneShort) {
		this.s8PhoneShort = s8PhoneShort;
	}

	public String getSIdLast() {
		return this.SIdLast;
	}

	public void setSIdLast(String SIdLast) {
		this.SIdLast = SIdLast;
	}

	public String getS8Note() {
		return this.s8Note;
	}

	public void setS8Note(String s8Note) {
		this.s8Note = s8Note;
	}

}