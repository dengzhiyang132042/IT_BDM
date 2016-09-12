package com.zs.entity;

import java.util.Date;

/**
 * ZmPhoneLine entity. @author MyEclipse Persistence Tools
 */

public class ZmPhoneLine implements java.io.Serializable {

	// Fields

	private String PId;
	private String PA;
	private String PB;
	private String PC;
	private String PD;
	private String PE;
	private String PNumber;
	private String PSection;
	private String PFunction;
	private String PBill;
	private String PNote;
	private Date PDate;

	// Constructors

	/** default constructor */
	public ZmPhoneLine() {
	}

	/** minimal constructor */
	public ZmPhoneLine(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public ZmPhoneLine(String PId, String PA, String PB, String PC, String PD,
			String PE, String PNumber, String PSection, String PFunction,
			String PBill, String PNote, Date PDate) {
		this.PId = PId;
		this.PA = PA;
		this.PB = PB;
		this.PC = PC;
		this.PD = PD;
		this.PE = PE;
		this.PNumber = PNumber;
		this.PSection = PSection;
		this.PFunction = PFunction;
		this.PBill = PBill;
		this.PNote = PNote;
		this.PDate = PDate;
	}

	// Property accessors

	public String getPId() {
		return this.PId;
	}

	public void setPId(String PId) {
		this.PId = PId;
	}

	public String getPA() {
		return this.PA;
	}

	public void setPA(String PA) {
		this.PA = PA;
	}

	public String getPB() {
		return this.PB;
	}

	public void setPB(String PB) {
		this.PB = PB;
	}

	public String getPC() {
		return this.PC;
	}

	public void setPC(String PC) {
		this.PC = PC;
	}

	public String getPD() {
		return this.PD;
	}

	public void setPD(String PD) {
		this.PD = PD;
	}

	public String getPE() {
		return this.PE;
	}

	public void setPE(String PE) {
		this.PE = PE;
	}

	public String getPNumber() {
		return this.PNumber;
	}

	public void setPNumber(String PNumber) {
		this.PNumber = PNumber;
	}

	public String getPSection() {
		return this.PSection;
	}

	public void setPSection(String PSection) {
		this.PSection = PSection;
	}

	public String getPFunction() {
		return this.PFunction;
	}

	public void setPFunction(String PFunction) {
		this.PFunction = PFunction;
	}

	public String getPBill() {
		return this.PBill;
	}

	public void setPBill(String PBill) {
		this.PBill = PBill;
	}

	public String getPNote() {
		return this.PNote;
	}

	public void setPNote(String PNote) {
		this.PNote = PNote;
	}

	public Date getPDate() {
		return this.PDate;
	}

	public void setPDate(Date PDate) {
		this.PDate = PDate;
	}

}