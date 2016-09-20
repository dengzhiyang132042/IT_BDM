package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.entity.DaDemPer;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Users;
import com.zs.entity.ZmVpn;

import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class DaHandleAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	List<DaDemPer> demper;
	DaPerform p;
	DaDemand d;
	
	Page page;
	
	String result="handle";
	String result_succ="succ";
	String result_fail="fail";
	
	private Logger logger=Logger.getLogger(DaHandleAction.class);


	public IService getSer() {
		return ser;
	}

	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	public DaPerform getP() {
		return p;
	}

	public void setP(DaPerform p) {
		this.p = p;
	}

	public DaDemand getD() {
		return d;
	}

	public void setD(DaDemand d) {
		this.d = d;
	}

	public List<DaDemPer> getDemper() {
		return demper;
	}

	public void setDemper(List<DaDemPer> demper) {
		this.demper = demper;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public void clearOptions() {
		// TODO Auto-generated method stub
		
	}
	
	
	public String queryOfFenye() throws UnsupportedEncodingException {
		String id = getRequest().getParameter("id");
		String cz = getRequest().getParameter("cz");
		
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOptions();
		}
		if (p==null) {
			p=new DaPerform("");
		}
		if(id!=null){
			String hql =" from DaDemand where DId like '%"+id+"%'";
			
			hql=hql+" order by DTime desc";
			List dems=ser.query(hql, null, hql, page, ser);
			initDemPers(dems);
		}else {
			String hql="from DaDemand order by DTime desc";
			String ss[]={};
			String hql2="from DaDemand order by DTime desc";
			List dems=ser.query(hql, ss, hql2, page, ser);
			initDemPers(dems);
		}
		ser.bringUsers(getRequest());
		JSONArray json=JSONArray.fromObject(demper);
		getRequest().setAttribute("json", json);
		return result;
	}
	
	private void initDemPers(List dems) {
		demper=new ArrayList<DaDemPer>();
		for (int i = 0; i < dems.size(); i++) {
			DaDemand d=(DaDemand) dems.get(i);
			d.setDTimeString(d.getDTime().toString());
			List pers=ser.find("from DaPerform where DId = ? order by PTime desc", new Object[]{d.getDId()});
			for (int j = 0; j < pers.size(); j++) {
				DaPerform perform=(DaPerform) pers.get(j);
				perform.setPTimeString(perform.getPTime().toString());
				if (perform.getUNum()!=null && !"".equals(perform.getUNum())) {
					Users u1=(Users) ser.get(Users.class, perform.getUNum());
					perform.setUName(u1.getUName());
				}
				if (perform.getUNumNext()!=null && !"".equals(perform.getUNumNext())) {
					Users u2=(Users) ser.get(Users.class, perform.getUNumNext());
					perform.setUNameNext(u2.getUName());
				}
			}
			demper.add(new DaDemPer(d, pers));
		}
	}
	
	public String add() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		clearOptions();
		String hql="from DaDemand order by DTime desc";
		String ss[]={};
		String hql2="from DaDemand order by DTime desc";
		List dems=ser.query(hql, ss, hql2, page, ser);
		initDemPers(dems);
		ser.bringUsers(getRequest());
		JSONArray json=JSONArray.fromObject(demper);
		getRequest().setAttribute("json", json);
		return result;
	}
	public String updateState() throws Exception{
		if (d!=null && !"".equals(d.getDId())) {
			d=(DaDemand) ser.get(DaDemand.class, d.getDId());
			logger.debug(d);
			//找到当前执行表数据
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if (templi.size()>0) {
				DaPerform tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setPState("完成");
				ser.update(tmpper);
				
//				DaPerform daPerform=new DaPerform();
//				daPerform.setPId("p"+NameOfDate.getNum());
//				daPerform.setDId(d.getDId());
//				daPerform.setUNum(p.getUNumNext());
//				Date date1=new Date();
//				Date date2=new Date(date1.getYear(), date1.getMonth(), date1.getDate(), date1.getHours(), date1.getMinutes(), date1.getSeconds()+1);
//				daPerform.setPTime(new Timestamp(date2.getTime()));
//				daPerform.setPState("完成");
//				ser.save(daPerform);
				
			}
		}
		
		return gotoQuery();
	}

	public String update() throws Exception {
		if (d!=null && !"".equals(d.getDId())) {
			d=(DaDemand) ser.get(DaDemand.class, d.getDId());
			//找到当前执行表数据
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if (templi.size()>0) {
				DaPerform tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setUNumNext(p.getUNumNext());
				tmpper.setPState("转发");
				ser.update(tmpper);
				
				DaPerform daPerform=new DaPerform();
				daPerform.setPId("p"+NameOfDate.getNum());
				daPerform.setDId(d.getDId());
				daPerform.setUNum(p.getUNumNext());
				Date date1=new Date();
				Date date2=new Date(date1.getYear(), date1.getMonth(), date1.getDate(), date1.getHours(), date1.getMinutes(), date1.getSeconds()+1);
				daPerform.setPTime(new Timestamp(date2.getTime()));
				daPerform.setPState("进行中");
				ser.save(daPerform);
				
			}
		}
		
		return gotoQuery();
	}

}
