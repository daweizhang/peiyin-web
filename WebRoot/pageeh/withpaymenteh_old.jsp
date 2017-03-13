<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>FEES & PAYMENT</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css/stylepege.css" type="text/css"></link>
  </head>

<body>
<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

<div id="vorc_hard">
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
											class="cnnspp">TRANSLATION</samp></td>
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
											class="cnnspp">LIVE SESSION</samp></td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!--D-->
		
<div class="xqweizi1" style="margin-top: 5px;">
    			<a style="text-decoration: none;" class="xqweizi11" href="index.action" title="网站首页">HOME</a>＞
    			<a style="text-decoration: none;"  href="javaScript:;" title="费用及付款">FEES & PAYMENT</a>
    	</div>
    <div id="paihuang" style="margin-top: 5px;">
    	<div class="paihuangss" style="width: 1000px;">
    		
    		
    		
    		
   <div class="content" style="border:0px solid red; width:1000px;padding-left:10px;padding-right:10px;padding-bottom:10px;">
    <!--  
    <div class="content_resize" style="margin-left:30px;width:940px">
      <div class="mainbar" style="width:940px">
     --> 
      <div class="submb" style="width:980px;background-color:#FFC; margin-top:10px;padding-left:30px;padding-right:30px;padding-top:20px;padding-bottom:20px">
        <div class="article" style="width:980px;">
          <samp id="slinwsjianyi1">FEES & PAYMENT</samp>
          <div id="fee_id" style="border:0px solid red; width:920px;height:600px; margin-top:50px">
             <div id="fee_seeker" style="float:left;border:1px solid gray; width:410px;height:500px">
                  
             </div>
             
             <div id="fee_talent" style="float:right;border:1px solid gray;width:410px;height:500px">
             
             </div>
            
          </div>
        </div>
        <div class="article flns">
          <samp id="slinwsjianyi1">PAYMENT METHOD</samp>
           <div id="gywmxx" style="border:0px solid red;">
               <a href="https://www.paypal.com/c2/webapps/mpp/home?locale.x=en_C2" id="slknbiwzfs"><img src="images/paupal.png" width="154" height="48" alt="LOGO" /></a><a href="https://www.alipay.com/" id="slknbiwzfs"><img style="margin-left: 5px;"  src="images/zifubo.png" width="154" height="48" alt="LOGO" /></a><br>
               
               <!--  
               <samp style="font-size:16px;">Task party payment method：<br><samp style="color:red;">The first one: through the "Paypal" platform to pay. Payment account: lediali@163.com</samp></samp><br>
               <samp style="font-size:16px;"><samp style="color:red;">Second: payment by "Alipay" payment account: lediali@163.com platform.</samp></samp><br>
               
               
               <samp style="font-size:16px;">Voice member collection method：<samp style="color:red;">The "Alipay" platform. The delivery of products to fill out your real name and Alipay account</samp></samp>
               -->
           </div>
          
           <samp >Pls ensure that you make payment to this</samp>
           <samp >account:<a style="color:red;">account@chinesevoiceoverfreelancers.com </a></samp>
          <!--  
           <br>
          <samp id="slinwsjianyi1">Introduction of "Paypal" payment method</samp>
          <br>
          <br>
          <samp id="slinwsjianyi1" style="font-size:16px;color:red;">First step：<a style="color: #36F; text-decoration: none;" target="_blank" href="https://www.paypal.com/c2/webapps/mpp/home?locale.x=en_C2">Click on me to enter the Paypal official website</a>,And landing!
               <div id="zifuxqjs1"><img src="images/diyibu1.png" width="565" height="190" alt="LOGO" /></div>
          </div>
          <br>
          <samp id="slinwsjianyi1" style="font-size:16px;color:red;">The second step: click on payment</samp>
          
               <div id="zifuxqjs1"><img src="images/fukuan2.png" width="565" height="190" alt="LOGO" /></div>
          <br>
           <samp id="slinwsjianyi1" style="font-size:16px;color:red;">The third step: payment operation</samp>
          
               <div id="zifuxqjs1"><img src="images/dsanb3.png" width="565" height="325" alt="LOGO" /></div>     
               
            -->   
        </div>
        
      </div>
      
      
      <!--  
      <div class="sidebar">
        <div class="gadget">
          <samp id="slinwsjianyi1" style="font-size:18px;line-height:50px;">Fast navigation</samp>
          <ul class="sb_menu" style="font-size: 14px;">
            <li><a href="#">home page</a></li>
            <li><a href="#">task list</a></li>
            <li><a href="#">List of voice actors</a></li>
            <li><a href="#">List of works</a></li>
            <li><a href="#">About us</a></li>
          </ul>
        </div>
        <div class="gadget">
          <samp id="slinwsjianyi1" style="font-size:18px; line-height:50px;">Common problem</samp>
          <ul class="ex_menu" style="font-size: 14px;">
            <li><a href="#" title="网站模板">Mailbox failure</a><br />Mailbox retrieve password failure, can not receive verification?</li>
            <li><a href="#" title="WordPress Themes">Translation error</a><br />English version of the translation error, how to feedback?</li>
            <li><a href="#" title="Affordable Hosting">English version information error</a><br />Page can not display information, no data output to the page?</li>
            <li><a href="#" title="Stock Photos">Could not commit trial</a><br />Unable to submit a test tone after logging in?</li>
            <li><a href="#" title="Website Builder">Unable to upload work</a><br />Unable to upload their own voice work?</li>
            <li><a href="#" title="Stock Icons">Unable to download audio file</a><br />After the completion of the task, the task can not download the audio file?</li>
          </ul>
        </div>
      </div> -->
     <!--   </div> -->
      <div class="clr"></div>
   <!--   </div> -->
  </div>
    		
    		
    		
    		
    		
    		
    		
    		
    	</div>
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
								<LI>11-31-7# SPB, Chongqing, 400000, China</LI>
							</ul>
						</div>
					</div>
					<div class="bb2">
						<div class="bb2-img"></div>
						<div class="bb2-text">
							<ul>
								<DIV class=bb2-text>
									<UL>
										<LI>info@chinesevoiceoverfreelancers.com</LI>
									</UL>
								</DIV>
							</ul>
						</div>
					</div>
					<div class="bb3">
						<div class="bb3-img"></div>
						<div class="bb3-text">
							<ul>
								<LI>(86)23 6122 8675</LI>
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
					<ul style="text-align:center;">
						<li>
				         <div class="bottomnav">
								 <a href='ehindexpage!jumpjylcEh.action' target="_blank">HOW IT WORKS</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">FEES & PAYMENT</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">Q & A</a> | <a
									href='ehindexpage!jumptsjyEh.action' target="_blank">CONTACT US</a> | <a
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a><!--  | <a -->
									<!-- href='javaScript:;'>帮助中心</a> | <a
									href='javaScript:;'>隐私保护</a> | <a
									href='javaScript:;'>公司地图</a> | <a
									href='https://auth.alipay.com/login/index.htm' target="_blank">支付宝</a> --> | <a
									href='https://www.paypal.com/c2/webapps/mpp/home' target="_blank">PAYPAL</a>
							</div>
						</li>
						<li class="hei"><span class="fr">
								© 2015-2020 chinesevoiceoverfreelancers.com. All Rights
								Reserved.</span></li>
					</ul>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endbottom-->
		</div>

		<!-- d1 -->
    
  </body>
  
        <script type="text/javascript">
		
		  showlaod(500,"#ccc");
        </script>
  
</html>
