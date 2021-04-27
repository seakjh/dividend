<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>주식 복리 계산기</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
		
    table.rate_table {
    	border-collapse:collapse;
    	width: 50%;
    }
    
    td, tr {
    	border:0.5px solid gray; 
    	text-align: center;
    }
    
    li{
    	list-style: none;
    }
    
    
    
    #button_btm{
    	position: relative;
    	left:200px;
    	
    }
    
    fieldset{
    	display: block;
    	margin-left: 2px;
    	margin-right: 2px;
    	padding-top: 0.35em;
    	padding-bottom: 0.625em;
    	padding-left: 0.75em;
    	padding-right: 0.75em;
    	border: 2px groove; 
    	width:60%;
    }
    
    a{
    	text-decoration: none;
    }
</style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<br>
<br>
<center>
<form accept-charset="utf-8">
            <fieldset>
                    <legend class="cal_legend">주식 복리 계산기</legend>
                    <ul>
                    
                        <li>
                        	               	
                        	<a href="rate_table.do">매년 같은 금액을 적립식으로 넣을 때</a> 
                        	
                        </li>
                        <p></p>
                        <li>
                        	<a href="rate_table2.do">초기 투자금을 복리로 불릴 때 </a> 
                        </li>
                        	
                    </ul>
                    
                </fieldset>
        </form>
        <p id="result"></p>
        <p id="final_result"></p>
</center>   

<%@ include file="../include/footer.jsp" %>     
</body>
</html>