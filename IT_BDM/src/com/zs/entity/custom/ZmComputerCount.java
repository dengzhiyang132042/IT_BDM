/**
 * 
 */
package com.zs.entity.custom;

/**
 * @author 黄光辉
 * <br/>此类作为电脑统计使用
 */
public class ZmComputerCount {
	private String section;
	private int count;
	
	
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	@Override
	public String toString() {
		return "ZmComputerCount [count=" + count + ", section=" + section + "]";
	}
	
	
	
}
