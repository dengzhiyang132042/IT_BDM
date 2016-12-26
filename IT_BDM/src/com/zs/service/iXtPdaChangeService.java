package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Users;
import com.zs.entity.XtPdaChange;

public interface iXtPdaChangeService {

	public void importExcelData(String fileName, File file,String unum) throws IOException, NumberFormatException, ParseException;
	
	/**
	 * @author 黄光辉
	 * 调用故障报修系统录单功能，并发送邮件
	 * 
	 */
	public void outEmail(Users um,XtPdaChange p);
}
