package com.zs.test;

import java.lang.reflect.Field;

import com.zs.entity.DaCount;

public class TestClass {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DaCount count=new DaCount();
		count.setDaAll(1001);
		try {
			Class c=count.getClass();
			Field daAll = c.getDeclaredField("daAll");
			daAll.setAccessible(true);
			System.out.println(daAll.get(count));
			
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
