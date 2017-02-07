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
    
    <title>监控设备巡检</title>
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
		if (str=="正常") {
			return 0;
		}else if (str=="异常") {
			return 1;
		}
	}
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$("#u_4_"+trans_radio(u4)).click();
		$('#u_5').val(u5);
		$("#u_6_"+trans_radio(u6)).click();
		$("#u_7_"+trans_radio(u7)).click();
		$("#u_8_"+trans_radio(u8)).click();
		$("#u_9_"+trans_radio(u9)).click();
		$("#u_10_"+trans_radio(u10)).click();
		$("#u_11_"+trans_radio(u11)).click();
		$('#u_12').val(u12);
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
	function sub(){
		var name = $('#filename').val();
		if(name=="" || name==null){
			alert("请选择文件");
		}else{
			show_hint(['in']);
			$('#ff').submit();
		}
	}
	</script>
	
  </head>
  
  <body>
    
    <div class="easyui-panel" title="监控设备巡检" style="width:100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/monitor!queryOfFenye" method="post">
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
	    	<th>时间</th>
	    	<th>巡检it</th>
	    	<th>监控主机</th>
	    	<th>录像</th>
	    	<th>空间</th>
	    	<th>服务器</th>
	    	<th>机房网络设备</th>
	    	<th>仓库摄像头</th>
	    	<th>仓库网络设备</th>
	    	<th>备注</th>
	    	<th>操作</th>
	    </tr>
	    <c:forEach items="${monis}" var="m">
	    <tr>
			<td width="">${m.MId }</td>
			<td width=""><fmt:formatDate value="${m.MDate }" pattern="yyyy-MM-dd" /></td>
			<td width=""><fmt:formatDate value="${m.MTime }" pattern="HH:mm" /></td>
			<td width="">${m.MIt }</td>
			<td width="">${m.MMonitorMaster }</td>
			<td width="">${m.MVideo }</td>
			<td width="">${m.MRoom }</td>
			<td width="">${m.MService }</td>
			<td width="">${m.MGeneratorDevice }</td>
			<td width="">${m.MDepotCamera }</td>
			<td width="">${m.MDepotDevice }</td>
			<td width="">${m.MNote }</td>
			<td width="5%" align="center">
				<a onclick="update('${m.MId }','<fmt:formatDate value="${m.MDate }" pattern="yyyy-M-d" />','${m.MIt }','${m.MMonitorMaster }',
				'<fmt:formatDate value="${m.MTime }" pattern="HH:mm" />','${m.MVideo}','${m.MRoom }','${m.MService }','${m.MGeneratorDevice }','${m.MDepotCamera }','${m.MDepotDevice }','${m.MNote }' )" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
				<a href="<%=path %>/monitor!delete?id=${m.MId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/monitor!queryOfFenye?id=${id}&sn=${sn }&dates=${dates}&datee=${datee}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/monitor!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">编号：</td>
				<td>
					<input id="u_1" name="moni.MId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>日期：</td>
				<td>
					<input id="u_2" name="moni.MDate" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>时间：</td>
				<td>
					<input id="u_5" name="time" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'HH:mm'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>监控主机：</td>
				<td>
					<input id="u_4_0" name="moni.MMonitorMaster"  type="radio" value="正常" checked="checked"/>正常
					<input id="u_4_1" name="moni.MMonitorMaster"  type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>录像：</td>
				<td>
					<input id="u_6_0" name="moni.MVideo" type="radio" value="正常" checked="checked"/>正常
					<input id="u_6_1" name="moni.MVideo" type="radio" value="异常"/>异常
				</td>
			</tr>
			<tr>
				<td>空间：</td>
				<td>
					<input id="u_7_0" name="moni.MRoom" type="radio" value="正常" checked="checked"/>正常
					<input id="u_7_1" name="moni.MRoom" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>服务器：</td>
				<td>
					<input id="u_8_0" name="moni.MService" type="radio" value="正常" checked="checked"/>正常
					<input id="u_8_1" name="moni.MService" type="radio" value="异常"/>异常
				</td>
			</tr>
			<tr>
				<td>机房网络设备：</td>
				<td>
					<input id="u_9_0" name="moni.MGeneratorDevice" type="radio" value="正常" checked="checked"/>正常
					<input id="u_9_1" name="moni.MGeneratorDevice" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>仓库摄像头：</td>
				<td>
					<input id="u_10_0" name="moni.MDepotCamera" type="radio" value="正常" checked="checked"/>正常
					<input id="u_10_1" name="moni.MDepotCamera" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>仓库网络设备：</td>
				<td>
					<input id="u_11_0" name="moni.MDepotDevice" type="radio" value="正常" checked="checked"/>正常
					<input id="u_11_1" name="moni.MDepotDevice" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_12" name="moni.MNote" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/monitor!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="90">时间：</td>
				<td>
					<input name="time" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'HH:mm'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>监控主机：</td>
				<td>
					<input name="moni.MMonitorMaster" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MMonitorMaster" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>录像：</td>
				<td>
					<input name="moni.MVideo" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MVideo" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>空间：</td>
				<td>
					<input name="moni.MRoom" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MRoom" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>服务器：</td>
				<td>
					<input name="moni.MService" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MService" type="radio" value="异常"/>异常
				</td>
			</tr>
			<tr>
				<td>机房网络设备：</td>
				<td>
					<input name="moni.MGeneratorDevice" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MGeneratorDevice" type="radio" value="异常"/>异常
				</td>
			</tr>
			<tr>
				<td>仓库摄像头：</td>
				<td>
					<input name="moni.MDepotCamera" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MDepotCamera" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>仓库网络设备：</td>
				<td>
					<input name="moni.MDepotDevice" type="radio" value="正常" checked="checked"/>正常
					<input name="moni.MDepotDevice" type="radio" value="异常" />异常
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="moni.MNote" type="text" style="width: 100%;"/>
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
		<form id="ff" action="<%=path %>/monitor!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/whz/监控巡检.xlsx';">
					下载模板
				</td>
			</tr>
			<tr>
				<td>导入Excel数据</td>
				<td>
					<input id="filename" type="file" name="fileExcel"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="导入" onclick="return sub()"/>	
				</td>
			</tr>
		</table>
		</form>
	</div>
	
	
	
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
