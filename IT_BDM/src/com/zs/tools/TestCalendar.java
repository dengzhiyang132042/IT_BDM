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
//		Date date=new Date(2016-1900, 9-1, 20,23,59, 60);
//		System.out.println(date.toLocaleString());
//	//		System.out.println(ca.getTime());
//		Calendar cal2 = Calendar.getInstance();
//        cal2.clear();
//        cal2.set(Calendar.YEAR, 2021);
//        cal2.set(Calendar.WEEK_OF_YEAR,1);
//        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
//        System.out.println(cal2.getTime());
//        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
//        System.out.println(cal2.getTime());
		/*
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
		Calendar ca = Calendar.getInstance();    
        ca.set(Calendar.DAY_OF_MONTH, ca.getActualMaximum(Calendar.DAY_OF_MONTH));  
        String last = format.format(ca.getTime());
        System.out.println("===============last:"+last);
        Calendar ca1 = Calendar.getInstance();
        ca1.set(2016,11, 31);
        ca1.get(ca1.WEEK_OF_YEAR);
        System.out.println(ca1.get(ca1.WEEK_OF_YEAR));
        */
		
		Date date1=new Date(2015-1900, 11-1, 15);
		Date date2=new Date(2016-1900, 11-1, 15);
		System.err.println(date1.toLocaleString());
		System.err.println(date2.toLocaleString());
		long l1=(date2.getTime()-date1.getTime())/(1000*60*60*24);
		System.out.println(l1);
		
		System.out.println(new Date().getTime()/(1000*60*60*24));
		
		/*
		Calendar c1=Calendar.getInstance();
		Calendar c2=Calendar.getInstance();
		
		c1.add(Calendar.DATE, 1);
		
		System.err.println("c1:"+c1.getTime().toLocaleString());
		System.err.println("c2:"+c2.getTime().toLocaleString());
		
		long d=c1.getTimeInMillis()-c2.getTimeInMillis();
		 */
		
	}
	
}
