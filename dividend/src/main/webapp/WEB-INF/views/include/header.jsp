<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
	<h1>배당의 민족</h1>
	<h3>주식배당 정보 모음</h3>
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
	<a href="login.do">로그인</a>
	<a href="join.do">회원가입</a>
	<a href="mypage.do">마이페이지</a>
	<a href="logout.do">Log-out</a>
	<a href="getBoardList.do">글 목록 바로가기</a>
	<a href="calculate.do">복리계산기</a>
</header>