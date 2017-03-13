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
    
    <title>任务资料</title>
    
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
/* 		if(ubs==0){	 */	
			 $("#addchannelseekForm").bjuiajax('ajaxForm',{
				reload:false,
				reloadNavtab:false,
				callback:function(json){
				  //alert(json.fumeass);
				    if(json.fumeass=='222'){

					    ubs++;
						$(document).alertmsg('ok',"操作成功!");
						$.CurrentNavtab.navtab("refresh");
						// should add message for this 
						
						//$("#closeAdd").click(); 
					}else{
						$(document).alertmsg('error',"操作失败!");
					}
				}
			}); 
			/* }else{
			  $(document).alertmsg('error',"操作失败!网络异常！");
			   $.CurrentNavtab.navtab("refresh");
			   $("#closeAdd").click(); 
			} */
		}
		
		function updateTaskState(){
			$(document).alertmesg('OK', "操作成功");
			
		}
		</script>
  <body>
  <h3 style="margin-top: 0px;">国内任务</h3></div>
   <div">
  	<form  method="post" id="addchannelseekForm" action="updatetaksdd.action" class="pageForm" data-toggle="ajaxform" >
    	<table class="info-type-table" border="0">
    		<input type="hidden" name="btid" value="${bt.btid}"/>
    		<input type="hidden" name="gj" value="${bt.brwtype}"/>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务名称：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bftranslate.bfNames }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">任务发布时间：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.btime}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">发布人账号：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bUserID }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">任务文件下载：</label></td>
    			<td align="left">
    				&nbsp;<a href="download.action?filename=/voicefile/${bt.bvoicefileName }">正式稿文下载</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="download.action?filename=/yinyue/${bt.bypfile }">背景音乐下载</a>
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">任务类型：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.tvoice.tvtypeName }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">要求配音语言：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.lgtype.lgtypeName }" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">要求配音性别：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bsex }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">配音口音：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.scrowd.scrowdName }" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">任务预算价位：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bprice}(RMB)" readonly="readonly">(RMB)
    			</td>
    			<td align="right"><label style="width:100px;">正式稿文字数：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.basofTime }(字)" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">要求文件格式：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bfilegeshi.fName }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">声音速度：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bpyyusu.hName }" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">浏览人数：</label></td>
    			<td>
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bliuyanNum }" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:100px;">当前任务竞标人数：</label></td>
    			<td align="center">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${bt.bcounts }" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">试音稿文：</label></td>
    			<td colspan="3">
    				<textarea rows="" cols="" style="width: 600px; height: 100px;" readonly="readonly">${bt.bftranslate.bfsygw }</textarea>
    			</td>
    			
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">任务详细：</label></td>
    			<td colspan="3">
    				<textarea rows="" cols="" style="width: 600px; height: 100px;" readonly="readonly">${bt.bftranslate.bftiser }</textarea>
    			</td>
    			
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">是否通过审核：</label></td>
    			<td>
    				<select name="sftg" data-toggle="selectpicker" data-width="250">
    				      <c:forEach items="${mapsh }" var="test">
							    <c:forEach items="${test.value}" var="value">
                                    <option id="index_in" value="${test.key}" <c:if test="${test.key == bt.zstate.zid}">selected="selected"</c:if>>${value}</option>
                                </c:forEach>
     	                      </c:forEach>
    				</select>
    			</td>
    		</tr>

    		<tr>
    			<td colspan="2" class="info-type-submit">
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-blue" data-icon="save" 

    				style="margin-right:10px; margin-top: -20px;" onclick="saveInfoType(this); return false;">提交更新</button>
    				<button style="margin-top: -20px;" id="closeAdd" type="button" class="btn btn-close" data-icon="close">关闭</button>
    			</td>
    		</tr>
    	</table>
        
    	<table class="info-type-table" border="0" style="float: right; position: absolute; top:50px; right: 30px;">
    		<tr height="25px;">
    			<td align="left" colspan="2">(中文翻译为英文)翻译后的字段(可修改翻译后的字段)</td>
    		</tr>
    		<input type="hidden" name="bfid" value="${bt.bftranslate.bfid}">
    		<tr>
    			<td align="right"><label style="width:100px;">任务标题(翻译后)：</label></td>
    			<td>
    				<input type="text" placeholder="" name="bfs.bfNames" size="25" id="taginfoname" value="${bt.btName }">
    			</td>
    			
    		</tr>
    		<tr>
    			<td align="right"><label style="width:100px;">试音稿文(翻译后)：</label></td>
    			<td>
    				<textarea rows="" cols="" name="bfs.bfsygw" style="width:300px; height: 200px;">${bt.bpygaowen }</textarea>
    			</td>
    			
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:100px;">任务详细(翻译后)：</label></td>
    			<td>
    				<textarea rows="" cols="" name="bfs.bftiser" style="width:300px; height: 200px;">${bt.bxxmiaoshu }</textarea>
    			</td>
    			
    		</tr>
    		</table>
    	
    </form>
  </div>
  </body>
</html>
