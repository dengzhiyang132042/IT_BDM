package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmNetCall entity. @author MyEclipse Persistence Tools
 */

public class ZmNetCall implements java.io.Serializable {

	// Fields

	private String NId;
	private String NPactMan;
	private Date NServiceDate;
	private String NBigQb;
	private String NQb;
	private String NFb;
	private String NFbd;
	private String NSite;
	private String NFunctionary;
	private String NFunctionaryPhone;
	private String NQueryPhone;
	private String NAddress;
	private String NNumber;
	private String NPhone;
	private String NCall1;
	private String NCall2;
	private String NCallAll;
	private Integer NCallNum;
	private String NCondition;
	private Integer NServiceWeek;
	private String NIt;
	private String NNote;
	private Timestamp NCreateDate;
	private String NType;
	private String NState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmNetCall() {
	}

	/** minimal constructor */
	public ZmNetCall(String NId) {
		this.NId = NId;
	}

	/** full constructor */
	public ZmNetCall(String NId, String NPactMan, Date NServiceDate,
			String NBigQb, String NQb, String NFb, String NFbd, String NSite,
			String NFunctionary, String NFunctionaryPhone, String NQueryPhone,
			String NAddress, String NNumber, String NPhone, String NCall1,
			String NCall2, String NCallAll, Integer NCallNum,
			String NCondition, Integer NServiceWeek, String NIt, String NNote,
			Timestamp NCreateDate, String NType, String NState, String UNum) {
		this.NId = NId;
		this.NPactMan = NPactMan;
		this.NServiceDate = NServiceDate;
		this.NBigQb = NBigQb;
		this.NQb = NQb;
		this.NFb = NFb;
		this.NFbd = NFbd;
		this.NSite = NSite;
		this.NFunctionary = NFunctionary;
		this.NFunctionaryPhone = NFunctionaryPhone;
		this.NQueryPhone = NQueryPhone;
		this.NAddress = NAddress;
		this.NNumber = NNumber;
		this.NPhone = NPhone;
		this.NCall1 = NCall1;
		this.NCall2 = NCall2;
		this.NCallAll = NCallAll;
		this.NCallNum = NCallNum;
		this.NCondition = NCondition;
		this.NServiceWeek = NServiceWeek;
		this.NIt = NIt;
		this.NNote = NNote;
		this.NCreateDate = NCreateDate;
		this.NType = NType;
		this.NState = NState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getNId() {
		return this.NId;
	}

	public void setNId(String NId) {
		this.NId = NId;
	}

	public String getNPactMan() {
		return this.NPactMan;
	}

	public void setNPactMan(String NPactMan) {
		this.NPactMan = NPactMan;
	}

	public Date getNServiceDate() {
		return this.NServiceDate;
	}

	public void setNServiceDate(Date NServiceDate) {
		this.NServiceDate = NServiceDate;
	}

	public String getNBigQb() {
		return this.NBigQb;
	}

	public void setNBigQb(String NBigQb) {
		this.NBigQb = NBigQb;
	}

	public String getNQb() {
		return this.NQb;
	}

	public void setNQb(String NQb) {
		this.NQb = NQb;
	}

	public String getNFb() {
		return this.NFb;
	}

	public void setNFb(String NFb) {
		this.NFb = NFb;
	}

	public String getNFbd() {
		return this.NFbd;
	}

	public void setNFbd(String NFbd) {
		this.NFbd = NFbd;
	}

	public String getNSite() {
		return this.NSite;
	}

	public void setNSite(String NSite) {
		this.NSite = NSite;
	}

	public String getNFunctionary() {
		return this.NFunctionary;
	}

	public void setNFunctionary(String NFunctionary) {
		this.NFunctionary = NFunctionary;
	}

	public String getNFunctionaryPhone() {
		return this.NFunctionaryPhone;
	}

	public void setNFunctionaryPhone(String NFunctionaryPhone) {
		this.NFunctionaryPhone = NFunctionaryPhone;
	}

	public String getNQueryPhone() {
		return this.NQueryPhone;
	}

	public void setNQueryPhone(String NQueryPhone) {
		this.NQueryPhone = NQueryPhone;
	}

	public String getNAddress() {
		return this.NAddress;
	}

	public void setNAddress(String NAddress) {
		this.NAddress = NAddress;
	}

	public String getNNumber() {
		return this.NNumber;
	}

	public void setNNumber(String NNumber) {
		this.NNumber = NNumber;
	}

	public String getNPhone() {
		return this.NPhone;
	}

	public void setNPhone(String NPhone) {
		this.NPhone = NPhone;
	}

	public String getNCall1() {
		return this.NCall1;
	}

	public void setNCall1(String NCall1) {
		this.NCall1 = NCall1;
	}

	public String getNCall2() {
		return this.NCall2;
	}

	public void setNCall2(String NCall2) {
		this.NCall2 = NCall2;
	}

	public String getNCallAll() {
		return this.NCallAll;
	}

	public void setNCallAll(String NCallAll) {
		this.NCallAll = NCallAll;
	}

	public Integer getNCallNum() {
		return this.NCallNum;
	}

	public void setNCallNum(Integer NCallNum) {
		this.NCallNum = NCallNum;
	}

	public String getNCondition() {
		return this.NCondition;
	}

	public void setNCondition(String NCondition) {
		this.NCondition = NCondition;
	}

	public Integer getNServiceWeek() {
		return this.NServiceWeek;
	}

	public void setNServiceWeek(Integer NServiceWeek) {
		this.NServiceWeek = NServiceWeek;
	}

	public String getNIt() {
		return this.NIt;
	}

	public void setNIt(String NIt) {
		this.NIt = NIt;
	}

	public String getNNote() {
		return this.NNote;
	}

	public void setNNote(String NNote) {
		this.NNote = NNote;
	}

	public Timestamp getNCreateDate() {
		return this.NCreateDate;
	}

	public void setNCreateDate(Timestamp NCreateDate) {
		this.NCreateDate = NCreateDate;
	}

	public String getNType() {
		return this.NType;
	}

	public void setNType(String NType) {
		this.NType = NType;
	}

	public String getNState() {
		return this.NState;
	}

	public void setNState(String NState) {
		this.NState = NState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}