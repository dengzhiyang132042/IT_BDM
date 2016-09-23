package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.Page;

public class DaCountZyAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	
	
	List<DaCount> counts;
	
	String filtrate;
	
	String result="countZy";
	String result_succ="succ";
	String result_fail="fail";
	
	Logger logger=Logger.getLogger(DaCountZyAction.class);
//----------------------------------------------------	
	
	public IService getSer() {
		return ser;
	}
	public String getFiltrate() {
		return filtrate;
	}
	public void setFiltrate(String filtrate) {
		this.filtrate = filtrate;
	}
	public List<DaCount> getCounts() {
		return counts;
	}
	public void setCounts(List<DaCount> counts) {
		this.counts = counts;
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
//----------------------------------------------------
	public void clearOptions() {
		filtrate=null;
	}
	private void clearSpace() {
		if (filtrate!=null && !filtrate.equals("")) {
			filtrate=filtrate.trim();
		}else {
			filtrate="D";
		}
	}
	
	
	/**
	 * 组装count
	 */
	private void initCount(Date dateStart,Date dateEnd,List counts,Users u) {
		//组装一个DaCount
		DaCount count=new DaCount();
		count.setsTime(new Timestamp(dateStart.getTime()));
		count.seteTime(new Timestamp(dateEnd.getTime()));
		//获取在该时间范围内故障报修总量
		List list2=ser.find("from DaDemand where DId in (select DId from DaPerform where PState!= '转发' and UNum=?) and DTime>=? and DTime<?", new Object[]{u.getUNum(),count.getsTime(),count.geteTime()});
		if (list2.size()!=0) {//如果为0就不要了
			count.setDaAll(list2.size());
			//获取在该时间范围内故障报修完成的量
			List list3=ser.find("from DaDemand where DId in (select DId from DaPerform where PState = '已完成' and UNum=?) and DTime>=? and DTime<?",new Object[]{u.getUNum(),count.getsTime(),count.geteTime()});
			count.setDaSuc(list3.size());
			//计算完成率
			if (list2.size()==0) {
				count.setRatioSuc(0);
			}else {
				double ratio=(double)list3.size()/(double)list2.size()*100;
				count.setRatioSuc((int)ratio);
			}
			//设置DemPer
			List list4=ser.initDemPers(list2);
			count.setDemPer(list4);
			counts.add(count);
		}
	}
	
	/**
	 * 组装counts
	 * @param counts
	 * @param dt
	 * @throws ParseException
	 */
	private void initCounts(List<DaCount> counts,String dt) throws ParseException {
		//获取两个头尾的时间
		DaDemand d1 = null,d2=null;
		String str="from DaDemand order by DTime desc";
		List list=ser.query(str, null, str, new Page(1, 0, 1), ser);
		if (list.size()>0) {
			d1=(DaDemand) list.get(0);//尾巴
		}
		str="from DaDemand order by DTime asc";
		list=ser.query(str, null, str, new Page(1, 0, 1), ser);
		if (list.size()>0) {
			d2=(DaDemand) list.get(0);//头
		}
		//获取用户列表
		List<Users> users=ser.find("from Users",null);
		for (int i = 0; i < users.size(); i++) {
			Users u=users.get(i);
			//查找需求表，条件是最后执行人是u
			if (dt.equals("D")) {
				//获取相差天数
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date1=sdf.parse(d1.getDTime().toLocaleString());
				Date date2=sdf.parse(d2.getDTime().toLocaleString());
				long days=(date1.getTime()-date2.getTime())/(1000*3600*24);
				//从第一天开始循环组装数据封装
				for (int k = 0; k <=days; k++) {
					Date dateStart=new Date(d2.getDTime().getYear(), d2.getDTime().getMonth(), d2.getDTime().getDate()+k,0,0,0);
					Date dateEnd=new Date(d2.getDTime().getYear(), d2.getDTime().getMonth(), d2.getDTime().getDate()+k,23, 59, 59);
					initCount(dateStart, dateEnd, counts,u);
				}				
			}else if (dt.equals("M")) {
				
			}else if (dt.equals("Y")) {
				
			}
		}
	}
	
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions(); 
		}
		clearSpace();
		counts=new ArrayList<DaCount>();
		if(id!=null){
			/*
			由于是统计模块所以不需要按编号查询功能，但为了兼容，故保留，只不过其代码为空而已。
			*/
		}else {
			try {
				initCounts(counts,filtrate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		JSONArray json=JSONArray.fromObject(counts);
		getRequest().setAttribute("json", json);
		return result;
	}
	
	
	public String gotoQuery() throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		return result;
	}
	
	
	public String add() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public String update() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

}
