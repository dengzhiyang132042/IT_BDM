package com.zs.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 已废弃不用<br>
 * 张顺 2016-11-10
 * @author 张顺
 */
public class ServletContextListenerDemo implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("容器初始化-->"+arg0.getServletContext().getContextPath());
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("容器创建-->"+arg0.getServletContext().getContextPath());
       try{
           Thread.sleep(500);//休眠
       }catch(Exception e){
           e.printStackTrace();
       }
	}

}
