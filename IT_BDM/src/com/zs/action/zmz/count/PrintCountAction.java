package com.zs.action.zmz.count;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.entity.XtZmNumber;
import com.zs.entity.XtZmNumberCount;
import com.zs.entity.ZmPrinter;
import com.zs.entity.ZmVpn;
import com.zs.entity.custom.ZmPrintCount;
import com.zs.entity.custom.ZmVpnCount;
import com.zs.service.IService;
import com.zs.service.iVpnService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.Page;

public class PrintCountAction extends MyBaseAction implements IMyBaseAction{

	private IService ser;
	private Page page;
	private List<ZmPrintCount> counts;
	
	String result="printCount";
	String result_succ="succ";
	String result_fail="fail";
	

	Logger logger=Logger.getLogger(PrintCountAction.class);
	
	//--------------------------------------------------------
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
	public List<ZmPrintCount> getCounts() {
		return counts;
	}
	public void setCounts(List<ZmPrintCount> counts) {
		this.counts = counts;
	}
	//----------------------------------------------------
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
		if(id!=null){
			/*
			由于是统计模块所以不需要按编号查询功能，但为了兼容，故保留，只不过其代码为空而已。
			*/
		}else {
			List list = ser.find("select PAddress from ZmPrinter group by PAddress", null);
			counts=new ArrayList<ZmPrintCount>();
			for (int i = 0; i < list.size(); i++) {
				List list2 = ser.find("from ZmPrinter where PAddress = ?",new Object[]{list.get(i).toString()});
//				System.out.println(list.get(i).toString());
//				System.out.println(list2.size());
				ZmPrintCount pcount = new ZmPrintCount();
				if(list2.size()!=0){
					pcount.setPosition(list.get(i).toString());
					pcount.setCount(list2.size());
					counts.add(pcount);
				}
			}
		}
		JSONArray json=JSONArray.fromObject(counts);
		getRequest().setAttribute("json", json);
		return result;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		return null;
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
	/* (non-Javadoc)
	 * @see com.zs.action.IMyBaseAction#clearOptions()
	 */
	public void clearOptions() {
		// TODO Auto-generated method stub
		
	}

	
	
}
