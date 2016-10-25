package com.zs.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TestCalendar {

	/**
	 * @param args
	 * @throws ParseException 
	 */
	public static void main(String[] args) throws ParseException {
		
		/*
		// TODO Auto-generated method stub
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
        
		//获取前月的第一天
		//获取当前日期 
		Calendar cal_1=Calendar.getInstance();
		cal_1.add(Calendar.MONTH, -1);
		//设置为1号,当前日期既为本月第一天 
		cal_1.set(Calendar.DAY_OF_MONTH,1);
		String firstDay = format.format(cal_1.getTime());
		System.out.println("-----1------firstDay:"+firstDay);
		//获取前月的最后一天
		Calendar cale = Calendar.getInstance();
		//设置为1号,当前日期既为本月第一天 
		cale.set(Calendar.DAY_OF_MONTH,0);
		String lastDay = format.format(cale.getTime());
		System.out.println("-----2------lastDay:"+lastDay);
		 
		 
		//获取当前月第一天：
		Calendar c = Calendar.getInstance();    
		c.add(Calendar.MONTH, 0);
		//设置为1号,当前日期既为本月第一天 
		c.set(Calendar.DAY_OF_MONTH,1);
		String first = format.format(c.getTime());
		System.out.println("===============first:"+first);
		 
		//获取当前月最后一天
		Calendar ca = Calendar.getInstance();    
		ca.set(2014, 0, 0);
		System.out.println(ca.getTime().toLocaleString());
		ca.set(Calendar.DAY_OF_MONTH,ca.getActualMaximum(Calendar.DAY_OF_MONTH));  
		String last = format.format(ca.getTime());
		System.out.println("===============last:"+last);
		*/
		
		//测试时间极限问题
		Date date=new Date(2016-1900, 9-1, 20,23,59, 60);
		System.out.println(date.toLocaleString());
		
	}
	
	
	
	
	
	
	
	
}
