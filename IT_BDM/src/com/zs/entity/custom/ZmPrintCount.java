package com.zs.entity.custom;

public class ZmPrintCount {
	private String position;
	private int count;
	
	
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	@Override
	public String toString() {
		return "ZmPrintCount [count=" + count + ", position=" + position + "]";
	}
	
	
	
}
