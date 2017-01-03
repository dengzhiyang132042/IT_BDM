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
    
    <title>工作日志</title>
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
		height: 30px;
	}
	.td_bold{
		font-weight: bold;
	}
	.indent{text-indent: 2em;} 
	textarea {
		width: 100%;
		height:100px;
		background-color: #F2F2F2;
	}
	.title{
		text-align: center;
		color: white;
		font-weight:bold;
		background-color: #336699;
		padding: 5px;
		margin-bottom: 10px;
	}
	.td_left{
		text-align: left;
	}
	</style>
	
  </head>
  
  <body>
  <div class="title">预览</div>
  <div id="content">
  	<div class="td_bold">
	  	Dear徐主管
		<br/>
		<br/>
		<div class="indent">
         	下午好，今日主要工作内容如下，请查阅，谢谢！
		</div>
    </div>
	<table id="table1" border="1">
		<tr class="td_bold">
			<td colspan="3">部门：信息与流程管理部</td>
			<td></td>
			<td>
				姓名：${user.UName }
			</td>
			<td>
				职位：${user.UJob }
			</td>
			<td>
				填报日期：<fmt:formatDate value="${date }" pattern="yyyy/M/d" />
			</td>
		</tr>
		<tr class="td_bold">
			<td colspan="3"></td>
			<td>工作记录</td>
			<td>完成情况</td>
			<td>已解决问题</td>
			<td>待解决问题</td>
		</tr>
		<tr id="tr1">
			<td id="kh1" rowspan="4" class="td_bold" width="70">
				工<br/>
				作<br/>
				内<br/>
				容
			</td>
			<td id="kh2" rowspan="4" class="td_bold" width="70">
				日<br/>
				常<br/>
				例<br/>
				行<br/>
				工<br/>
				作
			</td>
			<td id="kh3" rowspan="0" class="td_bold" width="70">
				上<br/>
				午
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr id="tr2">
			<td id="kh4" rowspan="0" class="td_bold">
				下<br/>
				午
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<div style="background: #B5C4DF;width: 213px;height: 1px;margin-top: 10px;margin-bottom: 10px;"></div>
	<div style="font-family: 宋体;">
		Best Wishes
		<br/>
		以流程为导向，以服务为宗旨。
		<br/>
		*****************************************************
		<br/>
		信息与流程管理部-${user.UJob } ${user.UName }
		<br/>
		深圳市韵达速递有限公司
		<br/>
		邮箱：${user.UMail }
		<br/>
		手机：+86-<span id="pl">15817383353</span>(短号<span id="ps">66666</span>)
		<br/>
		地址：广东省深圳市龙华新区观澜大道114号（交警中队正对面）
		<br/>
		***************************************************
		<br/>
	</div>
	
  </div>
  <hr/>
  <div class="title">编辑</div>
  <div>
  	  手机长号：<input id="epl" type="text" onchange="pl()"/>
  	  <br/>
  	  短号：<input id="eps" type="text" onchange="ps()"/>
  	  <table border="1">
  	  	<tr>
  	  		<td>工作记录</td>
  	  		<td>完成情况</td>
  	  		<td>已解决问题</td>
  	  		<td>待解决问题</td>
  	  	</tr>
  	  	<tr>
  	  		<td>
  	  			<textarea id="edit1" rows="" cols=""></textarea>
  	  		</td>
  	  		<td>
  	  			<textarea id="edit2" rows="" cols=""></textarea>
  	  		</td>
  	  		<td>
  	  			<textarea id="edit3" rows="" cols=""></textarea>
  	  		</td>
  	  		<td>
  	  			<textarea id="edit4" rows="" cols=""></textarea>
  	  		</td>
  	  	</tr>
  	  </table>
	  <input onclick="appendTable1()" type="button" value="添加上午"/>
	  <input onclick="appendTable2()" type="button" value="添加下午"/>
  </div>
  <hr/>
  <div class="title">发送邮件</div>
  
  <form action="<%=path %>/jobLog!send" method="post">
  	  <input id="send_body" type="text" name="content" style="display: none;"/>
  	  收件人：<input name="sj" type="text" value="${user.UMail }"/>
  	  <br/>
  	  抄送：<input name="cs" type="text" value="1217360619@qq.com"/>
	 <br/>
	  <input onclick="return send()" type="submit" value="发送"/>
  </form>
  
  
  <script type="text/javascript">
	var rowspan1=$("#kh1").prop("rowspan");
	var rowspan2=$("#kh2").prop("rowspan");
	var rowspan3=$("#kh3").prop("rowspan");
	var rowspan4=$("#kh4").prop("rowspan");
	
	var index1=2;
	var index2=3;
	
	var reg=new RegExp("\n","g");
	
	function appendTable1(){
		var e1=$("#edit1").val();
		var e2=$("#edit2").val();
		var e3=$("#edit3").val();
		var e4=$("#edit4").val();
		$("#kh1").prop("rowspan",++rowspan1);
		$("#kh2").prop("rowspan",++rowspan2);
		$("#kh3").prop("rowspan",++rowspan3);
		$("#table1 tr:eq("+index1+")").after("<tr><td class='td_left'>"+e1.replace(reg,"<br/>")+"</td><td>"+e2.replace(reg,"<br/>")+"</td><td class='td_left'>"+e3.replace(reg,"<br/>")+"</td><td>"+e4.replace(reg,"<br/>")+"</td></tr>");
		index1++;
		index2++;
		//alert(e1+e2+e3+e4);
	}
	function appendTable2(){
		var e1=$("#edit1").val();
		var e2=$("#edit2").val();
		var e3=$("#edit3").val();
		var e4=$("#edit4").val();
		$("#kh1").prop("rowspan",++rowspan1);
		$("#kh2").prop("rowspan",++rowspan2);
		$("#kh4").prop("rowspan",++rowspan4);
		$("#table1 tr:eq("+index2+")").after("<tr><td class='td_left'>"+e1.replace(reg,"<br/>")+"</td><td>"+e2.replace(reg,"<br/>")+"</td><td class='td_left'>"+e3.replace(reg,"<br/>")+"</td><td>"+e4.replace(reg,"<br/>")+"</td></tr>");
		index2++;
		//alert(e1+e2+e3+e4);
	}
	function send(){
		var content=$("#content");
		$("#send_body").val(content.html());
		return true;
	}
	function pl(){
		$("#pl").html($("#epl").val());
	}
	function ps(){
		$("#ps").html($("#eps").val());
	}
  </script>
  </body>
</html>
