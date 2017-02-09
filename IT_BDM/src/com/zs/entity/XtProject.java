package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * XtProject entity. @author MyEclipse Persistence Tools
 */

public class XtProject implements java.io.Serializable {

	// Fields

	private String PId;
	private Date PDate;
	private String PProject;
	private String PTarget;
	private String PType;
	private Timestamp PCreateTime;
	private String PState;
	private String UNum;

	private List<XtProjectDetail> projectDetails; //方便数据的传输
	// Constructors

	public List<XtProjectDetail> getProjectDetails() {
		return projectDetails;
	}
	public void setProjectDetails(List<XtProjectDetail> projectDetails) {
		this.projectDetails = projectDetails;
	}
	
	/** default constructor */
	public XtProject() {
	}
	

	/** minimal constructor */
	public XtProject(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public XtProject(String PId, Date PDate, String PProject, String PTarget,
			String PType, Timestamp PCreateTime, String PState, String UNum) {
		this.PId = PId;
		this.PDate = PDate;
		this.PProject = PProject;
		this.PTarget = PTarget;
		this.PType = PType;
		this.PCreateTime = PCreateTime;
		this.PState = PState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getPId() {
		return this.PId;
	}

	public void setPId(String PId) {
		this.PId = PId;
	}

	public Date getPDate() {
		return this.PDate;
	}

	public void setPDate(Date PDate) {
		this.PDate = PDate;
	}

	public String getPProject() {
		return this.PProject;
	}

	public void setPProject(String PProject) {
		this.PProject = PProject;
	}

	public String getPTarget() {
		return this.PTarget;
	}

	public void setPTarget(String PTarget) {
		this.PTarget = PTarget;
	}

	public String getPType() {
		return this.PType;
	}

	public void setPType(String PType) {
		this.PType = PType;
	}

	public Timestamp getPCreateTime() {
		return this.PCreateTime;
	}

	public void setPCreateTime(Timestamp PCreateTime) {
		this.PCreateTime = PCreateTime;
	}

	public String getPState() {
		return this.PState;
	}

	public void setPState(String PState) {
		this.PState = PState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}