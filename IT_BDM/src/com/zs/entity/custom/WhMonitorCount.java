/**
 * 
 */
package com.zs.entity.custom;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author 黄光辉
 *<br/>这个类是用来对监控设备巡检表的统计
 */
public class WhMonitorCount {
	private Timestamp sTime;
	private Timestamp eTime;
	private String abnormal;
	private int OrderNum;
	private int number;
	private int count;
	private int rows;
	private List deviceScout;
	
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
	public String getAbnormal() {
		return abnormal;
	}
	public void setAbnormal(String abnormal) {
		this.abnormal = abnormal;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getOrderNum() {
		return OrderNum;
	}
	public void setOrderNum(int orderNum) {
		OrderNum = orderNum;
	}
	public List getDeviceScout() {
		return deviceScout;
	}
	public void setDeviceScout(List deviceScout) {
		this.deviceScout = deviceScout;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
	
	@Override
	public String toString() {
		return "WhDeviceScoutCount [OrderNum=" + OrderNum + ", abnormal="
				+ abnormal + ", count=" + count + ", deviceScout="
				+ deviceScout + ", eTime=" + eTime + ", number=" + number
				+ ", rows=" + rows + ", sTime=" + sTime + "]";
	}
	
	
	
	
	
	
}
