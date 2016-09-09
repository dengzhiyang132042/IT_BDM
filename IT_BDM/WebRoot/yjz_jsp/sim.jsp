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
    
    <title>区部信息</title>
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
		
		$('.easyui-tree').tree('collapseAll');
		
		$('#cc1').combo({
			required:true,
			editable:false
		});
		$('#sp1').appendTo($('#cc1').combo('panel'));
		$('#sp1 li div').click(function(){
			var f = $(this).find('font').text();
			var t = $(this).find('.tree-title');
			var str=$("<span>"+t.html()+"</span>");
			str.find('font').remove();
			//alert(f+"*"+str.text() );
			$('#cc1').combo('setValue', f).combo('setText', str.text());
		});
		
		$('#cc2').combo({
			required:true,
			editable:false
		});
		$('#sp2').appendTo($('#cc2').combo('panel'));
		$('#sp2 li div').click(function(){
			var f = $(this).find('font').text();
			var t = $(this).find('.tree-title');
			var str=$("<span>"+t.html()+"</span>");
			str.find('font').remove();
			//alert(f+"*"+str.text() );
			$('#cc2').combo('setValue', f).combo('setText', str.text());
		});
		
		
	});
	
	function update(u1,u2,u3,u4,u5,u6,u7){
		$('#u').window('open');
		$('#u_1').val(u1);
		//-----------------------
		$('#cc1').combo('setText',u2);
		$('#cc1').combo('setValue',u2);
		
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
		$('#u_7').val(u7);
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
	}
	
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="SIM费用报销" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/sim!queryOfFenyeSIM" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		部门：<input name="csName" type="text" value="${csName }"/>
    		<br/>
    		<input type="submit" value="查询" style="margin:5px;"/>
    	</form>	
    </div>
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>部门</th>
    	<th>SIM数量 </th>
    	<th>月数</th>
    	<th>公司总费用</th>
    	<th>登记时间</th>
    	<th>备注</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${sims}" var="sim">
    <tr>
		<td width="">${sim.SId }</td>
		<td width="">${sim.csName }</td>
		<td width="">${sim.SNumber }</td>
		<td width="">${sim.SMonth }</td>
		<td width="">${sim.SFeeSum }</td>
		<td width=""><fmt:formatDate value="${sim.SDate }" pattern="yyyy/M/d" /></td>
		<td width="">${sim.SNote }</td>
		<td width="5%" align="center">
			<a onclick="update('${sim.SId }','${sim.csName }','${sim.SNumber }','${sim.SMonth }','${sim.SFeeSum }','${sim.SDate }','${sim.SNote }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/sim!deleteSIM?id=${sim.SId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/sim!queryOfFenyeSIM?id=${id}&csName={csName}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;top: 200px;">
		<form action="<%=path %>/sim!updateSIM" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号</td>
				<td>
					<input id="u_1" name="sim.SId" type="text"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<select name="sim.csName" id="cc1" style="width:100%;"></select>
					<div id="sp1">
						<div style="color:#99BBE8;background:#fafafa;padding:5px;">选择公司组织架构</div>
						${html }
					</div>
				</td>
			</tr>
			<tr>
				<td>SIM数量：</td>
				<td>
					<input id="u_3" name="sim.SNumber" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>月数：</td>
				<td>
					<input id="u_4" name="sim.SMonth" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>公司总费用：</td>
				<td>
					<input id="u_5" name="sim.SFeeSum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>登记时间：</td>
				<td>
					<input id="u_6" name="sim.SDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_7" name="sim.SNote" type="text" style="width: 100%;"/>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;top: 200px;">
		<form action="<%=path %>/sim!addSIM" method="post">
		<table border="0" class="table1">
			<tr>
				<td>部门：</td>
				<td>
					<select name="sim.csName" id="cc2" style="width:100%;"></select>
					<div id="sp2">
						<div style="color:#99BBE8;background:#fafafa;padding:5px;">选择公司组织架构</div>
						${html }
					</div>
				</td>
			</tr>
			<tr>
				<td>SIM数量：</td>
				<td>
					<input name="sim.SNumber" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>月数：</td>
				<td>
					<input name="sim.SMonth" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>公司总费用：</td>
				<td>
					<input name="sim.SFeeSum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>登记时间：</td>
				<td>
					<input name="sim.SDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="sim.SNote" type="text" style="width: 100%;"/>
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
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
