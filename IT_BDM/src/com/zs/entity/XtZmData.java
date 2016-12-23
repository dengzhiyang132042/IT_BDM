package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * XtZmData entity. @author MyEclipse Persistence Tools
 */

public class XtZmData implements java.io.Serializable {

	// Fields

	private String DId;
	private Date DDate;
	private Integer DNoUpload9;
	private Integer DNoUpload18;
	private Integer DOffline;
	private Integer DPackage;
	private Integer DNoPackage;
	private Integer DDataPackage;
	private Integer DDataCar;
	private String DNote;
	private String DType;
	private Timestamp DCreateTime;
	private String DState;
	private String UNum;

	// Constructors

	/** default constructor */
	public XtZmData() {
	}

	/** minimal constructor */
	public XtZmData(String DId) {
		this.DId = DId;
	}

	/** full constructor */
	public XtZmData(String DId, Date DDate, Integer DNoUpload9,
			Integer DNoUpload18, Integer DOffline, Integer DPackage,
			Integer DNoPackage, Integer DDataPackage, Integer DDataCar,
			String DNote, String DType, Timestamp DCreateTime, String DState,
			String UNum) {
		this.DId = DId;
		this.DDate = DDate;
		this.DNoUpload9 = DNoUpload9;
		this.DNoUpload18 = DNoUpload18;
		this.DOffline = DOffline;
		this.DPackage = DPackage;
		this.DNoPackage = DNoPackage;
		this.DDataPackage = DDataPackage;
		this.DDataCar = DDataCar;
		this.DNote = DNote;
		this.DType = DType;
		this.DCreateTime = DCreateTime;
		this.DState = DState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getDId() {
		return this.DId;
	}

	public void setDId(String DId) {
		this.DId = DId;
	}

	public Date getDDate() {
		return this.DDate;
	}

	public void setDDate(Date DDate) {
		this.DDate = DDate;
	}

	public Integer getDNoUpload9() {
		return this.DNoUpload9;
	}

	public void setDNoUpload9(Integer DNoUpload9) {
		this.DNoUpload9 = DNoUpload9;
	}

	public Integer getDNoUpload18() {
		return this.DNoUpload18;
	}

	public void setDNoUpload18(Integer DNoUpload18) {
		this.DNoUpload18 = DNoUpload18;
	}

	public Integer getDOffline() {
		return this.DOffline;
	}

	public void setDOffline(Integer DOffline) {
		this.DOffline = DOffline;
	}

	public Integer getDPackage() {
		return this.DPackage;
	}

	public void setDPackage(Integer DPackage) {
		this.DPackage = DPackage;
	}

	public Integer getDNoPackage() {
		return this.DNoPackage;
	}

	public void setDNoPackage(Integer DNoPackage) {
		this.DNoPackage = DNoPackage;
	}

	public Integer getDDataPackage() {
		return this.DDataPackage;
	}

	public void setDDataPackage(Integer DDataPackage) {
		this.DDataPackage = DDataPackage;
	}

	public Integer getDDataCar() {
		return this.DDataCar;
	}

	public void setDDataCar(Integer DDataCar) {
		this.DDataCar = DDataCar;
	}

	public String getDNote() {
		return this.DNote;
	}

	public void setDNote(String DNote) {
		this.DNote = DNote;
	}

	public String getDType() {
		return this.DType;
	}

	public void setDType(String DType) {
		this.DType = DType;
	}

	public Timestamp getDCreateTime() {
		return this.DCreateTime;
	}

	public void setDCreateTime(Timestamp DCreateTime) {
		this.DCreateTime = DCreateTime;
	}

	public String getDState() {
		return this.DState;
	}

	public void setDState(String DState) {
		this.DState = DState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}