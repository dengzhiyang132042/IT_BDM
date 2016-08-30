package com.zs.listener;

import java.util.List;
import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.zs.entity.Timeline;
import com.zs.service.IService;

public class InforListener implements ServletContextListener {

	private Timer timer=null;
	private Logger logger=Logger.getLogger(InforListener.class);
	
	public void contextInitialized(ServletContextEvent sce) {
		IService ser = (IService) WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext()).getBean("zs_ser");
		// 在这里初始化监听器，在tomcat启动的时候监听器启动，可以在这里实现定时器功能  
        timer = new Timer(true);  
        // 添加日志，可在tomcat日志中查看到  
        logger.debug("定时器已启动");  
        logger.debug("定时器已启动");  
        // 调用InforTimer，0表示任务无延迟，5*1000表示每隔5秒执行任务，60*60*1000表示一个小时，24*60*60*1000表示一天。  
//        timer.schedule(new InforTimer(sce.getServletContext(),ser), 0, 8*60*60*1000); //每2分钟执行一次GoogleTimer类  
        logger.debug("已经添加任务");  
        logger.debug("定时器已添加"); 
	}
	
	
	// 在这里关闭监听器，所以在这里销毁定时器。
	public void contextDestroyed(ServletContextEvent sce) {
		if (timer!=null) {
			timer.cancel();  
			logger.debug("定时器销毁");
		}
	}
	
	
}
