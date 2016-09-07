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
	
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17){
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
		$('#u_13').val(u13);
		$('#u_14').val(u14);
		$('#u_15').val(u15);
		$('#u_16').val(u16);
		$('#u_17').val(u17);
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
    
    <div class="easyui-panel" title="分拨点监控登记" style="padding: 5px;display: none;" data-options="tools:'#tt'">
    <div style="background-color:white;margin-bottom: 5px;padding: 5px;border: 1px solid #224466; ">
    	快速查询
    	<br/>
    	<form action="<%=path %>/fbd_m!queryOfFenyeM" method="post">
    		编号:<input name="id" type="text" value="${id }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		分拨点：<input name="fbdName" type="text" value="${fbdName }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		监控账号：<input name="MNum" type="text" value="${MNum }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		是否可报废：<input name="MScrap" type="text" value="${MScrap }"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;
    		状态：<input name="MState" type="text" value="${MState }"/>
    		<br/>
    		<input type="submit" value="查询" style="margin:5px;"/>
    	</form>	 
    </div>
    <table border="1" id="eidtASubjectWindow1" style="font-size: 12px;">
    <tr>
    	<th>编号</th>
    	<th>区部</th>
    	<th>分部</th>
    	<th>分部经理</th>
    	<th>联系电话</th>
    	<th>分拨点</th>
    	<th>摄像头</th>
    	<th>硬盘数</th>
    	<th>硬盘容量</th>
    	<th>监控账号</th>
    	<th>监控密码</th>
    	<th>显示器</th>
    	<th>监控主机</th>
    	<th>主机型号</th>
    	<th>监控总接口数</th>
    	<th>监控主机使用时间</th>
    	<th>使用年限</th>
    	<th>是否可报废</th>
    	<th>录像周期（天）</th>
    	<th>备注说明</th>
    	<th>状态</th>
    	<th>操作</th>
    </tr>
    <c:forEach items="${ms}" var="m">
    <tr>
		<td width="">${m.MId }</td>
		<td width="">${m.fbd.fb.qb.qbName }</td>
		<td width="">${m.fbd.fb.fbName }</td>
		<td width="">${m.fbd.fb.fbMaster }</td>
		<td width="">${m.fbd.fb.fbPhonePrivate }</td>
		<td width="">${m.fbd.fbdName }</td>
		<td width="">${m.MCamera }</td>
		<td width="">${m.MDisk }</td>
		<td width="">${m.MDiskCapacity }</td>
		<td width="">${m.MNum }</td>
		<td width="">${m.MPass }</td>
		<td width="">${m.MDisplayer }</td>
		<td width="">${m.MMainframeBrand }</td>
		<td width="">${m.MMainframeNumber }</td>
		<td width="">${m.MInterface }</td>
		<td width=""><fmt:formatDate value="${m.MTimeStart }" pattern="yyyy/M/d" /></td>
		<td width="">${m.MUsedYear }</td>
		<td width="">${m.MScrap }</td>
		<td width="">${m.MPeriod }</td>
		<td width="">${m.MNote }</td>
		<td width="">${m.MState }</td>
		<td width="5%" align="center">
			<a onclick="update('${m.MId }','${m.fbd.fbdId }','${m.MCamera }','${m.MDisk }','${m.MDiskCapacity }','${m.MNum }','${m.MPass }','${m.MDisplayer }','${m.MMainframeBrand }','${m.MMainframeNumber }','${m.MInterface }','${m.MTimeStart }','${m.MUsedYear }','${m.MScrap }','${m.MPeriod }','${m.MNote }','${m.MState }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
			<a href="<%=path %>/fbd_m!deleteM?id=${m.MId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
		</td>
    </tr>
    </c:forEach>
    </table>
	</div>
	<br/>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/fbd_m!queryOfFenyeM?id=${id }&fbdName=${fbdName }&MNum=${MNum }&MScrap=${MScrap }&MState=${MState }" method="post">
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
		<form action="<%=path %>/fbd_m!updateM" method="post">
		<table border="0" class="table1">
			<tr>
				<td>编号</td>
				<td>
					<input id="u_1" name="m.MId" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>分拨点：</td>
				<td>
					<select id="u_2" name="m.fbdId">
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
				<td>摄像头数量：</td>
				<td>
					<input id="u_3" name="m.MCamera" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘数：</td>
				<td>
					<input id="u_4" name="m.MDisk" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘容量：</td>
				<td>
					<input id="u_5" name="m.MDiskCapacity" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控账号：</td>
				<td>
					<input id="u_6" name="m.MNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控密码：</td>
				<td>
					<input id="u_7" name="m.MPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器数量：</td>
				<td>
					<input id="u_8" name="m.MDisplayer" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机（品牌）：</td>
				<td>
					<input id="u_9" name="m.MMainframeBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机型号：</td>
				<td>
					<input id="u_10" name="m.MMainframeNumber" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控总接口数：</td>
				<td>
					<input id="u_11" name="m.MInterface" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机开始使用时间：</td>
				<td>
					<input id="u_12" name="m.MTimeStart" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>使用年限：</td>
				<td>
					<input id="u_13" name="m.MUsedYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input id="u_14" name="m.MScrap" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控周期（天数）：</td>
				<td>
					<input id="u_15" name="m.MPeriod" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input id="u_16" name="m.MNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input id="u_17" name="m.MState" type="text" style="width: 100%;"/>
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
		<form action="<%=path %>/fbd_m!addM" method="post">
		<table border="0" class="table1">
			<tr>
				<td>分拨点：</td>
				<td>
					<select name="m.fbdId">
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
				<td>摄像头数量：</td>
				<td>
					<input name="m.MCamera" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘数：</td>
				<td>
					<input name="m.MDisk" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>硬盘容量：</td>
				<td>
					<input name="m.MDiskCapacity" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控账号：</td>
				<td>
					<input name="m.MNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控密码：</td>
				<td>
					<input name="m.MPass" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>显示器数量：</td>
				<td>
					<input name="m.MDisplayer" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机（品牌）：</td>
				<td>
					<input name="m.MMainframeBrand" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机型号：</td>
				<td>
					<input name="m.MMainframeNumber" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控总接口数：</td>
				<td>
					<input name="m.MInterface" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>主机开始使用时间：</td>
				<td>
					<input name="m.MTimeStart" type="date" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>使用年限：</td>
				<td>
					<input name="m.MUsedYear" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>是否可报废：</td>
				<td>
					<input name="m.MScrap" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>监控周期（天数）：</td>
				<td>
					<input name="m.MPeriod" type="number" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注说明：</td>
				<td>
					<input name="m.MNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<input name="m.MState" type="text" style="width: 100%;"/>
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
