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
<%@ include file="../include/head.jsp"%>
<style type="text/css">
span {
	float: left;
	padding: 20px;
}

.card {
	width: 500px;
	height: 200px;
}
.bg-primary-pink {
	background: #E386B2 !important;
}

.button-p {
  display: inline-block;
  padding: 12px 24px;
  background: rgb(220, 220, 220);
  font-weight: bold;
  color: rgb(120, 120, 120);
  border: none;
  outline: none;
  border-radius: 3px;
  cursor: pointer;
  transition: ease 0.3s;
}
.button-p:hover {
	text-decoration: none;
  background: #8bc34a;
  color: #ffffff;
}

</style>
</head>
<body>
	<%@ include file="../include/header2.jsp"%>
	<br>
	<center>
		<div class="jumbotron">
			<h3>${member.member_name}님 환영합니다:)</h3>
			<p class="lead">
			여러분을 환영합니다. 다양한 배당탑 서비스를 즐겨보세요.<br>
			배당탑은 이용자 개인정보 보호를 여러 경영요소 가운데 최우선의 가치로 두고 있습니다.</p>
			<hr class="my-4">
			<%-- 
		 	 <img id="mypage" alt="마이페이지 화면" src="${pageContext.request.contextPath}/resources/img/mypage.jpg">
			 --%>
			<br>
			<table>
				<tr>
					<td>
						<div class="card text-white bg-primary-pink mb-3"
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
	              	&nbsp;&nbsp;&nbsp;&nbsp;
	               	</td>					
					<td>
						<div class="card text-white bg-primary-pink mb-3"
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
	               &nbsp;&nbsp;&nbsp;&nbsp;
	               </td>
					<td>
						<div class="card text-white bg-primary-pink mb-3"
							style="max-width: 20rem;">
							<div class="card-header">investment</div>
							<div class="card-body">
								<h4 class="card-title">
									<a href="getCartList.do" style="color: #fff; text-decoration: none;">나의 종목</a>
								</h4>
								<p class="card-text">
									<a href="getCartList.do" style="color: #fff; text-decoration: none;">내가 담은 종목 리스트를 보여줍니다.</a><br>
								</p>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<p>원칙적으로 이용자 동의 없이 개인정보를 외부에 제공하지 않습니다.</p>
			<p class="lead">
				<a class="button-p" href="/app" role="button">홈으로</a>
			</p>
			<!--  btn btn-primary btn-lg -->
		</div>
	</center>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>