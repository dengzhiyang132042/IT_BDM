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
import com.zs.entity.FbdAsdl;
import com.zs.entity.FbdComputer;
import com.zs.entity.FbdListLink;
import com.zs.entity.FbdMonitoring;
import com.zs.entity.GoOut;
import com.zs.entity.Goods;
import com.zs.entity.Permission;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.Sim;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.entity.XtBranches;
import com.zs.entity.XtSite;
import com.zs.entity.XtZmData;
import com.zs.entity.XtZmNumber;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;

public class RoleInterceptor extends AbstractInterceptor{

	
	IService ser;
	HttpServletRequest request;
	HttpServletResponse response;
	Map session;
	String path;
	String reqPamrs;
	Object user;
	private static final String PRO_NAME="/IT_BDM";
	private Logger logger=Logger.getLogger(RoleInterceptor.class);
	
	
	
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
	
	private String roleControl(ActionInvocation arg0,Role r,String pid) throws Exception {
		List<RolePermission> rps=ser.find("from RolePermission where RId=? and PId=?", new String[]{r.getRId(),pid});
		if(rps.size()>0){
			close();
			return arg0.invoke();
		}else {
			response.sendRedirect("error2.jsp");
			close();
			return null;
		}
	}
	
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		allInit(arg0);
		//以下是权限控制的核心代码
		if (user==null) {//将登录的url排除在外
			if ((PRO_NAME+"/login!login").equals(path)) {
				close();
				return arg0.invoke();
			}else {
				response.sendRedirect("error1.jsp");
				close();
				return null;
			}
		}else{ 
			Users u=(Users)user;
			Role r=u.getR();
			if ((PRO_NAME+"/fbd_asdl!queryOfFenyeAsdl").equals(path)) {//硬件组-ASDL-分页
				return roleControl(arg0, r, "1");
			}else if ((PRO_NAME+"/fbd_asdl!deleteAsdl").equals(path)) {//硬件组-ASDL-删除
				return roleControl(arg0, r, "3");
			}else if ((PRO_NAME+"/fbd_asdl!addAsdl").equals(path)) {//硬件组-ASDL-添加
				return roleControl(arg0, r, "2");
			}else if ((PRO_NAME+"/fbd_asdl!updateAsdl").equals(path)) {//硬件组-ASDL-修改
				return roleControl(arg0, r, "4");
			}
			
			else if ((PRO_NAME+"/fbd_m!queryOfFenyeM").equals(path)) {//硬件组-分拨点监控——分页
				return roleControl(arg0, r, "5");
			}else if ((PRO_NAME+"/fbd_m!deleteM").equals(path)) {//硬件组-分拨点监控——删除
				return roleControl(arg0, r, "6");
			}else if ((PRO_NAME+"/fbd_m!updateM").equals(path)) {//硬件组-分拨点监控——修改
				return roleControl(arg0, r, "7");
			}else if ((PRO_NAME+"/fbd_m!addM").equals(path)) {//硬件组-分拨点监控——添加
				return roleControl(arg0, r, "8");
			}
			
			else if ((PRO_NAME+"/fbd_c!queryOfFenyeC").equals(path)) {//硬件组-分拨点电脑——分页
				return roleControl(arg0, r, "9");
			}else if ((PRO_NAME+"/fbd_c!deleteC").equals(path)) {//硬件组-分拨点电脑——删除
				return roleControl(arg0, r, "10");
			}else if ((PRO_NAME+"/fbd_c!updateC").equals(path)) {//硬件组-分拨点电脑——修改
				return roleControl(arg0, r, "11");
			}else if ((PRO_NAME+"/fbd_c!addC").equals(path)) {//硬件组-分拨点电脑——添加
				return roleControl(arg0, r, "12");
			}
			
			else if ((PRO_NAME+"/fbd_ll!queryOfFenyeLL").equals(path)) {//硬件组-分拨点监控材料清单——查看
				return roleControl(arg0, r, "13");
			}else if ((PRO_NAME+"/fbd_ll!deleteLL").equals(path)) {//硬件组-分拨点监控材料清单——删除
				return roleControl(arg0, r, "14");
			}else if ((PRO_NAME+"/fbd_ll!updateLL").equals(path)) {//硬件组-分拨点监控材料清单——修改
				return roleControl(arg0, r, "15");
			}else if ((PRO_NAME+"/fbd_ll!addLL").equals(path)) {//硬件组-分拨点监控材料清单——添加
				return roleControl(arg0, r, "16");
			}
			
			else if ((PRO_NAME+"/sim!queryOfFenyeSIM").equals(path)) {//硬件组-SIM——查看
				return roleControl(arg0, r, "17");
			}else if ((PRO_NAME+"/sim!deleteSIM").equals(path)) {//硬件组-SIM——删除
				return roleControl(arg0, r, "18");
			}else if ((PRO_NAME+"/sim!updateSIM").equals(path)) {//硬件组-SIM——修改
				return roleControl(arg0, r, "19");
			}else if ((PRO_NAME+"/sim!addSIM").equals(path)) {//硬件组-SIM——添加
				return roleControl(arg0, r, "20");
			}
			
			else if ((PRO_NAME+"/goods!queryOfFenyeGoods").equals(path)) {//硬件组-内件收发——查看
				return roleControl(arg0, r, "21");
			}else if ((PRO_NAME+"/goods!deleteGoods").equals(path)) {//硬件组-内件收发——删除
				return roleControl(arg0, r, "22");
			}else if ((PRO_NAME+"/goods!updateGoods").equals(path)) {//硬件组-内件收发——修改
				return roleControl(arg0, r, "23");
			}else if ((PRO_NAME+"/goods!addGoods").equals(path)) {//硬件组-内件收发——添加
				return roleControl(arg0, r, "24");
			}
			
			else if ((PRO_NAME+"/go!queryOfFenyeGo").equals(path)) {//硬件组-外出登记——查看
				return roleControl(arg0, r, "25");
			}else if ((PRO_NAME+"/go!deleteGo").equals(path)) {//硬件组-外出登记——删除
				return roleControl(arg0, r, "26");
			}else if ((PRO_NAME+"/go!updateGo").equals(path)) {//硬件组-外出登记——修改
				return roleControl(arg0, r, "27");
			}else if ((PRO_NAME+"/go!addGo").equals(path)) {//硬件组-外出登记——添加
				return roleControl(arg0, r, "28");
			}
			//-------------------------------硬件组结束,系统组开始------------------------------------------------
			else if ((PRO_NAME+"/site!queryOfFenye").equals(path)) {//站点资料查询
				return roleControl(arg0, r, "29");
			}else if ((PRO_NAME+"/site!delete").equals(path)) {//站点资料删除
				return roleControl(arg0, r, "30");
			}else if ((PRO_NAME+"/site!delete").equals(path)) {//站点资料修改
				return roleControl(arg0, r, "31");
			}else if ((PRO_NAME+"/site!delete").equals(path)) {//站点资料添加
				return roleControl(arg0, r, "32");
			}
			
			else if ((PRO_NAME+"/branches!queryOfFenye").equals(path)) {//二级站点资料查看
				return roleControl(arg0, r, "33");
			}else if ((PRO_NAME+"/branches!delete").equals(path)) {//二级站点资料删除
				return roleControl(arg0, r, "34");
			}else if ((PRO_NAME+"/branches!update").equals(path)) {//二级站点资料修改
				return roleControl(arg0, r, "35");
			}else if ((PRO_NAME+"/branches!add").equals(path)) {//二级站点资料添加
				return roleControl(arg0, r, "36");
			}
			
			else if ((PRO_NAME+"/zmn!queryOfFenye").equals(path)) {//哲盟账号申请登记查看
				return roleControl(arg0, r, "37");
			}else if ((PRO_NAME+"/zmn!delete").equals(path)) {//哲盟账号申请登记删除
				return roleControl(arg0, r, "38");
			}else if ((PRO_NAME+"/zmn!update").equals(path)) {//哲盟账号申请登记修改
				return roleControl(arg0, r, "39");
			}else if ((PRO_NAME+"/zmn!add").equals(path)) {//哲盟账号申请登记添加
				return roleControl(arg0, r, "40");
			}
			
			else if ((PRO_NAME+"/zmd!queryOfFenye").equals(path)) {//哲盟数据检查登记查看
				return roleControl(arg0, r, "41");
			}else if ((PRO_NAME+"/zmd!delete").equals(path)) {//哲盟数据检查登记删除
				return roleControl(arg0, r, "42");
			}else if ((PRO_NAME+"/zmd!update").equals(path)) {//哲盟数据检查登记修改
				return roleControl(arg0, r, "43");
			}else if ((PRO_NAME+"/zmd!add").equals(path)) {//哲盟数据检查登记添加
				return roleControl(arg0, r, "44");
			}
			//---------------------------系统组结束，系统设置开始----------------------------------------
		}
		close(); 
		return arg0.invoke(); 
	}
	
	private void close() {

	}
}
