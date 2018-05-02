<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:set var="path" value="${pageContext.request.contextPath}" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
	<title>字典信息</title>
	<script src="${path}/static/jquery-3.1.1.in.js"></script>
</head>
<body>
	 <table>
	 	<tr>
	 		<th colspan="4"></th>
	 	</tr>
	 	<tr>
	 		<th>類別名</th>
	 		<th>字典名</th>
	 		<th>字典值</th>
	 		<th>操作   [<a href="${path}/dicts/add">新增</a>]</th>
	 	</tr>
	 	<c:forEach items="${dicts}" var="dict">
	 		<tr id="dict-${dict.id}">
	 			<td>${dict.code}</td>
	 			<td>${dict.name}</td>
	 			<td>${dict.value}</td>
	 			<td>[<a href="${path}/dicts/add?id=${dict.id}">編輯</a>]
	 			    [<a href="javascript:;" onclick="deleteById(${dict.id},${dict.name})">刪除</a>]
	 			</td>
	 		</tr>
	 	</c:forEach>
	 </table>
	 <script>
	 	function deleteById(id, label){
	 		var r = confirm('確定要刪除"'+label+'"嗎?"')
	 		if(r){
	 			$.ajax({
	 				url: '${path}/dicts/delete',
	 				data: {
						id: id
	 				},
	 				dataType: 'json',
	 				type: 'POST',
	 				success: function(data){
	 					if(data.success){
	 						$('#dict-'+id).remove;
	 					}else{
	 						alert(data.msg);
	 					}
	 				}
	 			})
	 		}
	 	}
	 </script>
</body>
</html>