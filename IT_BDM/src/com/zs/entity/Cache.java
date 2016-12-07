package com.zs.entity;

import java.sql.Timestamp;

/**
 * Cache entity. @author MyEclipse Persistence Tools
 */

public class Cache implements java.io.Serializable {

	// Fields

	private String CId;
	private String CAction;
	private String CFiltrate;
	private String CContent;
	private Timestamp CTime;
	private String CNewData;

	// Constructors

	/** default constructor */
	public Cache() {
	}

	/** minimal constructor */
	public Cache(String CId) {
		this.CId = CId;
	}

	/** full constructor */
	public Cache(String CId, String CAction, String CFiltrate, String CContent,
			Timestamp CTime, String CNewData) {
		this.CId = CId;
		this.CAction = CAction;
		this.CFiltrate = CFiltrate;
		this.CContent = CContent;
		this.CTime = CTime;
		this.CNewData = CNewData;
	}

	// Property accessors

	public String getCId() {
		return this.CId;
	}

	public void setCId(String CId) {
		this.CId = CId;
	}

	public String getCAction() {
		return this.CAction;
	}

	public void setCAction(String CAction) {
		this.CAction = CAction;
	}

	public String getCFiltrate() {
		return this.CFiltrate;
	}

	public void setCFiltrate(String CFiltrate) {
		this.CFiltrate = CFiltrate;
	}

	public String getCContent() {
		return this.CContent;
	}

	public void setCContent(String CContent) {
		this.CContent = CContent;
	}

	public Timestamp getCTime() {
		return this.CTime;
	}

	public void setCTime(Timestamp CTime) {
		this.CTime = CTime;
	}

	public String getCNewData() {
		return this.CNewData;
	}

	public void setCNewData(String CNewData) {
		this.CNewData = CNewData;
	}

	@Override
	public String toString() {
		return "Cache [CAction=" + CAction + ", CContent=" + CContent
				+ ", CFiltrate=" + CFiltrate + ", CId=" + CId + ", CNewData="
				+ CNewData + ", CTime=" + CTime + "]";
	}

}