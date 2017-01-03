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
    
    <title>二级站点登记</title>
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
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/My97DatePicker/WdatePicker.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	function gj_query(m,isClear){
		console.log(isClear);
		if (isClear=="true") {
			$("#gj").html("");
		}
		$.post(
			"<%=path%>/branches!queryOfFenye?gj=yes&more="+m,
			$("#ks").serializeArray(),
			function(data){
				var json=$.parseJSON(data);
				var str="<table border='1'>";
				str=str+"<tr>";
				str=str+"<th>编号</th>";
				str=str+"<th>申请时间</th>";
				str=str+"<th>维护日期</th>";
				str=str+"<th>维护周数</th>";
				str=str+"<th>一级网点条码</th>";
				str=str+"<th>一级网点名称</th>";
				str=str+"<th>一级网点负责人姓名</th>";
				str=str+"<th>二级网点条码</th>";
				str=str+"<th>二级网点名称</th>";
				str=str+"<th>备注</th>";
				str=str+"<th>操作类型</th>";
				str=str+"<th>状态</th>";
				str=str+"<th>录入时间</th>";
				str=str+"</tr>"
				for ( var i = 0; i < json.length; i++) {
					str=str+"<tr>";
					str=str+"<td>"+json[i].BId+"</td>";
					str=str+"<td>"+json[i].BDate+"</td>";
					str=str+"<td>"+json[i].BMaintainDate+"</td>";
					str=str+"<td>"+json[i].BMaintainWeek+"</td>";
					str=str+"<td>"+json[i].BNum1+"</td>";
					str=str+"<td>"+json[i].BName1+"</td>";
					str=str+"<td>"+json[i].BMaster1+"</td>";
					str=str+"<td>"+json[i].BNum2+"</td>";
					str=str+"<td>"+json[i].BName2+"</td>";
					str=str+"<td>"+json[i].BNote+"</td>";
					str=str+"<td>"+json[i].BType+"</td>";
					str=str+"<td>"+json[i].BState+"</td>";
					str=str+"<td>"+json[i].BCreateTime+"</td>";
					str=str+"</tr>";
				}
				str=str+"</table>";
				str=str+"<center><input type=\"button\" value=\"显示更多\" onclick=\"gj_query('yes','false')\"/></center>";
				$("#gj").append(str);
				$("#gj").window("open");
			}
		);
	}
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10){
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
    
    <div class="easyui-panel" title="二级站点登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/branches!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		维护开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			维护结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		一级网点条码：<input name="num1" type="text" value="${num1 }"/>
		    		</div>
	    			<div>
	    				一级网点名称：<input name="name1" type="text" value="${name1 }"/>
	    			</div>
	    		</div>
	    		<div>
		    		<div>
			    		二级网点条码：<input name="num2" type="text" value="${num2 }"/>
		    		</div>
	    			<div>
	    				二级网点名称：<input name="name2" type="text" value="${name2 }"/>
	    			</div>
	    		</div>
	    		<div>
		    		<div>
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    			</div>
	    		</div>
	    	</form>
	    	
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
    		<input type="button" value="记录查询" onclick="gj_query('no','true')"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    <div style="margin-bottom: 5px;">
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>申请时间</th>
    	<th>维护日期</th>
    	<th>维护周数</th>
    	<th>一级网点条码</th>
    	<th>一级网点名称</th>
    	<th>一级网点负责人姓名</th>
    	<th>二级网点条码</th>
    	<th>二级网点名称</th>
    	<th>备注</th>
    	<th>操作类型</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${bs}" var="b">
    <tr>
		<td width="">${b.BId }</td>
		<td width=""><fmt:formatDate value="${b.BDate }" pattern="yyyy/M/d" /></td>
		<td width=""><fmt:formatDate value="${b.BMaintainDate }" pattern="yyyy/M/d" /></td>
		<td width="">${b.BMaintainWeek }</td>
		<td width="">${b.BNum1 }</td>
		<td width="">${b.BName1 }</td>
		<td width="">${b.BMaster1 }</td>
		<td width="">${b.BNum2 }</td>
		<td width="">${b.BName2 }</td>
		<td width="">${b.BNote }</td>
		<td width="">${b.BType }</td>
		<td width="5%" align="center">
			<a onclick="update('${b.BId }','${b.BDate }','${b.BMaintainDate }','${b.BMaintainWeek }','${b.BNum1 }','${b.BName1 }','${b.BMaster1 }','${b.BNum2 }','${b.BName2 }','${b.BNote }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/branches!delete?id=${b.BId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/branches!queryOfFenye?id=${id}&num1=${num1}&name1=${name1}&num2=${num2}&name2=${name2}&dates=${dates}&datee=${datee}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/branches!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">编号：</td>
				<td>
					<input id="u_1" name="b.BId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>一级网点条码：</td>
				<td>
					<input id="u_5" name="b.BNum1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>一级网点名称：</td>
				<td>
					<input id="u_6" name="b.BName1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>一级网点负责人姓名：</td>
				<td>
					<input id="u_7" name="b.BMaster1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>二级网点条码：</td>
				<td>
					<input id="u_8" name="b.BNum2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>二级网点名称：</td>
				<td>
					<input id="u_9" name="b.BName2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_10" name="b.BNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>操作类型：</td>
				<td>
					<select name="b.BType">
						<option value="维护">维护</option>
						<option value="注销">注销</option>
						<option value="注册">注册</option>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/branches!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">一级网点条码：</td>
				<td>
					<input name="b.BNum1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>一级网点名称：</td>
				<td>
					<input name="b.BName1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>一级网点负责人姓名：</td>
				<td>
					<input name="b.BMaster1" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>二级网点条码：</td>
				<td>
					<input name="b.BNum2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>二级网点名称：</td>
				<td>
					<input name="b.BName2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="b.BNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>操作类型：</td>
				<td>
					<select name="b.BType">
						<option value="注册">注册</option>
						<option value="维护">维护</option>
						<option value="注销">注销</option>
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
	
	<div id="gj" class="easyui-window" title="轨迹" data-options="modal:true,closed:true" style="width:95%;height:300px;padding:10px;display: none;">
	</div>
	
	<div id="tt" style="display: none;">
		<a class="icon-zs-import" onclick="$('#in').window('open')" style="margin-left: 10px;" title="excel导入"></a>
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form action="<%=path %>/branches!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/xtz/二级站点资料.xlsx';">
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
