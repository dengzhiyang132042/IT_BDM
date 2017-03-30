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
    
    <title>故障按组统计</title>
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
		$("#sel_dt option[value='${filtrate}']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
		changeDate();
	});
	function queryDetails(status) {
		var table1="<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th>编号</th><th>发起人</th><th>故障区域</th><th>故障描述</th><th>故障类型</th><th>创建时间</th><th>当前处理人</th><th>超时时间</th><th>状态</th></tr>";
		for ( var i = 0; i < ${json}[status].demPer.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].demPer[i].demand.DId+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DApplicant+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.area+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DContent+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DType+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DTimeString+"</td>"+
			"<td>"+${json}[status].demPer[i].performs[0].UName+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DTimeExpectString+"</td>"+
			"<td>"+${json}[status].demPer[i].performs[0].PState+"</td>"+
			"</tr>";
		}
		table1=table1+"</table>";
		$("#q").html(table1);
		$("#q").window('open');
	}
	function forward() {
		$("#u").window('open');
	}
	function changeDate(){
		if($('#sel_dt').val()=='D' || $('#sel_dt').val()=='W'){
			var date1 ="开始日期：<input name=\"dates\" id=\"d4311\" class=\"Wdate\" type=\"text\" onFocus=\"WdatePicker({maxDate:'#F{$dp.$D(\\'d4312\\')}'})\" value=\"${dates }\"/>";
			$('#datearea_1').html(date1);
			var date2 ="结束日期：<input name=\"datee\" id=\"d4312\" class=\"Wdate\" type=\"text\" onFocus=\"WdatePicker({minDate:'#F{$dp.$D(\\'d4311\\')}'})\" value=\"${datee }\"/>";
			$('#datearea_2').html(date2);
		}else if($('#sel_dt').val()=='M'){
			var monthdate1 ="开始日期：<input name='dates' type='month' value ='${dates}'/>";
			$('#datearea_1').html(monthdate1);
			var monthdate2 ="结束日期：<input name='datee' type='month' value='${datee}'/>";
			$('#datearea_2').html(monthdate2);
		}else if($('#sel_dt').val()=='Y'){
			var ydate1 = "开始日期：<input name='dates' type='number' min='1900' max='2199' value='${dates}'/>年";
			$('#datearea_1').html(ydate1);
			var ydate2 = "结束日期：<input name='datee' type='number' min='1900' max='2199' value='${datee}'/>年";
			$('#datearea_2').html(ydate2);
		}
	}
	</script>
	
	<style>
	  .tab {
	    background-color: #B00000;
	    color: white;
	    padding: 10px;
	    width: 100px;
	    text-align: center;
	    -moz-border-radius:20px;  
        -webkit-border-radius:20px;  
        cursor: pointer;
	  }
	</style>
  </head>
  <%boolean isAddColor=false; %>
  <body>
 	
 	<div class="tab" style="float: left;" onmousemove="this.style.background='#FF0202';" onmouseout="this.style.background='#B00000';" onclick="window.location.href='<%=path %>/count!queryOfFenye'">客服统计</div>
    <div class="tab" style="float: left;margin-left: 10px;" onmousemove="this.style.background='#FF0202';" onmouseout="this.style.background='#B00000';" onclick="window.location.href='<%=path %>/countZy!queryOfFenye?cz=yes'">专员统计</div>
    <div class="tab" style="float: left;background-color: #FF0202;color: white;font-weight: ;margin-left: 10px;">类型统计</div>
    <div class="tab" style="float: left;margin-left: 10px;" onmousemove="this.style.background='#FF0202';" onmouseout="this.style.background='#B00000';" onclick="window.location.href='<%=path %>/countArea!queryOfFenye?cz=yes'">区域统计</div>
 	
 	
 	<br/>
 	<br/>
 	<br/>
 	<div style="text-align: center;color: white;background-color:#17B4FF;padding: 5px;font-size: 14px;font-weight:bold;">类型统计</div>
 	
 	<div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/countGroup!queryOfFenye" method="post">
	    		<div>
		    		<div id="datearea_1">
			    		开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div id="datearea_2">
		    			结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		筛选条件:
			    		<select id="sel_dt" name="filtrate" onchange="changeDate()">
			    			<option value="D">日</option>
			    			<option value="W">周</option>
			    			<option value="M">月</option>
			    			<option value="Y">年</option>
			    		</select>
		    		</div>
	    			<div>
	    			</div>
	    		</div>
	    	</form>
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
 	
    
    <div style="margin-bottom: 5px;"></div>
    
    <table border="1">
	    <tr>
	    	<th>序号</th>
	    	<th>开始时间</th>
	    	<th>结束时间</th>
	    	<th>故障类型</th>
	    	<th>故障报修量</th>
	    	<th>故障完成量</th>
	    	<th>完成率</th>
	    	<th>操作</th>
	    </tr>
	    <c:forEach items="${counts}" var="count" varStatus="status">
	    <c:if test="${count.rows!=0}">
    		<%isAddColor=!isAddColor; %>
   		</c:if>
	   	<%if(isAddColor){ %>
	    <tr class="odd_even_tr">
	    <%}else{ %>
	    <tr>
	    <%} %>
	    	<c:if test="${count.rows!=0}">
		    	<td rowspan="${count.rows}">${count.orderNum }</td>
		    	<td rowspan="${count.rows}">${count.sTime }</td>
		    	<td rowspan="${count.rows}">${count.eTime }</td>
	    	</c:if>
	    	<td>${count.type }</td>
	    	<td>${count.daAll }</td>
	    	<td>${count.daSuc }</td>
	    	<td>${count.ratioSuc }%</td>
	    	<td>
				<a onclick="queryDetails('${status.index}')" class="easyui-linkbutton" title="查看详情" data-options="plain:true">查看详情</a>
			</td>
	    </tr>
	    </c:forEach>
    </table>
  	
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:100%;height:400px;padding:10px;display: none;">
	</div>
	
	
	
	
	
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
