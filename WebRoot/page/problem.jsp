<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>常见问题</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css/stylepege.css" type="text/css"></link>
  </head>

<body>
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
     <div id="d_list_lic9" >
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
<div class="xqweizi1" style="margin-top: 5px;">
    			<a style="text-decoration: none;" class="xqweizi11" href="index.action" title="网站首页">网站首页</a>＞
    			<a style="text-decoration: none;"  href="javaScript:;" title="网站首页">常见问题</a>
    	</div>
    <div id="paihuang" style="margin-top: 5px;">
    	<div class="paihuangss" style="width: 1000px;">
    		
    		
    		
    		
    		
    		
    		<div class="content" style="border:0px solid red; width:1000px;">
    <div class="content_resize">
      <div class="mainbar"><div class="submb">
        <div class="article">
          <samp id="slinwsjianyi1">问题解答</samp>
          <div id="gywmxxggg" style="color:#666;">
            <table width="575" height="49" border="0">
              <tr>
                <td width="414" align="right"><form id="form1ss" name="form1" method="post" action="">
                  <label for="textfield"></label>
                  <input type="text" name="textfield" id="textfieldss" />
              </td>
                <td width="145" align="left">
                  <input type="submit" name="button" id="buttonss" value="提交" />
                </form></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="article flns">
          <samp id="slinwsjianyi1" style="font-size:16px; color:#333;">链接点击404或500？</samp>
           <div id="gywmxx_ooo" style="color:#666;">
                  &nbsp;&nbsp;尊敬的用户，您好!若你点击链接跳转到404 或者  500 非常抱歉，给你带来不便，敬请谅解。我们会很会快进行修复!
           </div>
           <br />
           <samp id="slinwsjianyi1" style="font-size:16px; color:#333;">无法查看我的任务？</samp>
           <div id="gywmxx_ooo" style="color:#666;">
                  &nbsp;&nbsp;任务点击在选取竞标人跳转到支付页面后，系统将自动跳取消该任务下其他参与的竞标人员，并且任务信息将显示到待付款列表里!
           </div>
           <br />
           <samp id="slinwsjianyi1" style="font-size:16px; color:#333;">邮箱无法接收验证码？</samp>
           <div id="gywmxx_ooo" style="color:#666;">
                  &nbsp;&nbsp;尊敬的用户，您好!首先请您仔细核对你的邮箱是否填写正确，若邮箱填写错误，请及时修改!
           </div>
           <br />
           
          
           
           
           <!-- <div id="gywmxx_ooo" style="color:#666; height:30px; border:1px solid #ccc; margin-top:20px;">
                分页
           </div> -->
        </div>
      </div></div>
      <div class="sidebar">
        <div class="gadget">
          <samp id="slinwsjianyi1" style="font-size:18px;line-height:50px;">快速导航</samp>
          <ul class="sb_menu" style="font-size: 14px;">
            <li><a href="#">首页</a></li>
            <li><a href="#">安全中心</a></li>
            <li><a href="#">任务列表</a></li>
            <li><a href="#">配音员列表</a></li>
            <li><a href="#">作品列表</a></li>
            <li><a href="#">关于我们</a></li>
          </ul>
        </div>
        <div class="gadget">
          <samp id="slinwsjianyi1" style="font-size:18px; line-height:50px;">常见问题</samp>
          <ul class="ex_menu" style="font-size: 14px;">
            <li><a href="#" title="网站模板">邮箱失效</a><br />邮箱找回密码失效，无法接收验证吗？</li>
            <li><a href="#" title="WordPress Themes">翻译错误</a><br />英文版本译文有误，如何反馈？</li>
            <li><a href="#" title="Affordable Hosting">英文版本信息错误</a><br />页面无法显示信息，无数据输出到页面？</li>
            <li><a href="#" title="Stock Photos">无法提交试用</a><br />登录后无法提交试音?</li>
            <li><a href="#" title="Website Builder">无法上传作品</a><br />无法上传自己的配音作品？</li>
            <li><a href="#" title="Stock Icons">无法下载音频文件</a><br />配音完成后，任务方无法下载音频文件？</li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
    		
    		
    		
    		
    		
    		
    	</div>
    </div>
    
    
<div>
<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 12px;">


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
  
        <script type="text/javascript">
		
		  showlaod(500,"#ccc");
        </script>
  
</html>
