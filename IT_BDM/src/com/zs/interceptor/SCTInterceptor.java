package com.zs.interceptor;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.util.HtmlUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zs.service.IService;

/**
 * @author 张顺
 *<br>2017-1-12
 *<br>特殊字符转换拦截器（前拦截器）
 */
public class SCTInterceptor extends AbstractInterceptor{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	HttpServletRequest request;
	HttpServletResponse response;
	Map session;
	String path;
	String reqPamrs;
	Object user;
	private static final String PRO_NAME="/IT_BDM";
	private Logger logger=Logger.getLogger(SCTInterceptor.class);
	
	
	
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
		Map map=arg0.getInvocationContext().getParameters();  
        Set keys = map.keySet();  
                  Iterator iters = keys.iterator();  
                while(iters.hasNext()){  
                    Object key = iters.next();  
                    Object value = map.get(key);  
                    map.put(key, transfer((String[])value));  
                }  
        return arg0.invoke();  
	}
	
	private String[] transfer(String[] params){  
        for(int i=0;i<params.length;i++){  
            if(StringUtils.isEmpty(params[i]))continue;  
            params[i]=params[i].trim();  
            params[i]=HtmlUtils.htmlEscape(params[i]);
        }  
        return params;  
    }    
}
