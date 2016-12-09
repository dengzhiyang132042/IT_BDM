/**
 * 
 */
package com.zs.entity.custom;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author 黄光辉
 *<br/>这个类是用来对巴枪外修统计使用
 */
public class WhOutRepairCount {
	private Timestamp sTime;
	private Timestamp eTime;
	private String type;
	private int OrderNum;
	private int number;
	private int count;
	private int rows;
	private String result;
	private List massageReceive;
	
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
	public int getOrderNum() {
		return OrderNum;
	}
	public void setOrderNum(int orderNum) {
		OrderNum = orderNum;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public List getMassageReceive() {
		return massageReceive;
	}
	public void setMassageReceive(List massageReceive) {
		this.massageReceive = massageReceive;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "WhMassageReceiveCount [OrderNum=" + OrderNum + ", count="
				+ count + ", eTime=" + eTime + ", massageReceive="
				+ massageReceive + ", number=" + number + ", result=" + result
				+ ", rows=" + rows + ", sTime=" + sTime + ", type=" + type
				+ "]";
	}
	
	
	
}
