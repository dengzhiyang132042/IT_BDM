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
    
    <title>系统开发登记</title>
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
	function update(u1,u2,u3,u4,u5,u6,u7){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6*100);
		var s1 = u7.replace("<br/>","\r\n");
		var s2 = s1.replace("<br/>","\r\n");
		var s3 = s2.replace("<br/>","\r\n");
		$('#u_7').val(s3);
		
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
	function add(){
		var path="<%=path%>/xtz_jsp/project_add.jsp";
		window.location.href=path;
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
	function btn(){
		var path ="<%=path %>/projectCount!queryOfFenye?cz=yes";
		window.location.href=path;
	}
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="系统开发登记" style="width: 100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/project!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		项目开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({dateFmt:'yyyy-MM',maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			项目结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({dateFmt:'yyyy-MM',minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				工作项目:<input type="text" name="pname" value="${pname }"/>
	    			</div>
	    		</div>
	    	</form>
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
   			<input type="button" value="开发效率表" onclick="btn()"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    <div style="margin-bottom: 5px;">
		
		<table border="1" id="eidtASubjectWindow1">
			<tr>
				<th width="55">工作项目</th>
				<th width="100">工作目标</th>
				<th width="50">工作内容</th>
				<th width="50">需求人员</th>
				<th width="170">工作详情</th>
				<th>进展情况</th>
				<th width="65">开始时间</th>
				<th width="65">计划时间</th>
				<th width="65">实际时间</th>
				<th width="50">完成进度</th>
				<th width="40">用时</th>
				<th width="40" colspan="2">操作</th>
			</tr>
			<tr>
				<td rowspan="5">
					${ps[0].PProject }
					<br/>
					<fmt:formatDate value="${ps[0].PDate }" pattern="yyyy-M" />月
				</td>
				<td rowspan="5">
					${ps[0].PTarget }
				</td>
				<td>
					${ps[0].projectDetails[0].DContent }
				</td>
				<td>
					${ps[0].projectDetails[0].DMan }
				</td>
				<td style="text-align: left;">
					${ps[0].projectDetails[0].DDetail }
				</td>
				<td style="text-align: left;">
					${ps[0].projectDetails[0].DSituation }
				</td>
				<td>
					<fmt:formatDate value="${ps[0].projectDetails[0].DStartDate }" pattern="yyyy-MM-dd" />
				</td>
				<td> 
					<fmt:formatDate value="${ps[0].projectDetails[0].DPlanDate }" pattern="yyyy-MM-dd" />
				</td>
				<td>
					<fmt:formatDate value="${ps[0].projectDetails[0].DRealityDate }" pattern="yyyy-MM-dd" />
				</td>
				<td>
					${ps[0].projectDetails[0].DSchedule *100 }%
				</td>
				<td >
					${ps[0].projectDetails[0].DUserDate }
				</td>
				<td>
					<a onclick="update('${ps[0].projectDetails[0].DId }','${ps[0].projectDetails[0].DContent }',
						'<fmt:formatDate value="${ps[0].projectDetails[0].DStartDate }" pattern="yyyy-MM-dd" />',
						'<fmt:formatDate value="${ps[0].projectDetails[0].DPlanDate }" pattern="yyyy-MM-dd" />',
						'<fmt:formatDate value="${ps[0].projectDetails[0].DRealityDate }" pattern="yyyy-MM-dd" />',
						'${ps[0].projectDetails[0].DSchedule }','${ps[0].projectDetails[0].DSituation }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'"
						 title="修改"></a>
				</td>
				<td rowspan="5">
					<a href="<%=path %>/project!delete?id=${ps[0].PId}" onclick="return confirm('确定删除整个项目吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
					
				</td>
			</tr>			
			<c:forEach items="${ps[0].projectDetails}" var="pd" begin="1">
			<tr>
				<td>${pd.DContent }</td>
				<td>${pd.DMan }</td>
				<td style="text-align: left;">${pd.DDetail }</td>
				<td style="text-align: left;">${pd.DSituation }</td>
				<td><fmt:formatDate value="${pd.DStartDate }" pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${pd.DPlanDate }" pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${pd.DRealityDate }" pattern="yyyy-MM-dd" /></td>
				<td>${pd.DSchedule *100 }%</td>
				<td>${pd.DUserDate }</td>
				<td>
					<a onclick="update('${pd.DId }','${pd.DContent }',
						'<fmt:formatDate value="${pd.DStartDate }" pattern="yyyy-MM-dd" />',
						'<fmt:formatDate value="${pd.DPlanDate }" pattern="yyyy-MM-dd" />',
						'<fmt:formatDate value="${pd.DRealityDate }" pattern="yyyy-MM-dd" />',
						'${pd.DSchedule }','${pd.DSituation }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'"
						 title="修改"></a>
				</td>
			</tr>
			</c:forEach>
		</table>
		
		
		
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/project!queryOfFenye?id=${id}&pname=${pname}&dates=${dates}&datee=${datee}" method="post">
		<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
			<option value="1">1</option>
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
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/project!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="80">编号：</td>
				<td>
					<input id="u_1" name="pd.DId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>工作内容：</td>
				<td>
					<input id="u_2" name="pd.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>进展情况</td>
				<td>
					<textarea id="u_7" name="pd.DSituation" rows="5" cols="35" style="overflow-x:hidden">
					
					</textarea>
				</td>
			</tr>
			<tr>
				<td>开始时间：</td>
				<td>
					<input id="u_3" name="pd.DStartDate" type="text" style="width:50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'u_4\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>计划时间：</td>
				<td>
					<input id="u_4" name="pd.DPlanDate" type="text" style="width: 50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'u_3\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>实际时间：</td>
				<td>
					<input id="u_5" name="pd.DRealityDate" type="text" style="width: 50%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'u_3\')}'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>完成进度：</td>
				<td>
					<input id="u_6" name="pd.DSchedule" type="number" style="width: 20%;"/>%
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
	</div>
	<div id="tt" style="display: none;">
		<a class="icon-zs-import" onclick="$('#in').window('open')" style="margin-left: 10px;" title="excel导入"></a>
		<a class="icon-add" onclick="add()" style="margin-left: 10px;" title="添加">
	</div>
	<div id="in" class="easyui-window" title="数据导入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<form id="ff" action="<%=path %>/project!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/xtz/系统开发登记.xlsx';">
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
