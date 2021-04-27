<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배당탑닷컴</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
}

tr {
	border-bottom: 1px soid #ccc;
}

th {
	border-width: 2px 0 1px;
	border-style: solid;
	border-color: #333;
}

td {
	border-width: 0px 0 1px;
	border-style: solid;
	border-color: #ccc;
}

a {
	text-decoration: none;
	color: #333;
}

a:hover {
	color: #c33;
}

ul {
	list-style-type: none;
}

li {
	float: left;
}

footer {
	clear: both;
}

.table {
	border-collapse: collapse;
	width: 100%;
}

.table th {
	color: white;
	background: #ffcccc;
	font-size: 14px;
	text-align: center;
	width: 200px;
}

.table th, .table td {
	padding: 10px;
	border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child {
	border-left: 0;
}

.table th:last-child, .table td:last-child {
	border-right: 0;
}

.table tr td:first-child {
	text-align: center;
}

.table caption {
	caption-side: bottom;
	display: none;
}

.sub_table {
	text-align: left;
}

button {
	display: inline-block;
	padding: 12px 24px;
	background: rgb(220, 220, 220);
	font-weight: bold;
	color: rgb(120, 120, 120);
	border: none;
	outline: none;
	border-radius: 3px;
	cursor: pointer;
	transition: ease 0.3s;
}

button:hover {
	background: #8bc34a;
	color: #ffffff;
}

#sub_menu {
	top: -1.6em;
	padding: 10px;
	font-family: sans-serif;
	font-size: 1em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
}

#header1 {
	top: -1.6em;
	font-family: sans-serif;
	font-size: 1.2em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
}

#header2 {
	top: -1.6em;
	font-family: sans-serif;
	font-size: 1.2em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
}
</style>
<%@ include file="../include/head.jsp"%>
<script type="text/javascript">
var count =0;

$(function() {

});
</script>
</head>
<body>
<!--
<center>
</center>
-->
<%@ include file="../include/header.jsp" %>
<!-- 
<table>
	<tr>
		<td>
			<select name="searchCondition" class="searchCondition">
					<c:forEach items="${conditionMap }" var="option">
						<option value="${option.value }">${option.key }
					</c:forEach>
			</select> 
			<input name="searchKeyword" class="searchKeyword" type="text" /> 
			<input type="button" id="submit" value="검색" />
		</td>
	</tr>
</table>
 -->
<div id="container">
	<c:choose>
	
		<c:when test="${ fn:length(cartList) == 0 }">
			<p align="center" id="header2">관심종목이 선택되지 않았습니다 :(</p>
		</c:when>
		<c:otherwise>
			<table id="divi-data" class="table">
				<tr class=sub_table>
					<th align='center' width='15%'>종목코드</th>
					<th align='center' width='15%'>종목명</th>
					<th align='right' width='5%'>종목유형</th>
					<th align='right' width='15%'>배당지급월</th>
					<th align='right' width='12.5%'>배당금</th>
					<th align='right' width='12.5%'>1년전 배당금</th>
					<th align='right' width='12.5%'>2년전 배당금</th>
					<th align='right' width='12.5%'>3년전 배당금</th>
				</tr>
				<c:forEach items="${cartList }" var="cart">
					<tr
						onClick="location.href='getCart.do?cart_seq=${ cart.cart_seq }'"
						style='cursor: pointer;'
						onMouseOver="this.style.background='#fcc'"
						onMouseOut="this.style.background=''">
						<td align='center'>${ cart.dividend.corp_code }</td>
						<td align='center'>${ cart.dividend.corp_name }</td>
						<td align='right'>${ cart.dividend.corp_type }</td>
						<td align='right'>${ cart.dividend.dividend_month }</td>
						<td align='right'>${ cart.dividend.dividend_money }</td>
						<td align='right'>${ cart.dividend.oneyearago }</td>
						<td align='right'>${ cart.dividend.twoyearago }</td>
						<td align='right'>${ cart.dividend.threeyearago }</td>
					</tr>
				</c:forEach>
			</table>
            <br>
            <button id="btnUpdate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수정
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
            <button type="button" id="btnDelete">장바구니 비우기</button>	
		</c:otherwise>
	</c:choose>
	<br>
	<button type="button" id="btnList">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품목록
	&nbsp;&nbsp;&nbsp;&nbsp;</button>
<!-- 
	<button id="addBtn" onclick="moreList();">더보기</button>
	 -->
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>