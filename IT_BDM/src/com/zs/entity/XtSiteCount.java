package com.zs.entity;

import java.sql.Timestamp;
import java.util.List;


/**
 * 2016年10月24日11:19:56
 * <br/>该类用户系统组站点资料统计模块使用
 * @author 黄光辉
 */
public class XtSiteCount {

	private Timestamp sTime;
	private Timestamp eTime;
	private int num;
	private String Type;
	private int count;
	private List siteDetail;
	
	
	public List getSiteDetail() {
		return siteDetail;
	}
	public void setSiteDetail(List siteDetail) {
		this.siteDetail = siteDetail;
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
