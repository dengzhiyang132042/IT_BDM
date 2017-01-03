<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cs1.jsp' starting page</title>
    
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
	function update(id,name,master,p,pp,pc,ps,note){
		$('#u').window('open');
		$('#u_id').val(id);
		$('#u_name').val(name);
		$('#u_master').val(master);
		$('#u_p').val(p);
		$('#u_pp').val(pp);
		$('#u_pc').val(pc);
		$('#u_ps').val(ps);
		$('#u_note').val(note);
	}
	</script>
  </head>
  
  <body>
    <table class="table2" border="1" style="width: 600px;" align="center">
    	<tr>
    		<td>编号</td>
    		<td>${cs6.s6Id }</td>
    	</tr>
    	<tr>
    		<td>部门名称</td>
    		<td>${cs6.s6Name }</td>
 		</tr>
 		<tr>
    		<td>人员名字</td>
    		<td>${cs6.s6Master }</td>
 		</tr>
 		<tr>
    		<td>职位</td>
    		<td>${cs6.s6Position }</td>
 		</tr>
 		<tr>
    		<td>联系电话</td>
    		<td>${cs6.s6PhonePrivate }</td>
 		</tr>
 		<tr>
    		<td>公司电话</td>
    		<td>${cs6.s6PhoneCompany }</td>
 		</tr>
 		<tr>
    		<td>短号</td>
    		<td>${cs6.s6PhoneShort }</td>
 		</tr>
 		<tr>
    		<td>备注</td>
    		<td>${cs6.s6Note }</td>
 		</tr>
 		<tr>
    		<td>操作</td>
    		<td>
    			<a class="easyui-linkbutton" onclick="update('${cs6.s6Id }','${cs6.s6Name }','${cs6.s6Master }','${cs6.s6Position }','${cs6.s6PhonePrivate }','${cs6.s6PhoneCompany }','${cs6.s6PhoneShort }','${cs6.s6Note }')">修改</a>
    			<a class="easyui-linkbutton" href="<%=path %>/csection!deleteCs6?id=${cs6.s6Id}" onclick="return my_confirm()">删除</a>
    		</td>
 		</tr>
    </table>
    
    
    <div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/csection!updateCs6" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号：</td>
				<td>
					<input id="u_id" name="cs6.s6Id" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>部门名称：</td>
				<td>
					<input id="u_name" name="cs6.s6Name" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>人员名称：</td>
				<td>
					<input id="u_master" name="cs6.s6Master" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>职位：</td>
				<td>
					<input id="u_p" name="cs6.s6Position" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td>
					<input id="u_pp" name="cs6.s6PhonePrivate" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>公司电话：</td>
				<td>
					<input id="u_pc" name="cs6.s6PhoneCompany" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>短号：</td>
				<td>
					<input id="u_ps" name="cs6.s6PhoneShort" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_note" name="cs6.s6Note" type="text" style="width: 100%;"/>
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
    
    
    
    
    
    
    
  </body>
</html>
