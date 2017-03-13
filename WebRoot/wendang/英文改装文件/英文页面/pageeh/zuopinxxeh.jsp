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
    
    <title>作品详细</title>
    
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
		var biaoti='${wrks.worksName}';
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
<!--导航---------------------->

<div id="voie_daohang1" style="border:0px solid red; height: 60px;">
<div style="width: 100%; height: 60px; border:0px solid red;">
<div id="d_ncnncn" style="background-color:#EBEBEB;">
  <div id="d_uucnns">
  <a href="index.action">
     <div id="d_list_lic9">
       <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:47px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:48px;"></div></td>
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
     <div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn4" style="margin-left:44px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -245px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp" style="color: #F16700;">配音作品</samp></td>
         </tr>
       </table>
     </div>
     </a>
     <a href="ranking.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn5" style="margin-left:44px; "></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">排行榜</samp></td>
         </tr>
       </table>
     </div>
     </a>
    </div>
   </div>
  </div>
 </div>
</div>
<!--导航---------------------->
   <div id="zpxx">
   		<div class="xqweizi1">
    			<a class="xqweizi11" href="index.action" title="网站首页">网站首页</a>＞
    			<a href="worksvoiw.action" title="网站首页">配音作品</a>＞
    			<a href="javaScript:;" title="网站首页">作品详细</a>
    	</div>
    	<div class="zpxx1">
    		<div class="zpxx11">
    			<div class="zpxx111">
    					<span class="zpxx1111" ><img src="images/small5.gif"></img></span>
    					<span class="zpxx1112">${fn:substring(wrks.worksName,0,15)}...</span>
    			</div>
    			<div class="zpxx112">
    			    <div class="zpxx1121">
    					<span class="zpxx11211">作品类型： ${wrks.tvoice.tvtypeName}</span>
    					<span class="zpxx11212">上传会员： ${fn:substring(inus.iuserName,0,3)}***${fn:substring(inus.iuserName,5,7)} </span>
    				</div>
    				<div class="zpxx1121">
    					<span class="zpxx11211"> 配音语言： ${wrks.lgtype.lgtypeName}</span>
    					<span class="zpxx11212"> 上传时间： ${wrks.wtime}</span>
    				</div>
    				<div class="zpxx1121">
    					<span class="zpxx11211"> 播放次数： ${wrks.wliulanRs}</span>
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
    					<span class="zpxx12112">配音员资料</span>
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
    					&nbsp;&nbsp;<span>${inus.isex }</span>
    				</div>
    				<div class="zpxx1215">
    					<div class="zpxx12151">
    						信誉度<span> ${inus.icredibility } </span>(M)
    					</div>
    					<div class="zpxx12152">
    						交易量<span> 0 </span>(次)
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
   </div>
   
   <!----------底部样式------------->
<div>
<div id="haed_dibu_cc" style="margin-top:40px;">
<div id="longyqlj_lass">
  <div id="linjie1">
    <ul id="yqin_fl">
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>
      <li class="li_yqlj"><a id="youqinglianjie" href="#">友情链接</a></li>

    </ul>
  </div>
  <div id="linjie2">
  <ul id="yqin_fl">
      <li class="li_yqlj">Copyright © 2015-2020 s.cn All Rights Reserved. 渝ICP备08106896号经营许可证闽B2-20110061</li>
    </ul>  
   </div>
</div>
</div>
</div>
<!----------底部样式------------->
  </body>

</html>
