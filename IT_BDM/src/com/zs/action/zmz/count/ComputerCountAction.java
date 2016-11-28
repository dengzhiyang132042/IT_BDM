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
import com.zs.entity.custom.ZmComputerCount;
import com.zs.entity.custom.ZmPrintCount;
import com.zs.entity.custom.ZmVpnCount;
import com.zs.service.IService;
import com.zs.service.iVpnService;
import com.zs.service.iXtZmNumberService;
import com.zs.tools.ExcelExport;
import com.zs.tools.Page;

public class ComputerCountAction extends MyBaseAction implements IMyBaseAction{

	private IService ser;
	private Page page;
	private List<ZmComputerCount> counts;
	
	String result="computerCount";
	String result_succ="succ";
	String result_fail="fail";
	

	Logger logger=Logger.getLogger(ComputerCountAction.class);
	
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
	public List<ZmComputerCount> getCounts() {
		return counts;
	}
	public void setCounts(List<ZmComputerCount> counts) {
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
			List list = ser.find("select CSection from ZmComputer group by CSection", null);
			counts=new ArrayList<ZmComputerCount>();
			for (int i = 0; i < list.size(); i++) {
				List list2 = ser.find("from ZmComputer where CSection = ?",new Object[]{list.get(i).toString()});
//				System.out.println(list.get(i).toString());
//				System.out.println(list2.size());
				ZmComputerCount ccount = new ZmComputerCount();
				if(list2.size()!=0){
					ccount.setSection(list.get(i).toString());
					ccount.setCount(list2.size());
					counts.add(ccount);
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
	public String exportExc() throws Exception{
		String filePath=getRequest().getRealPath("/")+"/files/export/zmz/管理电脑统计.xls";
		Object[] obj ={"序号","部门","电脑数量"};
		Object objtmp[][]=new Object[counts.size()][3];
		for (int i = 0; i < objtmp.length; i++) {
			objtmp[i][0]=i+1;
			objtmp[i][1]=counts.get(i).getSection();
			objtmp[i][2]=counts.get(i).getCount();
		}
		
		ExcelExport.OutExcel(obj, objtmp, filePath);
//		getResponse().sendRedirect(Constant.WEB_URL+"files/export/xtz/zmDate.xls");
//		return result;
		return null;
	}
	
	
}
