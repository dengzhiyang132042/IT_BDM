package com.zs.entity;

import java.util.Date;

/**
 * QuotaMan entity. @author MyEclipse Persistence Tools
 */

public class QuotaMan implements java.io.Serializable {

	// Fields

	private String qmId;
	private String UNum;
	private Integer qmTypeZc;
	private Integer qmTypeWh;
	private Integer qmTypeZx;
	private Date qmDate;
	private String qmTable;

	private int count;
	private double productivity;
	private String uName;
	// Constructors

	/** default constructor */
	public QuotaMan() {
	}

	/** minimal constructor */
	public QuotaMan(String qmId) {
		this.qmId = qmId;
	}

	/** full constructor */
	public QuotaMan(String qmId, String UNum, Integer qmTypeZc,
			Integer qmTypeWh, Integer qmTypeZx, Date qmDate, String qmTable) {
		this.qmId = qmId;
		this.UNum = UNum;
		this.qmTypeZc = qmTypeZc;
		this.qmTypeWh = qmTypeWh;
		this.qmTypeZx = qmTypeZx;
		this.qmDate = qmDate;
		this.qmTable = qmTable;
	}

	// Property accessors

	public String getQmId() {
		return this.qmId;
	}

	public void setQmId(String qmId) {
		this.qmId = qmId;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

	public Integer getQmTypeZc() {
		return this.qmTypeZc;
	}

	public void setQmTypeZc(Integer qmTypeZc) {
		this.qmTypeZc = qmTypeZc;
	}

	public Integer getQmTypeWh() {
		return this.qmTypeWh;
	}

	public void setQmTypeWh(Integer qmTypeWh) {
		this.qmTypeWh = qmTypeWh;
	}

	public Integer getQmTypeZx() {
		return this.qmTypeZx;
	}

	public void setQmTypeZx(Integer qmTypeZx) {
		this.qmTypeZx = qmTypeZx;
	}

	public Date getQmDate() {
		return this.qmDate;
	}

	public void setQmDate(Date qmDate) {
		this.qmDate = qmDate;
	}

	public String getQmTable() {
		return this.qmTable;
	}

	public void setQmTable(String qmTable) {
		this.qmTable = qmTable;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getProductivity() {
		return productivity;
	}

	public void setProductivity(double productivity) {
		this.productivity = productivity;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

}