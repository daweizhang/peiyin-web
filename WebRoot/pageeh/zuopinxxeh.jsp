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
    
    <title>Detailed work</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
 	<script type="text/javascript" src="js/indexJS.js"></script>
    <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
  	<script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/tishi.css" type="text/css"></link>
  	<script type="text/javascript" src="js/tishi.js"></script>
  	<link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  	<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  </head>
   <style type="text/css" media="screen">
    a {
        color: #2B4A78;
        text-decoration: none;
    }
    a:hover {
        
        text-decoration: none;
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
<script type="text/javascript">
		   
	$(function(){
		zpxx();
		var biaoti='${wrks.wehName}';
		var dizi='${wrks.worksFile}';
		$("#jquery_jplayer_1").jPlayer({
			ready: function (event) {
				$(this).jPlayer("setMedia", {
					title: ""+biaoti.substring(0,15)+"...",
					m4a: "yinyue/"+dizi+"",
					oga: "yinyue/"+dizi+""
				}).jPlayer("play"); 
			},
			swfPath: "../jplayer",
			supplied: "oga,m4a",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true,
			remainingDuration: true,
			toggleDuration: true
		});
		showlaod(500,"#ccc");
	});
		  
		 
</script>
<body>
<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

<div style="width: 100%; margin-bottom: 0px; overflow: hidden;">
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
		
   <div id="zpxx">
   		<div class="xqweizi1">
    			<a class="xqweizi11" href="index.action" title="网站首页">HOME</a>＞
    			<a href="worksvoiw.action" title="网站首页">Works</a>＞
    			<a href="javaScript:;" title="网站首页">Detail</a>
    	</div>
    	<div class="zpxx1">
    		<div class="zpxx11">
    			<div class="zpxx111">
    					<span class="zpxx1111" ><img src="images/small5.gif"></img></span>
    					<span class="zpxx1112">${fn:substring(wrks.wehName,0,25)}...</span>
    			</div>
    			<div class="zpxx112">
    			    <div class="zpxx1121">
    					<span class="zpxx11211">Category： ${wrks.tvoice.tts}</span>
    					<span class="zpxx11212">Talent ID： ${inus.iname} </span>
    				</div>
    				<div class="zpxx1121">
    					<span class="zpxx11211"> Language： ${wrks.lgtype.lts}</span>
    					<span class="zpxx11212"> Uploaded Time： ${wrks.wtime}</span>
    				</div>
    				<div class="zpxx1121">
    					<span class="zpxx11211"> Played times： ${wrks.wliulanRs}</span>
    					<span class="zpxx11212"></span>
    				</div>
    				
    			</div>
    			<div class="zpxx113">
    			<!-- 	<div id='jquery_jplayer_1' class='jp-jplayer'></div>
					<div id='jp_container_1' class='jp-audio' role='application' aria-label='media player'>
						<div class='jp-type-single'>
							<div class='jp-gui jp-interface'>
								<div class='jp-controls'>
									<button class='jp-play' role='button' tabindex='0'>play</button>
									<button class='jp-stop' role='button' tabindex='0'>stop</button>
								</div>
								<div class='jp-progress'>
									<div class='jp-seek-bar'>
										<div class='jp-play-bar'></div>
									</div>
								</div>
								<div class='jp-volume-controls'>
									<button class='jp-mute' role='button' tabindex='0'>mute</button>
									<button class='jp-volume-max' role='button' tabindex='0'>max volume</button>
									<div class='jp-volume-bar'>
										<div class='jp-volume-bar-value'></div>
									</div>
								</div>
								<div class='jp-time-holder'>
									<div class='jp-current-time' role='timer' aria-label='time'>&nbsp;</div>
									<div class='jp-duration' role='timer' aria-label='duration'>&nbsp;</div>
									<div class='jp-toggles'>
										<button class='jp-repeat' role='button' tabindex='0'>repeat</button>
									</div>
								</div>
							</div>
							<div class='jp-details'>
								<div class='jp-title' aria-label='title'>&nbsp;</div>
							</div>
						</div>
					</div> -->
    			</div>
    		</div>
    		<div class="zpxx12">
    			<div class="zpxx121">
    				<div class="zpxx1211">
    					<span class="zpxx12111"></span>
    					<span class="zpxx12112">Talent Info</span>
    				</div>
    				<div class="zpxx1212">
		    			<c:if test="${inus.iportrait!=null}">	
		    			   <a href="#"><img src="upload/${inus.iportrait}" width="139" height="139"></img></a>
						</c:if>
						<c:if test="${inus.iportrait==null}">
						   <a href="#"><img src="upload/txtub.png" width="139" height="139"></img></a>
						</c:if>
    				</div>
    				<div class="zpxx1213">
    				    
    					<span class="zpxx12131"><a href="#">&nbsp;${inus.iname }</a></span>
    					<!-- <span class="zpxx12132"></span> -->
    				</div>
    				<div class="zpxx1214">
    					&nbsp;&nbsp;<span>${inus.ifehs.ifehsex }</span>
    				</div>
    				<div class="zpxx1215">
    					<div class="zpxx12151">
    						Credit<span> ${inus.icredibility } </span>
    					</div>
    					<div class="zpxx12152">
    						Finished Projects<span> ${inus.icredibility } </span>
    					</div>
    				</div>
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

</html>
