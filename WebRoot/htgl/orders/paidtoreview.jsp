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
    
    <title>已付款订单审核</title>
    
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
   <div style="padding:0px 0px;">
  	<form  method="post" id="addchannelseekForm" action="finaloders.action" class="pageForm" data-toggle="ajaxform" >
    	<table class="info-type-table" style="margin-top: -20px;">
    		<input type="hidden" name="zuoid" value="${pos.pid}"/>
    		<tr>
    			<td align="right"><label style="width:130px;">任务ID：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.btender.btid}" readonly="readonly">
    			</td>
    			<td align="left" colspan="2" width="250">
    				<samp style="color: red;">任务ID用于查看任务详细信息的编号，可在任务列表里查询!</samp>
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">任务名称：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.btender.bftranslate.bfNames}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">任务类型：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.btender.tvoice.tvtypeName}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">订单号：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pjbremail}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">任务方账号：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pusersId}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:130px;">任务方付款账户：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.paycount}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">任务方联系电话：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${us.iphone}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:130px;">任务方联系邮箱：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${us.iemail}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">任务方付款时间：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pfkTime}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">任务时间范围：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.ptimelimit}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">订单总金额：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.ptotalprice}" readonly="readonly">
    			</td>
    		</tr>

    		
    		
    		<tr>
    			<td align="right"><label style="width:100px;"></label></td>
    			<td>
    			</td>
    		</tr>
    		
    		
    		<tr>
    			<td align="right"><label style="width:130px;">配音员账户：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.puserId.iuserName}" readonly="readonly">
    			</td>
    			<td align="left" colspan="2" width="250">
    				<samp style="color: red;">更多资料,可根据配音员账户到配音员列表查询详细!</samp>
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:130px;">配音联系方式：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.puserId.iphone}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">配音员联系邮箱：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.puserId.iemail}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">是否提交产品状态：</label></td>
    			<td align="left" width="250">
    				  <select name="sftg" data-toggle="selectpicker" data-width="100">
    				  <c:forEach items="${tjztmap }" var="zjz">
							    <c:forEach items="${zjz.value}" var="value">
                                    <option id="index_in" value="${zjz.key}" <c:if test="${zjz.key == pos.prwfemail}">selected="selected"</c:if>>${value}</option>
                                </c:forEach>
     	               </c:forEach>
     	               </select>
    			</td>
    			<td align="right"><label style="width:130px;">产品文件：</label></td>
    			<td align="left" width="250">
    				<c:if test="${pos.pvire!=''}">
    				   <a href="download.action?filename=/yinyue/${pos.pvire }">点击下载成品</a>
    				</c:if>
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">配音员支付宝姓名：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pcName}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">配音员支付宝账户：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pzfbaccount}" readonly="readonly">
    			</td>
    		</tr>
    		
    		<tr>
    			<td align="right"><label style="width:130px;">是否打款给配音员：</label></td>
    			<td align="left" width="250">
    				 <select name="sfdk" data-toggle="selectpicker" data-width="100">
    				  <c:forEach items="${dkzttmap }" var="dkzt">
							    <c:forEach items="${dkzt.value}" var="value">
                                    <option id="index_in" value="${dkzt.key}" <c:if test="${dkzt.key == pos.pskzt}">selected="selected"</c:if>>${value}</option>
                                </c:forEach>
     	               </c:forEach>
    			      </select>		
    			</td>
    			<td align="right"><label style="width:130px;">配音员提交产品时间：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pmaturityTime }" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">打款时间：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pckTime}" readonly="readonly">
    			</td>
    			<td align="right"><label style="width:130px;">配音员最终酬金：</label></td>
    			<td align="left" width="250">
    				<input type="text" placeholder="" size="25" id="taginfoname" value="${pos.pthefinalfee}(RMB)" readonly="readonly">(已除去佣金(总金额-(总金额*15%)=佣金))
    			</td>
    		</tr>
    		<tr>
    			<td align="right"><label style="width:130px;">是否联系配音员：</label></td>
    			<td align="left" width="250">
    				 <select name="sflx" data-toggle="selectpicker" data-width="100">
    				  <c:forEach items="${lxztmap }" var="lxz">
							    <c:forEach items="${lxz.value}" var="value">
                                    <option id="index_in" value="${lxz.key}" <c:if test="${lxz.key == pos.pts}">selected="selected"</c:if>>${value}</option>
                                </c:forEach>
     	               </c:forEach>
    			      </select>
    			</td>
    			<td align="right"><label style="width:130px;">公司利润为:</label></td>
    			<td align="left" width="250">
    			<input type="text" placeholder="" size="25" id="taginfoname" value="${moneyt }(RMB)" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
    		<td align="right"><label style="width:130px;"></label></td>
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
