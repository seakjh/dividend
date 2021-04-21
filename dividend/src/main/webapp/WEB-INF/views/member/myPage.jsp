<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 페이지</title>
<style type="text/css">
span {
	float: left;
	padding: 20px;
}
</style>
<%@ include file="../include/head.jsp"%>
<script type="text/javascript">
	$(function() {
		// 취소
		$(".cencle").on("click", function() {
			location.href = "/board";
		});
		
		$("#submit").on("click", function() {
			if ($("#name").val() == "") {
				alert("변경할 닉네임을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			if ($("#email").val() == "") {
				alert("변경할 이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
		});
	});
</script>
</head>
<body>
	<center>
		<h1>${member.member_name}님환영합니다!</h1>
		<!-- 로그인했을 때의 세션 -->
		<form action="memberUpdate.do" method="post">
			<table>
				<tr>
					<td><h4>회원 정보를 수정하세요.</h4></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input class="form-control" type="text" id="id"
						name="member_id" value="${member.member_id}" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input class="form-control" type="text" id="name"
						name="member_name" placeholder="닉네임 변경" />
					<td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input class="form-control" type="text" id="email"
						name="member_email" placeholder="이메일 변경" /></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button class="btn btn-success" type="submit" id="submit">회원정보
							수정</button>
						<button class="cencle btn btn-danger" type="button">취소</button>
					</td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="memberDelete.do">회원 탈퇴를 원하시면 클릭해주세요</a></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>