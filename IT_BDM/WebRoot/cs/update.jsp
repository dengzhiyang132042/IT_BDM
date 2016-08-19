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
    
    <title>哲盟账号申请记录登记</title>
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
	
  </head>
  
  <body>
  	<div class="easyui-panel" title="修改公司组织架构" style="padding: 5px;display: none;width: 512px;">
  	<form action="<%=path %>/cs!update" method="post">
  	<table border="1" style="width: 500px;"> 
  		<tr>
  			<td style="width: 100px;">编号:</td>
  			<td>
  				<input name="cs.csId" type="text" value="${cs.csId }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>部门名称:</td>
  			<td>
  				<input name="cs.csName" type="text" value="${cs.csName }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>职员名字：</td>
  			<td>
  				<input name="cs.csMaster" type="text" value="${cs.csMaster }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>工号：</td>
  			<td>
  				<input name="cs.csNumber" type="text" value="${cs.csNumber }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>职位：</td>
  			<td>
  				<input name="cs.csPosition" type="text" value="${cs.csPosition }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>私人电话：</td>
  			<td>
  				<input name="cs.csPhoneP" type="text" value="${cs.csPhoneP }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>公司电话：</td>
  			<td>
  				<input name="cs.csPhoneC" type="text" value="${cs.csPhoneC }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>短号：</td>
  			<td>
  				<input name="cs.csPhoneS" type="text" value="${cs.csPhoneS }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>备注：</td>
  			<td>
  				<input name="cs.csNote" type="text" value="${cs.csNote }"/>
  			</td>
  		</tr>
  		<tr>
  			<td>上级：</td>
  			<td>
  				<select name="cs.csLast" id="cc" style="width:100%;"></select>
				<div id="sp">
					<div style="color:#99BBE8;background:#fafafa;padding:5px;">选择上级架构</div>
					${html }
				</div>
  			</td>
  		</tr>
  		<te>
  			<td colspan="2">
  				<input onclick="return check()" type="submit" value="提交" style="width: 100%;height: 25px;"/>
  			</td>
  		</te>
  	</table>
  	</form>
  	</div>
  
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
	//$('#cc').combobox('setText',${cs.csLast });
	//$('#cc').combobox('setValue',${cs.csLast });
	
  });
  function update(u1,u2,u3,u4,u5,u6,u7,u8,u9){
  	window.location.href="<%=path%>/cs!gotoUpdate";
  }
  </script>
  <script type="text/javascript">
		$(function(){
			$('#cc').combo({
				required:true,
				editable:true
			});
			$('#sp').appendTo($('#cc').combo('panel'));
			$('#sp li div').click(function(){
				var f = $(this).find('font').text();
				var t = $(this).find('.tree-title');
				var str=$("<span>"+t.html()+"</span>");
				str.find('font').remove();
				//alert(f+"*"+str.text() );
				$('#cc').combo('setValue', f).combo('setText', str.text());
			});
			
			$("#a").click(function(){
				alert($('#cc').combobox('getValue'));
			});
			
		});
		function check(){
			var s=$('#cc').combobox('getValue');
			if($.trim(s)==""){
				alert("部门不能为空!");
				return false;
			}else{
				return true;
			}
		} 
	</script>
  </body>
</html>
