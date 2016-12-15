package com.zs.dao;

import java.io.Serializable;
import java.util.List;

public interface IBaseDaoOfSpring {
	
	public List find(String hql,Object[] ss);
	
	//分页查询
	public List findOfFenYe(String hql,int start,int size);
	
	public Object get(Class c,Serializable id);
	
	public void save(Object obj);
	
	public void update(Object obj);
	
	public void delete(Object obj);
	
	
	/**
	 * 张顺 2016-12-15
	 * 使用原始的sql查询
	 */
	public List queryBySql(String sql);
    
	/**
	 * 张顺 2016-12-15
	 * 使用原始的sql增删改
	 */
    public int excuteBySql(String sql);    
}
