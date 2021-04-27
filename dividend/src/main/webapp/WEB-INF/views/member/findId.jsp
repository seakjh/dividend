<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  

<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>아이디 찾기</title>

<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br>
<br>
<form action="findId.do" method="post">

			
<div class="card border-secondary mb-3" style="max-width: 20rem;">
		<div class="card-header">what is your id :)?</div>
			  <div class="card-body">
			    <h4 class="card-title">아이디 찾기</h4>
			    <p class="card-text">
			    	<p>
						<label>Email</label>
					<br>	
						<input class="form-control" placeholder="Enter email"  type="text" id="member_email" name="member_email" >						 
					</p>
					<br>
					<p >
						<button class="btn btn-primary" type="submit" id=findBtn >find</button>
						<button class="btn btn-secondary" type="button" onclick="history.go(-1);" >Cancel</button>
					</p>
			    </p>
			  </div>
</div>

</form>
</center>			
</body>
</html>