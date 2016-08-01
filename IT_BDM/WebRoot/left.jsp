<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<script type="text/javascript">
	$(function(){
		$('#tt').tree('collapseAll');
	});
	</script>
	
  </head>
  
<body style="width: 200px;margin: 0px;padding: 0px;background-color: ;height: 100%;">

<div class="easyui-accordion" style="width:200px;height:100%;" data-options="fillSpace:true,fit: true,animate: true,selected:false">
	<div title="数据中心" data-options="iconCls:'icon-add'" style="overflow:auto;padding:10px;">
		<a href="<%=path %>/file!gotoInputInDate" target="right" class="easyui-linkbutton c1" style="width:100%">上传源数据</a>
		<a href="<%=path %>/file!gotoInputOutDate" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">上传最终模版</a>		
	</div>
	<div title="通讯录" data-options="iconCls:'icon-print'" style="padding:10px;">
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
        <li><span><a href="<%=path %>/section!gotoAdd" target="right">添加</a></span></li>
        <li><span>移动</span></li>
        <li><span><a href="<%=path%>/index!contacts" target="right">查看</a></span></li>
    </ul>
	</div>
	<div title="数据分析" data-options="iconCls:'icon-large-shapes'" style="padding:10px;">
		<a href="<%=path %>/manual!queryDx" target="right" class="easyui-linkbutton c1" style="width:100%">电信表数据编辑</a>
		<a href="<%=path %>/manual!queryYd" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">移动明细表数据编辑</a>
		<a href="<%=path %>/manual!queryHz" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">移动汇总表数据编辑</a>
		<a href="<%=path %>/manual!queryDetail" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">最终表数据编辑</a>
	</div>
	<div title="权限管理" data-options="iconCls:'icon-large-smartart'" style="padding:10px;">
		<a href="<%=path %>/model!query" target="right" class="easyui-linkbutton c1" style="width:100%">查看模版</a>
		<a href="<%=path %>/modelAdd.jsp" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">添加模版</a>
		<a href="<%=path %>/model!update" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">修改模版</a>
		<a href="<%=path %>/model!delete" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">删除模版</a>
	</div>
</div>

</body>
</html>
