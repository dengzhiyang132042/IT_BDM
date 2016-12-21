package com.zs.entity;

/**
 * ChildNum entity. @author MyEclipse Persistence Tools
 */

public class ChildNum implements java.io.Serializable {

	// Fields

	private String NId;
	private String NNum;
	private String NChildNum;

	// Constructors

	/** default constructor */
	public ChildNum() {
	}

	/** minimal constructor */
	public ChildNum(String NId) {
		this.NId = NId;
	}

	/** full constructor */
	public ChildNum(String NId, String NNum, String NChildNum) {
		this.NId = NId;
		this.NNum = NNum;
		this.NChildNum = NChildNum;
	}

	// Property accessors

	public String getNId() {
		return this.NId;
	}

	public void setNId(String NId) {
		this.NId = NId;
	}

	public String getNNum() {
		return this.NNum;
	}

	public void setNNum(String NNum) {
		this.NNum = NNum;
	}

	public String getNChildNum() {
		return this.NChildNum;
	}

	public void setNChildNum(String NChildNum) {
		this.NChildNum = NChildNum;
	}

}