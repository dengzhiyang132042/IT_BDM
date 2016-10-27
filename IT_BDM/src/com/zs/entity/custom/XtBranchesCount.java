/**
 * 
 */
package com.zs.entity.custom;

import java.sql.Timestamp;

/**
 * @author 黄光辉
 *<br/>此实体是用来做二级站点资料统计模块开发的使用
 */
public class XtBranchesCount {

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
		return "XtBranchesCount [count=" + count + ", eTime=" + eTime
				+ ", number=" + number + ", sTime=" + sTime + "]";
	}
	
	
}
