package com.zs.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class TestAction extends MyBaseAction implements IMyBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String str;//测试用的属性
	List<String> sengMail=new ArrayList<String>();
	
	
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public List<String> getSengMail() {
		return sengMail;
	}
	public void setSengMail(List<String> sengMail) {
		this.sengMail = sengMail;
	}
	//-------------------------------------------------
	public String add() throws Exception {
		String mailstr=getRequest().getParameter("mailstr");
		sengMail.add(mailstr);
		return gotoQuery();
	}

	public void clearOptions() {
		// TODO Auto-generated method stub
		
	}

	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		return SUCCESS;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		return null;
	}

	public String update() throws Exception {
		return gotoQuery();
	}

}
