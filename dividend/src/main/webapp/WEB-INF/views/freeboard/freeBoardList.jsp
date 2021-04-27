<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="../include/head.jsp"%>
</head>
<body>
<h2>게시판 목록</h2>
<table style="border:1px solid #ccc" class="board_list">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">조회수</th>
            <th scope="col">작성일</th>
        </tr>
    </thead>
    <tbody>
          
    </tbody>
</table>
<a href="#this" id="write" class="btn">글쓰기</a>
 
    $(document).ready(function(){
        $("#write").on("click",function(e){
            e.preventDefault();
            fn_openBoardWrite();
        })
        $("a[name='title']").on("click",function(e){
            e.preventDefault();
            fn_openBoardDetail($(this));
        })
    })
     
    function fn_openBoardWrite(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/sample/openBoardWrite.do'/>");
        comSubmit.submit();
    }
    function fn_openBoardDetail(val){
        var comSubmit = new ComSubmit();
        comSubmit.addParam("IDX",val.parent().find("#IDX").val());
        comSubmit.setUrl("<c:url value='/sample/openBoardDetail.do'/>");
        comSubmit.submit();
    }
</script>
 
</body>
</html>