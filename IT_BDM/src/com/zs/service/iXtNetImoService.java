/**
 * 
 */
package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

/**
 * @author 黄光辉
 *
 */
public interface iXtNetImoService {
	public void importExcelData(String fileName, File file,String unum) throws IOException, NumberFormatException, ParseException;
}
