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
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/black/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<script type="text/javascript">
	$(function(){
		$('#tree1').tree('collapseAll');
	});
	</script>
	
  </head>
  
<body style="width: 200px;margin: 0px;padding: 0px;background-color: #3D3D3D;">

<div class="easyui-accordion" style="width:200px;height:auto;">
	<div title="数据中心" data-options="iconCls:'icon-add'" style="overflow:auto;padding:10px;">
		<a href="<%=path %>/file!gotoInputInDate" target="right" class="easyui-linkbutton c1" style="width:100%">上传源数据</a>
		<a href="<%=path %>/file!gotoInputOutDate" target="right" class="easyui-linkbutton c1" style="width:100%;margin-top: 2px;">上传最终模版</a>		
	</div>
	<div title="通讯录" data-options="iconCls:'icon-print'" style="padding:10px;">
		<a href="<%=path %>/section!queryOfFenye" target="right" class="easyui-linkbutton c1" style="width:100%">区部</a>
		
		<ul id="tree1" class="easyui-tree" data-options="animate:true,lines:true">
        
        <li>
            <span>外部</span>
            <ul>
	        	<c:forEach items="${qbs}" var="qb">
     	                <li><span>${qb.qbName }</span></li>
     	                <ul>
     	                	<li>
     	                		<span>分部</span>
     	                		<ul>
     	                		<c:forEach items="${qb.fbs}" var="fb">
    								<li><span>${fb.fbName }</span></li>
    								<ul>
	       	                	<li>
	       	                		<span>分拨点</span>
	       	                		<ul>
	       	                		<c:forEach items="${qb.fbds}" var="fbd">
	      								<li><span>${fbd.fbdName }</span></li>
	       	                		</c:forEach>
	       	                		</ul>
	       	                	</li>
	       	                </ul>	 	                		
     	                		</c:forEach>
     	                		</ul>
     	                	</li>
     	                </ul>
	        	</c:forEach>
            </ul>
        </li>
        <li>
        	<span>内部</span>
       		<ul>
       			<li>
       				<span>一级部门</span>
	       			<ul>
		       			<li>asda</li>
		       			<li>asda</li>
	       			</ul>
     			</li>
       		</ul>
       	</li>
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
