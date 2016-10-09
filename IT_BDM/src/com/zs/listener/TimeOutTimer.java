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

import com.zs.action.da.DaHandleAction;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.Role;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.mail.MailTest;
import com.zs.service.IService;

import freemarker.template.SimpleDate;

public class TimeOutTimer extends TimerTask{
	
	private ServletContext context = null;  
	private IService ser = null;  
    
	private Logger logger=Logger.getLogger(TimeOutTimer.class);
	
	public TimeOutTimer(ServletContext context,IService ser){  
        this.context = context;  
        this.ser=ser;
    }
	private String title="故障处理为完成";
	
	
	/**
	 * 2016年8月12日16:16:31
	 * <br>张顺
	 * <br>1，得到用户表信息
	 * <br>2，根据角色进行判断发送邮件，抄送人为另一角色。比如角色：硬件组、经理
	 * <br>3，得到并整理要发送的信息
	 * */
    public void run(){  
    	
    	logger.debug("-------测试监听器---------");
    	
    	
    	/*2016年10月9日14:49:39
    	 * 黄光辉
    	 * 1，得到当前正在进行的故障处理单（包括进行中，和审核中的）
    	 * 2，根据超时时间判断，并更改相应的数据
    	 * 3，整理并以邮件形式发送给主管，抄送给it机器人，以便及时处理相应的信息。
    	 * */
    	//邮件发送所需数据
		Users um = null;
		DaDemand dd =null;
		DaPerform perform=null;
    	
    	//先得到当天开始的时间
		List<DaPerform> pe = ser.find("from DaPerform where PState in ('进行中','审核中')", new String[]{});
		for(int i=0;i<pe.size();i++){
			DaPerform p =pe.get(i);
			perform = (DaPerform) ser.get(DaPerform.class, p.getPId());
			DaDemand d=(DaDemand) ser.get(DaDemand.class, perform.getDId());
			Timestamp datenow = new Timestamp(new Date().getTime());
			if(datenow.getTime()>d.getDTimeExpect().getTime()){
				perform.setPState("未完成");
				perform.setPNote("超时，系统自动设定未完成");
				ser.update(perform);
				if(DaHandleAction.outMailFromUpdate(perform, d, ser)==false){
					//日后换成邮件错误界面
					System.out.println("邮件发送错误");
				}
			}
		}
		//List<DaDemand> d = ser.find("from DaDemand where ", new String[]{});
		
			
	}

	public static boolean outMailFromUpdate(DaPerform tmpper,DaDemand d,IService ser){
		//添加一个给主管发送邮件，并标明为什么未完成
		//邮件模块需要带的数据
		Users um = (Users) ser.get(Users.class, tmpper.getUNum());
		DaDemand dd=(DaDemand) ser.get(DaDemand.class, d.getDId());
		//编写邮件内容
		String content="<style type=\"text/css\">span{display:block;margin:5px 0;font-size:15px;} .table1{	border: #224466;	border-collapse:collapse;	width: 800px;} .tleft{text-align:left;}</style>";
		content=content+"<div style=\"font-family:微软雅黑;font-size:15px;\">"+
		"<div style=\"height:400px;width:800px;\">"+
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
