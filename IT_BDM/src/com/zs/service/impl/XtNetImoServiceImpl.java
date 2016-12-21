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

import com.zs.entity.ChildNum;
import com.zs.entity.Users;
import com.zs.entity.XtBqq;
import com.zs.entity.XtNetImo;
import com.zs.entity.XtPdaChange;
import com.zs.service.BaseService;
import com.zs.service.iXtBqqService;
import com.zs.service.iXtNetImoService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;

/**
 * @author 黄光辉
 *
 */
public class XtNetImoServiceImpl extends BaseService implements iXtNetImoService{

	public void importExcelData(String fileName, File file,String unum) throws IOException,
			NumberFormatException, ParseException {
		List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
		for (int i = 1; i < list.size(); i++) {
			XtNetImo b=new XtNetImo("i"+NameOfDate.getNum(),list.get(i)[0] , list.get(i)[1], list.get(i)[2], list.get(i)[3], list.get(i)[4], list.get(i)[5], list.get(i)[7],new SimpleDateFormat("yyyy-MM-dd").parse(list.get(i)[8]),new Timestamp(new Date().getTime()+i),list.get(i)[9], "有效", unum);
			save(b);
			if(list.get(i)[6]!=null&&!list.get(i)[6].equals("")){
				String [] ls = new String[2];
				ls=list.get(i)[6].split("~");
				String childNumStart = ls[0];
				String childNumEnd = ls[1];
				if(childNumStart!=null&&!childNumStart.equals("")){
					ChildNum cn = new ChildNum();
					cn.setNId(NameOfDate.getNum());
					cn.setNNum(b.getIAccount());
					String [] ss = new String [2];
					ss = b.getIAccount().split("@");
					String cs1 = ss[0]+ childNumStart +"@" +ss[1];
					cn.setNChildNum(cs1);
					save(cn);
					cn=null;
					if(childNumEnd!=null&&!childNumEnd.equals("")&&!childNumEnd.equals(childNumStart)){
						int childEnd = Integer.parseInt(childNumEnd);
						int childStart = Integer.parseInt(childNumStart);
						for(int j=1; j<=childEnd-childStart;j++){
							ChildNum icn = new ChildNum();
							icn.setNId(NameOfDate.getNum());
							icn.setNNum(b.getIAccount());
							String cs  = ss[0]+ "0" + (childStart+j)  +"@" +ss[1]; 
							icn.setNChildNum(cs);
							save(icn);
							icn=null;
						}
					}
				}
			}
			
		}
	}

	
}
