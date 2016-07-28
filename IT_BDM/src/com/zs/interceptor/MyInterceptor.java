package com.zs.interceptor;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zs.dao.IBaseDaoOfSpring;

public class MyInterceptor extends AbstractInterceptor{

	
	IBaseDaoOfSpring dao=null;
	HttpServletRequest request;
	HttpServletResponse response;
	ApplicationContext appContext;
	Map session;
	String path;
	String reqPamrs;
	Object user;
	
	private void allInit(ActionInvocation arg0) {
		// 取得请求相关的ActionContext实例  
		request = ServletActionContext.getRequest();
		response = ServletActionContext.getResponse();
		//获取bean
		appContext = new ClassPathXmlApplicationContext("/applicationContext.xml");
    	dao = (IBaseDaoOfSpring) appContext.getBean("zs_dao");
    	//获取其他信息
		ActionContext ctx = arg0.getInvocationContext();  
        session = ctx.getSession();  
        //获得url
        path = request.getRequestURI();//url
        reqPamrs = request.getQueryString();//后面的参数
        //获取登录者信息
        user =session.get("user"); 
	}
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		allInit(arg0);
		/*
        if (user==null) {
        	System.out.println("-----if (user==null) {----");
        }
        System.out.println(path);  
        */
		//以下是权限控制的核心代码
		/*
		if (user==null) {//将登录的url排除在外
			if ("/TransExc/login!login".equals(path)) {
				close();
				return arg0.invoke();
			}else {
				response.sendRedirect("error1.jsp");
				close();
				return null;
			}
		}else if ("/TransExc/center!update".equals(path)) {//修改个人基本信息
				if (role!=null) {
					rps=dao.find("from RolePermission where RId='"+role.getId()+"' and PId='36'");
					if (rps.size()>0) {
						close();
						return arg0.invoke();
					}else {
						response.sendRedirect("error2.jsp");
						close();
						return null;
					}
				}
			}else {
				close();
				return arg0.invoke();
			}
		}
		*/
		close();
		return arg0.invoke();
	}
	
	private void close() {
		if (appContext!=null) {
			((ClassPathXmlApplicationContext)appContext).close();
		}

	}
}
