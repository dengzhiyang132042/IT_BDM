package com.zs.action.oneself;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.Page;

public class TimelineAction extends MyBaseAction{
	IService ser;
	Page page;
	String userid;
	String username;
	String cz;
	Timeline tl;
	List<Timeline> tls;
	
	String result="timeline";
	String result_succ="succ";
	String result_fail="fail";
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
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
	public Timeline getTl() {
		return tl;
	}
	public void setTl(Timeline tl) {
		this.tl = tl;
	}
	public List<Timeline> getTls() {
		return tls;
	}
	public void setTls(List<Timeline> tls) {
		this.tls = tls;
	}
	//------------------------------------
	
	/*2016年8月11日16:30:27
	 * 张顺
	 * */
	public String query() throws UnsupportedEncodingException {
		if (cz!=null && cz.equals("yes")) {
			clearOption();
		}
		//先得到当天开始的时间
		Date date=new Date();
		Timestamp timestamp1=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 0, 0, 0, 0);
		Timestamp timestamp2=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 23, 59, 59, 999);
		if (userid==null) {
			//得到登陆者
			Users user=(Users) getSession().getAttribute("user");
			//查找登陆者今天的时间轴
			tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? order by tlTime desc", new Object[]{user.getUNum(),timestamp1,timestamp2});
			userid=user.getUNum();
			username=user.getUName();
		}else {
			tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? order by tlTime desc", new Object[]{userid,timestamp1,timestamp2});
			Users u2=(Users) ser.get(Users.class, userid);
			username=u2.getUName();
		}
		ser.bringUsers(getRequest());
		return result;
	}
	
	private void clearOption() {
		userid=null;
		cz=null;
		tl=null;
		tls=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
}
