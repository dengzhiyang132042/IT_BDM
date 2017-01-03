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
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/${theme }/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<style type="text/css">
	td{
		padding: 3px;
	}
	</style>
  </head>
  
  <body>
  	<div style="color: blue;font-weight: bold;">今天的时间轴:${username }</div>
  	<form action="<%=path %>/timeline!query" method="post">
  	<select name="userid">
  		<c:forEach items="${listUsers}" var="u">
  		<option value="${u.UNum }">${u.UName }</option>
  		</c:forEach>
  	</select>
  	<input type="submit" value="查看"/>
  	</form>
  	
  	<br/>
  	
  	<div>
	<table border="1">
		<tr>
			<th>序号</th>
			<th>时间</th>
			<th>操作</th>
			<th>操作的表</th>
			<th>表的编号</th>
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
