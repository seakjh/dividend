<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면(ArithmeticExpt)</title>
<%@ include file="../include/head.jsp"%>
<style type="text/css">
table b {
	color: #fff;
}
table {
	border-bottom: 1px solid #333;
	border-top: 1px solid #333;
}
</style>
</head>
<body bgcolor="#fff" text="#000">

<%@ include file="../include/header.jsp"%>
<table width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td align="center" bgcolor="#E386B2"><b>Message</b></td>
	</tr>
	<tr>
		<td align="center">
		<br>
		<br>
			${ exception.message }
		<br>
		<br>
		<br>
		</td>
	</tr>
</table>

<%@ include file="../include/footer.jsp"%>
</body>
</html>