<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>配音员资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 是否登录弹出 -->
  <link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
  
  <link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
 	<script type="text/javascript" src="js/indexJS.js"></script>
    <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
    <script type="text/javascript" src="js/tanchu.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <link rel="stylesheet" href="css/styletanc.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/tishi.css" type="text/css"></link>
  	<script type="text/javascript" src="js/tishi.js"></script>
  	 <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  	<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <link rel="stylesheet" href="css-js-file/styles.css" type="text/css"></link>



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

<script type="text/javascript">
$(function(){

$("#cloasdianj").click(function(){
            $("#tanschusb789").show();
		    $(".card852").show();
			  $("#thistis_icns").fadeIn(200);
			  $("#thistis_icnicns").slideDown(200);	  
			 $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	  });
	 $("#fklwnlselx").click(function(){
   $("#tanschusb789").show();
		    $(".card852").show();
			  $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200);  
			  $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	  });	  
    
});


</script>

<body>
<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

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
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:44px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:44px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音任务</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="voiceyindex.action">
     <div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
           <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn3" style="margin-left:44px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -161px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp" style="color: #F16700;">配音员</samp></td>
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
 </div>
<!--导航---------------------->

<!----------主体样式------------->
<div class="xqweizi1" style="margin-top: 5px;">
    			<a style="text-decoration: none;" class="xqweizi11" href="index.action" title="网站首页">网站首页</a>＞
    			<a style="text-decoration: none;" href="voiceyindex.action" title="网站首页">配音员</a>＞
    			<a style="text-decoration: none;" href="javaScript:;" title="网站首页">配音员资料</a>
    	</div>
<div id="void_nes1" style="border: 0px solid #ccc;  height: 850px; margin-top: 0px;">
  
   
   
   
   
   
   <div class="mainContent" style="margin-left: -1px;">
    <aside>
      <div class="avatar">
        <a href="javaScript:;" id="lxtoxlwnxs" style="text-decoration: none;"><span class="inusers"></span></a>
      </div>
      <section class="topspaceinfo">
        <samp id="leknmjj">配音员ID：</samp>
        <samp id="lekgfont">${rs.iname }</samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj">所在地区：</samp>
        <samp id="lekgfont" class="dqxss"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj">配音技能：</samp>
        <samp id="lekgfont" class="inupy"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj">配音语言：</samp>
        <samp id="lekgfont" class="inulg"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj">配音风格：</samp>
        <samp id="lekgfont" class="inutd"></samp>
      </section>
      <div class="userinfo" style="line-height: 25px;"> 
        <p class="q-fans"> &nbsp;信誉度：<a href="javaScript:;">${rs.icredibility }</a></p>  
        <p class="q-fans"> &nbsp;交易量：<a href="javaScript:;">0</a></p> 
      </div>
      <div class="userinfo1"> 
      <s:if test="#session.users==null">
         <a href="javaScript:;" id="cloasdianj" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">请TA配音</samp></div></a>
       </s:if>
       <s:if test="#session.users!=null">  
         <s:if test="#session.users.dtype.did=='berwartaedfeee'">
         <a href="javaScript:;" id="cloasdianj" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">请TA配音</samp></div></a>
         </s:if>
         <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
         <a href="invitat.action?uids=${rs.iid}" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">请TA配音</samp></div></a>
         </s:if>
       </s:if>
      </div>
      <section class="newpic">
         <h2 style="margin:0px;">最近完成的任务</h2>
          <div id="leknmglsxx">
             <a href="#" style="text-decoration: none;" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" style="text-decoration: none;" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" style="text-decoration: none;" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" style="text-decoration: none;" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" style="text-decoration: none;" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
      </section>
      <section class="taglist">
         <h2 style="margin:0px;">相关的配音员</h2>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
      </section>
      
  </aside>
    <div class="blogitem">
      <article>
        <h2 class="title"><a style="text-decoration: none;" href="#">TA的作品</a></h2>
        <div id="vleksxlsxxlst">
        <c:if test="${iuworks.items.size()!=0}">
        <c:forEach items="${iuworks.items}" var="iws">
            <a href="worksdeta.action?wid=${iws.wid}" target="_blank" style="text-decoration: none;">
             <div id="lwmlgsxx">
               <table width="700" border="0" id="leknxlss" cellpadding="0" cellspacing="0">
                 <tr>
                   <td width="363" height="40" style="color:#660;" align="left"><samp id="lwnlsxdd">${fn:substring(iws.worksName,0,25)}...</samp></td>
                   <td width="278" align="center" valign="middle" style="color:#999;">${iws.tvoice.tvtypeName }</td>
                   <td width="37" align="center" valign="middle"><a href="javascript:bofang('${fn:substring(iws.worksName,0,8) }...','${iws.worksFile}');"><img src='images/isc.ico' width="25" height="25"></img></a></td>
                 </tr>
               </table>
             </div>
            </a>
            </c:forEach>
           </c:if> 
            <c:if test="${iuworks.items.size()==0}">
               <div style="margin-top: 20px; text-align:center; margin-bottom: 20px;">该配音员暂无作品!</div>
            </c:if> 
        </div>
        <div class="textfoot">
          <div id="vsls11">
          <div id="pageNav" style="width:725px;margin-top: 8px;border:1px;"></div>
          </div>
        </div>
      </article> 
    </div>
 </div>
   
   
   
   
   
    <div id="thistis_icns" style="display:none; z-index: 999; position: fixed;left: 0px;top:0px;">
</div>
<div id="thistis_icnicns" style="display:none; z-index: 999;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">温馨提示:</span></td>
        <td width="45" align="center" valign="middle">
          <a style="text-decoration:none;" id="fklwnlselx" href="javascript:;"><div id="flsvwlke"><span style="font-weight:bold; font-size:28px; color:#990;">✖</span></div></a>
        </td>
      </tr>
    </table>
  </div>
  <div id="lsncs_olc2">
      <div id="tishtusl">
           <span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
      <div id="tishtuslxx">

      
        <s:if test="#session.users==null">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!登录后才可以邀请TA参与竞标!</span>
       </s:if>
       <s:if test="#session.users!=null">
         <s:if test="#session.users.dtype.did=='berwartaedfeee'">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!配音员无法进行邀请!</span>
         </s:if>
       </s:if>
       
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="loginUsers!findUserType.action" target="_blank"><input id="cnwlbann1" type="button" value="马上注册"/></a>
     <a class="sesscs" href="User/login.jsp" target="_blank"><input id="cnwlbann1" type="button" value="立即登陆"/></a>
  </div>
</div>    
   
   
   

</div>

<!----------主体样式------------->

<!----------底部样式------------->
<div>
<div id="haed_dibu_cc" style="margin-top:150px;">
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
</div>
</body>
<script type="text/javascript">
$(function(){
     showlaod(500,"#ccc");


     var inus='${rs.iuserName}';
     var username=inus.substring(0,3);
     var username1=inus.substring(5,7);
     $(".inusers").html(username+"***"+username1+"<br>"+'${rs.isex}');
     var ixls="";
     if('${rs.iportrait}'==""){
	   ixls="url(upload/txtub.png)";
	 }else{
	   ixls="url(upload/"+'${rs.iportrait}'+")";    
	 }
	 $("#lxtoxlwnxs").css("background-image",ixls);
	 var d='${rs.iregion}';
	 var dz=d.substring(d.indexOf("-")+1,d.length);
	 $(".dqxss").html(dz);
	  var pylist=new Array();
	 pylist = '${rs.ivoiceLabels}'.split("♫");
	 var py="";
	 $(pylist).each(function(index){
       py+=this+"&nbsp;";
     });
     $(".inupy").html(py);
	 var lglist=new Array();
	 lglist = '${rs.ilanguageLabels}'.split("♫");
	 var lg="";
	 $(lglist).each(function(index){
       lg+=this+"&nbsp;";
     });
     $(".inulg").html(lg);
   var tdlist=new Array();
	 tdlist = '${rs.islID}'.split("♫");
	 var td="";
	 $(tdlist).each(function(index){
       td+=this+"&nbsp;"; 
     });
     $(".inutd").html(td);
     
     if(parseInt('${iuworks.items.size()}')==0){
        $("#vsls11").html("");
     }
	});
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
	if(parseInt('${iuworks.currPageNo}')==0){
	pageNav.go(1,'${iuworks.totalPageCount}');
	}else{
	pageNav.go(parseInt('${iuworks.currPageNo}'),'${iuworks.totalPageCount}');
	}
	
});
function showsub(id){
  var uids='${rs.iid}';
  window.location.href="insvoiw.action?uid="+uids+"&iudjys="+id;
}

  </script>


</html>
