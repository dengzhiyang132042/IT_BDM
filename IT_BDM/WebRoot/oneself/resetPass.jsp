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
    
    <title>修改密码</title>
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
		function pass(){
			var newpass=$('#new_pass').val();
			if(newpass==""){
				error_new_pass.innerText="*密码不能为空";
			}else{
				error_new_pass.innerText="";
			}
		}
		function affirm(){
			var newpass=$('#new_pass').val();
			var affirmpass=$('#affirm_pass').val();
			if(newpass!=affirmpass){
				error_affirm_pass.innerText="*两次密码输入不一致";
			}else{
				error_affirm_pass.innerText="";
				$('#f1').submit();
			}
		}
		function sub(){
			$.post(
				"<%=path %>/resetPass!passAffirm",
				{"oldPass":$('#old_pass').val()},
				function(data){
					if(data!=""){
						error_pass.innerText="*密码错误";
					}else{
						error_pass.innerText="";
					}
				}
			);
		}
		
		
	</script>
	
  </head>
  
  <body style="padding-right: 40px;">
   	<div style="width:300px;height:95%;border:0px solid red;margin:0 auto;">
	   	<div style="padding: 10;background-color: rgb(236, 236, 236);margin-top:100px;">
	   	<div style="width=100%;heigth=300px;border: 0px solid rgb(188, 220, 247);padding:10px;background-color: rgb(242, 246, 250);">
		    <form action="<%=path %>/resetPass!reset" id="f1">
			    <div style="margin-bottom:20px">
					<div><span>用户名:</span></div><br/>
					<input style="width:100%;height:32px;background-color:rgb(235,236,215);border-radius: 6px;" value='${u.UName }' readonly="readonly">
				</div>
			    <div style="margin-bottom:20px">
					<div><span>旧密码:</span><span id="error_pass" style="color:red;padding-left:10px;"></span></div><br/>
					<input id="old_pass" type="password" onblur="sub()" name="oldPass"  data-options="prompt:'请输入密码...',validType:'password'" style="width:100%;height:32px;border-radius: 6px;">
				</div>
				<div style="margin-bottom:20px">
					<div><span>新密码:</span><span id="error_new_pass" style="color:red;padding-left:10px;"></span></div><br/>
					<input id="new_pass" onblur="pass()" type="password" name="newPass"  style="width:100%;height:32px;border-radius: 6px;">
				</div>
				<div style="margin-bottom:20px">
					<div><span>确认密码:</span><span id="error_affirm_pass" style="color:red;padding-left:10px;"></span></div><br/>
					<input id="affirm_pass" type="password"  name="affirmPass" style="width:100%;height:32px;border-radius: 6px;">
				</div>
				<div>
					<input class="easyui-linkbutton" iconCls="icon-ok" onclick="affirm()" type="button" value="提 交" style="width:30%;height:32px; margin-left:90px;"/>
				</div>
			</form>
   		</div>
   		</div>
   	</div>
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
