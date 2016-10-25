package com.zs.service;

import com.zs.dao.IBaseDaoOfSpring;

public class BaseServiceOther {
	private IBaseDaoOfSpring dao=null;

	public IBaseDaoOfSpring getDao() {
		return dao;
	}
	public void setDao(IBaseDaoOfSpring dao) {
		this.dao = dao;
	}
	
	
}
