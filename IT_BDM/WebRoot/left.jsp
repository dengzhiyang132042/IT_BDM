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
	<div title="基础数据" data-options="iconCls:'icon-add'" style="overflow:auto;padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
        <li><span>数据与流程管理部</span>
        	<ul>
        		<li><span>硬件组</span>
        			<ul>
						<li><span><a href="<%=path %>/fbd_asdl!queryOfFenyeAsdl?cz=yes" target="right">分拨点宽带登记ASDL</a></span></li>
						<li><span><a href="<%=path %>/fbd_m!queryOfFenyeM?cz=yes" target="right">分拨点监控登记</a></span></li>
						<li><span><a href="<%=path %>/fbd_c!queryOfFenyeC?cz=yes" target="right">分拨点电脑登记</a></span></li>
						<li><span><a href="<%=path %>/fbd_ll!queryOfFenyeLL?cz=yes" target="right">分拨点监控材料申请清单</a></span></li>
						<li><span><a href="<%=path %>/sim!queryOfFenyeSIM?cz=yes" target="right">SIM费用报销</a></span></li>
						<li><span><a href="<%=path %>/goods!queryOfFenyeGoods?cz=yes" target="right">内件收发登记</a></span></li>
						<li><span><a href="<%=path %>/go!queryOfFenyeGo?cz=yes" target="right">外出登记</a></span></li>        			
        			</ul>
        		</li>
        		<li><span>系统组</span>
        			<ul>
						<li><span><a href="<%=path %>/site!queryOfFenye?cz=yes" target="right">站点资料</a></span></li>
						<li><span><a href="<%=path %>/branches!queryOfFenye?cz=yes" target="right">二级站点资料</a></span></li>
						<li><span><a href="<%=path %>/zmn!queryOfFenye?cz=yes" target="right">哲盟账号申请登记</a></span></li>
						<li><span><a href="<%=path %>/zmd!queryOfFenye?cz=yes" target="right">哲盟数据检查登记</a></span></li>
        			</ul>
        		</li>
        		<li><span>桌面组</span>
        			<ul>
						<li><span><a href="<%=path %>/vpn!queryOfFenye?cz=yes" target="right">VPN账号登记</a></span></li>
						<li><span><a href="<%=path %>/by!queryOfFenye?cz=yes" target="right">布谷鸟、邮箱账号</a></span></li>
						<li><span><a href="<%=path %>/oa!queryOfFenye?cz=yes" target="right">oa账号</a></span></li>
						<li><span><a href="<%=path %>/print!queryOfFenye?cz=yes" target="right">打印机登记</a></span></li>
						<li><span><a href="<%=path %>/zmd!queryOfFenye?cz=yes" target="right">管理电脑统计</a></span></li>
						<li><span><a href="<%=path %>/bq!queryOfFenye?cz=yes" target="right">小仓巴枪电脑登记</a></span></li>
						<li><span><a href="<%=path %>/wifi!queryOfFenye?cz=yes" target="right">园区wifi管理</a></span></li>
						<li><span><a href="<%=path %>/phone!queryOfFenye?cz=yes" target="right">电话线分布</a></span></li>
        			</ul>
        		</li>
        		<li><span>开发组</span></li>
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
	<div title="数据分析" data-options="iconCls:'icon-large-shapes'" style="padding:10px;">
	</div>
	<div title="系统管理" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
      		<li><span><a href="<%=path %>/users!queryOfFenye?cz=yes" target="right">用户管理</a></span></li>
      		<li><span><a href="<%=path %>/role!queryOfFenye?cz=yes" target="right">角色管理</a></span></li>
        </ul>
	</div>
	<div title="故障处理跟进系统" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
       		<li><span><a href="da/manager.jsp" target="right">故障报修管理</a></span></li>
       		<li><span><a href="da/count.jsp" target="right">故障报修统计</a></span></li>
       		<li><span><a href="<%=path %>/handle!queryOfFenye?cz=yes" target="right">故障报修处理</a></span></li>
        </ul>
	</div>
	<div title="个人中心" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
       		<li><span><a href="<%=path %>/timeline!query" target="right">时间轴</a></span></li>
       		<li><span><a href="<%=path %>/information!query" target="right">提醒</a></span></li>
       		<li><span><a href="<%=path %>/jobLog!gotoJob" target="right">工作日志</a></span></li>
        </ul>
	</div>
	
</div>

</body>
</html>
