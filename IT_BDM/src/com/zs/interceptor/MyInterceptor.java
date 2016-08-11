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
	
	private String addTimeline(String result,ActionInvocation arg0,Role r,String pid,Users u,String state,String tableName,String tableId) throws Exception {
		List<RolePermission> rps=ser.find("from RolePermission where RId=? and PId=?", new String[]{r.getRId(),pid});
		if(rps.size()>0){
			Timeline tl=new Timeline("tl"+NameOfDate.getNum(), u.getUNum(), new Timestamp(new Date().getTime()), state, tableName, tableId);
			ser.save(tl);
			close();
			return result;
		}else {
			response.sendRedirect("error2.jsp");
			close();
			return null;
		}
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
			String result=arg0.invoke();
			if ((PRO_NAME+"/fbd_asdl!queryOfFenyeAsdl").equals(path)) {//硬件组-ASDL-分页
				return addTimeline(result,arg0, r, "1", u, "查看", "FbdAsdl", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_asdl!deleteAsdl").equals(path)) {//硬件组-ASDL-删除
				return addTimeline(result,arg0, r, "3", u, "删除", "FbdAsdl", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_asdl!addAsdl").equals(path)) {//硬件组-ASDL-添加
				FbdAsdl asdl=(FbdAsdl) request.getAttribute("asdl");
				return addTimeline(result,arg0, r, "2", u, "添加", "FbdAsdl", asdl.getAsdlId());
			}else if ((PRO_NAME+"/fbd_asdl!updateAsdl").equals(path)) {//硬件组-ASDL-修改
				FbdAsdl asdl=(FbdAsdl) request.getAttribute("asdl");
				return addTimeline(result,arg0, r, "4", u, "修改", "FbdAsdl", asdl.getAsdlId());
			}else if ((PRO_NAME+"/fbd_m!queryOfFenyeM").equals(path)) {//硬件组-分拨点监控——分页
				return addTimeline(result,arg0, r, "5", u, "查看", "FbdMonitoring", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_m!deleteM").equals(path)) {//硬件组-分拨点监控——删除
				return addTimeline(result,arg0, r, "6", u, "删除", "FbdMonitoring", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_m!updateM").equals(path)) {//硬件组-分拨点监控——修改
				FbdMonitoring m=(FbdMonitoring) request.getAttribute("m");
				return addTimeline(result,arg0, r, "7", u, "修改", "FbdMonitoring", m.getMId());
			}else if ((PRO_NAME+"/fbd_m!addM").equals(path)) {//硬件组-分拨点监控——添加
				FbdMonitoring m=(FbdMonitoring) request.getAttribute("m");
				return addTimeline(result,arg0, r, "8", u, "添加", "FbdMonitoring", m.getMId());
			}else if ((PRO_NAME+"/fbd_c!queryOfFenyeC").equals(path)) {//硬件组-分拨点电脑——分页
				return addTimeline(result,arg0, r, "9", u, "查看", "FbdComputer", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_c!deleteC").equals(path)) {//硬件组-分拨点电脑——删除
				return addTimeline(result,arg0, r, "10", u, "删除", "FbdComputer", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_c!updateC").equals(path)) {//硬件组-分拨点电脑——修改
				FbdComputer c=(FbdComputer) request.getAttribute("c");
				return addTimeline(result,arg0, r, "11", u, "修改", "FbdComputer", c.getcId());
			}else if ((PRO_NAME+"/fbd_c!addC").equals(path)) {//硬件组-分拨点电脑——添加
				FbdComputer c=(FbdComputer) request.getAttribute("c");
				return addTimeline(result,arg0, r, "12", u, "添加", "FbdComputer", c.getcId());
			}else if ((PRO_NAME+"/fbd_ll!queryOfFenyeLL").equals(path)) {//硬件组-分拨点监控材料清单——查看
				return addTimeline(result,arg0, r, "13", u, "查看", "FbdListLink", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_ll!deleteLL").equals(path)) {//硬件组-分拨点监控材料清单——删除
				return addTimeline(result,arg0, r, "14", u, "删除", "FbdListLink", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_ll!updateLL").equals(path)) {//硬件组-分拨点监控材料清单——修改
				FbdListLink ll=(FbdListLink) request.getAttribute("ll");
				return addTimeline(result,arg0, r, "15", u, "修改", "FbdListLink", ll.getLlId());
			}else if ((PRO_NAME+"/fbd_ll!addLL").equals(path)) {//硬件组-分拨点监控材料清单——添加
				FbdListLink ll=(FbdListLink) request.getAttribute("ll");
				return addTimeline(result,arg0, r, "16", u, "添加", "FbdListLink", ll.getLlId());
			}else if ((PRO_NAME+"/sim!queryOfFenyeSIM").equals(path)) {//硬件组-SIM——查看
				return addTimeline(result,arg0, r, "17", u, "查看", "FbdListLink", request.getParameter("id"));
			}else if ((PRO_NAME+"/sim!deleteSIM").equals(path)) {//硬件组-SIM——删除
				return addTimeline(result,arg0, r, "18", u, "删除", "FbdListLink", request.getParameter("id"));
			}else if ((PRO_NAME+"/sim!updateSIM").equals(path)) {//硬件组-SIM——修改
				Sim sim=(Sim) request.getAttribute("sim");
				return addTimeline(result,arg0, r, "19", u, "修改", "FbdListLink", sim.getSId());
			}else if ((PRO_NAME+"/sim!addSIM").equals(path)) {//硬件组-SIM——添加
				Sim sim=(Sim) request.getAttribute("sim");
				return addTimeline(result,arg0, r, "20", u, "添加", "FbdListLink", sim.getSId());
			}else if ((PRO_NAME+"/goods!queryOfFenyeGoods").equals(path)) {//硬件组-内件收发——查看
				return addTimeline(result,arg0, r, "21", u, "查看", "Goods", request.getParameter("id"));
			}else if ((PRO_NAME+"/goods!deleteGoods").equals(path)) {//硬件组-内件收发——删除
				return addTimeline(result,arg0, r, "22", u, "删除", "Goods", request.getParameter("id"));
			}else if ((PRO_NAME+"/goods!updateGoods").equals(path)) {//硬件组-内件收发——修改
				Goods good=(Goods) request.getAttribute("good");
				return addTimeline(result,arg0, r, "23", u, "修改", "Goods", good.getGId());
			}else if ((PRO_NAME+"/goods!addGoods").equals(path)) {//硬件组-内件收发——添加
				Goods good=(Goods) request.getAttribute("good");
				return addTimeline(result,arg0, r, "24", u, "添加", "Goods", good.getGId());
			}else if ((PRO_NAME+"/go!queryOfFenyeGo").equals(path)) {//硬件组-外出登记——查看
				return addTimeline(result,arg0, r, "25", u, "查看", "GoOut", request.getParameter("id"));
			}else if ((PRO_NAME+"/go!deleteGo").equals(path)) {//硬件组-外出登记——删除
				return addTimeline(result,arg0, r, "26", u, "删除", "GoOut", request.getParameter("id"));
			}else if ((PRO_NAME+"/go!updateGo").equals(path)) {//硬件组-外出登记——修改
				GoOut go=(GoOut) request.getAttribute("go");
				return addTimeline(result,arg0, r, "27", u, "修改", "GoOut", go.getGoId());
			}else if ((PRO_NAME+"/go!addGo").equals(path)) {//硬件组-外出登记——添加
				GoOut go=(GoOut) request.getAttribute("go");
				return addTimeline(result,arg0, r, "28", u, "添加", "GoOut", go.getGoId());
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
