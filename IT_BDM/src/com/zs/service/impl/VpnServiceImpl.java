package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.entity.XtBranches;
import com.zs.entity.ZmVpn;
import com.zs.service.BaseService;
import com.zs.service.iDataImportService;
import com.zs.service.iVpnService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class VpnServiceImpl extends BaseService implements iVpnService,iDataImportService{
	
	private Logger log=Logger.getLogger(VpnServiceImpl.class);

	public void importExcelData(String fileName, File file,String unum){
		try {
			List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
			for (int i = 1; i < list.size(); i++) {
				try {
					ZmVpn vpn=new ZmVpn("v"+NameOfDate.getNum(), list.get(i)[0], list.get(i)[1], list.get(i)[2], list.get(i)[3], list.get(i)[4], list.get(i)[5], list.get(i)[6], "",list.get(i)[8],transToDate(list.get(i)[7]),list.get(i)[9],new Timestamp(new Date().getTime()),list.get(i)[10],"有效",unum);
					save(vpn);
				} catch (Exception e) {
					log.error("数据格式错误:请注意填写的数据格式，另外不要留空，数字类型的没有就写0，文本类型的没有可以不写，时间类型的一定要写");
				}
			}
		} catch (Exception e) {
			log.error("文件错误：请确认是否使用了正确的模板");
		}
	}
	
	
}
