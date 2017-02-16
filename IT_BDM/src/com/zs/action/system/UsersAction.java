package com.zs.action.system;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection;
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
 	String cz;
 	String id;
 	
	Page page;
	
	String result_users="users";
	String result_succ="succ";
	String result_fail="fail";
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	private void clearSpace() {
		id=id==null?null:id.trim();
		cz=cz==null?null:cz.trim();
	}
	
	private void clearOptions() {
		id=null;
		cz=null;
		u=null;
		us=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		String hql="from Users where 1=1 ";
		if (id!=null)
			hql=hql+"and UNum like '%"+id+"%' ";
		us=ser.query(hql, null, hql, page, ser);
		
		
		//带上角色信息
		for (int i = 0; i < us.size(); i++) {
			Role r=(Role) ser.get(Role.class, us.get(i).getRId());
			us.get(i).setR(r);
			CompanySection coms = (CompanySection) ser.get(CompanySection.class, us.get(i).getCsId());
			if(coms!=null){
				us.get(i).setCsGroup(coms.getCsName());
			}
		}
		//带上通讯录信息
		CompanySection cs=ser.queryFirst();
		getRequest().setAttribute("html",ser.fitting2(cs));
		//带上角色列表
		List<Role> rs=ser.find("from Role", new String[]{});
		getRequest().setAttribute("rs", rs);
		return result_users;
	}
	
	public String delete() throws Exception {
		if (id!=null) {
			u=(Users) ser.get(Users.class, id);
			ser.delete(u);
		}
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
			u.setUState("在职");
			ser.save(u);
		}
		getRequest().setAttribute("u", u);
		u=null;
		return result_succ;
	}	
}
