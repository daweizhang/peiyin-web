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
    
    <title>任务方主页</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  
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

<!--导航---------------------->

<!----------主体样式------------->
<div style="width: 1000px; height: 3px; border: 0px solid #ccc; background-color:red; margin-top: 10px;"></div>
<div id="void_nes1" style="border: 0px solid #ccc;   height: 850px;">
   <div id="mum_zhutiyi1">
      <ul id="mum_ul_s">
        <li  class="mum_licss1"><span class="mum_asccss1">账户中心</span></li>
        <li id="mum_lncs0" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="loginUsers!rupinuzy.action">会员主页</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="personalcenter.action">个人中心</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="btenderaction.action">发布任务</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="btenlist.action">任务列表</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="unpaidtaskorder.action">待付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="conJumptaskorder.action">已付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="odersovers.action">已完成的订单</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">个人信息</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voicfs.action">上传头像</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="upusertion.action">基本资料</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="taskparty/rwfupadatepas.jsp">修改密码</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="usersystemnews.action">系统消息</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">帮助与服务</span></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpjylc.action">交易流程</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpfyfk.action">费用与付款</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpcjwt.action">常见问题</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumptsjy.action">投诉与建议</a></li>
        <li id="mum_lncs1" class="mum_licss2"><a target="_blank" class="mum_asccss" href="indexpage!jumpgywm.action">关于我们</a></li>
      </ul>
   
   </div>
   <div id="mum_zhutiyi2">
         <div id="mum_grzls1">
            <div id="mun_listcc1">
            <s:if test="uisx.iportrait!=null">
            <img src="upload/${uisx.iportrait}" width="162" height="165">
            </s:if>
            <s:if test="uisx.iportrait==null">
            <img src="images/touxd.png" width="162" height="165">
            </s:if>
            </div>
            <div id="mun_listcc2">
                <div id="mun_divuuc1">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="180" id="xinfid_f1" style="color: #264FA2; font-family:Verdana, Geneva, sans-serif">ID.${uisx.iname}</td>
                      <td></td>
                   </tr>
                   </table>
                </div>
                <div id="mun_divuuc2">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="40">
                      <td width="70" align="right" style="font-size: 13px; color: #666;">我的邮箱：</td>
                      <td style="font-size: 13px; color:#F60;">&nbsp;${uisx.iemail}</td>
                   </tr>
                   </table>
                
                </div>
                <div id="mun_divuuc3">
                 <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="40">
                      <td width="70" align="right" style="font-size: 13px; color: #666; ">信誉值：</td>
                      <td style="font-size: 16px; color:#F60; font-weight: bold;">${uisx.icredibility}&nbsp;<samp style="font-size:14px;color:#aaa; font-weight: 100;">(累计完成一次交易信誉度+1)</samp></td>
                   </tr>
                  </table>
                </div>
                <div id="mun_divuuc4">
                   <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="60" style="font-size: 13px; color: #666;"></td>
                      <td style="font-size: 13px; color:#F90;"></td>
                   </tr>
                   </table>
                </div>
                <div id="mun_divuuc5">
                    <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                       <td width="55" align="right" style="font-size: 13px; color: #666;"></td>
                      <td width="177" style="font-size: 13px; color:#F90;"><span style="font-size: 13px; color:red;"></span></td>
                      <td style="font-size: 13px; color:red;"><a href="#" style="color: red;"></a></td>
                   </tr>
                   </table>
                </div>
 
            </div>
            <div id="mun_listcc3">
                
                <div id="mun_lsnmcn5">
                    <table style="margin-left: 40px;" id="mun_table" width="180" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="40" style="font-size: 13px; color: #666;">待付款任务:</td>
                      <td width="60" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">0</samp>&nbsp;(个)</td>
                   </tr>
                   </table>
                
                </div>
                <div id="mun_lsnmcn4">
                   <table style="margin-left: 40px;" id="mun_table" width="180" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="40" align="right" style="font-size: 13px; color: #666;">系统消息:&nbsp;</td>
                       <td width="60" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">0</samp>&nbsp;(条)</td>
                   </tr>
                   </table>
                </div>
                <div id="mun_lsnmcn6">
                    <a id="fnc_sakms" href="btenderaction.action"><div id="mub_beijing"><h3 id="mun_h3ff">发布任务</h3></div></a>
                </div>
            </div>
         </div>
         <div id="mun_fnmcs8">
            <div id="ywcdpeyr_li1"><div class="h4_ywcll">待付款任务</div><div class="h4_ywcll1"><a href="#" class="her_lnd">查看更多...</a></div></div>
            <div id="ywcdpeyr_li2">
            
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">国学少年班夏令营专题配音稿...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">广告配音</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">06/08</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="#" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
                

            
            </div>
            <div id="ywcdpeyr_li3" style="border:0px solid red;">
                <div id="ywcdpeyr_li1"><div class="h4_ywcll">常见问题</div><div class="h4_ywcll1"><a href="#" class="her_lnd">查看更多...</a></div></div>
                <div id="yhncjwt_kc">
                   <table border="0" width="780" cellpadding="0" cellspacing="0" style="margin-top: 12px;">
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.招标方如何进行发布任务并邀请配音员参与任务？</a></td>                 
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.如何完成交易流程？</a></td>
                         
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.The tenderee dubbing staff how to release the task and invited to participate in the task?</a></td>
                         
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.如何进行登录？</a></td>
                       
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.如何进行登录？</a></td>
                   
                      </tr>
                   
                   </table>
                
                </div>
            
            
            </div>
         </div>
   </div>




</div>

<!----------主体样式------------->

<!----------底部样式------------->
<div>
<div id="haed_dibu_cc" style="margin-top:40px;">
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
    <!-- 返回顶部 -->
    <div id="huidingbu" ><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>
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
	pageNav.go(1,30);

});

  </script>


</html>
