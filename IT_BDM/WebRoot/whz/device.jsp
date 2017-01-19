<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zs.tools.Constant"%>
<%@page import="java.text.SimpleDateFormat"%>
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
    
    <title>操作设备巡检</title>
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
	function trans_radio(str){
		if (str=="是") {
			return 0;
		}else if (str=="否") {
			return 1;
		}
	}
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$("#u_4_"+trans_radio(u4)).click();
		$("#u_5_"+trans_radio(u5)).click();
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
		$("#u_9_"+trans_radio(u9)).click();
		$("#u_10_"+trans_radio(u10)).click();
		$('#u_11').val(u11);
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
    
    <div class="easyui-panel" title="操作设备巡检" style="width:100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/device!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
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
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    
    <div style="margin-bottom: 5px;">
	    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
	    <tr>
	    	<th width="130px">编号</th>
	    	<th>日期</th>
	    	<th>巡检时间</th>
	    	<th>巡检IT</th>
	    	<th>电子称较称</th>
	    	<th>称平台是否平稳</th>
	    	<th>周保养</th>
	    	<th>月保养</th>
	    	<th>异常描述</th>
	    	<th>处理结果</th>
	    	<th>备注</th>
	    	<th>操作</th>
	    </tr>
	    <c:forEach items="${devices}" var="d">
	    <tr>
			<td width="">${d.DId }</td>
			<td width=""><fmt:formatDate value="${d.DDate }" pattern="yyyy-MM-dd" /></td>
			<td width=""><fmt:formatDate value="${d.DTime }" pattern="HH:mm" /></td>
			<td width="">${d.DIt }</td>
			<td width="">${d.DFit }</td>
			<td width="">${d.DFitFirm }</td>
			<td width="">${d.DWeekMaintain }</td>
			<td width="">${d.DMonthMaintain }</td>
			<td width="">${d.DAbnormalNote }</td>
			<td width="">${d.DResult }</td>
			<td width="">${d.DNote }</td>
			<td width="5%" align="center">
				<a onclick="update('${d.DId }','<fmt:formatDate value="${d.DDate }" pattern="yyyy-M-d" />','<fmt:formatDate value="${d.DTime }" pattern="HH:mm" />','${d.DFit }',
				'${d.DFitFirm }','${d.DAbnormalNote}','${d.DResult }','${d.DIt }','${d.DWeekMaintain }','${d.DMonthMaintain }','${d.DNote }' )" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
				<a href="<%=path %>/device!delete?id=${d.DId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
			</td>
	    </tr>
	    </c:forEach>
    	</table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/device!queryOfFenye?id=${id}&sn=${sn }&num=${num }&dates=${dates}&datee=${datee}" method="post">
		<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
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
		<form action="<%=path %>/device!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">编号：</td>
				<td>
					<input id="u_1" name="device.DId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>巡检时间：</td>
				<td>
					<input id="u_3" name="d_time" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'HH:mm'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>电子秤较称：</td>
				<td> 
					<input id="u_4_0" name="device.DFit" type="radio" value="是" checked="checked"/>是
					<input id="u_4_1" name="device.DFit" type="radio" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>称平台是否平稳：</td>
				<td>
					<input id="u_5_0" name="device.DFitFirm" type="radio" value="是" checked="checked"/>是
					<input id="u_5_1" name="device.DFitFirm" type="radio" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>异常描述：</td>
				<td>
					<input id="u_6" name="device.DAbnormalNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>处理结果：</td>
				<td>
					<input id="u_7" name="device.DResult" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>周保养：</td>
				<td>
					<input id="u_9_0" name="device.DWeekMaintain" type="radio" value="是" checked="checked"/>是
					<input id="u_9_1" name="device.DWeekMaintain" type="radio" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>月保养：</td>
				<td>
					<input id="u_10_0" name="device.DMonthMaintain" type="radio" value="是" checked="checked"/>是
					<input id="u_10_1" name="device.DMonthMaintain" type="radio" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_11" name="device.DNote" type="text" style="width: 100%;"/>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:300px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/device!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="100">巡检时间：</td>
				<td>
					<input name="d_time" type="text" onfocus="WdatePicker({dateFmt:'HH:mm'})" class="Wdate" style="width: 100%;" value="<%=new SimpleDateFormat("HH:mm").format(new Date()) %>"/>
				</td>
			</tr>
			<tr>
				<td>电子秤较称：</td>
				<td>
					<input type="radio" name="device.DFit" value="是" checked="checked"/>是
					<input type="radio" name="device.DFit" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>称平台是否平稳：</td>
				<td>
					<input type="radio" name="device.DFitFirm" value="是" checked="checked"/>是
					<input type="radio" name="device.DFitFirm" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>异常描述：</td>
				<td>
					<input name="device.DAbnormalNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>处理结果：</td>
				<td>
					<input name="device.DResult" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>周保养：</td>
				<td>
					<input type="radio" name="device.DWeekMaintain" value="是" checked="checked"/>是
					<input type="radio" name="device.DWeekMaintain" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>月保养：</td>
				<td>
					<input type="radio" name="device.DMonthMaintain" value="是" checked="checked"/>是
					<input type="radio" name="device.DMonthMaintain" value="否"/>否
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="device.DNote" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/device!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/whz/操作设备巡检.xlsx';">
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
