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
    
    <title>Project List</title>
    
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
		

<!----------主体样式------------->
<div style="width: 1000px; height: 3px; border: 0px solid #ccc; background-color:red; margin-top: 10px;"></div>
<div id="void_nes1" style="border: 0px solid #ccc;   height: 850px;">
   <div id="mum_zhutiyi1">
     <ul id="mum_ul_s">
       <li  class="mum_licss1"><span class="mum_asccss1">ACCOUNT CENTER</span></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="ehloginUserehs!rupinuzyEh.action">My Home</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehpersonalcenter.action">Profile</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehbtenderaction.action">Post a Project</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehbtenlist.action">Project List</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehunpaidtaskorder.action">Projects Unpaid</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehconJumptaskorder.action">Projects Paid</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehodersovers.action">Projects Completed</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">PERSONAL INFO</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehvoicfs.action">Upload Photo</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehupUsertion.action">Contact Info</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehpasswordups.action">Change Password</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="ehUserehsystemnews.action">System Messages</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">HELP CENTER</span></li>
         <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpjylcEh.action">How It Works</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpfyfkEh.action">Fees & Payment</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpcjwtEh.action">Q & A</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="ehindexpage!jumptsjyEh.action">Contact Us</a></li>
        <li id="mum_lncs1" class="mum_licss2"><a target="_blank" class="mum_asccss" href="ehindexpage!jumpgywmEh.action">About Us</a></li>
      </ul>
   
   </div>
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc;">
       <input type="hidden" id="hiddjy" value="${rwdjy}">
          <div id="rele_fabu1">
              <div id="rele_fbnc1" style="border:0px solid red;"><img src="images/yifa.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2" style="border:0px solid red;"><h4 id="rele_fndn1">My Project List</h4></div>
              <div id="rele_fbnc3" style="border:0px solid red;">
                <div style="font-size: 14px; color: #690;float: right; margin-top: 20px;">Total:${bten.totalCount }&nbsp;&nbsp;&nbsp;Per Page:${bten.pageSize}</div>
              </div>
          </div>
          <div id="rele_fabu4">
             <table border="0" width="780" cellpadding="0" cellspacing="0">
                <tr height="35">
                   <td align="center" width="90" style="font-size: 14px;  color: #666;">Project Title</td>
                   <td align="center" width="35" style="font-size: 14px;  color: #666;">Category</td>
                   <td align="center" width="40" style="font-size: 14px;  color: #666;">Auditons</td>
                   <td align="center" width="45" style="font-size: 14px;  color: #666;">Status</td>
                   <td align="center" width="65" style="font-size: 14px;  color: #666;">Posted Time</td>
                   <td align="center" width="70" style="font-size: 14px;  color: #666;">Action</td>
                </tr>
             
             </table>
          </div>
          <div id="rele_fabu5">
          <!-- 是否公开 -->
          <!--  <div id="sfgk1">
                       <label style="font-size: 14px; color: red;">是否公开:</label>&nbsp;&nbsp;<input id="fsbelke" type="checkbox" name="check-3" value="6" class="lcs_check lcs_tt1" checked="checked" autocomplete="off" />
	                  </div>  -->
	                  
	       <c:forEach items="${bten.items}" var="bt">  
             <div id="rele_uuc">
	              <div id="rele_oo1" style="width: 191px;border:0px solid red;"><a href="javascript:ckidzpbj('${bt.bid}');" style="text-decoration: none;"><div id="rele_cso1ss" class="rele_cso" style="font-size: 13px;">${fn:substring(bt.bname,0,20)}...</div></a></div>
	              <div id="rele_oo2" style="width: 97px;border:0px solid red;"><div class="rele_cso" style="font-size: 13px;">&nbsp;&nbsp;${bt.reTypebf }</div></div>
	              <div id="rele_oo3" style="width: 98px;border:0px solid red;"><div class="rele_cso" style="font-size: 14px; color: red; font-weight: bold;">${bt.count }</div></div>
	              <div id="rele_oo4" style="width: 98px;border:0px solid red;"><div class="rele_cso" style="font-size: 13px;">${bt.bztbf }</div></div>
	              <div id="rele_oo4" style="width: 138px;border:0px solid red;"><div class="rele_cso" style="font-size: 13px;">${bt.btime }</div></div>
	              <div id="rele_oo5" style="width: 156px; border:0px solid red;">
	                  <div id="sfgk2" style="border:0px solid #ccc; width: 150px; margin-top: 13px;">
	                      <input id="knsks" type="hidden" value=""/>
	                      <input type="button" onclick="ckidzpbj('${bt.bid}');" value="Edit" class="sfgkanss" id="sfgkan2"/>
                          <input type="button" onclick="deleteworksrw('${bt.bid}','${fn:substring(bt.bname,0,15) }','${bt.count}');" value="Delete" class="sfgkanss" id="sfgkan1"/>
	                  </div>
	              </div>
             </div>
              </c:forEach>
          </div>
          <div id="rele_fabu6" style="height: 50px;">
             <div style="position: relative;top: 12px;">
             
            <c:if test="${bten.totalCount!=0}">
            <div id="pageNav" style="border:0px solid red; width:780px; margin-left: 80px;"></div>
             </c:if>
             <c:if test="${bten.totalCount==0}">
             <div id="pageNav" style="border:0px solid red; display:none; width:780px; margin-left: 80px;"></div>
             <div style="margin-left: 330px;font-size: 16px;">No Project！</div>
             </c:if>
            
            </div>
          </div>
   </div>
</div>
<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts">
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
					<ul style="text-align:center;">
						<li>
				         <div class="bottomnav">
								 <a href='ehindexpage!jumpjylcEh.action' target="_blank">HOW IT WORKS</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">FEES & PAYMENT</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">Q & A</a> | <a
									href='ehindexpage!jumptsjyEh.action' target="_blank">CONTACT US</a> | <a
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a><!--  | <a -->
									<!-- href='javaScript:;'>帮助中心</a> | <a
									href='javaScript:;'>隐私保护</a> | <a
									href='javaScript:;'>公司地图</a> | <a
									href='https://auth.alipay.com/login/index.htm' target="_blank">支付宝</a> --> | <a
									href='https://www.paypal.com/c2/webapps/mpp/home' target="_blank">PAYPAL</a>
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
    
<div id="thistis_icns" style="display: none;">
</div>
<div id="thistis_icnicns" style="display: none;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti">Note:</span></td>
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

         <span id="showrw1" class="svege" style="display: none;">Are you sure you want to delete this project "<span id="fsfscee"></span>..."</span>

         <span id="showrw2" class="svege" style="display: none;">You are not allowed to delete project under audition!</span>

      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="javascript:;" id="fklwnlselx"><input onclick="closeds()"  id="cnwlbann1" type="button" value="Cancel"/></a>
     <input type="hidden" id="worksd" name="" value=""/>
     <input type="hidden" id="countrw" name="" value=""/>
     <a class="sesscs" href="javascript:;">
     
       <input class="rwshwo1" style="display: none;" onclick="denlsek()" id="cnwlbann1" type="submit" value="Delete"/></a>
     
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
	
	 if(parseInt('${rwdjy}')==0){
	   pageNav.go(parseInt('${rwdjy}'),'${bten.totalPageCount}');
	}else{
	   pageNav.go(parseInt('${rwdjy}'),'${bten.totalPageCount}');
	}
 
	
	
	

});

function showsub(id)
{
    //隐藏域页码
    $("#hiddjy").val(id);
    $("#rele_fabu5").html(" ");
	 //alert(id);
      $.getJSON("/peiyin//btenlist.action?rwdjy="+id,function(data){
       var html="";
       $(data.bten.items).each(function(){   
          //alert(this.btName+"--"+this.btime); 
         html+="<div id='rele_uuc'>"
				+"<div id='rele_oo1' style='width: 191px;border:0px solid red;'><a href='javascript:ckidzpbj('"+this.bid+"');' style='text-decoration: none;'><div id='rele_cso1ss' class='rele_cso' style='font-size: 13px;'>"+this.bname.substring(0,8)+"...</div></a></div>"
				+"<div id='rele_oo2' style='width: 97px;border:0px solid red;'><div class='rele_cso' style='font-size: 13px;'>&nbsp;&nbsp;"+this.reTypebf+"</div></div>"
				+"<div id='rele_oo3' style='width: 98px;border:0px solid red;'><div class='rele_cso' style='font-size: 13px; color: red; font-weight: bold;'>"+this.count+"</div></div>"
				+"<div id='rele_oo4' style='width: 98px;border:0px solid red;'><div class='rele_cso' style='font-size: 13px;'>"+this.bztbf+"</div></div>"
				+"<div id='rele_oo4' style='width: 138px;border:0px solid red;'><div class='rele_cso' style='font-size: 13px;'>"+this.btime+"</div></div>"
				+"<div id='rele_oo5' style='width: 156px; border:0px solid red;'>"
				+"<div id='sfgk2' style='border:0px solid #ccc; width: 150px; margin-top: 13px;'>"
				+"<input id='knsks' type='hidden' value=''/>"
				+"<input type='button' onclick=\"ckidzpbj('"+this.bid+"');\" value='edit' class='sfgkanss' id='sfgkan2'/>&nbsp;"
				+"<input type='button' onclick=\"deleteworksrw('"+this.bid+"','"+this.bname.substring(0,15)+"','"+this.count+"');\" value='delete' class='sfgkanss' id='sfgkan1'/>"
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
	    window.location.href="ehbetenbj.action?ptid="+id+"&jdyup="+ycym;
};

function denlsek(){
   var coutn=$("#countrw").val();
   var workdelid=$("#worksd").val();
   //获取页码
   var deledjy=$("#hiddjy").val();
   //alert(workdelid+"---"+deledjy+"--"+coutn);
   window.location.href="ehbetencaozuo!deletebtensEh.action?btenid="+workdelid+"&counts="+coutn+"&yema="+deledjy;
}


function deleteworksrw(id,wknamerw,count){
              //alert(wkname);
              $("#worksd").val(id);
              $("#countrw").val(count);
              $("#fsfscee").html(wknamerw);
              //alert(count);
              if(count==0){
                 $("#showrw1").show();
                 $(".rwshwo1").show();
              }
              if(count!=0){
                 $("#showrw2").show();
              }
              
              $("#thistis_icns").fadeIn(200);
			  $("#thistis_icnicns").slideDown(200);
}

$(function(){

$("#fklwnlselx").click(function(){
                 $("#showrw1").hide();
                 $(".rwshwo1").hide();
                 $("#showrw2").hide();
			  $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200); 
			   
	  });

});
function closeds(){
                 $("#showrw1").hide();
                 $(".rwshwo1").hide();
                 $("#showrw2").hide();
              $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200); 
			   

}
  </script>


</html>
