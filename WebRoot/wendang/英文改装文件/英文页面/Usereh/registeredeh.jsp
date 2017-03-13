<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
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
<script type="text/javascript" src="js/biaodanyanzen.js"></script>
<link rel="stylesheet" href="css/tanchu.css" type="text/css"></link>
<link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>

  </head>
<script type="text/javascript">

function changeValidateCode(obj) {
		//获取当前的时间作为参数，无具体意义 
		var timenow = new Date().getTime();
		//每次请求需要一个不同的参数，否则可能会返回同样的验证码
		//这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。 
		obj.src = "random.action?d=" + timenow;
	}
	function check() {
		var msg = document.getElementById("msg").value;
		if (msg.length != 0) {
			alert(msg);
			document.getElementById("msg").value = "";
		}
	}
jQuery(document).ready(function($) {
	$('.theme-login').click(function(){
		$('.theme-popover-mask').fadeIn(700);
		$('.theme-popover').fadeIn(700);
	});
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(700);
		$('.theme-popover').fadeOut(700);
	});

});


</script>

  <body>
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
<!-- 导航端--------------------- -->     
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





<!-- 导航端--------------------- -->
<div id="regis_haed" style="border:1px solid #ccc; height: 600px;">
 
<!--功能导航段-->  
<div id="reges_gndh">
   <div id="reges_dh1"><h3 id="reges_h3">账户中心</h3></div>
   <div id="reges_dh2">
      <ul id="reges_ul">
         <a class="rets_hra" href="javascript:;"><li class="regs_li beijignsy">账户注册</li></a>
         <a class="rets_hra" href="indexpage!Retrievepassword"><li class="regs_li">找回密码</li></a>
         <!-- <a class="rets_hra" href="javascript:;"><li class="regs_li">安全中心</li></a> -->
        <!--  <a class="rets_hra" href="javascript:;"><li class="regs_li">联系客服</li></a> -->
      </ul>
   </div>
   <div id="reges_dh3"></div>
</div>
<!--功能导航段-->

<!--功能切换段-->

<!--个人登陆------------------------------->
<div id="reges_qhd1">
    <div id="reges_ztxin1">
      <table width="1000" border="0">
        <tr>
          <td width="207" height="68" align="right" valign="bottom"><img src="images/cccc.png" width="117" height="59" /></td>
          <td width="777" align="left" valign="bottom" style="font-weight:600; color:#660;">用户注册</td>
        </tr>
      </table>
    </div>
    <div id="reges_ztxin2" style="border: 0px;margin-top: 30px;">
      <form id="regesfrom" name="form1" method="post" action="loginUsers!regesrUser.action">
        <table width="975" height="370" border="0">
          <tr>
            <td width="192" id="td_ing" align="right">*角色选择：</td>
            <td width="207"><label for="textfield"></label>
              <label  for="select"></label>
              <select id="reges_inp" class="regs_js"  name="yhleixin">
              <option value="1">请选择</option>
               <s:iterator value="listdtype" id="listdtype" status="idssx">
              <option id="ssidxx" value="<s:property value="#listdtype.did"/>"><s:property value="#listdtype.dtypeName"/></option>             
               </s:iterator>
            </select>
            </td>
            <td id="gets_ts" width="554"><span id="regesjs1">*此项为必选项！</span></td>
          </tr>
          <tr>
            <td width="192" id="td_ing" align="right">*用户名：</td>
            <td width="207"><label for="textfield"></label>
            <input id="reges_inp" class="reg_uname" type="text" name="uskncl"/></td>
            <td id="gets_ts" width="554"><span id="regesjs2">*用户名为必填项，用来登陆使用！</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*Email地址：</td>
            <td><label for="textfield2"></label>
            <input id="reges_inp" class="u_email" type="text" name="fvssr"/></td>
            <td id="gets_ts"><span id="regesjs3">*此邮箱将是您找回密码的验证方式，请认真填写！</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*密码：</td>
            <td><label for="textfield3"></label>
            <input id="reges_inp" class="u_pawd" type="password" name="upassword"/></td>
            <td id="gets_ts"><span id="regesjs4">*用户名可由大小写英文字母、数字组成，长度为8-18个字符！</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*确认密码：</td>
            <td><label for="textfield4"></label>
            <input id="reges_inp" class="u_pwdqr" type="password" name="textfield4" /></td>
            <td id="gets_ts"><span id="regesjs5">*再次确认密码，可帮您提高对密码记忆！</span></td>
          </tr>
          <tr>
            <td height="54" colspan="3" align="left"><label for="textfield5"></label>
              <table width="912" border="0">
                <tr>
                  <td width="161" height="40" id="td_ing" align="right">*验证码：</td>
                  <td width="100"><input id="reges_inp3" class="yam_cc" type="text" name="zcyzm" maxlength="5"/></td>
                  <td width="101">
                     <img style="width: 95px;height: 28px;" src="random.action"
				onclick="changeValidateCode(this)"
				title="点击图片刷新验证码"/>     
                  </td>
                  <td id="gets_ts" width="522"><span id="regesjs6"></span></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="73" colspan="3" align="left"><table width="935" height="69" border="0">
              <tr>
                <td width="310" id="td_ing" align="right"><a href="javaScript:;" id="mydiaji" class="theme-login" style="color:#660;  text-decoration:none; font-size: 15px;">《CVF配音网站协议》</a></td>
                <td width="66"><input style="width:50px; height:20px; border:1px solid #660;" type="checkbox" name="checkbox" id="checkboxf" /></td>
                <td width="537" id="gets_ts"><span id="regesjs7"></span></td>
              </tr>
              <tr>
                <td colspan="2" align="right" valign="middle"><input type="submit" name="button" id="retgs_c" value="提交注册" />&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table>
      </form> 
    </div>
</div>
<!--个人登陆--------------------------------->
<!-- 找回密码进行选择 -->

<!-- 找回密码进行选择 -->
<!--功能切换段-->

</div>
 
 
<!-- 弹出层 -->
<div class="theme-popover">
     <div class="theme-poptit">        
          <h3 style="margin-left:280px;">CVF配音网站协议</h3>
     </div>
     <div class="theme-popbod dform" style=" border:0px solid red;">
       <textarea style="resize:none; width:625px; height:265px; position:absolute; top:45px; left:15px;" name="" cols="" rows="">一、本站服务条款的确认和接纳
本站的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。用户同意所有服务条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的约定，除非违反国家强制性法律，否则始终有效。在下订单的同时，您也同时承认了您拥有购买这些产品的权利能力和行为能力，并且将您对您在订单中提供的所有信息的真实性负责。

二、服务简介
本站运用自己的操作系统通过国际互联网络为用户提供网络服务。同时，用户必须：

(1)自行配备上网的所需设备，包括个人电脑、调制解调器或其它必备上网装置。
(2)自行负担个人上网所支付的与此服务有关的电话费用、网络费用。
基于本站所提供的网络服务的重要性，用户应同意

(1)提供详尽、准确的个人资料。
(2)不断更新注册资料，符合及时、详尽、准确的要求。
本站不公开用户的姓名、地址、电子邮箱和笔名，除以下情况外：

(1)用户授权本站透露这些信息。
(2)相应的法律及程序要求本站提供用户的个人资料。
三、价格和数量
本站将尽最大努力保证您所购商品与网站上公布的价格一致。

产品的价格和可获性都在本站上指明，这类信息将随时更改。

您所订购的商品，如果发生缺货，您有权取消定单。

四、送货及费用
本站将会把产品送到您所指定的送货地址。所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。送货费用根据您选择的配送方式的不同而异。

请清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，本站将不迟延配送的责任：

(1)客户提供错误信息和不详细的地址；
(2)货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果。
(3)不可抗力，例如：自然灾害、交通戒严、突发战争等。
五、服务条款的修改
本站将可能不定期的修改本用户协议的有关条款，一旦条款及服务内容产生变动，本站将会在重要页面上提示修改内容。

六、用户隐私制度
尊重用户个人隐私是本站的一项基本政策。所以，作为对以上第二点人注册资料分析的补充，本站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本站中的非公开内容，除非有法律许可要求或本站在诚信的基础上认为透露这些信件在以下四种情况是必要的。

七、用户的帐号，密码和安全性
用户一旦注册成功，成为本站的合法用户，将得到一个密码和用户名。您可随时根据指示改变您的密码。用户需谨慎合理的保存、使用用户名和密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通知本站和向公安机关报案。

八、对用户信息的存储和限制
本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违背了国家法律法规规定或服务条款的规定，本站有中断对其提供网络服务的权利。

九、用户管理
用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律和国际法律标准的。用户必须遵循：

(1)从中国境内向外传输技术性资料时必须符合中国有关法规。
(2)使用网络服务不作非法用途。
(3)不干扰或混乱网络服务。
(4)遵守所有使用网络服务的网络协议、规定、程序和惯例。
用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。

若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户违反法律的证据。

十、通告
所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。用户协议条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。

十一、参与广告策划
用户在他们发表的信息中加入宣传资料或参与广告策划，在本站的免费服务上展示他们的产品，任何这类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是在相应的用户和广告销售商之间发生。

十二、网络服务内容的所有权
本站定义的网络服务内容包括：文字、软件、声音、图片、录象、图表、广告中的全部内容；电子邮件的全部内容；本站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。

十三、责任限制
如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。</textarea>
     </div>
     <div class="theme-poptit" style=" width:660px; height:40px; border:0px solid red;"><a style=" margin-right:270px;" href="javascript:;" title="关闭" class="close">同意了协议才能注册</a></div>
</div>
<div class="theme-popover-mask"></div> 




<!-- d1 -->
		<div id="haed_dibu_cctts">


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
   
  </body>
</html>
