<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 String portraitPath =request.getContextPath()+"/upload/admin/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	//修改
	function editdata(A_id){
		$(document).dialog({
			id:'contentrule_edit_dialog',
			width:324,
			height:394,
			url:'isadlogin!editAisadminInit.action', 
			data: {"aisadmin.aid":A_id},
			title:'编辑管理员信息',
			mask:true,
			resizable:false,
			drawable:false,
			maxable:false
		});
	}
	
						
	//删除
	function deleteData(id){
		$(document).alertmsg('confirm','是否删除该管理员',{'okCall':function(){
			$.ajax({
				url:'isadlogin!deleteAdminData.action',
				type:'post',
				data:{"aisadmin.aid":id},
				success:function(data){
					if(data=="0000"){
						$("#"+id).remove();
					}
					
				}
			});
		}});
	}
	
	</script>

  </head>
  
  <body> 


	<div class="bjui-pageHeader">
		<form id="pagerForm" data-toggle="ajaxsearch" action="isadlogin!getAisadminList.action" method="post">
			<input type="hidden" name="pageinfo.currPageNo" value="${infolabelPlh.pageNumber }">
      		<input type="hidden" name="pageinfo.pageSize" value="${infolabelPlh.objectsPerPage}">
       	 	<input type="hidden" name="orderField" value="${param.orderField}">
       <div class="bjui-searchBar">
               <label>管理员账号:</label><input type="text" name="aisadmin.aisadmName" class="form-control" value="${aisadmin.aisadmName}" size="12">&nbsp;<label>管理员姓名:</label><input type="text" name="aisadmin.aisadName" class="form-control" value="${aisadmin.aisadName}" size="12">
            <button type="submit" class="btn-default" data-icon="search" id="search">查询</button>&nbsp;

            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%-- <button type="submit" class="btn btn-default" data-toggle="navtab" data-id="mynavtab" data-reload-warn="已打开业务页面，确认将重新载入?"
			 data-url="<%=request.getContextPath() %>/servlet/content_add" data-title="新增">新增</button> --%>
			 			<button type="button" class="btn btn-blue" data-toggle="dialog" 
			 			data-options="{'url':'<%=request.getContextPath() %>/htgl/usercontrol/add.jsp','id':'contentrule_add_dialog','title':'新增管理员','mask':true,width:304,height:250,'resizable':false,'drawable':false,'maxable':false}" 
			 			data-icon="plus">新增</button>&nbsp;
            <div class="pull-right">  	
           
            
            </div>
        </div>
 	 </form>
	</div>
	<div class="bjui-pageContent tableContent">
		<table id="datagrid-User-list" data-selected-multi="true" data-toggle="tablefixed" data-width="100%" >
        <thead>
            <tr height="35px" >
				<th width="28" align="center">头像</th>
				<th width="70" align="center">管理员账号</th>
            	<th width="50" align="center">管理员姓名</th>
            	<th width="35" align="center">性别</th>
            	<th width="90" align="center">邮箱 </th>
            	<th width="70" align="center">联系电话 </th>
            	<th width="90" align="center">登录时间 </th>
            	<th width="90" align="center">登录IP</th>
                <th width="100" align="center">操作</th>
                  
            </tr>
        </thead>
	
        	<c:forEach items="${requestScope.pageinfo.items}" var="admin">
        		<tr data-id="" id="${admin.aid}" height="40px">
        			
        			<td align="center"><c:if test="${not empty admin.aisadPortrait}"><img src=<%=portraitPath%>${admin.aisadPortrait} width="35px" height="35px" /></c:if></td>
        			<td align="center">${admin.aisadmName}</td>
        			<td align="center">${admin.aisadName}</td>
        			<td align="center">${admin.aisadSex}</td>
        			<td align="center">${admin.aisadEmail}</td>
        			<td align="center">${admin.aisadPhone}</td>
        			<td align="center">${admin.aisadlastTime}</td>
        			<td align="center">${admin.aisadip}</td>
					<td align="center">
        				 <button type="button" class="btn btn-green" data-icon="edit" onclick="editdata('${admin.aid}')">编辑</button>
        				
        				 <button type="button" class="btn btn-red" data-icon="close" onclick="deleteData('${admin.aid}')">删除</button>
        			</td>
        		</tr>
        		
        	</c:forEach>
      
    </table>
    </div>
	<div class="bjui-pageFooter" id="foot">
    <div class="pages">
        <span>每页&nbsp;</span>
        <div class="selectPagesize">
            <select data-toggle="selectpicker" data-toggle-change="changepagesize">
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
            </select>
        </div>
        <span>&nbsp;条，共 ${pageinfo.totalCount} 条</span>
    </div>
    <div class="pagination-box" data-toggle="pagination" data-total="${pageinfo.totalCount}" data-page-size="${pageinfo.pageSize}" data-page-current="${pageinfo.currPageNo}"></div>
</div>

</body>
</html>
