package com.zs.entity;

import java.sql.Timestamp;
import java.util.List;

/**
 * 2016年9月20日16:56:45
 * <br>该类是故障统计的数据封装类
 * @author 张顺
 *
 */
public class DaCount {
	private Timestamp sTime;
	private Timestamp eTime;
	private int daAll;
	private int daSuc;
	private int ratioSuc;
	
	private List demPer;
	
	private int rows;
	private int orderNum;
	
	
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public List getDemPer() {
		return demPer;
	}
	public void setDemPer(List demPer) {
		this.demPer = demPer;
	}
	public Timestamp getsTime() {
		return sTime;
	}
	public void setsTime(Timestamp sTime) {
		this.sTime = sTime;
	}
	public Timestamp geteTime() {
		return eTime;
	}
	public void seteTime(Timestamp eTime) {
		this.eTime = eTime;
	}
	public int getDaAll() {
		return daAll;
	}
	public void setDaAll(int daAll) {
		this.daAll = daAll;
	}
	public int getDaSuc() {
		return daSuc;
	}
	public void setDaSuc(int daSuc) {
		this.daSuc = daSuc;
	}
	public int getRatioSuc() {
		return ratioSuc;
	}
	public void setRatioSuc(int ratioSuc) {
		this.ratioSuc = ratioSuc;
	}
	
	
	
	
}
