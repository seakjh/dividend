<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면(NullPointerExpt)</title>
<%@ include file="../include/head.jsp"%>
</head>
<body bgcolor="#fff" text="#000">
<%@ include file="../include/header.jsp"%>

<table width="100%" border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td align="center" bgcolor="orange"><b>기본 에러 화면</b></td>
	</tr>
</table>

<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td align="center">
		<br>
		<br>
		<br>
			Message : ${ exception.message }
		<br>
		<br>
		<br>
		</td>
	</tr>
</table>

<%@ include file="../include/footer.jsp"%>
</body>
</html>