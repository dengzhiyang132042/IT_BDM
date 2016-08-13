package com.zs.action.oneself;

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
	Timeline tl;
	List<Timeline> tls;
	
	String result="timeline";
	String result_succ="succ";
	String result_fail="fail";
	
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
	public String query() {
		//先得到当天开始的时间
		Date date=new Date();
		Timestamp timestamp1=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 0, 0, 0, 0);
		Timestamp timestamp2=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 23, 59, 59, 999);
		//得到登陆者
		Users user=(Users) getSession().getAttribute("user");
		//查找登陆者今天的时间轴
		tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<?", new Object[]{user.getUNum(),timestamp1,timestamp2});
		return result;
	}
	
}
