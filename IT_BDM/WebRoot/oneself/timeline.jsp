<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>时间轴</title>
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
	td{
		padding: 3px;
	}
	</style>
  </head>
  
  <body>
  	<div style="color: blue;font-weight: bold;">今天的时间轴:</div>
  	<br/>
  	
  	<div style="padding-right: 17px;">
	<table border="1">
	<tr>
		<th width="200">序号</th>
		<th width="400">时间</th>
		<th width="300">操作</th>
		<th width="350">操作的表</th>
		<th>表的编号</th>
	</tr>
	<tr height="30" style="visibility: hidden;">
		<td>1</td>
		<td>1</td>
		<td>1</td>
		<td>1</td>
		<td>1</td>
	</tr>
	</table>
  	</div>
	
	<div style="margin-top: -31px;height: 80%;overflow: scroll;">
	<table border="1" style="margin-top: -30px;">
	<tr height="30" style="visibility: hidden;">
		<th width="200">1</th>
		<th width="400">1</th>
		<th width="300">1</th>
		<th width="350">1</th>
		<th>1</th>
	</tr>
	<c:forEach items="${tls}" var="tl" varStatus="sta">
	<tr>
		<td>${sta.index+1 }</td>
		<td>${tl.tlTime }</td>
		<td>
			<c:if test="${tl.tlState=='查看' }">
				<span style="color: #00FF00;font-weight: bold;">
			</c:if>
			<c:if test="${tl.tlState=='添加' }">
				<span style="color: green;font-weight: bold;">
			</c:if>
			<c:if test="${tl.tlState=='删除' }">
				<span style="color: red;font-weight: bold;">
			</c:if>
			<c:if test="${tl.tlState=='修改' }">
				<span style="color: #FF00FF;font-weight: bold;">
			</c:if>
			${tl.tlState }
			</span>
		</td>
		<td>${tl.tlTableName }</td>
		<td>${tl.tlTableId }</td>	
	</tr>	
	</c:forEach>
	</table>
	</div>
	
  </body>
</html>
