package com.zs.entity;

import java.util.Date;

/**
 * GoOut entity. @author MyEclipse Persistence Tools
 */

public class GoOut implements java.io.Serializable {

	// Fields

	private String goId;
	private Date goDateAccept;
	private Integer goNumberAccept;
	private String goDestination;
	private String csMasterApplicant;
	private String goType;
	private String csMasterRegiste;
	private Date goDateExpect;
	private String goDescriptionFault;
	private String csMasterService;
	private Date goDateComplete;
	private Integer goNumberComplete;
	private Integer goTimeout;
	private Double goFeeMeal;
	private Integer goWork;
	private Double goFeeTraffic;
	private String goNote;

	// Constructors

	/** default constructor */
	public GoOut() {
	}

	/** minimal constructor */
	public GoOut(String goId) {
		this.goId = goId;
	}

	/** full constructor */
	public GoOut(String goId, Date goDateAccept, Integer goNumberAccept,
			String goDestination, String csMasterApplicant, String goType,
			String csMasterRegiste, Date goDateExpect,
			String goDescriptionFault, String csMasterService,
			Date goDateComplete, Integer goNumberComplete, Integer goTimeout,
			Double goFeeMeal, Integer goWork, Double goFeeTraffic, String goNote) {
		this.goId = goId;
		this.goDateAccept = goDateAccept;
		this.goNumberAccept = goNumberAccept;
		this.goDestination = goDestination;
		this.csMasterApplicant = csMasterApplicant;
		this.goType = goType;
		this.csMasterRegiste = csMasterRegiste;
		this.goDateExpect = goDateExpect;
		this.goDescriptionFault = goDescriptionFault;
		this.csMasterService = csMasterService;
		this.goDateComplete = goDateComplete;
		this.goNumberComplete = goNumberComplete;
		this.goTimeout = goTimeout;
		this.goFeeMeal = goFeeMeal;
		this.goWork = goWork;
		this.goFeeTraffic = goFeeTraffic;
		this.goNote = goNote;
	}

	// Property accessors

	public String getGoId() {
		return this.goId;
	}

	public void setGoId(String goId) {
		this.goId = goId;
	}

	public Date getGoDateAccept() {
		return this.goDateAccept;
	}

	public void setGoDateAccept(Date goDateAccept) {
		this.goDateAccept = goDateAccept;
	}

	public Integer getGoNumberAccept() {
		return this.goNumberAccept;
	}

	public void setGoNumberAccept(Integer goNumberAccept) {
		this.goNumberAccept = goNumberAccept;
	}

	public String getGoDestination() {
		return this.goDestination;
	}

	public void setGoDestination(String goDestination) {
		this.goDestination = goDestination;
	}

	public String getCsMasterApplicant() {
		return this.csMasterApplicant;
	}

	public void setCsMasterApplicant(String csMasterApplicant) {
		this.csMasterApplicant = csMasterApplicant;
	}

	public String getGoType() {
		return this.goType;
	}

	public void setGoType(String goType) {
		this.goType = goType;
	}

	public String getCsMasterRegiste() {
		return this.csMasterRegiste;
	}

	public void setCsMasterRegiste(String csMasterRegiste) {
		this.csMasterRegiste = csMasterRegiste;
	}

	public Date getGoDateExpect() {
		return this.goDateExpect;
	}

	public void setGoDateExpect(Date goDateExpect) {
		this.goDateExpect = goDateExpect;
	}

	public String getGoDescriptionFault() {
		return this.goDescriptionFault;
	}

	public void setGoDescriptionFault(String goDescriptionFault) {
		this.goDescriptionFault = goDescriptionFault;
	}

	public String getCsMasterService() {
		return this.csMasterService;
	}

	public void setCsMasterService(String csMasterService) {
		this.csMasterService = csMasterService;
	}

	public Date getGoDateComplete() {
		return this.goDateComplete;
	}

	public void setGoDateComplete(Date goDateComplete) {
		this.goDateComplete = goDateComplete;
	}

	public Integer getGoNumberComplete() {
		return this.goNumberComplete;
	}

	public void setGoNumberComplete(Integer goNumberComplete) {
		this.goNumberComplete = goNumberComplete;
	}

	public Integer getGoTimeout() {
		return this.goTimeout;
	}

	public void setGoTimeout(Integer goTimeout) {
		this.goTimeout = goTimeout;
	}

	public Double getGoFeeMeal() {
		return this.goFeeMeal;
	}

	public void setGoFeeMeal(Double goFeeMeal) {
		this.goFeeMeal = goFeeMeal;
	}

	public Integer getGoWork() {
		return this.goWork;
	}

	public void setGoWork(Integer goWork) {
		this.goWork = goWork;
	}

	public Double getGoFeeTraffic() {
		return this.goFeeTraffic;
	}

	public void setGoFeeTraffic(Double goFeeTraffic) {
		this.goFeeTraffic = goFeeTraffic;
	}

	public String getGoNote() {
		return this.goNote;
	}

	public void setGoNote(String goNote) {
		this.goNote = goNote;
	}

}