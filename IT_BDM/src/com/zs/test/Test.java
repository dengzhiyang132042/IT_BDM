package com.zs.test;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import com.zs.entity.XtSiteCount;

public class Test {

	/**测试
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		Class<?> demo=null;
        try{
            demo=Class.forName("com.zs.entity.FbdComputer");
        }catch (Exception e) {
            e.printStackTrace();
        }
        FbdComputer com=null;
        try {
            com=(FbdComputer)demo.newInstance();
        } catch (InstantiationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        com.setCCpu("asdadadadsda");
        System.out.println(com.getCCpu()+"  "+com.getClass().getSimpleName());
		*/
		/*
		 * 反射测试成功
		 * */
		/*
		 * 2016年7月28日09:36:22
		 * 张顺
		 * 四位随机数
		System.out.println( (int)(Math.random()*9000+1000));
		*/
		//System.out.println(new NameOfDate().getNum());
//		new BaseDaoOfSpring().find("from SectionQubu where quId = ?", new String[]{"qb281342355373349"});\
		/*
	 	try {
			MailTest.outputMail("1217360619@qq.com", "1217360619@qq.com", "11", "111");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		*/
		
//		System.out.println(new Date().toLocaleString());
//		TestExcel t = new TestExcel();
//		Object[] obj ={"姓名","年龄","序号"};
//		Object[][] test = new Object[5][3];
//		for(int z= 0 ;z<5;z++){
//			for(int k = 0 ; k < 3 ; k++){
//				test[z][k] = "测试"+z+""+k;
//			}
//		}
//		try {
//			t.PoiExcel(obj,test);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		/*
		Calendar ca = t.getWeekFirst(2016, 45);
		System.out.println(ca.getTime());
		*/
		try {
			String str="你好";
			System.out.println(str.getBytes("utf-8").length);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		
	}
}
