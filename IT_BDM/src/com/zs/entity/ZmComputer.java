package com.zs.entity;

import java.util.Date;

/**
 * ZmComputer entity. @author MyEclipse Persistence Tools
 */

public class ZmComputer implements java.io.Serializable {

	// Fields

	private String CId;
	private String CSection;
	private String CMaster;
	private String CNum;
	private String CPosition;
	private String CAddress;
	private String CAd;
	private String CIp;
	private String CMac;
	private String CCpuBrand;
	private String CCpuModel;
	private String CBoardBrand;
	private String CBoardChip;
	private String CMemoryC;
	private String CMemoryF;
	private String CDisk;
	private String CDisplayBrand;
	private String CDisplayC;
	private String CIsScrap;
	private String CNote;
	private Date CDate;

	// Constructors

	/** default constructor */
	public ZmComputer() {
	}

	/** minimal constructor */
	public ZmComputer(String CId) {
		this.CId = CId;
	}

	/** full constructor */
	public ZmComputer(String CId, String CSection, String CMaster, String CNum,
			String CPosition, String CAddress, String CAd, String CIp,
			String CMac, String CCpuBrand, String CCpuModel,
			String CBoardBrand, String CBoardChip, String CMemoryC,
			String CMemoryF, String CDisk, String CDisplayBrand,
			String CDisplayC, String CIsScrap, String CNote, Date CDate) {
		this.CId = CId;
		this.CSection = CSection;
		this.CMaster = CMaster;
		this.CNum = CNum;
		this.CPosition = CPosition;
		this.CAddress = CAddress;
		this.CAd = CAd;
		this.CIp = CIp;
		this.CMac = CMac;
		this.CCpuBrand = CCpuBrand;
		this.CCpuModel = CCpuModel;
		this.CBoardBrand = CBoardBrand;
		this.CBoardChip = CBoardChip;
		this.CMemoryC = CMemoryC;
		this.CMemoryF = CMemoryF;
		this.CDisk = CDisk;
		this.CDisplayBrand = CDisplayBrand;
		this.CDisplayC = CDisplayC;
		this.CIsScrap = CIsScrap;
		this.CNote = CNote;
		this.CDate = CDate;
	}

	// Property accessors

	public String getCId() {
		return this.CId;
	}

	public void setCId(String CId) {
		this.CId = CId;
	}

	public String getCSection() {
		return this.CSection;
	}

	public void setCSection(String CSection) {
		this.CSection = CSection;
	}

	public String getCMaster() {
		return this.CMaster;
	}

	public void setCMaster(String CMaster) {
		this.CMaster = CMaster;
	}

	public String getCNum() {
		return this.CNum;
	}

	public void setCNum(String CNum) {
		this.CNum = CNum;
	}

	public String getCPosition() {
		return this.CPosition;
	}

	public void setCPosition(String CPosition) {
		this.CPosition = CPosition;
	}

	public String getCAddress() {
		return this.CAddress;
	}

	public void setCAddress(String CAddress) {
		this.CAddress = CAddress;
	}

	public String getCAd() {
		return this.CAd;
	}

	public void setCAd(String CAd) {
		this.CAd = CAd;
	}

	public String getCIp() {
		return this.CIp;
	}

	public void setCIp(String CIp) {
		this.CIp = CIp;
	}

	public String getCMac() {
		return this.CMac;
	}

	public void setCMac(String CMac) {
		this.CMac = CMac;
	}

	public String getCCpuBrand() {
		return this.CCpuBrand;
	}

	public void setCCpuBrand(String CCpuBrand) {
		this.CCpuBrand = CCpuBrand;
	}

	public String getCCpuModel() {
		return this.CCpuModel;
	}

	public void setCCpuModel(String CCpuModel) {
		this.CCpuModel = CCpuModel;
	}

	public String getCBoardBrand() {
		return this.CBoardBrand;
	}

	public void setCBoardBrand(String CBoardBrand) {
		this.CBoardBrand = CBoardBrand;
	}

	public String getCBoardChip() {
		return this.CBoardChip;
	}

	public void setCBoardChip(String CBoardChip) {
		this.CBoardChip = CBoardChip;
	}

	public String getCMemoryC() {
		return this.CMemoryC;
	}

	public void setCMemoryC(String CMemoryC) {
		this.CMemoryC = CMemoryC;
	}

	public String getCMemoryF() {
		return this.CMemoryF;
	}

	public void setCMemoryF(String CMemoryF) {
		this.CMemoryF = CMemoryF;
	}

	public String getCDisk() {
		return this.CDisk;
	}

	public void setCDisk(String CDisk) {
		this.CDisk = CDisk;
	}

	public String getCDisplayBrand() {
		return this.CDisplayBrand;
	}

	public void setCDisplayBrand(String CDisplayBrand) {
		this.CDisplayBrand = CDisplayBrand;
	}

	public String getCDisplayC() {
		return this.CDisplayC;
	}

	public void setCDisplayC(String CDisplayC) {
		this.CDisplayC = CDisplayC;
	}

	public String getCIsScrap() {
		return this.CIsScrap;
	}

	public void setCIsScrap(String CIsScrap) {
		this.CIsScrap = CIsScrap;
	}

	public String getCNote() {
		return this.CNote;
	}

	public void setCNote(String CNote) {
		this.CNote = CNote;
	}

	public Date getCDate() {
		return this.CDate;
	}

	public void setCDate(Date CDate) {
		this.CDate = CDate;
	}

}