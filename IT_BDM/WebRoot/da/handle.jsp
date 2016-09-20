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
    
    <title>故障处理</title>
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
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
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
	<script type="text/javascript">
	
	function queryDetails(status) {
		console.log( ${json}[status].demand.DId );
		/*
		*/
		var table1="<table border=\"1\" class=\"table1\">";
		table1=table1+
		"<tr><td>编号：</td><td>"+${json}[status].demand.DId+"</td></tr>"+
		"<tr><td>发起人：</td><td>"+${json}[status].demand.DApplicant+"</td></tr>"+
		"<tr><td>故障描述：</td><td>"+${json}[status].demand.DContent+"</td></tr>"+
		"<tr><td>故障类型：</td><td>"+${json}[status].demand.DType+"</td></tr>"+
		"<tr><td>创建时间：</td><td>"+${json}[status].demand.DTimeString+"</td></tr>";
		table1=table1+"</table>";
		table1=table1+"<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th>处理人</th><th>处理状态</th><th>时间</th><th>被转发人</th></tr>";
		for ( var i = 0; i < ${json}[status].performs.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].performs[i].UName+"</td>"+
			"<td>"+${json}[status].performs[i].PState+"</td>"+
			"<td>"+${json}[status].performs[i].PTimeString+"</td>"+
			"<td>"+${json}[status].performs[i].UNameNext+"</td></tr>";
		}
		table1=table1+"</table>";
		$("#q").html(table1);
		$("#q").window('open');
	}
	
	function forward(u1,u2,u3,u4,u5,u6) {
		if($("#select_id").val()=="forward"){
			$("#u").window('open');
			$('#u_1').val(u1);
			$('#u_2').val(u2);
			$('#u_3').val(u3);
			$('#u_4').val(u4);
			$('#u_5').val(u5);
			$('#u_6').val(u6);
		}
		if($("#select_id").val()=="notComplete"){
			
			return confirm('确定未完成吗?');
		}
		if($("#select_id").val()=="complete"){
			$('#uc_1').val(u1);
			$('#uc_2').val(u2);
			$('#c').window('open');
			$('#c').submit();
			return confirm('确定已完成吗?');
		}
	}
	
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="故障处理" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/handle!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		类型:<input name="brand" type="text" value="${brand }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		日期:<input name="dates" type="date" value="${arae }"/>
    		~
    		<input name="datee" type="date" value="${arae }"/>
    		<br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    <div style="margin-bottom: 5px;">
    
    <table border="1" id="" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>发起人</th>
    	<th>故障描述</th>
    	<th>故障类型</th>
    	<th>创建时间</th>
    	<th>当前处理人</th>
    	<th>处理时间</th>
    	<th>状态</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${demper}" var="dp" varStatus="status">
    <tr>
		<td>${dp.demand.DId }</td>
    	<td>${dp.demand.DApplicant }</td>
    	<td>${dp.demand.DContent }</td>
    	<td>${dp.demand.DType }</td>
    	<td>${dp.demand.DTime }</td>
    	<td>${dp.performs[0].UName }</td>
    	<td>${dp.performs[0].PTime }</td>
    	<td>${dp.performs[0].PState }</td>
		<td>
			<select onchange="forward('${dp.demand.DId }','${dp.demand.DApplicant }','${dp.demand.DContent }','${dp.demand.DType }','${dp.demand.DTime }','${dp.performs[0].UName }')" id="select_id" name="select_id">
				<option value="notComplete">未完成</option>
				<option value="complete">完成</option>
				<option value="forward">转发</option>
			</select>
			<a onclick="queryDetails('${status.index}')"  class="easyui-linkbutton"  title="查看详情">查看详情</a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/handle!queryOfFenye" method="post">
		<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="15">15</option>
		</select>
		
		<span style="float: left;margin-left: 5px;">
		<span style="color: #A5A5A5;">|</span>
		<a onclick="page(1,2)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-last'" title="首页"></a>
		<a onclick="page(-1,1)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-l'" title="上一页"></a>
		<span style="color: #A5A5A5;">|</span>
		</span>
		
		<span style="float: left;margin-top: 3px;margin-left: 5px;">
		<input id="page" name="page.pageOn" type="number" style="width: 50px;height: 20px;" value="${page.pageOn }" min="1" max="${page.pageMax }" onchange="$('#f1').submit();"/>
		</span>
		
		<span style="float: left;margin-top: 5px;margin-left: 5px;">/${page.pageMax }</span>
		
		<span style="float: left;margin-left: 5px;">
		<span style="color: #A5A5A5;">|</span>
		<a onclick="page(1,1)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-n'" title="下一页"></a>
		<a onclick="page('${page.pageMax}',2)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-next'" title="末页"></a>
		</span>
		</form>
	</div>
	</div>
	
	<div id="u" class="easyui-window" title="转发" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/daManager!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_1" name="d.DId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>发起人：</td>
				<td>
					<input id="u_2" name="d.DApplicant" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>故障描述：</td>
				<td>
					<input id="u_3" name="d.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>故障类型：</td>
				<td>
					<input id="u_4" name="d.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td>
					<input id="u_5" name="d.DTime" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>当前处理人：</td>
				<td>
					<input id="u_6" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>被转发人：</td>
				<td>
					<select name="p.UNumNext">
						<c:forEach items="${listUsers}" var="us">
						<option value="${us.UNum }">${us.UName }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit" style="width: 95%;padding: 5px;" value="提交"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:400px;height:auto;display: none;">
		
	</div>
	<div id="c" style="display: none;">
		<form action="<%=path %>/handle!updateState?" method="post">
			<input id="uc_1" name="d.DId" type="text" style="display: none;" />
			<input id="uc_2" name="p.PState" type="text" style="display: none;"/>
		</form>
	</div>
	
	
	<div id="tt" style="display: none;">
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
