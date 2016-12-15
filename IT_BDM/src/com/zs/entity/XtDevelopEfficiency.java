package com.zs.entity;

import java.util.Date;

/**
 * XtDevelopEfficiency entity. @author MyEclipse Persistence Tools
 */

public class XtDevelopEfficiency implements java.io.Serializable {

	// Fields

	private String EId;
	private Date EMonth;
	private Integer EProjectDemand;
	private Integer EArrangeTime;
	private Integer EDevelopTime;
	private Integer ETestTime;
	private Integer EAllTime;
	private Double EDemandEfficiency;
	private Double EDevelopEfficiency;
	private Double ETestEfficiency;
	private Double EProjectEfficiency;
	private Integer ERealityComplete;
	private Integer EPlanComplete;
	private Integer EOverstep;
	private Double ECompleteRatio;

	// Constructors

	/** default constructor */
	public XtDevelopEfficiency() {
	}

	/** minimal constructor */
	public XtDevelopEfficiency(String EId) {
		this.EId = EId;
	}

	/** full constructor */
	public XtDevelopEfficiency(String EId, Date EMonth, Integer EProjectDemand,
			Integer EArrangeTime, Integer EDevelopTime, Integer ETestTime,
			Integer EAllTime, Double EDemandEfficiency,
			Double EDevelopEfficiency, Double ETestEfficiency,
			Double EProjectEfficiency, Integer ERealityComplete,
			Integer EPlanComplete, Integer EOverstep, Double ECompleteRatio) {
		this.EId = EId;
		this.EMonth = EMonth;
		this.EProjectDemand = EProjectDemand;
		this.EArrangeTime = EArrangeTime;
		this.EDevelopTime = EDevelopTime;
		this.ETestTime = ETestTime;
		this.EAllTime = EAllTime;
		this.EDemandEfficiency = EDemandEfficiency;
		this.EDevelopEfficiency = EDevelopEfficiency;
		this.ETestEfficiency = ETestEfficiency;
		this.EProjectEfficiency = EProjectEfficiency;
		this.ERealityComplete = ERealityComplete;
		this.EPlanComplete = EPlanComplete;
		this.EOverstep = EOverstep;
		this.ECompleteRatio = ECompleteRatio;
	}

	// Property accessors

	public String getEId() {
		return this.EId;
	}

	public void setEId(String EId) {
		this.EId = EId;
	}

	public Date getEMonth() {
		return this.EMonth;
	}

	public void setEMonth(Date EMonth) {
		this.EMonth = EMonth;
	}

	public Integer getEProjectDemand() {
		return this.EProjectDemand;
	}

	public void setEProjectDemand(Integer EProjectDemand) {
		this.EProjectDemand = EProjectDemand;
	}

	public Integer getEArrangeTime() {
		return this.EArrangeTime;
	}

	public void setEArrangeTime(Integer EArrangeTime) {
		this.EArrangeTime = EArrangeTime;
	}

	public Integer getEDevelopTime() {
		return this.EDevelopTime;
	}

	public void setEDevelopTime(Integer EDevelopTime) {
		this.EDevelopTime = EDevelopTime;
	}

	public Integer getETestTime() {
		return this.ETestTime;
	}

	public void setETestTime(Integer ETestTime) {
		this.ETestTime = ETestTime;
	}

	public Integer getEAllTime() {
		return this.EAllTime;
	}

	public void setEAllTime(Integer EAllTime) {
		this.EAllTime = EAllTime;
	}

	public Double getEDemandEfficiency() {
		return this.EDemandEfficiency;
	}

	public void setEDemandEfficiency(Double EDemandEfficiency) {
		this.EDemandEfficiency = EDemandEfficiency;
	}

	public Double getEDevelopEfficiency() {
		return this.EDevelopEfficiency;
	}

	public void setEDevelopEfficiency(Double EDevelopEfficiency) {
		this.EDevelopEfficiency = EDevelopEfficiency;
	}

	public Double getETestEfficiency() {
		return this.ETestEfficiency;
	}

	public void setETestEfficiency(Double ETestEfficiency) {
		this.ETestEfficiency = ETestEfficiency;
	}

	public Double getEProjectEfficiency() {
		return this.EProjectEfficiency;
	}

	public void setEProjectEfficiency(Double EProjectEfficiency) {
		this.EProjectEfficiency = EProjectEfficiency;
	}

	public Integer getERealityComplete() {
		return this.ERealityComplete;
	}

	public void setERealityComplete(Integer ERealityComplete) {
		this.ERealityComplete = ERealityComplete;
	}

	public Integer getEPlanComplete() {
		return this.EPlanComplete;
	}

	public void setEPlanComplete(Integer EPlanComplete) {
		this.EPlanComplete = EPlanComplete;
	}

	public Integer getEOverstep() {
		return this.EOverstep;
	}

	public void setEOverstep(Integer EOverstep) {
		this.EOverstep = EOverstep;
	}

	public Double getECompleteRatio() {
		return this.ECompleteRatio;
	}

	public void setECompleteRatio(Double ECompleteRatio) {
		this.ECompleteRatio = ECompleteRatio;
	}

	@Override
	public String toString() {
		return "XtDevelopEfficiency [EAllTime=" + EAllTime + ", EArrangeTime="
				+ EArrangeTime + ", ECompleteRatio=" + ECompleteRatio
				+ ", EDemandEfficiency=" + EDemandEfficiency
				+ ", EDevelopEfficiency=" + EDevelopEfficiency
				+ ", EDevelopTime=" + EDevelopTime + ", EId=" + EId
				+ ", EMonth=" + EMonth + ", EOverstep=" + EOverstep
				+ ", EPlanComplete=" + EPlanComplete + ", EProjectDemand="
				+ EProjectDemand + ", EProjectEfficiency=" + EProjectEfficiency
				+ ", ERealityComplete=" + ERealityComplete
				+ ", ETestEfficiency=" + ETestEfficiency + ", ETestTime="
				+ ETestTime + "]";
	}

	
}