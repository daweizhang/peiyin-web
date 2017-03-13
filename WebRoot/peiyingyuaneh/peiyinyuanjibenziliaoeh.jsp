<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基本资料填写</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 
  <link rel="stylesheet" href="css/jquery.datetimepicker.css" type="text/css"></link>

  <link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
   <script type="text/javascript" src="js/jquery-1.8.3.js"></script> 
  <script type="text/javascript" src="js/indexJS.js"></script>
  <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>

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
#slkeksn{
	width:53px;
	height:26px;
	border:0px solid red;
	display:none;
	background-color:#690;
}
.lsknstext{
	font-size:14px;
	font-weight:bold;
	text-decoration:none;
	color:#FFF;}
</style>

<script type="text/javascript">
$(function(){
	$("#clklieshow").focus(function(){
		$("#slkeksn").show();
		});
		
		
		
   });

function knlc(values){
    $("#clklieshow").val("");
	$("#clklieshow").val(values);
	$("#slkeksn ").hide();
	}
	
	
	
</script>
 <script type="text/javascript" src="js/TestChooseAddress.js"></script>
<script type="text/javascript" src="js/worldAddress.js"></script>



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
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="worksgllist.action">作品管理</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voiceBiddings.action">竞标中的任务</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="Bidsuccess.action">我的任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="odersovers.action">完成的订单</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">个人信息</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voicfs.action">上传头像</a></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="upusertion.action">基本资料</a></li>
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
          <div id="rele_fabu1">
              <div id="rele_fbnc1"><img src="images/xie.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2"><h4 id="rele_fndn1">基本资料</h4></div>
          </div>
          <div id="rele_fabu2" >
            <form action="userupdate.action" method="post" name="fromuserzl">
              <div id="fbrw_addl" >
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"></td>
                       <td width="170"><span class="id_jbzl">User.${ius.iuserName}</span></td>
                       <td width="418"><span style="font-size:14px; color: #999;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">昵称或姓名：</span></td>
                       <td width="370" style="font-size: 14px;"><input type="text" name="users.iname" class="fbrw_libit6" value="${empty ius.iname?"昵称":ius.iname}"></td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">性别：</span></td>
                       <td width="370" style="font-size: 14px;">

                             <div style="float: left;">
                             <input type="text" name="users.isex" class="fbrw_libit3" id="clklieshow" value="${ius.isex }"/></div>
                             <div id="slkeksn"  style="float: left;">
							   <table width="52" border="0">
							    <tr>
							      <td width="21"><a onclick="knlc(this.text)" href="javascript:;" class="lsknstext">男</a></td>
							      <td width="21"><a onclick="knlc(this.text)" href="javascript:;" class="lsknstext">女</a></td>
							    </tr>
							  </table>
							</div>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">出生日期：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <input type="text" name="users.ibirthday" id="datetimepicker7" class="fbrw_libit6" value="${ius.ibirthday }"/>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">地区：</span></td>
                       <td width="570" style="font-size: 14px;">
                       <input type="text" name="users.iregion" id="klnklvnse" value="${ius.iregion }" class="fbrw_libit6"/>
                       </td>
                       <td width="18"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>

              </div>
               <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii"></span></td>
                       <td width="570" style="font-size: 14px;">
                       
                          <select class="fbrw_libit3" style="width:90px;"  id="s1" onchange="getCountry(this.value)"><option>请选择国家</option></select>
						  <select class="fbrw_libit3" style="width:158px;"  id="s2" onchange="getProvince(this.value)"
							style=" display:;"></select>
                       </td>
                       <td width="18"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>

              </div>
              
              <div id="fbrw_addl" style="height: 80px;">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">语言类型：</span></td>
                       <td width="255" style="font-size: 14px;">
                       <textarea name="users.ilanguageLabels" id="lmvbke" style="resize:none; width:250px; height:70px; font-size:17px; color:#660;" id="textarea" cols="" rows="" readonly="readonly">${ius.ilanguageLabels }</textarea>
                       </td>
                       <td width="343">
                        <select onchange="getProvcs(this.value,index)" id="eunvsle" style="width: 180px; font-size:14px; color:#690; border:1px solid #ccc; height: 80px; " name="" multiple="multiple">
							  
							  <c:forEach items="${listlgp}" var="g">
							     <option value="${g.lgtypeName }">${g.lgtypeName }</option>
							  </c:forEach>
						  </select>                 
                       </td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl" style="height: 80px;">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">配音类型：</span></td>
                       <td width="255" style="font-size: 14px;">
                       <textarea name="users.ivoiceLabels" id="lmvbked1" style="resize:none; width:250px; height:70px; font-size:17px; color:#660;" id="textarea" cols="" rows="" readonly="readonly">${ius.ivoiceLabels }</textarea>
                       </td>
                       <td width="343">
                        <select onchange="getProvcsd1(this.value,index)" id="eunvsled1" style="width: 180px; font-size:14px; color:#690; border:1px solid #ccc; height: 80px; " name="" multiple="multiple">
							  <c:forEach items="${listTvoc}" var="t">
							     <option value="${t.tvtypeName }">${t.tvtypeName }</option>
							  </c:forEach>
						  </select>                 
                       </td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl" style="height: 80px;">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="80">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">声音类型：</span></td>
                       <td width="255" style="font-size: 14px;">
                       <textarea name="users.islID" id="lmvbked2" style="resize:none; width:250px; height:70px; font-size:17px; color:#660;" id="textarea" cols="" rows="" readonly="readonly">${ius.islID }</textarea>
                       </td>
                       <td width="343">
                        <select onchange="getProvcsd2(this.value,index)" id="eunvsled2" style="width: 180px; font-size:14px; color:#690; border:1px solid #ccc; height: 80px; " name="" multiple="multiple">
							  <c:forEach items="${listysyle}" var="e">
							     <option value="${e.yslName }">${e.yslName }</option>
							  </c:forEach>
						  </select>                 
                       </td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">年龄段：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select class="fbrw_libit2" name="srcod">
							  <option value="0">请选择</option>
							  <c:forEach items="${listsrd}" var="d">
							    <option value="${d.sid}" <c:if test="${d.sid ==ius.scrowd.sid}">selected="selected"</c:if>>${d.scrowdName}</option>
							  </c:forEach>
						  </select>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">联系电话：</span></td>
                       <td width="370" style="font-size: 14px;"><input type="text" name="users.iphone" class="fbrw_libit6" value="${ius.iphone }"></td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">绑定的邮箱：</span></td>
                       <td width="370" style="font-size: 14px;"><input type="text" name="" class="fbrw_libit6" readOnly="true" style="font-size: 16px; font-weight: bold; color: #999;" value="969353498@qq.com">
                       <a style="text-decoration: none;" href="#"><!-- <input name="" class="fbrw_libit11" type="button" value="更改邮箱"/> --></a>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"></td>
                       <td width="370" style="font-size: 14px;"><input class="fbrw_lcalou" name="" type="submit" value="提交信息"/></td>
                       <td width="218"></td>
                    </tr>
                 </table>
              </div>
             </form>
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
</body>
  <script type="text/javascript" src="js/jquery.datetimepicker.js"></script>


</html>
