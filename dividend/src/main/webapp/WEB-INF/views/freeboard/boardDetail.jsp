<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<%@ include file="../include/head.jsp"%>
</head>
<body>
<center>
	<table>
		<tr>
		<th>${freeboard.title}</th>
		</tr>
		<tr>
		<td align="left">${freeboard.member_name}</td>
		<td align="right">${freeboard.frboard_count}</td>
		<td align="right">${freeboard.regdata}</td>
		</tr>
	</table>
	<table>
	<tr>
	<td>${freeboard.content}</td>
	</tr>
	<tr>
	<td><img src=""></td>
	</tr>
	</table>
		<div>댓글 작성자 이름</div>
		<div>댓글 내용</div>
	<h6></h6>
	<form>
		<h6>{freeboard.member_id}</h6>
		<input type="textarea" placeholder="댓글">
	</form>
	<a href="deleteBoard.do?seq=${ board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글목록</a>
	
</center>
</body>
</html>