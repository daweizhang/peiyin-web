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
    
    <title>作品管理</title>
    
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
  
  
  </head>
  

<style type="text/css" media="screen">
#thistis_icns{ width:100%; height:100%; border:0px solid red; background-color:#999;
position:fixed;
top:0px;
opacity:0.4;
}
#thistis_icnicns{
    
	width:500px;
	height:250px;
	border:2px solid #6C0;
	background-color:#FBFBFB;
	-moz-border-radius: 10px;      /* Gecko browsers */
    -webkit-border-radius: 10px;   /* Webkit browsers */
    border-radius:10px;
	position:fixed;
    top:50%;
    left:50%;
    margin:-150px 0 0 -250px;
	text-align:center;
	}
#lsncs_olc1{width:500px;height:40px;border:0px solid #6C0;
    border-width:0px 0px 2px 0px;}
	
	
#lsncs_olc2{width:500px;height:150px;border:0px solid #6C0;
    border-width:0px 0px 2px 0px;}
#lsncs_olc3{width:500px;height:55px;border:0px solid #6C0;}
#dlnzhti{
	font-size:16px;
	color:#660;
	font-family:"微软雅黑";}
#tishtusl{width:40px;height:40px;border:2px solid red;
position:relative;
left:20px;
top:50px;
float:left;
-moz-border-radius: 100px;      /* Gecko browsers */
-webkit-border-radius: 100px;   /* Webkit browsers */
border-radius:100px;
}
#tishtuslxx{width:400px;height:100px;border:0px solid #6C0;
position:relative;
left:25px;
top:50px;
float:left;}	
.svege{
	float:left;
	margin-top:8px;
	font-size:18px;
	color:#F90;
	font-family:"微软雅黑";}
.sesscs{
	text-decoration:none;}	
#cnwlbann1{
	width:100px;
	background:#690;
	color:#FFF;
	border:0px;
	font-size:16px;
	height:28px;
	font-weight:bold;
	-moz-border-radius: 4px;      /* Gecko browsers */
    -webkit-border-radius: 4px;   /* Webkit browsers */
    border-radius:4px;
	margin-top:13px;
	float:right;
	margin-right:20px;}	
#flsvwlke{
	width:30px; height:30px; border:0px solid red;
	-moz-border-radius: 100px;      /* Gecko browsers */
-webkit-border-radius: 100px;   /* Webkit browsers */
border-radius:100px;}	
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
        <li id="mum_lncs0" class="mum_licss"><a class="mum_asccss" href="loginUsers!rupinuzy.action">会员主页</a></li>
        <li id="mum_lncs0" class="mum_licss"><a class="mum_asccss" href="personalcenter.action">个人中心</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="uplaodvoicezp.action">上传作品</a></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="worksgllist.action">作品管理</a></li>
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
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc;">
       <input type="hidden" id="hiddjy" value="${djy}">
          <div id="rele_fabu1">
              <div id="rele_fbnc1" style="border:0px solid red;"><img src="images/yifa.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2" style="border:0px solid red;"><h4 id="rele_fndn1">我的作品列表</h4></div>
              <div id="rele_fbnc3" style="border:0px solid red;">
                <div style="font-size: 14px; color: #690;float: right; margin-top: 20px;">作品总数:${listw.totalCount }&nbsp;&nbsp;&nbsp;每页显示:${listw.pageSize}条</div>
              </div>
          </div>
          <div id="rele_fabu4">
             <table border="0" width="780" cellpadding="0" cellspacing="0">
                <tr height="35">
                   <td align="center" width="40" style="font-size: 14px;  color: #666;">作品名称</td>
                   <td align="center" width="20" style="font-size: 14px;  color: #666;">所属类别</td>
                   <td align="center" width="20" style="font-size: 14px;  color: #666;">是否公开</td>
                   <td align="center" width="30" style="font-size: 14px;  color: #666;">上传时间</td>
                   <td align="center" width="30" style="font-size: 14px;  color: #666;">操作</td>
                </tr>
             
             </table>
          </div>
          <div id="rele_fabu5">
          <!-- 是否公开 -->
          <!--  <div id="sfgk1">
                       <label style="font-size: 14px; color: red;">是否公开:</label>&nbsp;&nbsp;<input id="fsbelke" type="checkbox" name="check-3" value="6" class="lcs_check lcs_tt1" checked="checked" autocomplete="off" />
	                  </div>  -->
	                  
	       <c:forEach items="${listw.items}" var="wor">           
             <div id="rele_uuc">
	              <div id="rele_oo1" style="width: 220px;"><a href="javascript:;" style="text-decoration: none;"><div id="rele_cso1ss" class="rele_cso" style="font-size: 13px;">${fn:substring(wor.worksName,0,8)}...</div></a></div>
	              <div id="rele_oo2" style="width: 112px;"><div class="rele_cso" style="font-size: 13px;">${wor.tvoice.tvtypeName}</div></div>
	              <div id="rele_oo3" style="width: 114px;"><div class="rele_cso" style="font-size: 13px; color: red;"><c:if test="${wor.wxiebei=='0'}">未公开</c:if><c:if test="${wor.wxiebei=='1'}">已公开</c:if></div></div>
	              <div id="rele_oo4" style="width: 165px;"><div class="rele_cso" style="font-size: 13px;">${wor.wtime}</div></div>
	              <div id="rele_oo5" style="width: 167px; border: 0px solid red;">
	                  <div id="sfgk1">
                         <a href="javascript:bofang('${fn:substring(wor.worksName,0,8) }...','${wor.worksFile}');"><img src="images/isc.ico" width="28" height="28"></img></a></span>
	                  </div>
	                  <div id="sfgk2">
	                      <input id="knsks" type="hidden" value="${wor.wid }"/>
	                      <input type="button" onclick="ckidzpbj('${wor.wid}');" value="编辑" class="sfgkanss" id="sfgkan2"/>
                          <input type="button" onclick="deleteworks('${wor.wid}','${fn:substring(wor.worksName,0,15) }');" value="删除" class="sfgkanss" id="sfgkan1"/>
	                  </div>
	              </div>
             </div>
             </c:forEach>
          </div>
          <div id="rele_fabu6" style="height: 50px;">
             <div style="position: relative;top: 12px;">
             <c:if test="${listw.totalCount!=0}">
            <div id="pageNav" style="border:0px solid red; width:780px; margin-left: 80px;"></div>
             </c:if>
             <c:if test="${listw.totalCount==0}">
            <div id="pageNav" style="border:0px solid red; display:none; width:780px; margin-left: 80px;"></div>
             <div style="margin-left: 340px;font-size: 16px;">暂无作品！</div>
             </c:if>
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
    
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>


<div id="thistis_icns" style="display: none;">
</div>
<div id="thistis_icnicns" style="display: none;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti">操作提示:</span></td>
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
         <span class="svege">确定要删除"<span id="fsfscee"></span>..."该作品吗?</span>
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="javascript:;" id="fklwnlselx"><input onclick="closeds()"  id="cnwlbann1" type="button" value="取消"/></a>
     <input type="hidden" id="worksd" name="" value=""/>
     <a class="sesscs" href="javascript:;"><input onclick="denlsek()" id="cnwlbann1" type="submit" value="立即删除"/></a>
  </div>
</div>

</body>
<script type="text/javascript">


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
	if(parseInt('${djy}')==0){
	   pageNav.go(parseInt('${djy}'),'${listw.totalPageCount}');
	}else{
	   pageNav.go(parseInt('${djy}'),'${listw.totalPageCount}');
	   
	}

	
	
	

});

function showsub(id)
{
    //隐藏域页码
    $("#hiddjy").val(id);
    $("#rele_fabu5").html(" ");
	 //alert(id);
     $.getJSON("/peiyin//worksgllist.action?djy="+id,function(data){
       var html="";
       $(data.listw.items).each(function(){   
          //alert(this.worksName+"--"+this.wtime); 
          var kvslk="";
          if(this.wxiebei=='0'){
              kvslk="未公开";
          }else{
              kvslk="已公开";
          }
         html+="<div id='rele_uuc'>"
	              +"<div id='rele_oo1' style='width: 220px;'><a href='javascript:;' style='text-decoration: none;'><div id='rele_cso1ss' class='rele_cso' style='font-size: 13px;'>"+this.worksName.substring(0,8)+"...</div></a></div>"
	              +"<div id='rele_oo2' style='width: 112px;'><div class='rele_cso' style='font-size: 13px;'>"+this.tvoice.tvtypeName+"</div></div>"
	              +"<div id='rele_oo3' style='width: 114px;'><div class='rele_cso' style='font-size: 13px; color: red;'>"+kvslk+"</div></div>"
	              +"<div id='rele_oo4' style='width: 165px;'><div class='rele_cso' style='font-size: 13px;'>"+this.wtime+"</div></div>"
	              +"<div id='rele_oo5' style='width: 167px; border: 0px solid red;'>"
	                  +"<div id='sfgk1'>"
                        +"<a href=\"javascript:bofang('"+this.worksName.substring(0,8)+"...','"+this.worksFile+"');\"><img src='images/isc.ico' width='28' height='28'></img></a></span>"
	                  +"</div>"
	                  +"<div id='sfgk2'>"
	                      +"<input type='hidden' value='"+this.wid+"'/>"
	                      +"<input type='button' onclick=\"ckidzpbj('"+this.wid+"');\" value='编辑' class='sfgkanss' id='sfgkan2'/>&nbsp;"
                          +"<input type='button' onclick=\"deleteworks('"+this.wid+"','"+this.worksName.substring(0,15)+"');\" value='删除' class='sfgkanss' id='sfgkan1'/>"
	                  +"</div>"
	              +"</div>"
            +"</div>";
     });
      $("#rele_fabu5").html(html);
	}); 
}



function ckidzpbj(id){
        //获取页码
        var ycym=$("#hiddjy").val();
        var htmlzp="";
	    window.location.href="workszsid.action?wordsid="+id+"&djyws="+ycym;
};

function denlsek(){
   var workdelid=$("#worksd").val();
   //获取页码
   var deledjy=$("#hiddjy").val();

   window.location.href="voicemiets!deleteworks.action?workids="+workdelid+"&fyyms="+deledjy;
}


function deleteworks(id,wkname){
              //alert(wkname);
              $("#worksd").val(id);
              $("#fsfscee").html(wkname);
              $("#thistis_icns").fadeIn(200);
			  $("#thistis_icnicns").slideDown(200);	  

}

$(function(){

$("#fklwnlselx").click(function(){
			  $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200);  
	  });

});
function closeds(){
              $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200);  

}
  </script>


</html>
