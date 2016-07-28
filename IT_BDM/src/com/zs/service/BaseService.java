package com.zs.service;

import java.io.Serializable;
import java.util.List;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.FbdComputer;

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

	
}
