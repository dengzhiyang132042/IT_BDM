package com.zs.action.oneself;

import java.io.UnsupportedEncodingException;

import com.zs.action.MyBaseAction;
import com.zs.entity.Role;
import com.zs.entity.Users;
import com.zs.service.IService;

public class ResetPassAction extends MyBaseAction{

	private IService ser;
	String result="resetPass";
	String result_info="queryInfo";
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
		user=null;
		return "succ";
	}
	
	/***********************个人信息模块*******************************/
	
	public String queryInfo (){
		u=null;
		Users user = (Users) getSession().getAttribute("user");
		Role r = (Role) ser.get(Role.class, user.getRId());
		user.setR(r);
		return result_info;
	}
	
	public String updateInfo(){
		Users user = (Users) getSession().getAttribute("user");
		user.setUName(u.getUName());
		user.setUMail(u.getUMail());
		ser.update(user);
		return result_info;
	}
	
}
