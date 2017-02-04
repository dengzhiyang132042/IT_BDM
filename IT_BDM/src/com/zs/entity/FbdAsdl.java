package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * FbdAsdl entity. @author MyEclipse Persistence Tools
 */

public class FbdAsdl implements java.io.Serializable {

	// Fields

	private String asdlId;
	private String fbdId;
	private String asdlInput;
	private String asdlNum;
	private String asdlPass;
	private Double asdlFeeYear;
	private Date asdlTimeExpire;
	private String asdlContract;
	private String asdlNote;
	private String asdlState;
	private String asdlType;
	private Timestamp asdlCreateTime;
	private String asdlStateRealy;
	private String UNum;

	private SectionFenbodian fbd;
	
	public SectionFenbodian getFbd() {
		return fbd;
	}

	public void setFbd(SectionFenbodian fbd) {
		this.fbd = fbd;
	}
	// Constructors

	/** default constructor */
	public FbdAsdl() {
	}

	/** minimal constructor */
	public FbdAsdl(String asdlId) {
		this.asdlId = asdlId;
	}

	/** full constructor */
	public FbdAsdl(String asdlId, String fbdId, String asdlInput,
			String asdlNum, String asdlPass, Double asdlFeeYear,
			Date asdlTimeExpire, String asdlContract, String asdlNote,
			String asdlState, String asdlType, Timestamp asdlCreateTime,
			String asdlStateRealy, String UNum) {
		this.asdlId = asdlId;
		this.fbdId = fbdId;
		this.asdlInput = asdlInput;
		this.asdlNum = asdlNum;
		this.asdlPass = asdlPass;
		this.asdlFeeYear = asdlFeeYear;
		this.asdlTimeExpire = asdlTimeExpire;
		this.asdlContract = asdlContract;
		this.asdlNote = asdlNote;
		this.asdlState = asdlState;
		this.asdlType = asdlType;
		this.asdlCreateTime = asdlCreateTime;
		this.asdlStateRealy = asdlStateRealy;
		this.UNum = UNum;
	}

	// Property accessors

	public String getAsdlId() {
		return this.asdlId;
	}

	public void setAsdlId(String asdlId) {
		this.asdlId = asdlId;
	}

	public String getFbdId() {
		return this.fbdId;
	}

	public void setFbdId(String fbdId) {
		this.fbdId = fbdId;
	}

	public String getAsdlInput() {
		return this.asdlInput;
	}

	public void setAsdlInput(String asdlInput) {
		this.asdlInput = asdlInput;
	}

	public String getAsdlNum() {
		return this.asdlNum;
	}

	public void setAsdlNum(String asdlNum) {
		this.asdlNum = asdlNum;
	}

	public String getAsdlPass() {
		return this.asdlPass;
	}

	public void setAsdlPass(String asdlPass) {
		this.asdlPass = asdlPass;
	}

	public Double getAsdlFeeYear() {
		return this.asdlFeeYear;
	}

	public void setAsdlFeeYear(Double asdlFeeYear) {
		this.asdlFeeYear = asdlFeeYear;
	}

	public Date getAsdlTimeExpire() {
		return this.asdlTimeExpire;
	}

	public void setAsdlTimeExpire(Date asdlTimeExpire) {
		this.asdlTimeExpire = asdlTimeExpire;
	}

	public String getAsdlContract() {
		return this.asdlContract;
	}

	public void setAsdlContract(String asdlContract) {
		this.asdlContract = asdlContract;
	}

	public String getAsdlNote() {
		return this.asdlNote;
	}

	public void setAsdlNote(String asdlNote) {
		this.asdlNote = asdlNote;
	}

	public String getAsdlState() {
		return this.asdlState;
	}

	public void setAsdlState(String asdlState) {
		this.asdlState = asdlState;
	}

	public String getAsdlType() {
		return this.asdlType;
	}

	public void setAsdlType(String asdlType) {
		this.asdlType = asdlType;
	}

	public Timestamp getAsdlCreateTime() {
		return this.asdlCreateTime;
	}

	public void setAsdlCreateTime(Timestamp asdlCreateTime) {
		this.asdlCreateTime = asdlCreateTime;
	}

	public String getAsdlStateRealy() {
		return this.asdlStateRealy;
	}

	public void setAsdlStateRealy(String asdlStateRealy) {
		this.asdlStateRealy = asdlStateRealy;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}