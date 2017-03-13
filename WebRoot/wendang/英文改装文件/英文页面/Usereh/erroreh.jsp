<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>404</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 
</head>
 <style>
.page404{width:745px; padding:190px 0;}
.page404 .cont404{width:745px; height:380px; background:url("images/404.gif") left top no-repeat; position:absolute; left:50%; top:50%; margin-left:-372px; margin-top:-190px;}
.page404 .cont404 a{position:absolute; border:3px solid #59A80D; font-size:18px; color:#59A80D; height:39px; line-height:39px; width:137px; text-align:center; font-family:"微软雅黑"; text-decoration:none}
.page404 .cont404 a:hover{border-color:#F35B18; color:#F35B18;}
.page404 .cont404 .return_home{bottom:0; right:208px;}
</style>
<body>
<div class="page404">
  <div class="cont404"> <a href="index.action" class="return_home">返回首页</a> </div>
</div>
</body>
</html>

