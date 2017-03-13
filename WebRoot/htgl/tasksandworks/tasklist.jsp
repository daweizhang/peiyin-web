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
    <title>任务列表</title>
  </head>
  
  <body> 
	<div class="bjui-pageHeader">
		<form id="pagerForm" data-toggle="ajaxsearch" action="tasksandton.action" method="post">
			<input type="hidden" name="pageCurrent">
      		<input type="hidden" name="pageSize" >
       	 	<input type="hidden" name="orderField">
       <div class="bjui-searchBar">
       <br>
            <label>任务ID：</label><input type="text" name="tsName" class="form-control" size="20" value="${tsName }" >&nbsp;
            <label>任务发布人账户：</label><input type="text" name="tsUserName" class="form-control" size="20" value="${tsUserName }" >&nbsp;
			<button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
			<a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <button type="button" onclick="addobj()" name="dialog_add" class="btn btn-blue" data-icon="plus">新增</button>&nbsp; -->
			<!-- <button type="button" onclick="deleteList()" class="btn btn-red" data-icon="times">批量删除</button>&nbsp; -->
			<!-- <button type="button" class="btn btn-green" data-icon="sign-in" onclick="mission_import(this)">导入</button>&nbsp;
			<button type="button" class="btn btn-green" data-icon="fa-level-down" onclick="download(this)">模板下载</button> -->
            <div class="pull-right"> 
               <!-- <div class="btn-group">
                   <button type="button" class="btn-default dropdown-toggle" data-toggle="dropdown" data-icon="copy">复选框-批量操作<span class="caret"></span></button>
                    <ul class="dropdown-menu right" role="menu">
                        <li><a href="javascript:void(0);" onclick="expLastWeekSettleData();" >导出数据</a></li>
                    </ul>
                </div> -->
            </div>
        </div>
 	 </form>
	</div>
		<div class="bjui-pageContent tableContent">
		<table id="datagrid-publish-list" data-selected-multi="true" data-toggle="tablefixed" data-width="100%" >
        <thead>
            <tr height="35px" >
            	<th width="55" align="center"  class="datagrid-checkbox-td">
					<input type="checkbox" class="checkboxCtrl" data-group="product_id" data-toggle="icheck">
				</th>
				
				
	
				<th width="70" align="center">任务名称</th>
				<th width="70" align="center">国界</th>
            	<th width="70" align="center">任务类型</th>
            	<th width="70" align="center">任务发布人账户</th>
                <th width="70" align="center">任务发布时间</th>
                <th width="70" align="center">任务预算价格</th>
                <th width="70" align="center">任务当前竞标人数</th>
            	<th width="70" align="center">审核状态</th>
                <th width="100" align="center">操作</th> 
            </tr>
        </thead>
                       <%-- <fmt:formatDate value="${prodt.MUpdateTime }" pattern="yyyy-MM-dd hh:mm:ss"/> --%>
        <c:forEach items="${tsks.items }" var="ts">
        		<tr><!--  data-id="${item.MId}" id="adid" -->
        			<td align="center"><input type="checkbox" class="checkboxCtrl" name="product_id" data-toggle="icheck" value="${ts.btid}"></td>
					<td align="center">${ts.bftranslate.bfNames }</td>
					<c:if test="${ts.brwtype=='111' }">
					<td align="center">国外</td>
					</c:if>
					<c:if test="${ts.brwtype=='222' }">
					<td align="center">国内</td>
					</c:if>
					<td align="center">${ts.tvoice.tvtypeName }</td>
					<td align="center">${ts.bUserID }</td>
					<td align="center">${ts.btime }</td>
					<c:if test="${ts.brwtype=='111' }">
					<td align="center">${ts.bprice/6 }0(USD)</td>
					</c:if>
					<c:if test="${ts.brwtype=='222' }">
					<td align="center">${ts.bprice }.00(RMB)</td>
					</c:if>
					<td align="center">${ts.bcounts }</td>
					<td align="center">${ts.zstate.zbasName }</td>
					<td align="center">
        				 <button type="button" class="btn btn-green" data-icon="edit" onclick="updatePublish(this)">任务详细审核</button>
        				 <!-- <button type="button" class="btn btn-red" data-icon="times" onclick="deletePublish(this)">删除订单</button>	  -->
        			</td>
        		</tr>
        	</c:forEach>
      
    </table>
   
   
	</div>
	<div class="bjui-pageFooter" id="foot">
    <div class="pages">
        <span>每页&nbsp;</span>
        <div class="selectPagesize">
            <select name="publish_select" data-toggle="selectpicker" data-toggle-change="changepagesize">
                <option value="20">20</option>
                <option value="40">40</option>
                <option value="60">60</option>
                <option value="100">100</option>
            </select>
        </div>
        <span>&nbsp;条，共${tsks.totalCount }条</span>
    </div>
    <div class="pagination-box" data-toggle="pagination" data-total="${tsks.totalCount}" data-page-size="${tsks.pageSize}" data-page-current="${tsks.currPageNo}"></div>
</div>
</body>
<script type="text/javascript">
var doublec = 0;
function deleteList(){
	var publishIdList = new Array();
	if($("input[name='product_id']:checked").length>0){
  $("input[name='product_id']:checked").each(function(){
		var obj = {"product_id":$(this).val()};
		publishIdList.push(obj);
	});
	delajax(publishIdList);
	}else{
	 delajax(null);
	}
}

function datapick(el) {
		$(el).datepicker({
			pattern : 'yyyy-MM-dd HH:mm:ss'
		});
	}
	
function deletePublish(el){  
	var publish_id = $(el).parent().parent().find("input[name='product_id']").val();
	var obj = {"product_id":publish_id};
	var publishIdList = new Array();
	publishIdList.push(obj);
	delajax(publishIdList);
}

function delajax(data){
	if(doublec>0){
		return;
	}
	doublec++;
	if(!data){
		$(document).alertmsg('info','请选择需要删除的产品信息!');
		doublec = 0;
		return;
	}
	$(document).alertmsg('confirm',"确定要删除该产品信息?",{okCall:function(){
		$.ajax({
			url:'<%=request.getContextPath() %>/servlet/tproduct?action=deletetprouduct',
			data:{'idArray':JSON.stringify(data)},
			success:function(dt){
				doublec = 0;
				if(dt.statusCode=='200'){
					$(document).alertmsg('ok',dt.msg);
				}else{
					$(document).alertmsg('error',dt.msg);
				}
				$(document).navtab('refresh', 'Channelproduct');	
			}
		});
	},
	cancelCall:function(){
		doublec = 0;
	}
	});
	
}

function addobj(){
	$(this).dialog({
		mask:true,
		id:'publish_add_dialog', 
		url:'<%=request.getContextPath() %>/servlet/tproduct?action=addtproduct',
		title:'新增产品信息',
		width:800,height:600,
		mask:true,
		drawable:false,
		resizable:false,
		maxable:false,
	});
}


//修改数据弹窗
function updatePublish(el){
	var ptid = $(el).parent().parent().find("input[name='product_id']").val();
	$(el).dialog({
		mask:true,
		id:'publish_add_dialog', 
		url:'taskupdates.action',
		title:'任务资料',
		width:1200,height:1000,
		mask:true,
		drawable:false,
		resizable:false,
		maxable:false,
		data:{"tid":ptid}
	});
}

</script>

</html>
	