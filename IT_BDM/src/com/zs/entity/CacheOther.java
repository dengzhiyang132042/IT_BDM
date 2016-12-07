package com.zs.entity;

/**
 * CacheOther entity. @author MyEclipse Persistence Tools
 */

public class CacheOther implements java.io.Serializable {

	// Fields

	private String OTable;
	private String OIds;

	// Constructors

	/** default constructor */
	public CacheOther() {
	}

	/** minimal constructor */
	public CacheOther(String OTable) {
		this.OTable = OTable;
	}

	/** full constructor */
	public CacheOther(String OTable, String OIds) {
		this.OTable = OTable;
		this.OIds = OIds;
	}

	// Property accessors

	public String getOTable() {
		return this.OTable;
	}

	public void setOTable(String OTable) {
		this.OTable = OTable;
	}

	public String getOIds() {
		return this.OIds;
	}

	public void setOIds(String OIds) {
		this.OIds = OIds;
	}

}