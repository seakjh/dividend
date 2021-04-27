<%@page import="com.baedang.biz.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String member_id = (String)session.getAttribute("member_id");
%>
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
	
	#logo{
		height:40px;
	}
	
	span{
			float: left;
			padding: 20px;
			
	}
	
	
	
	
	
</style>

<header>
<br>
	<a href="/app">
		<img id="logo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_img.jpg">
		<img id="logo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_txt.jpg">
	</a>
	<br>
	<br>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/app/mypage.do">My page</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mypageChange.do">information change&nbsp;&nbsp;&nbsp;</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="memberDelete.do">membership withdrawal&nbsp;&nbsp;&nbsp;</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="memberChangePw.do">password change</a>
      </li>
      
    </ul>
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>
<br>	
</header>