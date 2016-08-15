package com.zs.entity;

import java.util.List;

/**
 * CompanySection entity. @author MyEclipse Persistence Tools
 */

public class CompanySection implements java.io.Serializable {

	// Fields

	private String csId;
	private String csName;
	private String csMaster;
	private String csNumber;
	private String csPosition;
	private String csPhoneP;
	private String csPhoneC;
	private String csPhoneS;
	private String csNote;
	private String csLast;
	
	private CompanySection last;
	private List<CompanySection> nexts;

	
	// Constructors


	/** default constructor */
	public CompanySection() {
	}

	public String getCsLast() {
		return csLast;
	}

	public void setCsLast(String csLast) {
		this.csLast = csLast;
	}

	public CompanySection getLast() {
		return last;
	}

	public void setLast(CompanySection last) {
		this.last = last;
	}

	public List<CompanySection> getNexts() {
		return nexts;
	}

	public void setNexts(List<CompanySection> nexts) {
		this.nexts = nexts;
	}

	/** minimal constructor */
	public CompanySection(String csId) {
		this.csId = csId;
	}

	/** full constructor */
	public CompanySection(String csId, String csName, String csMaster,
			String csNumber, String csPosition, String csPhoneP,
			String csPhoneC, String csPhoneS, String csNote, String csLast) {
		this.csId = csId;
		this.csName = csName;
		this.csMaster = csMaster;
		this.csNumber = csNumber;
		this.csPosition = csPosition;
		this.csPhoneP = csPhoneP;
		this.csPhoneC = csPhoneC;
		this.csPhoneS = csPhoneS;
		this.csNote = csNote;
		this.csLast = csLast;
	}

	// Property accessors

	public String getCsId() {
		return this.csId;
	}

	public void setCsId(String csId) {
		this.csId = csId;
	}

	public String getCsName() {
		return this.csName;
	}

	public void setCsName(String csName) {
		this.csName = csName;
	}

	public String getCsMaster() {
		return this.csMaster;
	}

	public void setCsMaster(String csMaster) {
		this.csMaster = csMaster;
	}

	public String getCsNumber() {
		return this.csNumber;
	}

	public void setCsNumber(String csNumber) {
		this.csNumber = csNumber;
	}

	public String getCsPosition() {
		return this.csPosition;
	}

	public void setCsPosition(String csPosition) {
		this.csPosition = csPosition;
	}

	public String getCsPhoneP() {
		return this.csPhoneP;
	}

	public void setCsPhoneP(String csPhoneP) {
		this.csPhoneP = csPhoneP;
	}

	public String getCsPhoneC() {
		return this.csPhoneC;
	}

	public void setCsPhoneC(String csPhoneC) {
		this.csPhoneC = csPhoneC;
	}

	public String getCsPhoneS() {
		return this.csPhoneS;
	}

	public void setCsPhoneS(String csPhoneS) {
		this.csPhoneS = csPhoneS;
	}

	public String getCsNote() {
		return this.csNote;
	}

	public void setCsNote(String csNote) {
		this.csNote = csNote;
	}


}