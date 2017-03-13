<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Chinese Voice Freelancers - CVF Home</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
<script type="text/javascript" src="js/indexJS.js"></script>
<script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
<link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
</head>

<script type="text/javascript">
	$(function() {
		showlaod(500, "#ccc");
		$("#index_dianji").click(function() {
			$(this).css("border-bottom-color", "#FFF");
			$("#index_dianer").css("border-bottom-color", "#ccc");
			$("#indx_lic1").css("display", "none");
			$("#indx_lic2").css("display", "block");
		});
		$("#index_dianer").click(function() {
			$(this).css("border-bottom-color", "#FFF");
			$("#index_dianji").css("border-bottom-color", "#ccc");
			$("#indx_lic2").css("display", "none");
			$("#indx_lic1").css("display", "block");
		});

		$("#cwkneke").click(function() {
			$("#thistis_icns").fadeIn(200);
			$("#thistis_icnicns").slideDown(200);
		});
		$("#fklwnlselx").click(function() {
			$("#thistis_icns").fadeOut(200);
			$("#thistis_icnicns").slideUp(200);
		});

	});

	function loadl() {
		$("#thistis_icns").fadeIn(200);
		$("#thistis_icnicns").slideDown(200);

	}

	function loadl1s() {
		$(".svege").html("");
		$(".svege").html("Hello, the current user for voice! Cannot publish task!");
		$("#thistis_icns").fadeIn(200);
		$("#thistis_icnicns").slideDown(200);

	}
	function loadl2s() {
		$(".svege").html("");
		$(".svege").html("Hello, the current user for the task! Unable to release the work!");
		$("#thistis_icns").fadeIn(200);
		$("#thistis_icnicns").slideDown(200);

	}

	$(function() {
		$("#d_uucnns a #d_list_lic8").hover(function() {
			var u = $(this).parent().index();
			//$(this).css("background-color","#FC0"); 
			if (u == 0) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn1").addClass("d_fff1");
				$(this).siblings().find(".d_utnkcn1").removeClass("d_fff1");
			}
			if (u == 1) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn2").addClass("d_fff2");
				$(this).siblings().find(".d_utnkcn2").removeClass("d_fff2");
			}
			if (u == 2) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn3").addClass("d_fff3");
				$(this).siblings().find(".d_utnkcn3").removeClass("d_fff3");
			}
			if (u == 3) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn4").addClass("d_fff4");
				$(this).siblings().find(".d_utnkcn4").removeClass("d_fff4");
			}
			if (u == 4) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn5").addClass("d_fff5");
				$(this).siblings().find(".d_utnkcn5").removeClass("d_fff5");
			}
		}, function() {
			var u = $(this).parent().index();
			if (u == 0) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn1").removeClass("d_fff1");
			}
			if (u == 1) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn2").removeClass("d_fff2");
			}

			if (u == 2) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn3").removeClass("d_fff3");
			}
			if (u == 3) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn4").removeClass("d_fff4");
			}
			if (u == 4) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn5").removeClass("d_fff5");
			}

		});

		$("#d_uucnns a #d_list_lic9").hover(function() {
			var u = $(this).parent().index();
			//$(this).css("background-color","#FC0"); 
			if (u == 0) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn1").addClass("d_fff1");
				$(this).siblings().find(".d_utnkcn1").removeClass("d_fff1");
			}
			if (u == 1) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn2").addClass("d_fff2");
				$(this).siblings().find(".d_utnkcn2").removeClass("d_fff2");
			}
			if (u == 2) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn3").addClass("d_fff3");
				$(this).siblings().find(".d_utnkcn3").removeClass("d_fff3");
			}
			if (u == 3) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn4").addClass("d_fff4");
				$(this).siblings().find(".d_utnkcn4").removeClass("d_fff4");
			}
			if (u == 4) {
				$(this).children().find(".cnnspp").addClass("cnnspp1");
				$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn5").addClass("d_fff5");
				$(this).siblings().find(".d_utnkcn5").removeClass("d_fff5");
			}
		}, function() {
			var u = $(this).parent().index();
			if (u == 0) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn1").removeClass("d_fff1");
			}
			if (u == 1) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn2").removeClass("d_fff2");
			}

			if (u == 2) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn3").removeClass("d_fff3");
			}
			if (u == 3) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn4").removeClass("d_fff4");
			}
			if (u == 4) {
				$(this).children().find(".cnnspp").removeClass("cnnspp1");
				$(this).children().find(".d_utnkcn5").removeClass("d_fff5");
			}

		});
	});
	//任务详情页面
	$(function() {
		$(".xqrenwu313 .xqrenwu31311").hover(
				function() {
					$(this).find(".xqrenwu313111").css("color", "#F16700")
							.parent().siblings().find(".xqrenwu313111").css(
									"color", "#000000");
					$(this).find(".xqrenwu313112").css("background-color",
							"#F16700").parent().siblings().find(
							".xqrenwu313112")
							.css("background-color", "#474E5D");

				},
				function() {
					$(".xqrenwu31311").find(".xqrenwu313111").css("color",
							"#000000");
					$(".xqrenwu31311").find(".xqrenwu313112").css(
							"background-color", "#474E5D");
				});
	});
</script>
<script type="text/javascript">
	window._bd_share_config = {
		"common" : {
			"bdSnsKey" : {},
			"bdText" : "",
			"bdMini" : "1",
			"bdMiniList" : false,
			"bdPic" : "",
			"bdStyle" : "0",
			"bdSize" : "16"
		},
		"share" : {
			"bdSize" : 16
		},
		"" : {
			"viewList" : [ "tsina", "tqq", "renren", "weixin", "kaixin001",
					"douban" ],
			"viewText" : "其他",
			"viewSize" : "24"
		},
		"selectShare" : {
			"bdContainerClass" : null,
			"bdSelectMiniList" : [ "tsina", "tqq", "renren", "weixin",
					"kaixin001", "douban" ]
		}
	};
	with (document)
		0[(getElementsByTagName('head')[0] || body)
				.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
				+ ~(-new Date() / 36e5)];
</script>
<body>
	<div class="fakeloader" style="opacity:0.3; z-index: 999;">
	</div>

	<div class="toolbar">
		<a href="javaScript:;" class="toolbar-item toolbar-item-weixin"> <span
			class="toolbar-layer"></span>
		</a> <a href="javaScript:;" class="toolbar-item toolbar-item-feedback"></a> <a
			href="javaScript:;" class="toolbar-item toolbar-item-app"> <span
			class="toolbar-layer"></span>
		</a> <a href="javascript:scroll(0,0)" id="top"
			class="toolbar-item toolbar-item-top"></a>
	</div>
	<div id="head_list_syel" style="width: 100%;">
		<!--T-->
		<div id="head_syatel">
			<div id="head_logo_u1">
				<img id="logo_u" src="images/lougout.png" width="152" height="64" alt="LOGO" />
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
							style="border-top:5px solid #F16700; background-color:#fff;">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="80" height="45" align="right">
										<div
											class="d_utnkcn1"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; 
                                                   background-position:0px 0px;">
                                        </div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle">
										<samp class="cnnspp" style="color: #F16700;">HOME</samp>
									</td>
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
		<!--s-->
		<div id="shows_sya">
			<div id="shorw_slmc">
				<table width="995" border="0">
					<tr>
						<td width="170"
							style="font-size:16px; font-weight:bold; font-family:'微软雅黑'; color:#F90;"
							height="42" align="center">FIND VO TALENTS</td>
						<td width="809" align="right" valign="bottom">
							<ul style="display: none;">
								<a href="javascript:;" style=" text-decoration:none; color:#660"><li
									id="index_dianji"
									style="float:right; font-family:'微软雅黑'; font-size:14px; font-weight:bold; color:#690; width:100px; 

height:30px; border:1px solid #ccc; list-style:none; text-align:center; line-height:30px; position:relative; top:5px; border-bottom-color:;margin-left:2px;">公司</li>
								</a>
								<a href="javascript:;" style=" text-decoration:none; color:#660"><li
									id="index_dianer"
									style="float:right; font-family:'微软雅黑'; font-size:14px; font-weight:bold; color:#690; width:100px; 

height:30px; border:1px solid #ccc; list-style:none; text-align:center; line-height:30px; position:relative; top:5px; border-bottom-color:#FFF;">个人</li>
								</a>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div id="indx_lic1"
				style=" border:1px solid #ccc; border-width:1px 0px 0px 0px; margin-top:2px;">
				<form id="form1" name="form1" method="post" action="ehvoiceyindex.action">
				<input type="hidden" name="odn" value="113"> 
					<div id="shows_lis1" style="text-align:center;">
						<select name="oj1" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">LANGUAGE</option>
							<c:forEach items="${listlgp}" var="lg">
								<option id="index_in" value="${lg.lid }">${lg.lts
									}</option>
							</c:forEach>
						</select>
					</div>
					<div id="shows_lis2" style="text-align:center;">
						<select name="oj2" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">CATEGORY</option>
							<c:forEach items="${listTvoc }" var="ti">
								<option id="index_in" value="${ti.tvid}">${ti.tts
									}</option>
							</c:forEach>
						</select>
					</div>
					<div id="shows_lis3" style="text-align:center;">
						<select name="oj3" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">GENDER</option>
							<option id="index_in" value="男">Male</option>
							<option id="index_in" value="女">Female</option>
							<option id="index_in" value="男女混合">Both</option>
							<option id="index_in" value="不限">Unlimited</option>
						</select>

					</div>
					<div id="shows_lis4" style="text-align:center;">
						<select name="oj4" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">ACCENT</option>
							<c:forEach items="${listsrd}" var="so">
								<option id="index_in" value="${so.sid}">${so.sts
									}</option>
							</c:forEach>
						</select>
					</div>
					<div id="shows_lis5">
						<table width="190" style=" margin-top:12px;" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td height="25" align="center"><input
									style="font-size: 18px; font-weight: bold;" id="had_baeen"
									type="submit" name="button" value="Find" /></td>
							</tr>
						</table>
					</div>
				</form>
			</div>


			<div id="indx_lic2"
				style="display:none; border:1px solid #ccc; border-width:1px 0px 0px 0px; margin-top:2px;">
				<form id="form1" name="form1" method="post" action="">

					<div id="shows_lis3" style="text-align:center;"></div>
					<div id="shows_lis4" style="text-align:center;"></div>
					<div id="shows_lis5">
						<table width="190" style=" margin-top:12px;" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td height="25" align="center"><input id="had_baeen"
									type="submit" name="button" value="搜 索" /></td>
							</tr>
						</table>
					</div>
				</form>
			</div>

		</div>

		<!--s-->

		<!--Z-->

		<div id="Home_page_zt" style="background-color: #FFF;">
			<div id="page_zt1">
				<div id="fbzb_show">
					<table width="227" height="198" border="0">
						<tr>
							<td height="143">
								<div id="page_zt_bj">
									<s:if test="#session.users==null">
										<a class="spinningeffect" href="javaScript:loadl();"
											target="_blank" style="border:0px solid red;"> <img
											id="img_lisc" src="images/jilu.png" />
										</a>
									</s:if>
									<s:if test="#session.users.dtype.did!='gseaeffasdasc'">
										<a class="spinningeffect" href="javaScript:loadl1s();"
											target="_blank" style="border:0px solid red;"> <img
											id="img_lisc" src="images/jilu.png" />
										</a>
									</s:if>
									<s:if
										test="#session.users!=null && #session.users.dtype.did=='gseaeffasdasc'">
										<a class="spinningeffect" href="ehbtenderaction" target="_blank"
											style="border:0px solid red;"> <img id="img_lisc"
											src="images/jilu.png" />
										</a>
									</s:if>

								</div>
							</td>
						</tr>
						<tr>
							<!--
							<td height="47" class="tabel_fab" align="center" style="color: #F60;">Post A Project</td>
						    -->
						    <td>
							    <div style="margin-left:20px">
							    	<s:if test="#session.users==null">
							            <a style="color:#F60; font-size: 24px;font-weight: bold; text-decoration:none" 
							                href="javaScript:loadl();" target="_blank">
							            	Post A Project
							            </a>
							        </s:if>
							        <s:if test="#session.users.dtype.did!='gseaeffasdasc'">
							            <a style="color:#F60; font-size: 24px;font-weight: bold; text-decoration:none" 
							                href="javaScript:loadls();" target="_blank">
							            	Post A Project
							            </a>
							        </s:if>
							        <s:if test="#session.users!=null && #session.users.dtype.did=='gseaeffasdasc'">
							            <a style="color:#F60; font-size: 24px;font-weight: bold; text-decoration:none" 
							               href="ehbtenderaction" target="_blank">
							            	Post A Project
							            </a>
							        </s:if>
							    </div>
						    </td> 
						</tr>
					</table>
				</div>

			</div>
			<div id="page_zt2">
				<h4 id="h_li"></h4>
				<ul id="ul_list_zlx1" style="margin-top: 33px; font-size: 18px;">
					<li class="li_klist_zlc">Free Sign Up</li>
					<li class="li_klist_zlc">Free Membership</li>
					<li class="li_klist_zlc">Free Project Posting</li>
					<li class="li_klist_zlc">Free Voice Casting</li>
					
					<li class="li_klist_zlc">Access Real Chinese VO Freelancers</li>
					<li class="li_klist_zlc">Access Varieties of Chinese Language</li>
					<li class="li_klist_zlc">Script Translation & Live Session Service</li>
					<!-- <li class="li_klist_zlc">In case of problems, you can contact customer service staff, will help you solve the problem.</li>-->
				</ul>

			</div>
			
			
			
			<div style="float:left;width:1000px;height:2px;">
			    <div style="display:block;margin:0 auto;width:900px;height:2px;border-style:solid none;border-color:grey;border-width:1px;">
			    </div>
			</div>
			
			
			<div id="customer_id" style="width:1000px;height:240px;float:left;border:0px;solid:#ccc; margin:auto;display:block">
			    
			    <div id = "customer_sub_id" style="height:80px;">
			       <table width="900px" height="75px" border="0">	       
			       <tr>
			           <td style="text-align:center; width:1000px;height:45px;font-size: 18px;"></td>
			       </tr>
			       <tr>
			           <td style="text-align:center; width:1000px;height:30px;font-size: 18px;">Meet Our Clients</td>
			           <!-- text-decoration:underline; -->
			       </tr>
			       </table>
			       <HR width="15%" color=#ADD8E6 SIZE=5 />
			    </div>
			    
			    <table width="850px" height="160px" border="0">
			       <tr> 
			       
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:850px;height:160px;" src="images/customer_logo.jpg" > 
			          </td>
			          <!--  
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:100px;height:80px;" src="images/Customer_Logo2.png" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:100px;height:80px;" src="images/Customer_Logo3.png" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:100px;height:80px;" src="images/Customer_Logo9.jpg" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:100px;height:80px;" src="images/Customer_Logo1.jpg" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:100px;height:80px;" src="images/Customer_Logo5.png" > 
			          </td>
			          -->    
			       </tr>
			       <!--  
			       <tr>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:50px;height:40px;" src="images/Customer_Logo5.png" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:50px;height:40px;" src="images/Customer_Logo6.png" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:50px;height:40px;" src="images/Customer_Logo7.png" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:50px;height:40px;" src="images/Customer_Logo8.jpg" > 
			          </td>
			          <td  style="text-align:center;">
			               <img  style="vertical-align:middle; width:50px;height:40px;" src="images/Customer_Logo9.jpg" > 
			          </td>

			       </tr>
			       -->
			    </table>
			</div>
			
			<!-- 
			<div id="page_zt3">
				<div id="fbzb_show">
					<table width="227" height="198" border="0">
						<tr>
							<td height="143">
								<div id="page_zt_bj">

									<s:if test="#session.users==null">
										<a class="spinningeffect" href="javaScript:loadl();"
											target="_blank" style="border:0px solid red;"> <img
											id="img_lisc" src="images/xztp.png" />
										</a>
									</s:if>
									<s:if test="#session.users.dtype.did!='berwartaedfeee'">
										<a class="spinningeffect" href="javaScript:loadl2s();"
											target="_blank" style="border:0px solid red;"> <img
											id="img_lisc" src="images/xztp.png" />
										</a>
									</s:if>
									<s:if
										test="#session.users!=null && #session.users.dtype.did=='berwartaedfeee'">
										<a class="spinningeffect" href="uplaodvoicezp" target="_blank"
											style="border:0px solid red;"> <img id="img_lisc"
											src="images/xztp.png" />
										</a>
									</s:if>
								</div>
							</td>
						</tr>
						<tr>
							<td height="47" class="tabel_fab" align="center"
								style="color: #F60;">Find a job</td>
						</tr>
					</table>
				</div>

			</div>
			 
			<div id="page_zt4">
				<h4 id="h_li"></h4>
				<ul id="ul_list_zlx1" style="margin-top: 0px; font-size: 18px;">
					<li class="li_klist_zlc">Dubbing personnel information can choose whether to open.</li>
					<li class="li_klist_zlc">The price of the bid is given according to the task.</li>
					<li class="li_klist_zlc">Contact phone and bound to the mailbox please fill in, so that we can contact you.</li>
					<li class="li_klist_zlc">Fees and payment methods are unclear click on the top right of the "cost and payment" to understand.</li>
					<li class="li_klist_zlc">This site can be assured to fill in real personal or company information, we will not leak.</li>
					<!-- <li class="li_klist_zlc">In case of problems, you can contact customer service staff, will help you solve the problem.</li> 
				</ul>
			</div>
			david zhang delete 
			-->
			
			
			
		</div>
		<!--Z-->
		<!--F-->
		<div id="haed_fxd_o">
			<table width="1002" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="21" align="left">Follow Us</td>
				</tr>
				<tr>
					<td height="26" align="right">

						<div class="bdsharebuttonbox" style="float:right;">
							<span>
							    <a href="https://www.facebook.com/Chinesevoiceoverfreelancers" style="color:#660;"
								class="bds_fbook" data-cmd="fbook" title="share facebook">Facebook</a>
								<a href="https://twitter.com/cvf_info" class="bds_twi" data-cmd="twi"
								style="color:#660;" title="share Twitter">Twitter</a>
								<!--  <a href="https://plus.google.com/108889387785906156721" style="color:#660;" class="bds_linkedin"
								data-cmd="renren" title="share Google+">Google+</a> -->
								<a href="https://www.linkedin.com/company/chinesevoiceoverfreelancers(cvf)"style="color:#660;" class="bds_linkedin" data-cmd="linkedin"
								title="Linkedin">Linkedin</a> 
								<!--  <a href="https://vimeo.com/cvfdotcom/about" style="color:#660;"class="bds_kaixin001" data-cmd="kaixin001" 
								title="Vimeo">Vimeo</a> -->
								<!--  ascript:;" class="bds_douban" style="color:#660;"
								data-cmd="douban" title="分享到豆瓣网">Douban.com</a> -->
								<a href="javascript:;" style="color:#660;" class="bds_more" data-cmd="more">Other</a>
							</span>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<!--F-->
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
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a>
									<!--  | <a -->
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
	</div>

	<div id="thistis_icns" style="display:none;z-index:998;"></div>
	<div id="thistis_icnicns" style="display:none;z-index:999;">
		<div id="lsncs_olc1">
			<table width="495" height="38" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="43"><img src="images/fsfesrew.png" width="41"
						height="29" /></td>
					<td width="396" align="left"><span id="dlnzhti"
						style="font-family:'微软雅黑';">Reminder:</span></td>
					<td width="45" align="center" valign="middle">
					   <a
						style="text-decoration:none;" id="fklwnlselx" href="javascript:;">
						      <div
								id="flsvwlke">
								<span style="font-weight:bold; font-size:28px; color:#990;">✖</span>
							</div> </a></td>
				</tr>
			</table>
		</div>
		<div id="lsncs_olc2">
			<div id="tishtusl">
				<span style="font-weight:bold; font-size:28px; color:red;">!</span>
			</div>
			<div id="tishtuslxx">
				<span class="svege" style="font-family:'微软雅黑'; font-size:15px;">Hello, please log on to my home page!</span>
			</div>
		</div>
		<div id="lsncs_olc3">
		    <!-- ehloginUserehs!findUserTypeEh.action -->
			<a class="sesscs" href="ehloginUserehs!findUserTypeEh.action"><input
				id="cnwlbann1" type="button" value="register" /> </a> <a class="sesscs"
				href="ehindexpage!loginconEh"><input id="cnwlbann1" type="button"
				value="login" /> </a>
		</div>
	</div>


	<div
		style="border:1px solid #ccc; width: 150px; height: 198px; position:fixed;right: 0px; top:300px; z-index:1;">
		<div
			style="border:1px solid #ccc; width: 100px; height: 100px; margin-top: 10px;">
			<img alt="客服" src="images/kefudianh.png" style="margin-top: 5px;">
		</div>
		<a href="gochat.action"
			style="text-decoration: none; color: #F60;"><div id="dianjikefu"
				style="border:1px solid #ccc; border-radius:5px; text-align:center; width: 100px; height: 30px; margin-top: 10px;">
				<div style="margin-top: 5px; ">Online Chat</div>
			</div></a>
		<div
			style="border:0px solid #ccc; width: 140px; height: 30px; margin-top: 5px;">
			<div style="margin-top: 5px; font-size: 14px;">working time:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;09:00-22:00 (Beijing Time)</div>
		</div>
	</div>


</body>



</html>
