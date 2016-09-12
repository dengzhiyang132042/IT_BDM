package com.zs.entity;

import java.util.Date;

/**
 * ZmOaNumber entity. @author MyEclipse Persistence Tools
 */

public class ZmOaNumber implements java.io.Serializable {

	// Fields

	private String OId;
	private Date ODate;
	private Integer OServiceWeek;
	private String OSection;
	private String OApply;
	private String OPosition;
	private String OOa;
	private String OService;
	private Date OServiceDate;
	private String OServiceTime;
	private String OOnJob;
	private String OIsTimely;
	private String ONote;

	// Constructors

	/** default constructor */
	public ZmOaNumber() {
	}

	/** minimal constructor */
	public ZmOaNumber(String OId) {
		this.OId = OId;
	}

	/** full constructor */
	public ZmOaNumber(String OId, Date ODate, Integer OServiceWeek,
			String OSection, String OApply, String OPosition, String OOa,
			String OService, Date OServiceDate, String OServiceTime,
			String OOnJob, String OIsTimely, String ONote) {
		this.OId = OId;
		this.ODate = ODate;
		this.OServiceWeek = OServiceWeek;
		this.OSection = OSection;
		this.OApply = OApply;
		this.OPosition = OPosition;
		this.OOa = OOa;
		this.OService = OService;
		this.OServiceDate = OServiceDate;
		this.OServiceTime = OServiceTime;
		this.OOnJob = OOnJob;
		this.OIsTimely = OIsTimely;
		this.ONote = ONote;
	}

	// Property accessors

	public String getOId() {
		return this.OId;
	}

	public void setOId(String OId) {
		this.OId = OId;
	}

	public Date getODate() {
		return this.ODate;
	}

	public void setODate(Date ODate) {
		this.ODate = ODate;
	}

	public Integer getOServiceWeek() {
		return this.OServiceWeek;
	}

	public void setOServiceWeek(Integer OServiceWeek) {
		this.OServiceWeek = OServiceWeek;
	}

	public String getOSection() {
		return this.OSection;
	}

	public void setOSection(String OSection) {
		this.OSection = OSection;
	}

	public String getOApply() {
		return this.OApply;
	}

	public void setOApply(String OApply) {
		this.OApply = OApply;
	}

	public String getOPosition() {
		return this.OPosition;
	}

	public void setOPosition(String OPosition) {
		this.OPosition = OPosition;
	}

	public String getOOa() {
		return this.OOa;
	}

	public void setOOa(String OOa) {
		this.OOa = OOa;
	}

	public String getOService() {
		return this.OService;
	}

	public void setOService(String OService) {
		this.OService = OService;
	}

	public Date getOServiceDate() {
		return this.OServiceDate;
	}

	public void setOServiceDate(Date OServiceDate) {
		this.OServiceDate = OServiceDate;
	}

	public String getOServiceTime() {
		return this.OServiceTime;
	}

	public void setOServiceTime(String OServiceTime) {
		this.OServiceTime = OServiceTime;
	}

	public String getOOnJob() {
		return this.OOnJob;
	}

	public void setOOnJob(String OOnJob) {
		this.OOnJob = OOnJob;
	}

	public String getOIsTimely() {
		return this.OIsTimely;
	}

	public void setOIsTimely(String OIsTimely) {
		this.OIsTimely = OIsTimely;
	}

	public String getONote() {
		return this.ONote;
	}

	public void setONote(String ONote) {
		this.ONote = ONote;
	}

}