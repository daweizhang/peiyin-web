<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>PROJECTS</title>

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
<script type="text/javascript" src="js-english/tanchu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/styletanc.css" type="text/css"></link>
<script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
<link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
<link rel="stylesheet" href="css/spinners.css" type="text/css"></link>
</head>

<style type="text/css" media="screen">
a {
	color: #2B4A78;
	text-decoration: none;
}

a:hover {
	color: #2B4A78;
}

a:focus,input:focus {
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

#pageNav {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}

#pageNav a:hover {
	text-decoration: none;
	background: #fff4d8;
}

.pyy_pyry314 span {
	border: 0px solid #ccc;
	width: 95px;
	height: 25px;
	margin-top: 13px;
	text-align: center;
	line-height: 25px;
	border-radius: 5px;
	background-color: #009100;
	color: #ffffff;
	font-size: 13px;
	cursor: pointer;
}

.pyy_pyry351 {
	width: 100%;
}

#ploejns {
	font-weight: bold;
}
</style>
<body>
	<div id="tanschusb789" style="display: none;"></div>
	<div class="card852" style="">
		<span class="spinner-loader">Loading&#8230;</span>
		<div class="jiazaiz963">Loading......</div>
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
								<a class="li_laspc_a" style="color: red;"
									href="ehloginUserehs!rupinuzyEh.action">${users.iuserName}</a>
							</s:if></li>
						<li class="li_lasp" style="color: #690;">Welcome to CVF
							!</li>
						<li class="li_lasp" style="color: #690;">>>切换</li>
						<li class="li_lasp"><a class="li_laspc_a" href="index.action">中文</a></li>
						<s:if test="#session.users==null">
							<li class="li_lasp"><a class="li_laspc_a" target="_blank"
								href="ehindexpage!loginconEh.action">LOGIN</a>/<a
								class="li_laspc_a" href="ehloginUserehs!findUserTypeEh.action"
								target="_blank">SIGN UP</a></li>
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
						<div id="d_list_lic9" style="">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="80" height="45" align="right"><div
											class="d_utnkcn1" style="margin-left:48px;"></div></td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="">HOME</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehbtendervoiw.action">
						<div id="d_list_lic9"
							style="border-top:5px solid #F16700; background-color:#fff;">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn2"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -75px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="color: #F16700;">PROJECTS</samp></td>
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

		<!----------主体样式----------- -->
		<div id="void_nes1">

			<div id="pyy_lsnls">
				<div class="selectbox" >
					<div id="lskne4sef1"></div>
					<div id="lskne4sef2">
						<div id="efgabepp1"></div>
						<div id="efgabepp2"></div>
						<div id="efgabepp3"></div>
						<div id="efgabepp4"></div>
						<div id="efgabepp5"></div>
					</div>


					<div class="selemediv" style="z-index:555;">
						<div class="selemenu" style="z-index:999;position:absolute; margin-left:75px;">
							<a href="javaScript:;" style="text-decoration: none;">
								<span class="csinput">CATEGORY</span>
							</a>
						</div>
						<div class="citylist2" id="sflken"
							style="z-index:1; margin-top:65px;">
							<div class="xzk" style="z-index:1;">
								<ul class="chengshi" style="z-index:1;">
									<c:forEach items="${tlistT}" var="tvo">
										<a href="javaScript:findbvtype('${tvo.tvid}');"><li>${tvo.tts}</li></a>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<div class="selemediv1" style="z-index:555;">
						<div class="selemenu1" style="z-index:999;position:absolute;margin-left:75px">
							<a href="javaScript:;" style="text-decoration: none;"><span
								class="csinput1">GENDER</span></a>
						</div>
						<div class="citylist3" id="sflken1"
							style="z-index:1; margin-top:65px;">
							<div class="xzk1" style="z-index:1;">
								<ul class="chengshi1" style="z-index:1;">
									<c:forEach items="${sexslist }" var="sx">
										<c:forEach items="${sx.value}" var="value">
											<a href="javaScript:findbstype('${sx.key}');"><li>${value}</li></a>
										</c:forEach>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>


					<div class="selemediv2" style="z-index:555;">
						<div class="selemenu2" style="z-index:999;position:absolute;margin-left:75px">
							<a href="javaScript:;" style="text-decoration: none;"><span
								class="csinput2">LANGUAGE</span></a>
						</div>
						<div class="citylist4" id="sflken2"
							style="z-index:1;margin-top:65px;">
							<div class="xzk2">
								<ul class="chengshi2">
									<c:forEach items="${tlistl}" var="lg">
										<a href="javaScript:findbltype('${lg.lid}');"><li>${lg.lts}</li></a>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>


					<div class="selemediv3" style="z-index:555;">
						<div class="selemenu3" style="z-index:999;position:absolute;margin-left:75px">
							<a href="javaScript:;" style="text-decoration: none;"><span
								class="csinput3">ACCENT</span></a>
						</div>
						<div class="citylist5" id="sflken3"
							style="z-index:1;margin-top:65px;">
							<div class="xzk3">
								<ul class="chengshi3">
									<c:forEach items="${tlists}" var="so">
										<a href="javaScript:findbrtype('${so.sid}');"><li>${so.sts }</li></a>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
                    
                    <!--
					<a href="loginUsers!findUserType.action" target="_blank" id='fsbbb'>
						<div
							id="fabucon">
							<span id="fsfvebb">Search</span>
						</div>
					</a>  -->
				</div>


			</div>
			<div id="pyy_paixu">
				<ul id="pyy_ylcs">
					<a class="pyy_acs1" href="javascript:fingoderby(1);"><li
						id="ppy_ulns_1" class="pyy_lics" style="width: 120px;">↑Time</li></a>
					<a class="pyy_acs1" href="javascript:fingoderby(2);"><li
						id="ppy_ulns_2" class="pyy_lics" style="width: 120px;">↓Budget</li></a>
					<a class="pyy_acs1" href="javascript:fingoderby(3);"><li
						id="ppy_ulns_3" class="pyy_lics" style="width: 120px;">↓Auditions</li></a>
				</ul>

				<input id="doderbyid" type="hidden" value="1" />
				<!-- 
				<span id="ztscss">&nbsp;&nbsp;Per
					Page&nbsp;<span id="yemacss1"></span>&nbsp;
				</span> 
				<span id="ztscss">Total&nbsp;<span id="yemacss2"></span>&nbsp;
				</span>
			    -->


			</div>

			<div id="pyy_pyry">
				<div id="pyy_pyry1" style="border:0px solid red; width: 704px;">
					<div id="pyy_pyry3" style=" width: 1000px;">
						<div class="pyy_pyry31" style=" width: 100%;">
							<span class="pyy_pyry311">Title</span> 
							<span class="pyy_pyry31ss">Category</span> 
							<span class="pyy_pyry312" style="width:100px; ">Status</span>
							<span class="pyy_pyry313">&nbsp;&nbsp;Budget</span>
						</div>
						<div class="pyy_pyry35" id="btednts"></div>
					</div>
					<div id="pyy_pyry4" style="width:1000px">
						<div id="pageNav" style="width:100%;margin-top: 15px;"></div>
					</div>

				</div>

			</div>



		</div>

		<input id="zhitis" type="hidden" value="${zhitj}"> <input
			id="bvtype" type="hidden" value=""> <input id="bltype"
			type="hidden" value=""> <input id="bstype" type="hidden"
			value=""> <input id="brtype" type="hidden" value="">

		<!----------主体样式------------->
		<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 50px;">
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
								<a href='ehindexpage!jumpjylcEh.action' target="_blank">HOW IT WORKS</a> | <a href='ehindexpage!jumpfyfkEh.action'
									target="_blank">FEES & PAYMENT</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">Q & A</a> | <a href='ehindexpage!jumptsjyEh.action'
									target="_blank">CONTACT US</a> | <a
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a>
								<!--  | <a -->
								<!-- href='javaScript:;'>帮助中心</a> | <a
									href='javaScript:;'>隐私保护</a> | <a
									href='javaScript:;'>公司地图</a> | <a
									href='https://auth.alipay.com/login/index.htm' target="_blank">支付宝</a> -->
								| <a href='https://www.paypal.com/c2/webapps/mpp/home'
									target="_blank">PAYPAL</a>
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
	$(function() {

		showsub(1);
		//加载
		//showlaod(500,"#ccc");
	});

	function showsub(id) {
		var condition;
		if ($("#zhitis").val() == "") {
			condition = $("#bvtype").val() + $("#bstype").val()
					+ $("#bltype").val() + $("#brtype").val() + "ull";
		} else {
			//首页的条件
			condition = $("#zhitis").val();
		}
		var px = $("#doderbyid").val();
		$("#btednts").html("");
		var html = "";
		pageNav.pre = "上一页";
		pageNav.next = "下一页";
		pageNav.fn = function(p, pn) {
			document.getElementById("test").innerHTML = "当前页:" + p
					+ "  ,  总页: " + pn;
		};

		$("#tanschusb789").show();
		$(".card852").show();
		$
				.getJSON(
						"/peiyin//ehbtendervoiw.action",
						{
							"pagenumber" : id,
							"oderma" : px,
							"conditionsber" : condition
						},
						function(data) {
							$(data.btenlist.items)
									.each(
											function() {
												var cds = "";
												var isxt = "";
												if (this.rengj == '111') {
													cds = "abroad";
													isxt = parseInt(this.rermb / 6);
												} else {
													cds = "domestic";
													isxt = parseInt(this.rermb / 6);
												}
												var zts = "";
												if (this.rwzts == '0') {
													zts = "Audition";
												}
												if (this.rwzts == '1') {
													zts = "Working";
												}
												if (this.rwzts == '2') {
													zts = "completed";
												}
												html += "<div class='pyy_pyry351'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank' class='lis_ind'>"
														//+ "<span class='pyy_pyry311'>("
														//+ cds
														//+ ")"
														+ "<span class='pyy_pyry311'>"
														+ this.rwbName
																.substring(0,
																		20)
														+ "...</span>"
														+ "</a>"
														+ "<span class='pyy_pyry311dd'>"
														+ this.reTypebf
														+ "</span>"
														+ "<span class='pyy_pyry312'>&nbsp;&nbsp;"
														+ "<span id='ploejns'>"
														//+ this.rwcount
														+ "</span>"+zts+""
														+ "</span>"
														+ "<span class='pyy_pyry313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp"
														+ isxt
														+ "$</span>"
														+ "<span class='pyy_pyry314'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank'><span>View details</span></a>"
														+ "</span>" + "</div>";
											});
							$("#btednts").html(html);
							$("#yemacss2").html(data.btenlist.totalCount);
							$("#yemacss1").html(data.btenlist.pageSize);
							pageNav.go(data.btenlist.currPageNo,
									data.btenlist.totalPageCount);

						});
		$("#tanschusb789").fadeOut(500);
		$(".card852").fadeOut(500);
		$('html,body').animate({
			scrollTop : 0
		}, 400);

	}

	//排序
	function fingoderby(px) {
		$("#zhitis").val("");
		var condition = $("#bvtype").val() + $("#bstype").val()
				+ $("#bltype").val() + $("#brtype").val() + "ull";
		$("#doderbyid").val("");
		$("#doderbyid").val(px);
		$("#btednts").html("");
		var html = "";
		pageNav.pre = "上一页";
		pageNav.next = "下一页";
		pageNav.fn = function(p, pn) {
			document.getElementById("test").innerHTML = "当前页:" + p
					+ "  ,  总页: " + pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
		$
				.getJSON(
						"/peiyin//btendervoiw.action",
						{
							"conditionsber" : condition,
							"oderma" : px
						},
						function(data) {
							$(data.btenlist.items)
									.each(
											function() {
												var cds = "";
												var isxt = "";
												if (this.rengj == '111') {
													cds = "abroad";
													isxt = parseInt(this.rermb / 6);
												} else {
													cds = "domestic";
													isxt = parseInt(this.rermb / 6);
												}

												var zts = "";
												if (this.rwzts == '0') {
													zts = "Bidding";
												}
												if (this.rwzts == '1') {
													zts = "Conduct";
												}
												if (this.rwzts == '2') {
													zts = "complete";
												}
												html += "<div class='pyy_pyry351'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank' class='lis_ind'>"
														+ "<span class='pyy_pyry311'>("
														+ cds
														+ ")"
														+ this.rwbName
																.substring(0,
																		20)
														+ "...</span>"
														+ "</a>"
														+ "<span class='pyy_pyry311dd'>"
														+ this.reTypebf
														+ "</span>"
														+ "<span class='pyy_pyry312'>&nbsp;&nbsp;"
														+ "<span id='ploejns'>&nbsp&nbsp"
														+ this.rwcount
														+ "</span>("+zts+")"
														+ "</span>"
														+ "<span class='pyy_pyry313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp≈"
														+ isxt
														+ "$</span>"
														+ "<span class='pyy_pyry314'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank'><span>View details</span></a>"
														+ "</span>" + "</div>";
											});
							$("#btednts").html(html);
							$("#yemacss2").html(data.btenlist.totalCount);
							$("#yemacss1").html(data.btenlist.pageSize);
							pageNav.go(data.btenlist.currPageNo,
									data.btenlist.totalPageCount);
						});
		$("#tanschusb789").fadeOut(500);
		$(".card852").fadeOut(500);
		$('html,body').animate({
			scrollTop : 0
		}, 400);

	}

	//配音类型
	function findbvtype(bv) {
		$("#bvtype").val(bv + "V,");
		screeningbtenber();
	}
	//语言类型
	function findbltype(bl) {
		$("#bltype").val(bl + "L,");
		screeningbtenber();
	}
	//年龄阶段
	function findbrtype(br) {
		$("#brtype").val(br + "R,");
		screeningbtenber();
	}
	//性别要求
	function findbstype(bs) {
		$("#bstype").val(bs + "S,");
		screeningbtenber();
	}

	//条件清除
	function fin1() {
		$("#efgabepp1").html("");
		$("#bvtype").val("");
		klnsekln();
		screeningbtenber();
	}
	function fin2() {
		$("#efgabepp2").html("");
		$("#bstype").val("");
		klnsekln();
		screeningbtenber();
	}
	function fin3() {
		$("#efgabepp3").html("");
		$("#bltype").val("");
		klnsekln();
		screeningbtenber();
	}
	function fin4() {
		$("#efgabepp4").html("");
		$("#brtype").val("");
		klnsekln();
		screeningbtenber();
	}

	//清除条件
	function find8() {
		$("#efgabepp1").html("");
		$("#efgabepp2").html("");
		$("#efgabepp3").html("");
		$("#efgabepp4").html("");
		$("#efgabepp5").html("");
		$("#bvtype").val("");
		$("#bstype").val("");
		$("#bltype").val("");
		$("#brtype").val("");
		screeningbtenber();
	}

	function screeningbtenber() {
		$("#zhitis").val("");
		var condition = $("#bvtype").val() + $("#bstype").val()
				+ $("#bltype").val() + $("#brtype").val() + "ull";
		var px = $("#doderbyid").val();
		//alert(condition+"---"+px);
		$("#btednts").html("");
		var html = "";
		pageNav.pre = "上一页";
		pageNav.next = "下一页";
		pageNav.fn = function(p, pn) {
			document.getElementById("test").innerHTML = "当前页:" + p
					+ "  ,  总页: " + pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
		$
				.getJSON(
						"/peiyin//btendervoiw.action",
						{
							"conditionsber" : condition,
							"oderma" : px
						},
						function(data) {
							$(data.btenlist.items)
									.each(
											function() {
												var cds = "";
												var isxt = "";
												if (this.rengj == '111') {
													cds = "abroad";
													isxt = parseInt(this.rermb / 6);
												} else {
													cds = "domestic";
													isxt = parseInt(this.rermb / 6);
												}

												var zts = "";
												if (this.rwzts == '0') {
													zts = "Bidding";
												}
												if (this.rwzts == '1') {
													zts = "Conduct";
												}
												if (this.rwzts == '2') {
													zts = "complete";
												}
												html += "<div class='pyy_pyry351'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank' class='lis_ind'>"
														+ "<span class='pyy_pyry311'>("
														+ cds
														+ ")"
														+ this.rwbName
																.substring(0,
																		20)
														+ "...</span>"
														+ "</a>"
														+ "<span class='pyy_pyry311dd'>"
														+ this.reTypebf
														+ "</span>"
														+ "<span class='pyy_pyry312'>&nbsp;&nbsp;"
														+ "<span id='ploejns'>&nbsp&nbsp"
														+ this.rwcount
														+ "</span>("+zts+")"
														+ "</span>"
														+ "<span class='pyy_pyry313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp≈"
														+ isxt
														+ "$</span>"
														+ "<span class='pyy_pyry314'>"
														+ "<a href='ehvoiwtaskbt.action?bid="
														+ this.rwbid
														+ "' target='_blank'><span>View details</span></a>"
														+ "</span>" + "</div>";
											});
							$("#btednts").html(html);
							$("#yemacss2").html(data.btenlist.totalCount);
							$("#yemacss1").html(data.btenlist.pageSize);
							pageNav.go(data.btenlist.currPageNo,
									data.btenlist.totalPageCount);
						});

		$("#tanschusb789").fadeOut(500);
		$(".card852").fadeOut(500);
		$('html,body').animate({
			scrollTop : 0
		}, 400);
	}
</script>


</html>
