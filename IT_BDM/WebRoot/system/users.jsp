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
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$("#u_4 option[value='"+u4+"']").attr("selected",true);
		$("#u_5 option[value='"+u5+"']").attr("selected",true);
		$("#u_6 option[value='"+u6+"']").attr("selected",true);
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
    
    <div class="easyui-panel" title="用户管理" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="height: 455px;">
    
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr align="center" style="height: 28px;background-color: #E6E6E6;">
    	<td>账号</td>
    	<td>密码</td>
    	<td>名字</td>
    	<td>部门</td>
    	<td>职位</td>
    	<td>创建时间</td>
    	<td>角色</td>
    	<td>操作</td>
    </tr>
    <c:forEach items="${us}" var="u">
    <tr>
		<td width="">${u.UNum }</td>
		<td width="">${u.UPass }</td>
		<td width="">${u.UName }</td>
		<td width="">${u.UCs }</td>
		<td width="">${u.UJob }</td>
		<td width="">${u.UStartTime }</td>
		<td width="">${u.r.RName }</td>
		<td width="5%" align="center">
			<a onclick="update('${u.UNum }','${u.UPass }','${u.UName }','${u.UCs }','${u.UJob }','${u.RId }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/users!delete?id=${u.UNum}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/users!queryOfFenye" method="post">
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
		<form action="<%=path %>/users!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td>账号：</td>
				<td>
					<input id="u_1" name="u.UNum" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input id="u_2" name="u.UPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>名字：</td>
				<td>
					<input id="u_3" name="u.UName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<select id="u_4" name="u.UCs">
						<c:forEach items="${structure2}" var="cs1">
						<option value="${cs1.s1Name }">${cs1.s1Name}(${cs1.s1Master })</option>
							<c:forEach items="${cs1.nexts}" var="cs2">
							<option value="${cs2.s2Name }">${cs2.s2Name}(${cs2.s2Master })</option>
								<c:forEach items="${cs2.nexts}" var="cs3">
								<option value="${cs3.s3Name }">${cs3.s3Name}(${cs3.s3Master })</option>
									<c:forEach items="${cs3.nexts}" var="cs4">
									<option value="${cs4.s4Name }">${cs4.s4Name}(${cs4.s4Master })</option>
										<c:forEach items="${cs4.nexts}" var="cs5">
										<option value="${cs5.s5Name }">${cs5.s5Name}(${cs5.s5Master })</option>
											<c:forEach items="${cs5.nexts}" var="cs6">
											<option value="${cs6.s6Name }">${cs6.s6Name}(${cs6.s6Master })</option>
												<c:forEach items="${cs6.nexts}" var="cs7">
													<option value="${cs7.s7Name }">${cs7.s7Name}(${cs7.s7Master })</option>
													<c:forEach items="${cs7.nexts}" var="cs8">
														<option value="${cs8.s8Name }">${cs8.s8Name}(${cs8.s8Master })</option>
													</c:forEach>		
												</c:forEach>
											</c:forEach>
										</c:forEach>
									</c:forEach>			
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>职位：</td>
				<td>
					<select id="u_5" name="u.UJob">
						<c:forEach items="${structure2}" var="cs1">
						<option value="${cs1.s1Name }">${cs1.s1Name}(${cs1.s1Master })</option>
							<c:forEach items="${cs1.nexts}" var="cs2">
							<option value="${cs2.s2Name }">${cs2.s2Name}(${cs2.s2Master })</option>
								<c:forEach items="${cs2.nexts}" var="cs3">
								<option value="${cs3.s3Name }">${cs3.s3Name}(${cs3.s3Master })</option>
									<c:forEach items="${cs3.nexts}" var="cs4">
									<option value="${cs4.s4Name }">${cs4.s4Name}(${cs4.s4Master })</option>
										<c:forEach items="${cs4.nexts}" var="cs5">
										<option value="${cs5.s5Name }">${cs5.s5Name}(${cs5.s5Master })</option>
											<c:forEach items="${cs5.nexts}" var="cs6">
											<option value="${cs6.s6Name }">${cs6.s6Name}(${cs6.s6Master })</option>
												<c:forEach items="${cs6.nexts}" var="cs7">
													<option value="${cs7.s7Name }">${cs7.s7Name}(${cs7.s7Master })</option>
													<c:forEach items="${cs7.nexts}" var="cs8">
														<option value="${cs8.s8Name }">${cs8.s8Name}(${cs8.s8Master })</option>
													</c:forEach>		
												</c:forEach>
											</c:forEach>
										</c:forEach>
									</c:forEach>			
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>角色：</td>
				<td>
					<select id="u_6" name="u.RId">
						<c:forEach items="${rs}" var="r">
						<option value="${r.RId }">${r.RName}</option>
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
		<form action="<%=path %>/users!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td>账号：</td>
				<td>
					<input name="u.UNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input name="u.UPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>名字：</td>
				<td>
					<input name="u.UName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>部门：</td>
				<td>
					<select name="u.UCs">
						<c:forEach items="${structure2}" var="cs1">
						<option value="${cs1.s1Name }">${cs1.s1Name}(${cs1.s1Master })</option>
							<c:forEach items="${cs1.nexts}" var="cs2">
							<option value="${cs2.s2Name }">${cs2.s2Name}(${cs2.s2Master })</option>
								<c:forEach items="${cs2.nexts}" var="cs3">
								<option value="${cs3.s3Name }">${cs3.s3Name}(${cs3.s3Master })</option>
									<c:forEach items="${cs3.nexts}" var="cs4">
									<option value="${cs4.s4Name }">${cs4.s4Name}(${cs4.s4Master })</option>
										<c:forEach items="${cs4.nexts}" var="cs5">
										<option value="${cs5.s5Name }">${cs5.s5Name}(${cs5.s5Master })</option>
											<c:forEach items="${cs5.nexts}" var="cs6">
											<option value="${cs6.s6Name }">${cs6.s6Name}(${cs6.s6Master })</option>
												<c:forEach items="${cs6.nexts}" var="cs7">
													<option value="${cs7.s7Name }">${cs7.s7Name}(${cs7.s7Master })</option>
													<c:forEach items="${cs7.nexts}" var="cs8">
														<option value="${cs8.s8Name }">${cs8.s8Name}(${cs8.s8Master })</option>
													</c:forEach>		
												</c:forEach>
											</c:forEach>
										</c:forEach>
									</c:forEach>			
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>职位：</td>
				<td>
					<select name="u.UJob">
						<c:forEach items="${structure2}" var="cs1">
						<option value="${cs1.s1Name }">${cs1.s1Name}(${cs1.s1Master })</option>
							<c:forEach items="${cs1.nexts}" var="cs2">
							<option value="${cs2.s2Name }">${cs2.s2Name}(${cs2.s2Master })</option>
								<c:forEach items="${cs2.nexts}" var="cs3">
								<option value="${cs3.s3Name }">${cs3.s3Name}(${cs3.s3Master })</option>
									<c:forEach items="${cs3.nexts}" var="cs4">
									<option value="${cs4.s4Name }">${cs4.s4Name}(${cs4.s4Master })</option>
										<c:forEach items="${cs4.nexts}" var="cs5">
										<option value="${cs5.s5Name }">${cs5.s5Name}(${cs5.s5Master })</option>
											<c:forEach items="${cs5.nexts}" var="cs6">
											<option value="${cs6.s6Name }">${cs6.s6Name}(${cs6.s6Master })</option>
												<c:forEach items="${cs6.nexts}" var="cs7">
													<option value="${cs7.s7Name }">${cs7.s7Name}(${cs7.s7Master })</option>
													<c:forEach items="${cs7.nexts}" var="cs8">
														<option value="${cs8.s8Name }">${cs8.s8Name}(${cs8.s8Master })</option>
													</c:forEach>		
												</c:forEach>
											</c:forEach>
										</c:forEach>
									</c:forEach>			
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>角色：</td>
				<td>
					<select name="u.RId">
						<c:forEach items="${rs}" var="r">
						<option value="${r.RId }">${r.RName}</option>
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
		<a class="icon-add" onclick="$('#a').window('open')" style="margin-left: 10px;" title="添加"></a>
	</div>
	
	
	<script>
		function doSearch(value){
			$('#f2').submit();
		}
	</script>
  </body>
</html>
