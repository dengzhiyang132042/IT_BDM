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
    
    <title>角色管理</title>
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
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		var td=$("#"+u4).html();
		
		/*
		console.log(td.html());
		var str="1,2,3";
		var ss=str.split(",");
		console.log(ss.length);
		*/
		var ss1=td.split(";");
		for ( var i = 0; i < ss1.length; i++) {
			var ss2=ss1[i].split(",");
			ss1[i]=ss2[0].trim();
		}
		
		for ( var j = 0; j < ss1.length; j++) {
		//	console.log(ss1[j].trim());
			$("#cscheck :checkbox").each(function () {
				if($(this).val()==ss1[j]){
					$(this).attr("checked", "checked");
				}
            });
		}
		
		//console.log(ss1);
		
		
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
	$(function(){
		var all=$("#all");
		var un=$("#uncheck");
		var other=$("#othercheck");
		var allcheck=$("#cscheck :checkbox");
		all.click(function(){
			$("#cscheck :checkbox,#all").prop("checked", true);
		});
		un.click(function(){
			$("#cscheck :checkbox,#all").prop('checked',false);
		});
		other.click(function(){
			allcheck.each(function () {
                   $(this).prop("checked", !$(this).prop("checked"));
               });
		});
	});
	
	$(function(){
		var all=$("#all1");
		var un=$("#uncheck1");
		var other=$("#othercheck1");
		var allcheck=$("#cscheck1 :checkbox");
		all.click(function(){
			$("#cscheck1 :checkbox,#all1").prop("checked", true);
		});
		un.click(function(){
			$("#cscheck1 :checkbox,#all1").prop('checked',false);
		});
		other.click(function(){
			allcheck.each(function () {
                   $(this).prop("checked", !$(this).prop("checked"));
               });
		});
	});
	</script>
	
  </head>
  
  <body>
    
    <div class="easyui-panel" title="角色管理" style="width: 100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    	
   		<div style="margin-bottom: 5px;">
	    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
		    <tr align="center" style="height: 28px;background-color: #E6E6E6;">
		    	<th width="150">编号</th>
		    	<th width="90">名称</th>
		    	<th width="150">描述</th>
		    	<th width="70">操作</th>
		    </tr>
		    <c:forEach items="${rs}" var="r">
		    <tr>
				<td width="10%">${r.RId }</td>
				<td width="10%">${r.RName }</td>
				<td width="20%">${r.RDescription }</td>
				<td id="td_${r.RId }" width="55%" style="display: none;">
					<c:forEach items="${r.ps}" var="p" varStatus="sta">
					${p.PId },${p.PName };
					</c:forEach>
				</td>
				<td width="5%" align="center">
					<a onclick="update('${r.RId }','${r.RName }','${r.RDescription }','td_${r.RId }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
					<a href="<%=path %>/role!delete?id=${r.RId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
				</td>
		    </tr>
		    </c:forEach>
	    </table>
		</div>	
			
		<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
			<form id="f1" action="<%=path %>/role!queryOfFenye" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/role!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="70">编号：</td>
				<td>
					<input id="u_1" name="r.RId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>名称：</td>
				<td>
					<input id="u_2" name="r.RName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>描述：</td>
				<td>
					<input id="u_3" name="r.RDescription" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height: 300px;overflow: scroll;">
					权限明细：
					<br/>
					<div id ="cscheck">
					<c:forEach items="${ps}" var="per" varStatus="sta">
					<input name="per${per.PId }" type="checkbox" value="${per.PId }"/>
					<span>${per.PId }.${per.PName }</span>
					<br/>
					</c:forEach>
					</div>
					<input id="all" type="button" value="全选"/>
					<input id="uncheck" type="button" value="全不选"/>
					<input id="othercheck" type="button" value="反选"/>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit" style="width: 95%;padding: 5px;" value="提交" onclick="return show_hint(['u'])"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/role!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="70">名称：</td>
				<td>
					<input name="r.RName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>描述：</td>
				<td>
					<input name="r.RDescription" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height: 300px;overflow: scroll;">
					权限明细：
					<br/>
					<div id="cscheck1">
					<c:forEach items="${ps}" var="per" varStatus="sta">
					<input name="per${per.PId }" type="checkbox" value="${per.PId }"/>
					<span>${per.PId }.${per.PName }</span>
					<br/>
					</c:forEach>
					</div>
					<input id="all1" type="button" value="全选"/>
					<input id="uncheck1" type="button" value="全不选"/>
					<input id="othercheck1" type="button" value="反选"/>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit" style="width: 95%;padding: 5px;" value="提交" onclick="return show_hint(['a'])"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	<div id="tt" style="display: none;">
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
