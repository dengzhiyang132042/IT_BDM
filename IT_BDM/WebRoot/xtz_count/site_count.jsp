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
    
    <title>站点资料统计</title>
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
	$(function(){
		$("#sel_dt option[value='${filtrate}']").attr("selected",true);
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
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
	<script type="text/javascript">
	function queryDetails(status) {
		/*
		console.log(${json}[status].demPer.length);
		*/
		var table1="<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th>编号</th><th>发起人</th><th>故障描述</th><th>故障类型</th><th>创建时间</th><th>当前处理人</th><th>超时时间</th><th>状态</th></tr>";
		for ( var i = 0; i < ${json}[status].demPer.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].demPer[i].demand.DId+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DApplicant+"</td>"+
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
  
  <body>
 	<div style="text-align: center;margin-right: 17px;color: white;background-color:#17B4FF;padding: 5px;font-size: 14px;font-weight:bold;">站点资料统计</div>
 	
 	
	<div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466;margin-right: 17px;margin-top: 10px;">
    	快速查询
    	<br/>
    	<form action="<%=path %>/siteCount!queryOfFenye" method="post">
    		当前查询条件:
    		<select id="sel_dt" name="filtrate">
    			<option value="D">周</option>
    			<option value="M">月</option>
    			<option value="Y">年</option>
    		</select>
    		<br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    <div style="margin-bottom: 5px;">
	    
	    
  	<div style="margin-right: 17px;">
    <table border="1" id="" style="font-size: 12px;">
	    <tr>
	    	<th>序号</th>
	    	<th>开始时间</th>
	    	<th>结束时间</th>
	    	<th>周数</th>
	    	<th>维护类型</th>
	    	<th>维护数量</th>
	    	<th>操作</th>
	    </tr>
	    <c:forEach items="${counts}" var="count" varStatus="status">
	    <tr>
	    	<td>${status.index+1 }</td>
	    	<td>${count.sTime }</td>
	    	<td>${count.eTime }</td>
	    	<td>${count.daAll }</td>
	    	<td>${count.daSuc }</td>
	    	<td>${count.ratioSuc }%</td>
	    	<td>
				<a onclick="queryDetails('${status.index}')" class="easyui-linkbutton" title="查看详情">查看详情</a>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
		</div>
  	</div>
  	
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:1400px;height:600px;padding:10px;display: none;">
	</div>
	
	
	
  </body>
</html>
