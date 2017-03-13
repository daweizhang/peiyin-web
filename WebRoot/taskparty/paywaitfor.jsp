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
    
    <title>确认付款</title>
    
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
	          window.location.href="paymentsuccessts.action";
	        }
	     });
       }
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
						<li class="li_lasp" style="color: #690;">欢迎来到本站！</li>
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
								class="li_laspc_a" href="exituser!userexitxt.action">退出</a>
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
<div class="theme-popover" style="height: 670px; margin-top: -230px; display: block; z-index: 998;">
 <input type="hidden" class="patspikds" id="bteidsdd" name="bteids" value="${pats.pid}"/>
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaozttssttsfk">
           <samp id="tijys22" style="font-family:'微软雅黑'; margin-left: 50px;">确认付款</samp>
           <!-- <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a> -->
        </div>

       <!-- <div id="tishcaoz2" style="border:1px solid red; height: 50px;">
          <input id="kjfs" type="text" value="1"/>
       </div> -->
       <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="font-size: 15px;color:#660;"><samp style="color: #999; font-size: 15px;">临时订单号:</samp>${pats.ptemporaryid}</samp><br>
          <samp id="wnllfont" style="font-size: 15px; color:#660;"><samp style="color: #999; font-size: 15px;">任务名称:</samp>${pats.btender.bftranslate.bfNames }</samp><br>
          <samp id="wnllfont" style="color: red;"><samp style="color: #999;">订单总价:</samp>${pats.ptotalprice}.00RMB(￥)</samp>
       </div>
       
        <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="color: red;"><samp style="color: #999;">汇款账户(支付宝):<br></samp>account@chinesevoiceoverfreelancers.com</samp><br>
          <samp id="wnllfont" style="color: red; font-size: 14px;"><samp style="color: #999;">温馨提示:</samp>
         该账户为本网站收款账户!请仔细核对!
          </samp>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">第一步:</samp>
             登录支付宝
          </samp><br>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px; margin-top: 10px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">第二步:</samp>
             确认付款<!-- <a href="#" style="text-decoration: underline;">Click on sendfor</a> -->
          </samp><br>
       </div>
       <div id="tishcaoz3" style="border:0px solid red; width: 480px; margin-top: 10px;">
          <samp id="wnllfont" style="color: red; font-size: 16px;"><samp style="color: #999;">第三步:</samp>
                   如果您的付款已提交，我们会尽快联系您选中的配音员为您配音，请您耐心等待
          <!--     客服将在5分钟之内进行核对，请稍等...支付成功后，会自动跳转到成功页面! -->
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
     <a href="unpaidtaskorder.action" class="close"><div id="coslqed55"><samp class="xlxnss">return</samp></div></a>
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
