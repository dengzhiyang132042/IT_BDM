/**
 * 
 */
package com.zs.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * @author 黄光辉
 * @格式 yyyy-MM-dd 字符串类型
 *<br/>传入两个时间，返回这两个时间时间周的头尾
 */
public class WeekDateArea {

	public static List weekdate(String dates,String datee) throws ParseException{
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		Calendar ca = Calendar.getInstance();
		if(dates!=null&&!dates.equals("")){
			ca.setTime(sdf.parse(dates));
		}
		Calendar ca1 = Calendar.getInstance();
		if(datee!=null&&!datee.equals("")){
			ca1.setTime(sdf.parse(datee));
		}
		Calendar cal1 = Calendar.getInstance();
		cal1.clear();
		if(dates!=null&&!dates.equals("")){
			cal1.set(Calendar.YEAR, Integer.parseInt(dates.substring(0,4)));
		}
        cal1.set(Calendar.WEEK_OF_YEAR,ca.get(ca.WEEK_OF_YEAR));
        cal1.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        //获取尾时间
        Calendar cal2 = Calendar.getInstance();
        cal2.clear();
        if(datee!=null&&!datee.equals("")){
        	cal2.set(Calendar.YEAR, Integer.parseInt(datee.substring(0,4)));
        }
        cal2.set(Calendar.WEEK_OF_YEAR,ca1.get(ca1.WEEK_OF_YEAR));
        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
       	List list = new ArrayList<String>();
       	list.add(sdf.format(cal2.getTime()));
       	list.add(sdf.format(cal1.getTime()));
		return list;
	}
}
