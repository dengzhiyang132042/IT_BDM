package com.zs.entity;

import java.sql.Timestamp;
import java.util.List;


/**
 * 2016-10-24 14:33:20
 * <br/>该类用户系统组哲盟异常数据检查模块使用
 * @author 张顺
 */
public class XtZmNumberCount {
	
	private Timestamp sTime;
	private Timestamp eTime;
	private int number;
	private int count;
	private List<XtZmNumber> zmNumbers;
	
	
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
	public List<XtZmNumber> getZmNumbers() {
		return zmNumbers;
	}
	public void setZmNumbers(List<XtZmNumber> zmNumbers) {
		this.zmNumbers = zmNumbers;
	}
	
	
	
	
	
	
	
	
}
