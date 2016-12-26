package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.zs.entity.Users;
import com.zs.entity.XtBqRepair;
import com.zs.service.BaseService;
import com.zs.service.iXtBqRepairService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class XtBqRepairServiceImpl extends BaseService implements iXtBqRepairService{

	public void importExcelData(String fileName, File file,String unum)
			throws NumberFormatException, ParseException, IOException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtBqRepair repair=new XtBqRepair("r"+NameOfDate.getNum(), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[0]), Integer.valueOf(list.get(i)[1]), list.get(i)[2], list.get(i)[3].replace(",", ""), list.get(i)[4], list.get(i)[5], list.get(i)[6], list.get(i)[7],new Timestamp(new Date().getTime()),"维护","有效",unum);
			save(repair);
		}
	}

}
