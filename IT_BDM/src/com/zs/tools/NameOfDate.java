package com.zs.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NameOfDate {
	public String getDir() {
		return new SimpleDateFormat("yyyy-MM").format(new Date());
	}
	public static String getFileName() {
		return new SimpleDateFormat("ddHHmmssSSS").format(new Date());
	}
	
	public static String getNum() {
		return getFileName()+(int)(Math.random()*9000+1000);
	}
}
