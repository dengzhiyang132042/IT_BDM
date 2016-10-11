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
    
    <title>打印机</title>
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
		$(  "#eidtASubjectWindow1").show();
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
	
  </head>
  
  <body>
    
    <div class="easyui-panel" title="打印机登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/print!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		品牌:<input name="brand" type="text" value="${brand }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		区域:<input name="area" type="text" value="${area }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		IP:<input name="ip" type="text" value="${ip }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		<br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    <div style="margin-bottom: 5px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>品牌</th>
    	<th>型号</th>
    	<th>区域</th>
    	<th>打印机位置</th>
    	<th>资产类型</th>
    	<th>端口</th>
    	<th>IP</th>
    	<th>备用墨盒</th>
    	<th>备用墨粉</th>
    	<th>设备性能</th>
    	<th>主要功能</th>
    	<th>纸张支持</th>
    	<th>加墨维护</th>
    	<th>上次加墨时间</th>
    	<th>下次加墨时间</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${ps}" var="p">
    <tr>
		<td width="">${p.PId }</td>
		<td width="">${p.PBrand }</td>
		<td width="">${p.PNumber }</td>
		<td width="">${p.PArea }</td>
		<td width="">${p.PAddress }</td>
		<td width="">${p.PType }</td>
		<td width="">${p.PPort }</td>
		<td width="">${p.PIp }</td>
		<td width="">${p.PCartridge }</td>
		<td width="">${p.PToner }</td>
		<td width="">${p.PTrait }</td>
		<td width="">${p.PFunction }</td>
		<td width="">${p.PPage }</td>
		<td width="">${p.PAdd }</td>
		<td width="">${p.PLast }</td>
		<td width="">${p.PNext }</td>
		<td width="5%" align="center">
			<a onclick="update('${p.PId }','${p.PBrand }','${p.PNumber }','${p.PArea }','${p.PAddress }','${p.PType }','${p.PPort }','${p.PIp }','${p.PCartridge }','${p.PToner }','${p.PTrait }','${p.PFunction }','${p.PPage }','${p.PAdd }','${p.PLast }','${p.PNext }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/print!delete?id=${p.PId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/print!queryOfFenye?id=${id}&brand=${brand}&area=${area}&ip${ip}" method="post">
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
		<form action="<%=path %>/print!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_1" name="p.PId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>品牌：</td>
				<td>
					<input id="u_2" name="p.PBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>型号：</td>
				<td>
					<input id="u_3" name="p.PNumber" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>区域：</td>
				<td>
					<input id="u_4" name="p.PArea" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>打印机位置：</td>
				<td>
					<input id="u_5" name="p.PAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>资产类型：</td>
				<td>
					<input id="u_6" name="p.PType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>端口：</td>
				<td>
					<input id="u_7" name="p.PPort" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IP：</td>
				<td>
					<input id="u_8" name="p.PIp" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备用墨盒：</td>
				<td>
					<input id="u_9" name="p.PCartridge" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备用墨粉：</td>
				<td>
					<input id="u_10" name="p.PToner" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>设备性能：</td>
				<td>
					<input id="u_11" name="p.PTrait" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主要功能：</td>
				<td>
					<input id="u_12" name="p.PFunction" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>纸张支持：</td>
				<td>
					<input id="u_13" name="p.PPage" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>加墨维护：</td>
				<td>
					<input id="u_14" name="p.PAdd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>上次加墨时间：</td>
				<td>
					<input id="u_15" name="p.PLast" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>下次加墨时间：</td>
				<td>
					<input id="u_16" name="p.PNext" type="date" style="width: 100%;"/>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/print!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td>品牌：</td>
				<td>
					<input name="p.PBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>型号：</td>
				<td>
					<input name="p.PNumber" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>区域：</td>
				<td>
					<input name="p.PArea" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>打印机位置：</td>
				<td>
					<input name="p.PAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>资产类型：</td>
				<td>
					<input name="p.PType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>端口：</td>
				<td>
					<input name="p.PPort" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IP：</td>
				<td>
					<input name="p.PIp" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备用墨盒：</td>
				<td>
					<input name="p.PCartridge" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备用墨粉：</td>
				<td>
					<input name="p.PToner" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>设备性能：</td>
				<td>
					<input name="p.PTrait" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主要功能：</td>
				<td>
					<input name="p.PFunction" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>纸张支持：</td>
				<td>
					<input name="p.PPage" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>加墨维护：</td>
				<td>
					<input name="p.PAdd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>上次加墨时间：</td>
				<td>
					<input name="p.PLast" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>下次加墨时间：</td>
				<td>
					<input name="p.PNext" type="date" style="width: 100%;"/>
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
