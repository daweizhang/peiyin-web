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
    
    <title>合作信息确认</title>
    
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
    
    
    
    
    <div class="theme-popover-mask1" style="display: block;z-index: 997;"></div>
<div class="theme-popover" style="height: 530px; margin-top: -230px; display: block; z-index: 998;">
 <input type="hidden" id="bteidsdd" name="bteids" value="${bteids }"/>
     <div class="theme-popbod" style="border:0px solid #690;">
        <div id="tishcaozttsstts">
           <samp id="tijys22" style="font-family:'微软雅黑'; margin-left: 50px;">第一步:确认合作信息</samp>
           <!-- <a href="javascript:;" class="close"><div id="lgunbis887"><img src="images/closgb.png" width="30" width="30" style="margin-left:-2px; margin-top:1px;"/></div></a> -->
        </div>
        
        
        <form action="paymento.action" method="post" id="addprtpageid">
        <div id="tishcaoz2" style="border:0px solid red; height: 30px;">
           <table width="555" height="30" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>竞标人User：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <samp id="wnllfont" class="inusers"></samp>
                </div>
              </td>
            </tr>
          </table>
       </div>
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 44px;">
           <table width="555" height="44" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>竞标人ID：</span></td>
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
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>任务名称：</span></td>
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
              <td width="145" height="39" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>合作时间范围：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                     <select style="width: 130px; float: left;" class="fbrw_libit3" name="te.ptimelimit">
                        <c:forEach items="${odsTi}" var="time">
							    <c:forEach items="${time.value}" var="values">
                                    <option id="index_in" value="${time.key}" <c:if test="${time.key == pats.ptimelimit}">selected="selected"</c:if>>${values}</option>
                                </c:forEach>
     	               </c:forEach>
				     </select>(小时)之内完成！
                </div>
              </td>
            </tr>
          </table>
       </div>
       
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: -2px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>竞标价格：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:5px; padding:0px;">
                    <samp id="wnllfont">${pats.prwfphone }USD($)</samp>
                    <input type="hidden" name="te.ptotalprice" value="${pats.prwfphone}">
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">该价格为配音员竞标价格，任务将会按该价格结算!<a herf="#" style="color: red;font-weight: bold;"></a></td>
            </tr>
          </table>
       </div>
       
       
       <div id="tishcaoz2" style="border:0px solid red; height: 104px;">
           <table width="555" height="44" border="0">
            <tr>
              <td width="145" height="39" align="right" valign="top" ><samp id="xxss55" style="line-height: 10px;"><samp style="color: red;">*</samp>重要提示：</samp></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <samp style="color:#F60; font-size: 14px;">请确认以上信息,如有误请联系客服人员！如果确认无误,填写</samp><br/>
                    <samp style="color:#F60; font-size: 14px;">您的PayPal付款账号!合作期间,您如果有什么疑问,请通过网</samp><br/>
                    <samp style="color:#F60; font-size: 14px;">网站对话框与客服沟通。</samp><br/>
                    <samp style="color:#F60; font-size: 14px;">付款流程:<a target="_blank" href="page/withpayment.jsp" style="color: red;font-weight: bold;">&nbsp;点击了解详情</a></samp>
                </div>
              </td>
            </tr>
          </table>
       </div>
       
        <div id="tishcaoz2" style="border:0px solid red; height: 60px; margin-top: 5px;">
           <table width="555" height="40" border="0">
            <tr height="20">
              <td width="145" align="right" valign="middle" ><span id="xxss55"><samp style="color: red;">*</samp>PayPal付款账户：</span></td>
              <td width="394" align="left" valign="middle">
                 <div class="uploader green" style="margin-top:0px; padding:0px;">
                    <input type="text" class="fbrw_libit6" name="te.paycount"/>
                </div>
              </td>
            </tr>
            <tr height="15">
              <td height="15" align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle" style="color:#F60; font-size: 14px;">该账户是您需要支付金额的账户，请认真填写!</td>
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
     <input type="hidden" class="fbrw_libit6" name="te.pid" value="${pats.pid}"/>
     <div class="theme-poptit" style="margin-top: 330px;"><a href="javascript:;"><div><samp class="xlxnss"><input type="submit" id="coslqed55" value="确定"/></samp></div></a>
     <a href="unpaidtaskorder.action" class="close"><div id="coslqed55"><samp class="xlxnss">返回</samp></div></a>
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
        <td width="396" align="left"><span id="dlnzhti" style="font-family:'微软雅黑';">温馨提示:</span></td>
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
         <span class="svege" style="font-family:'微软雅黑'; font-size:15px; color: red;">注意,该订单发起之后!系统将自动婉拒该任务下其他参与竞标的人员!</span>
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
