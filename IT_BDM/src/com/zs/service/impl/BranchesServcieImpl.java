package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.dom4j.Branch;

import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.entity.ZmBq;
import com.zs.service.BaseService;
import com.zs.service.iBranchesService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class BranchesServcieImpl extends BaseService implements iBranchesService{

	private Logger log=Logger.getLogger(BranchesServcieImpl.class);
	
	public void importExcelData(String fileName, File file,String uNum) throws IOException, NumberFormatException, ParseException {
		try {
			List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
			for (int i = 1; i < list.size(); i++) {
				try {
					XtBranches branches=new XtBranches("b"+NameOfDate.getNum(),transToDate(list.get(i)[0]), transToDate(list.get(i)[1]),
							transToInt(list.get(i)[2]), list.get(i)[3], list.get(i)[4],list.get(i)[5], list.get(i)[6], list.get(i)[7],
							list.get(i)[8],"注册",new Timestamp(new Date().getTime()+i),"有效",uNum);
					save(branches);
				} catch (Exception e) {
					log.error("数据格式错误:请注意填写的数据格式，另外不要留空，数字类型的没有就写0，文本类型的没有可以不写，时间类型的一定要写");
				}
			}
		} catch (Exception e) {
			log.error("文件错误：请确认是否使用了正确的模板");
		}
	}
	
}
