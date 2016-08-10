package com.zs.entity;

import java.util.List;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private String RId;
	private String RName;
	private String RDescription;

    private List<Permission> ps;
	// Constructors

	/** default constructor */
	public Role() {
	}
	public List<Permission> getPs() {
		return ps;
	}
	public void setPs(List<Permission> ps) {
		this.ps = ps;
	}
	/** minimal constructor */
	public Role(String RId) {
		this.RId = RId;
	}

	/** full constructor */
	public Role(String RId, String RName, String RDescription) {
		this.RId = RId;
		this.RName = RName;
		this.RDescription = RDescription;
	}

	// Property accessors

	public String getRId() {
		return this.RId;
	}

	public void setRId(String RId) {
		this.RId = RId;
	}

	public String getRName() {
		return this.RName;
	}

	public void setRName(String RName) {
		this.RName = RName;
	}

	public String getRDescription() {
		return this.RDescription;
	}

	public void setRDescription(String RDescription) {
		this.RDescription = RDescription;
	}

}