package com.zs.entity;

import java.sql.Timestamp;



public class XtzSiteCount {

/**
 * 2016年10月24日11:19:56
 * <br/>该类用户系统组站点资料统计模块使用
 * @author 黄光辉
 */
	private Timestamp sTime;
	private Timestamp eTime;
	private int weeknum;
	private String Type;
	private int count;
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
	public int getWeeknum() {
		return weeknum;
	}
	public void setWeeknum(int weeknum) {
		this.weeknum = weeknum;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
}
