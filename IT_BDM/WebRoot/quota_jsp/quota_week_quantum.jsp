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
    
    <title>周月年统计报表</title>
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
			if('${option}'=='group'){
				groupHide();
				$('#mxid').attr("readonly","readonly");
				$('#mxid').attr("style","background-color:#e8e8e8;");
				$('#mxfz').attr("readonly","readonly");
				$('#mxfz').attr("style","background-color:#e8e8e8;");
				$('#ks').attr("action","<%=path%>/quotaGroupWeek!queryOfFenye");
			}
			if('${option}'=='detail'){
				detail();
			}
			if('${timeType}'=='W'){
				$('#rw').attr("checked","checked");
			}else if('${timeType}'=='M'){
				$('#rm').attr("checked","checked");
			}else if('${timeType}'=='Y'){
				$('#ry').attr("checked","checked");
			}
			$('#tt').tabs({
			    border:false,
			    onSelect:function(title,index){
					var path;
					if(title == '组统计'){
						path="<%=path%>/quotaGroupWeek!queryOfFenye";
					}
					if(title == '明细'){
						path="<%=path%>/quotaManWeek!queryOfFenye?cz=yes";
					}
					window.location.href=path;
			    }
			});
		});
		
		function groupHide(){
			var t = $('#tt');
			var tabs = t.tabs('tabs');
			t.tabs('select', "组统计");
		}
		function detail(){
			var t = $('#tt');
			var tabs = t.tabs('tabs');
			t.tabs('select', "明细");
		}
		
		function queryDetails(group) {
			var path="<%=path%>/quotaManWeek!queryOfFenye?group="+group;
			window.location.href=path;
		}
	</script>
  </head>
  
  <body>
 	<div class="bread_head" style="width:99%;margin:5px;font-size:18px;">
		<span>当前位置：</span>
		<span>数据统计报表</span>
		<span>></span>
		<span>信息与流程管理部</span>
 		<span>></span>
 		<span>日统计报表式样</span>
 	</div>
   	<div class="kscx" style="width:99%;margin:5px;">
    	<div class="inp">
	    	<form id="ks" action="<%=path %>/quotaManWeek!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
		    		<div>
<!-- 	    		<div>
			    		编号：<input id="mxid" name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				主要负责：<input id="mxfz" name="name" type="text" value="${name }"/>
	    			</div>        -->
	    		</div>
	    		<div>
	    			<div style="width:65%;font-size:14px;">
	    				<input id="rw" name="timeType" type="radio" value="W" /> 周<input  id="rm" name="timeType" type="radio" value="M"/> 月<input  id="ry" name="timeType" type="radio" value="Y"/> 年
	    			</div>
	    		</div>
	    	</form>
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    <div id="tt" class="easyui-tabs" style="width:99%;height:600px;margin:5px;overflow-y:scroll;">
	    <div title="组统计" style="overflow: hidden;">
		    <div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>
				    		<c:if test="${timeType=='W'}">周</c:if>
				    		<c:if test="${timeType=='M'}">月</c:if>
				    		<c:if test="${timeType=='Y'}">年</c:if>
				    		数</th>
				    	<th>组别</th>
				    	<th>组负责人</th>
				    	<th>注册</th>
				    	<th>维护</th>
				    	<th>注销</th>
				    	<th>合计</th>
				    	<th>录入率</th>
				    	<th>操作</th>
				    </tr>
		   			<c:set var="a" value="0"/>
			   		<c:forEach items="${qgds}" var="qd" varStatus="status">
				   		<tr>
					    	<td style="display: none">${status }</td>
					    	<c:if test="${qd.quantum != null}">
					    		<c:set var="a" value="${a+1}"/>
				    			<td rowspan="3">${a }</td>
					    		<td rowspan="3">${qd.quantum }</td>
					    		<td rowspan="3">${qd.weekNum }</td>
					    	</c:if>
					    	<td>${qd.qgGroup }</td>
					    	<td>${qd.qgFunctionary }</td>
					    	<td>${qd.qgTypeZc }</td>
					    	<td>${qd.qgTypeWh }</td>
					    	<td>${qd.qgTypeZx }</td>
					    	<td>${qd.qgCount }</td>
					    	<td>${qd.qgProductivity }</td>
					    	<td>
					    		<a onclick="queryDetails('${qd.qgGroup }')" class="easyui-linkbutton" title="查看详情">查看详情</a>
					    	</td>
					    </tr>
				    </c:forEach>
			    </table>
		  	</div>
	  	</div>
	  	<div title="明细" style="overflow: hidden;" >
	  		<div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>
				    		<c:if test="${timeType=='W'}">周</c:if>
				    		<c:if test="${timeType=='M'}">月</c:if>
				    		<c:if test="${timeType=='Y'}">年</c:if>
				    		数</th>
				    	<th>统计业务</th>
				    	<th>主要负责</th>
				    	<th>注册</th>
				    	<th>维护</th>
				    	<th>注销</th>
				    	<th>合计</th>
				    	<th>录入率</th>
				    </tr>
				    <c:forEach items="${qms}" var="q" varStatus="status">
					    <tr>
							<c:if test="${q.quantum != null}">
					    		<c:set var="a" value="${a+1}"/>
				    			<td rowspan="${q.lineNum }">${a }</td>
					    		<td rowspan="${q.lineNum }">${q.quantum }</td>
					    		<td rowspan="${q.lineNum }">${q.weekNum }</td>
					    	</c:if>
					    	<td>${q.qmTable }</td>
					    	<td>${q.uName }</td>
					    	<td>${q.qmTypeZc }</td>
					    	<td>${q.qmTypeWh }</td>
					    	<td>${q.qmTypeZx }</td>
					    	<td>${q.count }</td>
					    	<td>${q.productivity*100 }%</td>
					    </tr>
				    </c:forEach>
			    </table>
		  	</div>
	  	</div>
  	</div>
  </body>
</html>
