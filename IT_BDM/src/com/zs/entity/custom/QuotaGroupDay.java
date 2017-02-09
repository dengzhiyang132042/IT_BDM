/**
 * 
 */
package com.zs.entity.custom;

import java.util.Date;

/**
 * @author 黄光辉
 *	这个类是用于指标系统中，日统计报表按组分类的
 */
public class QuotaGroupDay {
	private Date date;
	private String group;
	private String functionary;
	private int zc;
	private int wh;
	private int zx;
	private int count;
	private double  productivity;
	
	public QuotaGroupDay(Date date, String group, String functionary, int zc,
			int wh, int zx, int count, double productivity) {
		super();
		this.date = date;
		this.group = group;
		this.functionary = functionary;
		this.zc = zc;
		this.wh = wh;
		this.zx = zx;
		this.count = count;
		this.productivity = productivity;
	}
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getFunctionary() {
		return functionary;
	}
	public void setFunctionary(String functionary) {
		this.functionary = functionary;
	}
	public int getZc() {
		return zc;
	}
	public void setZc(int zc) {
		this.zc = zc;
	}
	public int getWh() {
		return wh;
	}
	public void setWh(int wh) {
		this.wh = wh;
	}
	public int getZx() {
		return zx;
	}
	public void setZx(int zx) {
		this.zx = zx;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getProductivity() {
		return productivity;
	}
	public void setProductivity(double productivity) {
		this.productivity = productivity;
	}
	
}
