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
    
    <title>关于我们</title>
    
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
    			<a style="text-decoration: none;"  href="javaScript:;" title="网站首页">关于我们</a>
    	</div>
    <div id="paihuang" style="margin-top: 5px;">
    	<div class="paihuangss" style="width: 1000px;">
    		
    		
    		
    		
    		<div class="content" style="border:0px solid red; width:1000px;">
    <div class="content_resize">
      <div class="mainbar"><div class="submb">
        <div class="article">
          <samp id="slinwsjianyi1">关于我们</samp>
          <div id="gywmxx" style="color:#666;"><img style="border:0px; float:left;" src="images/olskmls.png"/>&nbsp;&nbsp;&nbsp;&nbsp;Chinesevoicefreelancers （CVF） 致力于打造全球最大的华语配音竞聘平台。平台旨在帮助配音员与配音需求方实现双方直接交易，去除中间商环节，将原本由中间商层层加码产生的差价让渡给买卖双方，实现了“买家少付款，配音员多赚钱”的双赢局面。 平台采用竞标模式为每一项目选择最佳配音员。同时杜绝低价海选，所有项目起配价为300元，每一项目投标人数不超过8人，最大程度保障配音员的收益。</div>
        </div>
        <div class="article flns">
          <samp id="slinwsjianyi1">联系我们</samp>
           <div id="gywmxx">
              <samp id="gsdz45" style="font-weight:bold; color:#666;">公司地址:</samp><samp>中国重庆市</samp><br /><br />
              <samp id="gsdz45" style="font-weight:bold; color:#666;">公司电话:</samp><samp>023-xxxxxx</samp><br /><br />
              <samp id="gsdz45" style="font-weight:bold; color:#666;">客服电话:</samp><samp>xxxxxx</samp><br /><br />
              <samp id="gsdz45" style="font-weight:bold; color:#666;">&nbsp;&nbsp;客服QQ:</samp><samp>xxxxxxx</samp><br /><br />
              <samp id="gsdz45" style="font-weight:bold; color:#666;">邮箱地址:</samp><samp>xxxxxxx@.com</samp><br /><br />
           </div>
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
<div id="haed_dibu_cc" style="margin-top:20px;">
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
    <!-- 返回顶部 -->
    <div id="huidingbu" ><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>
  </body>
  
        <script type="text/javascript">
		
		  showlaod(500,"#ccc");
        </script>
  
</html>
