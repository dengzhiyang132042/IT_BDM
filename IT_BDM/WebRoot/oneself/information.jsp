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
	
	<style type="text/css">
	table tr td{
		padding: 3px;
	}
	</style>
	
  </head>
  
  <body style="padding-right: 40px;">
	<!-- 
  	<div style="color: blue;font-weight: bold;">硬件组——今天：</div>
	<c:forEach items="${tlData}" var="data">
		<div style="border: 0px solid black;margin-top: 15px;background-color: #FFFFA2;padding: 5px;">
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
	 -->
	
	<div style="color: blue;font-weight: bold;">${user.r.RName }——今天：
	<br/>
	${user.UName }(${user.UNum })
	</div>
	<br/>
	<table border="1">
		<c:forEach items="${tlData}" var="data">
		<tr>
			<th colspan="5" style="background-color: #336699;">
				<span style="color:white;font-weight: bold;">${data.name }——${fn:length(data.list) }</span>
			</th>
		</tr>
		<c:if test="${fn:length(data.list)>0 }">
		<tr bgcolor="#C2C2C2">
			<th>序号</th>
			<th>时间</th>
			<th>操作</th>
			<th>表</th>
			<th>编号</th>
		</tr>
		<c:forEach items="${data.list}" var="tl" varStatus="sta">
		<tr>
			<td>${sta.index+1 }</td>
			<td>${tl.tlTime }</td>
			<td>${tl.tlState }</td>
			<td>${tl.tlTableName }</td>
			<td>${tl.tlTableId }</td>
		</tr>
		</c:forEach>
		</c:if>
		<c:if test="${fn:length(data.list)<=0 }">
		<tr>
			<td colspan="5">
				<span style="color: red;">这张表的数据您还没有登记。</span>
			</td>
		</tr>
		</c:if>
		</c:forEach>
	</table>	
	
	    
  </body>
</html>
