/**
 * 
 */
package com.zs.service;

/**
 * @author 黄光辉
 *
 */
public interface iXtProjectCountService{
	
	/**
	 * @author 黄光辉
	 * <br/>这个是用于第一次生成表
	 */
	public void createTableAll();
	
	
	/**
	 * @author 黄光辉
	 * <br/>传一个月份进来，将本月的数据进行重新生成
	 * @param date
	 */
	public void createTableOfMonth(String date);
}
