package com.zs.interceptor;
import java.lang.reflect.Field;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.PreResultListener;
import com.zs.entity.Cache;
import com.zs.entity.DaCount;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;

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
	private final String COUNTS_NAME="counts";
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
        //获取action的方法名字
        methodName = arg0.getProxy().getMethod();
	}
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		allInit(arg0);
		if (user!=null) {
			if ("count".equals(actionName)) {//客服统计
				hadle("D",DaCount.class, "sTime");
				return "count"; 
			}
			else if ("daManager".equals(actionName) && "add".equals(methodName)) {//故障添加
				//有新数据我得把状态改下
				List<Cache> list=getCaches("count");
				for (int i = 0; i < list.size(); i++) {
					list.get(i).setCNewData("是");
					ser.update(list.get(i));
				}
			}
			else if ("countZy".equals(actionName)) {//客服统计
				hadle("D",DaCount.class, "sTime");
				return "countZy"; 
			}
			
			
		}
		close(); 
		return arg0.invoke(); 
	}
	
	private void close() {

	}
	
	/**
	 * 以缓存数据为数据源来显示(替换原有的计划数据)
	 */
	private void setCounts(Cache cache,Class count) {
		List list=new ArrayList();
		JSONArray arr=JSONArray.fromObject(cache.getCContent());
		for (int i = 0; i < arr.size(); i++) {
			String json=arr.getString(i);
			Object obj=gson.fromJson(json, count);
			list.add(obj);
		}
		acin.getStack().set(COUNTS_NAME, list);
		request.setAttribute("json", cache.getCContent());
	}
	
	/**
	 * 通过action的名字+筛选条件得到一个确定的缓存
	 * 筛选条件必须为filtrate
	 */
	private Cache getCache(String filtrate) {
		List<Cache> caches=ser.find("from Cache where CAction=? and CFiltrate=?", new String[]{actionName,filtrate});
		if (caches.size()>0) {
			return caches.get(0);
		}else {
			return null;
		}
	}
	
	/**
	 * 得到帅选条件
	 */
	public String getFiltrate(String defaultFil) {
		String filtrate=(String) acin.getStack().findValue("filtrate", String.class);
		if (filtrate==null) {
			filtrate=defaultFil;
		}
		return filtrate;
	}
	
	
	/**
	 * 通过action的名字得到一系列的缓存
	 */
	private List<Cache> getCaches(String actionName) {
		return ser.find("from Cache where CAction=?", new String[]{actionName});
	}
	
	private void initActionOptions(Cache cache) {
		
	}
	
	/**
	 *拼接json,处理json 
	 */
	private void handleJson(List counts,Cache cache,Timestamp timestamp) {
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
		acin.getStack().set(COUNTS_NAME, list);
		request.setAttribute("json", cache.getCContent());
	}
	
	/**
	 *最终封装——缓存相关处理 
	 */
	private void hadle(String defauFil,final Class c,final String filedName) {
		if (reqPamrs!=null && reqPamrs.contains("cz=yes")) {
			acin.getStack().setValue("filtrate", null);
			acin.getStack().setValue("dates", null);
			acin.getStack().setValue("datee", null);
		}else {
			acin.getStack().setValue("cz", null);
		}
		String filtrate=getFiltrate(defauFil);
		final Cache cache=getCache(filtrate); //得到缓存
		if (cache!=null) {//有缓存
			//看看有没有新数据，如果有，那么设置好条件，走一遍action，
			if (cache.getCNewData()!=null && cache.getCNewData().equals("是")) {
				
				Date dates=cache.getCTime();
				Date datee=new Date();
				acin.getStack().setValue("cz", null);
				acin.getStack().setValue("dates", dates.toLocaleString());
				acin.getStack().setValue("datee", datee.toLocaleString());
				
				acin.addPreResultListener(new PreResultListener() {
				     public void beforeResult(ActionInvocation actionInvocation, String arg1) {
					     //do anything
					     List counts=(List) acin.getStack().findValue(COUNTS_NAME, List.class);//获取到新数据封装
					     if (counts.size()>0) {//有新数据
							Object daCount=counts.get(0);
							try {
								Field times = c.getDeclaredField(filedName);
								times.setAccessible(true);
								Object time=times.get(daCount);
								Timestamp timestamp=(Timestamp) time;
								handleJson(counts, cache, timestamp);
							} catch (SecurityException e) {
								e.printStackTrace();
							} catch (NoSuchFieldException e) {
								e.printStackTrace();
							} catch (IllegalArgumentException e) {
								e.printStackTrace();
							} catch (IllegalAccessException e) {
								e.printStackTrace();
							}
						}
				    }
				});
				try {
					acin.invoke();//走一下action
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if (cache.getCNewData()!=null && cache.getCNewData().equals("否")) {
				setCounts(cache, DaCount.class);
			}
			return;
		}else {//没有缓存就走原来的查询语句，查询结束保存入缓存
			try {
				acin.invoke();
			} catch (Exception e) {
				e.printStackTrace();
			}
			List counts=(List) acin.getStack().findValue(COUNTS_NAME, List.class);
			//这里默认是倒序
			if (counts.size()>0) {
				Object daCount=counts.get(0);
				try {
					Field times = c.getDeclaredField(filedName);
					times.setAccessible(true);
					Object time=times.get(daCount);
					Timestamp timestamp=(Timestamp) time;
					String array=gson.toJson(counts);
					Cache cache1=new Cache(NameOfDate.getNum(),actionName,filtrate, array,timestamp,"否");
					ser.save(cache1);
				} catch (SecurityException e) {
					e.printStackTrace();
				} catch (NoSuchFieldException e) {
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
				return;
				
				
			}
		}
	}
	
}
