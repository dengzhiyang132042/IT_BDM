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
    	
    	
}
