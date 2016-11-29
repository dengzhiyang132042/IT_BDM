package com.zs.entity;

import java.util.Date;

/**
 * WhAllDate entity. @author MyEclipse Persistence Tools
 */

public class WhAllDate implements java.io.Serializable {

	// Fields

	private String OId;
	private Date DFacilitatorPrix;
	private Date DSitePrix;
	private Date DReplyFacilitator;
	private Date DFinanceAuditing;
	private Date DFinancePay;
	private Date DItFacilitator;
	private Date DBackDate;

	// Constructors

	/** default constructor */
	public WhAllDate() {
	}

	/** minimal constructor */
	public WhAllDate(String OId) {
		this.OId = OId;
	}

	/** full constructor */
	public WhAllDate(String OId, Date DFacilitatorPrix, Date DSitePrix,
			Date DReplyFacilitator, Date DFinanceAuditing, Date DFinancePay,
			Date DItFacilitator, Date DBackDate) {
		this.OId = OId;
		this.DFacilitatorPrix = DFacilitatorPrix;
		this.DSitePrix = DSitePrix;
		this.DReplyFacilitator = DReplyFacilitator;
		this.DFinanceAuditing = DFinanceAuditing;
		this.DFinancePay = DFinancePay;
		this.DItFacilitator = DItFacilitator;
		this.DBackDate = DBackDate;
	}

	// Property accessors

	public String getOId() {
		return this.OId;
	}

	public void setOId(String OId) {
		this.OId = OId;
	}

	public Date getDFacilitatorPrix() {
		return this.DFacilitatorPrix;
	}

	public void setDFacilitatorPrix(Date DFacilitatorPrix) {
		this.DFacilitatorPrix = DFacilitatorPrix;
	}

	public Date getDSitePrix() {
		return this.DSitePrix;
	}

	public void setDSitePrix(Date DSitePrix) {
		this.DSitePrix = DSitePrix;
	}

	public Date getDReplyFacilitator() {
		return this.DReplyFacilitator;
	}

	public void setDReplyFacilitator(Date DReplyFacilitator) {
		this.DReplyFacilitator = DReplyFacilitator;
	}

	public Date getDFinanceAuditing() {
		return this.DFinanceAuditing;
	}

	public void setDFinanceAuditing(Date DFinanceAuditing) {
		this.DFinanceAuditing = DFinanceAuditing;
	}

	public Date getDFinancePay() {
		return this.DFinancePay;
	}

	public void setDFinancePay(Date DFinancePay) {
		this.DFinancePay = DFinancePay;
	}

	public Date getDItFacilitator() {
		return this.DItFacilitator;
	}

	public void setDItFacilitator(Date DItFacilitator) {
		this.DItFacilitator = DItFacilitator;
	}

	public Date getDBackDate() {
		return this.DBackDate;
	}

	public void setDBackDate(Date DBackDate) {
		this.DBackDate = DBackDate;
	}

}