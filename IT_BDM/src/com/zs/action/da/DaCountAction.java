package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.service.IService;
import com.zs.tools.Page;

public class DaCountAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	Page page;
	
	
	List<DaCount> counts;
	
	String filtrate;
	
	String result="count";
	String result_succ="succ";
	String result_fail="fail";
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
		// TODO Auto-generated method stub
		if (filtrate!=null) {
			filtrate=filtrate.trim();
			if (filtrate.equals("")) {
				filtrate="D";
			}
		}
	}
	private void clearSpace() {
		filtrate=null;
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
		
		
		if(id!=null){
			String hql="from DaDemand where DId like '%"+id+"%'";
			hql=hql+" order by DTime desc";
			List dems=ser.query(hql, null, hql, page, ser);
			initDemPers(dems);
		}else {
			if (filtrate.equals("D")) {//日
				
				
				//获取两个头尾的时间
				DaDemand d1,d2;
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
				//获取相差天数
				long days=(d1.getDTime().getTime()-d2.getDTime().getTime())/(1000*3600*24);
				//从第一天开始循环组装数据封装
				for (int i = 0; i < days; i++) {
					Date date=new Date(d2.getDTime().getYear(), d2.getDTime().getMonth(), d2.getDTime().getDay());
					//组装一个DaCount
					DaCount count=new DaCount();
					count.setsTime(new Timestamp(date.getYear(), date.getMonth(), date.getDay(), 0, 0, 0, 0));
					count.seteTime(new Timestamp(date.getYear(), date.getMonth(), date.getDay(), 23, 59, 59, 999));
					//获取在该时间范围内故障报修总量
					List list2=ser.find("from DaDemand where DTime>=? and DTime<=?", new Timestamp[]{count.getsTime(),count.geteTime()});
					count.setDaAll(list2.size());
					//获取在该时间范围内故障报修完成的量
					List list3=ser.find("from DaDemand where DTime>=? and DTime<=? and state", new Timestamp[]{count.getsTime(),count.geteTime()});
					count.setDaSuc(list3.size());
					//写一个子查询来得到已完成的需求表集合，。。。
					//2016年9月20日17:36:32
					
					
					
				}
				
				
				
				
				
				String hql="from DaDemand order by DTime desc";
				String ss[]={};
				String hql2="from DaDemand order by DTime desc";
				List dems=ser.query(hql, ss, hql2, page, ser);
				initDemPers(dems);
				
			}else if (filtrate.equals("M")) {//月
				
			}else if (filtrate.equals("Y")) {//年
				
			}
			
		}
		ser.bringUsers(getRequest());
		
		
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
