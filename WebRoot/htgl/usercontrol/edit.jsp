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


<script type="text/javascript">

$("#uploadForm").submit(function(){return false});

function openFile(){
	$("#fileup").click();
}
function uploadFile(e){
	 var formData = new FormData($("#uploadForm")[0]);
	
	 if(e.files[0].size>20*1024){
	 	$("#portraitImg").alertmsg('error', '头像图片最大尺寸为20KB');
	 	return 
	 }
	 
	 var aid=$("#aid").val();;
	 formData.append("aisadmin.aid",aid);
	 
    $.ajax({
        url:'isadlogin!uploadPortrait.action',  //server script to process data
        type: 'POST',
        //Ajax事件
        beforeSend: beforeSendHandler,
        success: completeHandler,
        error: errorHandler,
        complete:completes,
        // Form数据
        data:formData,
        //Options to tell JQuery not to process data or worry about content-type
        cache: false,
        contentType: false,
        processData: false
        
    });
}

function beforeSendHandler(){
	$("#btnsubmit").prop("disabled","disabled");
	$("#fileup").prop("disabled","disabled");
	
}
/**ajax开始之前处理函数*/
function completes(){
$("#btnsubmit").removeAttr("disabled");
$("#fileup").removeAttr("disabled");

}
/**ajax成功回调函数*/
function completeHandler(data){
	var obj=JSON.parse(data);
	if(obj.message=="0000"){
		$("#portraitImg").prop("src","<%=portraitPath%>"+obj.fileName);
	}else{
		if(obj.message=="0007"){
			$("#portraitImg").alertmsg('error', '头像图片最大尺寸为20KB');
		}
		if(obj.message=="0008"){
			$("#portraitImg").alertmsg('error', '头像图片类型只限定为.jpg,.gif.png,.bim格式');
		}
		$("#portraitImg").alertmsg('error', '更换头像时发生异常,异常编号:'+obj.message);
	}

}
/**ajax异常函数*/
function errorHandler(){
	$("#portraitImg").alertmsg('error', '更换头像时发生异常');
}


function btnAjax(e){
	$("#form2").bjuiajax('ajaxForm',{'reloadNavtab':true});
	$("#btncloss").click();
	$(document).navtab('refresh','admin_manage');
}




</script>
<form id="form2" data-toggle="ajaxform"
	action="isadlogin!updateAdminData.action" method="post">
	<div class="bjui-pageContent">
		<fieldset>
		<table width="100%" style="padding:0px 25px 0px 25px;">
			<tbody>
				
				<tr style="display:none;"><td><input id="aid" type="hidden" name="aisadmin.aid"value="${aisadmin.aid}" /></td>	</tr>

				<tr>
					<td>	
							<div class="portraitBox">
								<img id="portraitImg" style="margin-left:12px;"
									src="<%=portraitPath%><c:choose><c:when test="${empty aisadmin.aisadPortrait}">default-50x50.gif</c:when><c:otherwise>${aisadmin.aisadPortrait}</c:otherwise></c:choose>"
									width="50px" height="50px" /> <input style="margin-left:22px;"
									id="btnsubmit" type="button" class="btn-default"
									onClick="openFile()" value="更换头像" />
							</div>
					
					</td>
				</tr>
					
				<tr>
				<td><label for="j_custom_name" class="control-label x85">管理员账号：</label>
					<input type="text" name="aisadmin.aisadmName"
					value="${aisadmin.aisadmName}" size="17" readonly="readonly" /></td>
				</tr>
				<c:if test="${editFalg!=2}">
					<tr>
						<td><label for="j_custom_fname" class="control-label x85">管理员密码：</label>
							<input type="text" name="aisadmin.aisadpassword"
							value="${aisadmin.aisadpassword}" size="17" /></td>
	
					</tr>
				</c:if>
				<tr>
					<td><label for="j_custom_name" class="control-label x85">管理员姓名：</label>
						<input type="text" name="aisadmin.aisadName"
						value="${aisadmin.aisadName}" size="17" /></td>


				</tr>
				<tr>
					<td><label for="" class="control-label x85">性别：</label> <label
						for="" class="control-label x20 ">男：</label> <input type="radio"
						name="aisadmin.aisadSex" value="男" size="17" data-toggle="icheck"
						<c:if test="${aisadmin.aisadSex=='男'}">checked="checked"</c:if> />
						<label for="" class="control-label x20 ">女：</label> <input
						type="radio" name="aisadmin.aisadSex" value="女" size="17"
						data-toggle="icheck"
						<c:if test="${aisadmin.aisadSex=='女'}">checked="checked"</c:if> />
						<label for="" class="control-label x45">权限：</label> <select
						name="aisadmin.aisadzhiwei" id="j_custom_sale"
						data-toggle="selectpicker" data-rule="required">
						<option value="${aisadmin.aisadzhiwei}">${aisadmin.aisadzhiwei}</option>
							
							
								
					</select></td>


				</tr>
				<tr>
					<td><label for="j_custom_fname" class="control-label x85">Email：</label>
						<input type="text" name="aisadmin.aisadEmail" size="17"
						value="${aisadmin.aisadEmail}"></td>
				</tr>
				<tr>
					<td><label for="j_custom_name" class="control-label x85">登录时间：</label>
						<input type="text" name="aisadmin.aisadlastTime" size="17"
						value="${aisadmin.aisadlastTime}"></td>


				</tr>
				<tr>
					<td><label for="j_custom_fname" class="control-label x85">登录IP：</label>
						<input type="text" name="aisadmin.aisadip" size="17"
						value="${aisadmin.aisadip}"></td>
				</tr>
				<tr>
					<td><label for="j_custom_name" class="control-label x85">手机号码：</label>
						<input type="text" name="aisadmin.aisadPhone" size="17"
						value="${aisadmin.aisadPhone}"></td>

				</tr>
				<tr>
					<td><label for="j_custom_fname" class="control-label x85">注册时间：</label>
						<input type="text" name="aisadmin.aisadredTime" size="17"
						value="${aisadmin.aisadredTime}"></td>

				</tr>
				<c:if test="${editFalg==2}">
					<tr>
						<td>
							<input type="hidden" name="aisadmin.aisadpassword"
							value="${aisadmin.aisadpassword}" size="17" /></td>
	
					</tr>
				</c:if>

			

			</tbody>
		</table>
		</fieldset>


	</div>

	<div class="bjui-pageFooter">

		<ul>

			<li><button id="btncloss" type="button" class="btn-close"
					data-icon="close">取消</button></li>
			<li><button type="button" class="btn-default" data-icon="save"
					onclick="btnAjax()">保存</button></li>
		</ul>



	</div>
</form>
<form id="uploadForm" style="display:none"
	action="isadlogin!uploadPortrait.action" enctype="multipart/form-data"
	method="post">
	<input type="file" name="portraitFile" style="display:none;"
		id="fileup" onChange="uploadFile(this)" accept=".jpg,.gif.png,.bim" />
</form>
