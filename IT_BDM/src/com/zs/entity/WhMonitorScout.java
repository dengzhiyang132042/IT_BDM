package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * WhMonitorScout entity. @author MyEclipse Persistence Tools
 */

public class WhMonitorScout implements java.io.Serializable {

	// Fields

	private String MId;
	private Date MDate;
	private String MIt;
	private String MMonitorMaster;
	private Timestamp MTime;
	private String MVideo;
	private String MRoom;
	private String MService;
	private String MGeneratorDevice;
	private String MDepotCamera;
	private String MDepotDevice;
	private String MNote;

	// Constructors

	/** default constructor */
	public WhMonitorScout() {
	}

	/** minimal constructor */
	public WhMonitorScout(String MId) {
		this.MId = MId;
	}

	/** full constructor */
	public WhMonitorScout(String MId, Date MDate, String MIt,
			String MMonitorMaster, Timestamp MTime, String MVideo,
			String MRoom, String MService, String MGeneratorDevice,
			String MDepotCamera, String MDepotDevice, String MNote) {
		this.MId = MId;
		this.MDate = MDate;
		this.MIt = MIt;
		this.MMonitorMaster = MMonitorMaster;
		this.MTime = MTime;
		this.MVideo = MVideo;
		this.MRoom = MRoom;
		this.MService = MService;
		this.MGeneratorDevice = MGeneratorDevice;
		this.MDepotCamera = MDepotCamera;
		this.MDepotDevice = MDepotDevice;
		this.MNote = MNote;
	}

	// Property accessors

	public String getMId() {
		return this.MId;
	}

	public void setMId(String MId) {
		this.MId = MId;
	}

	public Date getMDate() {
		return this.MDate;
	}

	public void setMDate(Date MDate) {
		this.MDate = MDate;
	}

	public String getMIt() {
		return this.MIt;
	}

	public void setMIt(String MIt) {
		this.MIt = MIt;
	}

	public String getMMonitorMaster() {
		return this.MMonitorMaster;
	}

	public void setMMonitorMaster(String MMonitorMaster) {
		this.MMonitorMaster = MMonitorMaster;
	}

	public Timestamp getMTime() {
		return this.MTime;
	}

	public void setMTime(Timestamp MTime) {
		this.MTime = MTime;
	}

	public String getMVideo() {
		return this.MVideo;
	}

	public void setMVideo(String MVideo) {
		this.MVideo = MVideo;
	}

	public String getMRoom() {
		return this.MRoom;
	}

	public void setMRoom(String MRoom) {
		this.MRoom = MRoom;
	}

	public String getMService() {
		return this.MService;
	}

	public void setMService(String MService) {
		this.MService = MService;
	}

	public String getMGeneratorDevice() {
		return this.MGeneratorDevice;
	}

	public void setMGeneratorDevice(String MGeneratorDevice) {
		this.MGeneratorDevice = MGeneratorDevice;
	}

	public String getMDepotCamera() {
		return this.MDepotCamera;
	}

	public void setMDepotCamera(String MDepotCamera) {
		this.MDepotCamera = MDepotCamera;
	}

	public String getMDepotDevice() {
		return this.MDepotDevice;
	}

	public void setMDepotDevice(String MDepotDevice) {
		this.MDepotDevice = MDepotDevice;
	}

	public String getMNote() {
		return this.MNote;
	}

	public void setMNote(String MNote) {
		this.MNote = MNote;
	}

}