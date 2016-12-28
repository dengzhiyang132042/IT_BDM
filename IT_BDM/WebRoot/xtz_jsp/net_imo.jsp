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
    
    <title>网点Imo登记</title>
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
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/js/myjs.js">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
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
	function queryNum(a){
		var as = new Array();
		as = a.split(",");
		var table1 = "<table><tr><td>子账号</td></tr>"
		for ( var i = 0; i < as.length; i++) {
			table1=table1+
			"<tr><td>"+as[i]+"</td></tr>";
		}
		table1=table1+"</table>";
		$("#q").html(table1);
		$("#q").window('open');
	}
	function addWindow(){
		var today = new Date();   
	    var day = today.getDate();   
	    var month = today.getMonth() + 1;   
	    var year = today.getYear()+1900;    
	    var date = year + "-" + month + "-" + day;   
	    $('#serdate').val(date);
	    $('#a').window('open'); 
	}
	</script>
	
  </head>
  
  <body>
    
    <div class="easyui-panel" title="网点IMO账号登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/netImo!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		片区：<input name="area" type="text" value="${area }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		条码：<input name="num" type="text" value="${num }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		站点名：<input name="netName" type="text" value="${netName }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		维护日期:<input name="dates" type="date" value="${dates }"/>
    		~
    		<input name="datee" type="date" value="${datee }"/>
    		<br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    
    <div style="margin-bottom: 5px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>登记时间</th>
    	<th>片区</th>
    	<th>条码</th>
    	<th>站点名</th>
    	<th>类别</th>
    	<th>IMO账号</th>
    	<th>IMO密码</th>
    	<th>维护类型</th>
    	<th>登记人</th>
    	<th>维护时间</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${imos}" var="i">
    <tr>
		<td width="">${i.IId }</td>
		<td width=""><fmt:formatDate value="${i.IRegisterDate }" pattern="yyyy/MM/dd" /></td>
		<td width="">${i.IArea }</td>
		<td width="">${i.INum }</td>
		<td width="">${i.IName }</td>
		<td width="">${i.IType }</td>
		<td width="">${i.IAccount }</td>
		<td width="">${i.IPass }</td>
		<td width="">${i.IServiceType }</td>
		<td width="">${i.IIt }</td>
		<td width=""><fmt:formatDate value="${i.IServiceDate }" pattern="yyyy/MM/dd" /></td>
		<td width="5%" align="center">
			<a onclick="queryNum('${i.childNum}')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" title="查看子账号"></a>
			<a onclick="update('${i.IId }','<fmt:formatDate value="${i.IRegisterDate }" pattern="yyyy-MM-dd" />','${i.IArea }','${i.INum }','${i.IName }','${i.IType }','${i.IAccount }','${i.IPass }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/netImo!delete?id=${i.IId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/netImo!queryOfFenye?id=${id}&area=${area}&num=${num}&netName=${netName}&dates=${dates}&datee=${datee}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:350px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/netImo!update" method="post">
			<input id="u_1" name="imo.IId" type="text" style="width: 100%;display: none;"/>
		<table border="0" class="table1">
			<tr>
				<td width="100">登记日期：</td>
				<td>
					<input id="u_2" name="imo.IRegisterDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>片区：</td>
				<td>
					<input id="u_3" name="imo.IArea" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>条码：</td>
				<td>
					<input id="u_4" name="imo.INum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>站点名：</td>
				<td>
					<input id="u_5" name="imo.IName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>类别：</td>
				<td>
					<input id="u_6" name="imo.IType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO账号：</td>
				<td>
					<input id="u_7" name="imo.IAccount" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO密码：</td>
				<td>
					<input id="u_8" name="imo.IPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>子账号：</td>
				<td>
					<input name="childNumStart" type="number" style="width:50px;"/> ~
					<input name="childNumEnd" type="number" style="width:50px;"/>（只添加）
				</td>
			</tr>
			<tr>
				<td>维护类型：</td>
				<td>
					<select name="imo.IServiceType" style="width: 80px;">
						<option value="维护" >维 护</option>
						<option value="注册" >注 册</option>
						<option value="注销" >注 销</option>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:350px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/netImo!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="100">登记日期：</td>
				<td>
					<input id="serdate" name="imo.IRegisterDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>片区：</td>
				<td>
					<input name="imo.IArea" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>条码：</td>
				<td>
					<input name="imo.INum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>站点名：</td>
				<td>
					<input name="imo.IName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>类别：</td>
				<td>
					<input name="imo.IType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO账号：</td>
				<td>
					<input name="imo.IAccount" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO密码：</td>
				<td>
					<input name="imo.IPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>子账号：</td>
				<td>
					<input name="childNumStart" type="number" style="width:50px;"/> ~
					<input name="childNumEnd" type="number" style="width:50px;"/>
				</td>
			</tr>
			<tr>
				<td>维护类型：</td>
				<td>
					<select name="imo.IServiceType" style="width: 80px;">
						<option value="注册" >注 册</option>
						<option value="维护" >维 护</option>
						<option value="注销" >注 销</option>
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
	
	<div id="tt" style="display: none;">
		<a class="icon-zs-import" onclick="$('#in').window('open')" style="margin-left: 10px;" title="excel导入"></a>
		<a class="icon-add" onclick="addWindow();defualtOutTime()" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form action="<%=path %>/netImo!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/xtz/网点IMO.xlsx';">
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
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:300px;height:400px;padding:10px;display: none;left:45%;top:30%;">
	</div>
	<jsp:include page="../hintModal.jsp"/>
  </body>
</html>
