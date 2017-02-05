package com.zs.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * YjOut entity. @author MyEclipse Persistence Tools
 */

public class YjOut implements java.io.Serializable {

	// Fields

	private String OId;
	private String OFbd;
	private String OArea;
	private Date ODjrq;
	private String ODjr;
	private String OLxr;
	private String OFbdDz;
	private String OGs;
	private Integer OXySxtSl;
	private String OXySxtZt;
	private String OXyJkzjZt;
	private String OXyJkzjZh;
	private String OKdh;
	private String OPass;
	private Date OAzsj;
	private Date ODqsj;
	private String OWlQy;
	private String OWlGz;
	private String OJkQy;
	private String OJkAz;
	private String OJkHz;
	private String OJkWx;
	private Integer ODdSl;
	private Date ODdSj;
	private String OZyxz;
	private Integer OXgSxtSl;
	private String OXgSxtXh;
	private Integer OXgJkzjSl;
	private String OXgJkzjXh;
	private Integer OXgXc;
	private Integer OXgZj;
	private Integer OXgdwSxt;
	private Integer OXgdwJkzj;
	private Integer OXgdwXc;
	private Integer OXgdwZj;
	private Integer OYwcSxt;
	private Integer OYwcJkzj;
	private Integer OYwcZj;
	private Integer OYwcXc;
	private Date OYwcSj;
	private Integer OWwcSxt;
	private Integer OWwcJkzj;
	private Integer OWwcZj;
	private Integer OWwcXc;
	private Date OWwcSj;
	private String OSgyj;
	private String OGjr;
	private String OWcqk;
	private Date OJhsj;
	private Date OSjsj;
	private String OType;
	private Timestamp OCreateTime;
	private String OState;
	private String UNum;

	// Constructors

	/** default constructor */
	public YjOut() {
	}

	/** minimal constructor */
	public YjOut(String OId) {
		this.OId = OId;
	}

	/** full constructor */
	public YjOut(String OId, String OFbd, String OArea, Date ODjrq,
			String ODjr, String OLxr, String OFbdDz, String OGs,
			Integer OXySxtSl, String OXySxtZt, String OXyJkzjZt,
			String OXyJkzjZh, String OKdh, String OPass, Date OAzsj,
			Date ODqsj, String OWlQy, String OWlGz, String OJkQy, String OJkAz,
			String OJkHz, String OJkWx, Integer ODdSl, Date ODdSj,
			String OZyxz, Integer OXgSxtSl, String OXgSxtXh, Integer OXgJkzjSl,
			String OXgJkzjXh, Integer OXgXc, Integer OXgZj, Integer OXgdwSxt,
			Integer OXgdwJkzj, Integer OXgdwXc, Integer OXgdwZj,
			Integer OYwcSxt, Integer OYwcJkzj, Integer OYwcZj, Integer OYwcXc,
			Date OYwcSj, Integer OWwcSxt, Integer OWwcJkzj, Integer OWwcZj,
			Integer OWwcXc, Date OWwcSj, String OSgyj, String OGjr,
			String OWcqk, Date OJhsj, Date OSjsj, String OType,
			Timestamp OCreateTime, String OState, String UNum) {
		this.OId = OId;
		this.OFbd = OFbd;
		this.OArea = OArea;
		this.ODjrq = ODjrq;
		this.ODjr = ODjr;
		this.OLxr = OLxr;
		this.OFbdDz = OFbdDz;
		this.OGs = OGs;
		this.OXySxtSl = OXySxtSl;
		this.OXySxtZt = OXySxtZt;
		this.OXyJkzjZt = OXyJkzjZt;
		this.OXyJkzjZh = OXyJkzjZh;
		this.OKdh = OKdh;
		this.OPass = OPass;
		this.OAzsj = OAzsj;
		this.ODqsj = ODqsj;
		this.OWlQy = OWlQy;
		this.OWlGz = OWlGz;
		this.OJkQy = OJkQy;
		this.OJkAz = OJkAz;
		this.OJkHz = OJkHz;
		this.OJkWx = OJkWx;
		this.ODdSl = ODdSl;
		this.ODdSj = ODdSj;
		this.OZyxz = OZyxz;
		this.OXgSxtSl = OXgSxtSl;
		this.OXgSxtXh = OXgSxtXh;
		this.OXgJkzjSl = OXgJkzjSl;
		this.OXgJkzjXh = OXgJkzjXh;
		this.OXgXc = OXgXc;
		this.OXgZj = OXgZj;
		this.OXgdwSxt = OXgdwSxt;
		this.OXgdwJkzj = OXgdwJkzj;
		this.OXgdwXc = OXgdwXc;
		this.OXgdwZj = OXgdwZj;
		this.OYwcSxt = OYwcSxt;
		this.OYwcJkzj = OYwcJkzj;
		this.OYwcZj = OYwcZj;
		this.OYwcXc = OYwcXc;
		this.OYwcSj = OYwcSj;
		this.OWwcSxt = OWwcSxt;
		this.OWwcJkzj = OWwcJkzj;
		this.OWwcZj = OWwcZj;
		this.OWwcXc = OWwcXc;
		this.OWwcSj = OWwcSj;
		this.OSgyj = OSgyj;
		this.OGjr = OGjr;
		this.OWcqk = OWcqk;
		this.OJhsj = OJhsj;
		this.OSjsj = OSjsj;
		this.OType = OType;
		this.OCreateTime = OCreateTime;
		this.OState = OState;
		this.UNum = UNum;
	}

	// Property accessors

	public String getOId() {
		return this.OId;
	}

	public void setOId(String OId) {
		this.OId = OId;
	}

	public String getOFbd() {
		return this.OFbd;
	}

	public void setOFbd(String OFbd) {
		this.OFbd = OFbd;
	}

	public String getOArea() {
		return this.OArea;
	}

	public void setOArea(String OArea) {
		this.OArea = OArea;
	}

	public Date getODjrq() {
		return this.ODjrq;
	}

	public void setODjrq(Date ODjrq) {
		this.ODjrq = ODjrq;
	}

	public String getODjr() {
		return this.ODjr;
	}

	public void setODjr(String ODjr) {
		this.ODjr = ODjr;
	}

	public String getOLxr() {
		return this.OLxr;
	}

	public void setOLxr(String OLxr) {
		this.OLxr = OLxr;
	}

	public String getOFbdDz() {
		return this.OFbdDz;
	}

	public void setOFbdDz(String OFbdDz) {
		this.OFbdDz = OFbdDz;
	}

	public String getOGs() {
		return this.OGs;
	}

	public void setOGs(String OGs) {
		this.OGs = OGs;
	}

	public Integer getOXySxtSl() {
		return this.OXySxtSl;
	}

	public void setOXySxtSl(Integer OXySxtSl) {
		this.OXySxtSl = OXySxtSl;
	}

	public String getOXySxtZt() {
		return this.OXySxtZt;
	}

	public void setOXySxtZt(String OXySxtZt) {
		this.OXySxtZt = OXySxtZt;
	}

	public String getOXyJkzjZt() {
		return this.OXyJkzjZt;
	}

	public void setOXyJkzjZt(String OXyJkzjZt) {
		this.OXyJkzjZt = OXyJkzjZt;
	}

	public String getOXyJkzjZh() {
		return this.OXyJkzjZh;
	}

	public void setOXyJkzjZh(String OXyJkzjZh) {
		this.OXyJkzjZh = OXyJkzjZh;
	}

	public String getOKdh() {
		return this.OKdh;
	}

	public void setOKdh(String OKdh) {
		this.OKdh = OKdh;
	}

	public String getOPass() {
		return this.OPass;
	}

	public void setOPass(String OPass) {
		this.OPass = OPass;
	}

	public Date getOAzsj() {
		return this.OAzsj;
	}

	public void setOAzsj(Date OAzsj) {
		this.OAzsj = OAzsj;
	}

	public Date getODqsj() {
		return this.ODqsj;
	}

	public void setODqsj(Date ODqsj) {
		this.ODqsj = ODqsj;
	}

	public String getOWlQy() {
		return this.OWlQy;
	}

	public void setOWlQy(String OWlQy) {
		this.OWlQy = OWlQy;
	}

	public String getOWlGz() {
		return this.OWlGz;
	}

	public void setOWlGz(String OWlGz) {
		this.OWlGz = OWlGz;
	}

	public String getOJkQy() {
		return this.OJkQy;
	}

	public void setOJkQy(String OJkQy) {
		this.OJkQy = OJkQy;
	}

	public String getOJkAz() {
		return this.OJkAz;
	}

	public void setOJkAz(String OJkAz) {
		this.OJkAz = OJkAz;
	}

	public String getOJkHz() {
		return this.OJkHz;
	}

	public void setOJkHz(String OJkHz) {
		this.OJkHz = OJkHz;
	}

	public String getOJkWx() {
		return this.OJkWx;
	}

	public void setOJkWx(String OJkWx) {
		this.OJkWx = OJkWx;
	}

	public Integer getODdSl() {
		return this.ODdSl;
	}

	public void setODdSl(Integer ODdSl) {
		this.ODdSl = ODdSl;
	}

	public Date getODdSj() {
		return this.ODdSj;
	}

	public void setODdSj(Date ODdSj) {
		this.ODdSj = ODdSj;
	}

	public String getOZyxz() {
		return this.OZyxz;
	}

	public void setOZyxz(String OZyxz) {
		this.OZyxz = OZyxz;
	}

	public Integer getOXgSxtSl() {
		return this.OXgSxtSl;
	}

	public void setOXgSxtSl(Integer OXgSxtSl) {
		this.OXgSxtSl = OXgSxtSl;
	}

	public String getOXgSxtXh() {
		return this.OXgSxtXh;
	}

	public void setOXgSxtXh(String OXgSxtXh) {
		this.OXgSxtXh = OXgSxtXh;
	}

	public Integer getOXgJkzjSl() {
		return this.OXgJkzjSl;
	}

	public void setOXgJkzjSl(Integer OXgJkzjSl) {
		this.OXgJkzjSl = OXgJkzjSl;
	}

	public String getOXgJkzjXh() {
		return this.OXgJkzjXh;
	}

	public void setOXgJkzjXh(String OXgJkzjXh) {
		this.OXgJkzjXh = OXgJkzjXh;
	}

	public Integer getOXgXc() {
		return this.OXgXc;
	}

	public void setOXgXc(Integer OXgXc) {
		this.OXgXc = OXgXc;
	}

	public Integer getOXgZj() {
		return this.OXgZj;
	}

	public void setOXgZj(Integer OXgZj) {
		this.OXgZj = OXgZj;
	}

	public Integer getOXgdwSxt() {
		return this.OXgdwSxt;
	}

	public void setOXgdwSxt(Integer OXgdwSxt) {
		this.OXgdwSxt = OXgdwSxt;
	}

	public Integer getOXgdwJkzj() {
		return this.OXgdwJkzj;
	}

	public void setOXgdwJkzj(Integer OXgdwJkzj) {
		this.OXgdwJkzj = OXgdwJkzj;
	}

	public Integer getOXgdwXc() {
		return this.OXgdwXc;
	}

	public void setOXgdwXc(Integer OXgdwXc) {
		this.OXgdwXc = OXgdwXc;
	}

	public Integer getOXgdwZj() {
		return this.OXgdwZj;
	}

	public void setOXgdwZj(Integer OXgdwZj) {
		this.OXgdwZj = OXgdwZj;
	}

	public Integer getOYwcSxt() {
		return this.OYwcSxt;
	}

	public void setOYwcSxt(Integer OYwcSxt) {
		this.OYwcSxt = OYwcSxt;
	}

	public Integer getOYwcJkzj() {
		return this.OYwcJkzj;
	}

	public void setOYwcJkzj(Integer OYwcJkzj) {
		this.OYwcJkzj = OYwcJkzj;
	}

	public Integer getOYwcZj() {
		return this.OYwcZj;
	}

	public void setOYwcZj(Integer OYwcZj) {
		this.OYwcZj = OYwcZj;
	}

	public Integer getOYwcXc() {
		return this.OYwcXc;
	}

	public void setOYwcXc(Integer OYwcXc) {
		this.OYwcXc = OYwcXc;
	}

	public Date getOYwcSj() {
		return this.OYwcSj;
	}

	public void setOYwcSj(Date OYwcSj) {
		this.OYwcSj = OYwcSj;
	}

	public Integer getOWwcSxt() {
		return this.OWwcSxt;
	}

	public void setOWwcSxt(Integer OWwcSxt) {
		this.OWwcSxt = OWwcSxt;
	}

	public Integer getOWwcJkzj() {
		return this.OWwcJkzj;
	}

	public void setOWwcJkzj(Integer OWwcJkzj) {
		this.OWwcJkzj = OWwcJkzj;
	}

	public Integer getOWwcZj() {
		return this.OWwcZj;
	}

	public void setOWwcZj(Integer OWwcZj) {
		this.OWwcZj = OWwcZj;
	}

	public Integer getOWwcXc() {
		return this.OWwcXc;
	}

	public void setOWwcXc(Integer OWwcXc) {
		this.OWwcXc = OWwcXc;
	}

	public Date getOWwcSj() {
		return this.OWwcSj;
	}

	public void setOWwcSj(Date OWwcSj) {
		this.OWwcSj = OWwcSj;
	}

	public String getOSgyj() {
		return this.OSgyj;
	}

	public void setOSgyj(String OSgyj) {
		this.OSgyj = OSgyj;
	}

	public String getOGjr() {
		return this.OGjr;
	}

	public void setOGjr(String OGjr) {
		this.OGjr = OGjr;
	}

	public String getOWcqk() {
		return this.OWcqk;
	}

	public void setOWcqk(String OWcqk) {
		this.OWcqk = OWcqk;
	}

	public Date getOJhsj() {
		return this.OJhsj;
	}

	public void setOJhsj(Date OJhsj) {
		this.OJhsj = OJhsj;
	}

	public Date getOSjsj() {
		return this.OSjsj;
	}

	public void setOSjsj(Date OSjsj) {
		this.OSjsj = OSjsj;
	}

	public String getOType() {
		return this.OType;
	}

	public void setOType(String OType) {
		this.OType = OType;
	}

	public Timestamp getOCreateTime() {
		return this.OCreateTime;
	}

	public void setOCreateTime(Timestamp OCreateTime) {
		this.OCreateTime = OCreateTime;
	}

	public String getOState() {
		return this.OState;
	}

	public void setOState(String OState) {
		this.OState = OState;
	}

	public String getUNum() {
		return this.UNum;
	}

	public void setUNum(String UNum) {
		this.UNum = UNum;
	}

}