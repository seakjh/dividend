<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String member = (String)session.getAttribute("member_id"); %>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<%@ include file="../include/head.jsp"%>
<style type="text/css">
	textarea {
	resize: none;
	}
</style>
</head>
<body>

	<center>
		<form action="insertBoard.do" method="POST"  enctype="multipart/form-data">
			<input type="hidden" name="member_id" value="<%=member %>" >
			<table>
				<tr>
					<td>
						<input type="text" name="frboard_title" size="50" placeholder="제목을 입력해주세요." />
					</td>
				</tr>
				<tr>
					<td>
						<input type="file" name="uploadFile">
					</td>
				</tr>
				<tr>
					<td>
						<textarea id="frboard_content" name="frboard_content"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성">
		</form>
	</center>

</body>
</html>