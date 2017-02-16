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
    
    <title>个人信息</title>
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
	<script type="text/javascript">
		function update(){
			$('#name').removeAttr("readonly");
			$('#mail').removeAttr("readonly");
			var a ="<input style='width:60px;height:25px;border-radius: 5px;' type='submit' value='提 交'/>";
			$('#sub').html(a);
		}
	</script>
	
  </head>
  
  <body style="padding-right: 40px;">
   	<div style="width:350px;height:95%;border:0px solid red;margin:0 auto;">
	   	<div style="padding: 10;background-color: rgb(236, 236, 236);margin-top:150px;">
	   	<div style="width=100%;heigth=100%;border: 0px solid rgb(188, 220, 247);padding:10px;background-color: rgb(242, 246, 250);">
			<form action="<%=path %>/resetPass!updateInfo">
				<table border="0" style="height:280px;" >
					<tr>
						<td width="70">账号:</td>
						<td style="text-align: left;">
							<span style="display: block;float: left;height:25px;line-height: 26px;">${user.UNum }</span>
							<a onclick="update()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" style="display: block;float: right;" title="修改"></a>
						</td>
					</tr>
					<tr>
						<td>姓名:</td>
						<td style="text-align: left;"><input id="name" name="u.UName" type="text" readonly="readonly" value="${user.UName }"/></td>
					</tr>
					<tr>
						<td>组别:</td>
						<td style="text-align: left;">${user.csGroup }</td>
					</tr>
					<tr>
						<td>职位:</td>
						<td style="text-align: left;">${user.UJob }</td>
					</tr>
					<tr>
						<td>邮箱:</td>
						<td style="text-align: left;"><input id="mail" name="u.UMail" type="text" readonly="readonly" value="${user.UMail }" style="width: 100%;"/></td>
					</tr>
					<tr>
						<td>角色:</td>
						<td style="text-align: left;">${user.r.RName }</td>
					</tr>
					<tr>
						<td colspan="2" id='sub'></td>
					</tr>
				</table>
			</form>
   		</div>
   		</div>
   	</div>
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
