<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배당의 민족</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
}
tr {
	border-bottom: 1px soid #ccc;
}
th, td {
	width: 12.5%;
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
</style>
<%@ include file="./include/head.jsp" %>
<script type="text/javascript">
$(function() {
	$.ajax({
		contentType:"application/json",
		dataType:"json",
		url:"getDividendList.do",
		type:"get",
		success:function(data) {
			getList(data);
		}
	});
	
	$('#submit').click(function() {
		var searchCondition = $('.searchCondition').val();
		var searchKeyword = $('.searchKeyword').val();
		var sendData = 'searchCondition='+searchCondition+'&searchKeyword='+searchKeyword;
		
		$.post("getDividendList.do", sendData, function(data) {
			getList(data);
		});
		
		return false;
	});
	
});

function getList(dividend) {
	$('#divi-data').empty();
	
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
	$.each(dividend, function(i, val) {
		$('#divi-data').append(
			"<tr onClick='getDividend("+this.corp_code+")' style='cursor:pointer;'  onMouseOver=\"this.style.background='#fcc'\" onMouseOut=\"this.style.background=''\">"
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

function getDividend(code) {
	$(location).attr('href',"getDividend.do?corp_code="+code);
}
</script>
</head>
<body>
	<!--
	<center>
	</center>
	상세조회
	페이징처리
	-->
<%@ include file="./include/header.jsp" %>

<div id="container">
	<table id="divi-data">
	</table>
</div>
	
<%@ include file="./include/footer.jsp" %>
</body>
</html>