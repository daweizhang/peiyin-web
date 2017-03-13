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
	//头像图片绝对路径
	String portraitPath = request.getContextPath() + "/upload/admin/";
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>国际配音系统后台登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">




</script>
 
 </head>



<body>


<form id="formAdd" data-toggle="ajaxform"
	action="isadlogin!addAisadmin.action" method="post">
	<div class="bjui-pageContent">

		<table width="100%" style="padding:0px 25px 0px 25px;">
			<tbody>
				<tr>
				<td><label for="j_custom_name" class="control-label x85">管理员账号：</label>
					<input type="text" name="aisadmin.aisadmName"
					 size="17" /></td>
				</tr>
				<tr>
				<td><label for="j_custom_fname" class="control-label x85">管理员密码：</label>
						<input type="password" name="aisadmin.aisadpassword"
						 size="17" /></td>

				</tr>
				<tr>
					<td><label for="j_custom_name" class="control-label x85">管理员姓名：</label>
						<input type="text" name="aisadmin.aisadName"
						 size="17" /></td>


				</tr>
				<tr>
					<td><label for="" class="control-label x85">性别：</label> <label
						for="" class="control-label x20 ">男：</label> <input type="radio"
						name="aisadmin.aisadSex" value="男" checked="checked" size="17" data-toggle="icheck"/>
						 
						<label for="" class="control-label x20 ">女：</label> <input
						type="radio" name="aisadmin.aisadSex" value="女" size="17"
						data-toggle="icheck" />
						
						<label for="" class="control-label x45">权限：</label> <select
						name="aisadmin.aisadzhiwei" id="j_custom_sale"
						data-toggle="selectpicker" data-rule="required">
							<option value="2">2</option>
								
								
					</select></td>


				</tr>
				<tr>
					<td><label for="j_custom_fname" class="control-label x85">Email：</label>
						<input type="text" name="aisadmin.aisadEmail"size="17" /> </td>
				</tr>	
				<tr>
					<td><label for="j_custom_name" class="control-label x85">手机号码：</label>
						<input type="text" name="aisadmin.aisadPhone" size="17"/>
						</td>

				</tr>
			



			</tbody>
		</table>



	</div>

	<div class="bjui-pageFooter">

		<ul>

			<li><button id="btncloss" type="button" class="btn-close"
					data-icon="close">取消</button></li>
			<li><button type="submit" class="btn-default" data-icon="save"
					>保存</button></li>
		</ul>



	</div>
</form>

</body>
</html>
