package com.zs.entity;

import java.util.Date;

/**
 * XtProjectDetail entity. @author MyEclipse Persistence Tools
 */

public class XtProjectDetail implements java.io.Serializable {

	// Fields

	private String DId;
	private String PId;
	private String DContent;
	private String DMan;
	private String DDetail;
	private String DSituation;
	private Date DStartDate;
	private Date DPlanDate;
	private Date DRealityDate;
	private Double DSchedule;
	private Integer DUserDate;

	// Constructors
	
	/** default constructor */
	public XtProjectDetail() {
	}

	/** minimal constructor */
	public XtProjectDetail(String DId) {
		this.DId = DId;
	}

	/** full constructor */
	public XtProjectDetail(String DId, String PId, String DContent,
			String DMan, String DDetail, String DSituation, Date DStartDate,
			Date DPlanDate, Date DRealityDate, Double DSchedule,
			Integer DUserDate) {
		this.DId = DId;
		this.PId = PId;
		this.DContent = DContent;
		this.DMan = DMan;
		this.DDetail = DDetail;
		this.DSituation = DSituation;
		this.DStartDate = DStartDate;
		this.DPlanDate = DPlanDate;
		this.DRealityDate = DRealityDate;
		this.DSchedule = DSchedule;
		this.DUserDate = DUserDate;
	}

	// Property accessors

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public String getPId() {
		return this.PId;
	}

	public void setPId(String PId) {
		this.PId = PId;
	}

	public String getDContent() {
		return this.DContent;
	}

	public void setDContent(String DContent) {
		this.DContent = DContent;
	}

	public String getDMan() {
		return this.DMan;
	}

	public void setDMan(String DMan) {
		this.DMan = DMan;
	}

	public String getDDetail() {
		return this.DDetail;
	}

	public void setDDetail(String DDetail) {
		this.DDetail = DDetail;
	}

	public String getDSituation() {
		return this.DSituation;
	}

	public void setDSituation(String DSituation) {
		this.DSituation = DSituation;
	}

	public Date getDStartDate() {
		return this.DStartDate;
	}

	public void setDStartDate(Date DStartDate) {
		this.DStartDate = DStartDate;
	}

	public Date getDPlanDate() {
		return this.DPlanDate;
	}

	public void setDPlanDate(Date DPlanDate) {
		this.DPlanDate = DPlanDate;
	}

	public Date getDRealityDate() {
		return this.DRealityDate;
	}

	public void setDRealityDate(Date DRealityDate) {
		this.DRealityDate = DRealityDate;
	}

	public Double getDSchedule() {
		return this.DSchedule;
	}

	public void setDSchedule(Double DSchedule) {
		this.DSchedule = DSchedule;
	}

	public Integer getDUserDate() {
		return this.DUserDate;
	}

	public void setDUserDate(Integer DUserDate) {
		this.DUserDate = DUserDate;
	}

}