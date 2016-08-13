<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>消息提醒</title>
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
  
  <body style="padding-right: 40px;">
  	<div style="color: blue;font-weight: bold;">硬件组——今天：</div>
	<c:forEach items="${tlData}" var="data">
		<div style="border: 0px solid black;margin-top: 15px;background-color: #FFFFA2;">
		<span style="color: green;font-weight: bold;">${data.name }</span>——${fn:length(data.list) }
		<br/>
		<c:if test="${fn:length(data.list)>0 }">
		<c:forEach items="${data.list}" var="tl">
			<span style="color: #6E6E6E;">${tl.tlTime }——${tl.tlState }</span>
			<br/>
		</c:forEach>
		</c:if>
		<c:if test="${fn:length(data.list)<=0 }">
			<span style="color: red;">这张表的数据您还没有登记。</span>
			<br/>
		</c:if>
		</div>
	</c:forEach>
	
		
	
	    
  </body>
</html>
