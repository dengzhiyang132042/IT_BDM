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
    
    <title>管理电脑统计</title>
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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21){
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
		$('#u_17').val(u17);
		$('#u_18').val(u18);
		$('#u_19').val(u19);
		$('#u_20').val(u20);
		$('#u_21').val(u21);
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
    
    <div class="easyui-panel" title="管理电脑统计" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/computer!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		部门：<input name="section" type="text" value="${section }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		姓名:<input name="name" type="text" value="${name }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		工号:<input name="num" type="text" value="${num }"/>
    		<br/>
    		<input type="submit" value="查询"/>
    	</form>	
    </div>
    <div style="margin-bottom: 5px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th rowspan="2">编号</th>
    	<th rowspan="2">部门</th>
    	<th rowspan="2">姓名</th>
    	<th rowspan="2">工号</th>
    	<th rowspan="2">职位</th>
    	<th rowspan="2">位置</th>
    	<th rowspan="2">电脑用户(AD)</th>
    	<th rowspan="2">IP</th>
    	<th rowspan="2">MAC</th>
    	<th colspan="2">cpu</th>
    	<th colspan="2">主板</th>
    	<th colspan="2">内存</th>
    	<th rowspan="2">硬盘</th>
    	<th colspan="2">显示器</th>
    	<th rowspan="2">是否可报废</th>
    	<th rowspan="2">备注说明</th>
    	<th rowspan="2">操作</th>
    </tr>
    <tr>
    	<th>品牌</th>
    	<th>型号</th>
    	<th>品牌</th>
    	<th>芯片组</th>
    	<th>容量</th>
    	<th>频率</th>
    	<th>品牌</th>
    	<th>尺寸</th>
    </tr>
    <c:forEach items="${cs}" var="c">
    <tr>
		<td width="">${c.CId }</td>
		<td width="">${c.CSection }</td>
		<td width="">${c.CMaster }</td>
		<td width="">${c.CNum }</td>
		<td width="">${c.CPosition }</td>
		<td width="">${c.CAddress }</td>
		<td width="">${c.CAd }</td>
		<td width="">${c.CIp }</td>
		<td width="">${c.CMac }</td>
		<td width="">${c.CCpuBrand }</td>
		<td width="">${c.CCpuModel }</td>
		<td width="">${c.CBoardBrand }</td>
		<td width="">${c.CBoardChip }</td>
		<td width="">${c.CMemoryC }</td>
		<td width="">${c.CMemoryF }</td>
		<td width="">${c.CDisk }</td>
		<td width="">${c.CDisplayBrand }</td>
		<td width="">${c.CDisplayC }</td>
		<td width="">${c.CIsScrap }</td>
		<td width="">${c.CNote }</td>
		<td width="5%" align="center">
			<a onclick="update('${c.CId }','${c.CSection }','${c.CMaster }','${c.CNum }','${c.CPosition }','${c.CAddress }','${c.CAd }','${c.CIp }','${c.CMac }','${c.CCpuBrand }','${c.CCpuModel }','${c.CBoardBrand }','${c.CBoardChip }','${c.CMemoryC }','${c.CMemoryF }','${c.CDisk }','${c.CDisplayBrand }','${c.CDisplayC }','${c.CIsScrap }','${c.CNote }','${c.CDate }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/computer!delete?id=${c.CId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/computer!queryOfFenye?id=${id}&section=${section}&name=${name}&num=${num}" method="post">
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
		<form action="<%=path %>/computer!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_1" name="c.CId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<input id="u_2" name="c.CSection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>
					<input id="u_3" name="c.CMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>工号：</td>
				<td>
					<input id="u_4" name="c.CNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>职位：</td>
				<td>
					<input id="u_5" name="c.CPosition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>位置：</td>
				<td>
					<input id="u_6" name="c.CAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>电脑用户(AD)：</td>
				<td>
					<input id="u_7" name="c.CAd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IP：</td>
				<td>
					<input id="u_8" name="c.CIp" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>MAC：</td>
				<td>
					<input id="u_9" name="c.CMac" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>CPU-品牌：</td>
				<td>
					<input id="u_10" name="c.CCpuBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>CPU-型号：</td>
				<td>
					<input id="u_11" name="c.CCpuModel" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板—品牌：</td>
				<td>
					<input id="u_12" name="c.CBoardBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板-芯片组：</td>
				<td>
					<input id="u_13" name="c.CBoardChip" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存-容量：</td>
				<td>
					<input id="u_14" name="c.CMemoryC" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存-频率：</td>
				<td>
					<input id="u_15" name="c.CMemoryF" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘：</td>
				<td>
					<input id="u_16" name="c.CDisk" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器-品牌：</td>
				<td>
					<input id="u_17" name="c.CDisplayBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器-尺寸：</td>
				<td>
					<input id="u_18" name="c.CDisplayC" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input id="u_19" name="c.CIsScrap" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input id="u_20" name="c.CNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr style="display: none;">
				<td>创建时间：</td>
				<td>
					<input id="u_21" name="c.CDate" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/computer!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td>部门：</td>
				<td>
					<input name="c.CSection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>
					<input name="c.CMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>工号：</td>
				<td>
					<input name="c.CNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>职位：</td>
				<td>
					<input name="c.CPosition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>位置：</td>
				<td>
					<input name="c.CAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>电脑用户(AD)：</td>
				<td>
					<input name="c.CAd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IP：</td>
				<td>
					<input name="c.CIp" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>MAC：</td>
				<td>
					<input name="c.CMac" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>CPU-品牌：</td>
				<td>
					<input name="c.CCpuBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>CPU-型号：</td>
				<td>
					<input name="c.CCpuModel" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板—品牌：</td>
				<td>
					<input name="c.CBoardBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板-芯片组：</td>
				<td>
					<input name="c.CBoardChip" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存-容量：</td>
				<td>
					<input name="c.CMemoryC" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存-频率：</td>
				<td>
					<input name="c.CMemoryF" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘：</td>
				<td>
					<input name="c.CDisk" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器-品牌：</td>
				<td>
					<input name="c.CDisplayBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器-尺寸：</td>
				<td>
					<input name="c.CDisplayC" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input name="c.CIsScrap" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input name="c.CNote" type="text" style="width: 100%;"/>
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
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form action="<%=path %>/computer!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/zmz/管理电脑统计.xlsx';">
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
