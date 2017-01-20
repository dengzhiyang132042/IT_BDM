package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.entity.Users;
import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.service.BaseService;
import com.zs.service.iSiteService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class SiteServiceImpl extends BaseService implements iSiteService{

	private Logger log=Logger.getLogger(SiteServiceImpl.class);
	
	public void importExcelData(String fileName, File file,String uNum) throws NumberFormatException, ParseException, IOException {
		try {
			List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
			for (int i = 1; i < list.size(); i++) {
				try {
					XtSite site=new XtSite("s"+NameOfDate.getNum(), list.get(i)[0].toString(), list.get(i)[1].toString(),
							transToDate(list.get(i)[2].toString()),transToDate(list.get(i)[3].toString()),
							transToInt(list.get(i)[4]),list.get(i)[5].toString(), list.get(i)[6].toString(), 
							list.get(i)[7].toString(), list.get(i)[8].toString(),list.get(i)[9].toString(),
							new Timestamp(new Date().getTime()+i),"有效",uNum);
					save(site);
				} catch (Exception e) {
					log.error("数据格式错误:请注意填写的数据格式，另外不要留空，数字类型的没有就写0，文本类型的没有可以不写，时间类型的一定要写");
				}
			}
		} catch (Exception e) {
			log.error("文件错误：请确认是否使用了正确的模板");
		}
	}

	
}
