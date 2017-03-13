<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>配音员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 是否登录弹出 -->
  <link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
  
   <script type="text/javascript" src="css-js-file/ScrollText.js"></script>
  <link rel="stylesheet" href="css-js-file/style-gundong.css" type="text/css"></link>
  
  <link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
   <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/indexJS.js"></script>
  <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
  <link rel="stylesheet" href="css/peiyingyuan.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="js/tanchu.js"></script>
   <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css/styletanc.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/jquery.easing.min.js"></script>
  <script type="text/javascript" src="css-js-file/jquery.mixitup.min.js"></script>
  <link rel="stylesheet" href="css-js-file/layout.css" type="text/css"></link>
 <script type="text/javascript" src="js/tishi.js"></script>
  <link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  	<link rel="stylesheet" href="css/tishi.css" type="text/css"></link>
 <link rel="stylesheet" href="css/zuopingupdate.css" type="text/css"></link>
<link rel="stylesheet" href="css/spinners.css" type="text/css"></link>
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

<script type="text/javascript">

	$(function () {
		
		var filterList = {
		
			init: function () {
			
				// MixItUp plugin
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -65}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		filterList.init();
	});	
	
$(function(){

$("#fsbbb").click(function(){
            $("#tanschusb789").show();
		    $(".card852").show();
			  $("#thistis_icns").fadeIn(200);
			  $("#thistis_icnicns").slideDown(200);	  
			 $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	  });
	 $("#fklwnlselx").click(function(){
   $("#tanschusb789").show();
		    $(".card852").show();
			  $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200);  
			  $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	  });	  
    
});
	</script>


<body>
<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

<div id="tanschusb789" style="display: none;"></div>
<div class="card852" style="display: none;">
<span class="spinner-loader">Loading&#8230;</span>
<div class="jiazaiz963">Loading......</div>
</div>

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
           <td width="85" height="45" align="right"><div class="d_utnkcn1" style="margin-left:52px;"></div></td>
           <td width="105" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="80" height="45" align="right"><div class="d_utnkcn2" style="margin-left:53px;"></div></td>
           <td width="120" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音任务</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="voiceyindex.action">
     <div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
           <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="81" height="45" align="right"><div class="d_utnkcn3" style="margin-left:49px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -161px;"></div></td>
           <td width="120" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp" style="color: #F16700;">配音员</samp></td>
         </tr>
       </table>
     </div>
     </a>
     <a href="worksvoiw.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="81" height="45" align="right"><div class="d_utnkcn4" style="margin-left:49px;"></div></td>
           <td width="120" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">配音作品</samp></td>
         </tr>
       </table>
     </div>
     </a>
     <a href="ranking.action">
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="81" height="45" align="right"><div class="d_utnkcn5" style="margin-left:49px;"></div></td>
           <td width="120" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">排行榜</samp></td>
         </tr>
       </table>
     </div>
     </a>
  </div>
</div>
</div>
 </div>
<!--导航---------------------->

<!----------主体样式------------->
<div id="void_nes1">
   <div id="pyy_lsnls">

		 <div class="selectbox">
    <div id="lskne4sef1">
       
    </div>
    <div id="lskne4sef2">
       <div id="efgabepp1"></div>
       <div id="efgabepp2"></div>
       <div id="efgabepp3"></div>
       <div id="efgabepp4"></div>
       <div id="efgabepp5"></div>
    </div>
    

    <div class="selemediv" style="z-index:555;">
    <div class="selemenu" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput">配音类型</span></a></div>
           <div class="citylist2" id="sflken" style="z-index:1; margin-top:65px;">
                <div class="xzk" style="z-index:1;">
                 <ul class="chengshi" style="z-index:1;">
                   <c:forEach items="${tlistT}" var="tvo">
                      <a href="javaScript:dubbingtype('${tvo.tvtypeName}');"><li>${tvo.tvtypeName}</li></a>
                   </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
   
    <div class="selemediv1" style="z-index:555;">
    <div class="selemenu1" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput1">配音员性别</span></a></div>
           <div class="citylist3" id="sflken1" style="z-index:1; margin-top:65px;">
                <div class="xzk1">
                 <ul class="chengshi1">
                 <c:forEach items="${sexslist }" var="sx">
							    <c:forEach items="${sx.value}" var="value">
                                      <a href="javaScript:sexfind('${value}');"><li>${value}</li></a>
                                </c:forEach>
     	          </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    
    <div class="selemediv2" style="z-index:555;">
    <div class="selemenu2" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput2">配音语言</span></a></div>
           <div class="citylist4" id="sflken2" style="z-index:1;margin-top:65px;">
                <div class="xzk2">
                 <ul class="chengshi2">
                 <c:forEach items="${tlistl}" var="lg">
                  <a href="javaScript:language('${lg.lgtypeName}');"><li>${lg.lgtypeName}</li></a> 
                  </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    
     <div class="selemediv3" style="z-index:555;">
    <div class="selemenu3" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput3">配音口音</span></a></div>
           <div class="citylist5" id="sflken3" style="z-index:1;margin-top:65px;">
                <div class="xzk3">
                 <ul class="chengshi3">
                 <c:forEach items="${tlists}" var="so">
                     <a href="javaScript:agephase('${so.sid}');"><li>${so.scrowdName }</li></a>
                 </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    <s:if test="#session.users==null">
    <a href="javaScript:;" id='fsbbb'><div id="fabucon">
       <span id="fsfvebb">发布任务</span>
    </div></a>
    </s:if>
    
    <s:if test="#session.users!=null">
      <s:if test="#session.users.dtype.did=='berwartaedfeee'">
       <a href="javaScript:;" id='fsbbb'><div id="fabucon">
       <span id="fsfvebb">发布任务</span>
       </div></a>
      </s:if>
      <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
       <a href="btenderaction.action" id='fsbbb'><div id="fabucon">
       <span id="fsfvebb">发布任务</span>
       </div></a>
      </s:if>
    </s:if>
    
</div>
		 
	

   </div>
   <div id="pyy_paixu">
      <ul id="pyy_ylcs">
         <a class="pyy_acs1" href="javascript:thesorting(1);"><li id="ppy_ulns_1" class="pyy_lics">↑默认</li></a>
         <a class="pyy_acs1" href="javascript:thesorting(2);"><li id="ppy_ulns_1" class="pyy_lics">↓注册时间</li></a>
         <a class="pyy_acs1" href="javascript:thesorting(3);"><li id="ppy_ulns_1" class="pyy_lics">↓信誉度</li></a>
         <input id="pxm" type="hidden" value="1"/>
      </ul>

         <span id="ztscss">&nbsp;&nbsp;每页显示&nbsp;<span id="yemacss1"></span>&nbsp;条</span>
         <span id="ztscss">共&nbsp;<span id="yemacss2"></span>&nbsp;条记录</span>
   
   </div>
   
   <div id="pyy_pyry">
     <div id="pyy_pyry1">
       <div id="pyy_pyry3">
       	 <div id="portfoliolist" style="border:0px solid red; width:680px;">

          <%-- <c:forEach items="${vlist.items }" var="vit">
			<div class="portfolio logo" data-cat="logo" style="height:160px;">
				<div class="portfolio-wrapper"  style="height:160px;">
				<c:if test="${vit.iportrait!=null}">	
				   <img src="upload/${vit.iportrait}" height="160" width="160" alt="" />
				</c:if>
				<c:if test="${vit.iportrait==null}">
				    <img src="upload/txtub.png" height="160" width="160" alt="" />
				</c:if>
					<div class="label">
						<div class="label-text" style="border:0px solid red; line-height: 15px;">
							<span style="font-size:13px;">User:${fn:substring(vit.iuserName,0,3)}***${fn:substring(vit.iuserName,5,7)}</br>&nbsp;${fn:substring(vit.iregion,fn:indexOf(vit.iregion,"-")+1,fn:length(vit.iregion))}&nbsp;${vit.isex }&nbsp;</span></br>
                            <span style="font-size:13px;">信誉度${vit.icredibility }&nbsp;</span></br>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
          </c:forEach> --%>




				
	</div>	
  </div>
     
     
<div id="pyy_pyry4">
	<div id="pageNav" style="width:650px;margin-top: 15px;"></div>
</div>

     </div>
     <div id="pyy_pyry2" style="height: 868px;">
     	<div class="pyy_pyry21">
     	    
     	    
     	    <div class="scrolltext" style=" border:0px solid red;">
    <div id="li_lcadaohangds"><samp id="zrziti">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最新上传的作品</samp></div>
	<div id="breakNews" style=" border:0px solid red;">
		<ol id="breakNewsList" class="list6" style=" border:0px solid red;">
        
        
        <c:forEach items="${wlist}" var="wok">
        <li>
            <a id="ccx_apy_l" href="worksdeta.action?wid=${wok.wid}" style="text-decoration:none;">
               <table width="300" border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;">
     			   <tr height="30">
     			     <td width="111" height="27" style=" font-size:15px;  font-family:'微软雅黑'">${fn:substring(wok.worksName,0,6) }...</td>
     			     <td width="131" align="center" style=" font-size:15px; font-family:'微软雅黑'">${wok.tvoice.tvtypeName }</td>
     			     <td width="50" align="center">    
     			     <div id="sfgk1">
                         <a href="javascript:bofang('${fn:substring(wok.worksName,0,6) }','${wok.worksFile}');"><img src="images/isc.ico" width="28" height="28" style="margin-top: 6px;"></img></a></span>
	                  </div>
     			     </td>
				   </tr>
				</table>  
			</a>
		</li>
		</c:forEach>
		
		
		
		
		</ol>
	</div>
	<div class="part">
		<span id="pre2"><img id="tuanshangcz1" src="images/h1-img03.gif" /></span><span id="next2"><img id="tuanshangcz1" src="images/h1-img02.gif" /></span>
	</div>
</div>

     		
     	</div>
     	<div class="pyy_pyry22" style=" background-color: #FFF; border:0px solid #ccc; height: 382px;">
     	    <img alt="" src="images/uuuuuuuuu.png" width="315" height="388"/>
     	</div>
     </div>
   
   </div>



</div>

<input id="screening" type="hidden" value="">
<input id="sex" type="hidden" value="">
<input id="lgtype" type="hidden" value="">
<input id="rqjds" type="hidden" value="">
<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 12px;">


			<!--foot-->
			<div class="footbox">
				<div class="foot">
					<div class="bb1">
						<div class="bb1-img"></div>
						<div class="bb1-text">
							<ul>
								<LI>公司名称：Chinesevoicefreelancers(CVF)配音有限责任公司
								<LI>工作地址：重庆市沙坪坝区
								<LI>业务电话：(023)xxxxxxx</LI>
							</ul>
						</div>
					</div>
					<div class="bb2">
						<div class="bb2-img"></div>
						<div class="bb2-text">
							<ul>
								<DIV class=bb2-text>
									<UL>
										<LI>配音热线：<SPAN class="font-weight font-color font-size14">400
												888 8888</SPAN>
										<LI>急速配音：023-12345678
										<LI>电子邮箱：969353498@qq.com</LI>
									</UL>
								</DIV>
							</ul>
						</div>
					</div>
					<div class="bb3">
						<div class="bb3-img"></div>
						<div class="bb3-text">
							<ul>
								<LI>在线业务洽谈：
								<LI>QQ 969353498</LI>
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
								Chinesevoicefreelancers(CVF) © 2015-2020 s.cn All Rights
								Reserved.渝ICP备08106896号经营许可证闽B2-20110061.</span></li>
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
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>
    
    
    
    
    
    <div id="thistis_icns" style="display:none; z-index: 999;">
</div>
<div id="thistis_icnicns" style="display:none; z-index: 999;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">温馨提示:</span></td>
        <td width="45" align="center" valign="middle">
          <a style="text-decoration:none;" id="fklwnlselx" href="javascript:;"><div id="flsvwlke"><span style="font-weight:bold; font-size:28px; color:#990;">✖</span></div></a>
        </td>
      </tr>
    </table>
  </div>
  <div id="lsncs_olc2">
      <div id="tishtusl">
           <span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
      <div id="tishtuslxx">

      
        <s:if test="#session.users==null">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!登录后才可发布任务!</span>
       </s:if>
       <s:if test="#session.users!=null">
         <s:if test="#session.users.dtype.did=='berwartaedfeee'">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!配音员无法发布任务!</span>
         </s:if>
       </s:if>
       
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="loginUsers!findUserType.action" target="_blank"><input id="cnwlbann1" type="button" value="马上注册"/></a>
     <a class="sesscs" href="User/login.jsp" target="_blank"><input id="cnwlbann1" type="button" value="立即登陆"/></a>
  </div>
</div>    
    
    
    
    
    
</body>
<script type="text/javascript">

$(function(){
    showsub(1);
    //showlaod(500,"#ccc");
});


function showsub(id){

   var screeid=$("#screening").val()+$("#sex").val()+$("#lgtype").val()+$("#rqjds").val()+"ull";
   //alert(screeid);
   var paxm=$("#pxm").val();
        $("#portfoliolist").html(" ");
     pageNav.pre="上一页";
	pageNav.next="下一页";
	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};   
   $("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//voiceyindex.action",{"tdjy":id,"paxm":paxm,"screeid":screeid},function(data){
       var html="";
       $(data.vlist.items).each(function(){   
          //alert(this.iuserName+"--"+this.iname);
           var tx="";
           if(this.iportrait==null){
              tx="upload/txtub.png";
           }else{
              tx="upload/"+this.iportrait;
           }
           var username=this.iuserName.substring(0,3);
           var username1=this.iuserName.substring(5,7);
           
           //var dz=this.iregion.substring(this.iregion.indexOf("-")+1,this.iregion.length);
         html+="<a href='insvoiw.action?uid="+this.iid+"' target='_blank'><div class='portfolio logo' data-cat='logo' style='height:160px;'>"
	        +"<div class='portfolio-wrapper'  style='height:160px;'>"
		    +"<img src='"+tx+"' height='160' width='160' alt='' />"
			+"<div class='label'>"
			+"<div class='label-text' style='border:0px solid red; line-height: 15px;'>"
			+"<span style='font-size:13px;'>User:"+username+"***"+username1+"</br>&nbsp;"+this.isex+"&nbsp;</span></br>"
            +"<span style='font-size:13px;'>信誉度"+this.icredibility+"&nbsp;</span></br>"
			+"</div>"
			+"<div class='label-bg'></div>"
		    +"</div>"
	        +"</div>"
            +"</div></a>";
       });
      $("#portfoliolist").html(html);
      $("#yemacss2").html(data.vlist.totalCount);
      $("#yemacss1").html(data.vlist.pageSize);
      $('html,body').animate({scrollTop:0},400);
      var filterList = {
			init: function () {
				// MixItUp plugin
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			hoverEffect: function () {
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -65}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);	
			}
		};
		filterList.init();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
		pageNav.go(data.vlist.currPageNo,data.vlist.totalPageCount);
   });
}


//排序
function thesorting(pxids){
 //window.location.href="voiceyindex.action?pxids="+pxids;
 var screeid=$("#screening").val()+$("#sex").val()+$("#lgtype").val()+$("#rqjds").val()+"ull";
 $("#pxm").val(pxids);//排序码
// alert(screeid);
  $("#portfoliolist").html(" ");
  pageNav.pre="上一页";
	pageNav.next="下一页";
	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};   
	$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//voiceyindex.action",{"pxids":pxids,"screeid":screeid},function(data){
       var html="";
       $(data.vlist.items).each(function(){   
          //alert(this.iuserName+"--"+this.iname);
           var tx="";
           if(this.iportrait==null){
              tx="upload/txtub.png";
           }else{
              tx="upload/"+this.iportrait;
           }
           var username=this.iuserName.substring(0,3);
           var username1=this.iuserName.substring(5,7);
           
           //var dz=this.iregion.substring(this.iregion.indexOf("-")+1,this.iregion.length);
         html+="<a href='insvoiw.action?uid="+this.iid+"' target='_blank'><div class='portfolio logo' data-cat='logo' style='height:160px;'>"
	        +"<div class='portfolio-wrapper'  style='height:160px;'>"
		    +"<img src='"+tx+"' height='160' width='160' alt='' />"
			+"<div class='label'>"
			+"<div class='label-text' style='border:0px solid red; line-height: 15px;'>"
			+"<span style='font-size:13px;'>User:"+username+"***"+username1+"</br>&nbsp;"+this.isex+"&nbsp;</span></br>"
            +"<span style='font-size:13px;'>信誉度"+this.icredibility+"&nbsp;</span></br>"
			+"</div>"
			+"<div class='label-bg'></div>"
		    +"</div>"
	        +"</div>"
            +"</div></a>";
       });
       
      $("#portfoliolist").html(html);
      $("#yemacss2").html(data.vlist.totalCount);
      $("#yemacss1").html(data.vlist.pageSize);
      $('html,body').animate({scrollTop:0},100);
      var filterList = {
			init: function () {
				// MixItUp plugin
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			hoverEffect: function () {
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -65}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);	
			}
		};
		filterList.init();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
		pageNav.go(data.vlist.currPageNo,data.vlist.totalPageCount);
   });
}

//配音类型
function dubbingtype(tyid){
    $("#screening").val(tyid+"Y,");
    screeningsx();
}
//性别
function sexfind(x){
    $("#sex").val(x+"X,");
    screeningsx();
}
//语言
function language(lid){
   $("#lgtype").val(lid+"W,");
    screeningsx();
}
//人群阶段
function agephase(agepsid){
   $("#rqjds").val(agepsid+"R,");
    screeningsx();
}

//条件清除
function fin1(){
	$("#efgabepp1").html("");
	$("#screening").val("");
	klnsekln();
	screeningsx();
}
function fin2(){
	$("#efgabepp2").html("");
	$("#sex").val("");
	klnsekln();
	screeningsx();
}	
function fin3(){
	$("#efgabepp3").html("");
	$("#lgtype").val("");
	klnsekln();
	screeningsx();
}	
function fin4(){
	$("#efgabepp4").html("");
	$("#rqjds").val("");
	klnsekln();
	screeningsx();
}	
//清除条件
function find8(){
	$("#efgabepp1").html("");
	$("#efgabepp2").html("");
	$("#efgabepp3").html("");
	$("#efgabepp4").html("");
	$("#efgabepp5").html("");
	$("#sex").val("");
	$("#screening").val("");
	$("#lgtype").val("");
	$("#rqjds").val("");
	screeningsx();
	
	}

//统一条件
function screeningsx(){
   var paxm=$("#pxm").val();
   var screeid=$("#screening").val()+$("#sex").val()+$("#lgtype").val()+$("#rqjds").val()+"ull";
   $("#portfoliolist").html(" ");
   pageNav.pre="上一页";
	pageNav.next="下一页";
	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
	};  
	$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//voiceyindex.action",{"pxids":paxm,"screeid":screeid},function(data){
       var html="";
       $(data.vlist.items).each(function(){   
          //alert(this.iuserName+"--"+this.iname);
           var tx="";
           if(this.iportrait==null){
              tx="upload/txtub.png";
           }else{
              tx="upload/"+this.iportrait;
           }
           var username=this.iuserName.substring(0,3);
           var username1=this.iuserName.substring(5,7);
           
           //var dz=this.iregion.substring(this.iregion.indexOf("-")+1,this.iregion.length);
         html+="<a href='insvoiw.action?uid="+this.iid+"' target='_blank'><div class='portfolio logo' data-cat='logo' style='height:160px;'>"
	        +"<div class='portfolio-wrapper'  style='height:160px;'>"
		    +"<img src='"+tx+"' height='160' width='160' alt='' />"
			+"<div class='label'>"
			+"<div class='label-text' style='border:0px solid red; line-height: 15px;'>"
			+"<span style='font-size:13px;'>User:"+username+"***"+username1+"</br>&nbsp;"+this.isex+"&nbsp;</span></br>"
            +"<span style='font-size:13px;'>信誉度"+this.icredibility+"&nbsp;</span></br>"
			+"</div>"
			+"<div class='label-bg'></div>"
		    +"</div>"
	        +"</div>"
            +"</div></a>";
       });
      $("#portfoliolist").html(html);
      $("#yemacss2").html(data.vlist.totalCount);
      $("#yemacss1").html(data.vlist.pageSize);
      $('html,body').animate({scrollTop:0},100);
      var filterList = {
			init: function () {
				// MixItUp plugin
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			hoverEffect: function () {
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -65}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);	
			}
		};
		filterList.init();
		$("#tanschusb789").fadeOut(500);
        $(".card852").fadeOut(500);
		pageNav.go(data.vlist.currPageNo,data.vlist.totalPageCount);
   });

}





</script>

<script type="text/javascript">
var scroll2 = new ScrollText("breakNewsList","pre2","next2",true,30,true);
scroll2.LineHeight = 437;
</script>

</html>
