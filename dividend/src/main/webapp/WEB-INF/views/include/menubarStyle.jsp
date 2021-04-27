<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="The Baedangtop website's menu page" /> 
	<meta name="author" content="choi.you.min@gmail.com" /> 
	<title>배당닷컴 메뉴바</title>
</head>

<body>
	<style>
		#topMenu { 
			height: 30px; 
	        width: 100%; 
	      	position: fixed;
	      	top:0; left:0; 
	    }
	    #topMenu ul{
	      	font-size: 0;
	    }
	    #topMenu ul li { 
			list-style: none; 
			color: white; 
			background-color: #2d2d2d; 
			display: inline-block;
			vertical-align: middle;
			line-height: 30px; 
			vertical-align: middle; 
			text-align: center;
			position: relative;
	    }
	    #topMenu ul ul li { 
	      	display: block;
	    }
	    #topMenu ul ul li a{
	      	font-size: 12px;
			color: #fff;
			text-decoration: none;
			padding: 2px 0 3px;
			display: block;
	    }
	    #topMenu ul ul li a:hover{
	      	background: #666;
	    }
	    #topMenu .menuLink { 
			text-decoration:none; 
			color: white; 
			display: block; 
			width: 150px; 
			font-size: 12px; 
			font-weight: bold; 
			font-family: "Trebuchet MS", Dotum, Arial;
	    }
	    #topMenu .menuLink:hover {
			color: #ffcccc; 
			background-color: #4d4d4d;
	    }
	    ul li ul {
			display: none;
			position: absolute;
			padding: 0;
			left: 0;
			width: 100%;
		}
		ul li:hover ul {  
			display:block;
		}
		ul li ul li {
			float:none;
		}
	</style>
	
	<nav id="topMenu">
    <ul>
        <li><a class="menuLink" href="#">SERVICE</a></li>
        <li><a class="menuLink" href="#">TOP LINE</a></li>
        <li><a class="menuLink" href="#">COMMUNITY</a></li>
        <li><a class="menuLink" href="#">NOTICE</a></li>
        <li><a class="menuLink" href="#">CALCULATOR</a></li>
        <li><a class="menuLink" href="#">LOGIN</a>
        	<sec:authorize access="hasAnyRole('user)">
	        	<ul class="submenu">
			    	<li><a class="submenuLink longLink" href="#">LOGOUT</a></li>
			    	<li><a class="submenuLink longLink" href="#">MYPAGE</a></li>
			    	<li><a class="submenuLink longLink" href="#">MYFAVORATE</a></li>
		    	</ul>
	    	</sec:authorize>
        </li>
    </ul>
	</nav>
</body>
</html>