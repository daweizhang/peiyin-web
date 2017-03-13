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
    
    <title>已完成的订单</title>
    
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
.sfgkanss33{
	margin-top:2px;
	width:70px;
	height:25px;
	border:0px solid #690;
	-moz-border-radius: 10px;      /* Gecko browsers */
   -webkit-border-radius: 10px;   /* Webkit browsers */
   border-radius:10px;
   outline:none;
   color: #F60;
   font-size:14px;
   background-color:#FFF;
	} 
.sfgkanss33:hover{
 background-color:#690;
  color: #fff;
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
<div id="void_nes1" style="border: 0px solid #ccc;   height: 780px;">
   <div id="mum_zhutiyi1">
      <ul id="mum_ul_s">
         <li  class="mum_licss1"><span class="mum_asccss1">账户中心</span></li>
        <li id="mum_lncs0" class="mum_licss"><a class="mum_asccss" href="loginUsers!rupinuzy.action">会员主页</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="personalcenter.action">个人中心</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="btenderaction.action">发布任务</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="btenlist.action">任务列表</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="unpaidtaskorder.action">待付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="conJumptaskorder.action">已付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="odersovers.action">已完成的订单</a></li>
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
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc; height: 840px;">
          <div id="rele_fabu1">
              <div id="rele_fbnc1"><img src="images/yifa.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2"><h4 id="rele_fndn1">已完成的任务订单列表</h4></div>
          </div>
          <div id="rele_fabu4">
             <table border="0" width="780" cellpadding="0" cellspacing="0">
                <tr height="36">
                   <td align="center" width="140" style="font-size: 14px;  color: #666;">任务名称</td>
                   <td align="center" width="80" style="font-size: 14px;  color: #666;">任务类型</td>
                   <td align="center" width="70" style="font-size: 14px;  color: #666;">订单总价</td>
                   <td align="center" width="70" style="font-size: 14px;  color: #666;">完成时间</td>
                   <td align="center" width="90" style="font-size: 14px;  color: #666;">操作</td>
                </tr>
             </table>
          </div>
          <div id="rele_fabu5">
          
         <c:forEach items="${ywod.items }" var="yw">
             <div id="rele_uuc">
                  <a href="javaScript:;" style="text-decoration: none; color: #636;">
	              <div id="rele_oo1" style="border:0px solid red;width: 239px;"><div class="rele_cso" style="color: red;">${fn:substring(yw.btender.bftranslate.bfNames,0,15)}...</div></div>
	              </a>
	              <a href="javaScript:;" style="text-decoration: none; color: #636;">
	              <div id="rele_oo4" style="border:0px solid red;width: 143px;"><div class="rele_cso">${yw.btender.tvoice.tvtypeName }</div></div>
	              <div id="rele_oo2" style="border:0px solid red;width: 120px;"><div class="rele_cso" style="color: red;">${yw.ptotalprice}.00RMB(￥)</div></div></a>
	              <div id="rele_oo3" style="border:0px solid red;width: 120px;"><div class="rele_cso" style="margin-top: 0px;">&nbsp;${yw.pckTime}</div></div>
	              <div id="rele_oo5" style="border:0px solid red;width: 155px; text-align: center;">
	                     <a href="paymenthasbeenrw.action?menpid=${yw.pid}&nspid=${yw.pjbremail}" target="_blank"><input style="float: left; margin-top:15px; margin-left: 45px;border:1px solid #690;" type='button' onclick="" value='查看任务' class="sfgkanss33" id='sfgkan3'/></a>
	              </div>
             </div>
 
           </c:forEach>
             
          </div>
          <div id="rele_fabu6" style="height: 50px;">
            <div style="position: relative;top: 12px;">
            <c:if test="${ywod.totalCount!=0}">
            <div id="pageNav" style="border:0px solid red; width:780px; margin-left: 80px;"></div>
            </c:if>
            <c:if test="${ywod.totalCount==0}">
             <div id="pageNav" style="border:0px solid red; display:none; width:780px; margin-left: 80px;"></div>
             <div style="margin-left: 330px;font-size: 16px;">暂无已完成的任务！</div>
            </c:if>
            </div>
          </div>
   </div>




</div>

<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 70px;">


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
	//pageNav.go(1,2);
	 if(parseInt('${ywodym}')==0){
	   pageNav.go(parseInt('${ywodym}'),'${ywod.totalPageCount}');
	}else{
	   pageNav.go(parseInt('${ywodym}'),'${ywod.totalPageCount}');
	}

});

 function showsub(id)
{
   window.location.href="odersovers.action?ywodym="+id;
}
  </script>


</html>
