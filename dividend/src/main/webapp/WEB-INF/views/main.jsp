<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배당의 민족</title>
<style type="text/css">
table {
	border: 1px solid #000;
	border-collapse: collapse;
	width: 100%;
}
th, td {
	width: 12.5%;
}
</style>
<script src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$('#divi-data').append(
		"<tr>"
		+"<th>종목코드</th>"
		+"<th>종목명</th>"
		+"<th>종목유형</th>"
		+"<th>배당지급월</th>"
		+"<th>배당금</th>"
		+"<th>1년전 배당금</th>"
		+"<th>2년전 배당금</th>"
		+"<th>3년전 배당금</th>"
		+"</tr>"
	);
	$.ajax({
		contentType:"application/json",
		dataType:"json",
		url:"getDividendList.do",
		type:"get",
		success:function(data) {
			getList(data);
		}
	});
});

function getList(dividend) {
	$.each(dividend, function(i, val) {
		$('#divi-data').append(
			"<tr>"
			+"<td align='center'>"+this.corp_code+"</td>"
			+"<td align='center'>"+this.corp_name+"</td>"
			+"<td align='center'>"+this.corp_type+"</td>"
			+"<td align='center'>"+this.dividend_month+"</td>"
			+"<td align='center'>"+this.dividend_money+"</td>"
			+"<td align='center'>"+this.oneyearago+"</td>"
			+"<td align='center'>"+this.twoyearago+"</td>"
			+"<td align='center'>"+this.threeyearago+"</td>"
			+"</tr>"
		);
	});
}
</script>
</head>
<body>
	<!--
	<center>
	</center>
	-->
	<h1>배당의 민족</h1>
	<h3>주식배당 정보 모음</h3>
	<a href="login.do">로그인</a>
	<a href="join.do">회원가입</a>
	<a href="mypage.do">마이페이지</a>
	<a href="logout.do">Log-out</a>
	<a href="getBoardList.do">글 목록 바로가기</a>
	<a href="calculate.do">복리계산기</a>
	<!-- 검색 시작 
	-->
	<form action="getBoardList.do" method="post">
		<table>
			<tr>
				<td align="right">
				<select name="searchCondition">
					<c:forEach items="${conditionMap }" var="option">
						<option value="${option.value }">${option.key }
					</c:forEach>							
				</select> 
				<input name="searchKeyword" type="text" /> 
				<input type="submit" value="검색" /></td>
			</tr>
		</table>
	</form>
	<hr>
	<br>
	<br>
	<br>

	<!-- 검색 종료 -->
	
	<div id="container">
		<table id="divi-data" border="1">
		</table>
	</div>
</body>
</html>