package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmByNumber entity. @author MyEclipse Persistence Tools
 */

public class ZmByNumber implements java.io.Serializable {

	// Fields

	private String byId;
	private Date byOaDate;
	private String bySection;
	private String byName;
	private String byBgn;
	private String byImoPass;
	private String byMail;
	private String byMailPass;
	private String byService;
	private String byOnJob;
	private Date byServiceDate;
	private Integer byServiceWeek;
	private Integer byServiceTime;
	private String byIsTimely;
	private String byNote;
	private Timestamp byCreateTime;
	private String byState;
	private String byType;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmByNumber() {
	}

	/** minimal constructor */
	public ZmByNumber(String byId) {
		this.byId = byId;
	}

	/** full constructor */
	public ZmByNumber(String byId, Date byOaDate, String bySection,
			String byName, String byBgn, String byImoPass, String byMail,
			String byMailPass, String byService, String byOnJob,
			Date byServiceDate, Integer byServiceWeek, Integer byServiceTime,
			String byIsTimely, String byNote, Timestamp byCreateTime,
			String byState, String byType, String UNum) {
		this.byId = byId;
		this.byOaDate = byOaDate;
		this.bySection = bySection;
		this.byName = byName;
		this.byBgn = byBgn;
		this.byImoPass = byImoPass;
		this.byMail = byMail;
		this.byMailPass = byMailPass;
		this.byService = byService;
		this.byOnJob = byOnJob;
		this.byServiceDate = byServiceDate;
		this.byServiceWeek = byServiceWeek;
		this.byServiceTime = byServiceTime;
		this.byIsTimely = byIsTimely;
		this.byNote = byNote;
		this.byCreateTime = byCreateTime;
		this.byState = byState;
		this.byType = byType;
		this.UNum = UNum;
	}

	// Property accessors

	public String getById() {
		return this.byId;
	}

	public void setById(String byId) {
		this.byId = byId;
	}

	public Date getByOaDate() {
		return this.byOaDate;
	}

	public void setByOaDate(Date byOaDate) {
		this.byOaDate = byOaDate;
	}

	public String getBySection() {
		return this.bySection;
	}

	public void setBySection(String bySection) {
		this.bySection = bySection;
	}

	public String getByName() {
		return this.byName;
	}

	public void setByName(String byName) {
		this.byName = byName;
	}

	public String getByBgn() {
		return this.byBgn;
	}

	public void setByBgn(String byBgn) {
		this.byBgn = byBgn;
	}

	public String getByImoPass() {
		return this.byImoPass;
	}

	public void setByImoPass(String byImoPass) {
		this.byImoPass = byImoPass;
	}

	public String getByMail() {
		return this.byMail;
	}

	public void setByMail(String byMail) {
		this.byMail = byMail;
	}

	public String getByMailPass() {
		return this.byMailPass;
	}

	public void setByMailPass(String byMailPass) {
		this.byMailPass = byMailPass;
	}

	public String getByService() {
		return this.byService;
	}

	public void setByService(String byService) {
		this.byService = byService;
	}

	public String getByOnJob() {
		return this.byOnJob;
	}

	public void setByOnJob(String byOnJob) {
		this.byOnJob = byOnJob;
	}

	public Date getByServiceDate() {
		return this.byServiceDate;
	}

	public void setByServiceDate(Date byServiceDate) {
		this.byServiceDate = byServiceDate;
	}

	public Integer getByServiceWeek() {
		return this.byServiceWeek;
	}

	public void setByServiceWeek(Integer byServiceWeek) {
		this.byServiceWeek = byServiceWeek;
	}

	public Integer getByServiceTime() {
		return this.byServiceTime;
	}

	public void setByServiceTime(Integer byServiceTime) {
		this.byServiceTime = byServiceTime;
	}

	public String getByIsTimely() {
		return this.byIsTimely;
	}

	public void setByIsTimely(String byIsTimely) {
		this.byIsTimely = byIsTimely;
	}

	public String getByNote() {
		return this.byNote;
	}

	public void setByNote(String byNote) {
		this.byNote = byNote;
	}

	public Timestamp getByCreateTime() {
		return this.byCreateTime;
	}

	public void setByCreateTime(Timestamp byCreateTime) {
		this.byCreateTime = byCreateTime;
	}

	public String getByState() {
		return this.byState;
	}

	public void setByState(String byState) {
		this.byState = byState;
	}

	public String getByType() {
		return this.byType;
	}

	public void setByType(String byType) {
		this.byType = byType;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}