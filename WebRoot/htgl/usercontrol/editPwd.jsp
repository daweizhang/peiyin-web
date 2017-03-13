<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<script type="text/javascript">

function btnAjaxpwd(e){
	$("#formpwd").bjuiajax('ajaxForm',{'reloadNavtab':true});
	$("#btncloss").click();
	$(document).navtab('refresh','admin_manage');
	
}


</script>

	
	<div class="bjui-pageContent">
	<fieldset>
		<form id="formpwd" data-toggle="ajaxform" action="isadlogin!updatePassword.action" method="post">
		<p style="display:none;"><label for="j_custom_name" class="control-label x85">管理账号：</label><input  class="form-control" name="updatePwMap['aid']"  placeholder="登录名" type="text" value="${sessionScope.adminInfo.aid}" readonly="readonly" /></p>
	    <p><label for="j_custom_name" class="control-label x85">管理账号：</label><input  class="form-control" name="updatePwMap['aisadmName']"  placeholder="登录名" type="text" value="${sessionScope.adminInfo.aisadmName}" readonly="readonly" /></p>

	    <p><label for="j_custom_name" class="control-label x85">旧密码：</label><input class="form-control"   placeholder="旧密码" type="password" name="updatePwMap['jiumima']"  /></p>
	    <p><label for="j_custom_name" class="control-label x85">新密码：</label><input class="form-control" name="updatePwMap['mima1']"  placeholder="新密码" type="password" name="updatePwMap['mima1']" /></p>
	    <p><label for="j_custom_name" class="control-label x85">确认新密码：</label><input class="form-control" name="updatePwMap['mima2']"  placeholder="确认新密码" type="password"  name="updatePwMap['mima2']"/></p>

		</form>
	</fieldset>
	</div>

	<div class="bjui-pageFooter">

		<ul>

			<li><button id="btncloss" type="button" class="btn-close" data-icon="close">取消</button></li>
					
			<li><button type="button" onclick="btnAjaxpwd(this)" class="btn-default" data-icon="save">保存</button></li>
					
		</ul>



	</div>
</form>
