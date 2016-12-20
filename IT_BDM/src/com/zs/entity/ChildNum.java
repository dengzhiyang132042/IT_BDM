package com.zs.entity;

/**
 * ChildNum entity. @author MyEclipse Persistence Tools
 */

public class ChildNum implements java.io.Serializable {

	// Fields

	private ChildNumId id;

	// Constructors

	/** default constructor */
	public ChildNum() {
	}

	/** full constructor */
	public ChildNum(ChildNumId id) {
		this.id = id;
	}

	// Property accessors

	public ChildNumId getId() {
		return this.id;
	}

	public void setId(ChildNumId id) {
		this.id = id;
	}

}