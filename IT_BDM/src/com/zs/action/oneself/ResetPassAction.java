package com.zs.action.oneself;

import java.io.UnsupportedEncodingException;

import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.service.IService;

public class ResetPassAction extends MyBaseAction{

	private IService ser;
	String result="resetPass";
	String succ="succ";
	private Users u;
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}

	
	public String query(){
		u=(Users) getSession().getAttribute("user");
		return result;
	}
	
	public String passAffirm() throws UnsupportedEncodingException{
		String oldPass = getRequest().getParameter("oldPass");
		Users user = (Users) getSession().getAttribute("user");
		if(!user.getUPass().equals(oldPass)){
			sendObjectJson("{text:'*密码错误！'}", ser);
		}
		return null;
	}
	public String reset() throws UnsupportedEncodingException{
		Users user = (Users) getSession().getAttribute("user");
		String newPass = getRequest().getParameter("newPass");
		user.setUPass(newPass);
		ser.update(user);
		return succ;
	}
}
