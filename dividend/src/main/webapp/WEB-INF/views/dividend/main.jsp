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
	text-align: right !important;
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
	background: #E386B2;
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
	text-align: right;
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
.form-control {
	display: inline !important;
	width: 150px !important;
}
.searchCondition, .searchKeyword{
	vertical-align: middle;
}
</style>
<%@ include file="../include/head.jsp"%>
<script type="text/javascript">
var count =0;

$(function() {
	moreList(); //함수 호출
	
/*
	$.ajax({
		contentType:"application/json",
		dataType:"json",
		url:"getDividendList.do",
		type:"get",
		success:function(data) {
			getList(data);
		}
	}); 
*/
	
	$('#submit').click(function() {
		var searchCondition = $('.searchCondition').val();
		var searchKeyword = $('.searchKeyword').val();
		var sendData = 'searchCondition='+searchCondition+'&searchKeyword='+searchKeyword;
		$.post("getDividendList.do", sendData, function(data) {
			if(data.length < 10){
				$("#addBtn").remove();   // 더보기 버튼을 div 클래스로 줘야 할 수도 있음
			}
			getList(data);
		});
		return false;
	});
});

function moreList() {
	var dataLength = $("#divi-data tr").length;
	count = count+20;
	console.log("count", count); 
	
	$.ajax({
		contentType:"application/json",
		dataType:"json",
		url:"getDividendList.do",
		type : "get",
		data : {
			"count":count
		},
		success : function(data) {
			if(data.length < 10){
				$("#addBtn").remove();   // 더보기 버튼을 div 클래스로 줘야 할 수도 있음
			}
			else{
				if(data.length > 0){
					if (dataLength > data.length) {
						alert("더 이상 불러올 데이터가 없습니다.")
					}
					getList(data);
				}
			}
		}
	});
}

function getList(dividend) {
	$('#divi-data').empty();
	
	$('#divi-data').append(
		"<tr class=sub_table>"
		+"<th align='right' width='12.5%'>종목코드</th>"
		+"<th align='right' width='12.5%'>종목명</th>"
		+"<th align='right' width='10%'>종목유형</th>"
		+"<th align='right' width='15%'>배당지급월</th>"
		+"<th align='right' width='12.5%'>배당금</th>"
		+"<th align='right' width='12.5%'>1년전 배당금</th>"
		+"<th align='right' width='12.5%'>2년전 배당금</th>"
		+"<th align='right' width='12.5%'>3년전 배당금</th>"
		+"</tr>"
	);	
	$.each(dividend, function(i, val) {
		$('#divi-data').append(
			"<tr class=sub_table onClick=\"location.href='getDividend.do?corp_code="+this.corp_code+"';\" style='cursor:pointer;'  onMouseOver=\"this.style.background='#fcc'\" onMouseOut=\"this.style.background=''\">"
			+"<td align='right'>"+this.corp_code+"</td>"
			+"<td align='right'>"+this.corp_name+"</td>"
			+"<td align='right'>"+this.corp_type+"</td>"
			+"<td align='right'>"+this.dividend_month+"</td>"
			+"<td align='right'>"+this.dividend_money+"</td>"
			+"<td align='right'>"+this.oneyearago+"</td>"
			+"<td align='right'>"+this.twoyearago+"</td>"
			+"<td align='right'>"+this.threeyearago+"</td>"
			+"</tr>"
		);
	});
}
</script>
</head>
<body>
<!--
-->
<%@ include file="../include/header.jsp" %>
<center>
<div id="container">
	<table class="cnd-srch">
		<tr>
			<td>
				<select name="searchCondition" class="searchCondition form-control">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key }
						</c:forEach>
				</select> 
				<input name="searchKeyword" class="searchKeyword form-control" type="text" /> 
				<input type="button" class="btn btn-primary" id="submit" value="검색" />
			</td>
		</tr>
	</table>
	<table id="divi-data" class="table">
	</table>
	<button id="addBtn" onclick="moreList();">더보기</button>
</div>
</center>
<%@ include file="../include/footer.jsp"%>
</body>
</html>