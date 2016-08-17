<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcom.jsp' starting page</title>
    
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
	
	<script>
	$(function(){
		var index = 0;
		var t = $('#tt');
		var tabs = t.tabs('tabs');
		setInterval(function(){
			t.tabs('select', tabs[index].panel('options').title);
			index++;
			if (index >= tabs.length){
				index = 0;
			}
		}, 1000);
	});
	</script>
	
  </head>
  
  <body style="padding: 6px;">
  	<div class="easyui-layout" data-options="border:false" style="width: 100%;height: 100%;">
  	
  		<div data-options="region:'west',split:true,border:false" style="width:50%;">
  			<div class="easyui-layout" data-options="fit:true,border:false">
  				<div class="easyui-layout" data-options="fit:true,border:false">
  					<div data-options="region:'north',split:true" title="欢迎语" style="height:50%;padding:5px">
  						<div style="color:#FF6600;font-size: 26px;font-family: 隶书;">欢迎使用IT基础数据管理系统!</div>
  					</div>
  					<div data-options="region:'center',split:true" title="公告" style="height:50%;padding:5px">
						

		        	<marquee behavior="scroll" direction="up" loop="-1" scrollamount="1" scrolldelay="1" style="font:16px;width: 100%;height: 100%;" onMouseOver="this.stop();" onMouseOut="this.start();">
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		滚动字幕内容><br/>
		        		
	        		</marquee>
					        
					        

					</div>
  				</div>
  			</div>
  		</div>
  		
  		<div data-options="region:'center',split:true,border:false" style="width:50%;">
			<div class="easyui-layout" data-options="fit:true,border:false">
  				<div class="easyui-layout" data-options="fit:true,border:false">
  					<div data-options="region:'north',split:true" title="新闻" style="height:50%;padding:5px">
  						
  						<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
							<div title="Shirt1" style="padding:20px;">
								<img src="FRAMEWORK/image/bag6.png">
							</div>
							<div title="Shirt2" style="padding:20px;">
								<img src="FRAMEWORK/image/bag1.png">
							</div>
							<div title="Shirt3" style="padding:20px;">
								<img src="FRAMEWORK/image/bag2.png">
							</div>
							<div title="Shirt4" style="padding:20px;">
								<img src="FRAMEWORK/image/bag3.png">
							</div>
							<div title="Shirt5" style="padding:20px;">
								<img src="FRAMEWORK/image/bag4.png">
							</div>
						</div>
  						
  						
  					</div>
  					<div data-options="region:'center',split:true" title="签到" style="height:50%;padding:5px;">
						<div class="easyui-calendar" style="width:70%;height:100%;display: inline-block;"></div> 
					</div>
  				
  				</div>
  			
  			
  			</div>
		</div>
  	</div>
  </body>
</html>
