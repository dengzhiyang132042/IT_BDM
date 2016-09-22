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

import com.zs.mail.MailTest;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

import freemarker.template.SimpleDate;

public class DaHandleAction extends MyBaseAction implements IMyBaseAction{

	IService ser;
	List<DaDemPer> demper;
	DaPerform p;
	DaDemand d;
	
	Page page;
	
	String result="handle";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String dates;
	String datee;
	String type;
	
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

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}

	public String getDatee() {
		return datee;
	}

	public void setDatee(String datee) {
		this.datee = datee;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void clearOptions() {
		id=null;
		datee=null;
		dates=null;
		type=null;
		
	}
	private void clearSpace() {
		if (id!=null) {
			id=id.trim();
		}
		if (dates!=null) {
			dates=dates.trim();
		}
		if (datee!=null) {
			datee=datee.trim();
		}
		if (type!=null) {
			type=type.trim();
		}
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
		clearSpace();
		if(id!=null){
			String hql="from DaDemand where DId like '%"+id+"%'";
			if (type!=null && !type.equals("")) {
				hql=hql+" and DType = '"+type+"'";
			}
			if(dates!=null && !dates.equals("")){
				hql=hql+" and DTime >= '"+dates+"'";
			}
			if(datee!=null && !datee.equals("")){
				hql=hql+" and DTime <= '"+datee+"'";
			}
			hql=hql+" order by DTime desc";
			List dems=ser.query(hql, null, hql, page, ser);
			demper=ser.initDemPers(dems);
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
		String id=getRequest().getParameter("cid");
		String State=getRequest().getParameter("cState");
		if(id!=null){
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{id});
			if(templi.size()>0){
				DaPerform tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setPState(State);
				ser.update(tmpper);
			}
		}
		return gotoQuery();
	}

	public String update() throws Exception {
		String sj=null;
		String cs="453668907@qq.com";
		String ujob=null;
		String uname=null;
		DaDemand dd=null;
		
		
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
				
				//故障处理模块需带信息
				Users um =(Users) ser.get(Users.class, tmpper.getUNumNext());
				sj = um.getUMail();
				ujob=um.getUJob();
				uname=um.getUName();
				dd=(DaDemand) ser.get(DaDemand.class,d.getDId());
				
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
		System.out.println(sj);
		System.out.println(cs);
		String content="<div style=\"font-family:宋体;\">"+
		"<div style=\"height:400px;border:1px solid red;\">"+
		"<span>&nbsp;编&nbsp;号: "+dd.getDId()+"</span>"+
		"<span>&nbsp;时&nbsp;间: "+new SimpleDate(dd.getDTime())+"</span>"+
		"<span>发 起 人: "+dd.getDApplicant()+"</span>"+
		"<span>故障类型: "+dd.getDType()+"</span>"+
		"<span>故障描述:</span>"+dd.getDContent()+"<br/>"+
		
		"</div>"+
		"<br/>Best Wishes<br/>"+
		"以流程为导向，以服务为宗旨。<br/>"+
		"*****************************************************"+
		"<br/>信息与流程管理部-"+ujob+"  "+uname+""+
		"<br/>深圳市韵达速递有限公司<br/>邮箱："+sj+"<br/>"+
		"<br/>地址：广东省深圳市龙华新区观澜大道114号（交警中队正对面）<br/>"+
		"***************************************************<br/></div>";
		String title="故障处理提醒";
		System.out.println(content);
		System.out.println(title);
		MailTest.outputMail(sj, cs, content, title);
		return gotoQuery();
	}

}
