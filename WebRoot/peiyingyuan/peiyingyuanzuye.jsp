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
    
    <title>配音员主页</title>
    
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
        <li id="mum_lncs0" class="mum_licss"><a class="mum_asccss" href="personalcenter.action">个人中心</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="uplaodvoicezp.action">上传作品</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="worksgllist.action">作品管理</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voiceBiddings.action">竞标中的任务</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="Bidsuccess.action">我的任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="odersovers.action">完成的订单</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">个人信息</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voicfs.action">上传头像</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="upusertion.action">基本资料</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="passwordups.action">修改密码</a></li>
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
                      <td width="70" align="right" style="font-size: 13px; color: #666; ">服务度：</td>
                      <td style="font-size: 16px; color:#F60; font-weight: bold;">${sceavg}&nbsp;<samp style="font-size:14px;color:#aaa; font-weight: 100;">(累计交易评分平均值)</samp></td>
                   </tr>
                  </table>
                </div>
                <div id="mun_divuuc3">
                 <table id="mun_table" width="350" border="0" cellpadding="0" cellspacing="0">
                   <tr height="40">
                      <td width="70" align="right" style="font-size: 13px; color: #666; ">交易次数：</td>
                      <td style="font-size: 16px; color:#F60; font-weight: bold;">${uisx.iscoced}&nbsp;<samp style="font-size:14px;color:#aaa; font-weight: 100;">(次)</samp></td>
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
                      <td width="40" style="font-size: 13px; color: #666;">进行中任务:</td>
                      <td width="60" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">${bds.totalCount}</samp>&nbsp;(个)</td>
                   </tr>
                   </table>
                
                </div>
                <div id="mun_lsnmcn4">
                   <table style="margin-left: 40px;" id="mun_table" width="180" border="0" cellpadding="0" cellspacing="0">
                   <tr height="30">
                      <td width="40" align="right" style="font-size: 13px; color: #666;">系统消息:&nbsp;</td>
                      <td width="60" style="font-size: 13px; color:#F90;"><samp style="font-size:16px;color:#F60; font-weight:bold;">${listnews.totalCount }</samp>&nbsp;(条)</td>
                   </tr>
                   </table>
                </div>
                <div id="mun_lsnmcn6">
                    <a id="fnc_sakms" href="btendervoiw" target="_blank"><div id="mub_beijing"><h3 id="mun_h3ff">参与任务</h3></div></a>
                </div>
            </div>
         </div>
         <div id="mun_fnmcs8">
            <div id="ywcdpeyr_li1"><div class="h4_ywcll">进行中的任务</div><div class="h4_ywcll1"><a href="Bidsuccess.action" class="her_lnd">查看更多...</a></div></div>
            <div id="ywcdpeyr_li2" style="border:1px solid #ccc;height: 363px;">
            <c:if test="${bds.totalCount != 0}">
              <c:forEach items="${bds.items }" var="is">
                <div id="yyq1s3">
                   <div id="xx_cc_ii1">
                      <div style="margin-top: 15px; margin-left: 5px;"><a class="iid_kcnc1" href="#">${fn:substring(is.btender.bftranslate.bfNames,0,15)}...</a></div>
                   </div>
                   <div id="xx_cc_ii2" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">${is.btender.tvoice.tvtypeName }</div></div>
                   <div id="xx_cc_ii3" style="text-align: center;"><div style="margin-top: 15px; font-size: 15px;">${is.pfqTime }</div></div>
                   <div id="xx_cc_ii4" style="text-align: center;"><a href="delepartpates!viewthebidding.action?prarid=${is.pid}&yemas=1" style="text-decoration: none;"><div id="ffcc_kld"><div style="margin-top: 5px; font-size: 14px;">立即查看</div></div></a></div>
                </div>
               </c:forEach>
            </c:if>
            <c:if test="${bds.totalCount == 0}">
              <div style="width: 700px;height: 323px;border:0px solid red; color: #666; font-size: 14px; text-align: center;"><div style="margin-top: 100px;"><span>暂无进行中的任务订单</span>&nbsp;&nbsp;<a href="btendervoiw.action" style="color: red; text-decoration: underline;">立即去任务主页</a></div></div>
            </c:if>
            </div>
            <div id="ywcdpeyr_li3" style="border:0px solid red;">
                <div id="ywcdpeyr_li1"><div class="h4_ywcll">常见问题</div><div class="h4_ywcll1"><a href="indexpage!jumpcjwt.action" class="her_lnd">查看更多...</a></div></div>
                <div id="yhncjwt_kc">
                   <table border="0" width="780" cellpadding="0" cellspacing="0" style="margin-top: 12px;">
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.招标方如何进行发布任务并邀请配音员参与任务？</a></td>                 
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.如何完成交易？</a></td>
                         
                      </tr>
                      <tr height="35">
                         <td><a class="sfcjwt_ic" href="#">.无法上传作品？</a></td>
                         
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

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 25px;">


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
