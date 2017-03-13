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
    
    <title>You are working with the customer service staff to conduct a dialogue</title>
    
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
body{
color: #4d4d4d;
            font: 14px/1.4em 'Helvetica Neue', Helvetica, 'Microsoft Yahei', Arial, sans-serif;
            background: #f5f5f5 url('images/bg.jpg') no-repeat center;
            background-size: cover;
            font-smoothing: antialiased;}
#calos{
color: #690;}

#deletes1:hover{
	border:0px solid #FFF;
	color:#F60;}
#deletes:hover{
	border:0px solid #FFF;
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
         // funcitonsto();
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


$(document).keydown(function(event){ 
if (event.ctrlKey && event.which == 13){
funcitonsto();
$(".froala-element").html("<p><br></p>");
}
}); 

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
     <div id="sysdinds1"><samp style="font-size:16px; line-height:40px; font-weight:bold; color:#333;">You are working with the customer service staff to conduct a dialogue</samp></div>
        
     <div id="sysdinds2">
          <div style="margin-left: 275px;" id="ckgdss"></div>
        <div id="newslists">
        
        
         <div id="newsjilu" style="float:right;">
            <div id="news1" style="float:right;"><img src="images/kefudianh.png" width="50" height="50"/></div>
            <div id="news3" style="float:right;">
            <a id='calos' href="javaSrict:;" style=" text-decoration:none;display: none;"><div id="deletes1">
              <div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style="font-size:12px; color:#666;">--</samp></div>
            <div id="news2" style="float:right; margin-right:2px;"><div id="mansess"><samp id="xizyssl">Hello! May I help you?</samp></div></div>
         </div>
         
         
         
         
         
         
         
         </div>  
     </div>
     <div id="sysdinds3">
        <section id="editor" style="border:#A0A0A4;">
          <div id='edit'>
          </div>
        </section>
        <div id="fasongx" style="text-align:center;">
           <a href="javaScript:funcitonsto();"><div style="margin-right:6px;width:150px;" id="fssubmt"><samp style="line-height:26px; font-size:12px; font-weight:bold; color:#7F0000;">Send out<samp style="font-size:12px;">(Enter+Ctrl)</samp></samp></div></a>
           <a href="indexenglish.action"><div style="float:left;margin-left: -5px;" id="fssubmt"><samp style="line-height:26px; font-size:16px; font-weight:bold; color:#7F0000;">Home</samp></div></a>
          
        </div>
     </div>
  </div>
</div>
  
  
</body>
</html>
