package com.zs.listener;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.zs.entity.Role;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.mail.MailTest;
import com.zs.service.IService;

public class InforTimer extends TimerTask{
	
	private ServletContext context = null;  
	private IService ser = null;  
    
	private Logger logger=Logger.getLogger(InforTimer.class);
	
	public InforTimer(ServletContext context,IService ser){  
        this.context = context;  
        this.ser=ser;
    }
	private String title="IT基础数据管理系统——消息提醒";
	
	
	/**
	 * 2016年8月12日16:16:31
	 * <br>张顺
	 * <br>1，得到用户表信息
	 * <br>2，根据角色进行判断发送邮件，抄送人为另一角色。比如角色：硬件组、经理
	 * <br>3，得到并整理要发送的信息
	 * */
    public void run(){  
    	
    	logger.debug("-------测试监听器---------");
    	
    	
    	/*2016年8月13日14:49:39
    	 * 张顺
    	 * 1，得到用户表信息
    	 * 2，根据角色进行判断发送邮件，抄送人为另一角色。比如角色：硬件组、经理
    	 * 3，得到并整理要发送的信息
    	 * */
    	//先得到当天开始的时间
		Date date=new Date();
		Timestamp timestamp1=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 0, 0, 0, 0);
		Timestamp timestamp2=new Timestamp(date.getYear(), date.getMonth(), date.getDate(), 23, 59, 59, 999);
    	List<Users> us=ser.find("from Users", new String[]{});
    	String css="<style>table{	border: #224466;	border-collapse:collapse;	width: 100%;}table tr th{	background-color: #336699;	color: white;	font-weight: bold;	padding: 7px;	font-size: 12px;}td{	text-align:center;	padding:1px;	font-size: 12px;}</style>";
    	for (int i = 0; i < us.size(); i++) {
    		Users u=us.get(i);
			Role r=(Role)ser.get(Role.class, u.getRId());
			if (r.getRName().equals("硬件组")) {
				//查找该用户的硬件组日常事项
				List<Timeline> tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? and tlState!=?", new Object[]{u.getUNum(),timestamp1,timestamp2,"查看"});
				//开始构建数据结构
				List<Map> data=ser.transtion(tls);
				//开始组装邮件内容
				String str="<div style='color: blue;font-weight: bold;'>"
							+r.getRName() +
							"——今天：<br/>"
							+u.getUName()+"("
							+u.getUNum()
							+")"
							+"</div>"+
							"<table border=\"1\">";
				for (int j = 0; j < data.size(); j++) {
					Map map=data.get(j);
					String name=(String) map.get("name");
					List<Timeline> list=(List)map.get("list");
					str=str +
						"<tr>" +
						"<th colspan=\"5\">" +
						name+"——"+
						list.size()+
						"</th>" +
						"</tr>";
					if (list.size()>0) {
						str=str+
						"<tr>" +
						"<th>" +
						"序号"+
						"</th>" +
						"<th>" +
						"时间"+
						"</th>" +
						"<th>" +
						"操作"+
						"</th>" +
						"<th>" +
						"表"+
						"</th>" +
						"<th>" +
						"编号"+
						"</th>" +
						"</tr>";
						for (int k = 0; k < list.size(); k++) {
							str=str+
								"<tr>" +
								"<td>" +
								(k+1)+
								"</td>" +
								"<td>" +
								list.get(k).getTlTime()+
								"</td>" +
								"<td>" +
								list.get(k).getTlState()+
								"</td>" +
								"<td>" +
								list.get(k).getTlTableName()+
								"</td>" +
								"<td>" +
								list.get(k).getTlTableId()+
								"</td>" +
								"</tr>";
						}
					}else {
						str=str+
						"<tr><td colspan=\"5\"><span style=\"color: red;\">这张表的数据您还没有登记。</span></td></tr>";
					}
				}
				String content=css+str+"</table>";
				logger.debug(content);
				try {
					MailTest.outputMail(u.getUMail(), MailTest.props.getProperty("mail.user"), content,title);
				} catch (MessagingException e) {
					e.printStackTrace();
					logger.error("监听器--定时器--发送邮件出问题了,出异常账号:"+u.getUName()+"   "+u.getUNum());
				}
			}else if (r.getRName().equals("系统组")) {
				//查找该用户的系统组日常事项
				List<Timeline> tls=ser.find("from Timeline where userNum=? and tlTime>? and tlTime<? and tlState!=?", new Object[]{u.getUNum(),timestamp1,timestamp2,"查看"});
				//开始构建数据结构
				List<Map> data=ser.transtionXt(tls);
				//开始组装邮件内容
				String str="<div style='color: blue;font-weight: bold;'>"
							+r.getRName() +
							"——今天：<br/>"
							+u.getUName()+"("
							+u.getUNum()
							+")"
							+"</div>"+
							"<table border=\"1\">";
				for (int j = 0; j < data.size(); j++) {
					Map map=data.get(j);
					String name=(String) map.get("name");
					List<Timeline> list=(List)map.get("list");
					str=str +
						"<tr>" +
						"<th colspan=\"5\">" +
						name+"——"+
						list.size()+
						"</th>" +
						"</tr>";
					if (list.size()>0) {
						str=str+
						"<tr>" +
						"<th>" +
						"序号"+
						"</th>" +
						"<th>" +
						"时间"+
						"</th>" +
						"<th>" +
						"操作"+
						"</th>" +
						"<th>" +
						"表"+
						"</th>" +
						"<th>" +
						"编号"+
						"</th>" +
						"</tr>";
						for (int k = 0; k < list.size(); k++) {
							str=str+
								"<tr>" +
								"<td>" +
								(k+1)+
								"</td>" +
								"<td>" +
								list.get(k).getTlTime()+
								"</td>" +
								"<td>" +
								list.get(k).getTlState()+
								"</td>" +
								"<td>" +
								list.get(k).getTlTableName()+
								"</td>" +
								"<td>" +
								list.get(k).getTlTableId()+
								"</td>" +
								"</tr>";
						}
					}else {
						str=str+
						"<tr><td colspan=\"5\"><span style=\"color: red;\">这张表的数据您还没有登记。</span></td></tr>";
					}
				}
				String content=css+str+"</table>";
				logger.debug(content);
				try {
					MailTest.outputMail(u.getUMail(), MailTest.props.getProperty("mail.user"), content,title);
				} catch (MessagingException e) {
					e.printStackTrace();
					logger.error("监听器--定时器--发送邮件出问题了,出异常账号:"+u.getUName()+"   "+u.getUNum());
				}
			}
			
			
			
			
			
		}
	}
    	 
    	
    	
}
