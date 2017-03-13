<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  <style>
		.info-type-table tr td{
			line-height:32px;
		}
		.info-type-table input{
			width:200px;
		}
		.info-type-submit{
			text-align:center;
			padding-top:20px;
		}
		.info-type-submit button{
			width:85px;
		}
	</style>
	
	<script type="text/javascript">
	var ubs=0;
		//提交表单
		function saveInfoType(e){
		
			/* var name = $("#taginfoname").val();
				var s=name.replace(/(^\s*)|(\s*$)/g, "");
				if(s==""){
					$(document).alertmsg('error','该不能为空');
					return;				
				} */
		if(ubs==0){		
			 $("#addchannelseekForm").bjuiajax('ajaxForm',{
				reload:false,
				reloadNavtab:false,
				callback:function(json){
				    if(json.jsoner=='200'){
					    ubs++;
						$(document).alertmsg('ok',"操作成功!");
						$.CurrentNavtab.navtab("refresh");
						$("#closeAdd").click(); 
					}else{
						$(document).alertmsg('error',"操作失败!");
					}
				}
			}); 
			}else{
			  $(document).alertmsg('error',"操作失败!网络异常！");
			   $.CurrentNavtab.navtab("refresh");
			   $("#closeAdd").click(); 
			}
		}
		</script>
  <body>
  <img alt="" src="upload/${is.iportrait }" width="100" height="100" style="float: left;"><h3 style="margin-top: 20px;">配音员资料</h3></div>
   <div style="padding:5px 10px;">
  	<form  method="post" id="addchannelseekForm" action="OrdersPendid!findupdateorder.action" class="pageForm" data-toggle="ajaxform" >
    	<table class="info-type-table" border="0">
    		<input type="hidden" name="ts.pid" value="${is.iid}"/>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">账号：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iuserName}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">密码：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.ipassword}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">ID：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iname}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">性别：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.isex}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">出身年月：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.ibirthday}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">邮箱：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iemail}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">电话：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iphone}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">注册时间：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iredTime}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">信誉值：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.icredibility}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">口音：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.scrowd.scrowdName}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">声音类型：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.islID}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">配音范围：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.ivoiceLabels}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">语言：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.ilanguageLabels}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">所在地区：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${is.iregion}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td colspan="2" class="info-type-submit">
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- <button type="button" class="btn btn-blue" data-icon="save" style="margin-right:10px" onclick="saveInfoType(this); return false;">提交更新</button> -->
    				<button id="closeAdd" type="button" class="btn btn-close" data-icon="close">关闭</button>
    			</td>
    		</tr>
    	</table>
    </form>
  </div>
  </body>
</html>
