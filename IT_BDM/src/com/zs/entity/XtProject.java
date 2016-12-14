package com.zs.entity;

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
	private List<XtProjectDetail> projectDetails; //方便数据的传输
	// Constructors
	
	
	/** default constructor */
	public XtProject() {
	}

	public List<XtProjectDetail> getProjectDetails() {
		return projectDetails;
	}

	public void setProjectDetails(List<XtProjectDetail> projectDetails) {
		this.projectDetails = projectDetails;
	}

	/** minimal constructor */
	public XtProject(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public XtProject(String PId, Date PDate, String PProject, String PTarget) {
		this.PId = PId;
		this.PDate = PDate;
		this.PProject = PProject;
		this.PTarget = PTarget;
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

}