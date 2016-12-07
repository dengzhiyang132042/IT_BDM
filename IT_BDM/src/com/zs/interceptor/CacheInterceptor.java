package com.zs.interceptor;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.JSONUtils;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.logicalcobwebs.concurrent.FJTask.Par;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.PreResultListener;
import com.opensymphony.xwork2.util.ValueStack;
import com.zs.action.da.DaCountAction;
import com.zs.entity.Cache;
import com.zs.entity.CacheOther;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemand;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.Users;
import com.zs.service.IService;
import com.zs.tools.JsonDateValueProcessor;
import com.zs.tools.NameOfDate;
import com.zs.tools.TimeStampMorpher;

/**
 * @author 张顺
 *<br>2016-12-6
 *<br>缓存拦截器（前拦截器与后拦截器共同使用）
 */
public class CacheInterceptor extends AbstractInterceptor{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ActionInvocation acin;
	IService ser;
	HttpServletRequest request;
	HttpServletResponse response;
	Map session;
	String path;
	String reqPamrs;
	Object user;
	String actionName;
	String methodName;
	private static final String PRO_NAME="/IT_BDM";
	private Logger logger=Logger.getLogger(CacheInterceptor.class);
	Gson gson=new Gson();
	
	
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
        //
        acin=arg0;
        //获取action的名字
        actionName = arg0.getProxy().getActionName();
        System.out.println(actionName);
        //获取action的方法名字
        methodName = arg0.getProxy().getMethod();
        System.out.println(methodName);
        
	}
	
	
	/**
	 * 保存缓存
	 */
	private void saveCache(String listName,String filtrateName,String actionName) {
	}
	
	
	/**
	 * 以缓存数据为数据源来显示(替换原有的计划数据)
	 */
	private void setCounts(String listname,String arrayjson,Class c) {
		List list=new ArrayList();
		JSONArray arr=JSONArray.fromObject(arrayjson);
		for (int i = 0; i < arr.size(); i++) {
			String json=arr.getString(i);
			Object obj=gson.fromJson(json, c);
			list.add(obj);
		}
		acin.getStack().setValue(listname, list);
	}
	
	/**
	 * 通过action的名字+筛选条件得到一个确定的缓存
	 */
	private Cache getCache(String actionName,String filtrate) {
		List<Cache> caches=ser.find("from Cache where CAction=? and CFiltrate=?", new String[]{actionName,filtrate});
		if (caches.size()>0) {
			return caches.get(0);
		}else {
			return null;
		}
	}
	
	/**
	 * 通过action的名字得到一系列的缓存
	 */
	private List<Cache> getCaches(String actionName) {
		return ser.find("from Cache where CAction=?", new String[]{actionName});
	}
	
	
	//得到缓存的数据最后一条的开始时间
	private void getLastDate(String array ) {
		// TODO Auto-generated method stub
	}
	
	/**
	 * 张顺 2016-12-7
	 * 处理缓存，找出
	 */
	private Cache hadleCache(String arrayjson,String actionName,Class c,String methodName) {
		JSONArray arr=JSONArray.fromObject(arrayjson);
		/*
		//确保是否有新数据结论一定正确，采取对头尾数据判断两次的方式
		2016-12-6
		张顺
		新思路：
		新建一张表用于保存新数据的id的集合，以表名为id
		在查看统计时就知道有哪些新数据了
		在将新数据得到新的最终的json
		然后在查看统计的页面以这个json为数据源来显示即可
		*/
		return null;
	}
	
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		allInit(arg0);
		if (user!=null) {
			if ("count".equals(actionName)) {//客服统计
				String filtrate=(String) acin.getStack().findValue("filtrate", String.class);
				if (filtrate==null) {
					filtrate="D";
				}
				final Cache cache=getCache(actionName,filtrate); 
				//得到缓存
				if (cache!=null) {//有缓存
					//看看有没有新数据，如果有，那么设置好条件，走一遍action，
					if (cache.getCNewData()!=null && cache.getCNewData().equals("是")) {
						Date dates=cache.getCTime();
						Date datee=new Date();
						
						acin.getStack().setValue("dates", dates.toLocaleString());
						acin.getStack().setValue("datee", datee.toLocaleString());
						acin.getStack().setValue("cz", "no");
						
						arg0.addPreResultListener(new PreResultListener() {
						     public void beforeResult(ActionInvocation actionInvocation, String arg1) {
							     //do anything
							     List counts=(List) acin.getStack().findValue("counts", List.class);//获取到新数据封装
							     if (counts.size()>0) {//有新数据
									DaCount daCount=(DaCount) counts.get(0);
									Timestamp timestamp=daCount.getsTime();
									
									
									String arrnew=gson.toJson(counts);//得到新数据封装的json
									//拼接json
									JSONArray arrt=JSONArray.fromObject(cache.getCContent());
									arrt.remove(0);
									
									String json=arrnew.substring(0, arrnew.length()-1)+","+arrt.toString().substring(1, arrt.toString().length());
									cache.setCContent(json);
									cache.setCTime(timestamp);
									cache.setCNewData("否");
									ser.update(cache);
									
									List list=new ArrayList();
									JSONArray arr=JSONArray.fromObject(cache.getCContent());
									for (int i = 0; i < arr.size(); i++) {
										String arra=arr.getString(i);
										Object obj=gson.fromJson(arra, DaCount.class);
										list.add(obj);
									}
									acin.getStack().set("counts", list);
									request.setAttribute("json", cache.getCContent());
								}
						    }
						});
						arg0.invoke();//走一下action
					}else if (cache.getCNewData()!=null && cache.getCNewData().equals("否")) {
						List list=new ArrayList();
						JSONArray arr=JSONArray.fromObject(cache.getCContent());
						for (int i = 0; i < arr.size(); i++) {
							String arra=arr.getString(i);
							Object obj=gson.fromJson(arra, DaCount.class);
							list.add(obj);
						}
						acin.getStack().set("counts", list);
						request.setAttribute("json", cache.getCContent());
						
					}
					return "count";
				}else {//没有缓存就走原来的查询语句，查询结束保存入缓存
					logger.debug(actionName);
					
					arg0.invoke();
//					saveCache("counts","filtrate","count");
					List counts=(List) acin.getStack().findValue("counts", List.class);
					//这里默认是倒序
					if (counts.size()>0) {
						DaCount daCount=(DaCount) counts.get(0);
						Timestamp timestamp=daCount.getsTime();
						String array=gson.toJson(counts);
						Cache cache1=new Cache(NameOfDate.getNum(),"count",filtrate, array,timestamp,"否");
						ser.save(cache1);
					}
				}
			}
			else if ("daManager".equals(actionName) && "add".equals(methodName)) {//故障添加
				//有新数据我得把状态改下
				List<Cache> list=getCaches("count");
				for (int i = 0; i < list.size(); i++) {
					list.get(i).setCNewData("是");
					ser.update(list.get(i));
				}
				
				
			}
			
			else {
				
			}
		}
		close(); 
		return arg0.invoke(); 
	}
	
	private void close() {

	}
	
}
