package com.zs.action.section;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

import org.apache.log4j.Logger;


import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class CompanySectionAction extends MyBaseAction{
	IService ser;
	Page page;
	
	CompanySection cs;
	
	String result="cs";
	String result_add="gotoAdd";
	String result_update="update";
	String result_succ="succ";
	String result_fail="fail";
	
	private Logger logger=Logger.getLogger(CompanySectionAction.class);
	
	public IService getSer() {
		return ser;
	}

	public void setSer(IService ser) {
		this.ser = ser;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public CompanySection getCs() {
		return cs;
	}

	public void setCs(CompanySection cs) {
		this.cs = cs;
	}
	
	//---------------------------------------------
	public String query() throws UnsupportedEncodingException {
		/*
		JsonConfig jsonConfig = new JsonConfig();  
        jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);  
        JSONObject json = JSONObject.fromObject(cs, jsonConfig);  
		*/
		cs=ser.queryFirst();
		getRequest().setAttribute("html",ser.fitting2(cs));
		return result;
	}
	
	
	
	public String gotoAdd() throws UnsupportedEncodingException {
		cs=ser.queryFirst();
		getRequest().setAttribute("html",ser.fitting2(cs));
		return result_add;
	}
	
	public String gotoUpdate() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		if (id!=null && !id.trim().equals("")) {
			cs=(CompanySection) ser.get(CompanySection.class, id);
			CompanySection first=ser.queryFirst();
			getRequest().setAttribute("html",ser.fitting2(first));
		}
		return result_update;
	}
	
	public String update(){
		if (cs!=null && cs.getCsId()!=null && !cs.getCsId().trim().equals("")) {
			ser.update(cs);
		}
		return result_succ;
	}
	
	//只所以起名myDelete，因为delete是保留字
	public String myDelete() throws UnsupportedEncodingException{
		String id=getRequest().getParameter("id");
		if (id!=null && !id.trim().equals("") ) {
			CompanySection csTemp=(CompanySection) ser.get(CompanySection.class, id);
			if (csTemp!=null) {
				ser.delete(csTemp);
			}
		}
		return result_succ;
	}
	
	
	
	public String add() {
		if (cs!=null) {
			cs.setCsId("cs"+NameOfDate.getNum());
			ser.save(cs);
		}
		return result_succ;
	}
	
	/*2016年8月16日13:31:50
	 * 张顺
	 * ajax组装、查看通讯录详情
	 * */
	public String queryInfor() throws IOException {
		String id=getRequest().getParameter("id");
		if (id!=null && !id.trim().equals("")) {
			CompanySection cs=(CompanySection) ser.get(CompanySection.class, id);
			//先找上级
			CompanySection csTemp=(CompanySection)ser.get(CompanySection.class, cs.getCsLast());
			String strTemp="无（该部门为最高部门）";
			if (csTemp!=null) {
				strTemp=csTemp.getCsName();
			}
			String str="<table border='1' style='width:500px;'>" +
					"<tr>" +
					"<td style='width:100px;'>" +
					"编号："+
					"</td>" +
					"<td id='td1'>"+
					cs.getCsId()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"部门名称："+
					"</td>" +
					"<td id='td2'>"+
					cs.getCsName()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"职员名字："+
					"</td>" +
					"<td id='td3'>"+
					cs.getCsMaster()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"工号："+
					"</td>" +
					"<td id='td4'>"+
					cs.getCsNumber()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"职位："+
					"</td>" +
					"<td id='td5'>"+
					cs.getCsPosition()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"私人电话："+
					"</td>" +
					"<td id='td6'>"+
					cs.getCsPhoneP()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"公司电话："+
					"</td>" +
					"<td id='td7'>"+
					cs.getCsPhoneC()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"短号："+
					"</td>" +
					"<td id='td8'>"+
					cs.getCsPhoneS()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"备注："+
					"</td>" +
					"<td id='td9'>"+
					cs.getCsNote()+
					"</td>"+
					"</tr>" +
					"<tr>" +
					"<td>" +
					"上级部门："+
					"</td>" +
					"<td id='td10'>"+
					strTemp +
					"</td>"+
					"</tr>" +
					"<tr>"+
					"<td>"+
					"操作："+
					"</td>"+
					"<td>"+
					"<input onclick=\"update($('#td1').text())\" type='button' value='修改'/>"+
					"<input onclick=\"my_delete($('#td1').text())\"" +
					" type='button' value='删除'/>"+
					"</td>"+
					"</tr>"+
					"</table>";
//			logger.debug(str);
			PrintWriter pw=getResponse().getWriter();
			pw.println(str);
		}
		return null;
	}
	
	
}
