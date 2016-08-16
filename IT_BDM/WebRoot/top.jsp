<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	
  </head>
  
<body style="margin: 0px;padding: 0px;background-color:#4B9898;" >
	<div style="margin-left: 30px;margin-top: 25px;">
		<img alt="" src="FRAMEWORK/image/logo2-transparent.png" height="50" border="0"/>
	</div>
	<center style="margin-top: -52px;">
		<span style="color: #3E3A38;font-size: 40px;font-weight: bold;font-family: Microsoft YaHei;">IT基础数据管理系统</span>
	</center>
	<c:choose>
		<c:when test="${user==null}">
			<a href="login.jsp" target="_parent" style="font-size: 14px;font-weight: bold;color: red;float: right;margin-right: 30px;">登录</a>
			<span style="font-size: 14px;font-weight: bold;color: #0052A3;float: right;margin-right: 0px;">您还没有登录，请先</span>
		</c:when>
		<c:otherwise>
			<a onclick="return confirm('确定注销吗?')" href="<%=path %>/login!logout" target="_parent" style="float: right;margin-right: 30px;font-size: 14px;font-weight: bold;color: red;">注销</a>
			<a href="<%=path %>/center!query" target="right">
			<span style="font-size: 14px;font-weight: bold;color: #0052A3;float: right;margin-right: 30px;">${user.UName }</span>
			</a>
			<span style="float: right;font-size: 14px;font-weight: bold;color: red;margin-right: 5px;">${user.r.RName }</span>
			<span style="float: right;font-size: 14px;font-weight: bold;color: #282828;">登陆者：</span>
		</c:otherwise>
	</c:choose>
	
	<a href="<%=path %>/information!query" target="right">
		<span style="position: absolute;right: 30px;top: 10px;font-weight: lighter;color:#282828;">提醒：
			今天您还有<span style="color: red;">${suminfo }</span>张表没有操作.
		</span>
	</a>
</body>
</html>
