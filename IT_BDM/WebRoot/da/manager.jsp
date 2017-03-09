<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String beforeTime= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>故障管理</title>
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
		$("#type_sel option[value='${type}']").attr("selected",true);
		$("#sele option[value='"+${page.size}+"']").attr("selected",true);
		$("#eidtASubjectWindow1").show();
		$('#tt').show();
	});
	
	function update(u1,u2,u3,u4,u5,u6){
		$('#u').window('open');
		$('#u_1').val(u1);
		$('#u_2').val(u2);
		$('#u_3').val(u3);
		$('#u_4').val(u4);
		$('#u_5').val(u5);
		$('#u_6').val(u6);
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
	<script type="text/javascript">
	
	function queryDetails(status) {
		console.log( ${json}[status].demand.DId );
		/*
		*/
		var table1="<table border=\"1\" class=\"table1\">";
		table1=table1+
		"<tr><td width='90'>编号：</td><td>"+${json}[status].demand.DId+"</td></tr>"+
		"<tr><td>发起人：</td><td>"+${json}[status].demand.DApplicant+"</td></tr>"+
		"<tr><td>故障描述：</td><td>"+${json}[status].demand.DContent+"</td></tr>"+
		"<tr><td>故障类型：</td><td>"+${json}[status].demand.DType+"</td></tr>"+
		"<tr><td>创建时间：</td><td>"+${json}[status].demand.DTimeString+"</td></tr>"+
		"<tr><td>超时时间：</td><td>"+${json}[status].demand.DTimeExpectString+"</td></tr>";
		table1=table1+"</table>";
		table1=table1+"<table border=\"1\" style=\"font-size: 12px;margin-top: 10px;\">";
		table1=table1+
		"<tr><th width='50'>处理人</th><th width='52'>处理状态</th><th width='150'>最后处理时间</th><th width='80'>故障原因</th>";
		table1=table1+"<th width='80'>处理描述</th><th width='52'>被转发人</th><th width='80'>备注</th></tr>";
		for ( var i = 0; i < ${json}[status].performs.length; i++) {
			table1=table1+"<tr>"+
			"<td>"+${json}[status].performs[i].UName+"</td>"+
			"<td>"+${json}[status].performs[i].PState+"</td>"+
			"<td>"+${json}[status].performs[i].PTimeString+"</td>"+
			"<td>"+${json}[status].performs[i].PReason+"</td>"+
			"<td>"+${json}[status].performs[i].PDesc+"</td>"+
			"<td>"+${json}[status].performs[i].UNameNext+"</td>"+
			"<td>"+${json}[status].performs[i].PNote+"</td></tr>";
		}
		table1=table1+"</table>";
		$("#q").html(table1);
		$("#q").window('open');
	}
	function forward(u1,u2,u3,u4,u5,u6,u7) {
		if(u7=="进行中"){
			$('#u').window('open');
			$('#u_1').val(u1);
			$('#u_2').val(u2);
			$('#u_3').val(u3);
			$('#u_4').val(u4);
			$('#u_5').val(u5);
			$('#u_6').val(u6);
		}else{
			var errcon="<div style="+"text-align:center;font-size:18px;padding-top:55px;font-family:微软雅黑"+">当前状态下不能执行此操作</div>";
			$("#err").html(errcon);
			$("#err").window('open');	
		}
	}
	/*以下是自动设置超时时间为今天的18点，张顺，2016-11-3
	*/
	// 对Date的扩展，将 Date 转化为指定格式的String
	// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
	// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
	// 例子： 
	// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
	// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
	Date.prototype.Format = function (fmt) { //author: meizz 
	    var o = {
	        "M+": this.getMonth() + 1, //月份 
	        "d+": this.getDate(), //日 
	        "H+": this.getHours(), //小时 
	        "m+": this.getMinutes(), //分 
	        "s+": this.getSeconds(), //秒 
	        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
	        "S": this.getMilliseconds() //毫秒 
	    };
	    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	    for (var k in o)
	    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	    return fmt;
	}
	function defualtOutTime(){
		var foundTime = new Date().Format("yyyy-MM-dd HH:mm:ss");
		$('#found_time').val(foundTime);
		
		var time = new Date().Format("yyyy-MM-dd");
		time=time+" 18:00:00";
		//console.log(time);
		$('#out_time').val(time);
	}
	</script>
  </head>
  
  <body>
    
    <div class="easyui-panel" title="故障管理" style="width:100%;padding: 5px;display: none;" data-options="tools:'#tt'">
    
   	<div class="kscx">
   		<div class="inp">
	    	<form id="ks" action="<%=path %>/daManager!queryOfFenye" method="post">
	    		<div>
		    		<div>
			    		创建开始日期：<input name="dates" id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')}'})" value="${dates }"/>
		    		</div>
		    		<div>
		    			创建结束日期：<input name="datee" id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}'})" value="${datee }"/>
		    		</div>
	    		</div>
	    		<div>
		    		<div>
			    		编号:<input name="id" type="text" value="${id }"/>
		    		</div>
	    			<div>
	    				故障类型:
	    				<select id="type_sel" name="type">
						  <option value="">--请选择类型--</option>
						  <optgroup label="网络电脑类">
						  	<option value ="网络">网络</option>
						    <option value ="电脑-硬件">电脑-硬件</option>
						    <option value ="电脑-系统">电脑-系统</option>
						  </optgroup>
						  <optgroup label="设备-监控">
						  	<option value ="服务器">服务器</option>
						  	<option value ="机房辅助设备">机房辅助设备</option>
						  	<option value ="监控-硬件 ">监控-硬件 </option>
						  	<option value ="监控-系统">监控-系统</option>
						  	<option value ="监控-网络">监控-网络</option>
						  	<option value ="操作设备-巴枪">操作设备-巴枪 </option>
						  	<option value ="操作设备-电子秤">操作设备-电子秤</option>
						  	<option value ="二维码打印机">二维码打印机 </option>
						  </optgroup>
						  <optgroup label="周边设备">
						    <option value ="周边设备-打印机">周边设备-打印机</option>
						    <option value ="周边设备-扫描仪">周边设备-扫描仪</option>
						    <option value ="周边设备-投影仪">周边设备-投影仪</option>
						    <option value ="周边设备-交换机">周边设备-交换机</option>
						    <option value ="周边设备-无线">周边设备-无线 </option>
						    <option value ="周边设备-电话机">周边设备-电话机</option>
						  </optgroup>
						  <optgroup label="应用系统">
						  	<option value ="应用系统-OA">应用系统-OA</option>
						  	<option value ="应用系统-E7">应用系统-E7</option>
						  	<option value ="应用系统-K3">应用系统-K3</option>
						  	<option value ="应用系统-钉钉">应用系统-钉钉</option>
						  	<option value ="应用系统-邮箱">应用系统-邮箱</option>
						  	<option value ="应用系统-呼叫系统">应用系统-呼叫系统</option>
						  	<option value ="应用系统-短信平台">应用系统-短信平台</option>
						  </optgroup>
						  <optgroup label="韵达-哲盟">
						  	<option value ="哲盟-故障">哲盟-故障</option>
						  	<option value ="哲盟-数据检查及维护">哲盟-数据检查及维护</option>
						  	<option value ="韵达系统-VPN">韵达系统-VPN</option>
						  	<option value ="韵达系统-企业微信">韵达系统-企业微信</option>
						  	<option value ="韵达系统-北斗">韵达系统-北斗</option>
						  	<option value ="韵达系统-网点客户端">韵达系统-网点客户端</option>
						  	<option value ="韵达系统-二维码客户端">韵达系统-二维码客户端</option>
						  </optgroup>
						</select>
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
	    <table border="1" style="font-size: 12px;">
	    <tr>
	    	<th width="150">编号</th>
	    	<th width="150">发起人</th>
	    	<th width="300">故障描述</th>
	    	<th width="90">故障类型</th>
	    	<th>创建时间</th>
	    	<th>当前处理人</th>
	    	<th>超时时间</th>
	    	<th>状态</th>
	    	<th width="160">操作</th>
	    </tr>
	    <c:forEach items="${demPers}" var="dp" varStatus="status">
	    <tr>
	    	<td>${dp.demand.DId }</td>
	    	<td>${dp.demand.DApplicant }</td>
	    	<td>${dp.demand.DContent }</td>
	    	<td>${dp.demand.DType }</td>
	    	<td>${dp.demand.DTime }</td>
	    	<td>${dp.performs[0].UName }</td>
	    	<td>${dp.demand.DTimeExpect }</td>
	    	<td>${dp.performs[0].PState }</td>
	    	<td style="text-align: left;padding-left: 15px;">
				<a onclick="forward('${dp.demand.DId }','${dp.demand.DApplicant }','${dp.demand.DContent }','${dp.demand.DType }','${dp.demand.DTime }','${dp.performs[0].UName }','${dp.performs[0].PState }')" class="easyui-linkbutton" title="转发" data-options="plain:true">转发</a>
				<a onclick="queryDetails('${status.index}')" class="easyui-linkbutton" title="查看详情" data-options="plain:true">查看详情</a>
				<c:if test="${dp.demand.outTime==1}">
					<a class="easyui-linkbutton" href="<%=path %>/daManager!addTimeOut?timeId=${dp.demand.DId }" title="增加超时加一天" data-options="plain:true">加一天</a>
				</c:if>
			</td>
	    </tr>
	    </c:forEach>
	    </table>
	</div>
	
	<div class="easyui-panel" style="padding:5px;width: 100%;display: none;background-color: white;">
		<form id="f1" action="<%=path %>/daManager!queryOfFenye?id=${id}&type=${type}&dates=${dates}&datee=${datee}" method="post">
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
	
	<div id="u" class="easyui-window" title="转发" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/daManager!update" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="90">编号：</td>
				<td>
					<input id="u_1" name="d.DId" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>发起人：</td>
				<td>
					<input id="u_2" name="d.DApplicant" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>故障描述：</td>
				<td>
					<input id="u_3" name="d.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>故障处理组：</td>
				<td>
					<input id="u_4" name="d.DContent" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td>
					<input id="u_5" name="d.DTime" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>当前处理人：</td>
				<td>
					<input id="u_6" type="text" style="width: 100%;" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>被转发人：</td>
				<td>
					<select name="p.UNumNext">
						<c:forEach items="${listUsers}" var="us">
						<option value="${us.UNum }">${us.UName }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>转发备注：</td>
				<td>
					<input name="p.PNote" type="text" style="width: 100%;" value="客服直接转发"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit" style="width: 95%;padding: 5px;" value="提交" onclick="return show_hint(['u'])"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	   
	<div id="q" class="easyui-window" title="查看详情" data-options="modal:true,closed:true" style="width:680px;height:auto;padding:10px;display: none;top:210px;">
	</div>
	
	<div id="err" class="easyui-window" title="错误提示" data-options="modal:true,closed:true" style="width:300px;height:200px;padding:10px;display: none;">
	</div>
	
	<div id="a" class="easyui-window" title="故障录入" data-options="modal:true,closed:true" style="width:400px;height:auto;padding:10px;display: none;">
		<form action="<%=path %>/daManager!add" method="post">
		<table border="0" class="table1">
			<tr>
				<td width="90">发起人：</td>
				<td>
					<input name="d.DApplicant" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障描述：</td>
				<td>
					<input name="d.DContent" type="text" style="width: 100%;"/>
				</td>
			</tr>
			<tr>
				<td>故障类型：</td>
				<td>
					<select name="d.DType">
					  <optgroup label="网络电脑类">
					  	<option value ="网络">网络</option>
					    <option value ="电脑-硬件">电脑-硬件</option>
					    <option value ="电脑-系统">电脑-系统</option>
					  </optgroup>
					  <optgroup label="设备-监控">
					  	<option value ="服务器">服务器</option>
					  	<option value ="机房辅助设备">机房辅助设备</option>
					  	<option value ="监控-硬件 ">监控-硬件 </option>
					  	<option value ="监控-系统">监控-系统</option>
					  	<option value ="监控-网络">监控-网络</option>
					  	<option value ="操作设备-巴枪">操作设备-巴枪 </option>
					  	<option value ="操作设备-电子秤">操作设备-电子秤</option>
					  	<option value ="二维码打印机">二维码打印机 </option>
					  </optgroup>
					  <optgroup label="周边设备">
					    <option value ="周边设备-打印机">周边设备-打印机</option>
					    <option value ="周边设备-扫描仪">周边设备-扫描仪</option>
					    <option value ="周边设备-投影仪">周边设备-投影仪</option>
					    <option value ="周边设备-交换机">周边设备-交换机</option>
					    <option value ="周边设备-无线">周边设备-无线 </option>
					    <option value ="周边设备-电话机">周边设备-电话机</option>
					  </optgroup>
					  <optgroup label="应用系统">
					  	<option value ="应用系统-OA">应用系统-OA</option>
					  	<option value ="应用系统-E7">应用系统-E7</option>
					  	<option value ="应用系统-K3">应用系统-K3</option>
					  	<option value ="应用系统-钉钉">应用系统-钉钉</option>
					  	<option value ="应用系统-邮箱">应用系统-邮箱</option>
					  	<option value ="应用系统-呼叫系统">应用系统-呼叫系统</option>
					  	<option value ="应用系统-短信平台">应用系统-短信平台</option>
					  </optgroup>
					  <optgroup label="韵达-哲盟">
					  	<option value ="哲盟-故障">哲盟-故障</option>
					  	<option value ="哲盟-数据检查及维护">哲盟-数据检查及维护</option>
					  	<option value ="韵达系统-VPN">韵达系统-VPN</option>
					  	<option value ="韵达系统-企业微信">韵达系统-企业微信</option>
					  	<option value ="韵达系统-北斗">韵达系统-北斗</option>
					  	<option value ="韵达系统-网点客户端">韵达系统-网点客户端</option>
					  	<option value ="韵达系统-二维码客户端">韵达系统-二维码客户端</option>
					  </optgroup>
					</select>
				</td>
			</tr>
			<tr>
				<td>创建时间:</td>
				<td><input id="found_time" class="Wdate" name="d.DTime" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></td>
			</tr>
			<tr>
				<td>处理人：</td>
				<td>
					<select name="p.UNum">
						<c:forEach items="${listUsers}" var="us">
						<option value="${us.UNum }">${us.UName }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>超时时间:</td>
				<td><input id="out_time" class="Wdate" name="DTimeExpect" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'%y-%M-%d %H:%m:%s'})"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="easyui-linkbutton" type="submit" style="width: 95%;padding: 5px;" value="提交" onclick="return show_hint(['a'])"/>
				</td>			
			</tr>
		</table>
		</form>
	</div>
	
	<div id="tt" style="display: none;">
		<a class="icon-add" onclick="$('#a').window('open');defualtOutTime()" style="margin-left: 10px;" title="添加"></a>
	</div>
		

	<jsp:include page="../hintModal.jsp"/>
	
  </body>
</html>
