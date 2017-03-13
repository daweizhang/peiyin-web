<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//头像图片绝对路径
 String portraitPath =request.getContextPath()+"/upload/admin/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>网址导航后台管理</title>
<meta name="Keywords" content="B-JUI,Bootstrap,DWZ,jquery,ui,前端,框架,开源,OSC,开源框架,knaan"/>
<meta name="Description" content="网址导航"/> 
<!-- bootstrap - css -->
<link href="BJUI/themes/css/bootstrap.css" rel="stylesheet">
<!-- core - css -->
<link href="BJUI/themes/css/style.css" rel="stylesheet">
<link href="BJUI/themes/blue/core.css" id="bjui-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="BJUI/plugins/kindeditor_4.1.10/themes/default/default.css" rel="stylesheet">
<link href="BJUI/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="BJUI/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="BJUI/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">

<!--[if lte IE 7]>
<link href="BJUI/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
    <script src="BJUI/other/html5shiv.min.js"></script>
    <script src="BJUI/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="BJUI/js/jquery-1.7.2.min.js"></script>
<script src="BJUI/js/jquery.cookie.js"></script>
<!--[if lte IE 9]>
<script src="BJUI/other/jquery.iframe-transport.js"></script>    
<![endif]-->
<!-- BJUI.all 分模块压缩版 -->
<script src="BJUI/js/bjui-all.js"></script>
<!-- 以下是B-JUI的分模块未压缩版，建议开发调试阶段使用下面的版本 -->
<!--
<script src="BJUI/js/bjui-core.js"></script>
<script src="BJUI/js/bjui-regional.zh-CN.js"></script>
<script src="BJUI/js/bjui-frag.js"></script>
<script src="BJUI/js/bjui-extends.js"></script>
<script src="BJUI/js/bjui-basedrag.js"></script>
<script src="BJUI/js/bjui-slidebar.js"></script>
<script src="BJUI/js/bjui-contextmenu.js"></script>
<script src="BJUI/js/bjui-navtab.js"></script>
<script src="BJUI/js/bjui-dialog.js"></script>
<script src="BJUI/js/bjui-taskbar.js"></script>
<script src="BJUI/js/bjui-ajax.js"></script>
<script src="BJUI/js/bjui-alertmsg.js"></script>
<script src="BJUI/js/bjui-pagination.js"></script>
<script src="BJUI/js/bjui-util.date.js"></script>
<script src="BJUI/js/bjui-datepicker.js"></script>
<script src="BJUI/js/bjui-ajaxtab.js"></script>
<script src="BJUI/js/bjui-datagrid.js"></script>
<script src="BJUI/js/bjui-tablefixed.js"></script>
<script src="BJUI/js/bjui-tabledit.js"></script>
<script src="BJUI/js/bjui-spinner.js"></script>
<script src="BJUI/js/bjui-lookup.js"></script>
<script src="BJUI/js/bjui-tags.js"></script>
<script src="BJUI/js/bjui-upload.js"></script>
<script src="BJUI/js/bjui-theme.js"></script>
<script src="BJUI/js/bjui-initui.js"></script>
<script src="BJUI/js/bjui-plugins.js"></script>
-->
<script src="BJUI/plugins/highcharts/themes/dark-unica.js"></script>
<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="BJUI/plugins/swfupload/swfupload.js"></script>
<!-- kindeditor -->
<script src="BJUI/plugins/kindeditor_4.1.10/kindeditor-all.min.js"></script>
<script src="BJUI/plugins/kindeditor_4.1.10/lang/zh_CN.js"></script>
<!-- colorpicker -->
<script src="BJUI/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="BJUI/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="BJUI/plugins/niceValidator/jquery.validator.js"></script>
<script src="BJUI/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="BJUI/plugins/bootstrap.min.js"></script>
<script src="BJUI/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<script src="BJUI/plugins/bootstrapSelect/defaults-zh_CN.min.js"></script>
<!-- icheck -->
<script src="BJUI/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="BJUI/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- HighCharts -->
<script src="BJUI/plugins/highcharts/highcharts.js"></script>
<script src="BJUI/plugins/highcharts/highcharts-3d.js"></script>
<script src="BJUI/plugins/highcharts/themes/gray.js"></script>
<!-- ECharts -->
<script src="BJUI/plugins/echarts/echarts.js"></script>
<!-- other plugins -->
<script src="BJUI/plugins/other/jquery.autosize.js"></script>
<link href="css/houtai.css" rel="stylesheet">
<link href="BJUI/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="BJUI/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<script src="BJUI/plugins/download/jquery.fileDownload.js"></script>
<!-- init -->
<script type="text/javascript">
$(function() {
    BJUI.init({
        JSPATH       : 'BJUI/',         //[可选]框架路径
        PLUGINPATH   : 'BJUI/plugins/', //[可选]插件路径
        loginInfo    : {url:'login_timeout.html', title:'登录', width:400, height:200}, // 会话超时后弹出登录对话框
        statusCode   : {ok:200, error:300, timeout:301}, //[可选]
        ajaxTimeout  : 50000, //[可选]全局Ajax请求超时时间(毫秒)
        pageInfo     : {total:'total', pageCurrent:'pageCurrent', pageSize:'pageSize', orderField:'orderField', orderDirection:'orderDirection'}, //[可选]分页参数
        alertMsg     : {displayPosition:'topcenter', displayMode:'slide', alertTimeout:3000}, //[可选]信息提示的显示位置，显隐方式，及[info/correct]方式时自动关闭延时(毫秒)
        keys         : {statusCode:'statusCode', message:'message'}, //[可选]
        ui           : {
                         windowWidth      : 0,    //框架可视宽度，0=100%宽，> 600为则居中显示
                         showSlidebar     : true, //[可选]左侧导航栏锁定/隐藏
                         clientPaging     : true, //[可选]是否在客户端响应分页及排序参数
                         overwriteHomeTab : false //[可选]当打开一个未定义id的navtab时，是否可以覆盖主navtab(我的主页)
                       },
        debug        : true,    // [可选]调试模式 [true|false，默认false]
        theme        : 'sky' // 若有Cookie['bjui_theme'],优先选择Cookie['bjui_theme']。皮肤[五种皮肤:default, orange, purple, blue, red, green]
    })
    
    // main - menu
    $('#bjui-accordionmenu')
        .collapse()
        .on('hidden.bs.collapse', function(e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a')
                
                if ($a.hasClass('collapsed')) $heading.removeClass('active')
            })
        })
        .on('shown.bs.collapse', function (e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a')
                
                if (!$a.hasClass('collapsed')) $heading.addClass('active')
            })
        })
    
    $(document).on('click', 'ul.menu-items > li > a', function(e) {
        var $a = $(this), $li = $a.parent(), options = $a.data('options').toObj()
        var onClose = function() {
            $li.removeClass('active')
        }
        var onSwitch = function() {
            $('#bjui-accordionmenu').find('ul.menu-items > li').removeClass('switch')
            $li.addClass('switch')
        }
        
        $li.addClass('active')
        if (options) {
            options.url      = $a.attr('href')
            options.onClose  = onClose
            options.onSwitch = onSwitch
            if (!options.title) options.title = $a.text()
            
            if (!options.target)
                $a.navtab(options)
            else
                $a.dialog(options)
        }
        
        e.preventDefault()
    })
    
    //时钟
    var today = new Date(), time = today.getTime()
    $('#bjui-date').html(today.formatDate('yyyy/MM/dd'))
    setInterval(function() {
        today = new Date(today.setSeconds(today.getSeconds() + 1))
        $('#bjui-clock').html(today.formatDate('HH:mm:ss'))
    }, 1000)
})

//菜单-事件
function MainMenuClick(event, treeId, treeNode) {
    event.preventDefault()
    
    if (treeNode.isParent) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)
        
        zTree.expandNode(treeNode, !treeNode.open, false, true, true)
        return
    }
    
    if (treeNode.target && treeNode.target == 'dialog')
        $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
    else
        $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
}
</script>
<!-- for doc begin -->
<link type="text/css" rel="stylesheet" href="BJUI/syntaxhighlighter-2.1.382/styles/shCore.css"/>
<link type="text/css" rel="stylesheet" href="BJUI/syntaxhighlighter-2.1.382/styles/shThemeEclipse.css"/>
<script type="text/javascript" src="BJUI/syntaxhighlighter-2.1.382/scripts/brush.js"></script>
<link href="BJUI/doc.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
    SyntaxHighlighter.config.clipboardSwf = 'BJUI/syntaxhighlighter-2.1.382/scripts/clipboard.swf'
    $(document).on(BJUI.eventType.initUI, function(e) {
        SyntaxHighlighter.highlight();
    });
    
   
})

//修改
	function editdata2(A_id){
		$(document).dialog({
			id:'contentrule_edit_dialog',
			width:334,
			height:364,
			url:'isadlogin!editAisadminInit.action', 
			data: {"aisadmin.aid":A_id,"editFalg":2},
			title:'我的资料',
			mask:true,
			resizable:false,
			drawable:false,
			maxable:false
		});
	}
</script>

<style>
	.fa-check-square-o:before{content:"";}
</style>
<!-- for doc end -->
</head>
<body>
    <!--[if lte IE 7]>
        <div id="errorie"><div>您还在使用老掉牙的IE，正常使用系统前请升级您的浏览器到 IE8以上版本 <a target="_blank" href="http://windows.microsoft.com/zh-cn/internet-explorer/ie-8-worldwide-languages">点击升级</a>&nbsp;&nbsp;强烈建议您更改换浏览器：<a href="http://down.tech.sina.com.cn/content/40975.html" target="_blank">谷歌 Chrome</a></div></div>
    <![endif]-->
    <div id="bjui-window">
    <header id="bjui-header">
        <div class="bjui-navbar-header">
            <button type="button" class="bjui-navbar-toggle btn-default" data-toggle="collapse" data-target="#bjui-navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="bjui-navbar-logo" href="#"></a>
        </div>
        <nav id="bjui-navbar-collapse">
            <ul class="bjui-navbar-right">
                <li class="datetime"><div><span id="bjui-date"></span> <span id="bjui-clock"></span></div></li>
                <li><a href="startchatting.action">消息<span class="badge">0</span></a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">我的账户 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="htgl/usercontrol/editPwd.jsp" data-toggle="dialog" data-id="changepwd_page" data-mask="true" data-width="362" data-height="252">&nbsp;<span class="glyphicon glyphicon-lock"></span> 修改密码&nbsp;</a></li>
                        <li ><a href="javascript:void(0)" onClick="editdata2('${sessionScope.adminInfo.aid}')" >&nbsp;<span class="glyphicon glyphicon-user"></span> 我的资料</a></li>
                        <li class="divider"></li>
                        <li><a href="javaScript:void(0)" onclick="closeWindow()" class="red">&nbsp;<span class="glyphicon glyphicon-off"></span> 注销登陆</a></li>
                    </ul>
                </li>
                <li><c:if test="${not empty sessionScope.adminInfo.aisadPortrait}"><div id="drop_icnsl" style="width: 50px; height: 50px; border:1px solid #ccc;"><img id="skllmcks" src="<%=portraitPath%>${sessionScope.adminInfo.aisadPortrait}" width="50" height="50"></img></div></c:if></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle theme blue" data-toggle="dropdown" title="切换皮肤"><i class="fa fa-tree"></i></a>
                    <ul class="dropdown-menu" role="menu" id="bjui-themes">
                        <li><a href="javascript:;" class="theme_default" data-toggle="theme" data-theme="default">&nbsp;<i class="fa fa-tree"></i> 黑白分明&nbsp;&nbsp;</a></li>
                        <li><a href="javascript:;" class="theme_orange" data-toggle="theme" data-theme="orange">&nbsp;<i class="fa fa-tree"></i> 橘子红了</a></li>
                        <li><a href="javascript:;" class="theme_purple" data-toggle="theme" data-theme="purple">&nbsp;<i class="fa fa-tree"></i> 紫罗兰</a></li>
                        <li class="active"><a href="javascript:;" class="theme_blue" data-toggle="theme" data-theme="blue">&nbsp;<i class="fa fa-tree"></i> 天空蓝</a></li>
                        <li><a href="javascript:;" class="theme_green" data-toggle="theme" data-theme="green">&nbsp;<i class="fa fa-tree"></i> 绿草如茵</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="bjui-hnav"  id="bjui-hnav-navbar-box">
            <button type="button" class="btn-default bjui-hnav-more-left" title="导航菜单左移"><i class="fa fa-angle-double-left"></i></button>
            <div id="bjui-hnav-navbar-box">
                <ul id="bjui-hnav-navbar">
                   
                     <li class="active"><a href="javascript:;" data-toggle="slidebar">♪♫会员用户</a>
                   	 	 <div class="items hide" data-noinit="true">
                     	    <ul id="bjui-hnav-tree1" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
								<li data-id="50" data-pid="5" data-url="userlist.action" data-tabid="publish_manage" data-faicon="table">用户列表</li>
                            </ul>
                        </div>
                      </li>
                    <li><a href="javascript:;" data-toggle="slidebar">♪♫任务列表</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="bjui-hnav-tree2" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
                            	<li data-id="1" data-pid="1" data-url="tasksandton.action" data-tabid="Channeldataquery1" data-faicon="table">任务列表</li>               
                            	<!-- <li data-id="2" data-pid="2" data-url="workston.action" data-tabid="Channeldataquery2" data-faicon="table">作品列表</li>  -->                                           
                            </ul>
                        </div>
                    </li>
                    
                    <li><a href="javascript:;" data-toggle="slidebar">♪♫合作订单</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="bjui-hnav-tree3" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
                                <li data-id="118" data-pid="9" data-url="OrdersPending.action" data-tabid="Channeldataquery3" data-faicon="table">待付款审核订单列表</li>                 
								<li data-id="95" data-pid="10" data-url="OrdersPendidadmin.action" data-tabid="Channeldataquery4" data-faicon="table">已付款任务订单列表</li>                 
                                <%-- <li data-id="95" data-pid="11" data-url="<%=request.getContextPath() %>/servlet/planlog?action=query" data-tabid="Channeldataquery" data-faicon="table">完成后任务订单列表</li>  --%>
                            </ul>
                        </div>
                    </li>
                    
                   <%--  <li><a href="javascript:;" data-toggle="slidebar">♪♫系统工具</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="bjui-hnav-tree" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
								<li data-id="100" data-pid="12" data-url="<%=request.getContextPath() %>/servlet/planlog?action=query" data-tabid="Channeldataquery" data-faicon="table">发送邮件</li>                 
                                <li data-id="110" data-pid="13" data-url="<%=request.getContextPath() %>/servlet/planlog?action=query" data-tabid="Channeldataquery" data-faicon="table">谷歌翻译器</li> 
                            </ul>
                        </div>
                    </li> --%>
                    
                    
                    <li><a href="javascript:void(0)" data-toggle="slidebar">♪♫消息中心</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="bjui-hnav-tree4" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
                               <li data-id="111" data-pid="14" data-url="messtons.action" data-tabid="messtons" data-faicon="table">聊天记录</li> 
							   <%-- <li data-id="112" data-pid="15" data-url="<%=request.getContextPath() %>/servlet/planlog?action=query" data-tabid="Channeldataquery" data-faicon="table">收信箱</li> 	 --%>
                            </ul>
                        </div>
                    </li>
                    <c:if test="${sessionScope.adminInfo.aisadzhiwei==1}">
	                     <li ><a href="javascript:;" data-toggle="slidebar">♪♫系统管理</a>
	                        <div class="items hide" data-noinit="true">
	                            <ul id="bjui-hnav-tree1" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="check-square-o">
	
	                            <c:if test="${sessionScope.adminInfo.aisadzhiwei==1}">
	                            	<li data-id="10" data-pid="1" data-url="isadlogin!getAisadminList.action" data-tabid="admin_manage" data-faicon="table">系统用户列表</li>
	                            </c:if>
	                               <!-- <li data-id="20" data-pid="2" data-url="<%=request.getContextPath() %>/htgl/usercontrol/inuserlist.jsp" data-tabid="group_manage" data-faicon="table">个人资料展示</li>
	                                <li data-id="30" data-pid="3" data-url="<%=request.getContextPath() %>/htgl/usercontrol/inuserlist.jsp" data-tabid="group_manage" data-faicon="table">个人资料修改</li>
	                                <li data-id="31" data-pid="31" data-url="<%=request.getContextPath() %>/htgl/usercontrol/inuserlist.jsp" data-tabid="group_manage" data-faicon="table">上传头像</li>
	                                <li data-id="40" data-pid="4" data-url="<%=request.getContextPath() %>/htgl/usercontrol/inuserlist.jsp" data-tabid="group_manage" data-faicon="table">修改密码</li>
	                           	 --> 
	                            </ul>
	                        </div>
	                        
	                    </li>
                    </c:if>
                    
                </ul>
            </div>
            <button type="button" class="btn-default bjui-hnav-more-right" title="导航菜单右移"><i class="fa fa-angle-double-right"></i></button>
        </div>
    </header>
    <div id="bjui-container">
        <div id="bjui-leftside">
            <div id="bjui-sidebar-s">
                <div class="collapse"></div>
            </div>
            <div id="bjui-sidebar">
                <div class="toggleCollapse"><h2><i class="fa fa-bars"></i> 导航栏 <i class="fa fa-bars"></i></h2><a href="javascript:;" class="lock"><i class="fa fa-lock"></i></a></div>
                <div class="panel-group panel-main" data-toggle="accordion" id="bjui-accordionmenu" data-heightbox="#bjui-sidebar" data-offsety="26">
                </div>
            </div>
        </div>
        <div id="bjui-navtab" class="tabsPage">
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent">
                    <ul class="navtab-tab nav nav-tabs">
                        <li data-url=""><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
                <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
                <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">#maintab#</a></li>
            </ul>
            <div class="navtab-panel tabsPageContent">
                <div class="navtabPage unitBox">
                    <div class="bjui-pageContent" style="background:#FFF;">
                        如有问题请联系:QQ969353498
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="bjui-footer">Copyright &copy; 2016 - 2050　<a href="#" target="_blank">logo - TCKING后台</a>　
        <!--  
        <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1252983288'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/stat.php%3Fid%3D1252983288%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
        -->
    </footer>
    </div>
    	
<div id="lougou_cl"><samp id="login_zidu">logo - TCKING后台</samp></div>    
<script type="text/javascript">
function closeWindow() 
{
	window.opener = null;
	window.open(' ', '_self', ' '); 
 	window.close();
}
</script>   
</body>
</html>