package com.zs.action;

import java.io.UnsupportedEncodingException;

public interface IMyBaseAction {
	
	/**
	 * 张顺
	 * <br>2016年9月2日10:29:51
	 * @return 该方法是分页查询、多条件查询等功能的方法
	 */
	public String queryOfFenye() throws UnsupportedEncodingException;
	
	/**
	 * 张顺
	 * <br>2016年9月2日10:31:00
	 * @return 删除方法，通过传id获取该条数据，删除即可
	 */
	public String delete() throws Exception ;
	
	/**
	 * 张顺
	 * <br>2016年9月2日10:31:57
	 * @return 修改方法
	 */
	public String update() throws Exception;
	
	/**
	 * 张顺
	 * <br>2016年9月2日10:32:36
	 * @return 添加方法，有在工具包里有一个不重复的随机数的方法，用它来构建id
	 */
	public String add() throws Exception;
	
	/**
	 * 张顺
	 * <br>2016年9月2日10:33:44
	 * @return 查询所有的信息的方法，在添加、删除、修改操作后跟这个方法，目的是实现进行操作后能能立即看到结果的效果。
	 */
	public String gotoQuery() throws UnsupportedEncodingException  ;

	/**
	 * 张顺
	 * <br>2016年9月2日10:43:42
	 * <br>清除多条件查询的参数的方法
	 */
	public void clearOptions();
	
}
