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
    	
    	
    	/*2016年8月13日14:49:39
    	 * 黄光辉
    	 * 1，得到当前正在进行的故障处理单（包括进行中，和审核中的）
    	 * 2，根据超时时间判断，并更改相应的数据
    	 * 3，整理并以邮件形式发送给主管，抄送给it机器人，以便及时处理相应的信息。
    	 * */
    	//先得到当天开始的时间
		
		try {
			
			//MailTest.outputMail(u.getUMail(), MailTest.IT_ROBOT, content,title);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("监听器--定时器--发送邮件出问题了,出异常账号:");
		}
			
	}
    	 
    	
    	
}
