package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.dom4j.Branch;

import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.service.BaseService;
import com.zs.service.iBranchesService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class BranchesServcieImpl extends BaseService implements iBranchesService{

	public void importExcelData(String fileName, File file) throws IOException, NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			System.out.println(list.get(i)[0]);
			XtBranches branches=new XtBranches("b"+NameOfDate.getNum(), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[0]), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[1]),Integer.valueOf(list.get(i)[2]), list.get(i)[3], list.get(i)[4],list.get(i)[5], list.get(i)[6], list.get(i)[7], list.get(i)[8]);
			save(branches);
		}
	}

}
