package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ZmPrinter entity. @author MyEclipse Persistence Tools
 */

public class ZmPrinter implements java.io.Serializable {

	// Fields

	private String PId;
	private String PBrand;
	private String PNumber;
	private String PArea;
	private String PAddress;
	private String PType;
	private String PPort;
	private String PIp;
	private String PCartridge;
	private String PToner;
	private String PTrait;
	private String PFunction;
	private String PPage;
	private String PAdd;
	private Date PLast;
	private Date PNext;
	private String PServiceType;
	private Timestamp PCreateTime;
	private String PState;
	private String UNum;

	// Constructors

	/** default constructor */
	public ZmPrinter() {
	}

	/** minimal constructor */
	public ZmPrinter(String PId) {
		this.PId = PId;
	}

	/** full constructor */
	public ZmPrinter(String PId, String PBrand, String PNumber, String PArea,
			String PAddress, String PType, String PPort, String PIp,
			String PCartridge, String PToner, String PTrait, String PFunction,
			String PPage, String PAdd, Date PLast, Date PNext,
			String PServiceType, Timestamp PCreateTime, String PState,
			String UNum) {
		this.PId = PId;
		this.PBrand = PBrand;
		this.PNumber = PNumber;
		this.PArea = PArea;
		this.PAddress = PAddress;
		this.PType = PType;
		this.PPort = PPort;
		this.PIp = PIp;
		this.PCartridge = PCartridge;
		this.PToner = PToner;
		this.PTrait = PTrait;
		this.PFunction = PFunction;
		this.PPage = PPage;
		this.PAdd = PAdd;
		this.PLast = PLast;
		this.PNext = PNext;
		this.PServiceType = PServiceType;
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

	public String getPBrand() {
		return this.PBrand;
	}

	public void setPBrand(String PBrand) {
		this.PBrand = PBrand;
	}

	public String getPNumber() {
		return this.PNumber;
	}

	public void setPNumber(String PNumber) {
		this.PNumber = PNumber;
	}

	public String getPArea() {
		return this.PArea;
	}

	public void setPArea(String PArea) {
		this.PArea = PArea;
	}

	public String getPAddress() {
		return this.PAddress;
	}

	public void setPAddress(String PAddress) {
		this.PAddress = PAddress;
	}

	public String getPType() {
		return this.PType;
	}

	public void setPType(String PType) {
		this.PType = PType;
	}

	public String getPPort() {
		return this.PPort;
	}

	public void setPPort(String PPort) {
		this.PPort = PPort;
	}

	public String getPIp() {
		return this.PIp;
	}

	public void setPIp(String PIp) {
		this.PIp = PIp;
	}

	public String getPCartridge() {
		return this.PCartridge;
	}

	public void setPCartridge(String PCartridge) {
		this.PCartridge = PCartridge;
	}

	public String getPToner() {
		return this.PToner;
	}

	public void setPToner(String PToner) {
		this.PToner = PToner;
	}

	public String getPTrait() {
		return this.PTrait;
	}

	public void setPTrait(String PTrait) {
		this.PTrait = PTrait;
	}

	public String getPFunction() {
		return this.PFunction;
	}

	public void setPFunction(String PFunction) {
		this.PFunction = PFunction;
	}

	public String getPPage() {
		return this.PPage;
	}

	public void setPPage(String PPage) {
		this.PPage = PPage;
	}

	public String getPAdd() {
		return this.PAdd;
	}

	public void setPAdd(String PAdd) {
		this.PAdd = PAdd;
	}

	public Date getPLast() {
		return this.PLast;
	}

	public void setPLast(Date PLast) {
		this.PLast = PLast;
	}

	public Date getPNext() {
		return this.PNext;
	}

	public void setPNext(Date PNext) {
		this.PNext = PNext;
	}

	public String getPServiceType() {
		return this.PServiceType;
	}

	public void setPServiceType(String PServiceType) {
		this.PServiceType = PServiceType;
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