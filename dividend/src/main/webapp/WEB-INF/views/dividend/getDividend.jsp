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
</style>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<!-- 
	 -->
	<center>
		<hr>
		<form action="insertCart.do" method="post">
			<input name="dividend.corp_code" type="hidden" value="${dividend.corp_code}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#fcc" width="200px">종목코드</td>
					<td align="left" width="400px">${dividend.corp_code }</td>
				</tr>
				<tr>
					<td bgcolor="#fcc" width="70">종목명</td>
					<td align="left">${dividend.corp_name }</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">종목타입</td>
					<td align="left">${dividend.corp_type }</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">현재가</td>
					<td align="left">${dividend.corp_status }</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">배당지급월</td>
					<td align="left">${dividend.dividend_month }</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">배당금</td>
					<td align="left">${dividend.dividend_money }원</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">수익률</td>
					<td align="left">${dividend.dividend_rate }%</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">1년전 배당금</td>
					<td align="left">${dividend.oneyearago }원</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">2년전 배당금</td>
					<td align="left">${dividend.twoyearago }원</td>
				</tr>
				<tr>
					<td bgcolor="#fcc">3년전 배당금</td>
					<td align="left">${dividend.threeyearago }원</td>
				</tr>
 				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="관심종목 등록" />
					</td>
				</tr>
			</table>
		</form>
	</center>
		<hr>
<%-- 		<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">글목록</a> --%>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
