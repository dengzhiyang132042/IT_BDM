package com.zs.action.da;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.xml.registry.infomodel.User;

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
	
	//定义一个变量用来存储点击转发按钮时当前处理人的信息
	String num_now="";
	//------------------------------------------
	public static final String STATE_DOING="进行中";
	public static final String STATE_YES="已完成";
	public static final String STATE_NO="未完成";
	public static final String STATE_TO_OTHER="转发";
	public static final String STATE_AUDITING="审核中";
	
	
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
		//获取当前登陆者的信息
		Users uu=(Users) getSession().getAttribute("user");
		if(id!=null){
			String hql="from DaDemand where DId like '%"+id+"%' and DId in (select DId from DaPerform where	UNum ='"+uu.getUNum()+"' and PState = '进行中')";
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
			String hql="from DaDemand where DId in (select DId from DaPerform where	UNum ='"+uu.getUNum()+"'  and PState = '进行中') order by DTime desc";
			String ss[]={};
			String hql2="from DaDemand where DId in (select DId from DaPerform where UNum ='"+uu.getUNum()+"'  and PState = '进行中') order by DTime desc";
			List dems=ser.query(hql, ss, hql2, page, ser);
			initDemPers(dems);
		}
		ser.bringUsers(getRequest(),uu);
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
		//获取当前登陆者的信息
		Users uu=(Users) getSession().getAttribute("user");
		
		String hql="from DaDemand where DId in (select DId from DaPerform where	UNum ='"+uu.getUNum()+"'  and PState = '进行中') order by DTime desc";
		String ss[]={};
		String hql2="from DaDemand where DId in (select DId from DaPerform where UNum ='"+uu.getUNum()+"'  and PState = '进行中') order by DTime desc";
		List dems=ser.query(hql, ss, hql2, page, ser);
		initDemPers(dems);
		ser.bringUsers(getRequest(),uu);
		JSONArray json=JSONArray.fromObject(demper);
		getRequest().setAttribute("json", json);
		return result;
	}
	
	
	public String update() throws Exception {	
		//邮件发送所需数据
		String title="";
		String sj="";
		Users um = null;
		DaDemand dd =null;
		DaPerform tmpper=null;
		if (d!=null && !"".equals(d.getDId())&& p.getPState().equals("转发")) {
			d=(DaDemand) ser.get(DaDemand.class, d.getDId());
			//找到当前执行表数据
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if (templi.size()>0) {
				tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setUNumNext(p.getUNumNext());
				tmpper.setPState("审核中");
				ser.update(tmpper);
				getRequest().setAttribute("p", tmpper);
			}
		}else if(d!=null && !"".equals(d.getDId())&& p.getPState().equals("已完成")){
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if(templi.size()>0){
				tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setPState(p.getPState());
				ser.update(tmpper);
				getRequest().setAttribute("p", tmpper);
			}
		}else if(d!=null && !"".equals(d.getDId())&& p.getPState().equals("未完成")){
			List templi=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{d.getDId()});
			if(templi.size()>0){
				tmpper=(DaPerform) templi.get(0);
				tmpper.setPTime(new Timestamp(new Date().getTime()));
				tmpper.setPState(p.getPState());
				tmpper.setPNote(p.getPNote());
				ser.update(tmpper);
				getRequest().setAttribute("p", tmpper);
				
				//添加一个给主管发送邮件，并标明为什么未完成
				//邮件模块需要带的数据
				if(DaHandleAction.outMailFromUpdate(tmpper, d, getSer())==false){
					//日后换成邮件错误界面
					getResponse().getWriter().write("邮件发送错误!请手动发送邮件");
					return null;
				}
			}
		}
		return gotoQuery();
	}

	public static boolean outMailFromUpdate(DaPerform tmpper,DaDemand d,IService ser){
		//添加一个给主管发送邮件，并标明为什么未完成
		//邮件模块需要带的数据
		Users um = (Users) ser.get(Users.class, tmpper.getUNum());
		DaDemand dd=(DaDemand) ser.get(DaDemand.class, d.getDId());
		//编写邮件内容
		String content="<style type=\"text/css\">span{display:block;margin:5px 0;font-size:15px;} .table1{	border: #224466;	border-collapse:collapse;	width: 800px;} .tleft{text-align:left;}</style>";
		content=content+"<div style=\"font-family:微软雅黑;font-size:15px;\">"+
		"<div style=\"height:400px;\">"+
		"<span>Dear 徐主管</span>"+
		"<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您收到有"+um.getUName()+"发送给您的未完成故障详情！</span>"+
		"<span>未完成原因:"+tmpper.getPNote()+"</span>"+
		"<table class=\"table1\" border=\"1\">" +
		"<tr>" +
		"<td class=\"tleft\">编&nbsp;&nbsp; 号:</td><td>"+dd.getDId()+"</td><td class=\"tleft\">发 起 人:</td><td>"+dd.getDApplicant()+"</td></tr>" +
		"<tr><td class=\"tleft\">故障类型:</td><td>"+dd.getDType()+"</td><td class=\"tleft\">创建时间:</td><td>"+new SimpleDate(dd.getDTime())+"</td></tr>" +
		"<tr><td>超时时间:</td><td>"+dd.getDTimeExpect()+"</td></tr>" +
		"</table>"+
		"<span>故障描述:</span>"+
		"<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+dd.getDContent()+"</span>"+
		"</div>"+
		"<br/>Best Wishes<br/>"+
		"以流程为导向，以服务为宗旨。<br/>"+
		"*****************************************************"+
		"<br/>信息与流程管理部-客服专员 &nbsp;"+um.getUName()+""+
		"<br/>深圳市韵达速递有限公司<br/>邮箱："+um.getUMail()+""+
		"<br/>地址：广东省深圳市龙华新区观澜大道114号（交警中队正对面）<br/>"+
		"***************************************************<br/></div>";
		//邮件标题
		String title="故障处理未完成";
		String sj="guanghui_huang@szexpress.com.cn";
		try {
			MailTest.outputMail(sj,MailTest.IT_ROBOT, content, title);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	
}
