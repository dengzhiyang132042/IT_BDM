package com.zs.action;

import com.zs.entity.Users;
import com.zs.service.IService;

public class LoginAction extends MyBaseAction{
	
	IService ser;
	Users u;
	
	String hint="";
	String result="";
	
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public String getHint() {
		return hint;
	}
	public void setHint(String hint) {
		this.hint = hint;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	public String login() {
		
		
		
		
		return result; 
	}
		
}
