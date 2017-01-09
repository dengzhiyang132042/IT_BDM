<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/black/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<style type="text/css">
	a{
		color: #FFAAFF;
	}
	
	</style>
	
	<script type="text/javascript">
	$(function(){
		//$('#tt').tree('collapseAll');
	});
	</script>
	
  </head>
  
<body style="padding: 0px;">

<div class="easyui-accordion" style="width:100%;" data-options="fillSpace:true,fit: true,animate: true,selected:false">
	<div title="基础数据登记" data-options="iconCls:'icon-add'" style="overflow:auto;padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
        <li><span>信息与流程管理部</span>
        	<ul>
        		<li><span>系统组</span>
        			<ul>
						<li><span><a href="<%=path %>/site!queryOfFenye?cz=yes" target="right">站点资料登记</a></span></li>
						<li><span><a href="<%=path %>/branches!queryOfFenye?cz=yes" target="right">二级站点登记</a></span></li>
						<li><span><a href="<%=path %>/zmn!queryOfFenye?cz=yes" target="right">哲盟职能用户</a></span></li>
						<li><span><a href="<%=path %>/zmd!queryOfFenye?cz=yes" target="right">哲盟数据检查</a></span></li>
						<li><span><a href="<%=path %>/pdachange!queryOfFenye?cz=yes" target="right">巴枪条码变更</a></span></li>
						<li><span><a href="<%=path %>/bqrepair!queryOfFenye?cz=yes" target="right">设备维修登记</a></span></li>
<!--						<li><span><a href="<%=path %>/pdaloss!queryOfFenye?cz=yes" target="right">巴枪挂失登记</a></span></li>     -->
						<li><span><a href="<%=path %>/hitches!queryOfFenye?cz=yes" target="right">哲盟异常登记</a></span></li>
						<li><span><a href="<%=path %>/bqq!queryOfFenye?cz=yes" target="right">公司BQQ登记</a></span></li>
						<li><span><a href="<%=path %>/netImo!queryOfFenye?cz=yes" target="right">网点IMO登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">系统开发登记</a></span></li>
        			</ul>
        		</li>
        		<li><span>硬件组</span>
        			<ul>
						<li><span><a href="<%=path %>/fbd_asdl!queryOfFenyeAsdl?cz=yes" target="right">ASDL宽带登记</a></span></li>
						<li><span><a href="<%=path %>/fbd_m!queryOfFenyeM?cz=yes" target="right">监控信息登记</a></span></li>
						<li><span><a href="<%=path %>/fbd_c!queryOfFenyeC?cz=yes" target="right">电脑信息登记</a></span></li>
						<li><span><a href="<%=path %>/fbd_ll!queryOfFenyeLL?cz=yes" target="right">监控材料清单</a></span></li>
						<li><span><a href="<%=path %>/sim!queryOfFenyeSIM?cz=yes" target="right">SIM费用报销</a></span></li>
						<li><span><a href="<%=path %>/goods!queryOfFenyeGoods?cz=yes" target="right">内件收发登记</a></span></li>
						<li><span><a href="<%=path %>/go!queryOfFenyeGo?cz=yes" target="right">员工外出登记</a></span></li>
						<li><span><a href="<%=path %>/outRegister!queryOfFenye?cz=yes" target="right">外出登记新表</a></span></li>        			
        			</ul>
        		</li>
        		<li><span>桌面组</span>
        			<ul>
						<li><span><a href="<%=path %>/vpn!queryOfFenye?cz=yes" target="right">VPN账号登记</a></span></li>
						<li><span><a href="<%=path %>/by!queryOfFenye?cz=yes" target="right">IMO账号登记</a></span></li>
						<li><span><a href="<%=path %>/mail!queryOfFenye?cz=yes" target="right">邮箱账号登记</a></span></li>
						<li><span><a href="<%=path %>/computer!queryOfFenye?cz=yes" target="right">公司电脑信息</a></span></li>
						<li><span><a href="<%=path %>/bq!queryOfFenye?cz=yes" target="right">骏达设备登记</a></span></li>
						<li><span><a href="<%=path %>/wifi!queryOfFenye?cz=yes" target="right">公司wifi管理</a></span></li>
						<li><span><a href="<%=path %>/call!queryOfFenye?cz=yes" target="right">总部呼叫系统</a></span></li>
						<li><span><a href="<%=path %>/netCall!queryOfFenye?cz=yes" target="right">网点呼叫系统</a></span></li>
						<li><span><a href="<%=path %>/oa!queryOfFenye?cz=yes" target="right">oa账号登记</a></span></li>
						<li><span><a href="<%=path %>/print!queryOfFenye?cz=yes" target="right">打印机登记</a></span></li>
						<li><span><a href="<%=path %>/phone!queryOfFenye?cz=yes" target="right">电话线分布</a></span></li>
        			</ul>
        		</li>
        		<li><span>维护组</span>
        			<ul>
						<li><span><a href="<%=path %>/device!queryOfFenye?cz=yes" target="right">操作设备巡检</a></span></li>
						<li><span><a href="<%=path %>/monitor!queryOfFenye?cz=yes" target="right">监控设备巡检</a></span></li>
						<li><span><a href="<%=path %>/threeMeet!queryOfFenye?cz=yes" target="right">观澜3楼巡检</a></span></li>
						<li><span><a href="<%=path %>/meet!queryOfFenye?cz=yes" target="right">新仓仓库巡检</a></span></li>
						<li><span><a href="<%=path %>/massage!queryOfFenye?cz=yes" target="right">巴枪维修登记</a></span></li>
						<li><span><a href="<%=path %>/exp!queryOfFenye?cz=yes" target="right">快递单号登记</a></span></li>
						<li><span><a href="<%=path %>/bqDraw!queryOfFenye?cz=yes" target="right">巴枪领取登记</a></span></li>
						<li><span><a href="<%=path %>/out!queryOfFenye?cz=yes" target="right">设备外修登记</a></span></li>
        			</ul>
        		</li>
        	</ul>
        </li>
        </ul>
	</div>
	<div title="故障报修登记" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
       		<li><span><a href="<%=path %>/daManager!queryOfFenye?cz=yes" target="right">故障报修管理</a></span></li>
       		<li><span><a href="<%=path %>/auditing!queryOfFenye?cz=yes" target="right">故障报修转发审核</a></span></li>
       		<li><span><a href="<%=path %>/count!queryOfFenye?cz=yes" target="right">故障报修统计</a></span></li>
       		<li><span><a href="<%=path %>/handle!queryOfFenye?cz=yes" target="right">故障报修处理</a></span></li>
        </ul>
	</div>
	<div title="数据统计报表" data-options="iconCls:'icon-large-shapes'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
        <li><span>信息与流程管理部</span>
        	<ul>
        		<li><span>系统组</span>
        			<ul>
						<li><span><a href="<%=path %>/siteCount!queryOfFenye?cz=yes" target="right">站点资料登记</a></span></li>
						<li><span><a href="<%=path %>/branchesCount!queryOfFenye?cz=yes" target="right">二级站点登记</a></span></li>
						<li><span><a href="<%=path %>/zmNumberCount!queryOfFenye?cz=yes" target="right">哲盟职能用户</a></span></li>
						<li><span><a href="<%=path %>/zmDataCount!queryOfFenye?cz=yes" target="right">哲盟数据检查</a></span></li>
						<li><span><a href="<%=path %>/pdaChangeCount!queryOfFenye?cz=yes" target="right">巴枪条码变更</a></span></li>
						<li><span><a href="<%=path %>/bqRepairCount!queryOfFenye?cz=yes" target="right">设备维修登记</a></span></li>
						<li><span><a href="<%=path %>/hitchesCount!queryOfFenye?cz=yes" target="right">哲盟异常登记</a></span></li>
						<li><span><a href="<%=path %>/projectCount!queryOfFenye?cz=yes" target="right">系统开发登记</a></span></li>
        			</ul>
        		</li>
        		<li><span>硬件组</span>
        			<ul>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">ASDL宽带登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">监控信息登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">电脑信息登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">监控材料清单</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">SIM费用报销</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">内件收发登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">员工外出登记</a></span></li>        			
        			</ul>
        		</li>
        		<li><span>桌面组</span>
        			<ul>
						<li><span><a href="<%=path %>/vpnCount!queryOfFenye?cz=yes" target="right">VPN账号登记</a></span></li>
						<li><span><a href="<%=path %>/byNumberCount!queryOfFenye?cz=yes" target="right">IMO邮箱账号</a></span></li>
						<li><span><a href="<%=path %>/computerCount!queryOfFenye?cz=yes" target="right">公司管理信息</a></span></li>
						<li><span><a href="<%=path %>/callCount!queryOfFenye?cz=yes" target="right">总部呼叫系统</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">骏达设备登记</a></span></li>
						<li><span><a href="<%=path %>/develop_error.jsp" target="right">网点呼叫系统</a></span></li>
						<li><span><a href="<%=path %>/oaCount!queryOfFenye?cz=yes" target="right">oa账号登记</a></span></li>
						<li><span><a href="<%=path %>/printCount!queryOfFenye?cz=yes" target="right">打印机登记</a></span></li>
        			</ul>
        		</li>
        		<li><span>维护组</span>
        			<ul>
						<li><span><a href="<%=path %>/deviceCount!queryOfFenye?cz=yes" target="right">操作设备巡检</a></span></li>
						<li><span><a href="<%=path %>/monitorCount!queryOfFenye?cz=yes" target="right">监控设备巡检</a></span></li>
						<li><span><a href="<%=path %>/threeMeetingCount!queryOfFenye?cz=yes" target="right">观澜3楼巡检</a></span></li>
						<li><span><a href="<%=path %>/meetingCount!queryOfFenye?cz=yes" target="right">新仓仓库巡检</a></span></li>
						<li><span><a href="<%=path %>/massageCount!queryOfFenye?cz=yes" target="right">巴枪维修登记</a></span></li>
						<li><span><a href="<%=path %>/outRepairCount!queryOfFenye?cz=yes" target="right">设备外修登记</a></span></li>
        			</ul>
        		</li>
        	</ul>
        </li>
        </ul>
	</div>
	<div title="系统管理" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
      		<li><span><a href="<%=path %>/users!queryOfFenye?cz=yes" target="right">用户管理</a></span></li>
      		<li><span><a href="<%=path %>/role!queryOfFenye?cz=yes" target="right">角色管理</a></span></li>
        	<li><span>个人中心</span>
	        	<ul>
					<li><span><a href="<%=path %>/resetPass!queryInfo" target="right">个人信息</a></span></li>
					<li><span><a href="<%=path %>/resetPass!query" target="right">修改密码</a></span></li>
			        <li><span><a href="<%=path %>/timeline!query" target="right">操作日志</a></span></li>
					<li><span><a href="<%=path %>/information!query" target="right">任务提醒</a></span></li>
					<li><span><a href="<%=path %>/jobLog!gotoJob" target="right">工作日志</a></span></li>
	        	</ul>
	        </li>
        </ul>
	</div>
	
	<div title="通讯录" data-options="iconCls:'icon-print'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
	        <li><span>原通讯录设计</span>
	        	<ul>
			        <li><span><a href="<%=path %>/section!gotoAdd" target="right">添加</a></span></li>
			        <li><span>移动</span></li>
			        <li><span><a href="<%=path%>/index!contacts" target="right">查看</a></span></li>
	        	</ul>
	        </li>
	        <li><span>现通讯录设计</span>
	        	<ul>
	        		<li><span><a href="<%=path %>/cs!gotoAdd" target="right">添加</a></span></li>
			        <li><span><a href="<%=path%>/cs!query" target="right">查看</a></span></li>
	        	</ul>
	        </li>
	    </ul>
	</div>
	
	
	
	
</div>

</body>
</html>
