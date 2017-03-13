<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>邮箱验证</title>
    
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
<script type="text/javascript" src="js/biaodanyanzen.js"></script>
<link rel="stylesheet" href="css/tanchu.css" type="text/css"></link>
<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>

  </head>
<script type="text/javascript">
jQuery(document).ready(function($) {
	$('.theme-login').click(function(){
		$('.theme-popover-mask').fadeIn(700);
		$('.theme-popover').fadeIn(700);
	});
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(700);
		$('.theme-popover').fadeOut(700);
	});

});
</script>

  <body>
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
<!-- 导航端--------------------- -->     
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





<!-- 导航端--------------------- -->
<div id="regis_haed" style="border:1px solid #ccc; height: 480px;">
 
<!--功能导航段-->  
<div id="reges_gndh" style="width: 1000px; height: 380px; border:0px dashed #ccc; border-width: 0px 0px 1px 0px;">
   <div id="reges_dh1" style="border:0px dashed #ccc; border-width: 0px 0px 1px 0px;"><h3 id="reges_h3">邮箱验证</h3></div>
   <div id="reges_dh8" style="width: 1000px; height: 300px; border:0px solid red;">
       <form id="formczshn" method="post" action="loginUsers!Verification.action">
         <table border="0" width="990" cellpadding="0" cellspacing="0" style="margin-top: 50px;">
          <tr height="35">
             <td width="200" align="right"><samp style="font-size: 16px; color:#660;">*账户名:</samp></td>
             <td width="150"><samp style="font-size: 13px;">${yzhuser}</samp></td>
             <td width="550"></td>
          </tr>

          <tr height="35">
             <td width="200" align="right"><samp style="font-size: 16px; color:#660;">接收的验证码:</samp></td>
             <td width="150"><input id="reges_inp" class="regsscs_yam" type="text" name="jsdcod" maxlength="6"/></td>
             <td width="550"><samp class="yazmdc_xn1 yazmdcsv_oo">填写您邮箱接收到的验证码！在1小时之内登录邮箱则验证有效,超过时间则无效!</samp></td>
          </tr>
          <tr height="35">
             <td width="200" align="right"></td>
             <td width="700" colspan="2"><samp style="font-size: 13px; color: red;">${comaess}</samp></td>
          </tr>
           <tr height="35">
             <td width="200" align="right"></td>
             <td width="150"><input class="uscn_tijao" type="submit" value="提交验证"/></td>
             <td width="550"></td>
          </tr>
       </table>
   </form>
   </div>
  
</div>

<!--功能导航段-->

<!--功能切换段-->





<!--功能切换段-->

</div>
 
 
<!-- d1 -->
		<div id="haed_dibu_cctts">


			<!--foot-->
			<div class="footbox">
				<div class="foot">
					<div class="bb1">
						<div class="bb1-img"></div>
						<div class="bb1-text">
							<ul>
								<LI>公司名称：Chinesevoicefreelancers(CVF)配音有限责任公司
								<LI>工作地址：重庆市沙坪坝区
								<LI>业务电话：(023)xxxxxxx</LI>
							</ul>
						</div>
					</div>
					<div class="bb2">
						<div class="bb2-img"></div>
						<div class="bb2-text">
							<ul>
								<DIV class=bb2-text>
									<UL>
										<LI>配音热线：<SPAN class="font-weight font-color font-size14">400
												888 8888</SPAN>
										<LI>急速配音：023-12345678
										<LI>电子邮箱：969353498@qq.com</LI>
									</UL>
								</DIV>
							</ul>
						</div>
					</div>
					<div class="bb3">
						<div class="bb3-img"></div>
						<div class="bb3-text">
							<ul>
								<LI>在线业务洽谈：
								<LI>QQ 969353498</LI>
							</ul>
						</div>
					</div>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endfoot-->
			<!--bottom-->
			<div class="bottombox">
				<div class="bottom">
					<ul>
						<li>
										
							<div class="bottomnav">
								| <a href='indexpage!jumpjylc.action' target="_blank">交易流程</a> | <a
									href='indexpage!jumpfyfk.action' target="_blank">费用与付款</a> | <a
									href='indexpage!jumpcjwt.action' target="_blank">常见问题</a> | <a
									href='indexpage!jumptsjy.action' target="_blank">投诉与建议</a> | <a
									href='indexpage!jumpgywm.action' target="_blank">关于我们</a> | <a
									href='javaScript:;'>帮助中心</a> | <a
									href='javaScript:;'>隐私保护</a> | <a
									href='javaScript:;'>公司地图</a> | <a
									href='https://auth.alipay.com/login/index.htm' target="_blank">支付宝</a> | <a
									href='https://www.paypal.com/c2/webapps/mpp/home' target="_blank">paypal</a>
							</div>
						</li>
						<li class="hei"><span class="fr">
								Chinesevoicefreelancers(CVF) © 2015-2020 s.cn All Rights
								Reserved.渝ICP备08106896号经营许可证闽B2-20110061.</span></li>
					</ul>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endbottom-->





		</div>

		<!-- d1 -->
  </body>
</html>
