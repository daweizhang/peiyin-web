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
    
    <title>作品编辑</title>
    
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
    
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>

<div class="theme-popover" style="z-index: 2;">
     <div id="zuopinxiug" class="theme-popbod dform" > 
          <div id="zuiopingclss">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/zuoping.png"></samp><samp id="knvel1">作品编辑</samp>
          </div>
          <div id="zuopingzti">
                <div id="donttaijiz">
              <form action="voicemiets!updateworkszp.action" name="" method="post">
                 <input type="hidden" name="worksdjy" value="${djy}"/>
                 <input type="hidden" name="wkup.wid" value="${works.wid}"/>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="130" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">作品名称：</span></td>
                       <td width="250" style="font-size: 14px;"><input type="text" style="float: left;" name="wkup.worksName" class="fbrw_libit6" value="${works.worksName}"></td>
                       <td width="218" align="left"><span style="font-size:14px; color: #666;"><a href="javascript:bofang('${fn:substring(works.worksName,0,8) }...','${works.worksFile}');"><img src="images/isc.ico" width="28" height="28"></img></a></span></td>
                    </tr>
                 </table>
                <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">作品类型：</span></td>
                       <td width="120" style="font-size: 14px;">
                           <select style="width: 170px; float: left;" class="fbrw_libit3" name="wkup.tvoice.tvid">
							  <c:forEach items="${listTvoc }" var="tisd">
                               <option id="index_in" value="${tisd.tvid}" <c:if test="${tisd.tvid == works.tvoice.tvid}">selected="selected"</c:if>>${tisd.tvtypeName }</option>
     	                      </c:forEach>
						  </select>
                       </td>
                       <td width="258"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">作品语言：</span></td>
                       <td width="120" style="font-size: 14px;">
                           <select style="width: 170px; float: left;" class="fbrw_libit3" name="wkup.lgtype.lid">
							  <c:forEach items="${listlgp}" var="lgst">
	                          <option id="index_in" value="${lgst.lid }" <c:if test="${lgst.lid == works.lgtype.lid}">selected="selected"</c:if>>${lgst.lgtypeName }</option>
        	                  </c:forEach>
						  </select>
                       </td>
                       <td width="258"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">声音阶段：</span></td>
                       <td width="120" style="font-size: 14px;">
                       
                           <select style="width: 170px; float: left;" class="fbrw_libit3" name="wkup.scrowd.sid">
							  <c:forEach items="${listsrd}" var="sosd">
                                 <option id="index_in" value="${sosd.sid }" <c:if test="${sosd.sid == works.scrowd.sid}">selected="selected"</c:if>>${sosd.scrowdName }</option>
    	                     </c:forEach> 
						  </select>
                       </td>
                       <td width="258"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="112" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">声音特点：</span></td>
                       <td width="120" style="font-size: 14px;">
                           <select style="width: 170px; float: left;" class="fbrw_libit3" name="wkup.ysyleix.yslid">
							  <c:forEach items="${listysyle}" var="tlg">
                                 <option id="index_in" value="${tlg.yslid }" <c:if test="${tlg.yslid == works.ysyleix.yslid}">selected="selected"</c:if>>${tlg.yslName }</option>
    	                     </c:forEach>
						  </select>
                       </td>
                       <td width="258"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width="130" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">作品描述：</span></td>
                       <td width="150" style="font-size: 14px;" colspan="2"> 
                       <textarea class="fbrw_libit4" name="wkup.wts" style="float: left; width: 250px;" cols="" rows="">${works.wts}</textarea>
                       </td>
                       <td width="218"></td>
                    </tr>
                 </table>
              <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="25">
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">♫上传时间</span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">♫作品评分</span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">♫浏览次数</span></td>
                    </tr>
                    <tr height="25">
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">${works.wtime}</span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">${works.workScore}</span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;">${works.wliulanRs}</span></td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="20">
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: red;">♫作品是否公开</span></td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                    </tr>
                    <tr height="28">
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                       <td width="185" align="center">
                         <div id="sfgk1" style="border:0px solid red; ">
                              <input type="hidden" name="wkup.wxiebei" value="${works.wxiebei}" id="knslks">
                              <a href="javascript:;" style="text-decoration: none;" onclick="chekbox();"><input id="fsbelke" type="checkbox" name="check-3" value="${works.wxiebei}" class="lcs_check lcs_tt1" autocomplete="off" <c:if test="${works.wxiebei == 0}">checked="checked"</c:if>/></a>
	                     </div>
                       </td>
                       <td width="185" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                    </tr>
                 </table>
              
              </div>
          </div>
     </div>
     
     <div class="theme-poptit" style="border:0px solid #690; margin-top: 0px;"><div><input class="close1" type="submit" value="提交更新"/></div><a href="worksgllist.action?djydd=${djy}" class="fgclose"><div class="close1" style="margin-left: 35px;">返回</div></a></div>
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
