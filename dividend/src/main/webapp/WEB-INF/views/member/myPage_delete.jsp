<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<%@ include file="../include/head.jsp"%>
<script type="text/javascript">
	$(function() {
		// 취소
		$(".cencle").on("click", function() {
			location.href = "/app";
		})

		/* 회원 탈퇴 */
		$("#submit1").on("click", function() {
			if ($("#password").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return false;
			}
			
			/*회원 탈퇴 비밀번호 체크	
			$.ajax({
				url : "passChk", 
				// 회원 탈퇴 버튼 눌렀을 때, ajax가 Controller에서 passChk로 요청 
				type : "POST",
				dataType : "json",
				data : $("#delForm").serializeArray(), 
				// Form에 있는 데이터 id, password 전달 
				success: function(data){
					
					if(data==0){ //sql문.  data에서 
						alert("패스워드가 틀렸습니다.");
						return;
					}else{ //성공했을 때 1
						if(confirm("회원 탈퇴 하시겠습니까?")){
							$("#delForm").submit();
						}
					}
				}
			});
			*/
		});
	});
</script>
</head>
<body>
	<center>
	
		<!-- 	회원탈퇴	-->
		<h4>회원 탈퇴를 원하시면 비밀번호를 입력하세요.</h4>
		<form action="memberDelete.do" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input class="form-control" type="text" id="id"
						name="member_id" value="${member.member_id}" readonly="readonly" />
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input class="form-control" type="password" id="password"
						name="member_password" />
					<td>
				</tr>
				<tr>
					<td></td>
					<td class="form-group has-feedback">
						<button class="btn btn-success" type="submit" id="submit1">회원탈퇴</button>
						<button class="cencle btn btn-danger" type="button">취소</button>
					</td>
				</tr>
				<tr>
					<%--
						<td>
							<c:if test="${msg == false}">
								비밀번호가 맞지 않습니다.
							</c:if>
						</td>
						--%>
				</tr>
			</table>
		</form>
		
	</center>
</body>
</html>