<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zs.tools.Constant"%>
<%@page import="java.text.SimpleDateFormat"%>
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
    
    <title>原始sql工具</title>
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
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/My97DatePicker/WdatePicker.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	function trans_radio(str){
		if (str=="是") {
			return 0;
		}else if (str=="否") {
			return 1;
		}
	}
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$("#u_4_"+trans_radio(u4)).click();
		$("#u_5_"+trans_radio(u5)).click();
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
		$("#u_9_"+trans_radio(u9)).click();
		$("#u_10_"+trans_radio(u10)).click();
		$('#u_11').val(u11);
	}
	function page(no,cz){
		var num1=$('#page').val();
		if(cz==1){//上下页
			$('#page').val(num1*1+no*1);
		}else if(cz==2){//首末页
			$('#page').val(no);
		}else{
		}
		if($('#page').val()*1<1){
			$('#page').val(1);
		}else if($('#page').val()*1>${page.pageMax}*1){
			$('#page').val(${page.pageMax});
		}
		$('#f1').submit();
	}
	</script>
	
  </head>
  
  <body>
    
    <div class="easyui-panel" title="使用原始sql进行操作(不要刷新，刷新请点这个:<a href='<%=path %>/tools/update.jsp'>重定向</a>)" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    	
    	
    	<div>
    		sql语句示例:
    		<ul>
    			<li>修改站点资料的id
    			<ul>
    				<li>
    					select * from xt_site
	    				<br/>
	    				update xt_site set s_id='s:a' where s_id=':b'
	    			</li>
    			</ul>
    			</li>
    		</ul>
    	</div>
    	<hr/>
    	
    	<form action="<%=path %>/transId!update?cz=id" method="post">
    		要改哪些数据(sql的查询语句)：<br/>
    		<input type="text" name="sql" style="width: 100%;"><br/>
    		修改的sql语句：<br/>
    		<input type="text" name="updateSql" style="width: 100%;"><br/>
    		<input type="submit" onclick="return show_hint([])"/>
    	</form>
    	<hr/>
    	
    	<form action="<%=path %>/transId!update" method="post">
    		sql的增删改语句(查询不行)：<br/>
    		<input type="text" name="sql" style="width: 100%;"><br/>
    		<input type="submit" onclick="return show_hint([])"/>
    	</form>
    	
    	<hr/>
    	<form action="<%=path %>/transId!queryOfFenye" method="post">
    		sql的查询语句(增删改不行)：<br/>
    		<input type="text" name="sql" style="width: 100%;"><br/>
    		<input type="submit" onclick="return show_hint([])"/>
    	</form>
    	
    	
    	<hr/>
    	执行的sql语句:<br/>
    	${sql }
    	<br/>
    	执行的条数：<br/>
    	${rows }
    	<hr/>
    	<div>
    	<table>
    	<c:forEach items="${list}" var="li">
    	<tr>
    		<c:forEach items="${li}" var="l">
    		<td>${l }</td>
    		</c:forEach>
    	</tr>	
    	</c:forEach>
    	</table>
    	
    	</div>
    	
    	
    	
    	
	</div>	
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
