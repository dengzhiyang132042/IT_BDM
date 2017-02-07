package com.zs.interceptor;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zs.action.xtz.SiteAction;
import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.CompanySection;
import com.zs.entity.DaCount;
import com.zs.entity.DaDemPer;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.FbdAsdl;
import com.zs.entity.FbdComputer;
import com.zs.entity.FbdListLink;
import com.zs.entity.FbdMonitoring;
import com.zs.entity.GoOut;
import com.zs.entity.Goods;
import com.zs.entity.Permission;
import com.zs.entity.QuotaMan;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.entity.Sim;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.entity.WhBqDraw;
import com.zs.entity.WhDeviceScout;
import com.zs.entity.WhExpressList;
import com.zs.entity.WhMassageReceive;
import com.zs.entity.WhMeetingScout;
import com.zs.entity.WhMonitorScout;
import com.zs.entity.WhOutRepair;
import com.zs.entity.WhThreeMeetingScout;
import com.zs.entity.XtBqRepair;
import com.zs.entity.XtBqq;
import com.zs.entity.XtBranches;
import com.zs.entity.XtHitches;
import com.zs.entity.XtNetImo;
import com.zs.entity.XtPdaChange;
import com.zs.entity.XtProject;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.entity.YjOut;
import com.zs.entity.ZmBq;
import com.zs.entity.ZmByNumber;
import com.zs.entity.ZmCall;
import com.zs.entity.ZmComputer;
import com.zs.entity.ZmMail;
import com.zs.entity.ZmNetCall;
import com.zs.entity.ZmOaNumber;
import com.zs.entity.ZmPhoneLine;
import com.zs.entity.ZmPrinter;
import com.zs.entity.ZmVpn;
import com.zs.entity.ZmWifi;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;

public class QuotaInterceptor extends AbstractInterceptor{

	
	/**
	 * 指标拦截器
	 * 张顺，2017-2-6
	 */
	private static final long serialVersionUID = 1L;
	IService ser;
	HttpServletRequest request;
	HttpServletResponse response;
	Map session;
	String path;
	String reqPamrs;
	Users user;
	String actionName;
	String methodName;
	private static final String PRO_NAME="/IT_BDM";
	private Logger logger=Logger.getLogger(QuotaInterceptor.class);
	
	
	
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public String getMethodName() {
		return methodName;
	}
	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}
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
        user =(Users) session.get("user"); 
        //获取action的名字
        actionName = arg0.getProxy().getActionName();
        //获取action的方法名字
        methodName = arg0.getProxy().getMethod();
	}
	
	
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		String result=arg0.invoke();
		allInit(arg0);
		
		//以下是指标的核心代码
		/*系统组*/
		if (actionName.equals("site")) {//站点资料
			XtSite site=(XtSite) request.getAttribute("site");
			if (site!=null) {
				String type=site.getSMaintainType();
				Timestamp time=site.getSCreateTime();
				String unum=site.getUNum();
				time.setHours(0);
				time.setMinutes(0);
				time.setSeconds(0);
				time.setNanos(0);
				if (type!=null && time!=null && unum!=null) {
					List<QuotaMan> qms=ser.find("from QuotaMan where UNum=? and qmDate=? and qmTable=?", new Object[]{unum,time,"站点资料"});
					if (type.equals("注册")) {
						if (qms.size()>0) {
							QuotaMan qm=qms.get(0);
							qm.setQmTypeZc(qm.getQmTypeZc()+1);
							ser.update(qm);
						}else {
							QuotaMan qm=new QuotaMan("q"+NameOfDate.getNum(), unum, 1, 0, 0, time, "站点资料");
							ser.save(qm);
						}
					}else if (type.equals("维护")) {
						if (qms.size()>0) {
							QuotaMan qm=qms.get(0);
							qm.setQmTypeWh(qm.getQmTypeWh()+1);
							ser.update(qm);
						}else {
							QuotaMan qm=new QuotaMan("q"+NameOfDate.getNum(), unum, 0, 1, 0, time, "站点资料");
							ser.save(qm);
						}
					}else if (type.equals("注销")) {
						if (qms.size()>0) {
							QuotaMan qm=qms.get(0);
							qm.setQmTypeZx(qm.getQmTypeZx()+1);
							ser.update(qm);
						}else {
							QuotaMan qm=new QuotaMan("q"+NameOfDate.getNum(), unum, 0, 0, 1, time, "站点资料");
							ser.save(qm);
						}
					}
				}
			}
		}
		
		
		close(); 
		return result; 
	}
	
	private void close() {

	}
}
