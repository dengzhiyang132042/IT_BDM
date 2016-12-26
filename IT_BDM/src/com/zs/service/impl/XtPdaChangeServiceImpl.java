package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.zs.action.da.DaManagerAction;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Users;
import com.zs.entity.XtBranches;
import com.zs.entity.XtPdaChange;
import com.zs.service.BaseService;
import com.zs.service.iXtPdaChangeService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

public class XtPdaChangeServiceImpl extends BaseService implements iXtPdaChangeService{

	public void importExcelData(String fileName, File file,String unum) throws IOException, NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtPdaChange pdaChange=new XtPdaChange("c"+NameOfDate.getNum(), new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[0]), Integer.valueOf(list.get(i)[1]), list.get(i)[2], list.get(i)[3], list.get(i)[4], list.get(i)[5], list.get(i)[6].replace(",", ""), list.get(i)[7], new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[8]), list.get(i)[9], list.get(i)[10], list.get(i)[11],new Timestamp(new Date().getTime()),list.get(i)[12],"有效",unum);
			save(pdaChange);
		}
	}

	public void outEmail(Users um,XtPdaChange p) {
		DaDemand d  = new DaDemand();
		d.setDId("d"+NameOfDate.getNum());
		d.setDApplicant(p.getCMan());
		d.setDContent("条码变更："+p.getCOldNum()+"-->"+p.getCNewNum());
		d.setDType("系统组");
		d.setDTime(new Timestamp(new Date().getTime()));
		Date date = new Date();
		d.setDTimeExpect(new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 18, 0, 0, 0));
		save(d);
		
		DaPerform pf = new  DaPerform();
		pf.setPId("p"+NameOfDate.getNum());
		pf.setDId(d.getDId());
		pf.setUNum(um.getUNum());
		pf.setPTime(new Timestamp(new Date().getTime()));
		pf.setPState("进行中");
		save(pf);
		if(DaManagerAction.outMailFromAdd(um,d)==false){
			//日后换成邮件错误界面
			System.out.println("邮件发送错误!请手动发送邮件,错误单号"+d.getDId());
		}
	}

}
