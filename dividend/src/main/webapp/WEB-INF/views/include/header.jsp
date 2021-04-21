<%@page import="com.baedang.biz.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String member_id = (String)session.getAttribute("member_id");
%>
<header>
	<h1>배당의 민족</h1>
	<h3>주식배당 정보 모음</h3>
	
	<%if (member_id == null) { %>
	<a href="login.do">로그인</a>
	<%} else { %>
	<a href="mypage.do">마이페이지</a>
	<a href="logout.do">Log-out</a>
	<%} %>
	<a href="getBoardList.do">자유게시판</a>
	<a href="calculate.do">복리계산기</a>
	<a href="directions.do">찾아오시는 길</a>
</header>