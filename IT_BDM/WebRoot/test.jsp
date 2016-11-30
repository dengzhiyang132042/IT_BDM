<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<a href="<%=path %>/test!gotoQuery">测试</a>
  	<form action="<%=path %>/test!gotoQuery" method="post">
  		<input type="text" name="str"/>
  		<input type="submit"/>
  	</form>
  	${str }
  	<hr/>
  	模拟发邮件
  	<form action="<%=path %>/test!add" method="post">
  		假设这是我要发的邮件:<input type="text" name="mailstr"/>
  		<input type="submit"/>
  	</form>
  	<c:forEach items="${sengMail}" var="m">
  		${m }<br/>
  	</c:forEach>
  	<br/>
  	
  </body>
</html>
