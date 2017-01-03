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
    
    <title>站点资料</title>
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
			"<%=path%>/site!queryOfFenye?gj=yes&more="+m,
			$("#ks").serializeArray(),
			function(data){
				var json=$.parseJSON(data);
				var str="<table border='1'>";
				str=str+"<tr>";
				str=str+"<th>编号</th>";
				str=str+"<th>网点条码</th>";
				str=str+"<th>网点名称</th>";
				str=str+"<th>开通日期</th>";
				str=str+"<th>维护日期</th>";
				str=str+"<th>维护周期</th>";
				str=str+"<th>操作类型</th>";
				str=str+"<th>网点类型</th>";
				str=str+"<th>维护IT</th>";
				str=str+"<th>通知方式</th>";
				str=str+"<th>备注</th>";
				str=str+"<th>状态</th>";
				str=str+"<th>录入时间</th>";
				str=str+"</tr>"
				for ( var i = 0; i < json.length; i++) {
					str=str+"<tr>";
					str=str+"<td>"+json[i].SId+"</td>";
					str=str+"<td>"+json[i].SNum+"</td>";
					str=str+"<td>"+json[i].SName+"</td>";
					str=str+"<td>"+json[i].SStartDate+"</td>";
					str=str+"<td>"+json[i].SMaintainDate+"</td>";
					str=str+"<td>"+json[i].SMaintainCycle+"</td>";
					str=str+"<td>"+json[i].SMaintainType+"</td>";
					str=str+"<td>"+json[i].SMaintainMan+"</td>";
					str=str+"<td>"+json[i].SNotice+"</td>";
					str=str+"<td>"+json[i].SNote+"</td>";
					str=str+"<td>"+json[i].SSiteType+"</td>";
					str=str+"<td>"+json[i].SState+"</td>";
					str=str+"<td>"+json[i].SCreateTime+"</td>";
					str=str+"</tr>";
				}
				str=str+"</table>";
				str=str+"<center><input type=\"button\" value=\"显示更多\" onclick=\"gj_query('yes','false')\"/></center>";
				$("#gj").append(str);
				$("#gj").window("open");
			}
		);
	}
	function update(u1,u2,u3,u4,u5,u6,u7){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$("#u_5 option[value='"+u5+"']").attr("selected",true);
		$("#u_6 option[value='"+u6+"']").attr("selected",true);
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
		$('#f1').submit();
	}
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="站点资料" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/site!queryOfFenye" method="post">
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
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				网点条码：<input name="num" type="text" value="${num }"/>
	    			</div>
	    		</div>
	    		<div>
	    			<div>
	    				维护IT:<input name="it" type="text" value="${it }"/>
	    			</div>
	    			<div>
	    				维护类型:<input name="type" type="text" value="${type }"/>
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
    	<th>网点条码</th>
    	<th>网点名称</th>
    	<th>开通日期</th>
    	<th>维护日期</th>
    	<th>维护周期</th>
    	<th>操作类型</th>
    	<th>网点类型</th>
    	<th>维护IT</th>
    	<th>通知方式</th>
    	<th>备注</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${sites}" var="site">
    <tr>
		<td width="">${site.SId }</td>
		<td width="">${site.SNum }</td>
		<td width="">${site.SName }</td>
		<td width=""><fmt:formatDate value="${site.SStartDate }" pattern="yyyy/M/d" /></td>
		<td width=""><fmt:formatDate value="${site.SMaintainDate }" pattern="yyyy/M/d" /></td>
		<td width="">${site.SMaintainCycle }</td>
		<td width="">${site.SMaintainType }</td>
		<td width="">${site.SSiteType }</td>
		<td width="">${site.SMaintainMan }</td>
		<td width="">${site.SNotice }</td>
		<td width="">${site.SNote }</td>
		<td width="5%" align="center">
			<a onclick="update('${site.SId }','${site.SNum }','${site.SName }','${site.SMaintainType }','${site.SSiteType }','${site.SNotice }','${site.SNote }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/site!delete?id=${site.SId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/site!queryOfFenye?id=${id}&num=${num}&dates=${dates}&datee=${datee}&it=${it}&type=${type}" method="post">
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
		<form action="<%=path %>/site!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="75">编号：</td>
				<td>
					<input id="u_1" name="site.SId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>网点条码：</td>
				<td>
					<input id="u_2" name="site.SNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点名称：</td>
				<td>
					<input id="u_3" name="site.SName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护类型：</td>
				<td>
					<select name="site.SMaintainType">
						<option value="维护">维护</option>
						<option value="注销">注销</option>
						<option value="注册">注册</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>网点类型：</td>
				<td>
					<select id="u_5" name="site.SSiteType">
						<option value="一级网点">一级网点</option>
						<option value="大客户">大客户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>通知方式：</td>
				<td>
					<select id="u_6" name="site.SNotice">
						<option value="电话通知">电话通知</option>
						<option value="短信通知">短信通知</option>
						<option value="IMO通知">IMO通知</option>
						<option value="告知网点管理部">告知网点管理部</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input id="u_7" name="site.SNote" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/site!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="75">网点条码：</td>
				<td>
					<input name="site.SNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点名称：</td>
				<td>
					<input name="site.SName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>操作类型：</td>
				<td>
					<select name="site.SMaintainType">
						<option value="注册">注册</option>
						<option value="维护">维护</option>
						<option value="注销">注销</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>网点类型：</td>
				<td>
					<select name="site.SSiteType">
						<option value="一级网点">一级网点</option>
						<option value="大客户">大客户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>通知方式：</td>
				<td>
					<select name="site.SNotice">
						<option value="电话通知">电话通知</option>
						<option value="短信通知">短信通知</option>
						<option value="IMO通知">IMO通知</option>
						<option value="告知网点管理部">告知网点管理部</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input name="site.SNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit"  style="width: 95%;padding: 5px;" value="提交"/>
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
		<form action="<%=path %>/site!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/xtz/站点资料.xlsx';">
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
