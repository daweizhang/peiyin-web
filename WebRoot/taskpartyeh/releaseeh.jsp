<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Post a Project</title>
    
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
  
  <script type="text/javascript" src="js/pagenav1.1.cn.js"></script>
  <link rel="stylesheet" href="css/members.css" type="text/css"></link>
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <link rel="stylesheet" href="css/component.css" type="text/css"></link>
  <link rel="stylesheet" href="css-js-file/filecss.css" type="text/css"></link>
  </head>
  <script type="text/javascript">
  
		
$(function(){
	$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
	$("input[type=file]").each(function(){
	if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
	});
});	
  </script>
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
<script type="text/javascript" src="js/indexjsEH.js"></script>
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
   
   </div>
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc; height: 1100px;">
          <div id="rele_fabu1" style="height: 50px;">
              <div id="rele_fbnc1"><img src="images/xie.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2"><h4 id="rele_fndn1">Post a Project</h4><%-- <span style="font-size:14px; color:red; float: left;">Note: improve the information before publishing tasks!</span> --%></div>
          </div>
          <div id="rele_fabu2" style="border:1px solid #ccc; height: 1000px;">
           <form id="rwfehreles" action="ehinsertbtender!insertBtenderEh.action" method="post" enctype="multipart/form-data">
            <c:if test="${inus.iphone==NULL}">
            
                <div style="border:0px solid #ccc; width: 600px; height: 50px; margin-top: 100px; text-align: center;">
                   <div style="border:0px solid red; width: 360px; height: 30px;">
                       <span style="font-size:14px; color:red; width:300px">Profile should be completed before posting a project!</span>
                       <a style="font-size:14px; width:100px; font-weight: bold;text-decoration:underline;" href="ehupUsertion.action">Complete profile now!</a>
                   </div>
                </div>
            
            </c:if>
            <c:if test="${inus.iphone!=NULL}">
            
            <div id="fbrw_addl" >
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Project Title：</span></td>
                       <td width="340"><input id="rwNames" type="text" name="btender.btName" class="fbrw_libit" maxlength="45"></td>
                       <td width="220"><span style="font-size:14px; color: #666;">do not exceed 100 characters!</span></td>
                    </tr>
                 </table>
              </div>
              <!-- <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">要求时长：</span></td>
                       <td width="470" style="font-size: 14px;"><input type="text" name="btender.btimeLength" class="fbrw_libit1">&nbsp;
                          <select class="fbrw_libit2" name="btenderTimedw" style="width: 40px;">
							  <option value="秒">秒</option>
							  <option value="分">分</option>
							  <option value="小时">小时</option>
						  </select>
						  (单位)
						  <span style="font-size:14px; color: #666;">统一按文稿字数配完为止!</span>
                       <td width="120"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div> -->
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Budget：</span></td>
                       <td width="570" style="font-size: 14px;"><input type="text" id="yusuanfeiyong" name="btender.bprice" class="fbrw_libit1" maxlength="12">USD (no less than $50!)</td>
                       <td width="18"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Category：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="rwleixss" class="fbrw_libit2" name="btender.tvoice.tvid" style=" width: 152px;">
							  <option value="0">Please select</option>
							  <c:forEach items="${listTvoc }" var="tisr">
                               <option id="index_in" value="${tisr.tvid}">${tisr.tts }</option>
     	                      </c:forEach>
     	                      
						  </select>
                       
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Language：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="yaluyans" class="fbrw_libit2" name="btender.lgtype.lid" style=" width: 152px;">
							  <option value="0">Please select</option>
							  <c:forEach items="${listlgp}" var="lgsb">
	                          <option id="index_in" value="${lgsb.lid }">${lgsb.lts }</option>
        	                  </c:forEach>
						  </select>
                       
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Talent Gender：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="yqusex" class="fbrw_libit3" name="btender.bsex">
							  <option value="0">Please select</option>
							  <option value="male">male</option>
							  <option value="female">female</option>
							  <option value="Mixed male and female"> male and female</option>
							  <option value="Unlimited">unlimited</option>
						  </select>
                       
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii">Local Accent：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="kouyins" class="fbrw_libit3" name="btender.scrowd.sid">
							<!--    <option value="0">Please select</option> -->
							  <c:forEach items="${listsrd}" var="sosb">
                                 <option id="index_in" value="${sosb.sid }">${sosb.sts}</option>
    	                      </c:forEach>
						  </select>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Audio Format：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="peiywjfge" class="fbrw_libit3" name="btender.bfilegeshi.fid">
							  <!-- <option value="0">Please select</option> -->
							  <c:forEach items="${listf}" var="fx">
                                 <option id="index_in" value="${fx.fid }">${fx.fts }</option>
    	                      </c:forEach>

						  </select>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <input id="yonghudiha" type="hidden" value="${inus.iphone }"> 
               <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii">Speed：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select class="fbrw_libit3" name="btender.bpyyusu.hid">
							  <c:forEach items="${listp}" var="pc">
                                 <option id="index_in" value="${pc.hid }">${pc.hts }</option>
    	                      </c:forEach>
						  </select>
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              
              <div id="fbrw_addl" style="height: 150px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Audition Text：</span></td>
                       <td width="370" style="font-size: 14px;" colspan="2"> 
                       <textarea id="sygaows" class="fbrw_libit4" style="height: 150px;" name="btender.bpygaowen" cols="" rows=""></textarea>
                       </td>
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl" style="height: 60px; margin-top: 5px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="60">
                       <td width="170" align="right"><span style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="fbrw_btii">Background Music：</span></td>
                       <td width="380" style="font-size: 14px;">
								<div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="Local browsing"/>
								 <input id="filewnjs" type="file" name="file" size="30"/>
								</div>                
                       </td>
                       <td width="318"><span id="fff1111ccc" style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl" style="height: 60px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="60">
                       <td width="170" align="right"><span style="color: red;"></span><span class="fbrw_btii">Project Script：</span></td>
                       <td width="340" style="font-size: 14px;">
								<div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="Local browsing"/>
								 <input id="zsgwfile" type="file" name="files1" size="30"/>
								</div>                
                       </td>
                       <td width="318"><span id="fff1111ccc" style="font-size:14px; color: #666;"> </span></td>
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="145" align="right"><span style="color: red;"></span><span class="fbrw_btii">Need Translation?：</span></td>
                       <td width="160" style="font-size: 14px;">
                          <select id="lfwnlsefg" class="fbrw_libit2" name="btender.bsffy" style=" width: 152px;">
							  <option value="0">Please select</option>
                              <option id="index_in" value="205">no</option>
                              <option id="index_in" value="208">yes</option>
						  </select>
                       </td>
                       <td width="428"><span style="font-size:14px; color: #666;">More info about translation, pls check 
                                       <a style="color: red;" href="ehranking.action">here</a>
                                       </span>
                       </td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="145" align="right"><span style="color: red;"></span><span class="fbrw_btii">Word Count：</span></td>
                       <td width="560" style="font-size: 14px;"><input id="zhensgaowzd" type="text" name="btender.basofTime" value="" class="fbrw_libit1"></td>
                       <td width="28"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl" style="height: 100px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii">Project Details：</span></td>
                       <td width="370" style="font-size: 14px;" colspan="2"> 
                       <textarea class="fbrw_libit4" name="btender.bxxmiaoshu" cols="" rows=""></textarea>

                       </td>
                       
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii"></span></td>
                       <td width="560" style="font-size: 14px;"><span id="lwnlosiockdfbrw" style="font-size:14px; color: red; font-weight: bold;"></span></td>
                       <td width="28"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"></td>
                       <td width="370" style="font-size: 14px;"><input class="fbrw_lcalou" name="" type="submit"  value="Submit"/></td>
                       <td width="218"></td>
                    </tr>
                 </table>
              </div>
              
              
             </c:if>
             </form>
          </div>
   </div>

   


</div>

<!----------主体样式------------->

<!-- d1 -->
		<div id="haed_dibu_cctts" style="margin-top: 260px;">
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
</body>
</html>
