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
            <input id="reges_inp" class="reg_uname" type="text" name="uskncl" maxlength="18"/></td>
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
CVF网（以下简称"本网站"）依据《CVF网服务协议》（以下简称"本协议"）的规定提供服务，本协议具有合同效力。注册会员时，请您认真阅读本协议，审阅并接受或不接受本协议（未成年人应在法定监护人陪同下审阅）。
    若您已经注册为本网站会员，即表示您已充分阅读、理解并同意自己与本网站订立本协议，且您自愿接受本协议的条款约束。本网站有权随时变更本协议并在本网站上予以公告。经修订的条款一经在本网站的公布后，立即自动生效。如您不同意相关变更，必须停止使用本网站。一旦您继续使用本网站，则表示您已接受并自愿遵守经修订后的条款。
第一条  会员资格
只有符合下列条件之一的自然人或法人才能申请成为本网站会员，可以使用本网站的服务。
A、年满十八岁，并具有民事权利能力和民事行为能力的自然人；　　
B、无民事行为能力人或限制民事行为能力人应经过其监护人的同意；
  C、根据所在国法律、法规、行政规章成立并合法存在的机关、企事业单位、社团组织和其他组织。无法人资格的单位或组织不当注册为本网站会员的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该会员，并追究其使用本网站服务的一切法律责任。　　 　　

第二条 会员的权利和义务　
1、会员有权根据本协议及本网站发布的相关规则，利用本网站发布项目信息、查询会员信息、参加任务、参加本网站的有关活动及有权享受本网站提供的其他有关资讯及信息服务。　　 

2、会员须自行负责自己的会员账号和密码，且须对在会员账号密码下发生的所有活动承担责任。会员有权根据需要更改登录和账户提现密码。因会员的过错导致的任何损失由会员自行承担，该过错包括但不限于：不按照交易提示操作，未及时进行交易操作，遗忘或泄漏密码，密码被他人破解，您使用的计算机被他人侵入。 

3、会员应当向本网站提供真实准确的注册信息，包括但不限于真实姓名、电子邮箱、联系电话、支付宝账号、地址、邮政编码等。保证本网站可以通过上述联系方式与自己进行联系。同时，会员也应当在相关资料实际变更时及时更新有关注册资料。　　

4、会员不得以任何形式擅自转让或授权他人使用自己在本网站的会员帐号。　　 

5、会员有义务确保在本网站上发布所有信息真实、准确，无误导性。　　

6、会员在本网站网上发布信息，不得发布国家法律、法规、行政规章规定禁止的信息、侵犯他人知识产权或其他合法权益的信息、违背社会公共利益或公共道德的信息。　　

7、会员在本网站交易中应当遵守诚实信用原则，不得以干预或操纵发布任务等不正当竞争方式扰乱网上交易秩序，不得从事与网上交易无关的不当行为，不得在交易平台上发布任何违法信息。　　

8、会员不应采取不正当手段（包括但不限于虚假任务、互换好评等方式）提高自身或他人信用度，或采用不正当手段恶意评价其他会员，降低其他会员信用度。 

9、会员承诺自己在使用本网站实施的所有行为遵守法律、法规、行政规章和本网站的相关规定以及各种社会公共利益或公共道德。如有违反导致任何法律后果的发生，会员将以自己的名义独立承担相应的法律责任。　　 

10、会员在本网站网上交易过程中如与其他会员因交易产生纠纷，可以请求本网站从中予以协调处理。会员如发现其他会员有违法或违反本协议的行为，可以向本网站举报。

11、会员应当自行承担因交易产生或取得的相关费用，并依法纳税。　　

12、未经本网站书面允许，会员不得将本网站的任何资料作商业性利用（包括但不限于以复制、修改、翻译等形式制作衍生作品、分发或公开展示）。　　

13、会员不得使用以下方式登录网站或破坏网站所提供的服务：
A、以任何机器人软件、蜘蛛软件、爬虫软件、刷屏软件或其它自动方式访问或登录本网站；
B、通过任何方式对本网站造成或可能造成不合理或不合比例的重大负荷的行为；
C、通过任何方式干扰或试图干扰网站的正常工作或网站上进行的任何活动；
</textarea>
     </div>
     <div class="theme-poptit" style=" width:660px; height:40px; border:0px solid red;"><a style=" margin-right:270px;" href="javascript:;" title="关闭" class="close">同意了协议才能注册</a></div>
</div>
<div class="theme-popover-mask"></div> 




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
   
  </body>
</html>
