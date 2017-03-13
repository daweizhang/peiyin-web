<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>我的订单信息</title>
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
  <link rel="stylesheet" href="css/lc_switch.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquerys.js"></script>
  <script type="text/javascript" src="js/lc_switch.js"></script>
  <script type="text/javascript" src="js/tishi.js"></script>
  <link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  	<link rel="stylesheet" href="css/tishi.css" type="text/css"></link>
 <link rel="stylesheet" href="css/zuopingupdate.css" type="text/css"></link>
  
  <script type="text/javascript" src="js/comment.js"></script>
  </head>
  
<style type="text/css">
#lvnlsnee{
border-radius:5px;
width: 150px; height: 30px;
background-color: #690;
border:0px;
color: #fff;
}
#lvnlsnee:hover{
 background-color: #F60;
}
#sampcsslsa{
font-size: 18px;
font-weight: bold;
color: #F60;
}





img{border:0;}
/*quiz style*/
.quiz{border:solid 1px #ccc;height:270px;width:772px;}
.quiz h3{font-size:14px;line-height:35px;height:35px;border-bottom:solid 1px #e8e8e8;padding-left:20px;background:#f8f8f8;color:#666;position:relative;}
.quiz_content{padding-top:10px;padding-left:20px;position:relative;height:205px;}
.quiz_content .btm{border:none;width:100px;height:33px;background:url(images/btn.gif) no-repeat;margin:10px 0 0 64px;display:inline;cursor:pointer;}
.quiz_content li.full-comment{position:relative;z-index:99;height:41px;}
.quiz_content li.cate_l{height:24px;line-height:24px;padding-bottom:10px;}
.quiz_content li.cate_l dl dt{float:left;}
.quiz_content li.cate_l dl dd{float:left;padding-right:15px;}
.quiz_content li.cate_l dl dd label{cursor:pointer;}
.quiz_content .l_text{height:120px;position:relative;padding-left:18px;}
.quiz_content .l_text .m_flo{float:left;width:47px;}
.quiz_content .l_text .text{width:634px;height:109px;border:solid 1px #ccc;}
.quiz_content .l_text .tr{position:absolute;bottom:-18px;right:40px;}
/*goods-comm-stars style*/
.goods-comm{height:41px;position:relative;z-index:7;}
.goods-comm-stars{line-height:25px;padding-left:12px;height:41px;position:absolute;top:0px;left:0;width:400px;}
.goods-comm-stars .star_l{float:left;display:inline-block;margin-right:5px;display:inline;}
.goods-comm-stars .star_choose{float:left;display:inline-block;}
/* rater star */
.rater-star{position:relative;list-style:none;margin:0;padding:0;background-repeat:repeat-x;background-position:left top;float:left;}
.rater-star-item, .rater-star-item-current, .rater-star-item-hover{position:absolute;top:0;left:0;background-repeat:repeat-x;}
.rater-star-item{background-position: -100% -100%;}
.rater-star-item-hover{background-position:0 -48px;cursor:pointer;}
.rater-star-item-current{background-position:0 -48px;cursor:pointer;}
.rater-star-item-current.rater-star-happy{background-position:0 -25px;}
.rater-star-item-hover.rater-star-happy{background-position:0 -25px;}
.rater-star-item-current.rater-star-full{background-position:0 -72px;}
/* popinfo */
.popinfo{display:none;position:absolute;top:30px;background:url(images/comment/infobox-bg.gif) no-repeat;padding-top:8px;width:192px;margin-left:-14px;}
.popinfo .info-box{border:1px solid #f00;border-top:0;padding:0 5px;color:#F60;background:#FFF;}
.popinfo .info-box div{color:#333;}
.rater-click-tips{font:12px/25px;color:#333;margin-left:10px;background:url(images/comment/infobox-bg-l.gif) no-repeat 0 0;width:125px;height:34px;padding-left:16px;overflow:hidden;}
.rater-click-tips span{display:block;background:#FFF9DD url(images/comment/infobox-bg-l-r.gif) no-repeat 100% 0;height:34px;line-height:34px;padding-right:5px;}
.rater-star-item-tips{background:url(images/comment/star-tips.gif) no-repeat 0 0;height:41px;overflow:hidden;}
.cur.rater-star-item-tips{display:block;}	
.rater-star-result{color:#FF6600;font-weight:bold;padding-left:10px;float:left;}

</style>


<body>

<div id="vorc_hard" style="height: 500px;">
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
    
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>

<div class="theme-popover" style="z-index: 2; position:absolute; height: 700px">
     <div id="zuopinxiug" class="theme-popbod dform" style="height: 530px;"> 
          <div id="zuiopingclss">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/jinbiaoxinxi.png"></samp><samp id="knvel1">我的订单信息</samp>
          </div>
          <div id="zuopingzti">
                <div id="donttaijiz" style="margin-top: 10px;">           
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务信息：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <a href="voiwtaskbt.action?bid=${mptes.btender.btid }" target=" _blank"><input id="lvnlsnee"  type="button" value="查看任务详细"/></a>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">配音员信息：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <a href="insvoiw.action?uid=${mptes.puserId.iid}" target=" _blank"><input id="lvnlsnee"  type="button" value="查看配音员详细"/></a>
                       </td>
                    </tr>
                 </table>
                 <input type="hidden" id="socnelsuiuersid" value="${mptes.puserId.iid}"/>
                 <input type="hidden" id="odersids" value="${mptes.pid}"/>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">订单号：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.pjbremail }</samp>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">我的付款账户：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.paycount }</samp>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">订单总价：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.pjbrphone }.00RMB(￥)&nbsp;&nbsp;</samp>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务开始时间：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.pfkTime }</samp>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务时间范围：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.ptimelimit }(小时之内)</samp>
                       </td>
                    </tr>
                 </table>
                 
                  <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">配音员ID：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px;">${mptes.puserId.iname }</samp>
                       </td>
                    </tr>
                 </table>
                 

                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务试音：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <span style="font-size:14px; color: #666;"><a href="javascript:bofang('TA的试音','${mptes.psyfileName}');"><img src="images/isc.ico" width="28" height="28"></img></a></span>
                       </td>
                    </tr>
                 </table>
                 
                 
                  <!-- <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务剩余时间：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">01天 12小时 22分 55秒</samp>
                       </td>
                    </tr>
                 </table> -->
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="60">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">温馨提示：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" style="font-size: 14px; color: #333;">配音员提交成品后，系统会向您发送邮件提醒，请关注联系邮箱！</samp>
                       </td>
                       </td>
                    </tr>
                 </table>
                 
                 <c:if test="${mptes.prwfemail == '100' || mptes.prwfemail == '150'}">
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="109" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务进度：</span></td>
                       <td width="80" align="center" style="font-size: 14px;">
                           <img style="border:0px solid red;" src="images/iwaity.gif" width="80" height="80"/>
                       </td>
                       <td width="235" align="left" style="font-size: 14px;">
                       <samp id="sampcsslsa" >制作中...</samp>
                       </td>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">交付的产品：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa" >暂无产品!请稍等...</samp>
                       </td>
                       </td>
                    </tr>
                 </table>
                 </c:if>
                 
                 <c:if test="${mptes.prwfemail == '200'}">
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="109" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务进度：</span></td>
                       <td width="80" align="center" style="font-size: 14px;">
                           <img style="border:0px solid red;" src="images/zhizuoOK.png" width="82" height="81"/>
                       </td>
                       <td width="235" align="left" style="font-size: 14px;">
                       <samp id="sampcsslsa" >制作完成</samp>
                       </td>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">交付的产品：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <div style="border:0px solid #ccc; width: 55px; height:50px; float: left; padding-top: 5px;">
                           <img src="images/yinpingwanjian.png" style="border:0px;">
                            </div>
                            <div style="border:0px solid #ccc; width: 30px; margin-top:9px; float: left; padding-top: 5px;">
                             <span style="font-size:14px; color: #666;"><a href="javascript:bofang('提交的产品','${mptes.pvire}');"><img src="images/isc.ico" width="28" height="28"></img></a></span>  
                             </div>
                             <div style="border:0px solid #ccc; width: 280px; margin-top:9px; float: left; padding-top: 5px;"> 
                             <a href="download.action?filename=/yinyue/${mptes.pvire }"><input id="lvnlsnee"  type="button" value="产品下载"/></a>
                           </div>
                       </td>
                       </td>
                    </tr>
                 </table>
                 
                     
                 <c:if test="${mptes.pwhetherscore=='110' }">
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">配音员评分：</span></td>
                       <td width="320" align="left" style="font-size: 14px;" id="sleonilsn">
                       <div id="piaenfs">
                           <div class="goods-comm"
										style="font-size:12px; border:0px solid red; margin-top: 17px; margin-left: -10px;">
										<div class="goods-comm-stars">
											<div id="rate-comm-1" class="rate-comm"></div>
										</div>
									</div>
							<div>
								</td>
                    </tr>
                 </table>
                 </c:if>
                 <c:if test="${mptes.pwhetherscore=='111' }">
                    <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">配音员评分：</span></td>
                       <td width="320" align="left" style="font-size: 14px;"><div id="piaenfs">
                            <div style="margin-top: 7px;">
	                            <div style="float: left;">
	                               <c:if test="${mptes.pscorect=='1' }">
	                               <img src="images/imgspf/p1.png" width="122" height="27"/>
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='2' }">
	                               <img src="images/imgspf/p2.png" width="122" height="27"/>
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='3' }">
	                               <img src="images/imgspf/p3.png" width="122" height="27"/>
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='4' }">
	                               <img src="images/imgspf/p4.png" width="122" height="27"/>
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='5' }">
	                               <img src="images/imgspf/p5.png" width="122" height="27"/>
	                               </c:if>
	                            </div>
	                            <div style="float: left; margin-top: 5px; margin-left: 2px;">
	                            <samp style="font-size: 12px; font-weight: bold;color: #F60;">&nbsp;&nbsp;${mptes.pscorect}分&nbsp;
	                               <c:if test="${mptes.pscorect=='1' }">
	                                <span>很不满意</span> 
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='2' }">
	                                <span>不满意</span> 
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='3' }">
	                                <span>一般</span> 
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='4' }">
	                                <span>满意</span> 
	                               </c:if>
	                               <c:if test="${mptes.pscorect=='5' }">
	                                <span>非常满意</span>  
	                               </c:if>
	                            </samp>
	                            </div>
                            </div>
						</td>
                    </tr>
                 </table>
                 
                 </c:if>
                 </c:if>
                 
                
                 
                 
              </div>
          </div>
     </div>
     <c:if test="${mptes.pzhifuzt=='2' }">
     <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;"><a href="conJumptaskorder.action" class="fgclose"><div style="float: right; margin-right: 20px;" class="close1" style="margin-left: 35px;">返回</div></a></div>
     </c:if>
     <c:if test="${mptes.pzhifuzt=='3' }">
     <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;"><a href="odersovers.action" class="fgclose"><div style="float: right; margin-right: 20px;" class="close1" style="margin-left: 35px;">返回</div></a></div>
     </c:if>
</div>
</form>
<div class="theme-popover-mask" style="z-index: 0;"></div>
</body>
<script type="text/javascript">
 $("#fsbelke").lc_switch();
		$(".theme-popover-mask").fadeIn();
		$(".theme-popover").fadeIn();

//$(function(){ //for jquery
window.onload = (function(){
  $("#fsbelke").lc_switch();
	//optional set
	pageNav.pre="上一页";
	pageNav.next="下一页";
	

	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};
	
	//重写分页状态,跳到第三页,总页33页
	pageNav.go(1,'${listw.totalPageCount}');
	
	

});



function ckidzpbj(id){
  
  //获取页码
  var ycym=$("#hiddjy").val();
  var htmlzp="";
 /*  $.getJSON("/peiyin//worksgllist.action?djy="+id,function(data){
      var htmlzp="";
       $(data.listw.items).each(function(){   
          //alert(this.worksName+"--"+this.wtime); 
         

       });
     
	});  */
	    htmlzp+="";
	    
        //$("#zuopingzti").html(htmlzp);
     
        //开关加载
        $("#fsbelke").lc_switch();
		$(".theme-popover-mask").fadeIn();
		$(".theme-popover").fadeIn();
	};
$(".theme-poptit .close").click(function(){
		$(".theme-popover-mask").fadeOut();
		$(".theme-popover").fadeOut();
});

function chekbox(){
   var gkid=$("#knslks").val();

   if(gkid==0){
    $("#knslks").val(1);
   }else{
    $("#knslks").val(0);
   }
}


  </script>


</html>
