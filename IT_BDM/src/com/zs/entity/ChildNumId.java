package com.zs.entity;

/**
 * ChildNumId entity. @author MyEclipse Persistence Tools
 */

public class ChildNumId implements java.io.Serializable {

	// Fields

	private String NId;
	private String NNum;
	private String NChildNum;

	// Constructors

	/** default constructor */
	public ChildNumId() {
	}

	/** full constructor */
	public ChildNumId(String NId, String NNum, String NChildNum) {
		this.NId = NId;
		this.NNum = NNum;
		this.NChildNum = NChildNum;
	}

	// Property accessors

	public String getNId() {
		return this.NId;
	}

	public void setNId(String NId) {
		this.NId = NId;
	}

	public String getNNum() {
		return this.NNum;
	}

	public void setNNum(String NNum) {
		this.NNum = NNum;
	}

	public String getNChildNum() {
		return this.NChildNum;
	}

	public void setNChildNum(String NChildNum) {
		this.NChildNum = NChildNum;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ChildNumId))
			return false;
		ChildNumId castOther = (ChildNumId) other;

		return ((this.getNId() == castOther.getNId()) || (this.getNId() != null
				&& castOther.getNId() != null && this.getNId().equals(
				castOther.getNId())))
				&& ((this.getNNum() == castOther.getNNum()) || (this.getNNum() != null
						&& castOther.getNNum() != null && this.getNNum()
						.equals(castOther.getNNum())))
				&& ((this.getNChildNum() == castOther.getNChildNum()) || (this
						.getNChildNum() != null
						&& castOther.getNChildNum() != null && this
						.getNChildNum().equals(castOther.getNChildNum())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getNId() == null ? 0 : this.getNId().hashCode());
		result = 37 * result
				+ (getNNum() == null ? 0 : this.getNNum().hashCode());
		result = 37 * result
				+ (getNChildNum() == null ? 0 : this.getNChildNum().hashCode());
		return result;
	}

}