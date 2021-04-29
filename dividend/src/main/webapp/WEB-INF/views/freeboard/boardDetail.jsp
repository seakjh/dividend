<%@page import="java.util.List"%>
<%@page import="com.baedang.biz.freeboard.RepleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<% 
String member = "";
if(!(session.getAttribute("member_id") == null)){
	member = (String)session.getAttribute("member_id");
}
String frboard_seq = (String)request.getParameter("frboard_seq");
%>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>	
<%@include file="../include/head.jsp" %>
<script type="text/javascript">
$(function() {
	var thismem= "<%=member%>"; //접속한 회원 id
	var wirmem = "${freeboard.member_id}"; //게시글 작성자 id
	var var1 = "";
	if( thismem == wirmem){ // 비교
		var1 += "<a class='btn btn-primary' href='updateBoardForm.do?frboard_seq=${ freeboard.frboard_seq }&member_id=${freeboard.member_id}'>글수정</a>&nbsp;&nbsp;&nbsp;"
			+"<a class='btn btn-primary' href='deleteBoard.do?frboard_seq=${ freeboard.frboard_seq }'>글삭제</a>&nbsp;&nbsp;&nbsp;";
	
	}
	$('#b1').append(var1);
});
</script>
<style type="text/css">
.table {
   border-collapse: collapse;
   width: 1200px !important;
   min-width: 800px;
   border-left: 0px !important;
   border-right: 0px !important;
}

.table th {
  /* border : 1px 0 1px 0 solid #E386B2 !important;*/
   font-size: 14px;
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
}

.table tr td{
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
</head>
<body>
<%@include file="../include/header.jsp" %>
<center>
	<table class="table">
		<tr class="sub_table">
			<th colspan="3">${freeboard.frboard_title }</th>
		</tr>
		<tr class="sub_table">
			<th align="left" style="width: 10%;">작성자 : ${freeboard.member_id}</td>
			<th align="left" style="width: 80%;">작성일 : ${freeboard.frboard_regdate}</td>
			<th align="right" style="width: 10%;">조회수 : ${freeboard.frboard_count}</td>
		</tr>
	</table>
	<table class="table">
		<tr class="sub_table"> 
			<td style="min-height: 200px; height: 300px;">
				<c:if test="${!(empty freeboard.frboard_sname)}">
						<img width="600px"src="./resources/boardUpload/${freeboard.frboard_sname}" />
				</c:if>
				<br><br><br>
				${freeboard.frboard_content}
				<br><br><br>
			</td>
		</tr>
	</table>
		<table class="table">
			<c:forEach items="${reple }" var="reple">
				<tr class="sub_table">
					<td width="10%">
						<input type="hidden" name="re_seq" value="${reple.re_seq }">
						${reple.member_id}
					</td>
					<td width="82%">${reple.re_ref} </td>
					<td width="8%">
						<c:if test="${member_id == reple.member_id}">
								<a class="btn btn-default" href='deletereple.do?re_seq=${reple.re_seq}&frboard_seq=<%=frboard_seq%>'>삭제</a>&nbsp;&nbsp;&nbsp;
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
	<%if(!(member.equals(""))){ %>
	<h6></h6>
	<form action="reple.do" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="member_id" value="<%=member %>">
		<input type="hidden" name="frboard_seq" value="${freeboard.frboard_seq }">
		<table class="table">
			<tr class="sub_table">
				<td width="10%">
					<label><%=member %></label>
				</td>
				<td width="90%">
					<textarea class="form-control" rows="3" name="re_ref" placeholder="댓글"></textarea>
				</td>
			</tr>
			<tr class="sub_table">
				<td colspan="2" align="right">
					<button type="submit">작성</button>
				</td>
			</tr>
		</table>
	</form>
	<%} %>
	<p id="b1">
		<a class='btn btn-primary' href="getBoardList.do?frboard_seq=${freeboard.frboard_seq }">글목록</a>&nbsp;&nbsp;&nbsp;
	</p>
	
	
</center>
<%@include file="../include/footer.jsp" %>
</body>
</html>