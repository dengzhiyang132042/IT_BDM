package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.XtZmNumber;


public interface iXtZmNumberService{
	
	
	public List initXtZmBumberService(List<XtZmNumber> list);

	
	/**
	 * 张顺 2016-11-17
	 * 数据导入
	 * @param fileName
	 * @param file
	 * @throws IOException
	 * @throws NumberFormatException
	 * @throws ParseException
	 */
	public void importExcelData(String fileName, File file,String uNum) throws IOException, NumberFormatException, ParseException;
}
