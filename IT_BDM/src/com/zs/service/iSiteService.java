package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

public interface iSiteService {
	
	/**
	 * 张顺 2016-11-11
	 * <br>从Excel文件中导入数据
	 * @param fileName
	 * @param file
	 * @throws NumberFormatException
	 * @throws ParseException
	 * @throws IOException
	 */
	public void importExcelData(String fileName,File file)throws NumberFormatException, ParseException, IOException;
}
