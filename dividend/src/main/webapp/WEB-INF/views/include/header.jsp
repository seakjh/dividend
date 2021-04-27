<%@page import="com.baedang.biz.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String member_id = (String)session.getAttribute("member_id");
%>

<header>
	<a href="/app">
		<img id="logo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_img.jpg">
		<img id="logo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/logo_txt.jpg">
	</a>
	<h3>주식배당 정보 모음</h3>
	
<%-- 	<%if (member_id == null) { %>
	<a href="login.do">로그인&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<%} else { %>
	<a href="mypage.do">마이페이지&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="logout.do">로그아웃&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="getCartList.do">나의 관심종목&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<%} %>
	<a href="getDividendMain.do">배당종목&nbsp;&nbsp;</a>&nbsp;&nbsp;
	<a href="getBoardList.do">자유게시판&nbsp;&nbsp;</a>|&nbsp;&nbsp;
	<a href="calculate.do">복리계산기&nbsp;&nbsp;</a>|&nbsp;&nbdsp;
	<a href="directions.do">찾아오시는 길</a>&nbsp;&nbsp; --%>
</header>

<nav id="topMenu">
    <ul>
        <li><a class="menuLink" href="/app">SERVICE</a></li>
        <li><a class="menuLink" href="getDividendMain.do">TOP LINE</a></li>
        <li><a class="menuLink" href="getBoardList.do">COMMUNITY</a></li>
        <li><a class="menuLink" href="#">NOTICE</a></li>
        <li><a class="menuLink" href="calculate.do">CALCULATOR</a></li>
        <li><a class="menuLink" href="login.do">LOGIN</a>
        	<sec:authorize access="hasAnyRole('user')">
	        	<ul class="submenu">
			    	<li><a class="submenuLink longLink" href="logout.do">LOGOUT</a></li>
			    	<li><a class="submenuLink longLink" href="mypage.do">MYPAGE</a></li>
			    	<li><a class="submenuLink longLink" href="getCartList.do">MYFAVORATE</a></li>
		    	</ul>
	    	</sec:authorize>
        </li>
    </ul>
</nav>