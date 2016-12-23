<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zs.tools.Constant"%>
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
    
    <title>查看项目详情</title>
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
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/My97DatePicker/WdatePicker.js"></script>
	
	
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
		$('#u_6').val(u6*100);
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
	function add(){
		var path="<%=path%>/xtz_jsp/project_add.jsp";
		//console.log(path);
		window.location.href=path;
	}
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="项目详情" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/project!queryOfFenye" method="post">
    		<br/>
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		工作项目:<input type="text" name="pname" value="${pname }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		项目时间:<input name="year" type="number" value="${year }" style="width:50px;"/> 年
    		<input name="month" type="number" value="${month }" style="width:40px;"/>月
    		<br/><br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    
    <div style="margin-bottom: 5px;width:100%;height:480px;">
		<table style="font-size: 15px;float: left;width:20%;" id="eidtASubjectWindow1">
			<tr>
				<th style="width: 45%;">工作项目</th>
				<th style="width: 55%;">工作目标</th>
			</tr>
			<c:forEach items="${ps}" var="p">
				<tr style="height:400px;">
					<td style="padding:10px;">
					<br/><br/><br/>
					${p.PProject }
					<br/><br/><br/>
					<fmt:formatDate value="${p.PDate }" pattern="yyyy-M" />月
					</td>
					<td style="padding:20px;">${p.PTarget }</td>
				</tr>
				<tr>
					<td>
						<div style="width: 100px;height:30px;text-align: right;">
							<a href="<%=path %>/project!delete?id=${p.PId}" onclick="return confirm('确定删除整个项目吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
						</div>
					</td>
					<td>
					</td>
				</tr>
			</c:forEach>
		</table>
		<table style="font-size: 15px;float: left;width:80%;">
			<tr>
				<th style="width: 8%;">工作内容</th>
				<th style="width: 8%;">需求人员</th>
				<th style="width: 14%;">工作详情</th>
				<th style="width: 30%;">进展情况</th>
				<th style="width: 8%;">开始时间</th>
				<th style="width: 8%;">计划时间</th>
				<th style="width: 6%;">实际时间</th>
				<th style="width: 7%;">完成进度</th>
				<th style="width: 6%;">用时</th>
				<th style="width: 5%;">操作</th>
			</tr>
			<c:forEach items="${ps }" var="p">
				<c:forEach items="${p.projectDetails}" var="pd">
					<tr>
						<td >${pd.DContent }</td>
						<td >${pd.DMan }</td>
						<td >${pd.DDetail }</td>
						<td ><textarea readonly="readonly" style="height:80px;width: 93%;display:table-cell;vertical-aglin:middle;" >${pd.DSituation }</textarea></td>
						<td ><fmt:formatDate value="${pd.DStartDate }" pattern="yyyy-MM-dd" /></td>
						<td ><fmt:formatDate value="${pd.DPlanDate }" pattern="yyyy-MM-dd" /></td>
						<td ><fmt:formatDate value="${pd.DRealityDate }" pattern="yyyy-MM-dd" /></td>
						<td >${pd.DSchedule *100 }%</td>
						<td >${pd.DUserDate }</td>
						<td>
						<a onclick="update('${pd.DId }','${pd.DContent }','<fmt:formatDate value="${pd.DStartDate }" pattern="yyyy-MM-dd" />','<fmt:formatDate value="${pd.DPlanDate }" pattern="yyyy-MM-dd" />','<fmt:formatDate value="${pd.DRealityDate }" pattern="yyyy-MM-dd" />','${pd.DSchedule }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
						</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/project!queryOfFenye?id=${id}&pname=${pname}&year=${year}&month=${month}" method="post">
		<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
			<option value="1">1</option>
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
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/project!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="80">编号：</td>
				<td>
					<input id="u_1" name="pd.DId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>工作内容：</td>
				<td>
					<input id="u_2" name="pd.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>开始时间：</td>
				<td>
					<input id="u_3" name="pd.DStartDate" type="text" style="width:50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'u_4\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>计划时间：</td>
				<td>
					<input id="u_4" name="pd.DPlanDate" type="text" style="width: 50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'u_3\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>实际时间：</td>
				<td>
					<input id="u_5" name="pd.DRealityDate" type="text" style="width: 50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'u_3\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>完成进度：</td>
				<td>
					<input id="u_6" name="pd.DSchedule" type="number" style="width: 20%;"/>%
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
	</div>
	<div id="tt" style="display: none;">
		<a class="icon-zs-import" onclick="$('#in').window('open')" style="margin-left: 10px;" title="excel导入"></a>
		<a class="icon-add" onclick="add()" style="margin-left: 10px;" title="添加">
	</div>
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form action="<%=path %>/project!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/xtz/系统开发登记.xlsx';">
					下载模板
				</td>
			</tr>
			<tr>
				<td>导入Excel数据</td>
				<td>
					<input type="file" name="fileExcel"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="导入" onclick="return show_hint(['in'])"/>	
				</td>
			</tr>
		</table>
		</form>
	</div>
	<jsp:include page="../hintModal.jsp"/>
  </body>
</html>
