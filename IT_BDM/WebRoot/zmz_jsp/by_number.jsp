<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>IMO账号登记</title>
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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
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
    <div class="easyui-panel" title="IMO账号登记" style="width:100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/by!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		维护开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			维护结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				姓名  :<input name="name" type="text" value="${name }"/>
	    			</div>
	    		</div>
	    		<div>
		    		<div>
			    		部门:<input name="section" type="text" value="${section }"/>
		    		</div>
	    			<div>
	    				入职情况：<input name="job" type="text" value="${job }"/>
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
	    	<th>编号</th>
	    	<th>维护日期</th>
	    	<th>部门</th>
	    	<th>姓名</th>
	    	<th>IMO</th>
	    	<th>IMO默认密码</th>
	    	<th>维护IT</th>
	    	<th>入职情况</th>
	    	<th>维护周数</th>
	    	<th>备注说明</th>
	    	<th>维护类型</th>
	    	<th>操作</th>
	    </tr>
	    <c:forEach items="${bys}" var="by">
	    <tr>
			<td width="">${by.byId }</td>
			<td width=""><fmt:formatDate value="${by.byServiceDate }" pattern="yyyy/M/d" /></td>
			<td width="">${by.bySection}</td>
			<td width="">${by.byName }</td>
			<td width="">${by.byBgn }</td>
			<td width="">${by.byImoPass }</td>
			<td width="">${by.byService }</td>
			<td width="">${by.byOnJob }</td>
			<td width="">${by.byServiceWeek }</td>
			<td width="">${by.byNote }</td>
			<td width="">${by.byType }</td>
			<td width="5%" align="center">
				<a onclick="update('${by.byId }','<fmt:formatDate value="${by.byOaDate }" pattern="yyyy-MM-dd" />',
					'${by.bySection }','${by.byName }','${by.byBgn }','${by.byImoPass }','${by.byNote }',
					'${by.byOnJob }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
				<a href="<%=path %>/by!delete?id=${by.byId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/by!queryOfFenye?id=${id}&name=${name }&section=${section }&dates=${dates}&datee=${datee}&job=${job}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:300px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/by!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="80">编号：</td>
				<td>
					<input id="u_1" name="by.byId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>维护日期：</td>
				<td>
					<input id="u_2" name="by.byServiceDate" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<input id="u_3" name="by.bySection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>
					<input id="u_4" name="by.byName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO：</td>
				<td>
					<input id="u_5" name="by.byBgn" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>默认密码：</td>
				<td>
					<input id="u_6" name="by.byImoPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>入职情况：</td>
				<td>
					<select id="u_8" name="by.byOnJob" >
						<option value="入职">入职</option>
						<option value="停用">停用</option>
						<option value="离职">离职</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input id="u_7" name="by.byNote" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/by!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="80">维护日期：</td>
				<td>
					<input name="by.byServiceDate" type="text" style="width: 100%;" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" class="Wdate" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<input name="by.bySection" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>
					<input name="by.byName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>IMO：</td>
				<td>
					<input name="by.byBgn" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>默认密码：</td>
				<td>
					<input name="by.byImoPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>入职情况：</td>
				<td>
					<select name="by.byOnJob" >
						<option value="入职">入职</option>
						<option value="停用">停用</option>
						<option value="离职">离职</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input name="by.byNote" type="text" style="width: 100%;"/>
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
		<form id="ff" action="<%=path %>/by!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/zmz/IMO账号登记.xlsx';">
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
