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
    
    <title>分拨点监控材料申请清单链接</title>
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
		$("#u_3").val(u3);
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
    
    <div class="easyui-panel" title="分拨点监控材料申请清单链接" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/fbd_ll!queryOfFenyeLL" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		分拨点：<input name="fbdName" type="text" value="${fbdName }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		名称：<input name="llName" type="text" value="${llName }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		状态：<input name="llState" type="text" value="${llState }"/>
    		<br/>
    		<input type="submit" value="查询" style="margin:5px;"/>
    	</form>	
    </div>
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>分部</th>
    	<th>分拨点</th>
    	<th>硬件专员</th>
    	<th>需求日期</th>
    	<th>提交日期</th>
    	<th>名称</th>
    	<th>数量</th>
    	<th>单位</th>
    	<th>规格</th>
    	<th>链接</th>
    	<th>备注</th>
    	<th>状态</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${lls}" var="ll">
    <tr>
		<td width="">${ll.llId }</td>
		<td width="">${ll.fbd.fb.fbName }</td>
		<td width="">${ll.fbd.fbdName }</td>
		<td width="">${ll.csMaster }</td>
		<td width=""><fmt:formatDate value="${ll.llDateNeed }" pattern="yyyy/M/d" /></td>
		<td width=""><fmt:formatDate value="${ll.llDateCommit }" pattern="yyyy/M/d" /></td>
		<td width="">${ll.llName }</td>
		<td width="">${ll.llNumber }</td>
		<td width="">${ll.llUnit }</td>
		<td width="">${ll.llNorms }</td>
		<td width=""><a href="${ll.llLink }" target="blant">${ll.llLink }</a></td>
		<td width="">${ll.llNote }</td>
		<td width="">${ll.llState }</td>
		<td width="5%" align="center">
			<a onclick="update('${ll.llId }','${ll.fbd.fbdId }','${ll.csMaster }','${ll.llDateNeed }','${ll.llDateCommit }','${ll.llName }','${ll.llNumber }','${ll.llUnit }','${ll.llNorms }','${ll.llLink }','${ll.llNote }','${ll.llState }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/fbd_ll!deleteLL?id=${ll.llId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/fbd_ll!queryOfFenyeLL?id=${id }&fbdName=${fbdName }&llName=${llName }&llState=${llState }" method="post">
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
		<form action="<%=path %>/fbd_ll!updateLL" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号</td>
				<td>
					<input id="u_1" name="ll.llId" type="text"/>
				</td>
			</tr>
			<tr>
				<td>分拨点：</td>
				<td>
					<select id="u_2" name="ll.fbdId">
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
				<td>硬件专员：</td>
				<td>
					<input id="u_3" name="ll.csMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>需求日期：</td>
				<td>
					<input id="u_4" name="ll.llDateNeed" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>提交日期：</td>
				<td>
					<input id="u_5" name="ll.llDateCommit" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>名称：</td>
				<td>
					<input id="u_6" name="ll.llName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>数量：</td>
				<td>
					<input id="u_7" name="ll.llNumber" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>单位：</td>
				<td>
					<input id="u_8" name="ll.llUnit" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>规格：</td>
				<td>
					<input id="u_9" name="ll.llNorms" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>链接：</td>
				<td>
					<input id="u_10" name="ll.llLink" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_11" name="ll.llNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input id="u_12" name="ll.llState" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/fbd_ll!addLL" method="post">
		<table border="0" class="table1">
			<tr>
				<td>分拨点：</td>
				<td>
					<select name="ll.fbdId">
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
				<td>硬件专员：</td>
				<td>
					<input name="ll.csMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>需求日期：</td>
				<td>
					<input name="ll.llDateNeed" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>提交日期：</td>
				<td>
					<input name="ll.llDateCommit" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>名称：</td>
				<td>
					<input name="ll.llName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>数量：</td>
				<td>
					<input name="ll.llNumber" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>单位：</td>
				<td>
					<input name="ll.llUnit" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>规格：</td>
				<td>
					<input name="ll.llNorms" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>链接：</td>
				<td>
					<input name="ll.llLink" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="ll.llNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input name="ll.llState" type="text" style="width: 100%;"/>
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
