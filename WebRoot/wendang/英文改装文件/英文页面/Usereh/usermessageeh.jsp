<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>您正在与用户客服人员进行对话</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<html>
<style type="text/css" media="screen">
#calos{
color: #690;}
#deletes1:hover{
	border:2px solid #FFF;
	color:#F60;}
#deletes:hover{
	border:2px solid #FFF;
	color:#F60;}	
#mansessfd{float: right; margin-right: 10px;}	
</style>
<head>
  <link href="htgl/froala_editor/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="htgl/froala_editor/css/froala_editor.min.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="htgl/froala_editor/js/actionews.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/libs/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/froala_editor.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/tables.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/lists.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/colors.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/media_manager.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/font_size.min.js"></script>
  <script type="text/javascript" src="htgl/froala_editor/js/plugins/video.min.js"></script>

  <script type="text/javascript">
      $(function(){
          $('#edit').editable({inlineMode: false, alwaysBlank: true});
      });
  </script>

<script type="text/javascript">
function startTime(){
	var bb=$("#kjfs").val();
	var sc=parseInt(bb);
	var cc=sc+1;
	$("#kjfs").val(cc);
	 //alert("fsf");
	        var usernames=$("#usernanems").val();
    	    var ykeuy=$("#yknames").val();
    	    var usernamesddt="";
    	    if(usernames==""){
    	    	usernamesddt=ykeuy;
    	    }else{
    	    	usernamesddt=usernames;
    	    }
    if(cc%2!=0){
         $.getJSON("/peiyin//newsajax.action",{"usercoms":usernamesddt},function(data){
	        var pin=parseInt(data.conts);
	        var neconts=$("#newscont").val();
	        if(pin!=neconts){
	           funcitonstoajax();
	        }
	     });
    }
    setTimeout('startTime()',1000); 	
}


</script>
</head>
<body onload="startTime()"> 

<input id="kjfs" type="hidden" value="0"/>
<input id="newscont" type="hidden" value="0"/>

<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>
<div id="vorc_hard" style="height: 500px;">

<div id="seiverliatot">
  <div id="zaixyonghu1">
     <div id="usercount1" style="border:0px solid red;">
        <s:if test="#session.users==null">
        <div id="userzhi1"><img style="margin-left: -10px; margin-top: -10px;" src="images/touxd.png" width="130" height="130"/></div>
        </s:if>
        
        <s:if test="#session.users!=null">
        <div id="userzhi1"><img src="upload/${users.iportrait}" width="110" height="110"/></div>
        </s:if>

        <s:if test="#session.users==null">
        <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">account number:${username }</samp></div>
        <%-- <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">Character:${username }</samp></div> --%>
        <div id="userzhi2"><a href="indexpage!logincon" style="color: red; text-decoration: none;" target="_blank"><samp style="font-size:14px; line-height:30px;">log in immediately</samp></a></div>
        </s:if>
        <s:if test="#session.users!=null">
        <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">account number:<samp id="usersNamesids" style="font-size:14px; color:red;">${users.iuserName}</samp></samp></div>
        <%-- <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">Character:${users.dtype.dtypeName}</samp></div> --%>
        </s:if>
        
        <input type="hidden" id="yknames" value="${username}"/>
        <input type="hidden" id="usernanems" value="${users.iuserName}"/>
        <input type="hidden" id="yema" value="0"/>
        
     </div>
     <!-- <div id="usercount2"><samp style="font-size:16px; line-height:30px; font-weight:bold; color:#333;"></samp></div> -->
     
     
  </div>
  <div id="zaixyonghu2">
     <div id="sysdinds1"><samp style="font-size:20px; line-height:40px; font-weight:bold; color:#333;">您正在与客服人员进行对话</samp></div>
        
     <div id="sysdinds2">
          <div style="margin-left: 275px;" id="ckgdss"></div>
        <div id="newslists">
        
        
         <div id="newsjilu" style="float:right;">
            <div id="news1" style="float:right;"><img src="htgl/froala_editor/images/toux1.png" width="50" height="50"/></div>
            <div id="news3" style="float:right;">
            <a id='calos' href="javaSrict:;" style=" text-decoration:none;"><div id="deletes1">
              <div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style="font-size:12px; color:#666;">2016-10-21 17:33:55</samp></div>
            <div id="news2" style="float:right; margin-right:2px;"><div id="mansess"><samp id="xizyssl">您好!请问有什么可以帮助您?</samp></div></div>
         </div>
         
         
         
         
         
         
         
         </div>  
     </div>
     <div id="sysdinds3">
        <section id="editor" style="border:#A0A0A4;">
          <div id='edit'>
          </div>
        </section>
        <div id="fasongx" style="text-align:center;">
           <a href="javaScript:funcitonsto();"><div style="margin-right:-4px;" id="fssubmt"><samp style="line-height:26px; font-size:16px; font-weight:bold; color:#7F0000;">发送</samp></div></a>
           <a href="#"><div style="float:left;" id="fssubmt"><samp style="line-height:26px; font-size:16px; font-weight:bold; color:#7F0000;">返回主页</samp></div></a>
           <a href="javaScript:;"><div style="float:left; width:150px;" id="fssubmt"><samp style="line-height:26px; font-size:16px; font-weight:bold; color:#7F0000;">清空聊天记录</samp></div></div></a>
        </div>
     </div>
  </div>
</div>
  
  
</body>
</html>
