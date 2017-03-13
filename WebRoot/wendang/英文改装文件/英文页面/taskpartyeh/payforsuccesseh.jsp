<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>支付成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
   <script type="text/javascript" src="js/jquery-1.8.3.js"></script> 
  <script type="text/javascript" src="js/indexJS.js"></script>
  <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <link rel="stylesheet" href="css/lc_switch.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquerys.js"></script>
  <script type="text/javascript" src="js/lc_switch.js"></script>
  <script type="text/javascript" src="js/tishi.js"></script>
  <link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  <link rel="stylesheet" href="css-js-file/tijiaoyy.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
<link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  
  </head>
  <style type="text/css">
 .spinner2 .spinner-container {
	margin-top:-40px;
} 

</style>

<script type="text/javascript">
function startTime(){
	var bb=$("#kjfs").val();
	var sc=parseInt(bb);
	var cc=sc+1;
	$("#kjfs").val(cc);
    if(cc==10||cc==20){
       window.location.href="conJumptaskorder.action";
    }
	 var did=$(".dinslws").html();
	 var sdc=parseInt(did);
	if(cc<=10){
	    $(".dinslws").html(sdc-1);
	}
    setTimeout('startTime()',1000); 	
}


</script>

<body onload="startTime()">
  <div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>
<div id="vorc_hard" style="height: 500px;">
<!--T-->
<div id="head_syatel">
			<div id="head_logo_u1">
				<img id="logo_u" src="images/lougout.png" width="152" height="64"
					alt="LOGO" />
			</div>
			<div id="head_logo_u2">
				<div id="head_dh1">
					<ul id="head_ul_list" style="margin-right: 0px;">
						<li class="li_lasp" style="color: #690;">您好！</li>
						<li class="li_lasp">
						<s:if test="#session.users!=null">
						<a class="li_laspc_a"
							href="loginUsers!rupinuzy.action">${users.iuserName}</a>
						</s:if>	</li>
						<li class="li_lasp" style="color: #690;">欢迎来到本站</li>
						<li class="li_lasp" style="color: #690;">>>切换</li>
						<li class="li_lasp"><a class="li_laspc_a"
							href="indexenglish.action">English Version</a></li>
						<s:if test="#session.users==null">
							<li class="li_lasp"><a class="li_laspc_a" target="_blank" 
								href="indexpage!logincon.action">登陆</a>/<a class="li_laspc_a"
								href="loginUsers!findUserType.action" target="_blank">注册</a></li>
						</s:if>
						<s:if test="#session.users!=null">
							<li class="li_lasp"><a style="margin-right: 10px;"
								class="li_laspc_a" href="exituser!userexitxt.action">退出CVF</a>
						</s:if>
					</ul>
				</div>
				<div id="head_dh2">
					<ul id="head_ul_list1" style="margin-right: 10px;">
						<s:if test="#session.users!=null">
							<li class="li_lasp1"><a class="li_laspc_a1"
								style="color:#F60;" href="loginUsers!rupinuzy.action">进入我的主页>></a>
							</li>
						</s:if>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="indexpage!jumpjylc.action">交易流程</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="indexpage!jumpfyfk.action">费用与付款</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="indexpage!jumpcjwt.action">常见问题</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="indexpage!jumptsjy.action">投诉与建议</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="indexpage!jumpgywm.action">关于我们</a></li>
					</ul>
				</div>

			</div>
		</div>
<!--T-->
<!--导航---------------------->
 <div style="width: 100%; height: 60px; border:0px solid red;">
<div id="d_ncnncn" style="background-color:#EBEBEB;">
  <div id="d_uucnns">
  <a href="index.action">
     <div id="d_list_lic9">
       <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:48px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:50px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音任务</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="voiceyindex.action">
     <div id="d_list_lic9">
           <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn3" style="margin-left:44px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音员</samp></td>
         </tr>
       </table>
     </div>
     </a>
     <a href="worksvoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn4" style="margin-left:44px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音作品</samp></td>
         </tr>
       </table>
     </div>
     </a>
     <a href="ranking.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn5" style="margin-left:44px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">排行榜</samp></td>
         </tr>
       </table>
     </div>
     </a>
  </div>
</div>
</div>
<!--导航---------------------->
    
    
    
    
    <div class="theme-popover-mask1" style="display: block;z-index: 997;"></div>
<div class="theme-popover" style="height: 630px; margin-top: -230px; display: block; z-index: 998;">
 <input type="hidden" class="patspikds" id="bteidsdd" name="bteids" value="${pats.pid}"/>
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaozttssttsfks1">
           <samp id="tijys22" style="font-family:'微软雅黑'; margin-left: 50px;">第三步:完成支付</samp>
           <!-- <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a> -->
        </div>

       <!-- <div id="tishcaoz2" style="border:1px solid red; height: 50px;">
          <input id="kjfs" type="text" value="1"/>
       </div> -->
       <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="font-size: 36px;color:#F60;">支付成功!</samp><br>
          <samp id="wnllfont" style="font-size: 18px;color:#F60;">任务进度情况，客服人员会及时与您联系!如有疑问</samp><br>
          <samp id="wnllfont" style="font-size: 18px;color:#F60;">请联系客服人员!</samp><br>
          <samp id="wnllfont" style="font-size: 18px;color:#F60;"></samp><br>
          
       </div>
       
       <div id="tishcaoz3" style="border:0px solid red; width: 410px; margin-top: 20px;">
           <div id="ddqr1s" style="margin-left: 150px;"><img src="images/iwaity.gif" width="100" height="100" alt="LOGO" /></div>
           <div id="ddqr1s" style="text-align: center;">
           <samp style="line-height: 100px;" id="wnllfont" class="dinslws" style="color: red;">10</samp>
           <samp style="line-height: 100px;" id="wnllfont" style="color: red;">(S)后会自动跳转到我的<a href="#">任务订单</a></samp></div>
       </div>

     </div>
     <div class="theme-poptit" style="margin-top: 430px;">
     <a href="#" class="close"><div id="coslqed55"><samp class="xlxnss">网站首页</samp></div></a>
     <a href="#" class="close"><div id="coslqed55"><samp class="xlxnss">任务订单</samp></div></a>
</div>
    
    
    
</div>
<input id="kjfs" type="hidden" value="0"/>
<div class="theme-popover-mask" style="z-index: 0;"></div>
</body>
<script type="text/javascript">
$(function(){
showlaod(500,"#ccc");

});
/* function startTime(){
	var bb=$("#kjfs").val();
	var sc=parseInt(bb);
	var cc=sc+1;
    if(cc==1){
    
    }

	var htm=$("#blxllw").html();
	var bd=parseInt(htm);
	var du=bd-1;
	$("#blxllw").html(du);
    
	if(cc==5){
	var pobd=$("#bteidsdd").val();
	   window.location.href="voiwtaskbt.action?bid="+pobd+"";
	}
	
	$("#kjfs").val(cc);
    setTimeout('startTime()',1000); 	
} */

</script>


</html>
