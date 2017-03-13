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
    
    <title>后台管理员聊天室</title>
    
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
var i=0;
var ks=0;
function startTime(){
	var bb=$("#kjfs").val();
	var sc=parseInt(bb);
	var cc=sc+1;
	$("#kjfs").val(cc);

    if(cc%2!=0){
         $.getJSON("/peiyin//newxsajax.action",function(data){
	        var pin=parseInt(data.count);
	        if(i==0){
	           $("#neconts").val(data.count);
	           i++;
	        }
	        var nn=$("#neconts").val();
	        if(nn!=data.count){
	           loadajaxdo();
	        }
	        
	        $("#neconts").val(pin);
	       
	     });
    }
    if(cc%2==0){
        $.getJSON("/peiyin//clikemessge.action",function(data){
          if(ks==0){
	           $("#jilushu").val(data.clikcount);
	           ks++;
	        }
           var newscou=$("#jilushu").val();
	        if(newscou!=data.clikcount){
	            ajaxfindload();
	        }

	         $("#jilushu").val(data.clikcount);
	     });
    }
    
    setTimeout('startTime()',1000); 	
}


$(document).keydown(function(event){ 
if (event.ctrlKey && event.which == 13){
cadminservice();
$(".froala-element").html("<p><br></p>");
}
});
</script>  
  
  
  
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
body{
color: #4d4d4d;
            font: 14px/1.4em 'Helvetica Neue', Helvetica, 'Microsoft Yahei', Arial, sans-serif;
            background: #f5f5f5 url('images/bg.jpg') no-repeat center;
            background-size: cover;
            font-smoothing: antialiased;}
</style>

</head>
<body onload="startTime()">
<input id="jilushu" type="hidden" value="0"/>


<input id="kjfs" type="hidden" value="0"/>
<input id="neconts" type="hidden" value="0"/>

<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>
<div id="vorc_hard" style="height: 500px;">

<div id="seiverliatot">
  <div id="zaixyonghu1">
     <div id="usercount1">
      
      <s:if test="#session.adminInfo.aisadPortrait==null">
        <div id="userzhi1"><img src="images/kefudianh.png" width="110" height="110"/></div>
      </s:if>
      <s:if test="#session.adminInfo.aisadPortrait!=null">
        <div id="userzhi1"><img src="upload/admin/${ads.aisadPortrait }" width="110" height="110"/></div>
      </s:if> 
        
        <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">我的账号:${ads.aisadmName}</samp></div>
        <div id="userzhi2"><samp style="font-size:12px; line-height:30px;">我的身份:客服人员</samp></div>
     </div>
     <div id="usercount2"><samp style="font-size:16px; line-height:30px; font-weight:bold; color:#333;">用户消息列表<samp id="yhsl">${mscn.totalCount}</samp></samp></div>
     
     <div id="usercount3">
     
    <c:forEach items="${msd.items}" var="m">
         <div id="userslist" onclick="newsusers(this,'${m.messagesender}');">
           <div id="userids1">
             <div id="ltouxians1">
                 <img src="${m.mspareer }" width="60" height="60"/>
             </div>
             <div id="ltouxians2">
                <div id="flwosn1"><samp style=" font-size:12px; line-height:25px; color:#666;">&nbsp;待查看消息：<samp style="font-weight:bold; font-size:16px; color:red;">${m.mcount}</samp></samp></div>
                <div id="flwosn2"><samp style=" font-size:14px; line-height:25px; color:#666;">&nbsp;ID:<samp style="font-weight:bold; font-size:14px; color:red;">${m.messagesender}</samp></samp></div>
             </div>
           </div>
           <div id="userids2"><samp style=" font-size:12px; "><samp style="font-weight:bold; font-size:16px; color:red;">
       ${m.messagesender}<samp style="font-size:12px;">&nbsp;
       <c:if test="${fn:substring(m.mrole,0,1)=='Y'}">
       (游客)
       </c:if>
       <c:if test="${fn:substring(m.mrole,0,1)!='Y'}">
       ${m.mrole}
       </c:if>
       </samp>
           </samp></samp></div>
           <div style="border:0px solid red; width: 20px; height: 20px; position:relative; right: -180px; top: -16px; font-weight: bold;color: #333;"><a style="color: #333;" href="deletnews.action?umesName=${m.messagesender}">×</a></div>
         </div>
     </c:forEach>
       

         
     
     </div>
     
  </div>
  <div id="zaixyonghu2">
     <div id="sysdinds1"><samp style="font-size:20px; line-height:40px; font-weight:bold; color:#F60;">您正在与<samp id="usersdd">(无)</samp>进行对话</samp></div>
     <div id="sysdinds2">
          
          
        <div style="margin-left: 275px;" id="ckgdss"></div>
        <div id="newslists">
        
        
         <%-- <div id="newsjilu" style="float:right;">
            <div id="news1" style="float:right;"><img src="htgl/froala_editor/images/toux1.png" width="50" height="50"/></div>
            <div id="news3" style="float:right;">
            <a id='calos' href="javaSrict:;" style=" text-decoration:none;"><div id="deletes1">
              <div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style="font-size:12px; color:#666;">2016-10-21 17:33:55</samp></div>
            <div id="news2" style="float:right; margin-right:2px;"><div id="mansessfd"><samp id="xizyssl">您好!请问有什么可以帮助您?</samp></div></div>
         </div> --%>
         
         
         
         
         
         
         
         </div>  
     
     </div>
     <div id="sysdinds3">
        <section id="editor" style="border:#A0A0A4;">
          <div id='edit'>
          </div>
        </section>
        <input type="hidden" id="admyema" value="0"/>
        <div id="fasongx" style="text-align:center;">
           <a href="javaScript:cadminservice();"><div style="margin-right:6px;" id="fssubmt"><samp style="line-height:26px; font-size:14px; font-weight:bold; color:#7F0000;">发送(Enter+Ctrl)</samp></div></a>
           <a href="#"><div style="float:left; margin-left: -5px;" id="fssubmt"><samp style="line-height:26px; font-size:16px; font-weight:bold; color:#7F0000;">返回主页</samp></div></a>
           
        </div>
     </div>
  </div>
</div>
  
  
</body>
</html>
