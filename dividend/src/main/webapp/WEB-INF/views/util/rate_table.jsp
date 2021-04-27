<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<title>주식 복리 계산기</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">

<style>
table.rate_table {
	border-collapse: collapse;
	width: 50%;
}

td, tr {
	border: 0.5px solid gray;
	text-align: center;
}

li {
	list-style: none;
}
</style>
</head>
<body >

<%@ include file="../include/header.jsp" %>
<script type="text/javascript" charset="utf-8">
            function month(month)   {
                $("#months").val(month)
            }

            function rate_updown(rate_val)   {
                rate.value = Number(rate.value.replace(/,/gi,""));
                new_val=parseFloat(rate.value)+rate_val;
                // console.log(rate.value)
                // console.log(new_val)
                new_val=Math.round(new_val*100)/100;

                if(rate.value<=0 || rate.value==NaN || rate.value=="NaN")    {
                    new_val=0.1
                } else if(new_val<=0 || new_val==NaN || new_val=="NaN")    {
                    new_val=0.1
                }

                $("#rate").val(new_val)
            }

            function input_updown(rate_val)   {
                loan_value=String(loan.value);
                loan_value =Number(loan_value.replace(/,/gi,""));
                new_val=loan_value+rate_val;

                if(new_val>0)   {
                } else {
                    new_val=0;
                }
                new_val_comma=new_val.toLocaleString();
                $("#loan").val(new_val_comma);
            }


			function cal_only_rate(input_loan,cal_rate)	{
                return input_loan*cal_rate;
			}


            function but()  {

                loan.value = Number(loan.value.replace(/,/gi,""));
                rate.value = Number(rate.value.replace(/,/gi,""));
                months.value = Number(months.value.replace(/,/gi,""));

                if(loan.value<=0 || loan.value==NaN || loan.value=="NaN")   {
                    alert("투자금은 0이상 숫자로 입력해주세요.");
                    loan.value=""
                    $('#result').html(" ");
                    $('#final_result').html(" ");
                } else if(rate.value<=0 || rate.value>=100 || rate.value==NaN || rate.value=="NaN") {
                    alert("수익률은 0초과 100미만 숫자로 입력해주세요.");
                    rate.value=""
                    $('#result').html(" ");
                    $('#final_result').html(" ");
                } else if(months.value<=0 || months.value>50 || months.value==NaN  || months.value=="NaN") {
                    alert("투자기간은은 0초과 50이하 숫자로 입력해주세요.");
                    months.value=""
                    $('#result').html(" ");
                    $('#final_result').html(" ");
                } else if(loan.value =="" && rate.value == "" && months.value== "")
                {
                    alert("투자금, 수익율, 투자기간을 모두 입력해 주세요.");
                    $('#result').html(" ");
                    $('#final_result').html(" ");
                }
                else 
                {
                    input_loan=Number(loan.value.replace(",",""));
                    initial_loan=Number(loan.value.replace(",",""));
                    invest_loan=input_loan
                    $("#loan").val(addComma(loan.value))
                	//이자율  리스트 생성
                    compare_html="<p><b>※ 투자기간별 금액 (단위:원)</b></p>"
                	compare_html=compare_html+'<table class="rate_table"><tr><td>투자기간(년)</td><td>투입금액(원)</td><td>평가금액(원)</td><td>수익률</td>';
                	cal_rate=rate.value/100;

                	for (var i=1;i<=months.value;i=i+1)	{
                			output=cal_only_rate(input_loan,cal_rate);
                            return_value=Number(input_loan)+Number(output)
                			compare_html=compare_html+"<tr><td>"+i+"</td><td>"+addComma(input_loan)+"</td><td>"+ addComma(Math.round(return_value)) + "</td><td>" + Math.round(output/input_loan*100*10)/10 + "%</td>";
                            input_loan=Math.round(return_value)+initial_loan
                            invest_loan=Number(invest_loan)+initial_loan
                	} 
                    invest_loan=invest_loan-initial_loan
                    final_html="<p><b>※주식 복리 투자 결과 (단위:원)</b>"
                    final_html=final_html+"<br />- 투자금액: "+ addComma(invest_loan)
                    final_html=final_html+"<br />- 평가금액: "+ addComma(Math.round(return_value))
                    final_html=final_html+"<br />- 최종수익률: "+ Math.round((return_value/invest_loan-1)*100*10)/10+"%</p>"

                    $('#result').html(compare_html);
                    $('#final_result').html(final_html);
                }
             }
             function reset()  {
                loan.value = ""
                rate.value = ""
                months.value = ""
             }
             function addComma(num) {
                var regexp = /\B(?=(\d{3})+(?!\d))/g;
                return num.toString().replace(regexp, ',');
            }
            function loan_change() {
                temp =Number(loan.value.replace(/,/gi,""));
                loan.value = temp.toLocaleString()
            }
        </script>
<br>
<br>
<center>
<form accept-charset="utf-8">
            <fieldset style="display: block;margin-left: 2px;margin-right: 2px;padding-top: 0.35em;padding-bottom: 0.625em;padding-left: 0.75em;padding-right: 0.75em;border: 2px groove; width:60%;">
                    <legend class="cal_legend">주식 복리 계산기</legend>
                    <ul>
                    
                        <li>매년 같은 금액을 적립식으로 넣을 때 
                        </li>
                        <br>
                        <li>
                            <label class="cal_label" for="loan">투자금&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input type="text" style="text-align:right;" id="loan" class="cal_inp_txt" onchange="loan_change()">&nbsp;&nbsp;<span style="font-size: 20px;">원&nbsp;&nbsp;</span>
                            <input type="button" value="-백만원" class="btn_cal" onclick="input_updown(-1000000)">
                            <input type="button" value="+백만원" class="btn_cal" onclick="input_updown(1000000)">
                        </li>
                        <li>
                            <label class="cal_label" for="rate">수익률&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input type="number" style="font-size:16px;text-align:right;border: 1px solid gray;" id="rate">&nbsp;&nbsp;<span style="font-size: 20px;">%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <input type="button" value="-0.1%" class="btn_cal" onclick="rate_updown(-0.1)">
                            <input type="button" value="+0.1%" class="btn_cal" onclick="rate_updown(0.1)">
                        </li>
                        <li>
                            <label class="cal_label" for="months">투자기간&nbsp;</label>
                            <input type="number" style="text-align:right;" class="cal_inp_txt" id="months">&nbsp;&nbsp;<span style="font-size: 20px;">년&nbsp;&nbsp;</span>
                            <input type="button" value="5년" class="btn_cal" onclick="month(5)">
                            <input type="button" value="10년" class="btn_cal" onclick="month(10)">
                            <input type="button" value="15년" class="btn_cal" onclick="month(15)">
                        </li>
                       </ul> 	                   
		               
		                    <input type="button" value="계산하기" class="btn_cal" id="button_btm" onclick="but()">
		                    <input type="button" value="재설정" class="btn_cal" id="button_btm" onclick="reset()">
               		  </fieldset>    	
               		 
                
        </form>
        <p id="result"></p>
        <p id="final_result"></p>
</center>

<%@ include file="../include/footer.jsp" %>
</body>
</html>