<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
<%@ include file="../include/head.jsp"%>
<style type="text/css">
	
</style>
</head>
<body>
	
	<table class="table">
		<tr>
			<th rowspan="2">
				댓글수
			</th>
			<td>
				<h4 align="left">${freeboard.title}</h4>
			</td>
		</tr>
		<tr>
			<td>
				${freeboard.name}
			</td>
		</tr>
	</table>
	
		<div align="right">
			<a  href="insertBoardForm.do">글등록</a>&nbsp;&nbsp;&nbsp; 
		</div>
		
</body>
</html>