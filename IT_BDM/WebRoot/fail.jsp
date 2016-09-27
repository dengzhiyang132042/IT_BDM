<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
	<style type="text/css">
		span{
			display:block;
			margin:5px 0;
			font-size:18px;
		} 
		.table1{
			width:800px;
			font-size:18px;
		} 
		.tleft{
			text-align:left;
		} 
		.tright{
			text-align:right;
		}
	</style>
	
	
  </head>
  
  <body>
    失败. <br>
    
    <div style="font-family:微软雅黑;font-size:18px;">
		<div style="height:400px;">
			<span>Dear um.getUName()</span>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您收到有新的故障处理，请尽快解决！ 详情如下</span>
			<table class="table1" border="1"> 
				<tr> 
					<td class="tleft">
						编&nbsp;&nbsp; 号:
					</td>
					<td class="tright">
						d261528468743156
					</td>
					<td class="tleft">
						发起人:
					</td>
						<td class="tright">张顺
					</td>
				</tr> 
				<tr>
					<td class="tleft">
						故障类型:
					</td>
					<td class="tright">
						电脑
					</td>
					<td class="tleft">
						时&nbsp; 间:
					</td>
					<td class="tright">
						2016-10-12 
					</td>
				</tr> 
			</table>
			<span>故障描述:</span>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电脑蓝屏</span>
		</div>
		<br/>
		Best Wishes<br/>
		以流程为导向，以服务为宗旨。<br/>
		*****************************************************"
		<br/>信息与流程管理部-客服专员 &nbsp;某某某"
		<br/>深圳市韵达速递有限公司<br/>邮箱：某某某@szexpress.com.cn"
		<br/>地址：广东省深圳市龙华新区观澜大道114号（交警中队正对面）<br/>
		***************************************************<br/>
	</div>

    
    
  </body>
</html>
