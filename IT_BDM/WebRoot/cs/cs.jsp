<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zs.entity.CompanySection"%>
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
    
    <title>公司组织架构</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/yellow/easyui.css">
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
 	<script type="text/javascript">
	  $(function(){
	  	$('ul li div').click(function(){
			var f = $(this).find('font').text();
			var t = $(this).find('.tree-title');
			var str=$("<span>"+t.html()+"</span>");
			str.find('font').remove();
			$.post(
				"cs!queryInfor",
				{id:f},
				function(data){
					$("#right").html(data);
				}
			);
		});
		
		$('.easyui-tree').tree('collapseAll');
		$("#div1").show();
	  });
	  function update(id){
	  	window.location.href="<%=path%>/cs!gotoUpdate?id="+id;
	  }
	  function my_delete(id){
	  	if(confirm("确定删除吗?删除该级会导致下级全部删除，如果想只删除该级，请先移动其下级，使该级没有下级，这时删除即可只删除这一级。")){
	  		window.location.href="<%=path%>/cs!myDelete?id="+id;
	  	}
	  }
  </script>
  </head>
  
  <body>
  <div id="div1" style="width: 40%;float: left; display: none;">
 	 ${html }  
  </div>
  <div style="width: 2px;float: left;height:100%; background-color: #0092DC;margin-left: 10px; ">
  </div>
  <div style="float: left;margin-left: 10px; ">
  	<div id="right" class="easyui-panel" title="公司组织架构详情" style="padding: 5px;display: none;width: 512px;">
  	</div>
  </div>
  
  
  </body>
</html>
