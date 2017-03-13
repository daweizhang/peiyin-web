<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

    <title>Project Details</title>


    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/indexJS.js"></script>
  <link rel="stylesheet" href="css-js-file/styles-zbf.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css-js-file/tijiaoyy.css" type="text/css"></link>
  <link rel="stylesheet" href="css/spinners.css" type="text/css"></link>
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
     showlaod(500,"#ccc");
     
     
	 var inus='${bdus.iuserName}';
     var username=inus.substring(0,3);
     var username1=inus.substring(5,7);
     $(".inusers").html(username+"***"+username1+"<br>"+'${bdus.isex}');
     var ixls="";
     if('${bdus.iportrait}'==""){
	   ixls="url(upload/txtub.png)";
	 }else{
	   ixls="url(upload/"+'${bdus.iportrait}'+")";    
	 }
	 
	 $("#lxtoxlwnxs").css("background-image",ixls);
	 var d='${bdus.iregion}';
	 var dz=d.substring(d.indexOf("-")+1,d.length);
	 $(".dqxss").html(dz);
	 
	});
</script>

<body>

<div id="tanschusb789" style="display: none;"></div>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%@taglib prefix="s" uri="/struts-tags"%><div class="card852" style="display: none;">
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
<div class="xqweizi1" style="margin-top: 5px;">
    			<a class="xqweizi11" href="index.action" title="网站首页">HOME</a>＞
    			<a href="btendervoiw.action" title="网站首页">Projects</a>＞
    			<a href="javaScript:;" title="网站首页">Details</a>
    	</div>
<div id="xqweizi" style="border:0px solid red; height: 900px; margin-top: 10px;">
    		<div class="mainContent" style="margin-left: -1px;">
    <aside>
      <div class="avatar">
 
        <a href="javaScript:;" id="lxtoxlwnxs"><span class="inusers"></span></a>
      </div>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">&nbsp;&nbsp;&nbsp;Client ID：</samp>
        <samp id="lekgfont" >${bdus.iname }</samp>
      </section>
      <section class="topspaceinfo" style="margin-top: -5px;">
        <samp id="leknmjj" style="color:#F90">&nbsp;&nbsp;&nbsp;Location：</samp>
        <samp id="lekgfont" class="dqxss"></samp>
      </section>
      <div class="userinfo" style="margin-top: 7px;"> 
        <p class="q-fans" style="color:#F90"> &nbsp;&nbsp;&nbsp;Credit：<a href="javaScript:;" style="color:#690;">&nbsp;${bdus.icredibility }</a></p> 
      </div>
      <div class="userinfo" style="margin-top: 10px;"> 
        <p class="q-fans" style="color:#F90">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Visits：<a href="javaScript:;" style="color:#690;">${bder.bliuyanNum }</a></p> 
      </div> 
      <div class="userinfo" style="margin-top: 10px;"> 
        <p class="q-fans" style=" margin-left:-10px;"><samp style="color:#F90">&nbsp;Participants：</samp><a href="javaScript:;" style="color:#690;">&nbsp;${bder.bcounts }</a>&nbsp;&nbsp;&nbsp;</p> 
      </div>
      <div class="userinfo1"> 
      
         <s:if test="#session.users==null">
         <div class="nuluser" id="flknflefnx"><a href="javaScript:;"><samp id="velkslddss">Audition</samp></a></div>
         </s:if>
         <s:if test="#session.users!=null">
         <div id="flknflefnx"><a href="javaScript:;" class="theme-login"><samp id="velkslddss">Audition</samp></a></div>
         </s:if>
         <%-- <s:if test="#session.users.iuserName==ps.puserId.iuserName">
         <div style="margin-left: 66px;margin-top: 10px;"><a id="lxnw88z" style="font-size: 14px;" href="delepartpates!viewthebidding.action?prarid=${ps.pid}">&nbsp;查看我的竞标信息 &nbsp;</a></div>
         </s:if> --%>
      </div>
      
      <section class="taglist">
         <h2 style="margin:0px;">who visited the project</h2>
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
      <!--  
      <section class="newpic">
         <h2 style="margin:0px;">Similar Projects</h2>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">Test voice te...</samp></a>
             <samp id="vleknmslx">Business</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
         
      </section>
      -->
  </aside>

    <div class="blogitem">
    
       <article>
        <div id="vleksxlsxxlst">
        </div>
        <div class="textfoot">
          <div id="vsls11">
             <samp id="povbm" style="font-family:'微软雅黑'; font-size:18px;font-weight: bold;">${bder.btName}</samp>
          </div>
          <div id="vsls11" style="margin-top: 10px;">
             <samp id="povbms1" style="font-family:'微软雅黑'; ">Posted Time：<samp style=" color:red;">${bder.btime}</samp></samp>
          </div>
        </div>
      </article> 
      <article>
        <div id="vleksxls44" style="margin-top: 5px;">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">Project Progress</samp>
        </div>
        <div class="textfootS1">
           <div id="lovsnf2" style="margin-left:52px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,0,1)=='1' }">color: red;</c:if>">Post</samp></div>
           <div id="lovsnf2" style="margin-left:31px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,1,2)=='2' }">color: red;</c:if>">Audition</samp></div>
           <div id="lovsnf2" style="margin-left:30px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,2,3)=='3' }">color: red;</c:if>">Selection</samp></div>
           <div id="lovsnf2" style="margin-left:30px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,3,4)=='4' }">color: red;</c:if>">Working</samp></div>
           <div id="lovsnf2" style="margin-left:28px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,4,5)=='5' }">color: red;</c:if>">Completed</samp></div>
        </div>
        <div class="textfootS2">
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,0,1)=='1' }">border:1px solid red;</c:if>"><img style="margin-top:8px;" src="images/xiao1.png"></div>
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,1,2)=='2' }">border:1px solid red;</c:if>"><img style="margin-top:10px; margin-left:3px;" src="images/xiao2.png"></div>
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,2,3)=='3' }">border:1px solid red;</c:if>"><img style="margin-top:10px;" src="images/xiao3.png"></div>
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,3,4)=='4' }">border:1px solid red;</c:if>"><img style="margin-top:12px;" src="images/xiao4.png"></div>
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,4,5)=='5' }">border:1px solid red;</c:if>"><img style="margin-top:12px;" src="images/xiao5.png"></div>
        </div>
      </article>
      <div id="vlwxolx">
         <div id="lbnmnvss1"><samp id="bvmvmx88">Budget</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Category</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Status</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">≈
         <fmt:formatNumber type="number" value="${bder.bprice/6 }" pattern="0.00" maxFractionDigits="2"/>USD
         </samp>
         
         </div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.tvoice.tts }</samp></div>
         
        <c:if test="${bder.bts=='0' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">Audition</samp></div>
         </c:if>
         <c:if test="${bder.bts=='1' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">Working</samp></div>
         </c:if>
         <c:if test="${bder.bts=='2' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">Completed</samp></div>
         </c:if>
         
      </div>
      <div id="vlwxolx" style="margin-top:0px;">
         <div id="lbnmnvss1"><samp id="bvmvmx88">Word Count</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Language</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Gender</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.basofTime }</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.lgtype.lts }</samp></div>
        <c:if test="${bder.brwtype=='111' }">
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bsex }</samp></div>
        </c:if> 
        <c:if test="${bder.brwtype=='222' }">
         <div id="lbnmnvss1"><samp id="vlxkxx22">${fses}</samp></div>
        </c:if> 
      </div>
      <div id="vlwxolx" style="margin-top:0px;">
         <div id="lbnmnvss1"><samp id="bvmvmx88">Accent</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Format</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">Speed</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.scrowd.sts}</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bfilegeshi.fts }</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bpyyusu.hts }</samp></div>
      </div>
      <div id="vleksxls44">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">Project Details</samp>
      </div>
        <div id="xmbwels66">
           <textarea id="vlx88s" style="font-size: 14px;" cols="" rows="" readonly>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bder.bxxmiaoshu }</textarea>
      </div>
         <div id="vleksxls44">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">Audition Text</samp>
        </div>
      <div id="xmbwels67">
           <textarea id="vlx88sbhs" style="font-size: 14px;" cols="" rows="" readonly>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bder.bpygaowen }</textarea>
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
    
    
    
    
    
<div id="thistis_icns" style="display: none;">
</div>
<div id="thistis_icnicns" style="display: none;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">Pls note:</span></td>
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
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">You need to be logged in as a talent to audition!</span>
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="ehloginUserehs!findUserTypeEh.action" target="_blank"><input id="cnwlbann1" type="button" value="register"/></a>
     <a class="sesscs" href="ehindexpage!loginconEh.action" target="_blank"><input id="cnwlbann1" type="button" value="login"/></a>
  </div>
</div>    
    

<!-- 312 -->


<div class="theme-popover-mask"></div>
<div class="theme-popover" style="height: 320px; margin-top: -110px; position: fixed;">
<form action="uplaodvofiles.action" method="post" enctype="multipart/form-data">
 <input type="hidden" id="bteids" name="bteids" value="${bder.btid}" />
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaoz1">
           <samp id="tijys22" style="font-family:'微软雅黑';">Submit Audition</samp>
           <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a>
        </div>
        
        <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
         <div id="tishcaoz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">Only voice talent can audition!</samp>
         </div>
        </s:if>
        
        
        <s:if test="#session.users.dtype.did=='berwartaedfeee'">
        <c:if test="${ersers==333}">
        <div id="tishcaoz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">Pls use the Chinese version to audition!</samp>
         </div>
        <%-- <div id="tishcaoz2">
          <table width="555" height="64" border="0" style="margin-top:20px;">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫试音文件:</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px; border:1px solid #ccc;">
                 <input style="border:0px solid red;" type="text" class="filename" readonly/>
                    <input type="button" name="file" class="button" value="试音文件"/>
                    <input type="file" id="filesy" name="filesy" size="30"/>
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">提交该任务试音稿文的配音(试音格式为MP3,MP4等)</td>
            </tr>
          </table>
          
          
          <table width="555" height="64" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫竞标价格(人民币):</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <input id="rmbidnexs" type="text" style="width: 150px;" class="fbrw_libit6" name="partpate.pjbrphone" value=""/>.00(RMB)  
                    <a id="lxnw88z" style="font-size: 14px;" href="javaScript:hljs();">&nbsp;点击换算 &nbsp;</a>                           
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">任务竞标价不得低于300(￥)人民币!</td>
            </tr>
          </table>
          <table width="555" height="64" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫等于(美元):</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <input id="rwfusds" type="text" style="width: 150px;" class="fbrw_libit6" readonly="readonly" value=""/>($)  
                           
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">按汇率1:6计算!</td>
            </tr>
          </table> --%>

          
       </div>
       </c:if>
       <c:if test="${ersers==200 }">
       <div id="tishcaoz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!您已经参与过该任务了!</samp>
         </div>

       </c:if>
       
       </s:if>


    <div class="theme-poptit" style="margin-top: 120px;"><a href="javascript:;" class="close"><div id="coslqed55"><samp class="xlxnss">RETURN</samp></div></a>
     </div>
     
     <s:if test="#session.users.dtype.did=='berwartaedfeee'">
       <c:if test="${ersers!=200 && bder.bcounts <15 && ius.iphone != null}">
        <%-- <a href="javascript:;"><div><samp class="xlxnss"><input type="submit" id="coslqed55" value="确定"/></samp></div></a></div> --%>
       </c:if>
     </s:if>
    </form> 
</div>

    
  </body>
<script type="text/javascript">
	
$(function(){

$(".nuluser").click(function(){
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


jQuery(document).ready(function($) {
	
	$('.theme-login').click(function(){
	        $("#tanschusb789").show();
		    $(".card852").show();
		$('.theme-popover-mask').fadeIn();
		$('.theme-popover').fadeIn();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	});
	$('.close').click(function(){
	$("#tanschusb789").show();
		    $(".card852").show();
		$('.theme-popover-mask').fadeOut();
		$('.theme-popover').fadeOut();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	});

});

$(function(){
	$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
	$("input[type=file]").each(function(){
	if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
	});
});
function hljs(){
      var rmbhs=$("#rmbidnexs").val();
      var hs=parseInt(rmbhs);
      var hd=hs/6;
      $("#rwfusds").val(hd.toFixed(2));
      var bs=$("#rwfusds").val();
      if(bs=='NaN'){
        var bs=$("#rwfusds").val("");
      }
}

</script>
</html>
