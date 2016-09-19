package com.zs.entity;

import java.sql.Timestamp;

/**
 * DaDemand entity. @author MyEclipse Persistence Tools
 */

public class DaDemand implements java.io.Serializable {

	// Fields

	private String DId;
	private String DApplicant;
	private String DContent;
	private String DType;
	private Timestamp DTime;

	private String DTimeString;

	// Constructors

	public String getDTimeString() {
		return DTimeString;
	}

	public void setDTimeString(String dTimeString) {
		DTimeString = dTimeString;
	}

	/** default constructor */
	public DaDemand() {
	}

	/** minimal constructor */
	public DaDemand(String DId) {
		this.DId = DId;
	}

	/** full constructor */
	public DaDemand(String DId, String DApplicant, String DContent,
			String DType, Timestamp DTime) {
		this.DId = DId;
		this.DApplicant = DApplicant;
		this.DContent = DContent;
		this.DType = DType;
		this.DTime = DTime;
	}

	// Property accessors

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public String getDApplicant() {
		return this.DApplicant;
	}

	public void setDApplicant(String DApplicant) {
		this.DApplicant = DApplicant;
	}

	public String getDContent() {
		return this.DContent;
	}

	public void setDContent(String DContent) {
		this.DContent = DContent;
	}

	public String getDType() {
		return this.DType;
	}

	public void setDType(String DType) {
		this.DType = DType;
	}

	public Timestamp getDTime() {
		return this.DTime;
	}

	public void setDTime(Timestamp DTime) {
		this.DTime = DTime;
	}

}