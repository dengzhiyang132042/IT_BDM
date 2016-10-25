package com.zs.service.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zs.entity.XtZmNumber;
import com.zs.service.BaseService;
import com.zs.service.iXtZmNumberService;


public class XtZmNumberServiceImpl extends BaseService implements iXtZmNumberService{
	
	
	public List initXtZmBumberService(List<XtZmNumber> list) {
		// TODO Auto-generated method stub
		System.out.println(getDao().find("from XtZmNumber", null).toString());
		return getDao().find("from XtZmNumber", null);
	}

	/* (non-Javadoc)
	 * @see com.zs.service.iXtZmNumberService#weekDate(java.util.Date)
	 */
	
	/**
	 * @author 黄光辉
	 * <br/>传入一个时间返回该时间对应的周一到周日时间段
	 */
	public Map<String, Date> weekDate(Date date) {
		Calendar ca = Calendar.getInstance();//创建一个日期实例
		Calendar ca1 = Calendar.getInstance();
		Calendar ca2 = Calendar.getInstance();
		
		System.out.println(date.toLocaleString());
		ca.setTime(date);//实例化一个日期
		System.out.println(ca.getTime().toLocaleString());
		int a = ca.get(ca.DAY_OF_WEEK);
		System.out.println("当前周的第"+a+"天      day-->"+ca.getTime().getDate());
		//当前时间的周一
		System.out.println(ca.getTime().getYear()+1900);
		System.out.println(ca.getTime().getMonth()+1);
		ca1.set(ca.getTime().getYear()+1900, ca.getTime().getMonth(), ca.getTime().getDate()-a,23,59,60);
		ca2.set(ca.getTime().getYear()+1900, ca.getTime().getMonth(), ca.getTime().getDate()+(7-a),23,59,59);
		System.out.println("当前周的周一   "+ca1.getTime().toLocaleString());
		System.out.println("当前周的周日   "+ca2.getTime().toLocaleString());
		
		Map<String, Date> map=new HashMap<String, Date>();
		
		map.put(KEY_DATE_START, ca1.getTime());
		map.put(KEY_DATE_END, ca2.getTime());
		
		return map;
	}


}
