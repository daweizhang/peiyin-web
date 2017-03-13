<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Login</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/indexjsEH.js"></script>
<script type="text/javascript" src="js/biaodanyanzenEH.js"></script>
</head>
<script type="text/javascript">
	function changeValidateCode(obj) {
		//获取当前的时间作为参数，无具体意义 
		var timenow = new Date().getTime();
		//每次请求需要一个不同的参数，否则可能会返回同样的验证码
		//这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。 
		obj.src = "random.action?d=" + timenow;
	}
	function check() {
		var msg = document.getElementById("msg").value;
		if (msg.length != 0) {
			alert(msg);
			document.getElementById("msg").value = "";
		}
	}
</script>
<body>

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
		
	<div id="login_haed" style="border:0px solid red; height: 600px;">
		<!-----------------登陆模块-------------->
		<div id="login_du">

			<div id="login_tih1" style="text-align:center; ">
				<div id="picContainer_guangaoqiehuan1">
					<div id="picContainer1">
						<ul class="ul_left1">
							<li class="mamakuan1"><img src="images/yt1.png" width="625"
								height="400" /></li>
							<li class="mamakuan1"><img src="images/ft0.png" width="625"
								height="400" /></li>
							<li class="mamakuan1"><img src="images/ft3.png" width="625"
								height="400" /></li>
							<li class="mamakuan1"><img src="images/ft4.png" width="625"
								height="400" /></li>
							<li class="mamakuan1"><img src="images/ft5.png" width="625"
								height="400" /></li>
							<li class="mamakuan1"><img src="images/ft6.png" width="625"
								height="400" /></li>
						</ul>
					</div>
				</div>
				<div id="picContainer_biaozhi_11"
					style=" border: 0px solid red; width: 700px;">
					<ul class="ul_right1" style="margin-left: 300px;">
						<li class="tubiaojisuan_11"></li>
						<li class="tubiaojisuan_11"></li>
						<li class="tubiaojisuan_11"></li>
						<li class="tubiaojisuan_11"></li>
						<li class="tubiaojisuan_11"></li>
						<li class="tubiaojisuan_11"></li>
					</ul>
				</div>

			</div>
			<div id="login_tih2">
				<div id="laogin_yinc">
					<form id="logfrom" name="fromlogin" method="post"
						action="ehloginUserehs!UserloginEh.action" onsubmit="return hhafav()">
						<div id="login_dus1">
							<h4 id="login_sh4">LOG IN</h4>
						</div>
						<div id="login_dus2">
							<table width="357" height="212" border="0"
								style="margin-top:15px;">
								<tr>
									<td width="90" height="57" id="login_zti" align="right">User Name : </td>
									<td width="251"><label for="textfield"></label> <input
										type="text" name="inUsers.iuserName" id="login_zylc1"
										value="Personal user name" />
									</td>
								</tr>
								<tr>
									<td height="50" id="login_zti" align="right">Password：</td>
									<td><input type="password" name="inUsers.ipassword"
										class="passwor_id11" id="login_zylc1" />
									</td>
								</tr>
								<tr>
									<td colspan="2"><table width="352" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td width="90" id="login_zti" height="48" align="right">Verification：</td>
												<td width="73"><input style="width:70px; height:25px; margin-left: 2px;"
													maxlength="5" type="text" name="jsyzm" id="login_dls1" />
												</td>
												<td width="98"><img style="width: 95px;height: 28px;"
													src="random.action" onclick="changeValidateCode(this)"
													title="点击图片刷新验证码" /></td>
												<td width="81" style="font-size:13px; color:#630;">Refresh</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="26">&nbsp;</td>
									<td style="font-size:13.5px; color:#630;"><span
										id="fsfs_11">${message}</span>
									</td>
								</tr>
							</table>
						</div>

						<div id="login_dus3">
							<table width="357" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="33" align="center">
									    <input type="submit" name="button" id="login_baen" value="Login" />
									</td>
								</tr>
								<tr>
									<td height="27" align="center" style="font-size:13.5px; color:#630;">
										<a style="color:#630;" href="ehindexpage!RetrievepasswordEh">Forget password?</a>
									</td>
								</tr>
							</table>
						</div>
						<div id="login_dus4">
							<table width="358" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="24" style="font-size:12px; color:#999;"></td>
								</tr>
								<tr>
									<td height="28">
										<ul id="login_uls">
											<li class="login_lis1"><a class="login_aher1" href="javaScript:;"></a>
											</li>
											<!-- <li class="login_lis1">|</li>
											<li class="login_lis1"><a class="login_aher1" href="#">微信(待开发)</a>
											</li>
											<li class="login_lis1">|</li>
											<li class="login_lis1"><a class="login_aher1" href="#">Fsbook(待开发)</a>
											</li> -->


										</ul></td>
								</tr>
							</table>
						</div>
				    <!--  </div> -->
				</form>
			</div>
		</div>

		<!-----------------登陆模块-------------->



		<!-----------------底部模块-------------->
		
		<!-----------------底部模块-------------->
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
