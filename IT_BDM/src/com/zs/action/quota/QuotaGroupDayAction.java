/**
 * 
 */
package com.zs.action.quota;

import java.io.UnsupportedEncodingException;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.QuotaMan;
import com.zs.entity.Users;
import com.zs.entity.custom.QuotaGroupDay;
import com.zs.service.IService;
import com.zs.tools.Page;

public class QuotaGroupDayAction extends MyBaseAction implements IMyBaseAction{
	private String result = "";
	private QuotaGroupDay qgd;
	private List<QuotaGroupDay> qgds;
	private IService ser;
	
	
	
	public void clearOptions() {

	}
	
	public void clearSpace(){
	
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		
		return result;
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		//查找数据
		String hql="select csId from Users";
		
		return result;
	}
	
	public String add() throws Exception {
		
		return gotoQuery();
	}

	public String update() throws Exception {
		
		return gotoQuery();
	}
	
	public String delete() throws Exception {
		
		return gotoQuery();
	}
}
