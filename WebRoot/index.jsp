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

<title>Chinesevoicefreelancers-CVF首页</title>
<!-- <link rel="icon" href="images/ico/voice-1.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/ico/voice-1.ico" type="image/x-icon" /> -->
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
		$(".svege").html("您好,当前用户为配音员！无法发布任务!");
		$("#thistis_icns").fadeIn(200);
		$("#thistis_icnicns").slideDown(200);

	}
	function loadl2s() {
		$(".svege").html("");
		$(".svege").html("您好,当前用户为任务方！无法发布作品!");
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
	<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

	<div class="toolbar">
		<a href="#" class="toolbar-item toolbar-item-weixin"> <span
			class="toolbar-layer"></span>
		</a> <a href="#" class="toolbar-item toolbar-item-feedback"></a> <a
			href="#" class="toolbar-item toolbar-item-app"> <span
			class="toolbar-layer"></span>
		</a> <a href="javascript:scroll(0,0)" id="top"
			class="toolbar-item toolbar-item-top"></a>
	</div>
	<div id="head_list_syel" style="width: 100%;">
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
						<li class="li_lasp"><s:if test="#session.users!=null">
								<a class="li_laspc_a" href="loginUsers!rupinuzy.action">${users.iuserName}</a>
							</s:if></li>
						<li class="li_lasp"><s:if test="#session.users!=null">
						    <a href = "usersystemnews.action" target = "_blank"><img src = "images/notification.png" with ="20" height = "16.8"/></a>
						   <!--   <img id="notification_id" src="images/notification.png" width="20" height="16.8"  href="loginUsers!rupinuzy.action">
						   -->
						</s:if></li>
						
						<li class="li_lasp" style="color: #690;">欢迎来到CVF配音</li>
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
						<s:if test="#session.users==null">
							<li class="li_lasp1" id="cwkneke"><a style="color:#F60;"
								class="li_laspc_a1" id="li_lasec_imc" href="javascript:;">进入我的主页>></a>
							</li>
						</s:if>
						<s:if test="#session.users!=null">
							<li class="li_lasp1"><a class="li_laspc_a1"
								style="color:#F60;" href="loginUsers!rupinuzy.action">进入我的主页>></a></li>
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

		<!--D-->
		<div style="width: 100%; height: 60px; border:0px solid red;">

			<div id="d_ncnncn" style="background-color:#EBEBEB;">
				<div id="d_uucnns">


					<a href="index.action">
						<div id="d_list_lic9"
							style="border-top:5px solid #F16700; background-color:#fff;">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="80" height="45" align="right"><div
											class="d_utnkcn1"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px 0px;"></div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="color: #F16700;">网站首页</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="btendervoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn2" style="margin-left:50px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">配音任务</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="voiceyindex.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn3" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">配音员</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="worksvoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn4" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">配音作品</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ranking.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn5" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">排行榜</samp></td>
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
							height="42" align="center">任务搜索</td>
						<td width="809" align="right" valign="bottom">
							<ul style="display: none;">
								<a href="javascript:;" style=" text-decoration:none; color:#660"><li
									id="index_dianji"
									style="float:right; font-family:'微软雅黑'; font-size:14px; font-weight:bold; color:#690; width:100px; height:30px; border:1px solid #ccc; list-style:none; text-align:center; line-height:30px; position:relative; top:5px; border-bottom-color:;margin-left:2px;">公司</li>
								</a>
								<a href="javascript:;" style=" text-decoration:none; color:#660"><li
									id="index_dianer"
									style="float:right; font-family:'微软雅黑'; font-size:14px; font-weight:bold; color:#690; width:100px; height:30px; border:1px solid #ccc; list-style:none; text-align:center; line-height:30px; position:relative; top:5px; border-bottom-color:#FFF;">个人</li>
								</a>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div id="indx_lic1"
				style=" border:1px solid #ccc; border-width:1px 0px 0px 0px; margin-top:2px;">
				<form id="form1" name="form1" method="post" action="btendervoiw">
					<div id="shows_lis1" style="text-align:center;">
						<select name="hcyy" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">语言类型</option>
							<c:forEach items="${listlgp}" var="lg">
								<option id="index_in" value="${lg.lid }">${lg.lgtypeName
									}</option>
							</c:forEach>
						</select>
					</div>
					<div id="shows_lis2" style="text-align:center;">
						<select name="hcpe" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">配音类型</option>
							<c:forEach items="${listTvoc }" var="ti">
								<option id="index_in" value="${ti.tvid}">${ti.tvtypeName
									}</option>
							</c:forEach>
						</select>
					</div>
					<div id="shows_lis3" style="text-align:center;">
						<select name="hcxbID" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">要求性别</option>
							<option id="index_in" value="男">男</option>
							<option id="index_in" value="女">女</option>
							<option id="index_in" value="男女混合">男女混合</option>
							<option id="index_in" value="不限">不限</option>
						</select>

					</div>
					<div id="shows_lis4" style="text-align:center;">
						<select name="hcyd" id="xialiek" style="outline:medium;">
							<option id="index_in" value="1">要求口音</option>
							<c:forEach items="${listsrd}" var="so">
								<option id="index_in" value="${so.sid}">${so.scrowdName
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
									type="submit" name="button" value="搜索" /></td>
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
										<a class="spinningeffect" href="btenderaction" target="_blank"
											style="border:0px solid red;"> <img id="img_lisc"
											src="images/jilu.png" />
										</a>
									</s:if>

								</div>
							</td>
						</tr>
						<tr>
							<td height="47" class="tabel_fab" align="center"
								style="color: #F60;">发布任务</td>
						</tr>
					</table>
				</div>

			</div>
			<div id="page_zt2">
				<h4 id="h_li">任务方提示</h4>
				<ul id="ul_list_zlx1">
					<li class="li_klist_zlc">任务方可免费发布自己需要配音的任务.</li>
					<li class="li_klist_zlc">任务方可根据配音员出的竞标价自由选择配音员.</li>
					<li class="li_klist_zlc">联系电话和绑定的邮箱请认真填写,方便我们联系您.</li>
					<li class="li_klist_zlc">费用和支付方式不清楚的可点击右上方的《费用与支付》进行了解.</li>
					<li class="li_klist_zlc">本站尽可放心填写真实个人或者公司资料,我们将不会外泄.</li>
					<li class="li_klist_zlc">遇到问题时,可联系客服人员,会帮助你解决问题.</li>
				</ul>

			</div>
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
								style="color: #F60;">发布作品</td>
						</tr>
					</table>
				</div>

			</div>
			<div id="page_zt4">
				<h4 id="h_li">配音员提示</h4>
				<ul id="ul_list_zlx1">
					<li class="li_klist_zlc">配音员资料可选择是否公开.</li>
					<li class="li_klist_zlc">根据任务情况给出竞标的价格.</li>
					<li class="li_klist_zlc">联系电话和绑定的邮箱请认真填写,方便我们联系您.</li>
					<li class="li_klist_zlc">费用和支付方式不清楚的可点击右上方的《费用与支付》进行了解.</li>
					<li class="li_klist_zlc">本站尽可放心填写真实个人或者公司资料,我们将不会外泄.</li>
					<li class="li_klist_zlc">遇到问题时,可联系客服人员,会帮助你解决问题.</li>
				</ul>
			</div>
		</div>
		<!--Z-->
		<!--F-->
		<div id="haed_fxd_o">
			<table width="1002" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="21" align="left">分享网站至：</td>
				</tr>
				<tr>
					<td height="26" align="right">

						<div class="bdsharebuttonbox" style="float:right;">
							<span> <a href="javascript:;" style="color:#660;"
								class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a><a
								href="javascript:;" class="bds_tqq" data-cmd="tqq"
								style="color:#660;" title="分享到腾讯微博">腾讯微博</a><a
								href="javascript:;" style="color:#660;" class="bds_renren"
								data-cmd="renren" title="分享到人人网">人人网</a><a href="javascript:;"
								style="color:#660;" class="bds_weixin" data-cmd="weixin"
								title="分享到微信">微信</a> <a href="javascript:;" style="color:#660;"
								class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网">开心网</a><a
								href="javascript:;" class="bds_douban" style="color:#660;"
								data-cmd="douban" title="分享到豆瓣网">豆瓣网</a><a href="javascript:;"
								style="color:#660;" class="bds_more" data-cmd="more">其他</a>
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
				<div class="foot">
					<div class="bb1">
						<div class="bb1-img"></div>
						<div class="bb1-text">
							<ul>
								<LI>重庆市沙坪坝区金沙时代11-31-7</LI>
							</ul>
						</div>
					</div>
					<div class="bb2" style="border:0px solid red; width: 350px;">
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
					<div class="bb3" style="border:0px solid red;width: 199px;">
						<div class="bb3-img" style="border:0px solid red;"></div>
						<div class="bb3-text" style="border:0px solid red;width: 109px;">
							<ul>
								<LI>(86)173 167 80 906</LI>
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
								<a href='indexpage!jumpjylc.action' target="_blank">交易流程</a> | <a
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
								Chinesevoiceoverfreelancers(CVF) © s.cn All Rights
								Reserved.渝ICP备08106896号经营许可证闽B2-20110061.</span></li>
					</ul>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endbottom-->





		</div>

		<!-- d1 -->
	</div>





	<div id="thistis_icns" style="display: none; z-index: 2;"></div>
	<div id="thistis_icnicns" style="display: none; z-index: 2;">
		<div id="lsncs_olc1">
			<table width="495" height="38" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="43"><img src="images/fsfesrew.png" width="41"
						height="29" /></td>
					<td width="396" align="left"><span id="dlnzhti"
						style="font-family:'微软雅黑';">温馨提示:</span></td>
					<td width="45" align="center" valign="middle"><a
						style="text-decoration:none;" id="fklwnlselx" href="javascript:;"><div
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
				<span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!请登陆进入我的主页!</span>
			</div>
		</div>
		<div id="lsncs_olc3">
			<a class="sesscs" href="loginUsers!findUserType"><input
				id="cnwlbann1" type="button" value="马上注册" /> </a> <a class="sesscs"
				href="indexpage!logincon"><input id="cnwlbann1" type="button"
				value="立即登陆" /> </a>
		</div>
	</div>


	<div
		style="border:1px solid #ccc; width: 150px; height: 190px; position:fixed;right: 0px; top:300px; z-index: 1;">
		<div
			style="border:1px solid #ccc; width: 100px; height: 100px; margin-top: 10px;">
			<img alt="客服" src="images/kefudianh.png" style="margin-top: 5px;">
		</div>
		<a href="javascript:;"
			onclick="window.open('tencent://message/?uin=83977692&amp;Site=www.bejson.com&amp;Menu=yes')"
			style="text-decoration: none; color: #F60;"><div id="dianjikefu"
				style="border:1px solid #ccc; border-radius:5px; text-align:center; width: 100px; height: 30px; margin-top: 10px;">
				<div style="margin-top: 5px; ">联系客服</div>
			</div></a>
		<div
			style="border:0px solid #ccc; width: 140px; height: 30px; margin-top: 5px;">
			<div style="margin-top: 5px; font-size: 14px;">在线时间:09:00-22:00</div>
		</div>
	</div>


</body>



</html>
