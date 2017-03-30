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
    
    <title>故障处理转发审核</title>
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
		$("#type_sel option[value='${type}']").attr("selected",true);
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
		console.log( ${json}[status].demand.DId );
		/*
		*/
		var table1="<table border=\"1\" class=\"table1\">";
		table1=table1+
		"<tr><td style=\"width:70px;\">编号：</td><td>"+${json}[status].demand.DId+"</td></tr>"+
		"<tr><td>发起人：</td><td>"+${json}[status].demand.DApplicant+"</td></tr>"+
		"<tr><td>故障区域：</td><td>"+${json}[status].demand.area+"</td></tr>"+
		"<tr><td>故障描述：</td><td>"+${json}[status].demand.DContent+"</td></tr>"+
		"<tr><td>故障类型：</td><td>"+${json}[status].demand.DType+"</td></tr>"+
		"<tr><td>创建时间：</td><td>"+${json}[status].demand.DTimeString+"</td></tr>"+
		"<tr><td>超时时间：</td><td>"+${json}[status].demand.DTimeExpectString+"</td></tr>";
		table1=table1+"</table>";
		table1=table1+"<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th width='50'>处理人</th><th width='52'>处理状态</th><th width='150'>最后处理时间</th><th width='52'>被转发人</th><th width='80'>备注</th></tr>";
		for ( var i = 0; i < ${json}[status].performs.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].performs[i].UName+"</td>"+
			"<td>"+${json}[status].performs[i].PState+"</td>"+
			"<td>"+${json}[status].performs[i].PTimeString+"</td>"+
			"<td>"+${json}[status].performs[i].UNameNext+"</td>"+
			"<td>"+${json}[status].performs[i].PNote+"</td></tr>";
		}
		table1=table1+"</table>";
		$("#q").html(table1);
		$("#q").window('open');
	}
	
	function auditing(u1,u2) {
		if($("#"+u2).val()=="npass"){
			$('#uc_1').val(u1);
			var span="<span>确定驳回转发操作？</span>";
			span=span+"<input id=\"uc_2\" name=\"cState\" type=\"text\" style=\"display:none;\" value=\"进行中\"/>";
			$("#sTest").html(span);
			$("#c").window('open');
		}
		
		if($("#"+u2).val()=="pass"){
			$('#uc_1').val(u1);
			var span="<span>确定通过转发操作？</span>";
			span=span+"<input id=\"uc_2\" name=\"cState\" type=\"text\" style=\"display:none;\" value=\"转发\"/>";
			$("#sTest").html(span);
			$("#c").window('open');
		}
	}
	function Texit(){
		$("#c").window("close");
	}
	</script>
  </head>
  
  <body>
    
      <div class="easyui-panel" title="故障处理" style="width:100%;padding: 5px;display: none;">
	    
	    <div class="kscx">
	   		<div class="inp">
		    	<form id="ks" action="<%=path %>/auditing!queryOfFenye" method="post">
		    		<div>
			    		<div>
				    		创建开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
			    		</div>
			    		<div>
			    			创建结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
			    		</div>
		    		</div>
		    		<div>
			    		<div>
				    		编号:<input name="id" type="text" value="${id }"/>
			    		</div>
		    			<div>
		    				故障类型：
							<select id="type_sel" name="type">
				    			<option value="">--请选择类型--</option>
								<option value="桌面组">桌面组</option>
								<option value="开发组">开发组</option>
								<option value="维护组">维护组</option>
								<option value="系统组">系统组</option>
								<option value="硬件组">硬件组</option>
								<option value="其他">其他</option>		
							</select>
		    			</div>
		    		</div>
		    	</form>
	   		</div>
	   		<div  class="btn">
	   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
	   		</div>
	   		<div style="clear:both;"></div>
	    </div>
	    
	    <div style="margin-bottom: 5px;">
		    <table border="1" id="" style="font-size: 12px;">
		    <tr>
		    	<th width='150'>编号</th>
		    	<th width='150'>发起人</th>
		    	<th width='300'>故障描述</th>
		    	<th width='90'>故障类型</th>
		    	<th>创建时间</th>
		    	<th>当前处理人</th>
		    	<th>超时时间</th>
		    	<th>状态</th>
		    	<th>操作</th>
		    </tr>
		    <c:forEach items="${demper}" var="dp" varStatus="status">
			    <tr>
					<td>${dp.demand.DId }</td>
			    	<td>${dp.demand.DApplicant }</td>
			    	<td style="width:300px;">${dp.demand.DContent }</td>
			    	<td>${dp.demand.DType }</td>
			    	<td>${dp.demand.DTime }</td>
			    	<td>${dp.performs[0].UName }</td>
			    	<td>${dp.demand.DTimeExpect }</td>
			    	<td>${dp.performs[0].PState }</td>
					<td>
						<select onchange="auditing('${dp.demand.DId }','select_id${status.index}')" id="select_id${status.index}" name="select_id">
							<option value="">审核...</option>
							<option value="pass">通过</option>
							<option value="npass">驳回</option>
						</select>
						<a onclick="queryDetails('${status.index}')"  class="easyui-linkbutton"  title="查看详情" data-options="plain:true">查看详情</a>
					</td>
			    </tr>
		    </c:forEach>
		    </table>
		</div>
	
		<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
			<form id="f1" action="<%=path %>/auditing!queryOfFenye?id=${id}&type=${type}&dates=${dates}&datee=${datee}" method="post">
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
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:500px;height:auto;display: none;padding: 10px;top:210px;">
		
	</div>
	
	
	<div id="c" class="easyui-window" title="提示窗口" data-options="modal:true,closed:true"  style="width:300px;height:200px;display: none;">
		<form action="<%=path %>/auditing!update" method="post">
			<input id="uc_1" name="cid" type="text" style="display: none;" />
			<div id="sTest" style="font-size:20px;font-weight:bold;width:200px;margin:30px 0 30px 60px;">
			</div>
			<div style="float:left;margin:20px 25px 0 50px;">
				<input  type="submit" style="width:80px;height:30px;font-size:15px;" value="确 定" onclick="return show_hint(['c'])"/>
			</div>
			<div style="float:left;margin:20px 20px 0 0px;">
				<input type="button" style="width:80px;height:30px;font-size:15px;" value="取 消" onclick="Texit()"/>
			</div>
		</form>
	</div>
	
	
	
	
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
