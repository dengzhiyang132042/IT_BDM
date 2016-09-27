package com.zs.action.oneself;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.sun.org.apache.xml.internal.security.Init;
import com.zs.action.MyBaseAction;
import com.zs.entity.Role;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.Page;

public class InformationAction extends MyBaseAction{
	IService ser;
	Page page;
	
	Timeline tl;
	List<Timeline> tls;
	List<Map> tlData;//设计的一种用于传到界面的数据结构
	
	String result="information";
	String result_succ="succ";
	String result_fail="fail";
	
	Logger logger=Logger.getLogger(InformationAction.class);
	
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
	public List<Map> getTlData() {
		return tlData;
	}
	public void setTlData(List<Map> tlData) {
		this.tlData = tlData;
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
	
	/*2016年8月12日14:13:04
	 * 张顺
	 * 得到今天还有哪些没有做
	 * */
	public String query() {
		//先得到当天开始的时间
		Date date=new Date();
		Timestamp timestamp1=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 0, 0, 0, 0);
		Timestamp timestamp2=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 23, 59, 59, 999);
		//得到登陆者
		Users user=(Users) getSession().getAttribute("user");
		Role role=user.getR();
		//查找登陆者今天的时间轴
		tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? and tlState!=?", new Object[]{user.getUNum(),timestamp1,timestamp2,"查看"});
		//开始构建数据结构
		if (role!=null && role.getRName().equals("硬件组")) {
			this.tlData=ser.transtion(tls);
		}else if (role!=null && role.getRName().equals("系统组")) {
			this.tlData=ser.transtionXt(tls);
		}else {
			this.tlData=null;
		}
		return result;
	}
	
	
	
	/*2016年8月12日15:31:51
	 * 张顺
	 * 1、安全跳转
	 * 2、更新提醒信息
	 * */
	public String gotoIndex() {
		Date date=new Date();
		Timestamp timestamp1=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 0, 0, 0, 0);
		Timestamp timestamp2=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 23, 59, 59, 999);
		//得到登陆者
		Users user=(Users) getSession().getAttribute("user");
		Role role=user.getR();
		//查找登陆者今天的时间轴
		tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? and tlState!=?", new Object[]{user.getUNum(),timestamp1,timestamp2,"查看"});
		//开始构建数据结构
		if (role!=null && role.getRName().equals("硬件组")) {
			this.tlData=ser.transtion(tls);
		}else if (role!=null && role.getRName().equals("系统组")) {
			this.tlData=ser.transtionXt(tls);
		}else {
			this.tlData=null;
		}
		int suminfo=0;
		if (tlData!=null) {
			for (int i = 0; i < tlData.size(); i++) {
				Map map=tlData.get(i);
				List list=(List) map.get("list");
				if (list.size()==0) {
					suminfo++;
				}
			}
		}
		getSession().setAttribute("suminfo", suminfo);// 提醒数
		
		//第二个提醒
		goToIndexDa(user);
		return SUCCESS;
	}
	
	
	
	/**
	 * 第二个提醒，故障报修系统得到提醒，当有分配给本人的报修时就提醒
	 */
	private void goToIndexDa(Users user) {
		String hql="from DaDemand where DId in (select DId from DaPerform where UNum=? and PState='进行中')";
		List list=ser.find(hql, new String[]{user.getUNum()});
		getSession().setAttribute("dainfo", list.size());// 提醒数
	}
	
	
	
}
