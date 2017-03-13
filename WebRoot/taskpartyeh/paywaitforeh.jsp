<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Confirm the payment</title>
    
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
    if(cc%2!=0){
       var dd=cc.toString().substring(cc.toString().length-1,cc.toString().length);
       if(parseInt(dd)!=3 && parseInt(dd)!=7){
         var pdid=$(".patspikds").val();
         $.getJSON("/peiyin//findPaymens.action",{"psid2":pdid},function(data){
	        var pin=parseInt(data.zfid);
	        if(pin==2){
	          window.location.href="ehpaymentsuccessts.action";
	        }
	     });
       }
    }
	 var did=$(".dinslws").html();
	 var sdc=parseInt(did);
	if(cc<=600){
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
						<li class="li_lasp" style="color: #690;">Hello!</li>
						<li class="li_lasp"><s:if test="#session.users!=null">
								<a class="li_laspc_a" style="color: red;" href="ehloginUserehs!rupinuzyEh.action">${users.iuserName}</a>
							</s:if></li>
						<li class="li_lasp" style="color: #690;">Welcome to CVF!</li>
						<li class="li_lasp" style="color: #690;">>>切换</li>
						<li class="li_lasp"><a class="li_laspc_a" href="index.action">中文</a></li>
						<s:if test="#session.users==null">
							<li class="li_lasp"><a class="li_laspc_a" target="_blank"
								href="ehindexpage!loginconEh.action">LOGIN</a>/<a class="li_laspc_a"
								href="ehloginUserehs!findUserTypeEh.action" target="_blank">SIGN UP</a></li>
						</s:if>
						<s:if test="#session.users!=null">
							<li class="li_lasp"><a style="margin-right: 10px;"
								class="li_laspc_a" href="ehexitUsereh!userexitxtEh.action">LOG OUT</a>
						</s:if>
					</ul>
				</div>
				<div id="head_dh2">
					<ul id="head_ul_list1" style="margin-right: 10px;">
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpjylcEh.action">HOW IT WORKS</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpfyfkEh.action">FEES & PAYMENT</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpcjwtEh.action">Q & A</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumptsjyEh.action">CONTACT US</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpgywmEh.action">ABOUT US</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--T-->
<!--D-->
		<div style="width: 100%; height: 60px; border:0px solid red;">
			<div id="d_ncnncn" style="background-color:#EBEBEB;">
				<div id="d_uucnns">
					<a href="indexenglish.action">
						<div id="d_list_lic9"
							style="">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="80" height="45" align="right"><div
											class="d_utnkcn1"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; 

background-position:0px 0px;"></div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="">HOME</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehbtendervoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn2" style="margin-left:50px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">PROJECTS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehvoiceyindex.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="51" height="45" align="right"><div
											class="d_utnkcn3" style="margin-left:17px;"></div></td>
									<td width="143" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">VOICE TALENTS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehworksvoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn4" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">WORKS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehranking.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn5" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">TRANSLATION</samp></td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!--D-->
		
    
    
    
    <div class="theme-popover-mask1" style="display: block;z-index: 997;"></div>
<div class="theme-popover" style="height: 670px; margin-top: -230px; display: block; z-index: 998;">
 <input type="hidden" class="patspikds" id="bteidsdd" name="bteids" value="${pats.pid}"/>
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaozttssttsfk">
           <samp id="tijys22" style="font-family:'微软雅黑'; margin-left: 50px;">Confirm payment</samp>
           <!-- <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a> -->
        </div>

       <!-- <div id="tishcaoz2" style="border:1px solid red; height: 50px;">
          <input id="kjfs" type="text" value="1"/>
       </div> -->
       <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="font-size: 15px;color:#660;"><samp style="color: #999; font-size: 15px;">Order number:</samp>${pats.ptemporaryid}</samp><br>
          <samp id="wnllfont" style="font-size: 15px; color:#660;"><samp style="color: #999; font-size: 15px;">Project Title:</samp>${pats.btender.btName }</samp><br>
          <samp id="wnllfont" style="color: red;"><samp style="color: #999;">Total Price:</samp>${pats.ptotalprice/6}0USD($)</samp>
       </div>
       
        <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="color: red;"><samp style="color: #999;">Payee:</samp>account@chinesevoiceoverfreelancers.com</samp><br>
          <samp id="wnllfont" style="color: red; font-size: 14px;"><samp style="color: #999;">Note:</samp>
          Pls ensure that you make payment to this Paypal account .
          </samp>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">The first step:</samp>
             <a href="https://www.paypal.com/c2/webapps/mpp/home?locale.x=en_C2" target="_blank" style="text-decoration: underline;">Immediately to pay for</a>
          </samp><br>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px; margin-top: 10px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">The second step:</samp>
             If you have already made payment, please send the Order number to us!<a href="#" style="text-decoration: underline;">Click on sendfor</a>
          </samp><br>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px; margin-top: 10px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">The third step:</samp>
             Pls wait for few mins for the apprvall of the payment...
          </samp><br>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 210px; margin-top: 20px;">
           <div id="ddqr1s" style="float: left;"><img src="images/iwaity.gif" width="100" height="100" alt="LOGO" /></div>
           <div id="ddqr1s" style="text-align: center;float: left">
           <samp style="line-height: 100px;" id="wnllfont" style="color: red;"></samp>
           <samp style="line-height: 100px;" id="wnllfont" class="dinslws" style="color: red;">600</samp>
           <samp style="line-height: 100px;" id="wnllfont" style="color: red;">(S)</samp></div>
       </div>
       
       
       
     </div>
     <div class="theme-poptit" style="margin-top: 460px;">
     <a href="ehunpaidtaskorder.action" class="close"><div id="coslqed55"><samp class="xlxnss">Return</samp></div></a>
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
