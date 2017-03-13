<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>找回密码</title>
    
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
<script type="text/javascript" src="js/biaodanyanzen.js"></script>
<link rel="stylesheet" href="css/tanchu.css" type="text/css"></link>
<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>

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
<div id="regis_haed" style="border:1px solid #ccc; height: 600px;">
 
<!--功能导航段-->  
<div id="reges_gndh">
   <div id="reges_dh1"><h3 id="reges_h3">账户中心</h3></div>
   <div id="reges_dh2">
      <ul id="reges_ul">
         <a class="rets_hra" href="loginUsers!findUserType"><li class="regs_li">账户注册</li></a>
         <a class="rets_hra" href="javascript:;"><li class="regs_li beijignsy">找回密码</li></a>
         <!-- <a class="rets_hra" href="javascript:;"><li class="regs_li">安全中心</li></a>
         <a class="rets_hra" href="javascript:;"><li class="regs_li">联系客服</li></a> -->
      </ul>
   </div>
   <div id="reges_dh3"></div>
</div>
<!--功能导航段-->

<!--功能切换段-->

<!--个人登陆------------------------------->
<div id="reges_qhd1">
    <div id="reges_ztxin1">
      <table width="1000" border="0">
        <tr>
          <td width="207" height="68" align="right" valign="bottom"><img src="images/uuzhao1.png" width="120" height="64" /></td>
          <td width="777" align="left" valign="bottom" style="font-weight:600; color:#660;">找回密码<span style="font-size:14px;">(请输入您要找回的账户)</span></td>
        </tr>
      </table>
    </div>
    <div id="reges_ztxin2" style="border: 0px;">
      <form id="backpsdfrom" name="form1" method="post" action="loginUsers!findUserii">
        <table width="975" height="200" border="0">
          
          
          <tr height="30">
            <td width="192" id="td_ing" align="right"></td>
            <td width="198">
            </td>
            <td id="gets_ts" width="554"></td>
          </tr>
          <tr height="40">
            <td width="192" id="td_ing" align="right">*用户名：</td>
            <td width="198"><label for="textfield"></label>
            <input id="reges_inp" class="reg_unamess reg_unames" type="text" name="zhUser"/></td>
            <td id="gets_ts" width="554"><span id="regesjs2" style="color:#aaa">*请填写您注册的用户名！</span></td>
          </tr>
         <tr height="40">
             <td width="192" align="right"><samp style="font-size: 16px; color:#660;">*邮箱：</samp></td>
             <td width="198"><input id="reges_inp" class="u_emails u_emails" type="text" name="zhemli"/></td>
             <td width="554" ><samp class="cvsfevs yazmdc_xn1" style="color: #aaa;">*请填写您注册时使用的邮箱！</samp></td>
          </tr>
          
          
          <tr height="40">
            <td colspan="3" align="left"><label for="textfield5"></label>
              <table width="912" border="0">
                <tr>
                  <td width="161" height="40" id="td_ing" align="right">*验证码：</td>
                  <td width="100"><input id="reges_inp3" class="yam_cc" type="text" name="zhyam" maxlength="5"/></td>
                  <td width="101">
                     <img style="width: 95px;height: 28px;" src="random.action"
				onclick="changeValidateCode(this)"
				title="点击图片刷新验证码"/>     
                  </td>
                  <td id="gets_ts" width="522"><span id="regesjs6"></span></td>
                </tr>
            </table></td>
          </tr>
          <tr>
          <tr height="40">
            <td width="192" id="td_ing" align="right"></td>
            <td width="198" colspan="2">
            <span style="font-size:14px; color:red;">${zhcwxx}</span>
           </td>
           
          </tr>
            <td height="23" colspan="3" align="left">
            <table width="935" height="39" border="0">
              <tr>
                <td width="161" colspan="2" align="right" valign="middle"><input type="submit" name="button" id="retgs_c" value="确认" />&nbsp;&nbsp;&nbsp;</td>
                <td width="593">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table>
      </form> 
    </div>
</div>
<!--个人登陆--------------------------------->

<!--功能切换段-->

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
