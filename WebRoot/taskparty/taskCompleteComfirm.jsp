<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <base href="<%=basePath%>">
    
    <title>温馨提示</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
*{margin:0;padding:0;margin: auto;}
#thistis_icns{ width:100%; height:100%; border:0px solid red; background-color:#999;
position:fixed;
opacity:0.2;
}
#thistis_icnicns{
	width:500px;
	height:300px;
	border:2px solid #6C0;
	background-color:#FBFBFB;
	-moz-border-radius: 10px;      /* Gecko browsers */
    -webkit-border-radius: 10px;   /* Webkit browsers */
    border-radius:10px;
	position:relative;
	text-align:center;
	top:150px;}
#lsncs_olc1{width:500px;height:40px;border:0px solid #6C0;
    border-width:0px 0px 2px 0px;}
	
	
#lsncs_olc2{width:500px;height:200px;border:0px solid #6C0;
    border-width:0px 0px 2px 0px;}
#lsncs_olc3{width:500px;height:55px;border:0px solid #6C0;}
#dlnzhti{
	font-size:16px;
	color:#660;
	font-family:"微软雅黑";}
#tishtusl{width:30px;height:30px;border:2px solid red;
position:relative;
left:20px;
top:50px;
float:left;
-moz-border-radius: 100px;      /* Gecko browsers */
-webkit-border-radius: 100px;   /* Webkit browsers */
border-radius:100px;
}
#tishtuslxx{width:400px;height:130px;border:0px solid #6C0;
position:relative;
left:25px;
top:50px;
float:left;}	
.svege{
	float:left;
	margin-top:5px;
	font-size:18px;
	color:#F90;
	font-family:"微软雅黑";}
.sesscs{
	text-decoration:none;}	
#cnwlbann1{
	width:100px;
	background:#690;
	color:#FFF;
	border:0px;
	font-size:16px;
	height:28px;
	font-weight:bold;
	-moz-border-radius: 4px;      /* Gecko browsers */
    -webkit-border-radius: 4px;   /* Webkit browsers */
    border-radius:4px;
	margin-top:13px;
	float:right;
	margin-right:20px;
	}	
</style>
  <body>
   
<div id="thistis_icns">
</div>
<div id="thistis_icnicns">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="446" align="left"><span id="dlnzhti">温馨提示:</span></td>
      </tr>
    </table>
  </div>
  <div id="lsncs_olc2">
      <!--  <div id="tishtusl">
       <s:if test="nclsn!=2">
           <span style="font-weight:bold; font-size:28px; color:red;">×</span>
      </s:if>
      <s:if test="nclsn==2">
           <span style="font-weight:bold; font-size:28px; color:red;">√</span>
      </s:if>    
           </div> -->
      <div id="tishtuslxx">
         <!-- <span class="svege">资料已提交，赶快发布您的任务吧!</span> -->
         <span class="svege">任务已提交，请等待审核!</span>
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="/peiyin/btenlist"><input id="cnwlbann1" type="button" value="确定"/></a>
     <!--<a class="sesscs" href="/peiyin/voiceyindex"><input id="cnwlbann1" type="button" value="选择配音员"/></a> -->
  </div>
</div>
  </body>
</html>
