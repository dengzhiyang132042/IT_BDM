/**
 * 
 */
package com.zs.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.service.BaseService;
import com.zs.service.IService;
import com.zs.service.iXtPdaChangeCountService;

/**
 * @author 黄光辉
 *
 */
public class XtPdaChangeCountServiceImpl extends BaseService implements iXtPdaChangeCountService{

	/* (non-Javadoc)
	 * @see com.zs.service.iXtBqRepairCountService#queryDate(java.lang.String, java.lang.String, java.lang.String)
	 */
	private IService ser;

	public IService getSer() {
		return ser;
	}
	
	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	public List queryDate(String dt, String dates, String datee) {
		List<String> dlist = new ArrayList<String>();
		//获取两个头尾的时间
		String str="from XtPdaChange where CDate!=null";
		String str1="from XtPdaChange where CDate!=null";
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		if(dates!=null&&datee!=null&&!dates.equals("")&&!datee.equals("")){
			//备用
//			if(dt.equals("D")){
//				System.out.println(dates);
//				System.out.println(datee);
//				str=str+" where zmApplyDate <='"+datee+"'";
//				str1=str1+" where zmApplyDate >='"+dates+"'";
//			}
			if(dt.equals("W")){
//				System.out.println(dates);
//				System.out.println(datee);
				//头时间
				Calendar cal1 = Calendar.getInstance();
		        cal1.clear();
		        cal1.set(Calendar.YEAR, Integer.parseInt(dates.substring(0,4)));
		        //此处为了解决html5中使用日期插件和Calendar的不同
		        if(Integer.parseInt(dates.substring(0,4))%5==1){
		        	cal1.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(dates.substring(6))+1);
		        }else{
		        	cal1.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(dates.substring(6)));
		        }
		        cal1.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		        //获取尾时间
		        Calendar cal2 = Calendar.getInstance();
		        cal2.clear();
		        cal2.set(Calendar.YEAR, Integer.parseInt(datee.substring(0,4)));
		        if(Integer.parseInt(dates.substring(0,4))%5==1){
		        	cal2.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(datee.substring(6))+1);
		        }else{
		        	cal2.set(Calendar.WEEK_OF_YEAR,Integer.parseInt(datee.substring(6)));
		        }
		        cal2.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
//		        System.out.println(cal2.getTime());
		        
				str=str+" and CDate <='"+sdf.format(cal2.getTime())+"'";
				str1=str1+" and CDate >='"+sdf.format(cal1.getTime())+"'";
			}
			if(dt.equals("M")){
//				System.out.println(dates);
//				System.out.println(datee);	
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee.substring(0,4))-1900, Integer.parseInt(datee.substring(5)),0);
				str=str+" and CDate <='"+sdf.format(edate)+"'";
				str1=str1+" and CDate >='"+dates+"'";
			}
			if(dt.equals("Y")){
//				System.out.println(dates);
//				System.out.println(datee);
				//获取月的最后一天
				Date edate = new Date(Integer.parseInt(datee)-1900, 12,0);
				str=str+" and CDate <='"+sdf.format(edate)+"'";
				str1=str1+" and CDate >='"+dates+"'";
			}
		}
		str=str+" order by CDate desc";
		str1=str1+" order by CDate asc";
		//用完清空
		dlist.add(str);
		dlist.add(str1);
		str=null;
		str1=null;
		return dlist;
	}
}
