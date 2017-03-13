<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>Invite Voice Talent</title>
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

#yqtapyx1{
border:1px solid #ccc;
width: 510px;
height: 40px;
margin-top: 10px;
}
#yqtapyx1:hover{
background-color: #FFC;}
#xsrwzls1{
width: 330px;
height: 28px;
border:0px solid red;
float: left;
}
#xsrwzls2{
width: 120px;
height: 28px;
border:0px solid red;
float: left;
margin-left: 10px;
}


#yqtapyx1:hover{
border:1px solid #F60;
background-color: #HHH;
}
#limzxz{
border:0px solid #ccc;
width: 475px;
height: 27px;
float: left;
margin-top: 5px;
}

#limzxz1{
  border:2px solid #ccc;
width: 25px;
height: 25px;
margin-top: 5px;
font-size:22px;
font-weight:bold;
color:red;
float: left;
font-family:"微软雅黑";
}
#pids{
width: 300px;
border:1px solid #F60;}
.lwnans{
color: #680;}
.lwnans:hover{
color: red;}
#yaoqingpeiy{
width: 280px;
height: 24px;
border:0px solid red;
position: absolute;
font-size: 14px;}

</style>
<script type="text/javascript">
$(function(){
/* $("#yqtapyx1").click(function(){
  $("#limzxz1").html("");
  $("#limzxz1").html("√");
  alert($("#limzxz1").parent().html());
});
 */

 if($("#pids").val()==''){

 }

});
function clos(id,ids){
   $(id).children().eq(1).html("√");
   $(id).siblings().children().next().html("");
   $("#pids").val("");
   $("#pids").val(ids);
   $(".losein55").html("");
}



</script>
<script type="text/javascript" src="js-english/pageindex.js"></script>
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
						<li class="li_lasp" style="color: #690;">Hello!</li>
						<li class="li_lasp"><s:if test="#session.users!=null">
								<a class="li_laspc_a" style="color: red;" href="ehloginUserehs!rupinuzyEh.action">${users.iuserName}</a>
							</s:if></li>
						<li class="li_lasp" style="color: #690;">Welcome to CVF!</li>
						<li class="li_lasp" style="color: #690;">>>切换</li>
						<li class="li_lasp"><a class="li_laspc_a" href="index.action">中文</a></li>
						<s:if test="#session.users==null">
							<li class="li_lasp"><a class="li_laspc_a" target="_blank"
								href="ehindexpage!loginconEh.action">LOGIN</a>/<a class="li_laspc_a"
								href="ehloginUserehs!findUserTypeEh.action" target="_blank">SIGN UP</a></li>
						</s:if>
						<s:if test="#session.users!=null">
							<li class="li_lasp"><a style="margin-right: 10px;"
								class="li_laspc_a" href="ehexitUsereh!userexitxtEh.action">LOG OUT</a>
						</s:if>
					</ul>
				</div>
				<div id="head_dh2">
					<ul id="head_ul_list1" style="margin-right: 10px;">
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpjylcEh.action">HOW IT WORKS</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpfyfkEh.action">FEES & PAYMENT</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpcjwtEh.action">Q & A</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumptsjyEh.action">CONTACT US</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpgywmEh.action">ABOUT US</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--T-->
<!--D-->
		<div style="width: 100%; height: 60px; border:0px solid red;">
			<div id="d_ncnncn" style="background-color:#EBEBEB;">
				<div id="d_uucnns">
					<a href="indexenglish.action">
						<div id="d_list_lic9"
							style="">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="80" height="45" align="right"><div
											class="d_utnkcn1"
											style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; 

background-position:0px 0px;"></div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="">HOME</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehbtendervoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn2" style="margin-left:50px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">PROJECTS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehvoiceyindex.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="51" height="45" align="right"><div
											class="d_utnkcn3" style="margin-left:17px;"></div></td>
									<td width="143" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">VOICE TALENTS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehworksvoiw.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn4" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">WORKS</samp></td>
								</tr>
							</table>
						</div>
					</a> <a href="ehranking.action">
						<div id="d_list_lic9">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn5" style="margin-left:44px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">TRANSLATION</samp></td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!--D-->
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>

<div class="theme-popover" style="z-index: 2;position:absolute; margin-top:-150px; height: 490px">
     <div id="zuopinxiug" class="theme-popbod dform" style="height: 320px;"> 
          <div id="zuiopingclss">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/xtxx.png"></samp><samp id="knvel1">Invite the talent to audition my project!</samp>
          </div>
          <form id="fklnalwseh" action="ehgoinvite.action" method="post">
          <div id="zuopingzti">
                <div id="donttaijiz" style="margin-top: 15px;">  
                         
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="110" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 14px;">Talent ID：</span></td>
                       <td width="430" align="left" style="font-size: 14px;">
                          <div style="margin-top: 2px;"> <samp id="sampcsslsa" style="font-size: 16px; color: #F60;">${si.iname }</samp></div>
                       </td>
                    </tr>
                 </table>
               
                
                <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="110" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 14px;"></span></td>
                       <td width="430" align="left" style="font-size: 14px;">
                           <div style="margin-top: 3px;"><samp id="sampcsslsa" style="font-size: 14px; color: #F60;">Pls select the project you wanna the talent to audition!</samp></div>
                       </td>
                    </tr>
                </table>
                
                <div style="border:2px solid #ccc; width: 530px;height: 320px; overflow: auto; margin-left: 13px;">
                
                     <c:forEach items="${bt}" var="yq">
                        <div onclick="clos(this,'${yq.bid}');" id="yqtapyx1">
                          <div id="limzxz">
                            <div id="xsrwzls1"><samp style="font-size: 14px; line-height: 30px; color: #690;"><a href="#" class="lwnans">${fn:substring(yq.bname,0,22)}...</a></samp></div>
                            <div id="xsrwzls2"><samp style="font-size: 14px; line-height: 30px; color: #690;">${yq.reTypebf}&nbsp;(${yq.count })</samp></div>
                          </div>
                          <div id="limzxz1"></div>
                        </div>
                      </c:forEach>  
                        
                </div>         
              </div>
          </div>
     </div>   
     
         <input type="hidden" name="inus" value="${si.iuserName }">
         <input type="hidden" value="">
         <input type="hidden" value="">
         <input id="pids" name="prid" type="hidden" value=""/>
	     <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;">
	       <div id="yaoqingpeiy"><samp id="sampcsslsa" class="losein55" style="font-size: 14px; color: #F60; line-height: 25px;">No project is selected!</samp></div>
	       <input id="hisdes" style="float: right; margin-right: 130px;" class="close1" style="margin-left: 35px;" type="submit" value="Invite">
	       <a href="ehinsvoiw.action?uid=${uids}" class="fgclose"><div style="float: right; margin-right: 20px; margin-top: -25px;" class="close1">Return</div></a>
	     </div>
     </form>
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
