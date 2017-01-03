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
    
    <title>开发录入</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/${theme }/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/My97DatePicker/WdatePicker.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
  </head>
  
  <body>
    
    <div class="easyui-panel" title="开发录入" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    	<div>
			<form id="ff1" action="<%=path %>/project!add">
				<table border="1">
					<tr>
						<th style="width: 110px;">工作项目</th>
						<th style="width: 11%;">工作目标</th>
						<th style="width: 8%;">工作内容</th>
						<th style="width: 8%;">需求人员</th>
						<th>工作详情</th>
						<th style="width: 30%;">进展情况</th>
						<th style="width: 10%;">开始时间</th>
						<th style="width: 10%;">计划完成时间</th>
					</tr>
					<tr>
						<td rowspan="5" >
						<input name="p.PProject" type="text" style="width: 90%"/>
						<br/><br/>
						<input type="number" style="width: 50px;" name="pyear"/>年
						<input type="number" style="width: 40px;" name="pmonth"/>月
						</td>
						<td rowspan="5" ><textarea style="height:80px;width: 100%;font-size:15px;" name="p.PTarget"></textarea></td>
						<td ><input name="pd1.DContent" type="text" value="需求调研" readonly="readonly" style="width: 100px;text-align: center;"/></td>
						<td ><input name="pd1.DMan" type="text" value="" style="width: 100px;text-align: center;"/></td>
						<td >
							<textarea name="pd1.DDetail" style="height:80px;width: 100%;">确认模板取值规则</textarea>
						</td>
						<td >
							<textarea name="pd1.DSituation" style="height:80px;width: 93%;"></textarea>
						</td>
						<td ><input name="pd1.DStartDate" type="date"/></td>
						<td ><input name="pd1.DPlanDate" type="date"/></td>
					</tr>
					<tr>
						<td ><input name="pd2.DContent" type="text" value="方案确认" readonly="readonly" style="width:100px;text-align: center;"/></td>
						<td ><input name="pd2.DMan" type="text" value="" style="width: 100px;text-align: center;"/></td>
						<td ><textarea name="pd2.DDetail" style="height:80px;width: 100%;">确认模板取值规则</textarea></td>
						<td ><textarea name="pd2.DSituation" style="height:80px;width: 93%;"></textarea></td>
						<td ><input name="pd2.DStartDate" type="date"/></td>
						<td ><input name="pd2.DPlanDate" type="date"/></td>
					</tr>
					<tr>
						<td ><input name="pd3.DContent" type="text" value="系统开发" readonly="readonly" style="width:100px;text-align: center;"/></td>
						<td ><input name="pd3.DMan" type="text" value="" style="width:100px;text-align: center;"/></td>
						<td ><textarea name="pd3.DDetail" style="height:80px;width: 100%;">跟进哲盟开发进度并沟通开发中所遇到的问题</textarea></td>
						<td ><textarea name="pd3.DSituation" style="height:80px;width: 93%;"></textarea></td>
						<td ><input name="pd3.DStartDate" type="date"/></td>
						<td ><input name="pd3.DPlanDate" type="date"/></td>
					</tr>
					<tr>
						<td ><input name="pd4.DContent" type="text" value="测试完善" readonly="readonly" style="width:100px;text-align: center;"/></td>
						<td ><input name="pd4.DMan" type="text" value="" style="width:100px;text-align: center;"/></td>
						<td ><textarea name="pd4.DDetail" style="height:80px;width: 100%;">公司内部测试并发聩问题</textarea></td>
						<td ><textarea name="pd4.DSituation" style="height:80px;width: 93%;"></textarea></td>
						<td ><input name="pd4.DStartDate" type="date"/></td>
						<td ><input name="pd4.DPlanDate" type="date"/></td>
					</tr>
					<tr>
						<td ><input name="pd5.DContent" type="text" value="项目验收" readonly="readonly" style="width:100px;text-align: center;"/></td>
						<td ><input name="pd5.DMan" type="text" value="" style="width:100px;text-align: center;"/></td>
						<td ><textarea name="pd5.DDetail" style="height:80px;width: 100%;">向需求方推广使用</textarea></td>
						<td ><textarea name="pd5.DSituation" style="height:80px;width: 93%;"></textarea></td>
						<td ><input name="pd5.DStartDate" type="date"/></td>
						<td ><input name="pd5.DPlanDate" type="date"/></td>
					</tr>
					<tr>
						<td colspan="8">
							<input type="reset" value="重 置" style="width:80px;height:30px;margin:10px 10px 0 0;"/>
							<input type="submit" value="提 交" style="width:80px;height:30px;margin:10px 0 0 10px;"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
    </div>
	<jsp:include page="../hintModal.jsp"/>
  </body>
</html>
