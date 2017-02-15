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
    
    <title>日统计报表式样</title>
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
				$('#ks').attr("action","<%=path%>/quotaGroup!queryOfFenye");
			}
			if('${option}'=='detail'){
				detail();
			}
			$('#tt').tabs({
			    border:false,
			    onSelect:function(title,index){
					var path;
					if(title == '组统计'){
						path="<%=path%>/quotaGroup!queryOfFenye";
					}
					if(title == '明细'){
						path="<%=path%>/quotaMan!queryOfFenye?cz=yes";
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
		
		function page1(no,cz){
			var num1=$('#page1').val();
			if(cz==1){//上下页
				$('#page1').val(num1*1+no*1);
			}else if(cz==2){//首末页
				$('#page1').val(no);
			}else{
			}
			if($('#page1').val()*1<1){
				$('#page1').val(1);
			}else if($('#page1').val()*1>${page.pageMax}*1){
				$('#page1').val(${page.pageMax});
			}
			$('#f2').submit();
		}
		
		function queryDetails(id) {
			var path="<%=path%>/quotaMan!queryOfFenye?cz=yes&qmid="+id;
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
	    	<form id="ks" action="<%=path %>/quotaMan!queryOfFenye" method="post">
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
			    		编号：<input id="mxid" name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				主要负责：<input id="mxfz" name="name" type="text" value="${name }"/>
	    			</div>
	    		</div>
	    	</form>
   		</div>
   		<div  class="btn">
   			<input type="submit" value="查询" onclick="$('.kscx .inp form').submit();"/>
   		</div>
   		<div style="clear:both;"></div>
    </div>
    
    <div id="tt" class="easyui-tabs" style="width:99%;height:500px;margin:5px;">
	    <div title="组统计" style="overflow: hidden;">
		    <div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>组别</th>
				    	<th>负责主管</th>
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
					    	<td style="display: none">${qd.qgId }</td>
					    	<c:if test="${qd.qgDate != null}">
					    		<c:set var="a" value="${a+1}"/>
				    			<td rowspan="4">${a }</td>
					    		<td rowspan="4"><fmt:formatDate value="${qd.qgDate }" pattern="yyyy/MM/dd"/></td>
					    	</c:if>
					    	<td>${qd.qgGroup }</td>
					    	<td>${qd.qgFunctionary }</td>
					    	<td>${qd.qgTypeZc }</td>
					    	<td>${qd.qgTypeWh }</td>
					    	<td>${qd.qgTypeZx }</td>
					    	<td>${qd.qgCount }</td>
					    	<td>${qd.qgProductivity }</td>
					    	<td>
					    		<a onclick="queryDetails('${qd.qgId}')" class="easyui-linkbutton" title="查看详情">查看详情</a>
					    	</td>
					    </tr>
				    </c:forEach>
			    </table>
		  	</div>
			<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
				<form id="f1" action="<%=path %>/quotaGroup!queryOfFenye?id=${id}&name=${name}&dates=${dates}&datee=${datee}" method="post">
				<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f1').submit();">
					<option value="12">12</option>
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
	  	<div title="明细" style="overflow: hidden;" >
	  		<div style="margin-bottom: 5px;">
			    <table border="1" id="" style="font-size: 12px;">
				    <tr>
				    	<th>编号</th>
				    	<th>时间</th>
				    	<th>统计业务</th>
				    	<th>主要负责</th>
				    	<th>注册</th>
				    	<th>维护</th>
				    	<th>注销</th>
				    	<th>合计</th>
				    	<th>录入率</th>
				    </tr>
				    <c:forEach items="${qms}" var="q">
					    <tr>
					    	<td>${q.qmId }</td>
						    <td><fmt:formatDate value="${q.qmDate }" pattern="yyyy/MM/dd"/></td>
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
		  	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
				<form id="f2" action="<%=path %>/quotaMan!queryOfFenye?id=${id}&name=${name}&dates=${dates}&datee=${datee}" method="post">
				<select id="sele" style="float: left;margin-top: 3px;margin-left: 5px;" name="page.size" onchange="$('#f2').submit();">
					<option value="15">15</option>
				</select>
				
				<span style="float: left;margin-left: 5px;">
				<span style="color: #A5A5A5;">|</span>
				<a onclick="page1(1,2)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-last'" title="首页"></a>
				<a onclick="page1(-1,1)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-l'" title="上一页"></a>
				<span style="color: #A5A5A5;">|</span>
				</span>
				
				<span style="float: left;margin-top: 3px;margin-left: 5px;">
				<input id="page1" name="page.pageOn" type="number" style="width: 50px;height: 20px;" value="${page.pageOn }" min="1" max="${page.pageMax }" onchange="$('#f2').submit();"/>
				</span>
				
				<span style="float: left;margin-top: 5px;margin-left: 5px;">/${page.pageMax }</span>
				
				<span style="float: left;margin-left: 5px;">
				<span style="color: #A5A5A5;">|</span>
				<a onclick="page1(1,1)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-n'" title="下一页"></a>
				<a onclick="page1('${page.pageMax}',2)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-next'" title="末页"></a>
				</span>
				</form>
			</div>
	  	</div>
  	</div>
  </body>
</html>
