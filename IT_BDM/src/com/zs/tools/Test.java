package com.zs.tools;

import javax.mail.MessagingException;

import com.zs.dao.BaseDaoOfSpring;
import com.zs.entity.FbdComputer;
import com.zs.mail.MailTest;

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
	 	try {
			MailTest.outputMail("1217360619@qq.com", "1217360619@qq.com", "11", "111");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
