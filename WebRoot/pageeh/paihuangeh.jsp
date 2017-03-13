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
    
    <title>Ranking list</title>
    
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
  <link rel="stylesheet" href="css/daohang_CSS.css" type="text/css"></link>
  <script type="text/javascript" src="css-js-file/fakeloader.min.js"></script>
  <link rel="stylesheet" href="css-js-file/fakeloader.css" type="text/css"></link>
  
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
<body>
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
						<div id="d_list_lic9">
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
						<div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
							<table id="d_tbals_ss" width="190" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="71" height="45" align="right"><div
											class="d_utnkcn5" style="margin-left:44px;  background-image:images/index.png; background-repeat:no-repeat; background-position:0px -410px;"></div></td>
									<td width="113" class="gessc_ss" align="left" valign="middle"><samp
											class="cnnspp" style="color: #F16700;">TRANSLATION</samp></td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!--D-->
    
    <div id="paihuang" style="margin-top: 5px;">
    	<div class="paihuang1">
    		<div class="paihuang11">
    			<div class="paihuang111"><span></span><b>Credit reputation</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.123456</a></span><br>
    								<span class="paihuang11221122">Gross value37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.123456</a></span><br>
    								<span class="paihuang11221122">Gross value37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.123456</a><span class="paihuang1122212">Gross value<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    		
    		
    		
    		<div class="paihuang12">
    			<div class="paihuang111"><span></span><b>Voice player trading volume</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    	</div>
    	
    	
    	<div class="paihuang2">
    		<div class="paihuang21">
    			<div class="paihuang111"><span></span><b>The credibility of the mission</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    		
    		
    		<div class="paihuang22">
    			<div class="paihuang111"><span></span><b>Task party transaction volume</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">ID.987654</a></span><br>
    								<span class="paihuang11221122">Cumulative37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">ID.987654</a><span class="paihuang1122212">Cumulative<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>

    	</div>
    </div>
    
    
<div>
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
								 <a href='ehindexpage!jumpjylcEh.action' target="_blank">HOW IT WORKS</a> | <a href='ehindexpage!jumpfyfkEh.action'
									target="_blank">FEES & PAYMENT</a> | <a
									href='ehindexpage!jumpfyfkEh.action' target="_blank">Q & A</a> | <a href='ehindexpage!jumptsjyEh.action'
									target="_blank">CONTACT US</a> | <a
									href='ehindexpage!jumpgywmEh.action' target="_blank">ABOUT US</a>
								<!--  | <a -->
								<!-- href='javaScript:;'>帮助中心</a> | <a
									href='javaScript:;'>隐私保护</a> | <a
									href='javaScript:;'>公司地图</a> | <a
									href='https://auth.alipay.com/login/index.htm' target="_blank">支付宝</a> -->
								| <a href='https://www.paypal.com/c2/webapps/mpp/home'
									target="_blank">PAYPAL</a>
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
    
  </body>
  
        <script type="text/javascript">
		
		  showlaod(500,"#ccc");
        </script>
  
</html>
