package com.zs.service;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zs.tools.Page;

public interface IService {
	
	public List find(String hql,Object[] ss);
	
	//分页查询
	public List findOfFenYe(String hql,int start,int size);
	
	public Object get(Class c,Serializable id);
	
	public void save(Object obj);
	
	public void update(Object obj);
	
	public void delete(Object obj);

	
	public List query(String hql1,String ss[],String hql2,Page page,IService ser);
	
	public void timeLine(String state,String tableName,String id);

	
	public void receiveStructure(HttpServletRequest req) throws UnsupportedEncodingException;
	
	//通过id找到一个具体的master
	public String idToMaster(String id);
	
	//通过id找到一个具体部门名称
	public String idToName(String id);
		
}
