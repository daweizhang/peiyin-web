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
    <title>My bidding information</title>
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
							href="ehindexpage!jumpjylcEh.action">Transaction process</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpfyfkEh.action">Fees and payments</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpcjwtEh.action">common problem</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumptsjyEh.action">Complaints and Suggestions</a></li>
						<li class="li_lasp1"><a target="_blank" class="li_laspc_a1"
							href="ehindexpage!jumpgywmEh.action">about us</a></li>
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
											class="cnnspp" style="">Home</samp></td>
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
											class="cnnspp">Task</samp></td>
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
											class="cnnspp">Dub Personnel</samp></td>
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
											class="cnnspp">Works</samp></td>
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
											class="cnnspp">Ranking</samp></td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!--D-->
    
    <div id="huidingbu"><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>

<div class="theme-popover" style="z-index: 2; height: 500px; margin-top: -150px; position:absolute;">
     <div id="zuopinxiug" class="theme-popbod dform" style="height: 330px;"> 
          <div id="zuiopingclss">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/jinbiaoxinxi.png"></samp><samp id="knvel1">我的竞标信息</samp>
          </div>
          <div id="zuopingzti">
                <div id="donttaijiz" style="margin-top: 10px;">           
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务名称：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.btender.btName }</samp>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">任务类型：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.btender.tvoice.tvtypeName }</samp>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">更多：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <a href="voiwtaskbt.action?bid=${pa.btender.btid}" target='_blank'><input id="lvnlsnee"  type="button" value="查看任务详细"/></a>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">我的ID：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.puserId.iname }</samp>
                       </td>
                    </tr>
                 </table>
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">我的试音：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <span style="font-size:14px; color: #666;"><a href="javascript:bofang('我的试音','${pa.psyfileName}');"><img src="images/isc.ico" width="28" height="28"></img></a></span>
                       </td>
                    </tr>
                 </table>
                
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">我竞标的价格：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.pjbrphone}.00(RMB)人民币==${pa.prwfphone}(USD)美元&nbsp;&nbsp;</samp>
                       </td>
                    </tr>
                 </table> 
                 
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">参与竞标时间：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.pcyTime}</samp>
                       </td>
                    </tr>
                 </table>
                 
                  <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii" style="font-size: 15px;">竞标状态：</span></td>
                       <td width="320" align="left" style="font-size: 14px;">
                           <samp id="sampcsslsa">${pa.uzbztb.uzbName}</samp>
                       </td>
                    </tr>
                 </table>
                 <c:if test="${pa.uzbztb.uzbid=='brafeacasd'}">
                 <table border="0" width="555" cellpadding="0" cellspacing="0">
                    <tr height="40">
                       <td width="112" align="right"><span style="color: red;"></span><span class="fbrw_btii"></span></td>
                       <td width="320" align="left" style="font-size: 15px;">
                           <a href="delepartpates!findthevoicedata.action?successfulid=${pa.pid}"><input id="lvnlsnee"  type="button" value="立即查看配音资料"/></a>
                       </td>
                    </tr>
                 </table>
                </c:if>
              </div>
          </div>
     </div>
     <c:if test="${pa.uzbztb.uzbid!='brafeacasd'}">
     <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;"><a href="voiceBiddings.action?pdym=${yemas}" class="fgclose"><div style="float: right; margin-right: 20px;" class="close1" style="margin-left: 35px;">返回</div></a></div>
     </c:if>
     <c:if test="${pa.uzbztb.uzbid=='brafeacasd'}">
         <c:if test="${pa.prwfemail!='200'}">
     <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;"><a href="Bidsuccess.action?sesym=${yemas}" class="fgclose"><div style="float: right; margin-right: 20px;" class="close1" style="margin-left: 35px;">返回</div></a></div>
        </c:if>
        <c:if test="${pa.prwfemail=='200'}">
        <div class="theme-poptit" style="border:1px solid #F60; border-width:1px 0px 0px 0px; height:30px; margin-top: 0px;"><a href="odersovers.action?ywodym=${yemas}" class="fgclose"><div style="float: right; margin-right: 20px;" class="close1" style="margin-left: 35px;">返回</div></a></div>
        </c:if>
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
