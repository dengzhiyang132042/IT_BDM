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
    
    <title>网点呼叫系统登记</title>
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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20){
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
	function showDate(){   
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
    
    <div class="easyui-panel" title="网点呼叫系统账号登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/netCall!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		站点名：<input name="site" type="text" value="${site }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		条码：<input name="num" type="text" value="${num }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		固定电话：<input name="phone" type="text" value="${phone }"/>
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
    	<th width="120">编号</th>
    	<th>维护时间</th>
    	<th>站点名</th>
    	<th>条码</th>
    	<th>移动固话</th>
    	<th>分机号1</th>
    	<th>分机号2</th>
    	<th><a href="<%=path %>/netCall!queryOfFenye?newcall='1' " style="color: white;">新增分机号</a></th>
    	<th>使用情况</th>
    	<th>维护人</th>
    	<th>维护周</th>
    	<th>操作类型</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${ncs}" var="c">
    <tr>
		<td width="">${c.NId }</td>
		<td width=""><fmt:formatDate value="${c.NServiceDate }" pattern="yyyy/MM/dd" /></td>
		<td width="">${c.NSite }</td>
		<td width="">${c.NNumber }</td>
		<td width="">${c.NPhone }</td>
		<td width="">${c.NCall1 }</td>
		<td width="">${c.NCall2 }</td>
		<td width="">${c.NCallAll }</td>
		<td width="">${c.NCondition }</td>
		<td width="">${c.NIt }</td>
		<td width="">${c.NServiceWeek }</td>
		<td width="">${c.NType }</td>
		<td width="5%" align="center">
			<a onclick="update('${c.NId }','${c.NPactMan }','<fmt:formatDate value="${c.NServiceDate }" pattern="yyyy-MM-dd" />',
			'${c.NBigQb }','${c.NQb }','${c.NFb }','${c.NFbd }','${c.NSite }','${c.NFunctionary }','${c.NFunctionaryPhone }','${c.NQueryPhone }',
			'${c.NAddress }','${c.NNumber }','${c.NPhone }','${c.NCall1 }','${c.NCall2 }','${c.NCallAll }',
			'${c.NCallNum }','${c.NCondition }','${c.NNote }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/netCall!delete?id=${c.NId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/netCall!queryOfFenye?id=${id}&site=${site}&num=${num}&phone=${phone}&dates=${dates}&datee=${datee}" method="post">
		<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
			<option value="15">15</option>
			<option value="30">30</option>
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
		<form action="<%=path %>/netCall!update" method="post">
		<input id="u_1" name="c.NId" type="text" style="width: 100%;display: none;"/>
		<table border="0" class="table1">
			<tr>
				<td width="80">合同签订人：</td>
				<td>
					<input id="u_2" name="c.NPactMan" type="text" style="width: 100%;"/>
				</td>
				<td width="80">维护日期：</td>
				<td>
					<input id="u_3" name="c.NServiceDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>所属大区：</td>
				<td>
					<input id="u_4" name="c.NBigQb" type="text" style="width: 100%;"/>
				</td>
				<td>所属区部：</td>
				<td>
					<input id="u_5" name="c.NQb" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>所属分部：</td>
				<td>
					<input id="u_6" name="c.NFb" type="text" style="width: 100%;"/>
				</td>
				<td>所属分拨点：</td>
				<td>
					<input id="u_7" name="c.NFbd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>站点名：</td>
				<td>
					<input id="u_8" name="c.NSite" type="text" style="width: 100%;"/>
				</td>
				<td>负责人：</td>
				<td>
					<input id="u_9" name="c.NFunctionary" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>负责人电话：</td>
				<td>
					<input id="u_10" name="c.NFunctionaryPhone" type="text" style="width: 100%;"/>
				</td>
				<td>查询电话：</td>
				<td>
					<input id="u_11" name="c.NQueryPhone" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>门面地址：</td>
				<td colspan="3">
					<input id="u_12" name="c.NAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>条码：</td>
				<td>
					<input id="u_13" name="c.NNumber" type="text" style="width: 100%;"/>
				</td>
				<td>移动固话：</td>
				<td>
					<input id="u_14" name="c.NPhone" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>分机号1：</td>
				<td>
					<input id="u_15" name="c.NCall1" type="text" style="width: 100%;"/>
				</td>
				<td>分机号2：</td>
				<td>
					<input id="u_16" name="c.NCall2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>新增分机号：</td>
				<td colspan="3">
					<input id="u_17" name="c.NCallAll" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>话机数量：</td>
				<td>
					<input id="u_18" name="c.NCallNum" type="number" style="width: 100%;"/>
				</td>
				<td>使用情况：</td>
				<td>
					<input id="u_19" name="c.NCondition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input id="u_20" name="c.NNote" type="text" style="width: 100%;"/>
				</td>
				<td>维护类型：</td>
				<td>
					<select name="c.NType" style="width: 80px;">
						<option value="维护" >维 护</option>
						<option value="注册" >注 册</option>
						<option value="注销" >注 销</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;">
					<input class="easyui-linkbutton" type="submit" style="width:100px;padding: 5px;" value="提交"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/netCall!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="80">合同签订人：</td>
				<td>
					<input name="c.NPactMan" type="text" style="width: 100%;"/>
				</td>
				<td width="80">维护日期：</td>
				<td>
					<input id="serdate" name="c.NServiceDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>所属大区：</td>
				<td>
					<input name="c.NBigQb" type="text" style="width: 100%;"/>
				</td>
				<td>所属区部：</td>
				<td>
					<input name="c.NQb" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>所属分部：</td>
				<td>
					<input name="c.NFb" type="text" style="width: 100%;"/>
				</td>
				<td>所属分拨点：</td>
				<td>
					<input name="c.NFbd" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>站点名：</td>
				<td>
					<input name="c.NSite" type="text" style="width: 100%;"/>
				</td>
				<td>负责人：</td>
				<td>
					<input name="c.NFunctionary" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>负责人电话：</td>
				<td>
					<input name="c.NFunctionaryPhone" type="text" style="width: 100%;"/>
				</td>
				<td>查询电话：</td>
				<td>
					<input name="c.NQueryPhone" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>门面地址：</td>
				<td colspan="3">
					<input name="c.NAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>条码：</td>
				<td>
					<input name="c.NNumber" type="text" style="width: 100%;"/>
				</td>
				<td>移动固话：</td>
				<td>
					<input name="c.NPhone" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>分机号1：</td>
				<td>
					<input name="c.NCall1" type="text" style="width: 100%;"/>
				</td>
				<td>分机号2：</td>
				<td>
					<input name="c.NCall2" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>新增分机号：</td>
				<td colspan="3">
					<input name="c.NCallAll" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>话机数量：</td>
				<td>
					<input name="c.NCallNum" type="number" style="width: 100%;"/>
				</td>
				<td>使用情况：</td>
				<td>
					<input name="c.NCondition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input name="c.NNote" type="text" style="width: 100%;"/>
				</td>
				<td>维护类型：</td>
				<td>
					<select name="c.NType" style="width: 80px;">
						<option value="注册" >注 册</option>
						<option value="维护" >维 护</option>
						<option value="注销" >注 销</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;">
					<input class="easyui-linkbutton" type="submit" style="width:100px;padding: 5px;" value="提交"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	<div id="tt" style="display: none;">
		<a class="icon-zs-import" onclick="$('#in').window('open')" style="margin-left: 10px;" title="excel导入"></a>
		<a class="icon-add" onclick="showDate()" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form action="<%=path %>/netCall!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/zmz/网点呼叫系统.xlsx';">
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
