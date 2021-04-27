<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#findBtn").click(function(){
	
			$.ajax({
				url : "../member/findPw.do",
				type : "POST",
				data : {
					member_id : $("#member_id").val(),
					member_email : $("#member_email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<title>비밀번호 찾기</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br>
<br>

<div class="card border-secondary mb-3" style="max-width: 20rem;">
		<div class="card-header">what is your password :)?</div>
			  <div class="card-body">
			    <h4 class="card-title">비밀번호 찾기</h4>
			<form action="findPw.do" method="post">
				<p>
					<label>ID</label><br>	
					<input  class="form-control" placeholder="Enter ID" type="text" id="member_id" name="member_id" required>
				</p>
				<p>
					<label>Email</label><br>	
					<input class="form-control" placeholder="Enter email" type="text" id="member_email" name="member_email" required>
				</p>
				<br>
				<p class="w3-center">
					<button  class="btn btn-primary" type="submit" id=findBtn >find</button>
					<button  class="btn btn-secondary" type="button" onclick="history.go(-1);" >Cancel</button>
				</p>
			</form>
		</div>
</div>
</center>		

</body>
</html>