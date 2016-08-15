package com.zs.action.section;

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
import com.zs.tools.Page;

public class CompanySectionAction extends MyBaseAction{
	IService ser;
	Page page;
	
	CompanySection cs;
	
	String result="cs";
	String result_add="gotoAdd";
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
		cs=queryFirst();
		JsonConfig jsonConfig = new JsonConfig();  
        jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);  
        JSONObject json = JSONObject.fromObject(cs, jsonConfig);  
		
		getRequest().setAttribute("html",fitting1());
		return result;
	}
	
	public String gotoAdd() throws UnsupportedEncodingException {
		
		getRequest().setAttribute("html",fitting1());
		
		
		return result_add;
	}
	
	
	
	
	
	
	private CompanySection queryFirst() {
		List<CompanySection> css=ser.find("from CompanySection where csLast=? or csLast=?", new Object[]{"null","0"});
		CompanySection cs=null;
		if (css.size()>0) {
			cs=css.get(0);
			cs.setNexts(ser.initCs(cs));
		}
		return cs;
	}
	
	//组装1——查看
	private String fitting1() {
		String str="<ul class='easyui-tree' data-options='animate:true,lines:true'>" +
				"<li>" +
				"<span>"+
				cs.getCsId()+
				"</span>"+tell(cs)+
				"</li>" +
				"</ul>";
		return str;
	}
	
	//组装2——添加
	private String fitting2() {
		String str="<ul class='easyui-tree' data-options='animate:true,lines:true'>" +
				"<li>" +
				"<span>"+
				cs.getCsName()+
				"</span>"+tell(cs)+
				"<span style='display: none;'>"+
				cs.getCsId()+
				"</span>"+
				"</li>" +
				"</ul>";
		return str;
	}
	
	/*组装html
	 * 2016年8月15日17:14:07
	 * 张顺
	 * 因为前台靠无法使用递归，所以不好实现
	 * */
	private String tell(CompanySection cs) {
		String str="<ul>" ;
		for (int i = 0; i < cs.getNexts().size(); i++) {
			str=str+"<li>" +
					"<span>"
					+cs.getNexts().get(i).getCsId()
					+"</span>"
					+tell(cs.getNexts().get(i))
					+"</li>";
		}
		str=str
			+"</ul>";
		return str;
	}	
	
}
