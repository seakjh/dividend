<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>상세보기</title>
<%@ include file="../include/head.jsp"%>
</head>
<body>
    <table class="board_view">
        <caption>상세보기</caption>
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup>
         
        <tbody>
            <tr>
                <th>제목</th>
                <td>${freeboard.frboard_title}</td>
                <th>조회수</th>
                <td>${freeboard.frboard_count }</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${freeboard.member_id }</td>
                <th>작성시간</th>
                <td>${freeboard.frboard_regdate }</td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">
                    ${freeboard.frboard_content }
                </td>
            </tr>
        </tbody>
    </table>
    <a href="#this" id="list" class="btn">목록으로</a>
    <a href="#this" id="modify" class="btn">수정하기</a>
     
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click",function(e){
                e.preventDefault();
                fn_openBoardList();
            })
            $("#modify").on("click",function(e){
                e.preventDefault();
                fn_openBoardModify();
            })
        })
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do'/>");
            comSubmit.submit();
        }
        function fn_openBoardModify(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardModify.do'/>");
            comSubmit.addParam("IDX",idx);
            comSubmit.submit();
        }
    </script> 
</body>
</html>