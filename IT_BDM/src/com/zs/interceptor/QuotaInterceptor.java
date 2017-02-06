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
	Object user;
	private static final String PRO_NAME="/IT_BDM";
	private Logger logger=Logger.getLogger(QuotaInterceptor.class);
	
	
	
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
	
	/**
	 * 保存时间轴
	 * @param u1
	 * @param state
	 * @param tableName
	 * @param tableId
	 * @throws Exception
	 */
	private void addTimeline(Users u,String state,String tableName,String tableId) throws Exception {
		Timeline tl=new Timeline("tl"+NameOfDate.getNum(), u.getUNum(), new Timestamp(new Date().getTime()), state, tableName, tableId);
		ser.save(tl);
	}
	
	
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		String result=arg0.invoke();
		allInit(arg0);
		
		//以下是时间轴的核心代码
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
				addTimeline(u, "查看", "硬件组-ASDL", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_asdl!deleteAsdl").equals(path)) {//硬件组-ASDL-删除
				addTimeline(u, "删除", "硬件组-ASDL", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_asdl!addAsdl").equals(path)) {//硬件组-ASDL-添加
				FbdAsdl asdl=(FbdAsdl) request.getAttribute("asdl");
				addTimeline(u, "添加", "硬件组-ASDL", asdl.getAsdlId());
			}else if ((PRO_NAME+"/fbd_asdl!updateAsdl").equals(path)) {//硬件组-ASDL-修改
				FbdAsdl asdl=(FbdAsdl) request.getAttribute("asdl");
				addTimeline(u, "修改", "硬件组-ASDL", asdl.getAsdlId());
			}
			
			else if ((PRO_NAME+"/fbd_m!queryOfFenyeM").equals(path)) {//硬件组-分拨点监控——分页
				addTimeline(u, "查看", "硬件组-分拨点监控", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_m!deleteM").equals(path)) {//硬件组-分拨点监控——删除
				addTimeline(u, "删除", "硬件组-分拨点监控", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_m!updateM").equals(path)) {//硬件组-分拨点监控——修改
				FbdMonitoring m=(FbdMonitoring) request.getAttribute("m");
				addTimeline(u, "修改", "硬件组-分拨点监控", m.getMId());
			}else if ((PRO_NAME+"/fbd_m!addM").equals(path)) {//硬件组-分拨点监控——添加
				FbdMonitoring m=(FbdMonitoring) request.getAttribute("m");
				addTimeline(u, "添加", "硬件组-分拨点监控", m.getMId());
			}
			
			else if ((PRO_NAME+"/fbd_c!queryOfFenyeC").equals(path)) {//硬件组-分拨点电脑——分页
				addTimeline(u, "查看", "硬件组-分拨点电脑", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_c!deleteC").equals(path)) {//硬件组-分拨点电脑——删除
				addTimeline(u, "删除", "硬件组-分拨点电脑", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_c!updateC").equals(path)) {//硬件组-分拨点电脑——修改
				FbdComputer c=(FbdComputer) request.getAttribute("c");
				addTimeline(u, "修改", "硬件组-分拨点电脑", c.getcId());
			}else if ((PRO_NAME+"/fbd_c!addC").equals(path)) {//硬件组-分拨点电脑——添加
				FbdComputer c=(FbdComputer) request.getAttribute("c");
				addTimeline(u, "添加", "硬件组-分拨点电脑", c.getcId());
			}
			
			else if ((PRO_NAME+"/fbd_ll!queryOfFenyeLL").equals(path)) {//硬件组-分拨点监控材料清单——查看
				addTimeline(u, "查看", "硬件组-分拨点监控材料清单", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_ll!deleteLL").equals(path)) {//硬件组-分拨点监控材料清单——删除
				addTimeline(u, "删除", "硬件组-分拨点监控材料清单", request.getParameter("id"));
			}else if ((PRO_NAME+"/fbd_ll!updateLL").equals(path)) {//硬件组-分拨点监控材料清单——修改
				FbdListLink ll=(FbdListLink) request.getAttribute("ll");
				addTimeline(u, "修改", "硬件组-分拨点监控材料清单", ll.getLlId());
			}else if ((PRO_NAME+"/fbd_ll!addLL").equals(path)) {//硬件组-分拨点监控材料清单——添加
				FbdListLink ll=(FbdListLink) request.getAttribute("ll");
				addTimeline(u, "添加", "硬件组-分拨点监控材料清单", ll.getLlId());
			}
			
			else if ((PRO_NAME+"/sim!queryOfFenyeSIM").equals(path)) {//硬件组-SIM——查看
				addTimeline(u, "查看", "硬件组-SIM", request.getParameter("id"));
			}else if ((PRO_NAME+"/sim!deleteSIM").equals(path)) {//硬件组-SIM——删除
				addTimeline(u, "删除", "硬件组-SIM", request.getParameter("id"));
			}else if ((PRO_NAME+"/sim!updateSIM").equals(path)) {//硬件组-SIM——修改
				Sim sim=(Sim) request.getAttribute("sim");
				addTimeline(u, "修改", "硬件组-SIM", sim.getSId());
			}else if ((PRO_NAME+"/sim!addSIM").equals(path)) {//硬件组-SIM——添加
				Sim sim=(Sim) request.getAttribute("sim");
				addTimeline(u, "添加", "硬件组-SIM", sim.getSId());
			}
			
			else if ((PRO_NAME+"/goods!queryOfFenyeGoods").equals(path)) {//硬件组-内件收发——查看
				addTimeline(u, "查看", "硬件组-内件收发", request.getParameter("id"));
			}else if ((PRO_NAME+"/goods!deleteGoods").equals(path)) {//硬件组-内件收发——删除
				addTimeline(u, "删除", "硬件组-内件收发", request.getParameter("id"));
			}else if ((PRO_NAME+"/goods!updateGoods").equals(path)) {//硬件组-内件收发——修改
				Goods good=(Goods) request.getAttribute("good");
				addTimeline(u, "修改", "硬件组-内件收发", good.getGId());
			}else if ((PRO_NAME+"/goods!addGoods").equals(path)) {//硬件组-内件收发——添加
				Goods good=(Goods) request.getAttribute("good");
				addTimeline(u, "添加", "硬件组-内件收发", good.getGId());
			}
			
			else if ((PRO_NAME+"/go!queryOfFenyeGo").equals(path)) {//硬件组-外出登记——查看
				addTimeline(u, "查看", "硬件组-外出登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/go!deleteGo").equals(path)) {//硬件组-外出登记——删除
				addTimeline(u, "删除", "硬件组-外出登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/go!updateGo").equals(path)) {//硬件组-外出登记——修改
				GoOut go=(GoOut) request.getAttribute("go");
				addTimeline(u, "修改", "硬件组-外出登记", go.getGoId());
			}else if ((PRO_NAME+"/go!addGo").equals(path)) {//硬件组-外出登记——添加
				GoOut go=(GoOut) request.getAttribute("go");
				addTimeline(u, "添加", "硬件组-外出登记", go.getGoId());
			}
			
			else if ((PRO_NAME+"/outRegister!queryOfFenye").equals(path)) {//硬件组-外出登记新表——查看
				addTimeline(u, "查看", "硬件组-外出登记新表", request.getParameter("id"));
			}else if ((PRO_NAME+"/outRegister!delete").equals(path)) {//硬件组-外出登记新表——删除
				addTimeline(u, "删除", "硬件组-外出登记新表", request.getParameter("id"));
			}else if ((PRO_NAME+"/outRegister!update").equals(path)) {//硬件组-外出登记新表——修改
				YjOut o=(YjOut) request.getAttribute("o");
				addTimeline(u, "修改", "硬件组-外出登记新表", o.getOId());
			}else if ((PRO_NAME+"/outRegister!add").equals(path)) {//硬件组-外出登记新表——添加
				YjOut o=(YjOut) request.getAttribute("o");
				addTimeline(u, "添加", "硬件组-外出登记新表", o.getOId());
			}
			
			//-------------------------------硬件组结束,系统组开始------------------------------------------------
			else if ((PRO_NAME+"/site!queryOfFenye").equals(path)) {//站点资料查询
				addTimeline(u, "查看", "系统组-站点资料", request.getParameter("id"));
			}else if ((PRO_NAME+"/site!delete").equals(path)) {//站点资料删除
				addTimeline(u, "删除", "系统组-站点资料", request.getParameter("id"));
			}else if ((PRO_NAME+"/site!update").equals(path)) {//站点资料修改
				XtSite site=(XtSite) request.getAttribute("site");
				addTimeline(u,"修改", "系统组-站点资料", site.getSId());
			}else if ((PRO_NAME+"/site!add").equals(path)) {//站点资料添加
				XtSite site=(XtSite) request.getAttribute("site");
				addTimeline(u, "添加", "系统组-站点资料", site.getSId());
			}
			
			else if ((PRO_NAME+"/branches!queryOfFenye").equals(path)) {//二级站点资料查看
				addTimeline(u, "查看", "系统组-二级站点资料", request.getParameter("id"));
			}else if ((PRO_NAME+"/branches!delete").equals(path)) {//二级站点资料删除
				addTimeline(u, "删除", "系统组-二级站点资料", request.getParameter("id"));
			}else if ((PRO_NAME+"/branches!update").equals(path)) {//二级站点资料修改
				XtBranches b=(XtBranches) request.getAttribute("b");
				addTimeline(u, "修改", "系统组-二级站点资料", b.getBId());
			}else if ((PRO_NAME+"/branches!add").equals(path)) {//二级站点资料添加
				XtBranches b=(XtBranches) request.getAttribute("b");
				addTimeline(u, "添加", "系统组-二级站点资料", b.getBId());
			}
			
			else if ((PRO_NAME+"/zmn!queryOfFenye").equals(path)) {//哲盟账号申请登记查看
				addTimeline(u, "查看", "系统组-哲盟账号申请登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/zmn!delete").equals(path)) {//哲盟账号申请登记删除
				addTimeline(u, "删除", "系统组-哲盟账号申请登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/zmn!update").equals(path)) {//哲盟账号申请登记修改
				XtZmNumber zmn=(XtZmNumber) request.getAttribute("zmn");
				addTimeline(u, "修改", "系统组-哲盟账号申请登记", zmn.getZmId());
			}else if ((PRO_NAME+"/zmn!add").equals(path)) {//哲盟账号申请登记添加
				XtZmNumber zmn=(XtZmNumber) request.getAttribute("zmn");
				addTimeline(u, "添加", "系统组-哲盟账号申请登记", zmn.getZmId());
			}
			
			else if ((PRO_NAME+"/zmd!queryOfFenye").equals(path)) {//哲盟数据检查登记查看
				addTimeline(u, "查看", "系统组-哲盟数据检查登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/zmd!delete").equals(path)) {//哲盟数据检查登记删除
				addTimeline(u, "删除", "系统组-哲盟数据检查登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/zmd!update").equals(path)) {//哲盟数据检查登记修改
				XtZmData zmd=(XtZmData) request.getAttribute("zmd");
				addTimeline(u, "修改", "系统组-哲盟数据检查登记", zmd.getDId());
			}else if ((PRO_NAME+"/zmd!add").equals(path)) {//哲盟数据检查登记添加
				XtZmData zmd=(XtZmData) request.getAttribute("zmd");
				addTimeline(u, "添加", "系统组-哲盟数据检查登记", zmd.getDId());
			}
			
			else if ((PRO_NAME+"/pdachange!queryOfFenye").equals(path)) {//巴枪条码变更登记查看
				addTimeline(u, "查看", "系统组-巴枪条码变更登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/pdachange!delete").equals(path)) {//巴枪条码变更登记删除
				addTimeline(u, "删除", "系统组-巴枪条码变更登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/pdachange!update").equals(path)) {//巴枪条码变更登记修改
				XtPdaChange pda=(XtPdaChange) request.getAttribute("pda");
				addTimeline(u, "修改", "系统组-巴枪条码变更登记", pda.getCId());
			}else if ((PRO_NAME+"/pdachange!add").equals(path)) {//巴枪条码变更登记添加
				XtPdaChange pda=(XtPdaChange) request.getAttribute("pda");
				addTimeline(u, "添加", "系统组-巴枪条码变更登记", pda.getCId());
			}
			
			else if ((PRO_NAME+"/bqrepair!queryOfFenye").equals(path)) {//设备维修登记查看
				addTimeline(u, "查看", "系统组-设备维修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqrepair!delete").equals(path)) {//设备维修登记删除
				addTimeline(u, "删除", "系统组-设备维修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqrepair!update").equals(path)) {//设备维修登记修改
				XtBqRepair bq=(XtBqRepair) request.getAttribute("bq");
				addTimeline(u, "修改", "系统组-设备维修登记", bq.getRId());
			}else if ((PRO_NAME+"/bqrepair!add").equals(path)) {//设备维修登记添加
				XtBqRepair bq=(XtBqRepair) request.getAttribute("bq");
				addTimeline(u, "添加", "系统组-设备维修登记", bq.getRId());
			}			
			
			else if ((PRO_NAME+"/hitches!queryOfFenye").equals(path)) {//哲盟异常登记查看
				addTimeline(u, "查看", "系统组-哲盟异常登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/hitches!delete").equals(path)) {//哲盟异常登记删除
				addTimeline(u, "删除", "系统组-哲盟异常登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/hitches!update").equals(path)) {//哲盟异常登记修改
				XtHitches h=(XtHitches) request.getAttribute("h");
				addTimeline(u, "修改", "系统组-哲盟异常登记", h.getHId());
			}else if ((PRO_NAME+"/hitches!add").equals(path)) {//哲盟异常登记添加
				XtHitches h=(XtHitches) request.getAttribute("h");
				addTimeline(u, "添加", "系统组-哲盟异常登记", h.getHId());
			}
			
			else if ((PRO_NAME+"/bqq!queryOfFenye").equals(path)) {//BQQ账号登记查看
				addTimeline(u, "查看", "系统组-BQQ账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqq!delete").equals(path)) {//BQQ账号登记删除
				addTimeline(u, "删除", "系统组-BQQ账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqq!update").equals(path)) {//BQQ账号登记修改
				XtBqq b=(XtBqq) request.getAttribute("b");
				addTimeline(u, "修改", "系统组-BQQ账号登记", b.getBId());
			}else if ((PRO_NAME+"/bqq!add").equals(path)) {//BQQ账号登记添加
				XtBqq b=(XtBqq) request.getAttribute("b");
				addTimeline(u, "添加", "系统组-BQQ账号登记", b.getBId());
			}
			
			else if ((PRO_NAME+"/netImo!queryOfFenye").equals(path)) {//网点IMO登记查看
				addTimeline(u, "查看", "系统组-网点IMO登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/netImo!delete").equals(path)) {//网点IMO登记删除
				addTimeline(u, "删除", "系统组-网点IMO登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/netImo!update").equals(path)) {//网点IMO登记修改
				XtNetImo imo=(XtNetImo) request.getAttribute("imo");
				addTimeline(u, "修改", "系统组-网点IMO登记", imo.getIId());
			}else if ((PRO_NAME+"/netImo!add").equals(path)) {//网点IMO登记添加
				XtNetImo imo=(XtNetImo) request.getAttribute("imo");
				addTimeline(u, "添加", "系统组-网点IMO登记", imo.getIId());
			}
			
			else if ((PRO_NAME+"/project!queryOfFenye").equals(path)) {//系统开发登记查看
				addTimeline(u, "查看", "系统组-系统开发登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/project!delete").equals(path)) {//系统开发登记删除
				addTimeline(u, "删除", "系统组-系统开发登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/project!update").equals(path)) {//系统开发登记修改
				XtProject p=(XtProject) request.getAttribute("p");
				addTimeline(u, "修改", "系统组-系统开发登记", p.getPId());
			}else if ((PRO_NAME+"/project!add").equals(path)) {//系统开发登记添加
				XtProject p=(XtProject) request.getAttribute("p");
				addTimeline(u, "添加", "系统组-系统开发登记", p.getPId());
			}
			
			//-----------------------桌面组开始------------------------------------------------------------
			else if ((PRO_NAME+"/vpn!queryOfFenye").equals(path)) {//VPN查看
				addTimeline(u, "查看", "桌面组-VPN管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/vpn!delete").equals(path)) {//VPN删除
				addTimeline(u, "删除", "桌面组-VPN管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/vpn!update").equals(path)) {//VPN修改
				ZmVpn vpn=(ZmVpn) request.getAttribute("vpn");
				addTimeline(u, "修改", "桌面组-VPN管理", vpn.getVId());
			}else if ((PRO_NAME+"/vpn!add").equals(path)) {//VPN添加
				ZmVpn vpn=(ZmVpn) request.getAttribute("vpn");
				addTimeline(u, "添加", "桌面组-VPN管理", vpn.getVId());
			}
			
			else if ((PRO_NAME+"/by!queryOfFenye").equals(path)) {//IMO账号登记查看
				addTimeline(u, "查看", "桌面组-IMO账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/by!delete").equals(path)) {//IMO账号登记删除
				addTimeline(u, "删除", "桌面组-IMO账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/by!update").equals(path)) {//IMO账号登记修改
				ZmByNumber by=(ZmByNumber) request.getAttribute("by");
				addTimeline(u, "修改", "桌面组-IMO账号登记", by.getById());
			}else if ((PRO_NAME+"/by!add").equals(path)) {//IMO账号登记添加
				ZmByNumber by=(ZmByNumber) request.getAttribute("by");
				addTimeline(u, "添加", "桌面组-IMO账号登记", by.getById());
			}
			
			else if ((PRO_NAME+"/mail!queryOfFenye").equals(path)) {//邮箱账号登记查看
				addTimeline(u, "查看", "桌面组-邮箱账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/mail!delete").equals(path)) {//邮箱账号登记删除
				addTimeline(u, "删除", "桌面组-邮箱账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/mail!update").equals(path)) {//邮箱账号登记修改
				ZmMail m=(ZmMail) request.getAttribute("m");
				addTimeline(u, "修改", "桌面组-邮箱账号登记", m.getMId());
			}else if ((PRO_NAME+"/mail!add").equals(path)) {//邮箱账号登记添加
				ZmMail m=(ZmMail) request.getAttribute("m");
				addTimeline(u, "添加", "桌面组-邮箱账号登记", m.getMId());
			}
			
			else if ((PRO_NAME+"/oa!queryOfFenye").equals(path)) {//OA账号登记查看
				addTimeline(u, "查看", "桌面组-OA账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/oa!delete").equals(path)) {//OA账号登记删除
				addTimeline(u, "删除", "桌面组-OA账号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/oa!update").equals(path)) {//OA账号登记修改
				ZmOaNumber oa=(ZmOaNumber) request.getAttribute("oa");
				addTimeline(u, "修改", "桌面组-OA账号登记", oa.getOId());
			}else if ((PRO_NAME+"/oa!add").equals(path)) {//OA账号登记添加
				ZmOaNumber oa=(ZmOaNumber) request.getAttribute("oa");
				addTimeline(u, "添加", "桌面组-OA账号登记", oa.getOId());
			}
			
			else if ((PRO_NAME+"/print!queryOfFenye").equals(path)) {//打印机登记查看
				addTimeline(u, "查看", "桌面组-打印机登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/print!delete").equals(path)) {//打印机登记删除
				addTimeline(u, "删除", "桌面组-打印机登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/print!update").equals(path)) {//打印机登记修改
				ZmPrinter p=(ZmPrinter) request.getAttribute("p");
				addTimeline(u, "修改", "桌面组-打印机登记", p.getPId());
			}else if ((PRO_NAME+"/print!add").equals(path)) {//打印机登记添加
				ZmPrinter p=(ZmPrinter) request.getAttribute("p");
				addTimeline(u, "添加", "桌面组-打印机登记", p.getPId());
			}
			
			else if ((PRO_NAME+"/computer!queryOfFenye").equals(path)) {//电脑登记查看
				addTimeline(u, "查看", "桌面组-管理电脑统计", request.getParameter("id"));
			}else if ((PRO_NAME+"/computer!delete").equals(path)) {//电脑登记删除
				addTimeline(u, "删除", "桌面组-管理电脑统计", request.getParameter("id"));
			}else if ((PRO_NAME+"/computer!update").equals(path)) {//电脑登记修改
				ZmComputer c=(ZmComputer) request.getAttribute("c");
				addTimeline(u, "修改", "桌面组-管理电脑统计", c.getCId());
			}else if ((PRO_NAME+"/computer!add").equals(path)) {//电脑登记添加
				ZmComputer c=(ZmComputer) request.getAttribute("c");
				addTimeline(u, "添加", "桌面组-管理电脑统计", c.getCId());
			}
			
			else if ((PRO_NAME+"/bq!queryOfFenye").equals(path)) {//小仓巴枪电脑登记查看
				addTimeline(u, "查看", "桌面组-小仓巴枪电脑登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bq!delete").equals(path)) {//小仓巴枪电脑登记删除
				addTimeline(u, "删除", "桌面组-小仓巴枪电脑登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bq!update").equals(path)) {//小仓巴枪电脑登记修改
				ZmBq bq=(ZmBq) request.getAttribute("bq");
				addTimeline(u, "修改", "桌面组-小仓巴枪电脑登记", bq.getBId());
			}else if ((PRO_NAME+"/bq!add").equals(path)) {//小仓巴枪电脑登记添加
				ZmBq bq=(ZmBq) request.getAttribute("bq");
				addTimeline(u, "添加", "桌面组-小仓巴枪电脑登记", bq.getBId());
			}
			
			else if ((PRO_NAME+"/wifi!queryOfFenye").equals(path)) {//园区wifi管理查看
				addTimeline(u, "查看", "桌面组-园区wifi管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/wifi!delete").equals(path)) {//园区wifi管理删除
				addTimeline(u, "删除", "桌面组-园区wifi管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/wifi!update").equals(path)) {//园区wifi管理修改
				ZmWifi wifi=(ZmWifi) request.getAttribute("wifi");
				addTimeline(u, "修改", "桌面组-园区wifi管理", wifi.getWId());
			}else if ((PRO_NAME+"/wifi!add").equals(path)) {//园区wifi管理添加
				ZmWifi wifi=(ZmWifi) request.getAttribute("wifi");
				addTimeline(u, "添加", "桌面组-园区wifi管理", wifi.getWId());
			}
			
			else if ((PRO_NAME+"/phone!queryOfFenye").equals(path)) {//电话线分布查看
				addTimeline(u, "查看", "桌面组-电话线分布", request.getParameter("id"));
			}else if ((PRO_NAME+"/phone!delete").equals(path)) {//电话线分布删除
				addTimeline(u, "删除", "桌面组-电话线分布", request.getParameter("id"));
			}else if ((PRO_NAME+"/phone!update").equals(path)) {//电话线分布修改
				ZmPhoneLine phone=(ZmPhoneLine) request.getAttribute("phone");
				addTimeline(u, "修改", "桌面组-电话线分布", phone.getPId());
			}else if ((PRO_NAME+"/phone!add").equals(path)) {//电话线分布添加
				ZmPhoneLine phone=(ZmPhoneLine) request.getAttribute("phone");
				addTimeline(u, "添加", "桌面组-电话线分布", phone.getPId());
			}
			
			else if ((PRO_NAME+"/call!queryOfFenye").equals(path)) {//总部呼叫系统查看
				addTimeline(u, "查看", "桌面组-总部呼叫系统", request.getParameter("id"));
			}else if ((PRO_NAME+"/call!delete").equals(path)) {//总部呼叫系统删除
				addTimeline(u, "删除", "桌面组-总部呼叫系统", request.getParameter("id"));
			}else if ((PRO_NAME+"/call!update").equals(path)) {//总部呼叫系统修改
				ZmCall call=(ZmCall) request.getAttribute("call");
				addTimeline(u, "修改", "桌面组-总部呼叫系统", call.getCId());
			}else if ((PRO_NAME+"/call!add").equals(path)) {//总部呼叫系统添加
				ZmCall call=(ZmCall) request.getAttribute("call");
				addTimeline(u, "添加", "桌面组-总部呼叫系统", call.getCId());
			}
			
			else if ((PRO_NAME+"/netCall!queryOfFenye").equals(path)) {//网点呼叫系统查看
				addTimeline(u, "查看", "桌面组-网点呼叫系统", request.getParameter("id"));
			}else if ((PRO_NAME+"/netCall!delete").equals(path)) {//网点呼叫系统删除
				addTimeline(u, "删除", "桌面组-网点呼叫系统", request.getParameter("id"));
			}else if ((PRO_NAME+"/netCall!update").equals(path)) {//网点呼叫系统修改
				ZmNetCall c=(ZmNetCall) request.getAttribute("c");
				addTimeline(u, "修改", "桌面组-网点呼叫系统", c.getNId());
			}else if ((PRO_NAME+"/netCall!add").equals(path)) {//网点呼叫系统添加
				ZmNetCall c=(ZmNetCall) request.getAttribute("c");
				addTimeline(u, "添加", "桌面组-网点呼叫系统", c.getNId());
			}
			
			//------------------------维护组-----------------------------------------------------
			else if ((PRO_NAME+"/device!queryOfFenye").equals(path)) {//操作设备巡检查看
				addTimeline(u, "查看", "维护组-操作设备巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/device!delete").equals(path)) {//操作设备巡检删除
				addTimeline(u, "删除", "维护组-操作设备巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/device!update").equals(path)) {//操作设备巡检修改
				WhDeviceScout device=(WhDeviceScout) request.getAttribute("device");
				addTimeline(u, "修改", "维护组-操作设备巡检", device.getDId());
			}else if ((PRO_NAME+"/device!add").equals(path)) {//操作设备巡检添加
				WhDeviceScout device=(WhDeviceScout) request.getAttribute("device");
				addTimeline(u, "添加", "维护组-操作设备巡检", device.getDId());
			}
			
			else if ((PRO_NAME+"/monitor!queryOfFenye").equals(path)) {//监控设备巡检查看
				addTimeline(u, "查看", "维护组-监控设备巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/monitor!delete").equals(path)) {//监控设备巡检删除
				addTimeline(u, "删除", "维护组-监控设备巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/monitor!update").equals(path)) {//监控设备巡检修改
				WhMonitorScout moni=(WhMonitorScout) request.getAttribute("moni");
				addTimeline(u, "修改", "维护组-监控设备巡检", moni.getMId());
			}else if ((PRO_NAME+"/monitor!add").equals(path)) {//监控设备巡检添加
				WhMonitorScout moni=(WhMonitorScout) request.getAttribute("moni");
				addTimeline(u, "添加", "维护组-监控设备巡检", moni.getMId());
			}
			
			else if ((PRO_NAME+"/threeMeet!queryOfFenye").equals(path)) {//三楼会议室巡检查看
				addTimeline(u, "查看", "维护组-三楼会议室巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/threeMeet!delete").equals(path)) {//三楼会议室巡检删除
				addTimeline(u, "删除", "维护组-三楼会议室巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/threeMeet!update").equals(path)) {//三楼会议室巡检修改
				WhThreeMeetingScout tm=(WhThreeMeetingScout) request.getAttribute("tm");
				addTimeline(u, "修改", "维护组-三楼会议室巡检", tm.getTId());
			}else if ((PRO_NAME+"/threeMeet!add").equals(path)) {//三楼会议室巡检添加
				WhThreeMeetingScout tm=(WhThreeMeetingScout) request.getAttribute("tm");
				addTimeline(u, "添加", "维护组-三楼会议室巡检", tm.getTId());
			}
			
			else if ((PRO_NAME+"/meet!queryOfFenye").equals(path)) {//新仓仓库巡检查看
				addTimeline(u, "查看", "维护组-新仓仓库巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/meet!delete").equals(path)) {//新仓仓库巡检删除
				addTimeline(u, "删除", "维护组-新仓仓库巡检", request.getParameter("id"));
			}else if ((PRO_NAME+"/meet!update").equals(path)) {//新仓仓库巡检修改
				WhMeetingScout m=(WhMeetingScout) request.getAttribute("m");
				addTimeline(u, "修改", "维护组-新仓仓库巡检", m.getMId());
			}else if ((PRO_NAME+"/meet!add").equals(path)) {//新仓仓库巡检添加
				WhMeetingScout m=(WhMeetingScout) request.getAttribute("m");
				addTimeline(u, "添加", "维护组-新仓仓库巡检", m.getMId());
			}
			
			else if ((PRO_NAME+"/massage!queryOfFenye").equals(path)) {//巴枪维修登记查看
				addTimeline(u, "查看", "维护组-巴枪维修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/massage!delete").equals(path)) {//巴枪维修登记删除
				addTimeline(u, "删除", "维护组-巴枪维修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/massage!update").equals(path)) {//巴枪维修登记修改
				WhMassageReceive massage=(WhMassageReceive) request.getAttribute("massage");
				addTimeline(u, "修改", "维护组-巴枪维修登记", massage.getMId());
			}else if ((PRO_NAME+"/massage!add").equals(path)) {//巴枪维修登记添加
				WhMassageReceive massage=(WhMassageReceive) request.getAttribute("massage");
				addTimeline(u, "添加", "维护组-巴枪维修登记", massage.getMId());
			}
			
			else if ((PRO_NAME+"/exp!queryOfFenye").equals(path)) {//快递单号登记查看
				addTimeline(u, "查看", "维护组-快递单号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/exp!delete").equals(path)) {//快递单号登记删除
				addTimeline(u, "删除", "维护组-快递单号登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/exp!update").equals(path)) {//快递单号登记修改
				WhExpressList el=(WhExpressList) request.getAttribute("el");
				addTimeline(u, "修改", "维护组-快递单号登记", el.getEId());
			}else if ((PRO_NAME+"/exp!add").equals(path)) {//快递单号登记添加
				WhExpressList el=(WhExpressList) request.getAttribute("el");
				addTimeline(u, "添加", "维护组-快递单号登记", el.getEId());
			}
			
			else if ((PRO_NAME+"/bqDraw!queryOfFenye").equals(path)) {//巴枪领取登记查看
				addTimeline(u, "查看", "维护组-巴枪领取登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqDraw!delete").equals(path)) {//巴枪领取登记删除
				addTimeline(u, "删除", "维护组-巴枪领取登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/bqDraw!update").equals(path)) {//巴枪领取登记修改
				WhBqDraw bd=(WhBqDraw) request.getAttribute("bd");
				addTimeline(u, "修改", "维护组-巴枪领取登记", bd.getMId());
			}else if ((PRO_NAME+"/bqDraw!add").equals(path)) {//巴枪领取登记添加
				WhBqDraw bd=(WhBqDraw) request.getAttribute("bd");
				addTimeline(u, "添加", "维护组-巴枪领取登记", bd.getMId());
			}
			
			else if ((PRO_NAME+"/out!queryOfFenye").equals(path)) {//设备外修登记查看
				addTimeline(u, "查看", "维护组-设备外修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/out!delete").equals(path)) {//设备外修登记删除
				addTimeline(u, "删除", "维护组-设备外修登记", request.getParameter("id"));
			}else if ((PRO_NAME+"/out!update").equals(path)) {//设备外修登记修改
				WhOutRepair ot=(WhOutRepair) request.getAttribute("ot");
				addTimeline(u, "修改", "维护组-设备外修登记", ot.getOId());
			}else if ((PRO_NAME+"/out!add").equals(path)) {//设备外修登记添加
				WhOutRepair ot=(WhOutRepair) request.getAttribute("ot");
				addTimeline(u, "添加", "维护组-设备外修登记", ot.getOId());
			}
			
			//---------------------------桌面组结束，系统设置开始----------------------------------------
			else if ((PRO_NAME+"/users!queryOfFenye").equals(path)) {//用户管理查看
				addTimeline(u, "查看", "系统管理-用户管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/users!delete").equals(path)) {//用户管理删除
				addTimeline(u, "删除", "系统管理-用户管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/users!update").equals(path)) {//用户管理修改
				Users users=(Users) request.getAttribute("u");
				addTimeline(u, "修改", "系统管理-用户管理", users.getUNum());
			}else if ((PRO_NAME+"/users!add").equals(path)) {//用户管理添加
				Users users=(Users) request.getAttribute("u");
				addTimeline(u, "添加", "系统管理-用户管理", users.getUNum());
			}
			
			else if ((PRO_NAME+"/role!queryOfFenye").equals(path)) {//角色管理查看
				addTimeline(u, "查看", "系统管理-角色管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/role!delete").equals(path)) {//角色管理删除
				addTimeline(u, "删除", "系统管理-角色管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/role!update").equals(path)) {//角色管理修改
				Role role=(Role) request.getAttribute("r");
				addTimeline(u, "修改", "系统管理-角色管理", role.getRId());
			}else if ((PRO_NAME+"/role!add").equals(path)) {//角色管理添加
				Role role=(Role) request.getAttribute("r");
				addTimeline(u, "添加", "系统管理-角色管理", role.getRId());
			}
			//---------------------------个人中心开始----------------------------------------
			
			else if ((PRO_NAME+"/timeline!query").equals(path)) {//时间轴查看
				addTimeline(u, "查看", "个人中心-时间轴", request.getParameter("id"));
			}
			
			else if ((PRO_NAME+"/information!query").equals(path)) {//消息提醒查看
				addTimeline(u, "查看", "个人中心-消息提醒", request.getParameter("id"));
			
			}else if ((PRO_NAME+"/resetPass!reset").equals(path)) {//密码修改
				Users user=(Users) request.getAttribute("user");
				addTimeline(u, "修改", "个人中心-密码修改", user.getUNum());
			}else if ((PRO_NAME+"/resetPass!updateInfo").equals(path)) {//密码修改
				Users user=(Users) request.getAttribute("user");
				addTimeline(u, "修改", "个人中心-个人信息修改", user.getUNum());
			}
			
			//------------------------------通讯录---------------------------------------
			else if ((PRO_NAME+"/section!queryOfFenyeQb").equals(path)) {//区部信息查看
				addTimeline(u, "查看", "通讯录-区部信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!deleteQb").equals(path)) {//区部信息删除
				addTimeline(u, "删除", "通讯录-区部信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!updateQb").equals(path)) {//区部信息修改
				SectionQubu qb=(SectionQubu) request.getAttribute("qb");
				addTimeline(u, "修改", "通讯录-区部信息", qb.getQbId());
			}else if ((PRO_NAME+"/section!addQb").equals(path)) {//区部信息添加
				SectionQubu qb=(SectionQubu) request.getAttribute("qb");
				addTimeline(u, "添加", "通讯录-区部信息", qb.getQbId());
			}
			
			else if ((PRO_NAME+"/section!queryOfFenyeFb").equals(path)) {//分部信息查看
				addTimeline(u, "查看", "通讯录-分部信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!deleteFb").equals(path)) {//分部信息删除
				addTimeline(u, "删除", "通讯录-分部信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!分部信息").equals(path)) {//分部信息修改
				SectionFenbu fb=(SectionFenbu) request.getAttribute("fb");
				addTimeline(u, "修改", "通讯录-分部信息", fb.getFbId());
			}else if ((PRO_NAME+"/section!addFb").equals(path)) {//分部信息添加
				SectionFenbu fb=(SectionFenbu) request.getAttribute("fb");
				addTimeline(u, "添加", "通讯录-分部信息", fb.getFbId());
			}
			
			else if ((PRO_NAME+"/section!queryOfFenyeFbd").equals(path)) {//分拨点信息查看
				addTimeline(u, "查看", "通讯录-分拨点信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!deleteFbd").equals(path)) {//分拨点信息删除
				addTimeline(u, "删除", "通讯录-分拨点信息", request.getParameter("id"));
			}else if ((PRO_NAME+"/section!updateFbd").equals(path)) {//分拨点信息修改
				SectionFenbodian fbd=(SectionFenbodian) request.getAttribute("fbd");
				addTimeline(u, "修改", "通讯录-分拨点信息", fbd.getFbdId());
			}else if ((PRO_NAME+"/section!addFbd").equals(path)) {//分拨点信息添加
				SectionFenbodian fbd=(SectionFenbodian) request.getAttribute("fbd");
				addTimeline(u, "添加", "通讯录-分拨点信息", fbd.getFbdId());
			}
			//-------公司内部--------
			else if ((PRO_NAME+"/cs!query").equals(path) || (PRO_NAME+"/cs!queryInfor").equals(path)) {//公司组织架构查看
				addTimeline(u, "查看", "通讯录-公司内部组织架构", request.getParameter("id"));
			}else if ((PRO_NAME+"/cs!myDelete").equals(path)) {//公司组织架构删除
				addTimeline(u, "删除", "通讯录-公司内部组织架构", request.getParameter("id"));
			}else if ((PRO_NAME+"/cs!update").equals(path)) {//公司组织架构修改
				CompanySection cs=(CompanySection) request.getAttribute("cs");
				addTimeline(u, "修改", "通讯录-公司内部组织架构", cs.getCsId());
			}else if ((PRO_NAME+"/cs!add").equals(path)) {//公司组织架构添加
				CompanySection cs=(CompanySection) request.getAttribute("cs");
				addTimeline(u, "添加", "通讯录-公司内部组织架构", cs.getCsId());
			}
			
			//------------------------故障报修处理跟进系统----------------------------
			//-------------------------------故障管理--------------------
			
			else if ((PRO_NAME+"/daManager!queryOfFenye").equals(path)) {//故障报修管理查看
				addTimeline(u, "查看", "故障报修管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/daManager!delete").equals(path)) {//故障报修管理删除
				addTimeline(u, "删除", "故障报修管理", request.getParameter("id"));
			}else if ((PRO_NAME+"/daManager!update").equals(path)) {//故障报修管理修改
				DaPerform p1=(DaPerform) request.getAttribute("p1");
				DaPerform p2=(DaPerform) request.getAttribute("p2");
				addTimeline(u, "修改", "故障报修管理", p1.getPId());
				addTimeline(u, "修改", "故障报修管理", p2.getPId());
			}else if ((PRO_NAME+"/daManager!add").equals(path)) {//故障报修管理添加
				DaDemand d=(DaDemand) request.getAttribute("d");
				DaPerform p=(DaPerform) request.getAttribute("p");
				addTimeline(u, "添加", "故障报修管理", d.getDId());
				addTimeline(u, "添加", "故障报修管理", p.getPId());
			}
			
			else if ((PRO_NAME+"/count!queryOfFenye").equals(path)) {//故障报修统计——客服统计查看
				addTimeline(u, "查看", "故障报修统计——客服", request.getParameter("id"));
			}
			
			else if ((PRO_NAME+"/countZy!queryOfFenye").equals(path)) {//故障报修统计——专员统计查看
				addTimeline(u, "查看", "故障报修统计——专员", request.getParameter("id"));
			}
			
			else if ((PRO_NAME+"/handle!queryOfFenye").equals(path)) {//故障报修处理查看
				addTimeline(u, "查看", "故障报修处理", request.getParameter("id"));
			}else if ((PRO_NAME+"/handle!delete").equals(path)) {//故障报修处理删除
				addTimeline(u, "删除", "故障报修处理", request.getParameter("id"));
			}else if ((PRO_NAME+"/handle!update").equals(path)) {//故障报修处理修改
				DaPerform p=(DaPerform) request.getAttribute("p");
				addTimeline(u, "修改", "故障报修处理", p.getPId());
			}else if ((PRO_NAME+"/handle!add").equals(path)) {//故障报修处理添加
				DaPerform p=(DaPerform) request.getAttribute("p");
				addTimeline(u, "添加", "故障报修处理", p.getPId());
			}
			
			else if ((PRO_NAME+"/auditing!queryOfFenye").equals(path)) {//故障报修转发审核查看
				addTimeline(u, "查看", "故障报修转发审核", request.getParameter("id"));
			}else if ((PRO_NAME+"/auditing!delete").equals(path)) {//故障报修转发审核删除
				addTimeline(u, "删除", "故障报修转发审核", request.getParameter("id"));
			}else if ((PRO_NAME+"/auditing!update").equals(path)) {//故障报修转发审核修改
				DaPerform p1=(DaPerform) request.getAttribute("p1");
				addTimeline(u, "修改", "故障报修转发审核", p1.getPId());
			}else if ((PRO_NAME+"/auditing!add").equals(path)) {//故障报修转发审核添加
				addTimeline(u, "添加", "故障报修转发审核","");
			}
		}
		close(); 
		return result; 
	}
	
	private void close() {

	}
}
