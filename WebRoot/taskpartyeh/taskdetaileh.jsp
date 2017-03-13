<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Edit Project</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css-js-file/filecss.css" type="text/css"></link>
<link rel="stylesheet" href="css/indexcss.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script> 
<script type="text/javascript" src="js/indexjsEH.js"></script>
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
<link rel="stylesheet" href="css/component.css" type="text/css"></link>
</head>

<script type="text/javascript">
  $(function(){
	$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
	$("input[type=file]").each(function(){
	if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
	});
});
  </script>
<!-- overflow-x:y:scroll;overflow-y:scroll;overflow-y : auto;height:2000px; -->
<style type="text/css">
#anniuys{
width: 60px;
border-radius:5px;
border:1px solid #ccc;
background-color: #fff;
color: #690;
}
#anniuys:hover{
 border-color: red;
 background-color: red;
 color: #fff;
}
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
#fslkvsc_voice:hover{
 background-color: #E5E5E5;
}

#sefegsd{
 font-size: 14px;
 text-transform: none;
 color: red;
 margin-top: 20px;
}
#thistis_icns{ width:100%; height:100%; border:0px solid red; background-color:#999;
position:fixed;
top:0px;
opacity:0.2;
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
		
<div class="theme-popover" style="z-index: 2;position:relative; width: 900px; height:1200px; margin:-180px 0 0 -452px; ">
     <div id="zuopinxiug" class="theme-popbod dform" style="width: 800px;"> 
          <div id="zuiopingclss" style="width: 900px;">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/renwutu.png" width="40" height="40"></samp><samp id="knvel1">EDIT PROJECT</samp>
          </div>
          <div id="zuopingzti" style="border:0px solid red; height:1000px; width: 900px; margin-top: 15px;">
                <div id="donttaijiz" style="width: 900px;border:0px solid red;">
              <form id="rwbjehzil" action="ehbetencaozuo!updateBtenderEh.action" method="post" enctype="multipart/form-data">
                 <input id="countdjycs" type="hidden" name="countjb" value="${countjb}"/>
                 <input id="btentid" type="hidden" name="bndrs.btid" value="${tenderrw.btid}"/>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="122" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Title：</span></td>
                       <td width="280" style="font-size: 14px;"><input id="rewnumingxs" maxlength="45" type="text" style="float: left; width: 397px;" name="bndrs.btName" class="fbrw_libit6" value="${tenderrw.btName}"></td>
                       <td width="365" align="left"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="123" align="right"><span style="color: red;"></span><span class="fbrw_btii">Word Count</span></td>
                       <td width="157" style="font-size: 14px;" align="left">
                           <input id="zsgwzshus" type="text" style="float: left; width: 115px;" name="bndrs.basofTime" class="fbrw_libit6" value="${tenderrw.basofTime }">(W)
                       </td>
                       <td width="93" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Budget：</span></td>
                        <td width="527" style="font-size: 14px;" align="left">
                        <input type="text" id="bjysjw" style="float: left; width: 148px;" name="bndrs.bprice" class="fbrw_libit6" value="<fmt:parseNumber value="${tenderrw.bprice/6}" type="number"  integerOnly="true"/>">(USD)
						</td>
                    </tr>
                 </table>
                <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="123" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Category：</span></td>
                       <td width="157" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.tvoice.tvid">
                           <%-- <c:if test="${tisd.tvid == works.tvoice.tvid}">selected="selected"</c:if> --%>
							  <c:forEach items="${listtrw }" var="ttype">
                                <option id="index_in" value="${ttype.tvid}" <c:if test="${ttype.tvid == tenderrw.tvoice.tvid}">selected="selected"</c:if>>${ttype.tts }</option>
     	                      </c:forEach>
						  </select>
                       </td>
                       <td width="93" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Language：</span></td>
                        <td width="527" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.lgtype.lid">
							  <c:forEach items="${listlrw}" var="typel">
	                          <option id="index_in" value="${typel.lid }" <c:if test="${typel.lid == tenderrw.lgtype.lid}">selected="selected"</c:if>>${typel.lts }</option>
        	                  </c:forEach>
						  </select>
						  </td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="123" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Accent：</span></td>
                       <td width="157" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.scrowd.sid">
							  <c:forEach items="${listsrw}" var="types">
                                 <option id="index_in" value="${types.sid }" <c:if test="${types.sid == tenderrw.scrowd.sid}">selected="selected"</c:if>>${types.sts }</option>
    	                      </c:forEach>
						  </select>
                       </td>
                       <td width="93" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Gender：</span></td>
                        <td width="527" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.bsex">
							  <c:forEach items="${sexlist }" var="tses">
							    <c:forEach items="${tses.value}" var="values">
                                    <option id="index_in" value="${values}" <c:if test="${values == tenderrw.bsex}">selected="selected"</c:if>>${values}</option>
                                </c:forEach>
     	                      </c:forEach>
						  </select>
						  </td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="123" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Speed：</span></td>
                       <td width="157" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.bpyyusu.hid">
							  <c:forEach items="${listhrw}" var="typeh">
                                 <option id="index_in" value="${typeh.hid }" <c:if test="${typeh.hid == tenderrw.bpyyusu.hid}">selected="selected"</c:if>>${typeh.hts }</option>
    	                      </c:forEach>
						  </select>
                       </td>
                       <td width="93" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Format：</span></td>
                        <td width="527" style="font-size: 14px;">
                           <select style="width: 150px; float: left;" class="fbrw_libit3" name="bndrs.bfilegeshi.fid">
							  <c:forEach items="${listfrw}" var="typef">
                                 <option id="index_in" value="${typef.fid }" <c:if test="${typef.fid == tenderrw.bfilegeshi.fid}">selected="selected"</c:if>>${typef.fts }</option>
    	                      </c:forEach>
						  </select>
						  </td>
                    </tr>
                 </table>
                 
                 
                 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="200">
                       <td width="122" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Audition Text：</span></td>
                       <td width="678" style="font-size: 14px;" colspan="2"> 
                       <textarea id="rwnshiygwsbj" class="fbrw_libit4" name="bndrs.bpygaowen" style="float: left; width: 678px; height: 200px;" cols="" rows="">${tenderrw.bpygaowen}</textarea>
                       </td>
                       <td width="100"></td>
                    </tr>
                 </table>
                 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width=122" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">Current Music：</span></td>
                       <td width="78" style="font-size: 14px;">
                           <span style="font-size:14px; color: #666;"><a href="javascript:bofang('${fn:substring(tenderrw.btName,0,8)}...','${tenderrw.bypfile}');"><img src="images/isc.ico" width="28" height="28"></img></a></span>
                       </td>
                       <td width="700" align="left"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="122" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">Replace with：</span></td>
                       <td width="578" style="font-size: 14px;" align="left">
                           <div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="File selection"/>
								 <input id="bjpjminus" type="file" name="file" size="30"/>
								</div
                       </td>
                       <td width="200"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 
                 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width=122" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">Current Script：</span></td>
                       <td width="78" style="font-size: 14px;">
                           <img style="margin-left: 0px;" id="logo_u" src="images/wenjian.png" width="42" height="54"alt="LOGO" />
                       </td>
                       <td width="700" align="left"><span style="font-size:14px; color: #666;"><%-- ${tenderrw.bvoicefileName} --%><br><a style="text-decoration: none;" href="download.action?filename=/voicefile/${tenderrw.bvoicefileName }">Download</a></span></td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="122" align="right"><span style="color: red;">♫</span><span class="fbrw_btii">Replace with：</span></td>
                       <td width="578" style="font-size: 14px;" align="left">
                           <div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="File selection"/>
								 <input id="bjzsgaown" type="file" name="files1" size="30"/>
								</div>
                       </td>
                       <td width="200"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
                 
                 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width="122" align="right"><span style="color: red;">*</span><span class="fbrw_btii">Project Details：</span></td>
                       <td width="678" style="font-size: 14px;" colspan="2"> 
                       <textarea class="fbrw_libit4" name="bndrs.bxxmiaoshu" style="float: left; width: 678px; height: 100px;" cols="" rows="">${tenderrw.bxxmiaoshu}</textarea>
                       </td>
                       <td width="100"></td>
                    </tr>
                 </table>
                 
                 
                 
              <table border="0" width="900" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
                    <tr height="25">
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;">*Posted Time</span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: red;">*Status</span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;">*Visits</span></td>
                    </tr>
                    <tr height="25">
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;">${tenderrw.btime }</span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: red; font-weight: bold;">${tenderrw.zstate.zts }</span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;">${tenderrw.bliuyanNum }</span></td>
                    </tr>
                 </table>
                <table border="0" width="900" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
                    <tr height="25">
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: red;">*Participants</span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                    </tr>
                    <tr height="25">
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: red; font-weight: bold;">${prlist.totalCount} <a class="djck" href="javascript:;">check</a></span></td>
                       <td width="300" align="center"><span style="font-size: 13px; color: #999;"></span></td>
                    </tr>
                 </table> 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="878" align="center" style="font-size: 14px;" colspan="2"> 
                          <span id="rwbjslcas" style="font-size:14px; color: red; font-weight: bold;"></span>
                       </td>
                    </tr>
                 </table>
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="48">
                       <td width="225" align="right"><span style="color: red;"></span><span class="fbrw_btii"></span></td>
                       <td width="225" style="font-size: 14px;">
                       <c:if test="${prlist.totalCount==0}">
                       <input class="fbrw_lcalou" name="" type="submit"  value="Submit"/>
                       </c:if>
                       <c:if test="${prlist.totalCount!=0}">
                       <a href="javaScript:tancuan();"><input class="fbrw_lcalou" name="" type="button"  value="Submit"/></a>
                       </c:if>
                       </td>
                       <td width="225"><a href="javaScript:tancukelns();"><input class="fbrw_lcalou" name="" type="button"  value="Return"/></a>
                        <td width="225" style="font-size: 14px;"> 
						  </td>
                    </tr>
                 </table>
              </div> 
          </div>          
     </div>  
</div>
</form>

<div id="thistis_icns" style="display: none;z-index: 10;">
</div>
<div id="thistis_icnicns" style="display: none;z-index: 10;">
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
         <span class="svege">You are not allowed to edit a project which is being auditioned by talents!</span>
      </div>
  </div>
  <div id="lsncs_olc3">

     <a class="sesscs" href="javaScript:quxiaotc();"><input id="cnwlbann1" type="button" value="Determine"/></a>
  </div>
</div>


<div class="theme-popover-mask" style="z-index: 0;">

</div>











<div class="taskdetailcy_css" style="z-index: 3;"></div>
<div class="voicelibiao" style="z-index: 4;position:fixed; width: 900px; height:505px; margin:-170px 0 0 -452px; ">

    <div id="zuopinxiug" class="theme-popbod dform" style="width: 800px;"> 
          <div id="zuiopingclss" style="width: 900px; height: 40px;">
              <input id="hiddjy" type="hidden" name="worksdjy" value="1"/>
              <samp id="knvel"><img alt="" src="images/jinbiaoren.png" width="40" height="35"></samp><samp id="knvel1">Participant List</samp>
              <a class="lkencden" href="javascript:;"><div id="vekslkddxx" style="float: right;border:2px solid #690; width: 25px; height: 25px;border-radius:100px; margin-right: 5px; margin-top: 5px;"><div id="klfjekxlek">×</div></div></a>
          </div>
          <div id="zuopingzti" style="border:0px solid red; width: 900px; margin-top: 15px;">
                <div id="donttaijiz" style="width: 900px;border:0px solid red;">
              <form action="voicemiets!updateworkszp.action" name="" method="post">
                 <input type="hidden" name="worksdjy" value="${djy}"/>
                 <input type="hidden" name="wkup.wid" value="${works.wid}"/>
                 
                 <table border="0" width="900" cellpadding="0" cellspacing="0">
                    <tr height="30">
                       <td width="225" align="center" style="background-color: #CCC;"><span style="font-size: 13px; color: #999;">ID</span></td>
                       <td width="225" align="center" style="background-color: #E3E3E3;"><span style="font-size: 13px; color: #999;">Submitted Time</span></td>
                       <td width="170" align="center" style="background-color: #CCC;"><span style="font-size: 13px; color: #999;">Price</span></td>
                       <td width="55" align="center" style="background-color: #E3E3E3;"><span style="font-size: 13px; color: #999;">Demo</span></td>
                       <td width="225" align="center" style="background-color: #CCC;"><span style="font-size: 13px; color: #999;">Collaborate</span></td>
                    </tr>
                  </table>
                  
                  <div id="barenrt_sxkd">
	                 
                  </div>
                 <table border="0" width="900" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
                    <tr height="45">
                       <td width="680"><div id="pageNav" style="border:0px solid red; width:680;"></div></td>
                       <td width="220"><span style="font-size: 13px; color: #690;">Total<span class="spcount1"></span>&nbsp;Per Page<span class="spcount2"></span></span></td>
                    </tr>
                 </table>
              </div> 
          </div>




</div>
 
</body>
<script type="text/javascript">
$("#fsbelke").lc_switch();
$(".theme-popover-mask").fadeIn();
$(".theme-popover").fadeIn();





function ckidzpbj(id){
  
  //获取页码
  var ycym=$("#hiddjy").val();
  
  var htmlzp="";
 /*  $.getJSON("/peiyin//worksgllist.action?djy="+id,function(data){
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


function tancukelns(){
   var jdye=$("#countdjycs").val();
   window.location.href="ehbtenlist.action?rwdjys="+jdye;
}


function tancuan(){
$("#thistis_icns").fadeIn(200);
$("#thistis_icnicns").slideDown(200);	  

}
function quxiaotc(){
  $("#thistis_icns").fadeOut(200);
  $("#thistis_icnicns").slideUp(200); 
}

$(function(){
   $(".djck").click(function(){
       $("#fsbelke").lc_switch();
	//optional set
	pageNav.pre="上一页";
	pageNav.next="下一页";
	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};
       var betid=$("#btentid").val();
       $("#barenrt_sxkd").html("");
       $(".spcount1").html("");
       $(".spcount2").html("");
        var htmlpt="";
        var username="";
        var usernames="";
        var usename="";
       $.getJSON("/peiyin//betencaozuo!finpartpate.action?ptid="+betid,function(data){
         if(data.prlist.totalCount!=0){
         $(data.prlist.items).each(function(){
           username=this.puserId.iuserName.substring(0,(this.puserId.iuserName.length/2).toFixed(0)-3);
           usernames=this.puserId.iuserName.substring((this.puserId.iuserName.length/1.3).toFixed(0),this.puserId.iuserName.length);
           //alert((this.puserId.iuserName.length/3).toFixed(0));
           usename=username+"***"+usernames;
           
              htmlpt+="<table border='0' width='900' cellpadding='0' cellspacing='0'>"
	                    +"<tr height='30' id='fslkvsc_voice'>"
	                       +"<td width='225' align='center'><span style='font-size: 13px; color: #999;'>"+this.puserId.iname+"</span></td>"
	                       +"<td width='225' align='center'><span style='font-size: 13px; color: #999;'>"+this.pcyTime+"</span></td>"
	                       +"<td width='170' align='center'><span style='font-size: 13px; color: #999;'>"+this.pjbrphone/6+".00($)</span></td>"
	                       +"<td width='55' align='center'><span style='font-size: 13px; color: #999;'><a href=\"javascript:bofang('Test tone','"+this.psyfileName+"');\"><img style='margin-top:5px;' src='images/isc.ico' width='20' height='20'></img></a></span></td>"
	                      +"<td width='225' align='center'><a href='ehinsvoiw.action?uid="+this.puserId.iid+"' target='_blank'><input id='anniuys' type='button' value='detailed'/></a>&nbsp;<a href='ehConfirmation.action?pid="+this.pid+"'><input id='anniuys' type='button' value='cooperation'/></a></td>"
	                    +"</tr>"              
	                 +"</table>";
	              

         });
         }else{
               $("#pageNav").hide();
	             htmlpt+="<div id='sefegsd'>There is no audition for this project!<a href='#'> Invite talents now!>></a><div>";
	           }   
         
         $(".spcount1").html(data.prlist.totalCount);
         $(".spcount2").html(data.prlist.pageSize);
         $("#barenrt_sxkd").html(htmlpt);
         pageNav.go(1,data.prlist.totalPageCount);
	   });
		$(".taskdetailcy_css").fadeIn();
		$(".voicelibiao").fadeIn();
   });
    $(".lkencden").click(function(){
		$(".taskdetailcy_css").fadeOut(500);
		$(".voicelibiao").fadeOut(500);
   });
});

function showsub(id)
{
    //uudiy
    //optional set
	pageNav.pre="上一页";
	pageNav.next="下一页";
	 //  p,当前页码,pn,总页面
	pageNav.fn = function(p,pn){
		document.getElementById("test").innerHTML ="当前页:"+p+"  ,  总页: "+pn;
		//$("#test").text("Page:"+p+" of "+pn + " pages."); // jquery调用方式
	};
       var betid=$("#btentid").val();
       $("#barenrt_sxkd").html("");
       $(".spcount1").html("");
       $(".spcount2").html("");
        var htmlpt="";
        var username="";
        var usernames="";
        var usename="";
       $.getJSON("/peiyin//betencaozuo!finpartpate.action?ptid="+betid+"&uudiy="+id,function(data){
         $(data.prlist.items).each(function(){
           username=this.puserId.iuserName.substring(0,(this.puserId.iuserName.length/2).toFixed(0)-3);
           usernames=this.puserId.iuserName.substring((this.puserId.iuserName.length/1.3).toFixed(0),this.puserId.iuserName.length);
           //alert((this.puserId.iuserName.length/3).toFixed(0));
           usename=username+"***"+usernames;
         htmlpt+="<table border='0' width='900' cellpadding='0' cellspacing='0'>"
	                    +"<tr height='30' id='fslkvsc_voice'>"
	                       +"<td width='225' align='center'><span style='font-size: 13px; color: #999;'>"+this.puserId.iname+"</span></td>"
	                       +"<td width='225' align='center'><span style='font-size: 13px; color: #999;'>"+this.pcyTime+"</span></td>"
	                       +"<td width='170' align='center'><span style='font-size: 13px; color: #999;'>"+this.pjbrphone/6+".00($)</span></td>"
	                       +"<td width='55' align='center'><span style='font-size: 13px; color: #999;'><a href=\"javascript:bofang('Test tone','"+this.psyfileName+"');\"><img style='margin-top:5px;' src='images/isc.ico' width='20' height='20'></img></a></span></td>"
	                       +"<td width='225' align='center'><a href='ehinsvoiw.action?uid="+this.puserId.iid+"' target='_blank'><input id='anniuys' type='button' value='detailed'/></a>&nbsp;<a href='ehConfirmation.action?pid="+this.pid+"'><input id='anniuys' type='button' value='cooperation'/></a></td>"
	                    +"</tr>"           
	                 +"</table>";

         });
         
         $(".spcount1").html(data.prlist.totalCount);
         $(".spcount2").html(data.prlist.pageSize);
         $("#barenrt_sxkd").html(htmlpt);
         pageNav.go(data.prlist.currPageNo,data.prlist.totalPageCount);
	   });
   
}
$(function(){
   $("#flsvwlke").click(function(){
   
   $("#thistis_icns").fadeOut(200);
	$("#thistis_icnicns").slideUp(200); 
   
   });


});
  </script>


</html>
