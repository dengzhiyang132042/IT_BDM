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
import com.zs.entity.ZmNetCall;
import com.zs.service.BaseService;
import com.zs.service.iDataImportNewService;
import com.zs.service.iDataImportService;
import com.zs.service.iXtBqqService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

/**
 * @author 黄光辉
 *
 */
public class ZmNetCallServiceImpl extends BaseService implements iDataImportNewService{

	public void importExcelData(String fileName, File file,String unum) throws IOException,
			NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			ZmNetCall c=new ZmNetCall("c"+NameOfDate.getNum(),list.get(i)[0] , new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[1]), list.get(i)[2], list.get(i)[3], list.get(i)[4],list.get(i)[5],list.get(i)[6],list.get(i)[7],list.get(i)[8],list.get(i)[9],list.get(i)[10],list.get(i)[11],list.get(i)[12],list.get(i)[13],list.get(i)[14],list.get(i)[15],Integer.parseInt(list.get(i)[16]),list.get(i)[17],Integer.parseInt(list.get(i)[18]),list.get(i)[19],list.get(i)[20] , new Timestamp(new Date().getTime()+i), list.get(i)[21], "有效", unum);
			save(c);
		}
	}

	
}
