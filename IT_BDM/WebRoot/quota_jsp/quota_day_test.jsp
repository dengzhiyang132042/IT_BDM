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
    
    <title>日统计报表式样</title>
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

  </head>
  
  <body>
 	<div class="bread_head" style="width:99%;margin:5px;font-size:18px;">
		<span>当前位置：</span>
		<span>数据统计报表</span>
		<span>></span>
		<span>信息与流程管理部</span>
 		<span>></span>
 		<span>日统计报表式样</span>
 	</div>
   	<div class="kscx" style="width:99%;margin:5px;">
    	<div class="inp">
	    	<form id="ks" action="<%=path %>/bqq!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				主要负责：<input name="num" type="text" value="${num }"/>
	    			</div>
	    		</div>
	    	</form>
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    <div id="tt" class="easyui-tabs" style="width:99%;height:500px;margin:5px;">
	    <div title="组统计">
		    <div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>组别</th>
				    	<th>负责主管</th>
				    	<th>注册</th>
				    	<th>维护</th>
				    	<th>注销</th>
				    	<th>合计</th>
				    	<th>录入率</th>
				    </tr>
				    <tr>
				    	<td>111111</td>
				    	<td>2017/02/05</td>
				    	<td>系统组</td>
				    	<td>徐迪军</td>
				    	<td>5</td>
				    	<td>6</td>
				    	<td>0</td>
				    	<td>11</td>
				    	<td>0%</td>
				    </tr>
			    </table>
		  	</div>
	  	</div>
	  	<div title="明细">
	  		<div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>统计业务</th>
				    	<th>主要负责</th>
				    	<th>注册</th>
				    	<th>维护</th>
				    	<th>注销</th>
				    	<th>合计</th>
				    	<th>录入率</th>
				    </tr>
				    <c:forEach items="${qms}" var="q">
					    <tr>
					    	<td>${q.qmId }</td>
					    	<td><fmt:formatDate value="${q.qmDate }" pattern="yyyy/MM/dd"/></td>
					    	<td>${q.qmTable }</td>
					    	<td>${q.uName }</td>
					    	<td>${q.qmTypeZc }</td>
					    	<td>${q.qmTypeWh }</td>
					    	<td>${q.qmTypeZx }</td>
					    	<td>${q.count }</td>
					    	<td>${q.productivity*100 }%</td>
					    </tr>
				    </c:forEach>
			    </table>
		  	</div>
	  	</div>
  	</div>
  </body>
</html>
