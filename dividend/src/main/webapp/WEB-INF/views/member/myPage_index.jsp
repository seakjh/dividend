<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 페이지</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
span {
	float: left;
	padding: 20px;
}

.card {
	width: 500px;
	height: 200px;
}
</style>
</head>
<body>
	<%@ include file="../include/header2.jsp"%>
	<br>
	<center>
		<div class="jumbotron">
			<h3>${member.member_name} 님환영합니다:)</h3>
			<p class="lead">This is a simple hero unit, a simple
				jumbotron-style component for calling extra attention to featured
				content or information.</p>
			<hr class="my-4">
			<%-- 
		 	 <img id="mypage" alt="마이페이지 화면" src="${pageContext.request.contextPath}/resources/img/mypage.jpg">
			 --%>
			<br>
			<table>
				<tr>
					<td>
						<div class="card text-white bg-primary mb-3"
							style="max-width: 20rem;">
							<div class="card-header">Member Infomation</div>
							<div class="card-body">
								<h4 class="card-title">회원정보</h4>
								<p class="card-text">
									회원 아이디 : ${member.member_id}<br> 회원 이름 :
									${member.member_name}<br>
							</div>
						</div>
					</td>
					<td>
						<div class="card text-white bg-primary mb-3"
							style="max-width: 20rem;">
							<div class="card-header">Member email</div>
							<div class="card-body">
								<h4 class="card-title">연락처</h4>
								<p class="card-text">
									회원 이메일 : ${member.member_email}<br>
								</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card text-white bg-primary mb-3"
							style="max-width: 20rem;">
							<div class="card-header">investment</div>
							<div class="card-body">
								<h4 class="card-title">나의 종목</h4>
								<p class="card-text">
									내가 담은 종목 리스트를 보여줍니다.<br>
								</p>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<p>It uses utility classes for typography and spacing to space
				content out within the larger container.</p>
			<p class="lead">
				<a class="btn btn-primary btn-lg" href="/app" role="button">홈으로</a>
			</p>
		</div>
	</center>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>