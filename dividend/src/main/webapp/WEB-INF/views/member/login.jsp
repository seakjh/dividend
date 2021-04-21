<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  -->
<title>Login Page</title>
<%@ include file="../include/head.jsp"%>
<script type="text/javascript">
var user_id = "<%=(String) session.getAttribute("user_id")%>";
	function logout() { // 함수 기능 확인 필요!
		window.location.href = "";
	}
</script>

<style>
.login-input-wrap {
	width: 465px;
	height: 48px;
	border: solid 1px var(- -border-gray-color);
	background: white;
}

.password-wrap {
	margin-top: 13px;
}

.login-input-wrap input {
	border: none;
	width: 430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height: 30px;
}

.login-button-wrap {
	padding-top: 13px;
}
</style>
</head>
<body>
	<script>
		if (user_id == null) {
	</script>
	<form name="login" method="post" action="loginCheck.do">
		<div class="login-input-wrap">
			<input placeholder="Userid" type="text" name="member_id">
		</div>
		<div class="login-input-wrap password-wrap">
			<input placeholder="Password" type="password" name="member_password">
		</div>
		<div class="login-button-wrap">
			<button>Sign in</button>
		</div>
	</form>
	<br />
	<a href="">맨 처음 페이지로</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="join.do">회원가입</a>
	<br />
	<script>
		} else {
			alert("이미 로그인 된 상태입니다.");
			document.location.href = "";
		}
	</script>
</body>
</html>

<!-- 
	아이디 : <input type="text" id="user_id" name="user_id" /><br />
    패스워드 : <input type="password" id="user_pq" name="user_pw" /><br />
    
    <input type="submit" value="로그인" />
     
	<form action="" method="post">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="text" name="passwd">
		<p><input type="submit" value="전송">
	<form>
-->