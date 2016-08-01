package com.zs.service;

import java.io.Serializable;
import java.util.List;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.FbdComputer;
import com.zs.entity.SectionQubu;
import com.zs.tools.Page;

public class BaseService implements IService{

	IBaseDaoOfSpring dao;
	
	public IBaseDaoOfSpring getDao() {
		return dao;
	}
	public void setDao(IBaseDaoOfSpring dao) {
		this.dao = dao;
	}
	public void delete(Object obj) {
		dao.delete(obj);
	}
	public List find(String hql,String[] ss) {
		return dao.find(hql,ss);
	}
	public List findOfFenYe(String hql, int start, int size) {
		return dao.findOfFenYe(hql, start, size);
	}
	public Object get(Class c, Serializable id) {
		return dao.get(c, id);
	}
	public void save(Object obj) {
		dao.save(obj);
	}
	public void update(Object obj) {
		dao.update(obj);
	}
	
	public List query(String hql1,String ss[],String hql2,Page page,IService ser) {
		String hql="from SectionQubu where qbId like ?"; 
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		List list=ser.find(hql1,ss);
		if (0==list.size()%page.getSize()) {
			page.setPageMax(list.size()/page.getSize());
		}else {
			page.setPageMax(list.size()/page.getSize()+1);
		}
//		System.out.println(list.size()+"(list)   "+page.getPageMax()+"(max)   "+page.getPageOn()+"(On)");
		List list2=ser.findOfFenYe(hql2, (page.getPageOn()-1)*page.getSize(), page.getSize());
		return list2;
	}
	public void timeLine(String state, String tableName, String id) {
		// TODO Auto-generated method stub
		
	}

	
}
