/**
 * 
 */
package com.zs.service;

import java.util.Date;
import java.util.List;

import com.zs.entity.XtProject;

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
	
	public void createTable(List<XtProject> pros);
	/**
	 * @author 黄光辉
	 * <br/>传一个月份进来，将本月的数据进行重新生成
	 * @param date
	 */
	public void createTableOfMonth(String date);
	
	/**张顺
	 * 2016-12-14
	 * 装配项目封装
	 * */
	public List<XtProject> initProject(List<XtProject> pros);
	
	/**
	 * 一个装配的重载方法
	 * @param pro
	 * @return
	 */
	public XtProject initProject(XtProject pro);
	
	/**
	 * 按月装配 张顺 2016-12-14
	 * @param date
	 */
	public void createTable(XtProject pro) ;
}
