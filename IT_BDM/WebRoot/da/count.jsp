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
    
    <title>故障统计</title>
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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
		$('#u_9').val(u9);
		$('#u_10').val(u10);
		$('#u_11').val(u11);
		$('#u_12').val(u12);
		$('#u_13').val(u13);
		$('#u_14').val(u14);
		$('#u_15').val(u15);
		$('#u_16').val(u16);
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
		/*
		console.log(${json}[status].demPer.length);
		*/
		var table1="<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th>编号</th><th>发起人</th><th>故障描述</th><th>故障类型</th><th>创建时间</th><th>当前处理人</th><th>最后处理时间</th><th>状态</th></tr>";
		for ( var i = 0; i < ${json}[status].demPer.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].demPer[i].demand.DId+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DApplicant+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DContent+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DType+"</td>"+
			"<td>"+${json}[status].demPer[i].demand.DTimeString+"</td>"+
			"<td>"+${json}[status].demPer[i].performs[0].UName+"</td>"+
			"<td>"+${json}[status].demPer[i].performs[0].PTimeString+"</td>"+
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
 	
 	
    <div class="tab" style="float: left;background-color: #FF0202;color: white;font-weight: ;">客服统计</div>
 	
 	<div class="tab" style="float: left;margin-left: 10px;" onmousemove="this.style.background='#FF0202';" onmouseout="this.style.background='#B00000';" onclick="window.location.href='<%=path %>/countZy!queryOfFenye'">专员统计</div>
 	
 	
 	<br/>
 	<br/>
 	<br/>
 	<div style="text-align: center;margin-right: 17px;color: white;background-color:#17B4FF;padding: 5px;font-size: 14px;font-weight:bold;">客服统计</div>
 	
 	
	<div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466;margin-right: 17px;margin-top: 10px;">
    	快速查询
    	<br/>
    	<form action="<%=path %>/count!queryOfFenye" method="post">
    		当前查询条件:
    		<select id="sel_dt" name="filtrate">
    			<option value="D">日</option>
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
	    	<th rowspan="2">序号</th>
	    	<th colspan="2">时间范围</th>
	    	<th rowspan="2">故障报修量</th>
	    	<th rowspan="2">故障完成量</th>
	    	<th rowspan="2">完成率</th>
	    	<th rowspan="2">操作</th>
	    </tr>
	    <tr>
	    	<th>开始时间</th>
	    	<th>结束时间</th>
	    </tr>
	    <tr style="height: 30px;color: white;border: 0px;">
	    	<td width="90">1</td>
	    	<td width="280">1</td>
	    	<td width="280">1</td>
	    	<td width="250">1</td>
	    	<td width="250">1</td>
	    	<td width="250">1</td>
	    	<td>1</td>
	    </tr>
    </table>
  	</div>
    <div style="height:500px;overflow: scroll;margin-top: -31px;">
    <table border="1" id="" style="font-size: 12px;">
	    <c:forEach items="${counts}" var="count" varStatus="status">
	    <tr>
	    	<td width="90">${status.index+1 }</td>
	    	<td width="280">${count.sTime }</td>
	    	<td width="280">${count.eTime }</td>
	    	<td width="250">${count.daAll }</td>
	    	<td width="250">${count.daSuc }</td>
	    	<td width="250">${count.ratioSuc }%</td>
	    	<td>
				<a onclick="queryDetails('${status.index}')" class="easyui-linkbutton" title="查看详情">查看详情</a>
			</td>
	    </tr>
	    </c:forEach>
	    
	    <c:forEach items="${ps}" var="p">
	    <tr>
			<td width="">${p.PId }</td>
			<td width="">${p.PBrand }</td>
			<td width="">${p.PNumber }</td>
			<td width="">${p.PArea }</td>
			<td width="">${p.PAddress }</td>
			<td width="">${p.PType }</td>
			<td width="">${p.PPort }</td>
			<td width="5%" align="center">
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除">转发</a>
				<a onclick="update('${p.PId }','${p.PBrand }','${p.PNumber }','${p.PArea }','${p.PAddress }','${p.PType }','${p.PPort }','${p.PIp }','${p.PCartridge }','${p.PToner }','${p.PTrait }','${p.PFunction }','${p.PPage }','${p.PAdd }','${p.PLast }','${p.PNext }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
				<a href="<%=path%>/print!delete?id=${p.PId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
		</div>
  	</div>
  	
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:1400px;height:600px;padding:10px;display: none;">
	</div>
	
	
	
	
	
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
