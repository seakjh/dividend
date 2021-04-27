<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			location.href="login.do";
		})
	})
</script>
<title>아이디 찾기</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br>
<br>
<div class="card border-secondary mb-3" style="max-width: 20rem;">
		<div class="card-header">what is your id :)?</div>
			  <div class="card-body">
			    <h4 class="card-title">아이디 찾기 검색결과</h4>

			<div>
				<p>
					회원님의 아이디는 <b>${member_id}</b> 입니다.
				</p>
				<p>
					<button class="btn btn-primary" type="button" id=loginBtn >Login</button>
					<button class="btn btn-secondary" type="button" onclick="history.go(-1);" >Cancel</button>
				</p>
			</div>
		</div>
</div>
</center>			
	
</body>
</html>