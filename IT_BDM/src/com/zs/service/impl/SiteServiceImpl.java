package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zs.entity.Users;
import com.zs.entity.XtSite;
import com.zs.service.BaseService;
import com.zs.service.iSiteService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class SiteServiceImpl extends BaseService implements iSiteService{

	public void importExcelData(String fileName, File file) throws NumberFormatException, ParseException, IOException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtSite site=new XtSite("s"+NameOfDate.getNum(), list.get(i)[0].toString(), list.get(i)[1].toString(), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[2].toString()), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[3].toString()), Integer.valueOf(list.get(i)[4]), list.get(i)[5].toString(), list.get(i)[6].toString(), list.get(i)[7].toString(), list.get(i)[8].toString());
			save(site);
		}
	}

	
}
