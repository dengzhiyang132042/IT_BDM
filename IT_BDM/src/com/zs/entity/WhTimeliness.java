package com.zs.entity;

/**
 * WhTimeliness entity. @author MyEclipse Persistence Tools
 */

public class WhTimeliness implements java.io.Serializable {

	// Fields

	private String MId;
	private Integer TNetPoint;
	private Integer TIt;
	private Integer TFinance;
	private Integer TFacilitator;
	private Integer TAmount;
	private Integer TResortDate;

	// Constructors

	/** default constructor */
	public WhTimeliness() {
	}

	/** minimal constructor */
	public WhTimeliness(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public WhTimeliness(String MId, Integer TNetPoint, Integer TIt,
			Integer TFinance, Integer TFacilitator, Integer TAmount,
			Integer TResortDate) {
		this.MId = MId;
		this.TNetPoint = TNetPoint;
		this.TIt = TIt;
		this.TFinance = TFinance;
		this.TFacilitator = TFacilitator;
		this.TAmount = TAmount;
		this.TResortDate = TResortDate;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public Integer getTNetPoint() {
		return this.TNetPoint;
	}

	public void setTNetPoint(Integer TNetPoint) {
		this.TNetPoint = TNetPoint;
	}

	public Integer getTIt() {
		return this.TIt;
	}

	public void setTIt(Integer TIt) {
		this.TIt = TIt;
	}

	public Integer getTFinance() {
		return this.TFinance;
	}

	public void setTFinance(Integer TFinance) {
		this.TFinance = TFinance;
	}

	public Integer getTFacilitator() {
		return this.TFacilitator;
	}

	public void setTFacilitator(Integer TFacilitator) {
		this.TFacilitator = TFacilitator;
	}

	public Integer getTAmount() {
		return this.TAmount;
	}

	public void setTAmount(Integer TAmount) {
		this.TAmount = TAmount;
	}

	public Integer getTResortDate() {
		return this.TResortDate;
	}

	public void setTResortDate(Integer TResortDate) {
		this.TResortDate = TResortDate;
	}

}