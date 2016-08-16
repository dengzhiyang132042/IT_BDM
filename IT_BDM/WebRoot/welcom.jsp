<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
  </head>
  
  <body style="padding: 0px;">
  	<div style="width: 2%;height:100%; float: left;"></div>
  	
  	<div style="width: 47%;height:100%; float: left;">
	    <div style="height:4%;"></div>
	    <div class="easyui-panel" title="欢迎语" style="height:44% ;padding: 5px;display: none;">
			<h1>欢迎使用IT基础数据管理系统！</h1>
	    </div>
	    <div style="height:4%;"></div>
	    <div class="easyui-panel" title="公告" style="height:44% ;padding: 5px;display: none;">
			
	    </div>
	    <div style="height:4%;"></div>
  	</div>
  	
  	<div style="width: 2%;height:100%;float: left;"></div>
  	
  	<div style="width: 47%;height:100%; float: left;">
	    <div style="height:4%;"></div>
	    <div class="easyui-panel" title="新闻" style="height:44% ;padding: 5px;display: none;">
			
	    </div>
	    <div style="height:4%;"></div>
	    <div class="easyui-panel" title="签到" style="height:44% ;padding: 5px;display: none;">
			
	    </div>
	    <div style="height:4%;"></div>
  	</div>
    
    <div style="width: 2%;height:100%;float: left;"></div>
  </body>
</html>
