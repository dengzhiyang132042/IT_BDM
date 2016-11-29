package com.zs.entity;

import java.sql.Timestamp;

/**
 * WhThreeMeetingScout entity. @author MyEclipse Persistence Tools
 */

public class WhThreeMeetingScout implements java.io.Serializable {

	// Fields

	private String TId;
	private Timestamp TDate;
	private String TIt;
	private String TComputer;
	private String TMonitor;
	private String TVideo;
	private String TMonitorScreen;
	private String TMouseKeyboard;
	private String TProjector;
	private String TYdSoftware;
	private String TNote;

	// Constructors

	/** default constructor */
	public WhThreeMeetingScout() {
	}

	/** minimal constructor */
	public WhThreeMeetingScout(String TId) {
		this.TId = TId;
	}

	/** full constructor */
	public WhThreeMeetingScout(String TId, Timestamp TDate, String TIt,
			String TComputer, String TMonitor, String TVideo,
			String TMonitorScreen, String TMouseKeyboard, String TProjector,
			String TYdSoftware, String TNote) {
		this.TId = TId;
		this.TDate = TDate;
		this.TIt = TIt;
		this.TComputer = TComputer;
		this.TMonitor = TMonitor;
		this.TVideo = TVideo;
		this.TMonitorScreen = TMonitorScreen;
		this.TMouseKeyboard = TMouseKeyboard;
		this.TProjector = TProjector;
		this.TYdSoftware = TYdSoftware;
		this.TNote = TNote;
	}

	// Property accessors

	public String getTId() {
		return this.TId;
	}

	public void setTId(String TId) {
		this.TId = TId;
	}

	public Timestamp getTDate() {
		return this.TDate;
	}

	public void setTDate(Timestamp TDate) {
		this.TDate = TDate;
	}

	public String getTIt() {
		return this.TIt;
	}

	public void setTIt(String TIt) {
		this.TIt = TIt;
	}

	public String getTComputer() {
		return this.TComputer;
	}

	public void setTComputer(String TComputer) {
		this.TComputer = TComputer;
	}

	public String getTMonitor() {
		return this.TMonitor;
	}

	public void setTMonitor(String TMonitor) {
		this.TMonitor = TMonitor;
	}

	public String getTVideo() {
		return this.TVideo;
	}

	public void setTVideo(String TVideo) {
		this.TVideo = TVideo;
	}

	public String getTMonitorScreen() {
		return this.TMonitorScreen;
	}

	public void setTMonitorScreen(String TMonitorScreen) {
		this.TMonitorScreen = TMonitorScreen;
	}

	public String getTMouseKeyboard() {
		return this.TMouseKeyboard;
	}

	public void setTMouseKeyboard(String TMouseKeyboard) {
		this.TMouseKeyboard = TMouseKeyboard;
	}

	public String getTProjector() {
		return this.TProjector;
	}

	public void setTProjector(String TProjector) {
		this.TProjector = TProjector;
	}

	public String getTYdSoftware() {
		return this.TYdSoftware;
	}

	public void setTYdSoftware(String TYdSoftware) {
		this.TYdSoftware = TYdSoftware;
	}

	public String getTNote() {
		return this.TNote;
	}

	public void setTNote(String TNote) {
		this.TNote = TNote;
	}

}