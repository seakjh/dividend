<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<table id="divi-data">
		<tr>
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
			<tr onClick="location.href='getCart.do?cart_seq=${ cart.cart_seq }'" style='cursor:pointer;'  onMouseOver="this.style.background='#fcc'" onMouseOut="this.style.background=''">
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
	<!-- 
	<button id="addBtn" onclick="moreList();">더보기</button>
	 -->
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>