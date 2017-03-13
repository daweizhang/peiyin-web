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

  <link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
  <link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/indexJS.js"></script>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css/stylepege.css" type="text/css"></link>
  </head>

  <style type="text/css" media="screen">
       #thistis_icns1{ 
	       	 width:100%; height:100%; border:0px solid red; background-color:#999;
		     position:fixed;
		     top:0px;
		     opacity:0.2;
        }
       #thistis_icnicns1{
			width:500px;
			height:250px;
			border:1px solid #ccc;
			background-color:#FBFBFB;
			-moz-border-radius: 10px;      /* Gecko browsers */
		    -webkit-border-radius: 10px;   /* Webkit browsers */
		    border-radius:10px;
			position:fixed;
		    top:50%;
		    left:50%;
		    margin:-150px 0 0 -250px;
			text-align:center;
	}
  </style>

<body>

    <!-- Become a Talent alert    -->
    <!--
    <div id="thistis_icns1" style="display: none;z-index:998;">
    </div>
	<div id="thistis_icnicns1" style="display:none;z-index:999;">
		<div id="lsncs_olc1">
			<table width="495" height="38" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="43"><img src="images/fsfesrew.png" width="41"
						height="29" /></td>
					<td width="396" align="left">
						<span id="dlnzhti" style="font-family:'微软雅黑';">Note:</span></td>
					<td width="45" align="center" valign="middle">
						<a style="text-decoration:none;" id="fklwnlselx" href="javascript:;">
						    <div id="flsvwlke">
								<span style="font-weight:bold; font-size:28px; color:#990;">✖</span>
							</div> 
						</a>
					</td>
				</tr>
			</table>
		</div>
		<div id="lsncs_olc2">
			<div id="tishtusl">
				<span style="font-weight:bold; font-size:28px; color:red;">!</span>
			</div>
			<div id="tishtuslxx">
				<span class="svege" style="font-family:'微软雅黑'; font-size:15px;">Pls visit the Chinese version to become a talent!
				</span>
			</div>
		</div>
	</div> -->
    
    <!-- End Become a Talent alert -->

    <div id="thistis_icns" style="display: none;z-index:998;">
    </div>
	<div id="thistis_icnicns" style="display:none;z-index:999;">
		<div id="lsncs_olc1">
			<table width="495" height="38" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="43"><img src="images/fsfesrew.png" width="41"
						height="29" /></td>
					<td width="396" align="left">
						<span id="dlnzhti" style="font-family:'微软雅黑';">Note:</span></td>
					<td width="45" align="center" valign="middle">
						<a style="text-decoration:none;" id="fklwnlselx" href="javascript:;">
						    <div id="flsvwlke">
								<span  style="font-weight:bold; font-size:28px; color:#990;">✖</span>
							</div> 
						</a>
					</td>
				</tr>
			</table>
		</div>
		<div id="lsncs_olc2">
			<div id="tishtusl">
				<span style="font-weight:bold; font-size:28px; color:red;">!</span>
			</div>
			<div id="tishtuslxx">
				<span class="svege" style="font-family:'微软雅黑'; font-size:15px;">You need to be logged in to post a project!</span>
			</div>
		</div>
		<div id="lsncs_olc3">
			<a class="sesscs" href="ehloginUserehs!findUserTypeEh.action"><input
				id="cnwlbann1" type="button" value="Sign Up" /> </a> <a class="sesscs"
				href="ehindexpage!loginconEh"><input id="cnwlbann1" type="button"
				value="Login" /> </a>
		</div>
	</div>


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
									<td width="80" height="45" align="right">
										<div
											class="d_utnkcn1"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; 
                                            background-position:0px 0px;">
                                        </div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="">HOME</samp></td>
								</tr>
							</table>
						</div>
					</a> 
					<a href="ehbtendervoiw.action">
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
					</a> 
					<a href="ehvoiceyindex.action">
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
					</a> 
					<a href="ehworksvoiw.action">
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
					</a> 
					<a href="ehranking.action">
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
    			<a style="text-decoration: none;" class="xqweizi11" href="index.action" title="网站首页">HOME</a>
    			<a style="text-decoration: none;"  href="javaScript:;" title="费用及付款">FEES & PAYMENT</a>
    	</div>
    <div id="paihuang" style="margin-top:5px;">
    	<div class="paihuangss" style="width:1000px;">	
          <div class="content" style="border:0px solid red;padding:10px">
	            <div class="submb" style="border:0px solid red;background-color:#FFC;
	                 padding:20px;">
	                 <div class="article" style="width:940px;">
	                    <samp id="slinwsjianyi1">FEES & PAYMENT</samp>
	                    <div id="fee_id" style="border:0px solid red; width:920px;height:500px; margin-top:50px">
	                        <div id="fee_seeker" style="float:left;border:1px solid #DDD; width:440px;height:470px">
	                              <div style="height:100px;text-align:center; ">
	                                    <span style="font-size:20px;line-height:80px;font-weight:bold">Voice Seeker</span>
	                              </div>
	                                <table border="1" bordercolor="#DDD" height=240px style="border-collapse:collapse;width:440px;">
		                                <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                           Membership
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Get own profile page
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Project posting
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Pay via Paypal or Alipay
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Communication translation
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Live session interpretation
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Project admin fee
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Script translation
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1">
		                                     <span><a href="ehworksvoiw.action">check</a></span></td>
		                                 </tr>
	                              </table> 
	                              
	                              <div style="text-align:center;">
	                                    <div style="width:180px;height:60px;margin-top:20px;background-color:#F60;" >
	                                      <div style="height:17px">
	                                      </div>
	                                       <s:if test="#session.users==null">
										      <a  href="javaScript:loadl();" style="color:black; display:block;text-decoration:none;font-size:20px;font-weight:bold;"
											     target="_blank">Post a Project
										      </a>
									       </s:if>
									       <s:if test="#session.users.dtype.did!='gseaeffasdasc'">
										      <a  href="javaScript:loadls();" style="color:black; display:block;text-decoration:none;font-size:20px;font-weight:bold;"
											     target="_blank">Post a Project 
										      </a>
									       </s:if>
	                                      <s:if test="#session.users!=null && #session.users.dtype.did=='gseaeffasdasc'">
	                                         <a href="ehbtenderaction" style="color:black; display:block;text-decoration:none;font-size:20px;font-weight:bold;">
	                                         Post a Project
	                                         </a>
	                                      </s:if>
	                                    </div>
	                              </div>
	                              
	                        </div>   
	                    <div id="fee_id" style="border:0px solid red; width:920px;height:500px; margin-top:50px">
	                        <div id="fee_seeker" style="float:right;border:1px solid #DDD; width:440px;height:470px">
	                              <div style="height:100px;text-align:center; ">
	                                    <span style="font-size:20px;line-height:80px;font-weight:bold">Voice Talent</span>
	                              </div>
	                     
	                                <table border="1" bordercolor="#DDD" height=240px style="border-collapse:collapse;width:440px;">
		                                <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Get own profile page
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Showcase unlimited demos
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Listed in our voice talents pool
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Audition for projects
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Communication translation
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Get payment via Alipay
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                         Live session interpretation
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>Free</span></td>
		                                 </tr>
		                                 <tr style="width:340px">
		                                     <td width=10% align="center" style="border:1px solid #DDD;border-right:0px;border-left:0px" rowspan="1" colspan="0">
		                                         <span style="color:#0FA000;font-size:25px;valign:middle">&bull;
		                                         </span>
		                                      </td>
		                                      <td style="border:1px solid #DDD;border-left:0px" rowspan="1" colspan="0">
		                                         <span  style="height:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                          Project admin fee 
		                                         </span>
		                                     </td>
		                                     <td align="center"  style="border:1px solid #DDD;border-right:0px;" rowspan="1" colspan="1"><span>&nbsp;&nbsp;15%&nbsp;&nbsp;</span></td>
		                                 </tr>
	                              </table> 
	                              <div style="text-align:center;">
	                                    <div style="width:180px;height:60px;margin-top:20px;background-color:#F60;" >
	                                      <div style="height:17px">
	                                      </div>
	                                      <a href="javaScript:load2();" style="color:black; display:block;text-decoration:none;font-size:20px;font-weight:bold;">Become a Talent</a>
	                                    </div>
	                              </div>
	                        </div>  
	                    </div>
	                </div>
	                <div class="article flns">
				        <samp id="slinwsjianyi1">PAYMENT METHOD</samp>
				        <div id="gywmxx" style="border:0px solid red; width:940px">
				            <a href="https://www.paypal.com/c2/webapps/mpp/home?locale.x=en_C2" id="slknbiwzfs">
				                 <img src="images/paupal.png" width="154" height="48" alt="LOGO" />
				            </a>
				            <a href="https://www.alipay.com/" id="slknbiwzfs">
				                <img style="margin-left: 5px;"  src="images/zifubo.png" width="154" height="48" alt="LOGO" />
				            </a><br>
				        </div>
				       
				        <samp >Pls ensure that you make payment to</samp>
				        <samp ><a style="color:red;">account@chinesevoiceoverfreelancers.com </a></samp> 
	                </div>
	            </div>
                <div class="clr"></div>
          </div>
    	</div>
    </div>
</div>
<!-- d1 -->
<div id="haed_dibu_cctts">
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
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a>| <a
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
</div>
		<!-- d1 -->
    
</body>
  
<script type="text/javascript">
    $(function() {
        $("#fklwnlselx").click(function() {
        	//alert("xxxxxxxx");
			$("#thistis_icns").fadeOut(200);
			$("#thistis_icnicns").slideUp(200);
        });

    });
	function loadl() {
		//alert("load1");
		$(".svege").html("You need to be logged in to post a project!");
	    $("#thistis_icns").fadeIn(200);
	    $("#thistis_icnicns").slideDown(200);
	    $("#lsncs_olc3").show();
    }

    function load2() {
    	//alert("load2");
    	$(".svege").html("Pls visit the Chinese version to become a talent!");
	    $("#thistis_icns").fadeIn(200);
	    $("#thistis_icnicns").slideDown(200);
	    $("#lsncs_olc3").hide();
    }

    function loadl1s() {
	    $(".svege").html("");
	    $(".svege").html("Hello, the current user for voice! Cannot post a project!");
	    $("#thistis_icns").fadeIn(200);
	    $("#thistis_icnicns").slideDown(200);
    }
	showlaod(500,"#ccc");
</script>

</html>
