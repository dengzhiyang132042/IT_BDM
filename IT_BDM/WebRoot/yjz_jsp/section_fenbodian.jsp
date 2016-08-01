<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/jquery-easyui/jquery.easyui.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
	<script type="text/javascript">
	$(function(){
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
	});
	
	function update(id,name,master,pp,pc,ps,address){
		$('#u').window('open');
		$('#u_id').val(id);
		$('#u_name').val(name);
		$('#u_master').val(master);
		$('#u_pp').val(pp);
		$('#u_pc').val(pc);
		$('#u_ps').val(ps);
		$('#u_add').val(address);
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
    
    <div class="easyui-panel" title="分拨点" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="height: 455px;">
    <table border="1" id="eidtASubjectWindow1">
    <tr align="center" style="height: 28px;background-color: #E6E6E6;">
    	<td>编号</td>
    	<td>分拨点</td>
    	<td>承包人</td>
    	<td>联系电话</td>
    	<td>公司电话</td>
    	<td>短号</td>
    	<td>地址</td>
    	<td>操作</td>
    </tr>
    <c:forEach items="${fbds}" var="fbd">
    <tr>
		<td width="19%">${fbd.fbdId }</td>
		<td width="8%">${fbd.fbdName }</td>
		<td width="8%">${fbd.fbdMaster }</td>
		<td width="10%">${fbd.fbdPhonePrivate }</td>
		<td width="10%">${fbd.fbdPhoneCompany }</td>
		<td width="10%">${fbd.fbdPhoneShort }</td>
		<td width="22%">${fbd.fbdAddress }</td>
		<td width="8%" align="center">
			<a onclick="update('${fbd.fbdId }','${fbd.fbdName }','${fbd.fbdMaster }','${fbd.fbdPhonePrivate }','${fbd.fbdPhoneCompany }','${fbd.fbdPhoneShort }','${fbd.fbdAddress }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/section!deleteFbd?id=${fbd.fbdId}" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/section!queryOfFenyeFbd" method="post">
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
		<form action="<%=path %>/section!updateFbd" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_id" name="fbd.fbdId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>分拨点：</td>
				<td>
					<input id="u_name" name="fbd.fbdName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>承包人：</td>
				<td>
					<input id="u_master" name="fbd.fbdMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td>
					<input id="u_pp" name="fbd.fbdPhonePrivate" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>公司电话：</td>
				<td>
					<input id="u_pc" name="fbd.fbdPhoneCompany" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>短号：</td>
				<td>
					<input id="u_ps" name="fbd.fbdPhoneShort" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>地址：</td>
				<td>
					<input id="u_add" name="fbd.fbdAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>分部：</td>
				<td>
					<select name="structure">
						<c:forEach items="${structure}" var="s_qb">
							<c:forEach items="${s_qb.fbs}" var="s_fb">
								<option value="${s_fb.fbId }">${s_qb.qbName}-${s_fb.fbName }</option>				
							</c:forEach>
						</c:forEach>
					</select>
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
		<form action="<%=path %>/section!addFbd" method="post">
		<table border="0" class="table1">
			<tr>
				<td>分拨点：</td>
				<td>
					<input id="a_name" name="fbd.fbdName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>承包人：</td>
				<td>
					<input id="a_master" name="fbd.fbdMaster" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td>
					<input id="a_pp" name="fbd.fbdPhonePrivate" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>公司电话：</td>
				<td>
					<input id="a_pc" name="fbd.fbdPhoneCompany" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>短号：</td>
				<td>
					<input id="a_ps" name="fbd.fbdPhoneShort" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>地址：</td>
				<td>
					<input id="a_add" name="fbd.fbdAddress" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>分部：</td>
				<td>
					<select name="structure">
						<c:forEach items="${structure}" var="s_qb">
							<c:forEach items="${s_qb.fbs}" var="s_fb">
								<option value="${s_fb.fbId }">${s_qb.qbName}-${s_fb.fbName }</option>				
							</c:forEach>
						</c:forEach>
					</select>
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
		<form id="f2" action="<%=path %>/section!queryOfFenyeFbd" method="post">
			<input class="easyui-searchbox" name="fbd.fbdId" type="text"data-options="prompt:'请输入编号进行模糊查询',searcher:doSearch" style="width:300px;height: 16px;" value="${fbd.fbdId }"/>
		</form>
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
