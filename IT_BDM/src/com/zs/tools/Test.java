package com.zs.tools;

import com.zs.entity.FbdComputer;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
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
	}

	/*
	 * 反射测试成功
	 * */
}
