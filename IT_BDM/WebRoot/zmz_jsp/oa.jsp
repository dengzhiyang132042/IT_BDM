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
    
    <title>oa账号</title>
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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13){
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
    
    <div class="easyui-panel" title="oa账号" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/oa!queryOfFenye" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		申请人:<input name="apply" type="text" value="${apply }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		OA账号:<input name="num" type="text" value="${num }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		部门:<input name="section" type="text" value="${section }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		登记时间:<input name="dates" type="date" value="${dates }"/>
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
    	<th>OA登记日期</th>
    	<th>维护周数</th>
    	<th>部门</th>
    	<th>申请人</th>
    	<th>员工岗位</th>
    	<th>OA</th>
    	<th>维护IT</th>
    	<!-- 
    	<th>维护日期</th>
    	<th>维护用时</th>
    	 -->
    	
    	<th>在职情况</th>
    	<!-- 
    	<th>是否及时</th>
    	 -->
    	<th>备注</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${oas}" var="oa">
    <tr>
		<td width="">${oa.OId }</td>
		<td width=""><fmt:formatDate value="${oa.ODate }" pattern="yyyy/M/d" /></td>
		<td width="">${oa.OServiceWeek }</td>
		<td width="">${oa.OSection }</td>
		<td width="">${oa.OApply }</td>
		<td width="">${oa.OPosition }</td>
		<td width="">${oa.OOa }</td>
		<td width="">${oa.OService }</td>
		<!-- 
		<td width="">${oa.OServiceDate }</td>
		<td width="">${oa.OServiceTime }</td>
		 -->
		<td width="">${oa.OOnJob }</td>
		<!-- 
		<td width="">${oa.OIsTimely }</td>
		 -->
		<td width="">${oa.ONote }</td>
		<td width="5%" align="center">
			<a onclick="update('${oa.OId }','${oa.ODate }','${oa.OServiceWeek }','${oa.OSection }','${oa.OApply }','${oa.OPosition }','${oa.OOa }','${oa.OService }','${oa.OServiceDate }','${oa.OServiceTime }','${oa.OOnJob }','${oa.OIsTimely }','${oa.ONote }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/oa!delete?id=${oa.OId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/oa!queryOfFenye?id=${id}&num=${num}&apply=${apply }&section=${section }&dates=${dates}&datee=${datee}" method="post">
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
		<form action="<%=path %>/oa!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_1" name="oa.OId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>OA登记日期：</td>
				<td>
					<input id="u_2" name="oa.ODate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护周数：</td>
				<td>
					<input id="u_3" name="oa.OServiceWeek" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<input id="u_4" name="oa.OSection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>申请人：</td>
				<td>
					<input id="u_5" name="oa.OApply" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>员工岗位：</td>
				<td>
					<input id="u_6" name="oa.OPosition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>OA：</td>
				<td>
					<input id="u_7" name="oa.OOa" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护IT：</td>
				<td>
					<input id="u_8" name="oa.OService" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<!-- 
			<tr>
				<td>维护日期：</td>
				<td>
					<input id="u_9" name="oa.OServiceDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护用时：</td>
				<td>
					<input id="u_10" name="oa.OServiceTime" type="text" style="width: 100%;"/>
				</td>
			</tr>
			 -->
			<tr>
				<td>在职情况：</td>
				<td>
					<input id="u_11" name="oa.OOnJob" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<!-- 
			<tr>
				<td>是否及时：</td>
				<td>
					<input id="u_12" name="oa.OIsTimely" type="text" style="width: 100%;"/>
				</td>
			</tr>
			 -->
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_13" name="oa.ONote" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/oa!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td>OA登记日期：</td>
				<td>
					<input name="oa.ODate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护周数：</td>
				<td>
					<input name="oa.OServiceWeek" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<input name="oa.OSection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>申请人：</td>
				<td>
					<input name="oa.OApply" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>员工岗位：</td>
				<td>
					<input name="oa.OPosition" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>OA：</td>
				<td>
					<input name="oa.OOa" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护IT：</td>
				<td>
					<input name="oa.OService" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<!-- 
			<tr>
				<td>维护日期：</td>
				<td>
					<input name="oa.OServiceDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>维护用时：</td>
				<td>
					<input name="oa.OServiceTime" type="text" style="width: 100%;"/>
				</td>
			</tr>
			 -->
			<tr>
				<td>在职情况：</td>
				<td>
					<input name="oa.OOnJob" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<!-- 
			<tr>
				<td>是否及时：</td>
				<td>
					<input name="oa.OIsTimely" type="text" style="width: 100%;"/>
				</td>
			</tr>
			 -->
			<tr>
				<td>备注：</td>
				<td>
					<input name="oa.ONote" type="text" style="width: 100%;"/>
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
