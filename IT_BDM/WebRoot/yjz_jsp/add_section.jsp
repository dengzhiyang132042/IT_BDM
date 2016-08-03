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
		$(".easyui-tabs").show();
	});
	</script>
  </head>
  
  <body style="margin: 0px;padding: 0px;">
    
    <div class="easyui-tabs" style="width:100%;height:100%;;display: none;" data-options="border:false">
		<div title="添加区部" style="padding:10px;">
			<form action="<%=path %>/section!addQb?cz=yes" method="post">
			<table border="1" class="table1">
				<tr>
					<td>区部：</td>
					<td>
						<input id="a_name" name="qb.qbName" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>区部经理：</td>
					<td>
						<input id="a_master" name="qb.qbMaster" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td>
						<input id="a_pp" name="qb.qbPhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input id="a_pc" name="qb.qbPhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input id="a_ps" name="qb.qbPhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>	
		</div>
		<div id="div1" title="添加分部" style="padding:10px">
			<form action="<%=path %>/section!addFb?cz=yes" method="post">
			<table border="1" class="table1">
				<tr>
					<td>分部：</td>
					<td>
						<input id="u_name" name="fb.fbName" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>分部经理：</td>
					<td>
						<input id="u_master" name="fb.fbMaster" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td>
						<input id="u_pp" name="fb.fbPhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input id="u_pc" name="fb.fbPhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input id="u_ps" name="fb.fbPhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>区部：</td>
					<td>
						<select name="structure">
							<c:forEach items="${structure}" var="s_qb">
							<option value="${s_qb.qbId }">${s_qb.qbName }</option>				
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加分拨点" style="padding:10px">
			<form action="<%=path %>/section!addFbd?cz=yes" method="post">
			<table border="1" class="table1">
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
						<input id="u_ps" name="fbd.fbdAddress" type="text" style="width: 100%;"/>
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
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加一级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs1" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs1.s1Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs1.s1Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs1.s1Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs1.s1PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs1.s1PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs1.s1PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs1.s1Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加二级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs2" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs2.s2Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs2.s2Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs2.s2Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs2.s2PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs2.s2PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs2.s2PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs2.s2Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<option value="${cs1.s1Id }">${cs1.s1Name}(${cs1.s1Master })</option>				
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加三级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs3" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs3.s3Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs3.s3Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs3.s3Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs3.s3PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs3.s3PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs3.s3PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs3.s3Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
								<option value="${cs2.s2Id }">${cs2.s2Name}(${cs2.s2Master })</option>				
								</c:forEach>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加四级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs4" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs4.s4Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs4.s4Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs4.s4Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs4.s4PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs4.s4PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs4.s4PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs4.s4Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
									<c:forEach items="${cs2.nexts}" var="cs3">
									<option value="${cs3.s3Id }">${cs3.s3Name}(${cs3.s3Master })</option>				
									</c:forEach>
								</c:forEach>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加五级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs5" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs5.s5Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs5.s5Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs5.s5Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs5.s5PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs5.s5PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs5.s5PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs5.s5Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
									<c:forEach items="${cs2.nexts}" var="cs3">
										<c:forEach items="${cs3.nexts}" var="cs4">
											<option value="${cs4.s4Id }">${cs4.s4Name}(${cs4.s4Master })</option>				
										</c:forEach>
									</c:forEach>
								</c:forEach>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加六级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs6" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs6.s6Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs6.s6Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs6.s6Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs6.s6PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs6.s6PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs6.s6PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs6.s6Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
									<c:forEach items="${cs2.nexts}" var="cs3">
										<c:forEach items="${cs3.nexts}" var="cs4">
											<c:forEach items="${cs4.nexts}" var="cs5">
												<option value="${cs5.s5Id }">${cs5.s5Name}(${cs5.s5Master })</option>				
											</c:forEach>
										</c:forEach>
									</c:forEach>
								</c:forEach>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加七级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs7" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs7.s7Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs7.s7Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs7.s7Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs7.s7PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs7.s7PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs7.s7PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs7.s7Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
									<c:forEach items="${cs2.nexts}" var="cs3">
										<c:forEach items="${cs3.nexts}" var="cs4">
											<c:forEach items="${cs4.nexts}" var="cs5">
												<c:forEach items="${cs5.nexts}" var="cs6">
													<option value="${cs6.s6Id }">${cs6.s6Name}(${cs6.s6Master })</option>				
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
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
		<div title="添加八级部门" style="padding:10px">
			<form action="<%=path %>/csection!addCs8" method="post">
			<table border="1" class="table1">
				<tr>
					<td>部门：</td>
					<td>
						<input name="cs8.s8Name" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>人员名字：</td>
					<td>
						<input name="cs8.s8Master" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>职位：</td>
					<td>
						<input name="cs8.s8Position" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>私人电话：</td>
					<td>
						<input name="cs8.s8PhonePrivate" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>公司电话：</td>
					<td>
						<input name="cs8.s8PhoneCompany" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>短号：</td>
					<td>
						<input name="cs8.s8PhoneShort" type="number" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td>
						<input name="cs8.s8Note" type="text" style="width: 100%;"/>
					</td>
				</tr>
				<tr>
					<td>上级部门</td>
					<td>
						<select name="structure2">
							<c:forEach items="${structure2}" var="cs1">
								<c:forEach items="${cs1.nexts}" var="cs2">
									<c:forEach items="${cs2.nexts}" var="cs3">
										<c:forEach items="${cs3.nexts}" var="cs4">
											<c:forEach items="${cs4.nexts}" var="cs5">
												<c:forEach items="${cs5.nexts}" var="cs6">
													<c:forEach items="${cs6.nexts}" var="cs7">
														<option value="${cs7.s7Id }">${cs7.s7Name}(${cs7.s7Master })</option>				
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
					<td colspan="2" align="center">
						<input class="easyui-linkbutton" type="submit" style="width: 500px;padding: 5px;" value="提交"/>
					</td>			
				</tr>
			</table>
			</form>
		</div>
	</div>
    
	
	
	
  </body>
</html>
