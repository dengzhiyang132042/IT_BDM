package com.zs.interceptor;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
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
import com.zs.entity.Permission;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;

public class MyInterceptor extends AbstractInterceptor{

	
	IService ser;
	HttpServletRequest request;
	HttpServletResponse response;
	ApplicationContext appContext;
	Map session;
	String path;
	String reqPamrs;
	Object user;
	private static final String PRO_NAME="/IT_BDM";
	
	
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}

	private void allInit(ActionInvocation arg0) {
		// 取得请求相关的ActionContext实例  
		request = ServletActionContext.getRequest();
		response = ServletActionContext.getResponse();
		//获取bean
//		appContext = new ClassPathXmlApplicationContext("/applicationContext.xml");
//    	dao = (IBaseDaoOfSpring) appContext.getBean("zs_dao");
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
		if (user==null) {//将登录的url排除在外
			if ((PRO_NAME+"/login!login").equals(path)) {
				String result=arg0.invoke();
				close();
				return result;
			}else {
				response.sendRedirect("error1.jsp");
				close();
				return null;
			}
		}else{ 
			Users u=(Users)user;
			Role r=u.getR();
			if ((PRO_NAME+"/fbd_asdl!queryOfFenyeAsdl").equals(path)) {//硬件组-ASDL-分页
				List<RolePermission> rps=ser.find("from RolePermission where RId=? and PId=?", new String[]{r.getRId(),"1"});
				if(rps.size()>0){
					Timeline tl=new Timeline("tl"+NameOfDate.getNum(), u.getUNum(), new Timestamp(new Date().getTime()), "查看", "FbdAsdl", request.getParameter("id"));
					ser.save(tl);
					String result=arg0.invoke();
					close();
					return result;
				}else {
					response.sendRedirect("error2.jsp");
					close();
					return null;
				}
			}else if ((PRO_NAME+"/fbd_asdl!deleteAsdl").equals(path)) {//硬件组-ASDL-删除
				List<RolePermission> rps=ser.find("from RolePermission where RId=? and PId=?", new String[]{r.getRId(),"3"});
				if(rps.size()>0){
					Timeline tl=new Timeline("tl"+NameOfDate.getNum(), u.getUNum(), new Timestamp(new Date().getTime()), "删除", "FbdAsdl", request.getParameter("id"));
					ser.save(tl);
					String result=arg0.invoke();
					close();
					return result;
				}else {
					response.sendRedirect("error2.jsp");
					close();
					return null;
				}
			}else if ((PRO_NAME+"/fbd_asdl!addAsdl").equals(path)) {//硬件组-ASDL-添加
				List<RolePermission> rps=ser.find("from RolePermission where RId=? and PId=?", new String[]{r.getRId(),"2"});
				if(rps.size()>0){
					String result=arg0.invoke();
					Timeline tl=new Timeline("tl"+NameOfDate.getNum(), u.getUNum(), new Timestamp(new Date().getTime()), "添加", "FbdAsdl", request.getParameter("id"));
					ser.save(tl);
					close();
					return result;
				}else {
					response.sendRedirect("error2.jsp");
					close();
					return null;
				}
			}
		}
//		System.out.println(path);
		close(); 
		return arg0.invoke();
	}
	
	private void close() {
		if (appContext!=null) {
			((ClassPathXmlApplicationContext)appContext).close();
		}

	}
}
