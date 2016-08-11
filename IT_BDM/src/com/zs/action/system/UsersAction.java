package com.zs.action.system;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.Role;
import com.zs.entity.Users;
import com.zs.entity.XtBranches;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class UsersAction extends MyBaseAction{
	IService ser;
	Users u;
	List<Users> us;
 	
	Page page;
	
	String result_users="users";
	String result_succ="succ";
	String result_fail="fail";
	
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
	public List<Users> getUs() {
		return us;
	}
	public void setUs(List<Users> us) {
		this.us = us;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	//------------------------------------------------
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from Users where UNum  = ?";
			String ss[]={id};
			String hql2="from Users where UNum = '"+id+"'";
			us=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from Users";
			String ss[]={};
			String hql2="from Users";
			us=ser.query(hql, ss, hql2, page, ser);
		}
		//带上角色信息
		for (int i = 0; i < us.size(); i++) {
			Role r=(Role) ser.get(Role.class, us.get(i).getRId());
			us.get(i).setR(r);
		}
		//带上通讯录信息
		ser.receiveStructure(getRequest());
		//带上角色列表
		List<Role> rs=ser.find("from Role", new String[]{});
		getRequest().setAttribute("rs", rs);
		return result_users;
	}
	
	public String delete() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			u=(Users) ser.get(Users.class, id);
			ser.delete(u);
		}
		u=null;
		return result_succ;
	}
	
	public String update() throws Exception {
		if(u!=null && u.getUNum()!=null && !"".equals(u.getUNum().trim())){
			Users users=(Users) ser.get(Users.class, u.getUNum());
			u.setUStartTime(users.getUStartTime());
			ser.update(u);
		}
		getRequest().setAttribute("u", u);
		//如果改的是自己的账号,那么就把session更新下
		Users users=(Users) getSession().getAttribute("user");
		if (users!=null) {
			if (users.getUNum().equals(u.getUNum())) {
				//带上角色信息
				Role role=(Role) ser.get(Role.class, u.getRId());
				u.setR(role);
				getSession().setAttribute("user", u);
			}
		}
		u=null;
		return result_succ;
	}
	
	public String add() throws UnsupportedEncodingException {
		if(u!=null){
			u.setUStartTime(new Timestamp(new Date().getTime()));
			ser.save(u);
		}
		getRequest().setAttribute("u", u);
		u=null;
		return result_succ;
	}	
}
