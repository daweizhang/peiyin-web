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
    
    <title>发布任务</title>
    
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

<!----------主体样式------------->
<div style="width: 1000px; height: 3px; border: 0px solid #ccc; background-color:red; margin-top: 10px;"></div>
<div id="void_nes1" style="border: 0px solid #ccc;   height: 850px;">
   <div id="mum_zhutiyi1">
      <ul id="mum_ul_s">
         <li  class="mum_licss1"><span class="mum_asccss1">账户中心</span></li>
        <li id="mum_lncs0" class="mum_licss"><a class="mum_asccss" href="loginUsers!rupinuzy.action">会员主页</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="personalcenter.action">个人中心</a></li>
        <li id="mum_lncs1" class="mum_licss3"><a style="color: #690;" class="mum_asccss" href="btenderaction.action">发布任务</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="btenlist.action">任务列表</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="unpaidtaskorder.action">待付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="conJumptaskorder.action">已付款任务订单</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="odersovers.action">已完成的订单</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">个人信息</span></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="voicfs.action">上传头像</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="upusertion.action">基本资料</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="taskparty/rwfupadatepas.jsp">修改密码</a></li>
        <li id="mum_lncs1" class="mum_licss"><a class="mum_asccss" href="usersystemnews.action">系统消息</a></li>
        <li  class="mum_licss1"><span class="mum_asccss1">帮助与服务</span></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpjylc.action">交易流程</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpfyfk.action">费用与付款</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumpcjwt.action">常见问题</a></li>
        <li id="mum_lncs1" class="mum_licss"><a target="_blank" class="mum_asccss" href="indexpage!jumptsjy.action">投诉与建议</a></li>
        <li id="mum_lncs1" class="mum_licss2"><a target="_blank" class="mum_asccss" href="indexpage!jumpgywm.action">关于我们</a></li>
       
      </ul>
   
   </div>
   
   <!-- 中间的内容DIV -->
   <div id="mum_zhutiyi2" style="border:1px solid #ccc; height: 1100px;">
          <div id="rele_fabu1" style="height: 50px;">
              <div id="rele_fbnc1"><img src="images/xie.png" width="30" height="30" style="margin-top: 2px; margin-left: 7px;"/></div>
              <div id="rele_fbnc2"><h4 id="rele_fndn1">发布任务</h4><%-- <span style="font-size:14px; color:red; float: left;">注意:完善资料后才能发布任务!</span> --%></div>
          </div>
          <div id="rele_fabu2" style="border:1px solid #ccc; height: 1000px;">
            <form id="fabrwconts" action="insertbtender!insertBtender.action" method="post" enctype="multipart/form-data">
            <c:if test="${inus.iphone==NULL}">
            
                <div style="border:0px solid #ccc; width: 600px; height: 50px; margin-top: 100px; text-align: center;">
                   <div style="border:0px solid red; width: 280px; height: 30px;"><span style="font-size:14px; color:red;">您好!完善资料后才能发布任务!</span><a style="font-size:14px; font-weight: bold;text-decoration:underline;" href="upusertion.action">立即完善</a></div>
                </div>
            
            </c:if>
            <c:if test="${inus.iphone!=NULL}">
              <div id="fbrw_addl" >
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">任务标题：</span></td>
                       <td width="340"><input id="rwNames" type="text" name="btender.btName" class="fbrw_libit" maxlength="45"></td>
                       <td width="220"><span style="font-size:14px; color: #666;">标题不超过45字!</span></td>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">预算费用：</span></td>
                       <td width="570" style="font-size: 14px;"><input type="text" id="yusuanfeiyong" name="btender.bprice" class="fbrw_libit1" maxlength="12">.00RMB(要求整数,最低300RMB起价!)</td>
                       <td width="18"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">任务类型：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="rwleixss" class="fbrw_libit2" name="btender.tvoice.tvid" style=" width: 152px;">
							  <option value="0">请选择</option>
							  <c:forEach items="${listTvoc }" var="tisr">
                               <option id="index_in" value="${tisr.tvid}">${tisr.tvtypeName }</option>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">要求语言：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="yaluyans" class="fbrw_libit2" name="btender.lgtype.lid" style=" width: 152px;">
							  <option value="0">请选择</option>
							  <c:forEach items="${listlgp}" var="lgsb">
	                          <option id="index_in" value="${lgsb.lid }">${lgsb.lgtypeName }</option>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">要求性别：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="yqusex" class="fbrw_libit3" name="btender.bsex">
							  <option value="0">请选择</option>
							  <option value="男">男</option>
							  <option value="女">女</option>
							  <option value="男女混合">男女混合</option>
							  <option value="不限">不限</option>
						  </select>
                       
                       </td>
                       <td width="218"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              
              </div>
              <div id="fbrw_addl">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">要求口音：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="kouyins" class="fbrw_libit3" name="btender.scrowd.sid">
							  <option value="0">请选择</option>
							  <c:forEach items="${listsrd}" var="sosb">
                                 <option id="index_in" value="${sosb.sid }">${sosb.scrowdName }</option>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">配音文件格式：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select id="peiywjfge" class="fbrw_libit3" name="btender.bfilegeshi.fid">
							  <option value="0">请选择</option>
							  <c:forEach items="${listf}" var="fx">
                                 <option id="index_in" value="${fx.fid }">${fx.fName }</option>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">配音语速要求：</span></td>
                       <td width="370" style="font-size: 14px;">
                          <select class="fbrw_libit3" name="btender.bpyyusu.hid">
							  <c:forEach items="${listp}" var="pc">
                                 <option id="index_in" value="${pc.hid }">${pc.hName }</option>
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
                       <td width="150" align="right"><span style="color: red;">*</span><span class="fbrw_btii">试音稿文：</span></td>
                       <td width="370" style="font-size: 14px;" colspan="2"> 
                       <textarea id="sygaows" class="fbrw_libit4" style="height: 150px;" name="btender.bpygaowen" cols="" rows=""></textarea>
                       </td>
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl" style="height: 60px; margin-top: 5px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="60">
                       <td width="170" align="right"><span style="color: red;"></span><span class="fbrw_btii">正式背景音乐：</span></td>
                       <td width="340" style="font-size: 14px;">
								<div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="背景音乐文件"/>
								 <input id="filewnjs" type="file" name="file" size="30"/>
								</div>                
                       </td>
                       <td width="318"><span id="fff1111ccc" style="font-size:14px; color: #666;">(格式只能为音频格式!选填!)</span></td>
                    </tr>
                 </table>
              </div>
              <div id="fbrw_addl" style="height: 60px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="60">
                       <td width="170" align="right"><span style="color: red;">*</span><span class="fbrw_btii">正式配音稿文：</span></td>
                       <td width="340" style="font-size: 14px;">
								<div class="uploader green" style="margin-top: 5px;">
								 <input type="text" class="filename" readonly/>
								 <input type="button" name="file" class="button" value="正式配音稿文"/>
								 <input id="zsgwfile" type="file" name="files1" size="30"/>
								</div>                
                       </td>
                       <td width="318"><span id="fff1111ccc" style="font-size:14px; color: #666;">格式只能为文档文件格式!</span></td>
                    </tr>
                 </table>
              </div>
              
              <div id="fbrw_addl">
                 <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="50">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii">正式稿文的字数：</span></td>
                       <td width="560" style="font-size: 14px;"><input id="zhensgaowzd" type="text" name="btender.basofTime" value="" class="fbrw_libit1">(字/选填!)</td>
                       <td width="28"><span style="font-size:14px; color: #666;"></span></td>
                    </tr>
                 </table>
              </div>
               <div id="fbrw_addl" style="height: 100px;">
                  <table border="0" width="750" cellpadding="0" cellspacing="0">
                    <tr height="100">
                       <td width="150" align="right"><span style="color: red;"></span><span class="fbrw_btii">任务详细描述：</span></td>
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
                       <td width="370" style="font-size: 14px;"><input class="fbrw_lcalou" name="" type="submit"  value="提交审核"/></td>
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

</div>
</body>
</html>
