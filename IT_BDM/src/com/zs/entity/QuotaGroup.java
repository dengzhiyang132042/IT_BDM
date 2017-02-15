package com.zs.entity;

import java.util.Date;

/**
 * QuotaGroup entity. @author MyEclipse Persistence Tools
 */

public class QuotaGroup implements java.io.Serializable {

	// Fields

	private String qgId;
	private Date qgDate;
	private String qgGroup;
	private String qgFunctionary;
	private Integer qgTypeZc;
	private Integer qgTypeWh;
	private Integer qgTypeZx;
	private Integer qgCount;
	private Double qgProductivity;

	// Constructors

	/** default constructor */
	public QuotaGroup() {
	}

	/** minimal constructor */
	public QuotaGroup(String qgId) {
		this.qgId = qgId;
	}
	
	public QuotaGroup(String qgId,Integer qgTypeZc, Integer qgTypeWh,
			Integer qgTypeZx, Integer qgCount, Double qgProductivity) {
		this.qgId = qgId;
		this.qgTypeZc = qgTypeZc;
		this.qgTypeWh = qgTypeWh;
		this.qgTypeZx = qgTypeZx;
		this.qgCount = qgCount;
		this.qgProductivity = qgProductivity;
	}

	/** full constructor */
	public QuotaGroup(String qgId, Date qgDate, String qgGroup,
			String qgFunctionary, Integer qgTypeZc, Integer qgTypeWh,
			Integer qgTypeZx, Integer qgCount, Double qgProductivity) {
		this.qgId = qgId;
		this.qgDate = qgDate;
		this.qgGroup = qgGroup;
		this.qgFunctionary = qgFunctionary;
		this.qgTypeZc = qgTypeZc;
		this.qgTypeWh = qgTypeWh;
		this.qgTypeZx = qgTypeZx;
		this.qgCount = qgCount;
		this.qgProductivity = qgProductivity;
	}

	// Property accessors

	public String getQgId() {
		return this.qgId;
	}

	public void setQgId(String qgId) {
		this.qgId = qgId;
	}

	public Date getQgDate() {
		return this.qgDate;
	}

	public void setQgDate(Date qgDate) {
		this.qgDate = qgDate;
	}

	public String getQgGroup() {
		return this.qgGroup;
	}

	public void setQgGroup(String qgGroup) {
		this.qgGroup = qgGroup;
	}

	public String getQgFunctionary() {
		return this.qgFunctionary;
	}

	public void setQgFunctionary(String qgFunctionary) {
		this.qgFunctionary = qgFunctionary;
	}

	public Integer getQgTypeZc() {
		return this.qgTypeZc;
	}

	public void setQgTypeZc(Integer qgTypeZc) {
		this.qgTypeZc = qgTypeZc;
	}

	public Integer getQgTypeWh() {
		return this.qgTypeWh;
	}

	public void setQgTypeWh(Integer qgTypeWh) {
		this.qgTypeWh = qgTypeWh;
	}

	public Integer getQgTypeZx() {
		return this.qgTypeZx;
	}

	public void setQgTypeZx(Integer qgTypeZx) {
		this.qgTypeZx = qgTypeZx;
	}

	public Integer getQgCount() {
		return this.qgCount;
	}

	public void setQgCount(Integer qgCount) {
		this.qgCount = qgCount;
	}

	public Double getQgProductivity() {
		return this.qgProductivity;
	}

	public void setQgProductivity(Double qgProductivity) {
		this.qgProductivity = qgProductivity;
	}

}