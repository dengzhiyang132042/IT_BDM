/**
 * 
 */
package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.zs.entity.Users;
import com.zs.entity.XtBqq;
import com.zs.entity.XtPdaChange;
import com.zs.service.BaseService;
import com.zs.service.iXtBqqService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

/**
 * @author 黄光辉
 *
 */
public class XtBqqServiceImpl extends BaseService implements iXtBqqService{

	public void importExcelData(String fileName, File file,String unum) throws IOException,
			NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtBqq b=new XtBqq("b"+NameOfDate.getNum(),list.get(i)[0] , list.get(i)[1], list.get(i)[2], list.get(i)[3], list.get(i)[4],list.get(i)[5], new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[6]), list.get(i)[7], new Timestamp(new Date().getTime()+i), list.get(i)[8], "有效", unum);
			save(b);
		}
	}

	
}
