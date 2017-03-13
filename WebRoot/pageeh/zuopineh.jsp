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
    
    <title>WORKS</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 
  <!-- 是否登录弹出 -->
  <link rel="stylesheet" href="css/tanchu1s.css" type="text/css"></link>
	<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
 	<script type="text/javascript" src="js/indexJS.js"></script>
    <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
    <script type="text/javascript" src="js/tanchu.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <link rel="stylesheet" href="css/styletanc.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/tishi.css" type="text/css"></link>
  	<script type="text/javascript" src="js/tishi.js"></script>
  	 <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/jplayer.blue.monday.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
  	<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
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
$(function(){

$(".finschufu").click(function(){
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

<div id="tanschusb789" style="display: none;"></div>
<div class="card852" style="display: none;">
<span class="spinner-loader">Loading&#8230;</span>
<div class="jiazaiz963">Loading......</div>
</div>


<div class="fakeloader" style="opacity:0.3; z-index: 999;"></div>

<div style="width: 100%; margin-bottom: 0px; overflow: hidden;">
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
							>
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="80" height="45" align="right"><div
											class="d_utnkcn1"
											style="margin-left:48px;"></div>
									</td>
									<td width="110" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp">HOME</samp></td>
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
						<div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn4" style="margin-left:44px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -245px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="color: #F16700;">WORKS</samp></td>
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

  <div id="zuopin" style="border:0px solid #ccc; margin-top: 5px;">
		  	<div id="pyy_lsnls" style="border:0px solid red;">
		   		
		   		
		   		
		   		
		   		
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
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput">CATEGORY</span></a></div>
           <div class="citylist2" id="sflken" style="z-index:1; margin-top:65px;">
                <div class="xzk" style="z-index:1;">
                 <ul class="chengshi" style="z-index:1;">
                   <c:forEach items="${tlistT}" var="tis">
                     <a href="javaScript:dubbingtype('${tis.tvid}');"><li>${tis.tts}</li></a> 
                   </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
   
    <div class="selemediv1" style="z-index:555;">
    <div class="selemenu1" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput1">LANGUAGE</span></a></div>
           <div class="citylist3" id="sflken1" style="z-index:1; margin-top:65px;">
                <div class="xzk1">
                 <ul class="chengshi1">
                 <c:forEach items="${tlistl }" var="lts">
                        <a href="javaScript:sexfindys('${lts.lid}');"><li>${lts.lts}</li></a>
     	          </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    
    <div class="selemediv2" style="z-index:555;">
    <div class="selemenu2" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput2">ACCENT</span></a></div>
           <div class="citylist4" id="sflken2" style="z-index:1;margin-top:65px;">
                <div class="xzk2">
                 <ul class="chengshi2">
                 <c:forEach items="${tlists}" var="so">
                     <a href="javaScript:nlphase('${so.sid}');"><li>${so.sts }</li></a>
                 </c:forEach>
                 
                 </ul>
             </div>
           </div>
    </div>
    
    
     <div class="selemediv3" style="z-index:555;">
    <div class="selemenu3" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput3">STYLE</span></a></div>
           <div class="citylist5" id="sflken3" style="z-index:1;margin-top:65px;">
                <div class="xzk3">
                 <ul class="chengshi3">
                 <c:forEach items="${yslist }" var="ys">
                        <a href="javaScript:agephase('${ys.yslid}');"><li>${ys.yts}</li></a>
     	          </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
   <s:if test="#session.users==null">
    <a href="javaScript:;" id='fsbbb' class="finschufu"><div id="fabucon">
       <span id="fsfvebb">Post Project</span>
    </div></a>
    </s:if>
    
    <s:if test="#session.users!=null">
      <s:if test="#session.users.dtype.did !='gseaeffasdasc'">
       <a href="javaScript:;" id='fsbbb' class="finschufu"><div id="fabucon">
       <span id="fsfvebb">Post Project</span>
       </div></a>
      </s:if>
      <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
       <a href="ehbtender.action" id='fsbbb'><div id="fabucon">
       <span id="fsfvebb">Post Project</span>
       </div></a>
      </s:if>
    </s:if>
</div>
		   		
		   		
		   		
		   		
		   		
	        </div>
 
 <div id="pyy_paixu" style="border:0px solid red;">
      <ul id="pyy_ylcs" style="margin-top:0px;">
         <a class="pyy_acs1" href="javasrcipt:;"><li id="ppy_ulns_1" class="pyy_lics" style="width: 150px;">↓Results</li></a>
      </ul>
     
         <span id="ztscss">&nbsp;&nbsp;Per Page&nbsp;<span id="yemacss1"></span>&nbsp;</span>
         <span id="ztscss">Total&nbsp;<span id="yemacss2"></span>&nbsp;</span>
 
   </div>   
   <div id="zuopin2">
   		<div class="uopin21">
   			<ul>
   				<li class="uopin21bt">Title</li>
   				<li class="uopin21fl">Category</li>
   				<li class="uopin21id">Talent ID</li>
   				<li class="uopin21sj">Uploaded Time</li>
   				<li class="uopin21st">Listen</li>
   			</ul>
   		</div>
   		<div class="uopin22">
   			<ul class="uopin221">
   				
   				
   				
   			</ul>
   		</div>
   </div> 
    <div id="pyy_pyry4" style="width: 1000px;">
        	<div id="pageNav" style="width:650px;margin-top: 15px;"></div>
        </div>
 </div>    

    
<input id="zpytid" type="hidden" value="">
<input id="lgsid" type="hidden" value="">
<input id="nlsid" type="hidden" value="">
<input id="ysid" type="hidden" value="">
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
								© 2015-2020 chinesevoiceoverfreelancers.com. All Rights
								Reserved.</span></li>
					</ul>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endbottom-->
		</div>

		<!-- d1 -->
    <!-- 返回顶部 -->
   
</div>




<div id="thistis_icns" style="display:none; z-index: 999;">
</div>
<div id="thistis_icnicns" style="display:none; z-index: 999;">
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

      
        <s:if test="#session.users==null">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">You need to be loggin!</span>
       </s:if>
       <s:if test="#session.users!=null">
         <s:if test="#session.users.dtype.did=='gseaeffasdasc'">
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px;">You need to be loggin!</span>
         </s:if>
       </s:if>
       
      </div>
  </div>
  <div id="lsncs_olc3">
     <a class="sesscs" href="loginUsers!findUserType.action" target="_blank"><input id="cnwlbann1" type="button" value="register"/></a>
     <a class="sesscs" href="User/login.jsp" target="_blank"><input id="cnwlbann1" type="button" value="Login"/></a>
  </div>
</div>    


</body>
<script>
  
$(function(){

showsub(1);
//showlaod(500,"#ccc");
});

function showsub(id){
    var condition=$("#zpytid").val()+$("#lgsid").val()+$("#nlsid").val()+$("#ysid").val()+"ull";
     $(".uopin221").html("");
        var html="";
        pageNav.pre="上一页";
		pageNav.next="下一页";
		pageNav.fn = function(p,pn){
			document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//worksvoiw.action",{"wordjy":id,"condition":condition},function(data){
       $(data.vowos.items).each(function(){   
          //alert(this.worksName+"--"+this.wtime);
          var username=this.wuserNames.substring(0,3);
          var username1=this.wuserNames.substring(5,7);
         html+="<li class='uopin2211'>"
			   +"<span class='uopin21bt'><a href='ehworksdeta.action?wid="+this.wid+"' target='_blank'>"+this.wehName.substring(0,20)+"...</a></span>"
			   +"<span class='uopin21fl'>"+this.tvoice.tts+"</span>"
			   +"<span class='uopin21id'><a href='#'>"+this.wpyid+"</a></span>"
			   +"<span class='uopin21sj'>"+this.wtime+"</span>"
			   +"<span class='uopin21st'><a href=\"javascript:bofang('"+this.worksName.substring(0,8)+"...','"+this.worksFile+"');\"><img src='images/isc.ico'></img></a></span>"
               +"</li>";
       });
       $(".uopin221").html(html);
       $("#yemacss2").html(data.vowos.totalCount);
       $("#yemacss1").html(data.vowos.pageSize);
       pageNav.go(data.vowos.currPageNo,data.vowos.totalPageCount);
       
     }); 
     $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
   $('html,body').animate({scrollTop:0},400);
}


//配音类型
function dubbingtype(p){
    $("#zpytid").val(p+"P,");
    screeningworks();
}
//语言类型
function sexfindys(y){
    $("#lgsid").val(y+"Y,");
    screeningworks();
}
//年龄阶段
function nlphase(n){
   $("#nlsid").val(n+"N,");
    screeningworks();
}
//声音特点
function agephase(t){
   $("#ysid").val(t+"T,");
    screeningworks();
}

//条件清除
function fin1(){
	$("#efgabepp1").html("");
	$("#zpytid").val("");
	klnsekln();
	screeningworks();
}
function fin2(){
	$("#efgabepp2").html("");
	$("#lgsid").val("");
	klnsekln();
	screeningworks();
}	
function fin3(){
	$("#efgabepp3").html("");
	$("#nlsid").val("");
	klnsekln();
	screeningworks();
}	
function fin4(){
	$("#efgabepp4").html("");
	$("#ysid").val("");
	klnsekln();
	screeningworks();
}	

//清除条件
function find8(){
	$("#efgabepp1").html("");
	$("#efgabepp2").html("");
	$("#efgabepp3").html("");
	$("#efgabepp4").html("");
	$("#efgabepp5").html("");
	$("#zpytid").val("");
	$("#lgsid").val("");
	$("#nlsid").val("");
	$("#ysid").val("");
	screeningworks();
}



function screeningworks(){
   var condition=$("#zpytid").val()+$("#lgsid").val()+$("#nlsid").val()+$("#ysid").val()+"ull";
   $(".uopin221").html("");
        var html="";
        pageNav.pre="上一页";
		pageNav.next="下一页";
		pageNav.fn = function(p,pn){
			document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//worksvoiw.action",{"condition":condition},function(data){
       $(data.vowos.items).each(function(){   
          //alert(this.worksName+"--"+this.wtime);
          var username=this.wuserNames.substring(0,3);
          var username1=this.wuserNames.substring(5,7);
         html+="<li class='uopin2211'>"
			   +"<span class='uopin21bt'><a href='worksdeta.action?wid="+this.wid+"' target='_blank'>"+this.worksName.substring(0,20)+"...</a></span>"
			   +"<span class='uopin21fl'>"+this.tvoice.tvtypeName+"</span>"
			   +"<span class='uopin21id'><a href='#'>"+username+"***"+username1+"</a></span>"
			   +"<span class='uopin21sj'>"+this.wtime+"</span>"
			   +"<span class='uopin21st'><a href=\"javascript:bofang('"+this.worksName.substring(0,8)+"...','"+this.worksFile+"');\"><img src='images/isc.ico'></img></a></span>"
               +"</li>";
       });
       $(".uopin221").html(html);
       $("#yemacss2").html(data.vowos.totalCount);
       $("#yemacss1").html(data.vowos.pageSize);
       pageNav.go(data.vowos.currPageNo,data.vowos.totalPageCount);
       
     }); 
    $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
$('html,body').animate({scrollTop:0},500);
}

  </script>
  
</html>
