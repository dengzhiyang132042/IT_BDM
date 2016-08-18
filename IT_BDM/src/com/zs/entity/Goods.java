package com.zs.entity;

import java.util.Date;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private String GId;
	private String GName;
	private Integer GNumber;
	private String GUnit;
	private Date GDateIn;
	private String csMasterIn;
	private Date GDateOut;
	private String csMasterOut;
	private String GNote;

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** minimal constructor */
	public Goods(String GId) {
		this.GId = GId;
	}

	/** full constructor */
	public Goods(String GId, String GName, Integer GNumber, String GUnit,
			Date GDateIn, String csMasterIn, Date GDateOut, String csMasterOut,
			String GNote) {
		this.GId = GId;
		this.GName = GName;
		this.GNumber = GNumber;
		this.GUnit = GUnit;
		this.GDateIn = GDateIn;
		this.csMasterIn = csMasterIn;
		this.GDateOut = GDateOut;
		this.csMasterOut = csMasterOut;
		this.GNote = GNote;
	}

	// Property accessors

	public String getGId() {
		return this.GId;
	}

	public void setGId(String GId) {
		this.GId = GId;
	}

	public String getGName() {
		return this.GName;
	}

	public void setGName(String GName) {
		this.GName = GName;
	}

	public Integer getGNumber() {
		return this.GNumber;
	}

	public void setGNumber(Integer GNumber) {
		this.GNumber = GNumber;
	}

	public String getGUnit() {
		return this.GUnit;
	}

	public void setGUnit(String GUnit) {
		this.GUnit = GUnit;
	}

	public Date getGDateIn() {
		return this.GDateIn;
	}

	public void setGDateIn(Date GDateIn) {
		this.GDateIn = GDateIn;
	}

	public String getCsMasterIn() {
		return this.csMasterIn;
	}

	public void setCsMasterIn(String csMasterIn) {
		this.csMasterIn = csMasterIn;
	}

	public Date getGDateOut() {
		return this.GDateOut;
	}

	public void setGDateOut(Date GDateOut) {
		this.GDateOut = GDateOut;
	}

	public String getCsMasterOut() {
		return this.csMasterOut;
	}

	public void setCsMasterOut(String csMasterOut) {
		this.csMasterOut = csMasterOut;
	}

	public String getGNote() {
		return this.GNote;
	}

	public void setGNote(String GNote) {
		this.GNote = GNote;
	}

}