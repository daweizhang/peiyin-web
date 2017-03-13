<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Personal Center</title>
    
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
<div style="width: 1000px; height: 3px; border: 0px solid #ccc; background-color:red; margin-top: 10px;"></div>
<div id="void_nes1" style="border: 0px solid #ccc;   height: 850px;">
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
   <div id="mum_zhutiyi2" style="border:1px solid #ccc;">
          <div id="rele_fabu1">
              <div id="rele_fbnc1"><img src="images/rtoxtb.png" width="40" height="29" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2" style="margin-left: 10px;"><h4 id="rele_fndn1">My Profile</h4></div>
          </div>
          <div id="rele_fabu2" >
               <div id="sk_touxherd1">
      <div id="touxcs1" style="border:1px solid #ccc;">
      <img src="upload/${ius.iportrait}" width="150" height="150"/>
      </div>
      <div id="touxcs2">
      <form id="formdonm" name="fomrkslc" method="post" action="publicly.action">
         <table width="569" height="144" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="150" align="right"><samp style="font-size:18px; font-weight:bold; font-family:'微软雅黑'; color:red;">ID：</samp></td>
            <td width="434"><samp style="font-size:18px; font-weight:bold; font-family:'微软雅黑'; color:red;">${ius.iname }</samp></td>
          </tr>
         
          <tr>
            <td align="right"><samp style="font-size:15px; color:#999;">♪Gender：</samp></td>
            <td><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.isex }</samp></td>
          </tr>
          <tr>
            <td align="right"><samp style="font-size:15px; color:#999;">♪Registration Date：</samp></td>
            <td><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.ibirthday }</samp></td>
          </tr>
        </table>
      </div>
   </div>
   <div id="sk_touxherd2">
     <table width="734" height="135" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td width="159" height="44" align="right"><samp style="font-size:15px; color:#999; ">♪Credit：</samp></td>
         <td width="254"><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.icredibility}</samp></td>
         <td width="171" align="right"><samp style="font-size:15px; color:#999;">♪Email：</samp></td>
         <td width="260"><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.iemail }</samp></td>
       </tr>
       
       <tr>
         <td height="44" align="right"><samp style="font-size:15px; color:#999;">♪Contact：</samp></td>
         <td><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.iphone }</samp></td>
         <td align="right"><samp style="font-size:15px; color:#999;">♪Company Name：</samp></td>
         <td><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.igName }</samp></td>
       </tr>
     </table>
   </div>
   <div id="sk_touxherd3">&nbsp;&nbsp;<samp style="font-size:15px; color:#999;">♪Company Owner：</samp><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.igPerson }</samp>
  </div>
   <div id="sk_touxherd3">&nbsp;&nbsp;<samp style="font-size:15px; color:#999;">♪Company Location：</samp><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.iregion }</samp></div>
   <div id="sk_touxherd3">&nbsp;&nbsp;&nbsp;&nbsp;<samp style="font-size:15px; color:#999;">&nbsp;♪Detailed Address：</samp><samp style="font-size:15px; color:#757575; font-weight:bold;">${ius.igDetailed }</samp></div>
   <div id="sk_touxherd3">
     <table width="736" border="0">
       <tr>
         <%-- <td width="395" align="right"><samp style="font-size:15px; color:red; font-weight:bold;">♪Profile Public or Not:</samp></td>
         <td width="331"><input type="checkbox" name="checkbox" id="checkboxddd" />
         <label for="checkbox"></label></td> --%>
       </tr>
     </table>
   </div>
  <div id="sk_touxherd3"></div>
   <div id="sk_touxherd4">
     <table width="738" border="0">
       <tr>
         <td width="184" height="74">&nbsp;</td>
         <!-- <td width="184" align="center" valign="middle"><input type="submit" name="button" id="banes1" value="确定" /></td> -->
         <td width="184" align="center" valign="middle"><a href="ehloginUserehs!rupinuzyEh.action" id="banes1" style="text-decoration: none;"><div style="border:1px solid #660; width: 100px; height: 30px; background-color: #660;border-radius:5px;"><div style="margin-top: 5px;">Home</div></div></a></td>
         <td width="184">&nbsp;</td>
       </tr>
     </table>
    </form> 
   </div>
                 
          </div>
   </div>

</div>

<!----------主体样式------------->

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



</html>
