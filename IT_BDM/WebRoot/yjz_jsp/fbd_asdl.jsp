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
    
    <title>分拨点宽带登记ASDL</title>
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
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">

	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10){
		$('#u').window('open');
		$("#u_1 option[value='"+u1+"']").attr("selected",true);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
		$('#u_7').val(u7);
		$('#u_8').val(u8);
		$('#u_9').val(u9);
		$('#u_10').val(u10);
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
    
    <div class="easyui-panel" title="分拨点宽带登记ASDL" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/fbd_asdl!queryOfFenyeAsdl" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		分拨点：<input name="fbdName" type="text" value="${fbdName }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		承包人：<input name="fbdMaster" type="text" value="${fbdMaster }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		接入号：<input name="asdlInput" type="text" value="${asdlInput }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		账号：<input name="asdlNum" type="text" value="${asdlNum }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		状态：<input name="asdlState" type="text" value="${asdlState }"/>
    		<br/>
    		<input type="submit" value="查询" style="margin:5px;"/>
    	</form>	
    </div>
    <div style="margin-bottom: 5px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr align="center" style="height: 28px;background-color: #E6E6E6;">
    	<th>编号</td>
    	<th>区部</td>
    	<th>分部</td>
    	<th>分部经理</td>
    	<th>联系电话</td>
    	<th>分拨点</td>
    	<th>承包人</td>
    	<th>联系电话</td>
    	<th>地址</td>
    	<th>接入号</td>
    	<th>账号</td>
    	<th>密码</td>
    	<th>包年资费</td>
    	<th>合约到期</td>
    	<th>续约提醒</td>
    	<th>备注</td>
    	<th>状态</td>
    	<th>操作</td>
    </tr>
    <c:forEach items="${asdls}" var="asdl">
    <tr>
		<td width="">${asdl.asdlId }</td>
		<td width="">${asdl.fbd.fb.qb.qbName }</td>
		<td width="">${asdl.fbd.fb.fbName }</td>
		<td width="">${asdl.fbd.fb.fbMaster }</td>
		<td width="">${asdl.fbd.fb.fbPhonePrivate }</td>
		<td width="">${asdl.fbd.fbdName }</td>
		<td width="">${asdl.fbd.fbdMaster }</td>
		<td width="">${asdl.fbd.fbdPhonePrivate }</td>
		<td width="">${asdl.fbd.fbdAddress }</td>
		<td width="">${asdl.asdlInput }</td>
		<td width="">${asdl.asdlNum }</td>
		<td width="">${asdl.asdlPass }</td>
		<td width="">${asdl.asdlFeeYear }</td>
		<td width=""><fmt:formatDate value="${asdl.asdlTimeExpire }" pattern="yyyy/M/d" /></td>
		<td width="">${asdl.asdlContract }</td>
		<td width="">${asdl.asdlNote }</td>
		<td width="">${asdl.asdlState }</td>
		<td width="5%" align="center">
			<a onclick="update('${asdl.fbd.fbdId }','${asdl.asdlInput }','${asdl.asdlNum }','${asdl.asdlPass }','${asdl.asdlFeeYear }','${asdl.asdlTimeExpire }','${asdl.asdlContract }','${asdl.asdlNote }','${asdl.asdlState }','${asdl.asdlId }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/fbd_asdl!deleteAsdl?id=${asdl.asdlId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/fbd_asdl!queryOfFenyeAsdl?id=${id}&fbdName=${fbdName }&fbdMaster=${fbdMaster }&asdlInput=${asdlInput }&asdlNum=${asdlNum }&asdlState=${asdlState }"" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/fbd_asdl!updateAsdl" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号</td>
				<td>
					<input id="u_10" type="text" name="asdl.asdlId" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>分拨点：</td>
				<td>
					<select id="u_1" name="asdl.fbdId">
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
				<td>接入号：</td>
				<td>
					<input id="u_2" name="asdl.asdlInput" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>账号：</td>
				<td>
					<input id="u_3" name="asdl.asdlNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input id="u_4" name="asdl.asdlPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>包年资费：</td>
				<td>
					<input id="u_5" name="asdl.asdlFeeYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>合约到期：</td>
				<td>
					<input id="u_6" type="date" name="asdl.asdlTimeExpire" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>续约提醒：</td>
				<td>
					<input id="u_7" name="asdl.asdlContract" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_8" name="asdl.asdlNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input id="u_9" name="asdl.asdlState" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/fbd_asdl!addAsdl" method="post">
		<table border="0" class="table1">
			<tr>
				<td>分拨点：</td>
				<td>
					<select name="asdl.fbdId">
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
				<td>接入号：</td>
				<td>
					<input name="asdl.asdlInput" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>账号：</td>
				<td>
					<input name="asdl.asdlNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input name="asdl.asdlPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>包年资费：</td>
				<td>
					<input name="asdl.asdlFeeYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>合约到期：</td>
				<td>
					<input type="date" name="asdl.asdlTimeExpire" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>续约提醒：</td>
				<td>
					<input name="asdl.asdlContract" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="asdl.asdlNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input name="asdl.asdlState" type="text" style="width: 100%;"/>
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
