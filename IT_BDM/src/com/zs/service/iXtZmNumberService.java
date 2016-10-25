package com.zs.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.XtZmNumber;




public interface iXtZmNumberService{
	
	public static final String KEY_DATE_START="";
	public static final String KEY_DATE_END="";
	
	public List initXtZmBumberService(List<XtZmNumber> list);
	
	/**
	 * @author 黄光辉
	 * <br/>传入一个时间返回该时间对应的周一到周日时间段
	 */
	public Map<String, Date> weekDate(Date date);
	
}
