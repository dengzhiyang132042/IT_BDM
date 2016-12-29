package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmMail entity. @author MyEclipse Persistence Tools
 */

public class ZmMail implements java.io.Serializable {

	// Fields

	private String MId;
	private Date MOaDate;
	private String MSection;
	private String MName;
	private String MMail;
	private String MMailPass;
	private String MService;
	private String MOnJob;
	private Date MServiceDate;
	private Integer MServiceWeek;
	private Integer MServiceTime;
	private String MIsTimely;
	private String MNote;
	private Timestamp MCreateTime;
	private String MType;
	private String MState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmMail() {
	}

	/** minimal constructor */
	public ZmMail(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public ZmMail(String MId, Date MOaDate, String MSection, String MName,
			String MMail, String MMailPass, String MService, String MOnJob,
			Date MServiceDate, Integer MServiceWeek, Integer MServiceTime,
			String MIsTimely, String MNote, Timestamp MCreateTime,
			String MType, String MState, String UNum) {
		this.MId = MId;
		this.MOaDate = MOaDate;
		this.MSection = MSection;
		this.MName = MName;
		this.MMail = MMail;
		this.MMailPass = MMailPass;
		this.MService = MService;
		this.MOnJob = MOnJob;
		this.MServiceDate = MServiceDate;
		this.MServiceWeek = MServiceWeek;
		this.MServiceTime = MServiceTime;
		this.MIsTimely = MIsTimely;
		this.MNote = MNote;
		this.MCreateTime = MCreateTime;
		this.MType = MType;
		this.MState = MState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public Date getMOaDate() {
		return this.MOaDate;
	}

	public void setMOaDate(Date MOaDate) {
		this.MOaDate = MOaDate;
	}

	public String getMSection() {
		return this.MSection;
	}

	public void setMSection(String MSection) {
		this.MSection = MSection;
	}

	public String getMName() {
		return this.MName;
	}

	public void setMName(String MName) {
		this.MName = MName;
	}

	public String getMMail() {
		return this.MMail;
	}

	public void setMMail(String MMail) {
		this.MMail = MMail;
	}

	public String getMMailPass() {
		return this.MMailPass;
	}

	public void setMMailPass(String MMailPass) {
		this.MMailPass = MMailPass;
	}

	public String getMService() {
		return this.MService;
	}

	public void setMService(String MService) {
		this.MService = MService;
	}

	public String getMOnJob() {
		return this.MOnJob;
	}

	public void setMOnJob(String MOnJob) {
		this.MOnJob = MOnJob;
	}

	public Date getMServiceDate() {
		return this.MServiceDate;
	}

	public void setMServiceDate(Date MServiceDate) {
		this.MServiceDate = MServiceDate;
	}

	public Integer getMServiceWeek() {
		return this.MServiceWeek;
	}

	public void setMServiceWeek(Integer MServiceWeek) {
		this.MServiceWeek = MServiceWeek;
	}

	public Integer getMServiceTime() {
		return this.MServiceTime;
	}

	public void setMServiceTime(Integer MServiceTime) {
		this.MServiceTime = MServiceTime;
	}

	public String getMIsTimely() {
		return this.MIsTimely;
	}

	public void setMIsTimely(String MIsTimely) {
		this.MIsTimely = MIsTimely;
	}

	public String getMNote() {
		return this.MNote;
	}

	public void setMNote(String MNote) {
		this.MNote = MNote;
	}

	public Timestamp getMCreateTime() {
		return this.MCreateTime;
	}

	public void setMCreateTime(Timestamp MCreateTime) {
		this.MCreateTime = MCreateTime;
	}

	public String getMType() {
		return this.MType;
	}

	public void setMType(String MType) {
		this.MType = MType;
	}

	public String getMState() {
		return this.MState;
	}

	public void setMState(String MState) {
		this.MState = MState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}