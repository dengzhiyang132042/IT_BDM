package com.zs.service.impl;

import java.io.File;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.entity.ZmPrinter;
import com.zs.service.BaseService;
import com.zs.service.iDataImportService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class ZmComputerServiceImpl extends BaseService implements iDataImportService{

	private Logger log=Logger.getLogger(ZmComputerServiceImpl.class);
	
	public void importExcelData(String fileName, File file) {
		try {
			List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
			for (int i = 2; i < list.size(); i++) {
				try {
					ZmPrinter printer=new ZmPrinter("p"+NameOfDate.getNum(), list.get(i)[0], list.get(i)[1], null, list.get(i)[2], list.get(i)[3], list.get(i)[4], list.get(i)[5], list.get(i)[6], list.get(i)[7], list.get(i)[8], list.get(i)[9], list.get(i)[10], list.get(i)[11], transToDate(list.get(i)[12]), transToDate(list.get(i)[12]));
					save(printer);
				} catch (Exception e) {
					log.error("数据格式错误:请注意填写的数据格式，另外不要留空，数字类型的没有就写0，文本类型的没有可以不写，时间类型的一定要写");
				}
			}
		} catch (Exception e) {
			log.error("文件错误：请确认是否使用了正确的模板");
		}
	}
 
}
