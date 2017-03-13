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
    
    <title>任务主页</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="js/tanchu.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <link rel="stylesheet" href="css/styletanc.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  <link rel="stylesheet" href="css/spinners.css" type="text/css"></link>
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

</style>
<body>
<div id="tanschusb789" style="display: none;"></div>
<div class="card852" style="">
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
<div id="voie_daohang1" style="border:0px solid red; height: 60px;">
<div style="width: 100%; height: 60px; border:0px solid red;">
<div id="d_ncnncn" style="background-color:#EBEBEB;">
  <div id="d_uucnns">
  <a href="index.action">
     <div id="d_list_lic9">
       <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="80" height="45" align="right"><div class="d_utnkcn1" style="margin-left:47px;"></div></td>
           <td width="110" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp">网站首页</samp></td>
         </tr>
       </table>
     </div>
     </a>
     
     <a href="btendervoiw.action">
     <div id="d_list_lic9"  style="border-top:5px solid #F16700; background-color:#fff;">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:48px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -75px;"></div></td>
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

<!----------主体样式------------->
<div id="void_nes1">

   <div id="pyy_lsnls">
   	     
   	     
   	     
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
       <a href="javaScript:;" style="text-decoration: none;"><span class="csinput">任务类型</span></a></div>
           <div class="citylist2" id="sflken" style="z-index:1; margin-top:65px;">
                <div class="xzk" style="z-index:1;">
                 <ul class="chengshi" style="z-index:1;">
                   <c:forEach items="${tlistT}" var="tvo">
                      <a href="javaScript:findbvtype('${tvo.tvid}');"><li>${tvo.tvtypeName}</li></a>
                   </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
   
    <div class="selemediv1" style="z-index:555;">
    <div class="selemenu1" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput1">性别要求</span></a></div>
           <div class="citylist3" id="sflken1" style="z-index:1; margin-top:65px;">
                <div class="xzk1" style="z-index:1;">
                 <ul class="chengshi1" style="z-index:1;">
                 <c:forEach items="${sexslist }" var="sx">
							    <c:forEach items="${sx.value}" var="value">
                                      <a href="javaScript:findbstype('${value}');"><li>${value}</li></a>
                                </c:forEach>
     	          </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    
    <div class="selemediv2" style="z-index:555;">
    <div class="selemenu2" style="z-index:999;position:absolute;">
   <a href="javaScript:;" style="text-decoration: none;"><span class="csinput2">语言要求</span></a></div>
           <div class="citylist4" id="sflken2" style="z-index:1;margin-top:65px;">
                <div class="xzk2">
                 <ul class="chengshi2">
                 <c:forEach items="${tlistl}" var="lg">
                  <a href="javaScript:findbltype('${lg.lid}');"><li>${lg.lgtypeName}</li></a> 
                  </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    
     <div class="selemediv3" style="z-index:555;">
    <div class="selemenu3" style="z-index:999;position:absolute;">
    <a href="javaScript:;" style="text-decoration: none;"><span class="csinput3">年龄要求</span></a></div>
           <div class="citylist5" id="sflken3" style="z-index:1;margin-top:65px;">
                <div class="xzk3">
                 <ul class="chengshi3">
                 <c:forEach items="${tlists}" var="so">
                     <a href="javaScript:findbrtype('${so.sid}');"><li>${so.scrowdName }</li></a>
                 </c:forEach>
                 </ul>
             </div>
           </div>
    </div>
    
    <a href="loginUsers!findUserType.action" target="_blank" id='fsbbb'><div id="fabucon">
       <span id="fsfvebb">成为配音员</span>
    </div></a>
</div>

   
   </div>
   <div id="pyy_paixu">
      <ul id="pyy_ylcs">
         <a class="pyy_acs1" href="javascript:fingoderby(1);"><li id="ppy_ulns_1" class="pyy_lics">↑发布时间</li></a>
         <a class="pyy_acs1" href="javascript:fingoderby(2);"><li id="ppy_ulns_2" class="pyy_lics">↓任务价位</li></a>
         <a class="pyy_acs1" href="javascript:fingoderby(3);"><li id="ppy_ulns_3" class="pyy_lics">↓竞标人数</li></a>
      </ul>
      
      <input id="doderbyid" type="hidden" value="1"/>

         <span id="ztscss">&nbsp;&nbsp;每页显示&nbsp;<span id="yemacss1"></span>&nbsp;条</span>
         <span id="ztscss">共&nbsp;<span id="yemacss2"></span>&nbsp;条记录</span>

      
   </div>
   
   <div id="pyy_pyry">
     <div id="pyy_pyry1">
        <div id="pyy_pyry3">
       		<div class="pyy_pyry31">
       			<span class="pyy_pyry311">标题</span>
       			<span class="pyy_pyry31ss">任务类型</span>
       			<span class="pyy_pyry312">竞标人数</span>
       			<span class="pyy_pyry313">任务价位(RMB)</span>
       		</div>
       		<div class="pyy_pyry35" id="btednts">
       			
       			
       		</div>
        </div>
        <div id="pyy_pyry4">
        	<div id="pageNav" style="width:650px;margin-top: 15px;"></div>
        </div>
     
     </div>
     <div id="pyy_pyry2">
     	<div class="pyy_pyry21">
     		<div class="pyy_pyry211">
     			<span class="pyy_pyry2112">最新交易成功</span>
     		</div>
     		<div class="pyy_pyry212">
     			<ul>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     				<li>会员: <a href="#"> 隧道股份 </a> 完成 <a href="#"> 重庆交通宣传配音 </a><span> 05-21</span></li>
     			</ul>
     		</div>
     	</div>
     	<div class="pyy_pyry22">
     	<img alt="" src="images/rewnuzy.png" width="315" height="422">
     	</div>
     </div>
   
   </div>



</div>

<input id="zhitis" type="hidden" value="${zhitj}">
<input id="bvtype" type="hidden" value="">
<input id="bltype" type="hidden" value="">
<input id="bstype" type="hidden" value="">
<input id="brtype" type="hidden" value="">

<!----------主体样式------------->
	<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 45px;">


			<!--foot-->
			<div class="footbox">
				<div class="foot">
					<div class="bb1">
						<div class="bb1-img"></div>
						<div class="bb1-text">
							<ul>
								<LI>公司名称：Chinesevoicefreelancers(CVF)配音有限责任公司
								<LI>工作地址：重庆市沙坪坝区
								<LI>业务电话：(023)xxxxxxx</LI>
							</ul>
						</div>
					</div>
					<div class="bb2">
						<div class="bb2-img"></div>
						<div class="bb2-text">
							<ul>
								<DIV class=bb2-text>
									<UL>
										<LI>配音热线：<SPAN class="font-weight font-color font-size14">400
												888 8888</SPAN>
										<LI>急速配音：023-12345678
										<LI>电子邮箱：969353498@qq.com</LI>
									</UL>
								</DIV>
							</ul>
						</div>
					</div>
					<div class="bb3">
						<div class="bb3-img"></div>
						<div class="bb3-text">
							<ul>
								<LI>在线业务洽谈：
								<LI>QQ 969353498</LI>
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
								Chinesevoicefreelancers(CVF) © 2015-2020 s.cn All Rights
								Reserved.渝ICP备08106896号经营许可证闽B2-20110061.</span></li>
					</ul>
				</div>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<!--endbottom-->





		</div>

		<!-- d1 -->
    <!-- 返回顶部 -->
    <div id="huidingbu" ><span><img id="huidb1" class="huidb1" src="images/dingbu1.png"></img></span><img id="huidb2" class="huidb2" src="images/dingbu2.png" title="返回顶部"></img></div>
</body>
<script type="text/javascript">

$(function(){

showsub(1);
//加载
//showlaod(500,"#ccc");
});


function showsub(id){
var condition;
    if($("#zhitis").val()==""){
     condition=$("#bvtype").val()+$("#bstype").val()+$("#bltype").val()+$("#brtype").val()+"ull";
    }else{
     //首页的条件
     condition=$("#zhitis").val();
    }
     var px=$("#doderbyid").val();
     $("#btednts").html("");
        var html="";
        pageNav.pre="上一页";
		pageNav.next="下一页";
		pageNav.fn = function(p,pn){
			document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		};
		
		$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//btendervoiw.action",{"pagenumber":id,"oderma":px,"conditionsber":condition},function(data){
       $(data.btenlist.items).each(function(){
         html+="<div class='pyy_pyry351'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank' class='lis_ind'>"
				+"<span class='pyy_pyry311'>"+this.rwbName.substring(0,12)+"...</span>"
				+"</a>"
				+"<span class='pyy_pyry311dd'>"+this.reType+"</span>"
				+"<span class='pyy_pyry312'>"+this.rwcount+"</span>"
				+"<span class='pyy_pyry313'>"+this.rermb+".00￥</span>"
				+"<span class='pyy_pyry314'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank'><span>查看详细</span></a>"
				+"</span>"
				+"</div>";
       });
       $("#btednts").html(html);
       $("#yemacss2").html(data.btenlist.totalCount);
       $("#yemacss1").html(data.btenlist.pageSize);
       pageNav.go(data.btenlist.currPageNo,data.btenlist.totalPageCount);
       
     });
    $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
   $('html,body').animate({scrollTop:0},400);
   
}


//排序
function fingoderby(px){
  $("#zhitis").val("");
  var condition=$("#bvtype").val()+$("#bstype").val()+$("#bltype").val()+$("#brtype").val()+"ull";
  $("#doderbyid").val("");
  $("#doderbyid").val(px);
  $("#btednts").html("");
        var html="";
        pageNav.pre="上一页";
		pageNav.next="下一页";
		pageNav.fn = function(p,pn){
			document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//btendervoiw.action",{"conditionsber":condition,"oderma":px},function(data){
       $(data.btenlist.items).each(function(){
         html+="<div class='pyy_pyry351'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank' class='lis_ind'>"
				+"<span class='pyy_pyry311'>"+this.rwbName.substring(0,12)+"...</span>"
				+"</a>"
				+"<span class='pyy_pyry311dd'>"+this.reType+"</span>"
				+"<span class='pyy_pyry312'>"+this.rwcount+"</span>"
				+"<span class='pyy_pyry313'>"+this.rermb+".00￥</span>"
				+"<span class='pyy_pyry314'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank'><span>查看详细</span></a>"
				+"</span>"
				+"</div>";
       });
       $("#btednts").html(html);
       $("#yemacss2").html(data.btenlist.totalCount);
       $("#yemacss1").html(data.btenlist.pageSize);
       pageNav.go(data.btenlist.currPageNo,data.btenlist.totalPageCount);
     });
      $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
   $('html,body').animate({scrollTop:0},400);


}







//配音类型
function findbvtype(bv){
    $("#bvtype").val(bv+"V,");
    screeningbtenber();
}
//语言类型
function findbltype(bl){
    $("#bltype").val(bl+"L,");
    screeningbtenber();
}
//年龄阶段
function findbrtype(br){
   $("#brtype").val(br+"R,");
    screeningbtenber();
}
//性别要求
function findbstype(bs){
   $("#bstype").val(bs+"S,");
    screeningbtenber();
}



//条件清除
function fin1(){
	$("#efgabepp1").html("");
	$("#bvtype").val("");
	klnsekln();
	screeningbtenber();
}
function fin2(){
	$("#efgabepp2").html("");
	$("#bstype").val("");
	klnsekln();
	screeningbtenber();
}	
function fin3(){
	$("#efgabepp3").html("");
	$("#bltype").val("");
	klnsekln();
	screeningbtenber();
}	
function fin4(){
	$("#efgabepp4").html("");
	$("#brtype").val("");
	klnsekln();
	screeningbtenber();
}	



//清除条件
function find8(){
	$("#efgabepp1").html("");
	$("#efgabepp2").html("");
	$("#efgabepp3").html("");
	$("#efgabepp4").html("");
	$("#efgabepp5").html("");
	$("#bvtype").val("");
	$("#bstype").val("");
	$("#bltype").val("");
	$("#brtype").val("");
	screeningbtenber();
}

function screeningbtenber(){
   $("#zhitis").val("");
   var condition=$("#bvtype").val()+$("#bstype").val()+$("#bltype").val()+$("#brtype").val()+"ull";
   var px=$("#doderbyid").val();
    //alert(condition+"---"+px);
     $("#btednts").html("");
        var html="";
        pageNav.pre="上一页";
		pageNav.next="下一页";
		pageNav.fn = function(p,pn){
			document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		};
		$("#tanschusb789").show();
		$(".card852").show();
   $.getJSON("/peiyin//btendervoiw.action",{"conditionsber":condition,"oderma":px},function(data){
       $(data.btenlist.items).each(function(){
         html+="<div class='pyy_pyry351'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank' class='lis_ind'>"
				+"<span class='pyy_pyry311'>"+this.rwbName.substring(0,12)+"...</span>"
				+"</a>"
				+"<span class='pyy_pyry311dd'>"+this.reType+"</span>"
				+"<span class='pyy_pyry312'>"+this.rwcount+"</span>"
				+"<span class='pyy_pyry313'>"+this.rermb+".00￥</span>"
				+"<span class='pyy_pyry314'>"
				+"<a href='voiwtaskbt.action?bid="+this.rwbid+"' target='_blank'><span>查看详细</span></a>"
				+"</span>"
				+"</div>";
       });
       $("#btednts").html(html);
       $("#yemacss2").html(data.btenlist.totalCount);
       $("#yemacss1").html(data.btenlist.pageSize);
       pageNav.go(data.btenlist.currPageNo,data.btenlist.totalPageCount);
     });

 $("#tanschusb789").fadeOut(500);
    $(".card852").fadeOut(500);
   $('html,body').animate({scrollTop:0},400);
}





</script>


</html>
