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
    
    <title>订单审核</title>
    
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
   <div style="padding:20px 30px;">
  	<form  method="post" id="addchannelseekForm" action="OrdersPendid!findupdateorder.action" class="pageForm" data-toggle="ajaxform" >
    	<table class="info-type-table">
    		<input type="hidden" name="ts.pid" value="${Pate.pid}"/>
    		<tr>
    			<td align="right"><label style="width:100px;">订单零时ID：</label></td>
    			<td>
    				<input type="text" name="ts.ptemporaryid" placeholder="" size="25" id="taginfoname" value="${Pate.ptemporaryid}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">任务名称：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${Pate.btender.bftranslate.bfNames }" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">竞标人账户名：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${Pate.puserId.iuserName }" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务方账户名：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${Pate.pusersId}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务方联系电话：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${inuser.iphone }">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">任务方联系邮箱：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${inuser.iemail }">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务时间范围：</label></td>
    			<td>
    				<select name="ts.ptimelimit" data-toggle="selectpicker" data-width="250">
    				   <c:forEach items="${odsTi}" var="time">
							    <c:forEach items="${time.value}" var="values">
                                    <option id="index_in" value="${time.key}" <c:if test="${time.key == Pate.ptimelimit}">selected="selected"</c:if>>${values}</option>
                                </c:forEach>
     	               </c:forEach>
    				</select>
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务方付款账户：</label></td>
    			<td>
    				<input type="text" name="ts.paycount" placeholder="" size="25" value="${Pate.paycount }">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务价格：</label></td>
    			<td>
    				<input type="text" name="ts.prwfphone" placeholder="" size="25" value="${Pate.ptotalprice }.00(RMB)==${Pate.prwfphone}(USD)" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">订单发起时间：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" value="${Pate.pfqTime }" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">付款状态：</label></td>
    			<td>
    			   <select name="ts.pzhifuzt" data-toggle="selectpicker" data-width="250">
    				   <c:forEach items="${oderzt }" var="test">
							    <c:forEach items="${test.value}" var="value">
                                    <option id="index_in" value="${test.key}" <c:if test="${test.key == Pate.pzhifuzt}">selected="selected"</c:if>>${value}</option>
                                </c:forEach>
     	               </c:forEach>
    				</select>
    				
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">跟进备注：</label></td>
    			<td>
    				<textarea name="ts.pts" cols="50" class="form-control" style="resize:none;height: 100px;" data-toggle="autoheight">${Pate.pts}</textarea>
    			</td>
    		</tr>
    		
    		<tr>
    			<td colspan="2" class="info-type-submit">
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-blue" data-icon="save" style="margin-right:10px" onclick="saveInfoType(this); return false;">提交更新</button>
    				<button id="closeAdd" type="button" class="btn btn-close" data-icon="close">关闭</button>
    			</td>
    		</tr>
    	</table>
    </form>
  </div>
  </body>
</html>
