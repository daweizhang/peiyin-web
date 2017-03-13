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
    
    <title>排行榜</title>
    
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
     <div id="d_list_lic9">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn2" style="margin-left:48px;"></div></td>
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
     <a href="page/paihuang.jsp">
     <div id="d_list_lic9" style="border-top:5px solid #F16700; background-color:#fff;">
        <table id="d_tbals_ss" width="190" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="71" height="45" align="right"><div class="d_utnkcn5" style="margin-left:44px; background-image:images/index.png; background-repeat:no-repeat; background-position:0px -410px;"></div></td>
           <td width="113" class="gessc_ss" align="left" valign="middle"><samp class="cnnspp" style="color: #F16700;">排行榜</samp></td>
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
    
    <div id="paihuang" style="margin-top: 5px;">
    	<div class="paihuang1">
    		<div class="paihuang11">
    			<div class="paihuang111"><span></span><b>配音信誉度</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">总值37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">总值37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌才</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">阖家团圆</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的双方各地方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">第三方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的方式该第三方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">儿童日其他</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">以后如何</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    		
    		
    		
    		<div class="paihuang12">
    			<div class="paihuang111"><span></span><b>配音员交易量</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">累计37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">累计37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌才</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">阖家团圆</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的双方各地方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">第三方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的方式该第三方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">儿童日其他</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">以后如何</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    	</div>
    	
    	
    	<div class="paihuang2">
    		<div class="paihuang21">
    			<div class="paihuang111"><span></span><b>任务方信誉度</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">总值37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">总值37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/jy2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌才</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">阖家团圆</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的双方各地方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">第三方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的方式该第三方</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">儿童日其他</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">以后如何</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌</a><span class="paihuang1122212">总值<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/jy10.png"></img></span>
    					</li>
    				</ul>
    			</div>
    		</div>
    		
    		
    		<div class="paihuang22">
    			<div class="paihuang111"><span></span><b>任务方交易量</b></div>
    			<div class="paihuang112">
    				<span class="paihuang1121"></span>
    				<ul class="paihuang1122">
    					<li class="paihuang11221">
    						<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">累计37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr1.png"></img></span>
    					</li>
    					
    					
    					<li class="paihuang11221" style="margin-top: 5px;">
							<span class="paihuang112211">
    							<span class="paihuang1122111"><a href="#"><img src="images/pyy1.png"></img></a></span>
    							<span class="paihuang1122112">
    								<span class="paihuang11221121"><a href="#">Hello wode</a></span><br>
    								<span class="paihuang11221122">累计37</span>
    							</span>
    						</span>
    						<span class="paihuang112212"><img src="images/sr2.png"></img></span>
						</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌才</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr3.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">阖家团圆</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr4.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的双方各地方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr5.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">第三方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr6.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">的方式该第三方</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr7.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">儿童日其他</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr8.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">以后如何</a><span class="paihuang1122212">累计<span>35</span></span></span>
    						<span class="paihuang112222"><img src="images/sr9.png"></img></span>
    					</li>
    					<li class="paihuang11222">
    						<span class="paihuang112221"><a class="paihuang1122211" href="#">大风歌</a><span class="paihuang1122212">累计<span>35</span></span></span>
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
		
		  showlaod(500,"#ccc");
        </script>
  
</html>
