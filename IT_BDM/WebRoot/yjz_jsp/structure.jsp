<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/My97DatePicker/WdatePicker.js"></script>
	
	<script type="text/javascript" src="<%=path %>/FRAMEWORK/js/myjs.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/mycss.css">
  </head>
  
  <body>
	<ul id="tt" class="easyui-tree" data-options="animate:true,lines:true">
		<li><span><a href="<%=path%>/index!contacts" target="left">刷新</a></span></li>
        <li><span><a href="<%=path %>/section!gotoAdd" target="right">添加</a></span></li>
        <li><span>移动</span></li>
        <li>
            <span><a href="<%=path %>/section!queryOfFenyeQb?cz=yes" target="right">外部</a></span>
            <ul>
	        	<c:forEach items="${qbs}" var="qb">
   	                <li><span><a href="<%=path %>/section!queryOfFenyeQb?id=${qb.qbId}&cz=yes" target="right">${qb.qbName }</a></span>
	     	         	<ul>
	     	         	<c:forEach items="${qb.fbs}" var="fb">
	    			 		<li><span><a href="<%=path %>/section!queryOfFenyeFb?id=${ fb.fbId}&cz=yes" target="right">${fb.fbName }</a></span>
			       	     		<ul>
			       	     		<c:forEach items="${fb.fbds}" var="fbd">
			      		 			<li><span><a href="<%=path %>/section!queryOfFenyeFbd?id=${ fbd.fbdId}&cz=yes" target="right">${fbd.fbdName }</a></span></li>
			       	     		</c:forEach>
			       	     		</ul>
	    			 		</li>
	     	         	</c:forEach>
	     	         	</ul>
   	                </li>
	        	</c:forEach>
            </ul>
        </li>
        <li>
        	<span>内部</span>
       		<ul>
       			<c:forEach items="${cs1s}" var="cs1">
   	                <li><span><a href="<%=path %>/csection!queryCs1?id=${cs1.s1Id}" target="right">${cs1.s1Name }(${cs1.s1Master })</a></span>
	     	         	<ul>
	     	         	<c:forEach items="${cs1.nexts}" var="cs2">
	    			 		<li><span><a href="<%=path %>/csection!queryCs2?id=${cs2.s2Id}" target="right">${cs2.s2Name }(${cs2.s2Master })</a></span>
			       	     		<ul>
			       	     		<c:forEach items="${cs2.nexts}" var="cs3">
			      		 			<li><span><a href="<%=path %>/csection!queryCs3?id=${cs3.s3Id}" target="right">${cs3.s3Name }(${cs3.s3Master })</a></span>
			      		 				<ul>
											<c:forEach items="${cs3.nexts}" var="cs4">
											<li><span><a href="<%=path %>/csection!queryCs4?id=${cs4.s4Id}" target="right">${cs4.s4Name }(${cs4.s4Master })</a></span>
												<ul>
													<c:forEach items="${cs4.nexts}" var="cs5">
													<li><span><a href="<%=path %>/csection!queryCs5?id=${cs5.s5Id}" target="right">${cs5.s5Name }(${cs5.s5Master })</a></span>
														<ul>
															<c:forEach items="${cs5.nexts}" var="cs6">
															<li><span><a href="<%=path %>/csection!queryCs6?id=${cs6.s6Id}" target="right">${cs6.s6Name }(${cs6.s6Master })</a></span>
																<ul>
																	<c:forEach items="${cs6.nexts}" var="cs7">
																	<li><span><a href="<%=path %>/csection!queryCs7?id=${cs7.s7Id}" target="right">${cs7.s7Name }(${cs7.s7Master })</a></span>
																		<ul>
																			<c:forEach items="${cs7.nexts}" var="cs8">
																			<li><span><a href="<%=path %>/csection!queryCs8?id=${cs8.s8Id}" target="right">${cs8.s8Name }(${cs8.s8Master })</a></span>
																			
																			</li>
																			</c:forEach>			      		 				
											      		 				</ul>
																	</li>
																	</c:forEach>			      		 				
									      		 				</ul>
															</li>
															</c:forEach>			      		 				
							      		 				</ul>
													</li>
													</c:forEach>			      		 				
					      		 				</ul>	
											</li>
											</c:forEach>			      		 				
			      		 				</ul>
			      		 			</li>
			       	     		</c:forEach>
			       	     		</ul>
	    			 		</li>
	     	         	</c:forEach>
	     	         	</ul>
   	                </li>
	        	</c:forEach>
       		</ul>
       	</li>
    </ul>    
  </body>
</html>
