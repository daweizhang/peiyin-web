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
    
    <title>Voice Talent Profile</title>
    
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
#leknmjj{
font-weight: bold;}
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
<div class="xqweizi1" style="margin-top: 5px;">
    			<a style="text-decoration: none;" class="xqweizi11" href="index.action" title="网站首页">HOME</a>＞
    			<a style="text-decoration: none;" href="voiceyindex.action" title="网站首页">Voice Talents</a>＞
    			<a style="text-decoration: none;" href="javaScript:;" title="网站首页">Profile</a>
    	</div>
<div id="void_nes1" style="border: 0px solid #ccc;  height: 850px; margin-top: 0px;">
  
   
   
   
   
   
   <div class="mainContent" style="margin-left: -1px;">
    <aside>
      <div class="avatar">
        <a href="javaScript:;" id="lxtoxlwnxs" style="text-decoration: none;"><span class="inusers"></span></a>
      </div>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">ID:</samp>
        <samp id="lekgfont" style="color:#690">${rs.iname}</samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">Location:</samp>
        <samp id="lekgfont" class="dqxss" style="color:#690"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">Skills:</samp>
        <samp id="lekgfont" class="inupy" style="color:#690"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">Experience:</samp>
        <samp id="lekgfont" style="color:#690">${rs.ifehs.ifgznf }</samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">Language:</samp>
        <samp id="lekgfont" class="inulg" style="color:#690"></samp>
      </section>
      <section class="topspaceinfo">
        <samp id="leknmjj" style="color:#F90">Voice Style:</samp>
        <samp id="lekgfont" class="inutd" style="color:#690"></samp>
      </section>
      <div class="userinfo" style="line-height: 25px;"> 
        <p class="q-fans" style="padding: 0 0px;color:#F90; font-size:14px;font-weight:bold">Rating: &nbsp;<a style="color:#690" href="javaScript:;">${voicescoes}</a></p>  
        <p class="q-fans" style="padding: 0 0px;color:#F90; font-size:14px;font-weight:bold">Projects Finished: &nbsp;<a style="color:#690" href="javaScript:;">${rs.iscoced }</a>&nbsp;</p>  
      </div>
      <div class="userinfo1"> 
      <s:if test="#session.users==null">
         <a href="javaScript:;" id="cloasdianj" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">Invite</samp></div></a>
       </s:if>
       <s:if test="#session.users!=null">  
         <s:if test="#session.users.dtype.did=='berwartaedfeee'">
         <a href="javaScript:;" id="cloasdianj" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">Invite</samp></div></a>
         </s:if>
         <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
         <a href="ehinvitat.action?uids=${rs.iid}" style="text-decoration: none;"><div id="flknflefnx"><samp id="velkslddss">Invite</samp></div></a>
         </s:if>
       </s:if>
      </div>
      <section class="newpic">
         <h2 style="margin:0px;">Recently Completed Projects</h2>
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
     <%--  <section class="taglist">
         <h2 style="margin:0px;">Related voice player</h2>
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
      </section> --%>
      
  </aside>
    <div class="blogitem">
      <article>
        <h2 class="title"><a style="text-decoration: none;" href="#">Works</a></h2>
        <div id="vleksxlsxxlst">
        <c:if test="${iuworks.items.size()!=0}">
        <c:forEach items="${iuworks.items}" var="iws">
            <a href="worksdeta.action?wid=${iws.wid}" target="_blank" style="text-decoration: none;">
             <div id="lwmlgsxx">
               <table width="700" border="0" id="leknxlss" cellpadding="0" cellspacing="0">
                 <tr>
                   <td width="363" height="40" style="color:#660;" align="left"><samp id="lwnlsxdd">${fn:substring(iws.wehName,0,25)}...</samp></td>
                   <td width="278" align="center" valign="middle" style="color:#999;">${iws.tvoice.tts }</td>
                   <td width="37" align="center" valign="middle"><a href="javascript:bofang('${fn:substring(iws.worksName,0,8) }...','${iws.worksFile}');"><img src='images/isc.ico' width="25" height="25"></img></a></td>
                 </tr>
               </table>
             </div>
            </a>
            </c:forEach>
           </c:if> 
            <c:if test="${iuworks.items.size()==0}">
               <div style="margin-top: 20px; text-align:center; margin-bottom: 20px;">The works of the talent!</div>
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
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">Note:</span></td>
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
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">You need to be logged in to invite the talent to audition your project!</span>
       </s:if>
       <s:if test="#session.users!=null">
         <s:if test="#session.users.dtype.did=='berwartaedfeee'">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">Talent can not be invited!</span>
         </s:if>
       </s:if>
       
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="ehindexpage!loginconEh.action" target="_blank"><input id="cnwlbann1" type="button" value="Login"/></a>
     <a class="sesscs" href="ehloginUserehs!findUserTypeEh.action" target="_blank"><input id="cnwlbann1" type="button" value="Sign Up"/></a>
  </div>
</div>    
   
   
   

</div>

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 160px;">
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
</div>
</body>
<script type="text/javascript">
$(function(){
     showlaod(500,"#ccc");


     var inus='${rs.iuserName}';
     var username=inus.substring(0,3);
     var username1=inus.substring(5,7);
     $(".inusers").html(username+"***"+username1+"<br>"+'${rs.ifehs.ifehsex}');
     var ixls="";
     if('${rs.iportrait}'==""){
	   ixls="url(upload/txtub.png)";
	 }else{
	   ixls="url(upload/"+'${rs.iportrait}'+")";    
	 }
	 $("#lxtoxlwnxs").css("background-image",ixls);
	 var d='${rs.ifehs.ifdiqu}';
	 var dz=d.substring(d.indexOf("-")+1,d.length);
	 $(".dqxss").html(d);
	  var pylist=new Array();
	 pylist = '${rs.ifehs.ifehpytype}'.split("♫");
	 var py="";
	 var i=2;
	 $(pylist).each(function(index){
	   if(index==i){
         py+=this+"</br>";
         i=i+3;
       }else{
         py+=this+"&nbsp;";
       }
     });
     $(".inupy").html(py);
	 var lglist=new Array();
	 lglist = '${rs.ifehs.ifehlytype}'.split("♫");
	 var lg="";
	 var i1=2;
	 $(lglist).each(function(index){
	   if(index==i1){
	    lg+=this+"</br>";
	    i1=i1+3;
	   }else{
	    lg+=this+"&nbsp;";
	   }
      
     });
     $(".inulg").html(lg);
   var tdlist=new Array();
	 tdlist = '${rs.ifehs.ifehsytype}'.split("♫");
	 var td="";
	 var i2=1;
	 $(tdlist).each(function(index){
	 if(index==i2){
	  td+=this+"</br>";
	  i2=i2+2;
	 }else{
	 td+=this+"&nbsp;"; 
	 }
       
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
