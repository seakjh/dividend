<%@page import="com.baedang.biz.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String member_id = (String)session.getAttribute("member_id");
%>
<style>
header {
    transition: padding .3s ease;
	position: fixed;
    width: 100%;
    padding: 2rem 2rem 2rem 1.5rem;
    z-index: 3;
    background-color: rgba(255,255,255,0.8);
}
#p-header {
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
#toplogo {
    /*width: clamp(16rem, calc(270/1440*100vw), 27rem);*/
    transition: width .3s ease;
    width: 16.5rem;
}
#mainlogo{
	width: 300px;
	height: auto;
	display: flex;
}
a {
	color: var(--base-color);
    text-decoration: none;
    transition: opacity .3s ease;
    background-color: transparent;
}
nav {
    height: 100%;
    width: auto;
    opacity: 1;
    visibility: visible;
    background: rgba(255,255,255,0);
    padding: 0;
    margin-left: auto;
}
nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
}
nav ul li {
    margin: 0;
    padding: 0;
}

#blank {
	height: 200px;
}

#divi-data {
	color: #626262; 
	font: 400 0.875rem/1.375rem "Raleway", sans-serif;
	min-width: 1200px;
}
.cnd-srch {
	color: #626262; 
	font: 400 0.875rem/1.375rem "Raleway", sans-serif;
	min-width: 1200px;
}
footer {
	width: 100%;
	display: flex;
}
.copyright {
    padding-top: 1rem;
    padding-bottom: 0.375rem;
    text-align: center;
    width: 100%;
}
</style>
<header>
	<div id="p-header">
		<div id="toplogo">
			<a href="/app">
				<img id="mainlogo" alt="배당의 민족" src="${pageContext.request.contextPath}/resources/img/toplogo.png">
			</a>
		</div>
		<nav id="topMenu">
		    <ul>
		        <li>
		        	<a class="menuLink" href="/app">SERVICE</a>
		        		<ul class="submenu">
		        			<li><a class="submenuLink longLink"  href="page_Introduce.do">INTRO</a></li>
		        			<li><a class="submenuLink longLink"  href="projectMember.do">MADE BY</a></li>
		        		</ul>
		        </li>
		        <li><a class="menuLink" href="getDividendMain.do">TOP LINE</a></li>
		        <li><a class="menuLink" href="boardList.do">COMMUNITY</a></li>
		        <!-- <li><a class="menuLink" href="#">NOTICE</a></li> -->
		        <li>
		        	<a class="menuLink" href="#">UTILITY</a>
		        		<ul class="submenu">
		        			<li><a class="submenuLink longLink" href="calculate.do">CALCULATOR</a></li>
		        			<li><a href="test_investment.do">투자성향테스트</a></li>
		        		</ul>
		        </li>
		        <li>
		        	<%if (member_id == null) { %>
		        	<a class="menuLink" href="login.do">LOGIN</a>
		       		<%} else { %>
		       		<a class="menuLink" href="mypage.do">MYPAGE</a>
		        	<ul class="submenu">
				    	<li><a class="submenuLink longLink" href="logout.do">LOGOUT</a></li>
				    	<li><a class="submenuLink longLink" href="getCartList.do">MYFAVORATE</a></li>
			    	</ul>
					<%} %>
		        </li>
		    </ul>
		</nav>
	</div>
</header>
<%--         	<sec:authorize access="hasRole('user')">
	    	</sec:authorize> --%>
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
	
	
<div id="blank">
&nbsp;
</div>