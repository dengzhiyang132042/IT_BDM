package com.zs.entity;

/**
 * DaArea entity. @author MyEclipse Persistence Tools
 */

public class DaArea implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String descrition;

	// Constructors

	/** default constructor */
	public DaArea() {
	}

	/** full constructor */
	public DaArea(String name, String descrition) {
		this.name = name;
		this.descrition = descrition;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescrition() {
		return this.descrition;
	}

	public void setDescrition(String descrition) {
		this.descrition = descrition;
	}

}