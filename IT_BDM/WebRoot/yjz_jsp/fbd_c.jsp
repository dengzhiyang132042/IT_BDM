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
    
    <title>区部信息</title>
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
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12){
		$('#u').window('open');
		$('#u_1').val(u1);
		$("#u_2 option[value='"+u2+"']").attr("selected",true);
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
    
    <div class="easyui-panel" title="分拨点电脑登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="height: 455px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>区部</th>
    	<th>分部</th>
    	<th>分部经理</th>
    	<th>联系电话</th>
    	<th>分拨点</th>
    	<th>CPU</th>
    	<th>主板</th>
    	<th>内存</th>
    	<th>硬盘</th>
    	<th>MAC</th>
    	<th>显示器</th>
    	<th>主板使用日期</th>
    	<th>主板使用年限</th>
    	<th>是否可报废</th>
    	<th>备注</th>
    	<th>状态</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${cs}" var="c">
    <tr>
		<td width="">${c.cId }</td>
		<td width="">${c.fbd.fb.qb.qbName }</td>
		<td width="">${c.fbd.fb.fbName }</td>
		<td width="">${c.fbd.fb.fbMaster }</td>
		<td width="">${c.fbd.fb.fbPhonePrivate }</td>
		<td width="">${c.fbd.fbdName }</td>
		<td width="">${c.CCpu }</td>
		<td width="">${c.CMainboard }</td>
		<td width="">${c.CMemory }</td>
		<td width="">${c.CDisk }</td>
		<td width="">${c.CMac }</td>
		<td width="">${c.CDisplayer }</td>
		<td width=""><fmt:formatDate value="${c.CTimeStart }" pattern="yyyy/M/d" /></td>
		<td width="">${c.CUsedYear }</td>
		<td width="">${c.CScrap }</td>
		<td width="">${c.CNote }</td>
		<td width="">${c.CState }</td>
		<td width="5%" align="center">
			<a onclick="update('${c.cId }','${c.fbd.fbdId }','${c.CCpu }','${c.CMainboard }','${c.CMemory }','${c.CDisk }','${c.CMac }','${c.CDisplayer }','${c.CTimeStart }','${c.CUsedYear }','${c.CNote }','${c.CState }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/fbd_c!deleteC?id=${c.cId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/fbd_c!queryOfFenyeC" method="post">
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
		<form action="<%=path %>/fbd_c!updateC" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号</td>
				<td>
					<input id="u_1" name="c.cId" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>分拨点：</td>
				<td>
					<select id="u_2" name="c.fbdId">
						<c:forEach items="${structure}" var="qb">
							<c:forEach items="${qb.fbs}" var="fb">
								<c:forEach items="${fb.fbds}" var="fbd">
								<option value="${fbd.fbdId }">${fbd.fbdName }</option>
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>CPU：</td>
				<td>
					<input id="u_3" name="c.CCpu" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板：</td>
				<td>
					<input id="u_4" name="c.CMainboard" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存：</td>
				<td>
					<input id="u_5" name="c.CMemory" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘：</td>
				<td>
					<input id="u_6" name="c.CDisk" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>MAC：</td>
				<td>
					<input id="u_7" name="c.CMac" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器：</td>
				<td>
					<input id="u_8" name="c.CDisplayer" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板使用日期：</td>
				<td>
					<input id="u_9" name="c.CTimeStart" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板使用年限：</td>
				<td>
					<input id="u_10" name="c.CUsedYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input name="c.CScrap" type="radio" value="是"/>是
					<input name="c.CScrap" type="radio" value="否" checked="checked"/>否
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_11" name="c.CNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input id="u_12" name="c.CState" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/fbd_c!addC" method="post">
		<table border="0" class="table1">
			<tr>
				<td>分拨点：</td>
				<td>
					<select name="c.fbdId">
						<c:forEach items="${structure}" var="qb">
							<c:forEach items="${qb.fbs}" var="fb">
								<c:forEach items="${fb.fbds}" var="fbd">
								<option value="${fbd.fbdId }">${fbd.fbdName }</option>
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>CPU：</td>
				<td>
					<input name="c.CCpu" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板：</td>
				<td>
					<input name="c.CMainboard" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>内存：</td>
				<td>
					<input name="c.CMemory" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘：</td>
				<td>
					<input name="c.CDisk" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>MAC：</td>
				<td>
					<input name="c.CMac" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器：</td>
				<td>
					<input name="c.CDisplayer" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板使用日期：</td>
				<td>
					<input name="c.CTimeStart" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主板使用年限：</td>
				<td>
					<input name="c.CUsedYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input name="c.CScrap" type="radio" value="是"/>是
					<input name="c.CScrap" type="radio" value="否" checked="checked"/>否
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="c.CNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input name="c.CState" type="text" style="width: 100%;"/>
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
