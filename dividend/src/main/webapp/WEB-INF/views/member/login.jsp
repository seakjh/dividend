<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>

<center>
	<h1>로그인</h1>
	<hr>
	<form action="login.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange">
					<label>아이디</label>
				</td>
				<td>
					<input type="text" name="id" size="20">
				</td>
			</tr>
			<tr>
				<td bgcolor="orange">
					<label>비밀번호</label>
				</td>
				<td>
					<input type="password" name="password" size="20">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</center>

</body>
</html>