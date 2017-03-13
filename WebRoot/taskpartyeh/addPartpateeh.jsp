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
    
    <title>Cooperation information confirmation</title>
    
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
  <link rel="stylesheet" href="css-js-file/tijiaoyy.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
<link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
   <link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
  </head>
  <style type="text/css">
 .spinner2 .spinner-container {
	margin-top:-40px;
} 

</style>

<script type="text/javascript">
var c=0;


$(function(){
$("#fklwnlselx").click(function(){

			  $("#thistis_icns").fadeOut(200);
			  $("#thistis_icnicns").slideUp(200);  
                 c=1;
	  });	  


	$("#addprtpageid").submit(function(){
		var flag=false;
		if(c==0){
		  $("#thistis_icns").fadeIn();
		  $("#thistis_icnicns").fadeIn();
		}
		if(c==1){
		   flag=true;
		}

		return flag;
	});
});

function fuclocs(){
      $("#thistis_icns").fadeOut(200);
	  $("#thistis_icnicns").slideUp(200);
	  c=1;

};
</script>
<script type="text/javascript" src="js-english/pageindex.js"></script>
<body>
  <div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>
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
		
    
    
    
    <div class="theme-popover-mask1" style="display: block;z-index: 997;"></div>
<div class="theme-popover" style="height: 580px; margin-top: -250px; display: block; z-index: 998;">
 <input type="hidden" id="bteidsdd" name="bteids" value="${bteids }"/>
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaozttsstts">
           <samp id="tijys22" style="font-family:'微软雅黑'; margin-left: 50px;">Confirm Info to Collaborate!</samp>
           <!-- <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a> -->
        </div>
        
        
        <form action="ehpaymento.action" method="post" id="addprtpageid">
        <div id="tishcaoz2" style="border:0px solid red; height: 10px;">
          <!--  <table width="555" height="30" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>竞标人ID：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <samp id="wnllfont" class="inusers"></samp>
                </div>
              </td>
            </tr>
          </table> -->
       </div>
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 44px;">
           <table width="555" height="44" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>Talent ID：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <samp id="wnllfont">${pats.puserId.iname }</samp>
                </div>
              </td>
            </tr>
          </table>
       </div>
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 30px; margin-top: 10px;">
           <table width="555" height="30" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>Project Title：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <input type="text" class="fbrw_libit6" value="${pats.btender.btName }" readonly="readonly"/>
                </div>
              </td>
            </tr>
          </table>
       </div>
       
       <div id="tishcaoz2" style="border:0px solid red; height: 44px;">
           <table width="555" height="44" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>Deadline：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                     <select style="width: 130px; float: left;" class="fbrw_libit3" name="te.ptimelimit">
                        <c:forEach items="${odsTi}" var="time">
							    <c:forEach items="${time.value}" var="values">
                                    <option id="index_in" value="${time.key}" <c:if test="${time.key == pats.ptimelimit}">selected="selected"</c:if>>${values}</option>
                                </c:forEach>
     	               </c:forEach>
				     </select>(hours)
                </div>
              </td>
            </tr>
          </table>
       </div>
       
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: -2px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>Price：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <samp id="wnllfont">${pats.prwfphone }USD($)</samp>
                    <input type="hidden" name="te.ptotalprice" value="${pats.prwfphone*6}">
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">By clicking 'OK', you agree on the price bid by the talent!<a herf="#" style="color: red;font-weight: bold;"></a></td>
            </tr>
          </table>
       </div>
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 134px;">
           <table width="555" height="44" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="top" ><samp id="xxss55" style="line-height: 10px;"><samp style="color: red;">*</samp>Important tips：</samp></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <samp style="color:#F60; font-size: 14px;">Please confirm the above information!</samp><br/>
                    <samp style="color:#F60; font-size: 14px;">Once confirmed, pls enter your PayPal account! </samp><br/>
                    <samp style="color:#F60; font-size: 14px;">If there is any error, please contact customer service!</samp><br/>
                    <samp style="color:#F60; font-size: 14px;">How it works:<a target="_blank" href="ehindexpage!jumpfyfkEh.action" style="color: red;font-weight: bold;">&nbsp;Click to know details</a></samp>
                </div>
              </td>
            </tr>
          </table>
       </div>
       
        <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: 5px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>PayPal Account：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <input id="zhifbhes" type="text" class="fbrw_libit6" name="te.paycount"/>
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">Pls ensure the account is the one you use to pay for the project!</td>
            </tr>
          </table>
       </div>
       <!-- <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: 5px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>联系电话：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <input type="text" class="fbrw_libit6" name="te.prwfphone"/>
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">该电话为合作中联系电话，请认真填写!</td>
            </tr>
          </table>
       </div>
       <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: 0px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>联系邮箱：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <input type="text" class="fbrw_libit6" name="te.prwfemail"/>
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">该电话为合作中联系邮箱，请认真填写!</td>
            </tr>
          </table>
          
       </div>  -->
     </div>
     <div style="width: 560px; height: 30px; border:0px solid red; position: absolute; bottom: 50px; text-align: center;">
     <span id="tijzhsnes" style="font-size:14px; color: red; font-weight: bold;"></span>
     </div>
     <input type="hidden" class="fbrw_libit6" name="te.pid" value="${pats.pid}"/>
     <div class="theme-poptit" style="margin-top: 380px;"><a href="javascript:;"><div><samp class="xlxnss"><input type="submit" id="coslqed55" value="OK"/></samp></div></a>
     <a href="ehunpaidtaskorder.action" class="close"><div id="coslqed55"><samp class="xlxnss">RETURN</samp></div></a>
</div>
</form>
    
    
    
</div>
<input id="kjfs" type="hidden" value="0"/>
<div class="theme-popover-mask" style="z-index: 0;"></div>





<div id="thistis_icns" style="z-index: 998; display: none;">
</div>
<div id="thistis_icnicns" style="z-index: 999; display: none;">
  <div id="lsncs_olc1">
    <table width="495" height="38" border="0" cellpadding="0" cellspacing="0"> 
      <tr>
        <td width="43"><img src="images/fsfesrew.png" width="41" height="29" /></td>
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">Note:</span></td>
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
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px; color: red;">No other talents could audition this project once you confirm this order!</span>
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="javaScript:fuclocs();" target="_blank"><input id="cnwlbann1" type="button" value="OK"/></a>
    
  </div>
</div>    






</body>
<script type="text/javascript">
$(function(){
var inus='${pats.puserId.iuserName}';
var username=inus.substring(0,3);
var username1=inus.substring(5,7);
$(".inusers").html(username+"***"+username1);
showlaod(500,"#ccc");

});
</script>


</html>
