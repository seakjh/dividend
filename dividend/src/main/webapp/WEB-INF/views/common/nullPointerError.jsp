<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면(NullPointerExpt)</title>
</head>
<body bgcolor="#fff" text="#000">

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

</body>
</html>