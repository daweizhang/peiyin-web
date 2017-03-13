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

<title>登录</title>

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
<script type="text/javascript" src="js/indexJS.js"></script>
<script type="text/javascript" src="js/biaodanyanzen.js"></script>
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
						<li class="li_lasp" style="color: #690;">您好！</li>
						<li class="li_lasp">
						<s:if test="#session.users!=null">
						<a class="li_laspc_a"
							href="loginUsers!rupinuzy.action">${users.iuserName}</a>
						</s:if>	</li>
						<li class="li_lasp" style="color: #690;">欢迎来到本站！</li>
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
								class="li_laspc_a" href="exituser!userexitxt.action">退出</a>
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

<!-- 导航端--------------------- -->     
<div style="width: 100%; height: 60px; border:0px solid red;">

<div id="d_ncnncn" style="background-color:#EBEBEB;">
  <div id="d_uucnns">
  
  
  <a href="index.action">
     <div id="d_list_lic9">
       <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:48px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:50px;"></div></td>
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





<!-- 导航端--------------------- -->
	<div id="login_haed">
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
						action="loginUsers!Userlogin.action" onsubmit="return hhafav()">
						<div id="login_dus1">
							<h4 id="login_sh4">账户登陆</h4>
						</div>
						<div id="login_dus2">
							<table width="357" height="212" border="0"
								style="margin-top:15px;">
								<tr>
									<td width="90" height="57" id="login_zti" align="right">账户名：</td>
									<td width="251"><label for="textfield"></label> <input
										type="text" name="inUsers.iuserName" id="login_zylc1"
										value="个人账户/或公司账户" />
									</td>
								</tr>
								<tr>
									<td height="50" id="login_zti" align="right">密码：</td>
									<td><input type="password" name="inUsers.ipassword"
										class="passwor_id11" id="login_zylc1" />
									</td>
								</tr>
								<tr>
									<td colspan="2"><table width="352" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td width="90" id="login_zti" height="48" align="right">验证码：</td>
												<td width="73"><input style="width:70px; height:25px; margin-left: 2px;"
													maxlength="5" type="text" name="jsyzm" id="login_dls1" />
												</td>
												<td width="98"><img style="width: 95px;height: 28px;"
													src="random.action" onclick="changeValidateCode(this)"
													title="点击图片刷新验证码" /></td>
												<td width="81" style="font-size:13px; color:#630;">点击图片切换</td>
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
									<td height="33" align="center"><input type="submit"
										name="button" id="login_baen" value="登陆账户" />
									</td>
								</tr>
								<tr>
									<td height="27" align="center"
										style="font-size:13.5px; color:#630;"><a
										style="
            color:#630;" href="indexpage!Retrievepassword">忘了密码?</a>
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
				</div>
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
					<ul>
						<li>
										
							<div class="bottomnav">
								| <a href='indexpage!jumpjylc.action' target="_blank">交易流程</a> | <a
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
								© 2015-2020 chinesevoiceoverfreelancers.com. All Rights Reserved.</span></li>
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
