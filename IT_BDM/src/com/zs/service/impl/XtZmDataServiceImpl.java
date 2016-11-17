package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.zs.entity.XtBranches;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.service.BaseService;
import com.zs.service.iXtZmDataService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class XtZmDataServiceImpl extends BaseService implements iXtZmDataService{
	
	

	public void importExcelData(String fileName, File file) throws IOException,
			NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtZmData data=new XtZmData("d"+NameOfDate.getNum(), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[0]), Integer.valueOf(list.get(i)[1]),Integer.valueOf(list.get(i)[2]), Integer.valueOf(list.get(i)[3]), Integer.valueOf(list.get(i)[4]), Integer.valueOf(list.get(i)[5]), Integer.valueOf(list.get(i)[6]), Integer.valueOf(list.get(i)[7]), list.get(i)[8]);
			save(data);
		}
	}


}
