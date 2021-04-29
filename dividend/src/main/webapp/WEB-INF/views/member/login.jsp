<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 배당닷컴</title>
<%@ include file="../include/head.jsp"%>
<style>
   :root{
      --body-background-color: #f5f6f7;
      --font-color: #4e4e4e;
      --border-gray-color : #dadada;
      --naver-green-color: #04c75a;
      --naver-green-border-color: #06b350;
   }
   *{
      margin:0;
      padding:0;
   }
   body{
      background:var(--body-background-color);
   }
   .main-container{
      width:100%;
      display:flex;
      flex-direction:column;
      align-items:center;
      margin-top: 21px;
   }
   .main-container .main-wrap{
      width:768px;
   }
   .main-container .main-wrap .sel-lang-wrap .lang-select
   {
      width: 96px;
      height: 30px;
      color: var(--font-color);
      border: solid 1px var(--border-gray-color);
   }
   .main-container .main-wrap .logo-wrap{
      padding-top:55px;
   }
   .main-container .main-wrap .logo-wrap img
   {
      width: 231px;
      height: 128px;
   }
   .main-container .main-wrap header .sel-lang-wrap{
      display:flex;
      justify-content:flex-end;
   }
   .main-container .main-wrap header .logo-wrap{
      display:flex;   
      flex-direction: column;
      align-items: center;
   }
   .login-input-section-wrap{
      padding-top: 60px;
      display: flex;
      flex-direction: column;
      align-items: center;
   }
   .login-input-wrap{
      width: 465px;
      height :48px;
      border: solid 1px var(   --border-gray-color );
      background: white;
   }
   .password-wrap{
      margin-top: 13px;
   }
   .login-input-wrap input{
      border: none;
      width:430px;
      margin-top: 10px;
      font-size: 14px;
      margin-left: 10px;
      height:30px;
   }
   .login-button-wrap {
      padding-top: 13px;
   }
   .login-button-wrap button{
      width: 465px;
      height :48px;
      font-size: 18px;
      background: #ffcccc;
      color: white;
      border: solid 1px #ffcccc;
   }
   .Easy-sgin-in-wrap{
      display: flex;
      flex-direction: column;
      align-items: center;
      padding-top: 40px;
   }
   .Easy-sgin-in-wrap h2{
      font-size: 20px;
   }
   .Easy-sgin-in-wrap .sign-button-list
   {
      padding-top:25px;
      list-style: none;
      width: 465px;
      display: flex;
      flex-direction: column;
      align-items: center;
   }
   .Easy-sgin-in-wrap .sign-button-list li{
      padding-bottom: 10px;
   }
   .Easy-sgin-in-wrap .sign-button-list li button{
      width: 465px;
      height: 56px;
      border: solid 1px var(--border-gray-color);
      text-align: left;
      background: white;
   }
   .Easy-sgin-in-wrap .sign-button-list li button i{
      padding-left: 15px;
      font-size: 20px;
   }
   .fa-qrcode
   {
      color:var(--naver-green-color);
   }
   .fa-line{
      color:var(--naver-green-color);
   }
   .fa-facebook-square
   {
      color:#4064ac;
   }
   .Easy-sgin-in-wrap .sign-button-list li button span{
      padding-left: 20px;
      font-size: 18px;
   }
   .Easy-sgin-in-wrap .forget-msg{
      color:var(--font-color);
      font-size: 14px;
      padding-top: 10px;
   }
   footer{
      padding-top: 95px;
      padding-bottom: 15px;
   
      display:flex;
      flex-direction:column;
      align-items:center;
      width:768px;
   }
   .copyright-wrap{
      display: flex;
      flex-direction: column;
      align-items: center;
      height: 15px;
   }
   footer .copyright-wrap span img{
      width: 59px;
      height: 33px;
      
   }
   footer .copyright-wrap span{
      font-size: 13px;
      line-height: 15px;
   }
   a {
   		text-decoration: none;
   }
   a:hover {
		color: #fcc;
	}
</style>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="https://kit.fontawesome.com/51db22a717.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
var member_id = "<%=(String) session.getAttribute("member_id")%>";
function logout() {
	window.location.href = "logout.do";
}

$(function() {
	$("#signin").click(function() {
		if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
		if ($("#pw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#pw").focus();
			return false;
		}
	});
});
</script>
</head>

<body>
	<script>
		if (member_id == null) {
	</script>
	<div class="main-container">
		<div class="main-wrap">
			<header>
				<div class="logo-wrap">
					<img src="./resources/img/logo.png">
				</div>
			</header>
			<form class="login-input-section-wrap" method="post" action="loginCheck.do">
				<div class="login-input-wrap">
					<input placeholder="Username" id="id" type="text" name="member_id"></input>
				</div>
				<div class="login-input-wrap password-wrap">
					<input placeholder="Password" id="pw" type="password" name="member_password"></input>
				</div>
				<div class="login-button-wrap">
					<button id="signin">Sign in</button>
				</div>
			</form>

			<section class="Easy-sgin-in-wrap">
				<h2>Other DirectPage</h2>
				<ul class="sign-button-list">
					<li>
						<button>
							<i class="fas fa-atlas"></i>
							<span>
								<a href="/app">Redirect to mainpage</a>
							</span>
						</button>
					</li>
					<li>
						<button>
							<i class="fas fa-align-justify"></i>
							<span>
								<a href="join.do">Register</a>
							</span>
						</button>
					</li>
				</ul>
				<p class="forget-msg">
					Forgot your <a href="findId.do">Username</a> or <a href="findPw.do">Password?</a> | <a href="join.do">Sign up</a>
				</p>
			</section>
			<footer>
				<div class="copyright-wrap">
					<span>Copyright © BAEDANGTOP. All Rights Reserved.</span>
				</div>
			</footer>
		</div>
	</div>
	<script>
		} else {
			alert("이미 로그인 된 상태입니다.");
			document.location.href = "";
		}
	</script>
</body>
</html>

<!-- 
<body>
	<script>
		if (user_id == null) {
	</script>
	<form name="login" method="post" action="loginCheck.do">
		<div>
			아이디<br>
			<input  type="text" name="member_id"><br>
	
			비밀번호<br>
			<input  type="password" name="member_password"><br>
			
			<br>
			<button class="btn btn-primary">Sign in</button>
		</div>
	</form>
	<br />
	<a href="/app">맨 처음 페이지로</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="join.do">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="findId.do">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="findPw.do">비밀번호 찾기</a>
	<br />
	<script>
		} else {
			alert("이미 로그인 된 상태입니다.");
			document.location.href = "";
		}
	</script>
</body>

 -->