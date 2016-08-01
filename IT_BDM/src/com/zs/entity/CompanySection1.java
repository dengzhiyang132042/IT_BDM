package com.zs.entity;

import java.util.List;

/**
 * CompanySection1 entity. @author MyEclipse Persistence Tools
 */

public class CompanySection1 implements java.io.Serializable {

	// Fields

	private String s1Id;
	private String s1Name;
	private String s1Master;
	private String s1Position;
	private String s1PhonePrivate;
	private String s1PhoneCompany;
	private String s1PhoneShort;
	private String s1Note;
	
	private List nexts;
	
	public List getNexts() {
		return nexts;
	}

	public void setNexts(List nexts) {
		this.nexts = nexts;
	}
	// Constructors


	/** default constructor */
	public CompanySection1() {
	}

	

	/** minimal constructor */
	public CompanySection1(String s1Id) {
		this.s1Id = s1Id;
	}

	/** full constructor */
	public CompanySection1(String s1Id, String s1Name, String s1Master,
			String s1Position, String s1PhonePrivate, String s1PhoneCompany,
			String s1PhoneShort, String s1Note) {
		this.s1Id = s1Id;
		this.s1Name = s1Name;
		this.s1Master = s1Master;
		this.s1Position = s1Position;
		this.s1PhonePrivate = s1PhonePrivate;
		this.s1PhoneCompany = s1PhoneCompany;
		this.s1PhoneShort = s1PhoneShort;
		this.s1Note = s1Note;
	}

	// Property accessors

	public String getS1Id() {
		return this.s1Id;
	}

	public void setS1Id(String s1Id) {
		this.s1Id = s1Id;
	}

	public String getS1Name() {
		return this.s1Name;
	}

	public void setS1Name(String s1Name) {
		this.s1Name = s1Name;
	}

	public String getS1Master() {
		return this.s1Master;
	}

	public void setS1Master(String s1Master) {
		this.s1Master = s1Master;
	}

	public String getS1Position() {
		return this.s1Position;
	}

	public void setS1Position(String s1Position) {
		this.s1Position = s1Position;
	}

	public String getS1PhonePrivate() {
		return this.s1PhonePrivate;
	}

	public void setS1PhonePrivate(String s1PhonePrivate) {
		this.s1PhonePrivate = s1PhonePrivate;
	}

	public String getS1PhoneCompany() {
		return this.s1PhoneCompany;
	}

	public void setS1PhoneCompany(String s1PhoneCompany) {
		this.s1PhoneCompany = s1PhoneCompany;
	}

	public String getS1PhoneShort() {
		return this.s1PhoneShort;
	}

	public void setS1PhoneShort(String s1PhoneShort) {
		this.s1PhoneShort = s1PhoneShort;
	}

	public String getS1Note() {
		return this.s1Note;
	}

	public void setS1Note(String s1Note) {
		this.s1Note = s1Note;
	}

}