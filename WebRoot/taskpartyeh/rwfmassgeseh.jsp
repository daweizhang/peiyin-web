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
    
    <title>System Messages</title>
    
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
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
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
.sfgkanss33{
	margin-top:2px;
	width:70px;
	height:25px;
	border:0px solid #690;
	-moz-border-radius: 10px;      /* Gecko browsers */
   -webkit-border-radius: 10px;   /* Webkit browsers */
   border-radius:10px;
   outline:none;
   color: #F60;
   font-size:14px;
   background-color:#FFF;
	} 
.sfgkanss33:hover{
 background-color:#690;
  color: #fff;
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
											class="cnnspp">TRANSLATION</samp></td>
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
											class="cnnspp">LIVE SESSION</samp></td>
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
<div id="void_nes1" style="border: 0px solid #ccc;   height: 780px;">
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
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc; height: 840px;">
          <div id="rele_fabu1">
              <div id="rele_fbnc1"><img src="images/xtxx.png" width="42" height="40" style="margin-top: 2px; margin-left: 0px;"/></div>
              <div id="rele_fbnc2" style="margin-left: 3px;"><h4 id="rele_fndn1">System Messages</h4></div>
          </div>
          <div id="rele_fabu4">
             <table border="0" width="780" cellpadding="0" cellspacing="0">
                <tr height="36">
                   <td align="center" width="140" style="font-size: 14px;  color: #666;">Title</td>
                   <td align="center" width="80" style="font-size: 14px;  color: #666;">Type</td>
                   <td align="center" width="70" style="font-size: 14px;  color: #666;">State</td>
                   <td align="center" width="70" style="font-size: 14px;  color: #666;">Sending Time</td>
                   <td align="center" width="90" style="font-size: 14px;  color: #666;">Action</td>
                </tr>
             </table>
          </div>
          <div id="rele_fabu5">
          
           <c:forEach items="${listnews.items }" var="nes">
             <div id="rele_uuc" <c:if test="${nes.xmessagestatus=='200'}">style="font-weight: bold;"</c:if>>
                  <a href="javaScript:;" style="text-decoration: none; color: #636;">
	              <div id="rele_oo1" style="border:0px solid red;width: 239px;"><div class="rele_cso" <c:if test="${nes.xmessagestatus=='200'}">style="color: red;"</c:if>>${fn:substring(nes.xthemessagetitle,0,15)}...</div></div>
	              </a>
	              <a href="javaScript:;" style="text-decoration: none; color: #636;">
	              <div id="rele_oo4" style="border:0px solid red;width: 143px;"><div class="rele_cso">${nes.xts}</div></div>
	              <div id="rele_oo2" style="border:0px solid red;width: 120px;"><div class="rele_cso" style="color: red;">
	              <c:if test="${nes.xmessagestatus=='200'}">
	                                             Not viewed
	              </c:if>
	              <c:if test="${nes.xmessagestatus=='333'}">
	                                             viewed
	              </c:if>
	              </div></div></a>
	              <div id="rele_oo3" style="border:0px solid red;width: 120px;"><div class="rele_cso" style="margin-top: 0px; color: #333;">&nbsp;${nes.xsendtime}</div></div>
	              <div id="rele_oo5" style="border:0px solid red;width: 155px; text-align: center;">
	                     <a href="delepartpates!Seethemessage.action?newsid=${nes.xid}&nzym=${newsym}" target="_blank"><input style="float: left; margin-top:15px; margin-left: 45px;border:1px solid #690; width: 100px;" type='button' onclick="" value='view message' class="sfgkanss33" id='sfgkan3'/></a>
	              </div>
             </div>
           </c:forEach>
           
             
          </div>
          <div id="rele_fabu6" style="height: 50px;">
            <div style="position: relative;top: 12px;">
            <c:if test="${listnews.totalCount!=0}">
            <div id="pageNav" style="border:0px solid red; width:780px; margin-left: 80px;"></div>
            </c:if>
            <c:if test="${listnews.totalCount==0}">
             <div id="pageNav" style="border:0px solid red; display:none; width:780px; margin-left: 80px;"></div>
             <div style="margin-left: 330px;font-size: 16px;">No message!</div>
            </c:if>
            </div>
          </div>
   </div>




</div>

<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 70px;">
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

</div>
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
	//pageNav.go(1,2);
	 if(parseInt('${newsym}')==0){
	   pageNav.go(parseInt('${newsym}'),'${listnews.totalPageCount}');
	}else{
	   pageNav.go(parseInt('${newsym}'),'${listnews.totalPageCount}');
	}

});

 function showsub(id)
{
   window.location.href="ehUserehsystemnews.action?newsym="+id;
}
  </script>


</html>
