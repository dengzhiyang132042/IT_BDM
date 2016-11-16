/**
 * 
 */
package com.zs.entity.custom;

import java.sql.Timestamp;

/**
 * @author 黄光辉
 *<br/>这个类使用做巴枪送修坂田统计
 */
public class XtBqRepairCount {

	private Timestamp sTime;
	private Timestamp eTime;
	private int number;
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
	@Override
	public String toString() {
		return "XtBqRepairCount [count=" + count + ", eTime=" + eTime
				+ ", number=" + number + ", sTime=" + sTime + "]";
	}
	
	
}
