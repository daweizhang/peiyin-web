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
    

    <title>任务详细</title>


    
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


  <link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/indexJS.js"></script>
  <link rel="stylesheet" href="css-js-file/styles-zbf.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css-js-file/tijiaoyy.css" type="text/css"></link>
  <link rel="stylesheet" href="css/spinners.css" type="text/css"></link>
  </head>
    <style type="text/css" media="screen">
    a {
        color: #2B4A78;
        text-decoration: none;
    }

    a:hover {
        
        text-decoration: none;
    }

    a:focus, input:focus {
        outline-style: none;
        outline-width: medium;
    }

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
<script type="text/javascript" src="js/pageindex.js"></script>
<script type="text/javascript">
$(function(){
     showlaod(500,"#ccc");
     
     
	 var inus='${bdus.iuserName}';
     var username=inus.substring(0,3);
     var username1=inus.substring(5,7);
     $(".inusers").html(username+"***"+username1+"<br>"+'${bdus.isex}');
     var ixls="";
	   ixls="url('upload/"+'${bdus.iportrait}'+"')";
	   ///alert(ixls);
	 $("#lxtoxlwnxs").css("background-image",ixls);
	 var d='${bdus.iregion}';
	 var dz=d.substring(d.indexOf("-")+1,d.length);
	 $(".dqxss").html(dz);
	 
	});
	






	
	
</script>

<body>

<div id="tanschusb789" style="display: none;"></div>
<div class="card852" style="display: none;">
<span class="spinner-loader">Loading&#8230;</span>
<div class="jiazaiz963">Loading......</div>
</div>

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
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:44px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9"  style="border-top:5px solid #F16700; background-color:#fff;">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:44px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -75px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp" style="color: #F16700;">配音任务</samp></td>
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
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp"">排行榜</samp></td>
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
    			<a class="xqweizi11" href="index.action" title="网站首页">网站首页</a>＞
    			<a href="btendervoiw.action" title="网站首页">配音任务</a>＞
    			<a href="javaScript:;" title="网站首页">任务详细</a>
    	</div>
<div id="xqweizi" style="border:0px solid red; height: 900px; margin-top: 10px;">
    		<div class="mainContent" style="margin-left: -1px;">
    <aside>
      <div class="avatar">
 
        <a href="javaScript:;" id="lxtoxlwnxs"><span class="inusers"></span></a>
      </div>
      <section class="topspaceinfo">
        <samp id="leknmjj">&nbsp;&nbsp;&nbsp;客户ID：</samp>
        <samp id="lekgfont">${bdus.iname }</samp>
      </section>
      <section class="topspaceinfo" style="margin-top: -5px;">
        <samp id="leknmjj">所在地区：</samp>
        <samp id="lekgfont" class="dqxss"></samp>
      </section>
      <div class="userinfo" style="margin-top: 7px;"> 
        <p class="q-fans"> &nbsp;信誉度：<a href="javaScript:;">&nbsp;${bdus.icredibility }</a></p> 
      </div>
      <div class="userinfo" style="margin-top: 10px;"> 
        <p class="q-fans"> &nbsp;浏览量：<a href="javaScript:;">&nbsp;${bder.bliuyanNum }</a></p> 
      </div>
      <div class="userinfo" style="margin-top: 10px;"> 
        <p class="q-fans" style=" margin-left:-10px;"><samp style="color: red;font-weight: bold;">竞标人数：</samp><a href="javaScript:;">&nbsp;${bder.bcounts }</a>&nbsp;&nbsp;&nbsp;</p> 
      </div>
      <div class="userinfo1"> 
      
         <s:if test="#session.users==null">
           <div class="nuluser" id="flknflefnx"><a href="javaScript:;"><samp id="velkslddss">参与竞标</samp></a></div>
         </s:if>
         <s:if test="#session.users!=null">
           
           <div id="flknflefnx"><a href="javaScript:;" class="theme-login"><samp id="velkslddss">参与竞标</samp></a></div>
           
         </s:if>
         <%-- <s:if test="#session.users.iuserName==ps.puserId.iuserName">
         <div style="margin-left: 66px;margin-top: 10px;"><a id="lxnw88z" style="font-size: 14px;" href="delepartpates!viewthebidding.action?prarid=${ps.pid}">&nbsp;查看我的竞标信息 &nbsp;</a></div>
         </s:if> --%>
      </div>
      
      <section class="taglist">
         <h2 style="margin:0px;">谁浏览过该任务</h2>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         <a href="#">
         <div id="lwnlsxxpp"><img src="upload/txtub.png" width="72" height="70"></div>
         </a>
         
      </section>
      <section class="newpic">
         <h2 style="margin:0px;">其TA类似任务</h2>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
          <div id="leknmglsxx">
             <a href="#" id="lenxllx"><samp id="vleknmslx1" style="margin-left:10px;">舌尖上的美食..</samp></a>
             <samp id="vleknmslx">广告配音</samp>
             <samp id="vleknmslx">2016-05</samp>
          </div>
         
      </section>
  </aside>

    <div class="blogitem">
    
      <article>
        <div id="vleksxlsxxlst">
        </div>
        <div class="textfoot">
          <div id="vsls11">
             <samp id="povbm" style="font-family:'微软雅黑'; font-size:18px;font-weight: bold;">${bder.bftranslate.bfNames}</samp>
          </div>
          <div id="vsls11" style="margin-top: 10px;">
             <samp id="povbms1" style="font-family:'微软雅黑'; ">发布时间：<samp style=" color:red;">${bder.btime}</samp></samp>
          </div>
        </div>
      </article> 
      <article>
        <div id="vleksxls44" style="margin-top: 5px;">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">实时进程描述</samp>
        </div>
        <div class="textfootS1">
           <div id="lovsnf2" style="margin-left:52px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,0,1)=='1' }">color: red;</c:if>">发布任务</samp></div>
           <div id="lovsnf2" style="margin-left:31px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,1,2)=='2' }">color: red;</c:if>">参与竞标</samp></div>
           <div id="lovsnf2" style="margin-left:30px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,2,3)=='3' }">color: red;</c:if>">招标方选标</samp></div>
           <div id="lovsnf2" style="margin-left:30px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,3,4)=='4' }">color: red;</c:if>">正式合作</samp></div>
           <div id="lovsnf2" style="margin-left:28px;"><samp id="faburw" style="<c:if test="${fn:substring(bder.brwjdjls,4,5)=='5' }">color: red;</c:if>">收货付款</samp></div>
        </div>
        <div class="textfootS2">
        
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,0,1)=='1' }">border:1px solid red;</c:if>"><img style="margin-top:8px;" src="images/xiao1.png"></div>
           
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,1,2)=='2' }">border:1px solid red;</c:if>"><img style="margin-top:10px; margin-left:3px;" src="images/xiao2.png"></div>
           
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,2,3)=='3' }">border:1px solid red;</c:if>"><img style="margin-top:10px;" src="images/xiao3.png"></div>
           
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,3,4)=='4' }">border:1px solid red;</c:if>"><img style="margin-top:12px;" src="images/xiao4.png"></div>
           
           <div id="lovsnf1" style="text-align:center;<c:if test="${fn:substring(bder.brwjdjls,4,5)=='5' }">border:1px solid red;</c:if>"><img style="margin-top:12px;" src="images/xiao5.png"></div>
           
        </div>
      </article>
      <div id="vlwxolx">
         <div id="lbnmnvss1"><samp id="bvmvmx88">任务价格</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">任务类型</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">任务状态</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bprice }.00RMB</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.tvoice.tvtypeName }</samp></div>
         <c:if test="${bder.bts=='0' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">招标中</samp></div>
         </c:if>
         <c:if test="${bder.bts=='1' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">进行中</samp></div>
         </c:if>
         <c:if test="${bder.bts=='2' }">
         <div id="lbnmnvss1" style="font-weight: bold;"><samp id="vlxkxx22">已完成</samp></div>
         </c:if>
      </div>
      <div id="vlwxolx" style="margin-top:0px;">
         <div id="lbnmnvss1"><samp id="bvmvmx88">正式文稿字数</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">要求语言</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">要求性别</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.basofTime }</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.lgtype.lgtypeName }</samp></div>
         <c:if test="${bder.brwtype=='111' }">
         <div id="lbnmnvss1"><samp id="vlxkxx22">${fses}</samp></div>
        </c:if> 
        <c:if test="${bder.brwtype=='222' }">
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bsex }</samp></div>
        </c:if> 
      </div>
      <div id="vlwxolx" style="margin-top:0px;">
         <div id="lbnmnvss1"><samp id="bvmvmx88">要求口音</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">要求文件格式</samp></div>
         <div id="lbnmnvss1"><samp id="bvmvmx88">配音语速</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.scrowd.scrowdName}</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bfilegeshi.fName }</samp></div>
         <div id="lbnmnvss1"><samp id="vlxkxx22">${bder.bpyyusu.hName }</samp></div>
      </div>
   
      <div id="vleksxls44">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">任务详细描述</samp>
      </div>
        <div id="xmbwels66">
           <textarea id="vlx88s" style="font-size: 14px;" cols="" rows="" readonly>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bder.bftranslate.bftiser }</textarea>
      </div>
         <div id="vleksxls44">
           <samp style="font-size:14px; color:#F90; line-height:30px; margin-left:40px;">试音稿文</samp>
        </div>
      <div id="xmbwels67">
           <textarea id="vlx88sbhs"  style="font-size: 14px; height: 220px;" cols="" rows="" readonly>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bder.bftranslate.bfsygw }</textarea>
      </div>
  </div>
 </div>	
</div>
<!----------底部样式------------->
<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 5px;">


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
    
    
    
    
    
<div id="thistis_icns" style="display: none;">
</div>
<div id="thistis_icnicns" style="display: none;">
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
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">您好!登录后即可参与竞标!</span>
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="loginUsers!findUserType.action" target="_blank"><input id="cnwlbann1" type="button" value="马上注册"/></a>
     <a class="sesscs" href="User/login.jsp" target="_blank"><input id="cnwlbann1" type="button" value="立即登陆"/></a>
  </div>
</div>    
    

<!-- 312 -->


<div class="theme-popover-mask"></div>
<div class="theme-popover" style="height: 320px; margin-top: -110px; position: fixed;">
<form id="cyjnsls" action="uplaodvofiles.action" method="post" enctype="multipart/form-data">
 <input type="hidden" id="bteids" name="bteids" value="${bder.btid}" />
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaoz1">
           <samp id="tijys22" style="font-family:'微软雅黑';">提交试音</samp>
           <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a>
        </div>
        
        <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
         <div id="tishcaoz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!任务方不可参与竞标!</samp>
         </div>
        </s:if>
        
        
        <s:if test="#session.users.dtype.did=='berwartaedfeee'">
        <c:if test="${ersers==333}">
        <c:if test="${bder.bcounts <15}">
        <c:if test="${ius.iphone != null}">
        <c:if test="${bder.bts == '0'}">
        <div id="tishcaoz2">
          <table width="555" height="64" border="0" style="margin-top:20px;">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫试音文件:</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px; border:1px solid #ccc;">
                 <input style="border:0px solid red;" type="text" class="filename" readonly/>
                    <input type="button" name="file" class="button" value="试音文件"/>
                    <input type="file" id="filesy" name="filesy" size="30"/>
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">提交该任务试音稿文的配音(试音只能为音频格式)!</td>
            </tr>
          </table>
          
          
          <table width="555" height="64" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫竞标价格(人民币):</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <input id="rmbidnexs" type="text" style="width: 150px;" class="fbrw_libit6" name="partpate.pjbrphone" value=""/>.00(RMB)  
                    <!-- <a id="lxnw88z" style="font-size: 14px;" href="javaScript:hljs();">&nbsp;点击换算 &nbsp;</a>                      -->      
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">任务竞标价不得低于300(￥)人民币!</td>
            </tr>
          </table>
          <table width="555" height="64" border="0">
            <tr>
              <td width="555" height="39" align="center" valign="middle" style="color: red; font-size:14px; font-weight: bold;"><span id="messges"></span></td>
          </table>
          <%-- <table width="555" height="64" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55">♫等于(美元):</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <input id="rwfusds" type="text" style="width: 150px;" class="fbrw_libit6" readonly="readonly" value=""/>($)  
                           
                </div>
              </td>
            </tr>
            <tr>
              <td height="19" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">按汇率1:6计算!</td>
            </tr>
          </table> --%>
       </div>
       </c:if>
       <c:if test="${bder.bts == '1' || bder.bts == '2'}">
          <div id="tishcaroz2">
        <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!无法参与进行中或已完成的任务,您可以再看看其他任务!</samp>
        </div>
       </c:if>
       </c:if>
        <c:if test="${ius.iphone == null}">
        <div id="tishcaroz2">
        <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!请完善您的个人资料后才能参与竞标!</samp>
        </div>
        </c:if>
       
       </c:if>
       <c:if test="${bder.bcounts >=15}">
           <div id="tishcaroz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!当前竞标人数已满15人!</samp>
         </div>
       </c:if>
       </c:if>
       <c:if test="${ersers==200 }">
       
         <div id="tishcaroz2">
            <div id="wuftiss"><span style="font-weight:bold; font-size:28px; color:red;">!</span></div>
            <samp id="xlsnlw">您好!您已经参与过该任务了!</samp>
         </div>

       </c:if>
       
       </s:if>

     </div>
     <div class="theme-poptit" style="margin-top: 120px;"><a href="javascript:;" class="close"><div id="coslqed55"><samp class="xlxnss">返回</samp></div></a>
     <s:if test="#session.users.dtype.did=='berwartaedfeee'">
       <c:if test="${ersers!=200 && bder.bcounts <15 && ius.iphone != null && bder.bts == '0'}">
        <a href="javascript:;"><div><samp class="xlxnss"><input type="submit" id="coslqed55" value="确定"/></samp></div></a></div>
       </c:if>
     </s:if>
    </form> 
</div>

    
  </body>
<script type="text/javascript">
	
$(function(){

$(".nuluser").click(function(){
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


jQuery(document).ready(function($) {
	
	$('.theme-login').click(function(){
	        $("#tanschusb789").show();
		    $(".card852").show();
		$('.theme-popover-mask').fadeIn();
		$('.theme-popover').fadeIn();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	});
	$('.close').click(function(){
	$("#tanschusb789").show();
		    $(".card852").show();
		$('.theme-popover-mask').fadeOut();
		$('.theme-popover').fadeOut();
		$("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500); 
	});

});

$(function(){
	$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
	$("input[type=file]").each(function(){
	if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
	});
});
function hljs(){
      var rmbhs=$("#rmbidnexs").val();
      var hs=parseInt(rmbhs);
      var hd=hs/6;
      $("#rwfusds").val(hd.toFixed(2));
      var bs=$("#rwfusds").val();
      if(bs=='NaN'){
        var bs=$("#rwfusds").val("");
      }
}

</script>
</html>
