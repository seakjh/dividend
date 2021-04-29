<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
<style type="text/css">
table {
	width: 600px;
}
td {
	height: 30px;
}
td:first-child {
	padding-left: 15px;
	text-align: left;
}
td:last-child {
	padding-left: 15px;
	text-align: left;
}

.table {
	border-collapse: collapse;
	width: 800px !important;
	border-left: 0px !important;
	border-right: 0px !important;
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

.table tr td{
	text-align: center !important;
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
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<!-- 
	 -->
	<center>
		<hr>
		<form action="deleteCart.do" method="post">
			<input type="hidden" name="cart_seq" value="${ cart.cart_seq }">
			<table class="table" border="1" cellpadding="0" cellspacing="0">
				<tr class="sub_table">
					<td bgcolor="#fcc" width="200px">종목코드</td>
					<td align="left" width="400px">${cart.dividend.corp_code }</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc" width="70">종목명</td>
					<td align="left">${cart.dividend.corp_name }</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">종목타입</td>
					<td align="left">${cart.dividend.corp_type }</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">현재가</td>
					<td align="left">${cart.dividend.corp_status }</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">배당지급월</td>
					<td align="left">${cart.dividend.dividend_month }</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">배당금</td>
					<td align="left">${cart.dividend.dividend_money }원</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">수익률</td>
					<td align="left">${cart.dividend.dividend_rate }%</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">1년전 배당금</td>
					<td align="left">${cart.dividend.oneyearago }원</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">2년전 배당금</td>
					<td align="left">${cart.dividend.twoyearago }원</td>
				</tr>
				<tr class="sub_table">
					<td bgcolor="#fcc">3년전 배당금</td>
					<td align="left">${cart.dividend.threeyearago }원</td>
				</tr>
			</table>
			<button type="submit" id="submit">관심종목 삭제</button>
		</form>
	</center>
		<hr>
<%-- 		<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">글목록</a> --%>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
