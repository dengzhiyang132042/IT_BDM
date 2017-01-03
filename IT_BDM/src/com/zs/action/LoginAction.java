package com.zs.action;

import java.io.IOException;
import java.util.List;

import com.zs.entity.Permission;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.Users;
import com.zs.service.IService;

public class LoginAction extends MyBaseAction{
	
	IService ser;
	Users u;
	
	String hint="";
	String result_login="login";
	String result_succ="succ";
	String result_fail="fail";
	
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
	
	public String login() throws IOException {
		if (u!=null) {
			Users user=(Users) ser.get(Users.class, u.getUNum());
			if (user==null) {
				hint="用户不存在";
				return result_login;
			}else if (user.getUPass().equals(u.getUPass())) {
				hint="登录成功";
				Role r=(Role) ser.get(Role.class, user.getRId());
				List<Permission> ps=ser.find("from Permission where PId in(select PId from RolePermission where RId=?)", new String[]{r.getRId()});
				r.setPs(ps);
				user.setR(r);
				getSession().setAttribute("user", user);
				getResponse().sendRedirect("safe.jsp");
				//存主题
				getSession().setAttribute("theme", "bootstrap");
				return SUCCESS;
			}else {
				hint="密码错误";
				return result_login;
			}
		}else {
			return result_fail; 
		}
	}
	
	public String logout() {
		hint="";
		getSession().removeAttribute("user");
		return result_login;
	}
		
}
