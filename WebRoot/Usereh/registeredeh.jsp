<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>User registration</title>
    
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
<script type="text/javascript" src="js/biaodanyanzenEH.js"></script>
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
		
<div id="regis_haed" style="border:1px solid #ccc; height: 600px;">
 
<!--功能导航段-->  
<div id="reges_gndh">
   <div id="reges_dh1"><h3 id="reges_h3">ACCOUNT CENTER</h3></div>
   <div id="reges_dh2">
      <ul id="reges_ul">
         <a class="rets_hra" href="javascript:;"><li class="regs_li beijignsy">Sign Up</li></a>
         <a class="rets_hra" href="ehindexpage!RetrievepasswordEh"><li class="regs_li" style="width: 190px;">Password Recovery</li></a>
         <!-- <a class="rets_hra" href="javascript:;"><li class="regs_li">安全中心</li></a> -->
        <!--  <a class="rets_hra" href="javascript:;"><li class="regs_li">联系客服</li></a> -->
      </ul>
   </div>
   <div id="reges_dh3"></div>
</div>
<!--功能导航段-->

<!--功能切换段-->

<!--个人登陆----------------------------- -->
<div id="reges_qhd1">
    <div id="reges_ztxin1">
      <table width="1000" border="0">
        <tr>
          <td width="207" height="68" align="right" valign="bottom"><img src="images/cccc.png" width="117" height="59" /></td>
          <td width="777" align="left" valign="bottom" style="font-weight:600; color:#660;">User Registration</td>
        </tr>
      </table>
    </div>
    <div id="reges_ztxin2" style="border: 0px;margin-top: 30px;">
      <form id="regesfrom" name="form1" method="post" action="ehloginUserehs!regesrUserEh.action">
        <table width="975" height="370" border="0">
          <tr>
            <td width="192" id="td_ing" align="right">*Account Type：</td>
            <td width="207"><label for="textfield"></label>
              <label  for="select"></label>
              <select id="reges_inp" class="regs_js"  name="yhleixin">
              <!-- <option value="1">Please Select</option> -->
	               <s:iterator value="listdtype" id="listdtype" status="idssx">
	                   <s:if test="#listdtype.did=='gseaeffasdasc'">
		                    <option id="ssidxx" value="<s:property value="#listdtype.did"/>">
		                           <s:property value="#listdtype.dts"/>
		                    </option>   
	                    </s:if>     
	               </s:iterator>
            </select>
            </td>
            <td id="gets_ts" width="554"><span id="regesjs1">*Pls select your account type!</span></td>
          </tr>
          <tr>
            <td width="192" id="td_ing" align="right">*User Name：</td>
            <td width="207"><label for="textfield"></label>
            <input id="reges_inp" class="reg_uname" type="text" name="uskncl"/></td>
            <td id="gets_ts" width="554"><span id="regesjs2">*User name is used to login！</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*Email：</td>
            <td><label for="textfield2"></label>
            <input id="reges_inp" class="u_email" type="text" name="fvssr"/></td>
            <td id="gets_ts"><span id="regesjs3">*This field is required!</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*Password：</td>
            <td><label for="textfield3"></label>
            <input id="reges_inp" class="u_pawd" type="password" name="upassword"/></td>
            <td id="gets_ts"><span id="regesjs4">*User name can be in English and Chinese letters, numbers, with a length of 8-18 characters！</span></td>
          </tr>
          <tr>
            <td id="td_ing" align="right">*Confirm Password：</td>
            <td><label for="textfield4"></label>
            <input id="reges_inp" class="u_pwdqr" type="password" name="textfield4" /></td>
            <td id="gets_ts"><span id="regesjs5">*Pls confirm your password set above！</span></td>
          </tr>
          <tr>
            <td height="54" colspan="3" align="left"><label for="textfield5"></label>
              <table width="912" border="0">
                <tr>
                  <td width="161" height="40" id="td_ing" align="right">*Verification Code：</td>
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
                <td width="310" id="td_ing" align="right"><a href="javaScript:;" id="mydiaji" class="theme-login" style="color:#660;  text-decoration:none; font-size: 15px;">《CVF Website Protocol》</a></td>
                <td width="150"><input style="width:50px; height:20px; border:1px solid #660;" type="checkbox" name="checkbox" id="checkboxf" />I agree</td>
                <td width="537" id="gets_ts"><span id="regesjs7"></span></td>
              </tr>
              <tr>
                <td colspan="2" align="right" valign="middle"><input type="submit" name="button" id="retgs_c" value="Submit" />&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table>
      </form> 
    </div>
</div>
<!--个人登陆------------------------------- -->
<!-- 找回密码进行选择 -->

<!-- 找回密码进行选择 -->
<!--功能切换段-->

</div>
 
 
<!-- 弹出层 -->
<div class="theme-popover">
     <div class="theme-poptit">        
          <h3 style="margin-left:280px;">CVF Website Protocol</h3>
     </div>
     <div class="theme-popbod dform" style=" border:0px solid red;">
       <textarea style="resize:none; width:625px; height:265px; position:absolute; top:45px; left:15px;" name="" cols="" rows="">The following Terms of Service and any guideline, policy or content displayed on the Website, are a legally binding contractual agreement between you (“User, “you,” “your”) and chinesevoiceoverfreelancers.com (“CVF.com,” “we,” “us”) (hereinafter collectively referred to as the “Terms of Service”).  
By visiting or using the services available from the domain and sub-domains of CVF.com (the “Website”), you agree to be legally bound by these Terms of Service. We reserve the right to revise these Terms of Service and all linked information from time to time in our sole discretion by updating this posting or any linked information. Unless otherwise provided in such revision, the revised terms will take effect when they are posted.
1.
OVERVIEW AND DEFINITIONS
2.
CVF.com is an online marketplace that enables buyers of professional voice over services (“Employers”) to search for, enter into and manage transactions with providers of professional voice over services (“Freelancers” and, collectively with Employers, “Registered Users”).  The Website contains features that enable Freelancers and Employers to do, among other things, the following:
3.
Employers(or Voice Seekers):Create profiles, post projects, search for Freelancers, communicate with Freelancers,negotiate with Freelancers, award projects to Freelancers, manage projects, leave feedback for Freelancers, and pay Freelancers.
4.
Freelancers (or Voice Talents): Create profiles, advertise capabilities, submit quotes, negotiate with Employers, obtain project awards, obtain feedback from Employers, and receive payment from Employers.
5.
We also provide Registered Users with certain services described in, and subject to, these Terms of Service (as further defined below, the “Services”). We may add, delete or modify some or all of such Services at any time at our sole discretion with reasonable notice posted in advance on the Website. Capitalized terms used in these Terms of Service have the following meanings:

6.
“Account” means the account created by the Website upon registration.
7.
“Assumed Payment Liabilities” shall mean that portion of a Freelancer’s total service charges for a Project which CVF.com agrees to assume in consideration of the Service Charges.
8.
“Dispute Resolution Service” means the service described in Section 6.
9.
“Employer’s Acceptance of Services” shall mean: (i) with respect to an Invoice, a transfer of funds by Employer to CVF.com in respect of such Invoice or (ii) with respect to the Paypal Pay Service, the earlier to occur of the following: (a) Employer and the Freelancer agree as to the rightful recipient of the funds or (b) Employer and Freelancer have concluded the process comprising the Dispute Resolution Service.
10.
“Payment Services” means the Paypal Pay Service.
11.
12.
“Service Charges” means, as applicable, the Project Fee, Employer Payment Processing Fee, the Freelancer Transfer Method Fee and the Dispute Resolution Service Fee.
13.
“Services” means, collectively, the CVF Billing and Payment Service, the Dispute Resolution Service.
14.
“Website” means the world wide web site operated by CVF.com at http://www.chinesevoiceoverfreelancers.com or any replacement URL.
15.
16.
REGISTRATION
17.
A. Eligibility. To access our Services through our Website, you must be a legal entity, or an individual of eighteen (18) years of age or older who can form legally binding contracts. To become a Registered User, you must accept all of the terms and conditions in, incorporated by reference in, and linked to, these Terms of Service. By becoming a Registered User, you agree to: (1) abide by the Terms of Service and the processes, procedures, and guidelines described throughout the Website; (2) be financially responsible for your use of the Website and the purchase or delivery of services; and (3) perform your obligations as specified by any Project Agreement that you accept, unless such obligations are prohibited by law or by the Terms of Service. CVF.com reserves the right, in its sole discretion, to refuse, suspend, or terminate Services to anyone.
18.
B. Registration. To become a Registered User and to access Services you must register for an Account. You agree to provide true, accurate and complete information as prompted by the registration form and all forms you access on the Website, and to update this information to maintain its truthfulness, accuracy and completeness.
19.
C.  Accounts and Profiles.
20.
General. Once you have registered with the Website as a Registered User, the Website will create your Account with CVF.com and associate it with an account number. You may create a profile under your Account, in accordance with Section 2(D).
Username and Password. During registration, you will be asked to choose a username and password for the Account. As a Registered User, you agree and you are entirely responsible to safeguard and maintain the confidentiality of the username and password you use to access this Website. You authorize CVF.com to assume that any person using the Website with your username and password is you or is authorized to act for you. You agree to notify us immediately if you suspect any unauthorized use of the Account.
21.
D. Membership. CVF.com provides Registered Users several different free membership options. The availability of these membership options is dependent upon (i) the Registered User’s status as an Employer or a Freelancer (ii) the selections made during registration, (iii) any subsequent upgrades or downgrades of membership options after registration.
22.
Employers. All Employers have the free membership benefits.
23.
Freelancers. All Freelancers have the free membership benefits.

24.
We reserve the right to decide whether membership are free or not at any time, at the sole discretion of CVF.com and upon reasonable notice posted in advance on the Website. No refunds of membership fees already paid will be given. If we exercise our right to cancel a membership as provided under these Terms of Service, at any time, we will not refund the membership fee already paid.
25.
26.
RELATIONSHIPS
27.
A.  Employer and Freelancer.
28.
1. Project Agreement. The engagement, contracting and management of a project are between an Employer and a Freelancer. Upon acceptance of a quote, the Employer agrees to purchase, and the Freelancer agrees to deliver, the services and related deliverables in accordance with the following agreements: (a) the agreement between Employer and Freelancer including the Project Bid, Project Description, and other terms and conditions as communicated between Employer and Freelancer on the Website or otherwise, (b) these Terms of Service, and (c) any other content uploaded to the Website by CVF.com (collectively, the “Project Agreement”). You agree not to enter into any contractual provisions in conflict with these Terms of Service. Any provision of a Project Agreement in conflict with these Terms of Service is void. Employer is responsible for managing, inspecting, accepting and paying for satisfactory services and deliverables in accordance with the Project Agreement in a timely manner. Freelancer is responsible for the performance and quality of the services in accordance with the Project Agreement in a timely manner. Employer and Freelancer each covenants and agrees to act with good faith and fair dealing in performance of the Project Agreement.
29.
2. Independence. Employer and Freelancer each acknowledges and agrees that their relationship is that of independent contractors. The Freelancer shall perform services as an independent contractor and nothing in these Terms of Service shall be deemed to create a partnership, joint venture, agency, or employer-employee relationship between Freelancer and Employer or between CVF.com and any Employer or Freelancer.
30.
B. Registered Users and CVF.com
31.
1. General. CVF.com is not a party to the dealing, contracting and fulfillment of any Project between an Employer and a Freelancer. CVF.com has no control over and does not guarantee the quality, safety or legality of any services performed or deliverables created, advertised, the truth or accuracy of project listings, the qualifications, background, or abilities of Registered Users, the ability of Freelancers to perform services, the ability of Employers to pay for services, or that an Employer or Freelancer can or will actually complete a Project. CVF.com is not responsible for and will not control the manner in which a Freelancer operates and is not involved in the hiring, firing, discipline or working conditions of the Freelancer. All rights and obligations for the purchase and sale of services or other deliverables are solely between an Employer and a Freelancer. CVF.com will not provide any Freelancer with any materials or tools to complete any Project. Employers and Freelancers must look solely to the other for enforcement and performance of all the rights and obligations arising from Project Agreements and any other terms, conditions, representations, or warranties associated with such dealings.
32.
2. Third-Party Beneficiary of Project Agreement. Employer and Freelancer each acknowledges and agrees that the value, reputation, and goodwill of the Website depend on their performance of their covenants and agreements as set forth in their Project Agreement. Employer and Freelancer therefore appoint CVF.com as a third-party beneficiary of their Project Agreement for purposes of enforcing the obligations owed to, and the benefits conferred on, CVF.com by these Terms of Service. Employers and Freelancers further agree that CVF.com has the right to take such actions with respect to the Project Agreement or their Accounts, including without limitation, suspension, termination, or any other legal actions, as CVF.com in its sole discretion deems necessary to protect the value, reputation, and goodwill of the Website.
33.
3. Agency. These Terms of Service and any registration for or subsequent use of this Website by any user or Registered User will not be construed as creating or implying any relationship of agency, franchise, partnership or joint venture between you and CVF.com, except and solely to the extent expressly stated.
34.
4. Taxes. Registered Users are responsible for payment and reporting of any taxes. CVF.com is not obligated to determine the applicability of any taxes or to remit, collect or report any such applicable taxes. You agree that you will abide by any and all applicable state and federal tax statutes, regulations and common law. In the event CVF.com receives a notice of non-compliance with any such statute, regulation or common law, including, without limitation, an Internal Revenue Service Levy, CVF.com will deem such receipt a breach of this section and will suspend your Account until CVF.com received an Internal Revenue Service Release.
35.
36.
CVF.COM FEES
37.
A. Membership Fee. Freelancers can enjoy free membership programs on the Website.
38.
B. Services Fees. CVF.com deducts the following fee from payments made by Employers to Freelancers.
39.
Project Fee. CVF.com charges all Freelancers a Project Fee. The fee is deducted from the total amount paid by an Employer for a Project.
40.
Currently, the project Fee is set to be 15% of the the total amount paid by an Employer for a Project. We reserve the right to change the project fee at any time, at the sole discretion of CVF.com and upon reasonable notice posted in advance on the Website. 

41.
42.
43.
44.
Paypal Pay Service. The Paypal Pay Service enables Employers to transfer certain payment responsibilities to CVF.com.
45.
1. General. At an Employer’s request, upon payment to CVF.com by Employer for services to be rendered by a Freelancer, CVF.com will assume responsibility for the payment for such Freelancer’s services (less applicable Service Charge). CVF.com agrees not to pay Freelancers for services until after the occurrence of an Employer’s Acceptance of Services. You acknowledge that such funds will belong to CVF.com immediately upon such funds being transferred to CVF.com by you. However, CVF.com agrees to refund such funds to Employer in the event that (y) a Freelancer acknowledges that services have not been completed or (z) Employer and Freelancer have concluded the process comprising the Dispute Resolution Service with a result indicating that Employer is the rightful recipient of such funds. CVF.com agrees to keep both Employer and Freelancer informed as to the status of the Assumed Payment Liability and if, for any reason, a party requests Dispute Resolution Service regarding such status, will notify both parties that the matter will be addressed through the Dispute Resolution Service.
46.
2. Paypal Pay Disputes. If an Employer or Freelancer reasonably disputes the quality or completion of services provided by such Freelancer, then both Employer and Freelancer agree that CVF.com shall have no payment obligations to any party related to relevant fees until such dispute is resolved in accordance with Section 6 below. CVF.com’s obligation to pay any Payment (less applicable Service Charge) is expressly conditioned upon resolution of all outstanding disputes with respect to such Payment.
47.
C. Funds Transfer.
48.
1. General.To receive funds due to you, you must request such funds and indicate your selection of the funds transfer methods available on the Website. Any such requests shall be subject to the conditions and restrictions contained on the Website and in these Terms of Service. Notwithstanding any other provision of these Terms of Service, if CVF.com determines in its sole discretion that a Registered User has violated the conditions and restrictions of the Website or Terms of Service, CVF.com has the right to refuse to process such request.
49.
2. Hold on Transfers. CVF.com reserves the right, at its sole discretion, to place a hold on requested transfers if CVF.com suspects monies may be subject to charge back, bank reversal, failure to clear or fraud. CVF.com will release a hold as soon as practical.
50.
D. Legal Relationship.
51.
1. CVF.com is not your agent with respect to any funds that have been transferred to CVF.com for any Assumed Payment Liabilities.
2. Each Freelancer must properly discharge and credit Employers for all payments that CVF.com makes to such Freelancer in respect of services provided to such Employers.
3. CVF.com is not responsible in any way for the timeliness or accuracy of the invoices or the timeliness, accuracy, completion or workmanship of any work product produced by a Freelancer as a result of an awarded Project. Nothing in these Terms of Service will be deemed to constitute CVF.com as your agent with respect to any service purchased and sold by Registered Users through the Website, or expand or modify any warranty, liability or indemnity stated in these Terms of Service.
4. By using the CVF Billing and Payment Services, you expressly acknowledge that (a) CVF.com is not acting as a trustee or a fiduciary of Employers or Freelancers and that the CVF Billing and Payment Services are provided to Registered Users administratively; (b) CVF.com is not a “financial institution” as defined under the Bank Secrecy Act (BSA) and the CVF Billing and Payment Services are payment services rather than a banking services; (c) CVF.COM IS NOT A BANK AND ANY PAYMENTS TRANSFERRED THROUGH CVF.COM ARE NOT INSURED DEPOSITS AND ARE SUBJECT TO DEFAULT, LOSS OR FORFEITURE.
52.
E. Miscellaneous Payment Terms.
53.
1. Authorized Payments are Final. Your use of the CVF Billing and Payment Services constitutes your agreement to pay for any amounts which you authorize us to retain from your PayPal account. Such payments, once authorized, are final. When an Employer’s Acceptance of Services has occurred, (i) CVF.com shall have no further liability to any party with respect to Payment for such services, (ii) Employer acknowledges that CVF.com has provided a complete service in respect of the payment made by Employer for the Assumed Payment Liability or Invoice, as applicable and (iii) Employer hereby releases CVF.com from any and all liability with respect to such Payment.
54.
2. Fraudulent Transactions; Erroneous or Duplicate Transactions; Charge Backs. CVF.com reserves the right to seek reimbursement from you, and you will reimburse CVF.com, if CVF.com discovers a fraudulent transaction, erroneous or duplicate transaction, or if CVF.com receives a charge back or reversal from any Employer’s credit card company, bank, or PayPal for any reason.  You agree to and acknowledge CVF.com’s right to investigate any and all transactions for fraud.  Further, you agree to cooperate with any reasonable requests made by CVF.com in an effort to investigate fraud. You agree that CVF.com has the right to obtain such reimbursement by charging your Account, deducting amounts from future transfers, charging your credit card or any bank account associated with your Account, or obtaining reimbursement from you by any other lawful means, including using a third party collection agency. Failure to pay for reimbursements of a charge back or a reversal of payment is cause for termination of your Account.
55.
3. Currency. The CVF Billing and Payment Services operate in US Dollars and therefore CVF.com is not responsible for currency fluctuations that occur when billing or crediting a credit or debit card denominated in a currency other than US Dollars, nor is CVF.com responsible for currency fluctuations that occur when receiving or sending payment via wire transfer, check or automated clearinghouse to and from your bank account, credit card account or PayPal account.
56.
4. Exclusivity and Non-Circumvention. Employers agree to use the CVF Billing and Payment Services to make all payments to Freelancers, whether first-time, repeat, or follow-on. You also agree not to take any action directly or indirectly to circumvent the CVF Billing and Payment Services or any associated fees. As a Freelancer, you agree to use CVF Billing and Payment Services to receive all payments from Employers identified through the Website, whether first-time, repeat, or follow-on. Additionally, you agree not to circumvent the CVF Billing and Payment Services or any associated fees.
57.
5. Notification. As an Employer, you agree to notify CVF.com immediately if your Freelancer solicits payment from you outside the Website. As a Freelancer, you agree to notify CVF.com immediately if your Employer seeks to pay you outside the Website. If you are aware of a breach of the foregoing prohibitions, or any potential circumvention of the CVF Billing and Payment Services, please submit a confidential report to CVF.com by phone at (86)173 167 80 906 or email tribalgod@163.com.
58.
6. Agreement to Pay. If, for any reason, CVF.com does not receive payment for any amounts that you have authorized to be paid through your use of the CVF Billing and Payment Services, you agree to pay such amount immediately upon demand by CVF.com. You also agree to pay any interest charges, attorneys’ fees and other costs of collection incurred by CVF.com in collecting from you the authorized but unpaid amount. In such case, CVF.com may, at its option, stop processing any further payments made by you and apply any amounts then held by CVF.com on your behalf toward any deficiencies, losses or costs that we have incurred as a result of your use of the CVF Billing and Payment Services. We may also make appropriate reports to credit reporting agencies, financial institutions, tax agencies and law enforcement authorities, and cooperate with them in any resulting investigation or prosecution.
59.
60.
DISPUTE SERVICES
61.
A. Eligibility. CVF.com offers the Dispute Resolution Service to those Registered Users that have requested CVF.com to assume all or a portion of the payment liability for services and who are engaged in a dispute over a Project that is (i) pursuant to a project posting by an Employer through the Website, (ii) pursuant to a bid for by a Freelancer through the Website for such job posting and (iii) pursuant to an acceptance through the Website by the Employer for such bid.  Employer and Freelancer agree and acknowledge that, with respect to Assumed Payment Liabilities, any and all disputes relating to the underlying fees shall be governed by the terms of this Section 6.
62.
B. Process.
63.
1. Negotiation. In any dispute between Registered Users relating to a Project that is eligible for Dispute Resolution Service, you agree to negotiate such dispute in good faith. If the result of such negotiation is acceptable to both parties in a dispute, you agree to indicate your approval of such negotiation through the Website and CVF.com will disburse funds in accordance with the results of such negotiation. If you are dissatisfied with the progress, you agree to submit your dispute to binding arbitration as further set forth below.
64.
2. Arbitration. In any dispute between an Employer and a Freelancer which cannot be resolved through negotiation, you expressly agree to and acknowledge that CVF.com or a third party chosen by CVF.com will arbitrate the dispute in accordance with these Terms of Service and the Website.
65.
(a) You acknowledge and agree that CVF.com will construe any Project Agreement based on the transaction’s course of dealing and common industry practices. Specifically, in rendering its decision, the arbitrator shall only be obligated to consider the following: (i) the Project Agreement, (ii) the parties’ course of dealings, as evidenced by activity on or communications through the Website, (iii) the Project itself and (iv) any information or communication that the Employer and the Freelancer agree should be considered.(b) CVF.com shall render its decision within five (5) business days of escalation. During this time, you are encouraged to continue to negotiate an amicable settlement with the Freelancer with which you are engaged in a dispute.(c) You agree that the decision of CVF.com, acting as an arbitrator, shall be final, binding, and not subject to appeal. Accordingly, within a reasonable time after we have rendered a decision, we will transfer funds in accordance with the arbitrator’s decision.(d) In the event that you are the prevailing party in its arbitration decision, you agree that you shall have no right, title to, interest in or license to the Project that is the subject matter of the dispute. In such case, you agree to return any physical copies of such Project in your possession and destroy any electronic copies that you have.
66.
C. Communication. You agree and acknowledge that (1) CVF.com will use the e-mail address corresponding with your Account registered at the time a dispute arises to notify and communicate with you with regard to any dispute and (2) you are solely responsible for the receipt of any notification or communication sent by CVF.com using the e-mail address corresponding with your Account registered at the time a dispute arises.
67.
D. Acknowledgements. You agree and acknowledge that (1) CVF.com is not providing legal services to you, (2) CVF.com will not advise you regarding any legal matters and (3) if you desire to have legal counsel, you will seek independent legal counsel licensed to practice law in your jurisdiction and not rely on CVF.com for any such counsel. You agree to indemnify and hold harmless CVF.com and any of our affiliates against any damages or liability you may suffer as a result of using the Dispute Resolution Service. If you do not agree to use this Dispute Resolution Service under these terms, you should not request CVF.com to assume the Assumed Payment Liabilities.
68.
69.
70.
71.
TERM; TERMINATION AND SUSPENSION
72.
A. These Terms of Service shall become effective as your contractual agreement upon your use of the Website, and shall continue until your Account is terminated by you or CVF.com as provided for under the terms of this section.
73.
B. Unless otherwise agreed to in writing between the parties, either party may terminate the contractual agreement represented by these Terms of Service at any time upon notice to the other party. In such event, your Account is automatically terminated and (1) CVF.com shall continue to perform those services necessary to complete any open transaction between you and another Registered User; and (2) you shall continue to be obligated to pay any amounts accrued but unpaid as of the date of termination to CVF.com for any service and to any Freelancer for any services.
74.
C. Any termination of an Account will automatically lead to the termination of all related profiles.
75.
D. Without limiting our other remedies, we may issue a warning, or temporarily suspend, indefinitely suspend or terminate your Account or a Project, and refuse to provide any or all services to you if: (1) you breach the letter or spirit of any terms and conditions of these Terms of Service or the linked policies and information incorporated herein by reference, including our written policies and procedures posted on the Website; (2) we are unable to verify or authenticate any information you provide to us; or (3) we believe in our sole discretion that your actions may cause legal liability for you, our Registered Users or for CVF.com or are contrary to the interests of the Website. Once indefinitely suspended or terminated, you must not continue to use the Website under the same Account, a different Account, or register under a new Account.
76.
E. In addition, violations of these Terms of Service may be prosecuted to the fullest extent of the law and may result in additional penalties and sanctions.
77.
F. Without limiting our other remedies, to the extent you engage in actions or activities which circumvent the CVF Billing and Payment Services or otherwise reduce fees owed CVF.com under these Terms of Service, you must pay CVF.com for all fees owed to CVF.com and reimburse CVF.com for all losses and costs and reasonable expenses (including attorney fees) related to investigating such breach and collecting such fees.
78.
G. When your Account is terminated for any reason, you may no longer have access to data, messages, files and other material you keep on the Website. The material may be deleted along with all your previous posts and proposals.
79.
80.
PRIVACY AND CONFIDENTIALITY.
81.
A. You agree and acknowledge that all trademarks, service marks, logos, names and titles, including, but not limited to, “CVF,” the CVF.com logo, and “CVF.COM” (collectively, the “Marks”) on this Web Site and within the Content are proprietary to CVF.COM and are protected by applicable trademark and copyright law. Nothing on this Web Site should be construed as granting any license or right to use any of the Marks displayed on this Web Site. Any unauthorized use of the Marks or any other Content is strictly prohibited.
You agree and acknowledge that the Marks may not be used in connection with any product or service that does not originate with CVF.COM, in any manner that is likely to cause confusion among users, or in any manner that disparages or discredits CVF.COM.
CVF.COM owns all rights, title and interest in and to the Content, including all copyrights, patents, trade secrets, database rights and other intellectual property associated therewith or appurtenant thereto. All users expressly acknowledge that the Content was created as result of expenditure of substantial time, effort, money, creativity, and other resources, and comprises and constitutes commercially valuable trade secrets proprietary to CVF.COM. All users agree to protect the Content from unauthorized disclosure or access, using measures at least as diligent as those employed by user to protect its own confidential information.
B. Information Collection
CVF.com is an online marketplace that connects businesses with freelancers. When you visit CVF.com you provide two types of information: personal information you knowingly choose to disclose that is collected by CVF.com and Web Site use information collected by CVF.com as you interact with the CVF.com web site (the “Website”).
When you register with CVF.com as a Freelancer or as an Employer, you provide certain personal information, including, your name, your email address and your address. Additionally, when you establish your profile as a Freelancer or as an Employer you will provide information relating to your skills, experience, education level, compensation, work availability, geographic region and self-evaluation. Such information does not identify the specificity of the individual member. Freelancers shall not display their contact information (i.e. name, address, phone number, email address, etc.) to Employers who conduct searches of the CVF.com database.
When you enter the Website, CVF.com collects your IP address. This information is gathered for all CVF.com visitors. In addition, CVF.com stores certain information from your browser using “cookies.” A cookie is a piece of data stored on the user’s computer tied to information about the user. CVF.com uses session ID cookies to confirm that users are logged in. These cookies terminate once the user closes the browser. By default, CVF.com uses a persistent cookie that stores your login ID (but not your password) to make it easier for you to login when you return to the Website. CVF.com members must have cookies enabled on their browser. Note, Cookie preferences are set within each browser’s Internet options/preferences.
If you post a information on a bulletin board, or participate in a public message board, you should be aware that any personally identifiable information you choose to provide there can be read, collected, or used by other users of these forums and could be used to send you unsolicited messages. CVF.com is not responsible for the personally identifiable information you choose to submit in these forums.
CVF.com is the sole owner of the information collected through the Website.
C. Information Use
CVF.com will not sell or rent any collected information to third parties. CVF.com will not share your contact information with other users or third parties except in connection with possible employment and with your express consent. All registered CVF.com members click the “I AGREE” checkbox on the registration form to agree to the CVF.com Privacy Policy and Terms of Service. Accordingly, all registered users agree that certain profile information is accessible to other registered users.
CVF.com records IP addresses for system administration purposes. This information is used to diagnose server problems, monitor traffic patterns, analyze trends, administer the website, track member user patterns, and identify the most popular areas of the website to deliver content most relevant to registered members. IP addresses are not linked to personally identifiable information and are only used to gather broad demographic information for aggregate use, except in the case of fraud.
CVF.com reserves the right to share aggregated demographic information with its partners and/or advertisers, such information will not be linked to personal information that identifies registered users, except in the case of fraud.
82.
83.
INTELLECTUAL PROPERTY.
84.
Registered User Content.
85.
1. You are solely responsible for information posted on our Website, including but not limited to (a) any audio, video or photographic content (collectively, “Multimedia Content”), (b) any posting or listing made in any public message area, through any email feature or through CVF.com’s feedback feature (collectively, “”>Non-Multimedia Content”) and (c) any other content of a personal nature including but not limited to your resume, biography, work history and work product produced for another Registered User including Companies (“Personal Content”). You retain ownership of all Multimedia Content and Personal Content, subject to the licenses granted herein.
2. You hereby assign to CVF.com your rights in any Non-Multimedia Content. You grant us a non-exclusive, worldwide, perpetual, royalty free, irrevocable right to exercise all copyright and publicity rights with respect to the Multimedia Content and to use such Multimedia Content for the purpose of advertising and publicizing CVF.com products and services and you grant us a non-exclusive, worldwide, perpetual, royalty free, irrevocable right to use the Personal Content for the purpose of providing Services.
3. Your information must not: (a) infringe any third party’s rights, including but not limited to intellectual property, publicity or privacy; (b) be defamatory, trade libelous, threatening or harassing; nor (c) be obscene, indecent or contain pornography.
4. We do not endorse any information posted by Registered Users and we are not liable for any such information posted on the Website, including but not limited to any information posted about you. We reserve the right to take any action, in our sole discretion, with respect to information posted on the Website which we believe is inappropriate, including but not limited to termination of your Account. However, we cannot, nor do we, control the information provided by you or other Registered Users or other content providers which is made available through our system.
86.
87.
88.
89.
REPRESENTATIONS, DISCLAIMERS, LIMITATIONS AND EXCLUSIONS
90.
A. Registered User Representations and Warranties. All Registered Users represent, warrant, and agree:
91.
1. not to grant access to an Account only to users authorized to act on behalf of the Registered User and only in accordance with these Terms of Service.
92.
2. to be fully responsible and liable for any action of any user who uses your Account.
93.
3. not to use your Account, username, or password of another Registered User that you are not expressly authorized to use.
94.
4. not to allow any third party who is not authorized to do so to use your Account at any time.
95.
5. not to use any device, software or routine, including but not limited to any viruses, Trojan horses, worms, time bombs, robots or denial-of-service attacks, intended to damage or interfere with the operation of the Website or any transaction being conducted through the Website.
96.
6. not to intercept or expropriate any system, data or personal information from the Website.
97.
7. not to take any action that imposes an unreasonable or disproportionately large load on the Website infrastructure, including but not limited to “spam” or other such unsolicited mass emailing techniques.
98.
8. that it has the right and authority to enter into the Terms of Service and to transact business hereunder.
99.
9. that they are using the Website solely for the purpose of entering into a bona fide business transaction with other Registered Users.
100.
10. that they will not use the Website or its services to defraud or mislead any person or entity, including without limitation CVF.com or any Register User.
101.
11. that they will not use the Website to violate any law or regulation of the People’s Republic of China or any international law or treaty.
102.

103.
104.
B. Warranty Disclaimer. THE SERVICES PROVIDED BY CVF.COM OR OUR THIRD-PARTY SERVICE PROVIDERS ARE PROVIDED “AS IS,” AS AVAILABLE, AND WITHOUT ANY WARRANTIES OR CONDITIONS (EXPRESS OR IMPLIED, INCLUDING THE IMPLIED WARRANTIES OF MERCHANTABILITY, ACCURACY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT, ARISING BY STATUTE OR OTHERWISE IN LAW OR FROM A COURSE OF DEALING OR USAGE OR TRADE). WE MAKE NO REPRESENTATIONS OR WARRANTIES, OF ANY KIND, EITHER EXPRESS OR IMPLIED, AS TO THE QUALITY, IDENTITY OR RELIABILITY OF ANY THIRD PARTY, OR AS TO THE ACCURACY OF THE POSTINGS MADE ON THE WEBSITE BY ANY THIRD PARTY. SOME STATES AND JURISDICTIONS DO NOT ALLOW FOR ALL THE FOREGOING LIMITATIONS ON IMPLIED WARRANTIES, SO TO THAT EXTENT, IF ANY, SOME OR ALL OF THE ABOVE LIMITATIONS MAY NOT APPLY TO YOU.
105.
C. Limitation of Liability. IN NO EVENT SHALL WE OR OUR THIRD-PARTY SERVICE PROVIDERS BE LIABLE TO YOU OR ANY OTHER REGISTERED USER FOR ANY SPECIAL, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES PURSUANT TO THIS AGREEMENT, INCLUDING BUT NOT LIMITED TO, LOSS OF PROFITS, LOSS OF BUSINESS OPPORTUNITIES OR LOSS OF GOODWILL, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. NOTWITHSTANDING ANY OTHER PROVISION OF THIS AGREEMENT, IN NO EVENT WILL OUR LIABILITY TO YOU FOR ANY ACTION OR CLAIM RELATED TO THE WEBSITE SERVICES PROVIDED UNDER THESE TERMS OF SERVICE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE OR ANY OTHER THEORY OF LIABILITY, EXCEED THE GREATER OF: (A) $100 OR (B) THE AGGREGATE AMOUNT OF MONIES ACTUALLY COLLECTED BY US FROM YOU FOR THE SERVICES TO WHICH THE LIABILITY RELATES DURING THE SIX (6) MONTH PERIOD IMMEDIATELY PRECEDING THE DETERMINATION OF SUCH LIABILITY. SOME STATES AND JURISDICTIONS DO NOT ALLOW FOR ALL THE FOREGOING EXCLUSIONS AND LIMITATIONS OF INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO TO THAT EXTENT, IF ANY, SOME OR ALL OF THESE LIMITATIONS AND EXCLUSIONS MAY NOT APPLY TO YOU.
106.
D. Links. The Website may contain links to third-party web sites not under the control or operation of CVF.com. When we provide links, we do so only as a convenience and do not endorse and are not responsible for the content of any linked site or any link contained in a linked site.
107.
H. Data. You are responsible for creation, storage, and backup of your business records. These Terms of Service and any registration for or subsequent use of this Website will not be construed as creating any responsibility on CVF.com’s part to store, backup, retain, or grant access to any information or data for any period.
108.
109.
MISCELLANEOUS TERMS AND CONDITIONS
110.
A. Compliance with Law. You are responsible for compliance with applicable laws of the People’s Republic of China, and international laws, regulation and treaties, keeping in mind that access to the contents of this Website may not be legal for or by certain persons or in certain countries.
111.
B. Modification and Waiver. CVF.com will not be considered to have modified or waived any of our rights or remedies under these Terms of Service unless the modification or waiver is in writing and signed by an authorized representative of CVF.com. No delay or omission by CVF.com in exercising its rights or remedies will impair its rights or be construed as a waiver. Any single or partial exercise of a right or remedy will not preclude further exercise of any other right or remedy.
112.
C. Severability. If any part of these Terms of Service is held to be unenforceable, the unenforceable part will be given effect to the greatest extent possible and the remainder will remain in full force and effect.
113.
D. Assignment or Transfer. You will not transfer, assign or delegate your rights or obligations (including your Account) under these Terms of Service to anyone without the express written permission of CVF.com, and any attempt to do so will be null and void. CVF.com may assign these Terms of Service in its sole discretion.
114.
E. Force Majeure. Except for the payment of fees to CVF.com, neither of the parties to these Terms of Service shall be responsible for the failure to perform or any delay in performance of any obligation hereunder due to labor disturbances, accidents, fires, floods, telecommunications or Internet failures, strikes, wars, riots, rebellions, blockades, acts of government, governmental requirements and regulations or restrictions imposed by law or any other similar conditions beyond the reasonable control of such party. The time for performance of such party shall be extended by the period of such delay.
115.
G. Notice. All notices required or permitted to be given under these Terms of Service, shall be in writing and shall be deemed to have been duly given if delivered personally or sent by pre-paid telex, telefax or telegram, or mailed first-class, postage pre-paid, by registered or certified mail (notices sent by telex or telefax, or telegram, shall be deemed to have been given on the date sent; those mailed shall be deemed to have been given ten (10) business days after mailing) to the addresses set forth below or to such other address as any party shall designate by notice in writing.
116.
117.
I. Integration. These Terms of Service and all documents referenced in these Terms of Service comprise the entire agreement between you and CVF.com with respect to the use of this Website and supersede all prior agreements between the parties regarding the subject matter contained herein as well as any conflicting or inconsistent terms in any Website that link to or are linked from the Website.
</textarea>
     </div>
     <div class="theme-poptit" style=" width:660px; height:40px; border:0px solid red;"><a style=" margin-right:270px;" href="javascript:;" title="关闭" class="close">I Agree</a></div>
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
								© 2015-2020 chinesevoiceoverfreelancers.com. All Rights</span></li>
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
