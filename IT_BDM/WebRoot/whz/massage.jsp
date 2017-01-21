<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zs.tools.Constant"%>
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
    
    <title>网点巴枪维护登记</title>
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
	function trans_radio(str){
		if (str=="是") {
			return 0;
		}else if (str=="否") {
			return 1;
		}
	}
	function update(u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
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
	function getTimeliness(mid){
		$("#tls").window('open');
		$.post(
			"<%=path%>/massage!queryTime",
			{"mid":mid},
			function(data){
				var hint=$("#tls_hint");
				console.log(data);
				console.log(hint.html());
				if(data=="null"){
					hint.html("<center style='color: red;'>数据不全，还无法计算出</center>");
				}else{
					var json = eval('(' + data + ')'); 
					$("#tls_1").val(json.MId);
					$("#tls_2").val(json.TNetPoint);
					$("#tls_3").val(json.TIt);
					$("#tls_4").val(json.TFinance);
					$("#tls_5").val(json.TFacilitator);
					$("#tls_6").val(json.TAmount);
					$("#tls_7").val(json.TResortDate);
				}
			}
		);
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
    
    <div class="easyui-panel" title="巴枪维护登记" style="width:100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
    <div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/massage!queryOfFenye" method="post">
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
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				设备类型:<input name="type" type="text" value="${type }"/>
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
	    	<th width="130px">编号</th>
	    	<th>接收IT</th>
	    	<th>接收日期</th>
	    	<th>设备类型</th>
	    	<th>网点名称</th>
	    	<th>网点条码</th>
	    	<th>SN号</th>
	    	<th>SIM卡序号</th>
	    	<th>故障类型</th>
	    	<th>故障描述</th>
	    	<th>送修单号</th>
	    	<th>备注</th>
	    	<th width="120">操作</th>
	    </tr>
	    <c:forEach items="${massages}" var="m">
	    <tr>
			<td width="">${m.MId }</td>
			<td width="">${m.MIt }</td>
			<td width=""><fmt:formatDate value="${m.MDate }" pattern="yyyy-MM-dd" /></td>
			<td width="">${m.MType }</td>
			<td width="">${m.MName }</td>
			<td width="">${m.MNum }</td>
			<td width="">${m.MSn }</td>
			<td width="">${m.MSim }</td>
			<td width="">${m.MHitchType }</td>
			<td width="">${m.MHitchNote }</td>
			<td width="">${m.EId }</td>
			<td width="">${m.MNote }</td>
			<td style="" align="center">
				<a href="<%=path %>/exp!queryOfFenye?id=${m.EId}&idlike=no" class="easyui-linkbutton" data-options="plain:true">送修单号</a>
				<a href="<%=path %>/bqDraw!queryOfFenye?id=${m.MId}&idlike=no" class="easyui-linkbutton" data-options="plain:true">巴枪领取</a>
				<a onclick="getTimeliness('${m.MId}')" class="easyui-linkbutton" data-options="plain:true">查看时效</a>
				<a onclick="update('${m.MId }','${m.MIt }','<fmt:formatDate value="${m.MDate }" pattern="yyyy-MM-dd" />','${m.MType }','${m.MName }',
				'${m.MNum }','${m.MSn}','${m.MSim }','${m.MHitchType }','${m.MHitchNote }','${m.EId }','${m.MNote }','${m.MCreateDatetime }')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'" title="修改"></a>
				<a href="<%=path %>/massage!delete?id=${m.MId}" onclick="return confirm('确定删除吗?')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-delete'" title="删除"></a>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;">
		<form id="f1" action="<%=path %>/massage!queryOfFenye?id=${id}&sn=${type }&dates=${dates}&datee=${datee}" method="post">
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
	
	<div id="u" class="easyui-window" title="修改" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/massage!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">编号：</td>
				<td>
					<input id="u_1" name="massage.MId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>接收IT：</td>
				<td>
					<input id="u_2" name="massage.MIt" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>接收日期：</td>
				<td>
					<input id="u_3" name="massage.MDate" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>设备类型：</td>
				<td>
					<input id="u_4" name="massage.MType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点名称：</td>
				<td>
					<input id="u_5" name="massage.MName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点条码：</td>
				<td>
					<input id="u_6" name="massage.MNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>SN号：</td>
				<td>
					<input id="u_7" name="massage.MSn" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>SIM卡序号：</td>
				<td>
					<input id="u_8" name="massage.MSim" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障类型：</td>
				<td>
					<input id="u_9" name="massage.MHitchType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障描述：</td>
				<td>
					<input id="u_10" name="massage.MHitchNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>送修单号：</td>
				<td>
					<input id="u_11" name="massage.EId" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input id="u_12" name="massage.MNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr style="display: none;">
				<td>用于排序：</td>
				<td>
					<input id="u_13" name="massage.MCreateDatetime" type="text" style="width: 100%;"/>
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
	
	<div id="a" class="easyui-window" title="添加" data-options="modal:true,closed:true" style="width:500px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/massage!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="120">接收日期：</td>
				<td>
					<input name="massage.MDate" type="text" style="width: 100%;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate"/>
				</td>
			</tr>
			<tr>
				<td>设备类型：</td>
				<td>
					<input name="massage.MType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点名称：</td>
				<td>
					<input name="massage.MName" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>网点条码：</td>
				<td>
					<input name="massage.MNum" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>SN号：</td>
				<td>
					<input name="massage.MSn" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>SIM卡序号：</td>
				<td>
					<input name="massage.MSim" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障类型：</td>
				<td>
					<input name="massage.MHitchType" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障描述：</td>
				<td>
					<input name="massage.MHitchNote" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>送修单号：</td>
				<td>
					<input name="massage.EId" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>
					<input name="massage.MNote" type="text" style="width: 100%;"/>
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
		<form id="ff" action="<%=path %>/massage!importExcel" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Excel模板</td>
				<td onmousemove="$(this).css('background-color','red');" onmouseout="$(this).css('background-color','white');" style="cursor: pointer;" onclick="window.location.href='<%=path%>/files/import/whz/网点巴枪维修接收 .xlsx';">
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
	
	<div id="tls" class="easyui-window" title="查看时效" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;overflow-x:hidden;">
		<table border="1">
			<tr>
				<td>接收表ID</td>
				<td>
					<input id="tls_1" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>网点时效</td>
				<td>
					<input id="tls_2" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>IT时效</td>
				<td>
					<input id="tls_3" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>财务时效</td>
				<td>
					<input id="tls_4" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>服务商时效</td>
				<td>
					<input id="tls_5" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>总时效</td>
				<td>
					<input id="tls_6" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>滞留时间</td>
				<td>
					<input id="tls_7" type="text" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="tls_hint"></div>
				</td>
			</tr>
		</table>
	</div>
	
	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
