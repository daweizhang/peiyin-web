<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Mission home page</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  
  </head>
  
  <style type="text/css" media="screen">
    a {
        color: #2B4A78;
        text-decoration: none;
    }

    a:hover {
        color: #2B4A78;
    }

    a:focus, input:focus {
        outline-style: none;
        outline-width: medium;
    }

    /* custom css style: pageNum,cPageNum */
    .pageNum {
        border: 1px solid #999;
        padding: 2px 8px;
        display: inline-block;
    }

    .cPageNum {
        font-weight: bold;
        padding: 2px 5px;
    }
    #pageNav{
        -moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
    }
    #pageNav a:hover {
        text-decoration: none;
        background: #fff4d8;
    }

</style>
<body>
<div id="vorc_hard" style="height: 1000px;">
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
		
<!----------主体样式------------->
<div style="width: 1000px; height: 3px; border: 0px solid #ccc; background-color:red; margin-top: 10px;"></div>
<div id="void_nes1" style="border: 0px solid #ccc;   height: 850px;">
   <div id="mum_zhutiyi1">
      <ul id="mum_ul_s">
        <li  class="mum_licss1"><span class="mum_asccss1">ACCOUNT CENTER</span></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="ehloginUserehs!rupinuzyEh.action">My Home</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehpersonalcenter.action">Profile</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehbtenderaction.action">Post a Project</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehbtenlist.action">Project List</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehunpaidtaskorder.action">Projects Unpaid</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehconJumptaskorder.action">Projects Paid</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehodersovers.action">Projects Completed</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">PERSONAL INFO</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehvoicfs.action">Upload Photo</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehupUsertion.action">Contact Info</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehpasswordups.action">Change Password</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehUserehsystemnews.action">System Messages</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">HELP CENTER</span></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpjylcEh.action">How It Works</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpfyfkEh.action">Fees & Payment</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpcjwtEh.action">Q & A</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumptsjyEh.action">Contact Us</a></li>
        <li id="mum_lncs1" class="mum_licss2"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpgywmEh.action">About Us</a></li>
      </ul>
   
   </div>
   <div id="mum_zhutiyi2">
         <div id="mum_grzls1">
            <div id="mun_listcc1">
            <s:if test="uisx.iportrait!=null">
            <img src="upload/${uisx.iportrait}" width="162" height="165">
            </s:if>
            <s:if test="uisx.iportrait==null">
            <img src="images/touxd.png" width="162" height="165">
            </s:if>
            </div>
            <div id="mun_listcc2">
                <div id="mun_divuuc1">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="180" id="xinfid_f1" style="color: #264FA2; font-family:Verdana, Geneva, sans-serif">ID.${uisx.iname}</td>
                      <td></td>
                   </tr>
                   </table>
                </div>
                <div id="mun_divuuc2">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="40">
                      <td width="79" align="right" style="font-size: 13px; color: #666;">&nbsp;&nbsp;&nbsp;E-mail：</td>
                      <td style="font-size: 13px; color:#F60;">&nbsp;${uisx.iemail}</td>
                   </tr>
                   </table>
                
                </div>
                <div id="mun_divuuc3">
                 <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="40">
                      <td width="70" align="right" style="font-size: 13px; color: #666; ">Points：</td>
                      <td style="font-size: 16px; color:#F60; font-weight: bold;">${uisx.icredibility}&nbsp;<samp style="font-size:14px;color:#aaa; font-weight: 100;">(1 point means 1 finished project)</samp></td>
                   </tr>
                  </table>
                </div>
                <div id="mun_divuuc4">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="60" style="font-size: 13px; color: #666;"></td>
                      <td style="font-size: 13px; color:#F90;"></td>
                   </tr>
                   </table>
                </div>
                <div id="mun_divuuc5">
                    <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                       <td width="55" align="right" style="font-size: 13px; color: #666;"></td>
                      <td width="177" style="font-size: 13px; color:#F90;"><span style="font-size: 13px; color:red;"></span></td>
                      <td style="font-size: 13px; color:red;"><a href="#" style="color: red;"></a></td>
                   </tr>
                   </table>
                </div>
 
            </div>
            <div id="mun_listcc3">
                
                <div id="mun_lsnmcn5">
                    <table style="margin-left: 40px;" id="mun_table" width="180" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="40" align="right" style="font-size: 13px; color: #666;">Projects：</td>
                      <td width="90" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">${po.totalCount}</samp></td>
                   </tr>
                   </table>
                
                </div>
                <div id="mun_lsnmcn4">
                   <table style="margin-left: 40px;" id="mun_table" width="180" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="68" align="right" style="font-size: 13px; color: #666;">Messages：</td>
                       <td width="90" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">0</samp></td>
                   </tr>
                   </table>
                </div>
                <div id="mun_lsnmcn6">
                    <a id="fnc_sakms" href="ehbtenderaction.action"><div id="mub_beijing"><h3 id="mun_h3ff">Post a Project</h3></div></a>
                </div>
            </div>
         </div>
         <div id="mun_fnmcs8">
            <div id="ywcdpeyr_li1"><div class="h4_ywcll">Projects in Progress</div><div class="h4_ywcll1"><a href="ehconJumptaskorder.action" class="her_lnd">See More...</a></div></div>
            <div id="ywcdpeyr_li2" style="border:1px solid #ccc;height: 363px;">
            
              <c:if test="${po.totalCount != 0}">
              <c:forEach items="${po.items }" var="isd">
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">${fn:substring(isd.btender.btName,0,15)}...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">${isd.btender.tvoice.tts }</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">${isd.pfqTime }</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="ehpaymenthasbeenrw.action?menpid=${isd.pid}&nspid=1" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">View</div></div></a></div>
                </div>
               </c:forEach>
            </c:if>
            <c:if test="${po.totalCount == 0}">
              <div style="width: 700px;height: 323px;border:0px solid red; color: #666; font-size: 14px; text-align: center;"><div style="margin-top: 100px;"><span>No Project in Progess</span>&nbsp;&nbsp;<a href="ehvoiceyindex.action" style="color: red; text-decoration: underline;">Search for VO Talents</a></div></div>
            </c:if>

            
            </div>
            <div id="ywcdpeyr_li3" style="border:0px solid red;">
                <div id="ywcdpeyr_li1"><div class="h4_ywcll"></div><div class="h4_ywcll1"><a href="#" class="her_lnd"></a></div></div>
                <div id="yhncjwt_kc">
                   <table border="0" width="780" cellpadding="0" cellspacing="0" style="margin-top: 12px;">
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#"></a></td>                 
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#"></a></td>
                         
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#"></a></td>
                         
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#"></a></td>
                       
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#"></a></td>
                   
                      </tr>
                   
                   </table>
                
                </div>
            
            
            </div>
         </div>
   </div>




</div>

<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 20px;">
			<!--foot-->
			<div class="footbox">
        <div class="foot" style="width:1000px;">
          <div class="bb1">
            <div class="bb1-img"></div>
            <div class="bb1-text" style="width:300px;height:60px; float:left">
              <ul>
                
                <LI>11-31-7# SPB, Chongqing, 400000, China
                
              </ul>
            </div>
          </div>
              <div class="bb2" style="width:330px;height:60px; float:left; display:inline;">
                <div class="bb2-img"></div>
                <div class="bb2-text" style="width:250px float:left">
                  <ul>
                     <LI style="width:250px">info@chinesevoiceoverfreelancers.com</LI> 
                  </ul>
            </div>
          </div>
          <div class="bb3">
            <div class="bb3-img"></div>
            <div class="bb3-text" style="width:150px;height:60px; float:left">
              <ul>
                <LIstyle="width:150px;">(86)173 167 80 906</LI>
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
								© 2015-2020 chinesevoiceoverfreelancers.com. All Rights Reserved.</span></li>
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

//$(function(){ //for jquery
window.onload = (function(){

	//optional set
	pageNav.pre="上一页";
	pageNav.next="下一页";
	

	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};
	
	//重写分页状态,跳到第三页,总页33页
	pageNav.go(1,30);

});

  </script>


</html>
