<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투자 성향 테스트</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<%@ include file="../include/head.jsp"%>
<script src="./resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#submit')
				.click(
						function() {
							$('#result').empty();
							$('#result2').empty();
							$('#result3').empty();
							$('#result4').empty();
							$('#result5').empty();
							$('#result5_1').empty();
							$('#result6').empty();

							var form_data = $('form').serializeArray();
							var num = 0;
							var score = 0;

							//배열 등 2개 이상의 객체데이터 하나씩 꺼내와 처리. 함수 호출 
							$.each(form_data, function(index, item) {
								//$('#result').append(item.name+"="+item.value+"점"+"<br>");				
								num = num + Number(item.value);
							});

							//합계
							//$('#result2').append("합계 : "+num+"점");

							score = num / 42 * 100;

							//100점 단위로 환산
							$('#result3').append("100점 만점 기준 : " + score + "점");

							$('#result4').append(
									"<h1 class='display-3'>투자 성향 분류</h1><br>");

							var scoreResult = Number(score);

							if(scoreResult<=20){
								$('#result5').append("<h3>안정형</h3><br>예금 또는 적금 수준의 수익률을 기대하며, 투자원금에 손실이 발생하는 것을 원하지 않음.");
								$('#result5_1').append('<img id="안정형" height="150px;" src="resources/img/test_investment_img/hermit-crab.png">');
							}else if(20<scoreResult && scoreResult<=40){				
								$('#result5').append("<h3>안정추구형</h3><br>투자 원금의 손실위험은 최소화하고, 이자소득이나 배당소득 수준의 안정적인 투자를 목표로 함. 다만 수익을 위해 단기적인 손실을 수용할 수 있으며, 예·적금보다 높은 수익을 위해 자산 중 일부를 변동성 높은 상품에 투자할 의향이 있음.")
								$('#result5_1').append('<img id="안정추구형" height="150px;" src="resources/img/test_investment_img/seahorse.png">');
							}else if(40<scoreResult && scoreResult<=60){
								$('#result5').append("<h3>위험중립형</h3><br>투자에는 그에 상응하는 투자 위험이 있음을 충분히 인식하고 있으며, 예·적금보다 높은 수익을 기대할 수 있다면 일정수준의 손실 위험을 감수할 수 있음.")
								$('#result5_1').append('<img id="위험중립형" height="150px;" src="resources/img/test_investment_img/octopus.png">');
							}else if(60<scoreResult && scoreResult<=80){
								$('#result5').append("<h3>적극투자형</h3><br>투자 원금의 보전보다는 위험을 감내하더라도 높은 수준의 투자 수익 실현을 추구함. 투자 자금의 상당 부분을 주식, 주식형 펀드 또는 파생상품 등의 위험자산에 투자할 의향이 있음.")
								$('#result5_1').append('<img id="위험중립형" height="150px;" src="resources/img/test_investment_img/whale.png">');
							}else{
								$('#result5').append("<h3>공격투자형</h3><br>시장 평균수익률을 훨씬 넘어서는 높은 수준의 투자 수익을 추구하며, 이를 위해 자산가치의 변동에 따른 손실 위험을 적극 수용. 투자자금 대부분을 주식, 주식형 펀드 또는 파생상품 등의 위험자산에 투자할 의향이 있음.")
								$('#result5_1').append('<img id="위험중립형" height="150px;" src="resources/img/test_investment_img/shark.png">');
							}
							
							$('#result6').append(		
							"<br><p style = 'font-size:13px;  color: gray;'>* 위 기준은 금융투자 상품별 투자 위험도 분류의 기본적인 방향을 제시한 것으로 금융투자회사는 동 기준을 참조하여 금융투자 상품별 실질 내용과 위험도를 고려하여 합리적으로 분류"
							+"<br>* 집합투자증권의 경우 해당 집합투자증권의 투자설명서에 기재된 투자 위험도에 따라 5단계로 분류</p>")
						});
	});
</script>

</head>


<body>
	<%@ include file="../include/header.jsp"%>
	<div class="jumbotron">
		<h1 class="display-3">투자 성향 테스트</h1>
		<p class="lead">
			아래 체크리스트는 금융투자협회에서 만든 ‘일반투자자 투자정보 확인서’로 투자 성향을 알아볼 수 있습니다. <br>
			각 항목에 자신의 성향을 고려해 체크하면 본인의 투자성향을 확인해보세요.
		</p>
		<hr class="my-4">
		<p>
			<br>
		<form action="">
			<fieldset class="form-group1">
				<legend>01 고객님의 연령대는 어떻게 되십니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="1번 문항" id="optionsRadios1"
						value="4" checked=""> 19세 이하
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="1번 문항" id="optionsRadios2"
						value="4"> 20~40세
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="1번 문항" id="optionsRadios2"
						value="3"> 41~50세
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="1번 문항" id="optionsRadios2"
						value="2"> 51~60세
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="1번 문항" id="optionsRadios2"
						value="1"> 61세 이상
					</label>
				</div>
			</fieldset>
			<br> <br>
			<fieldset class="form-group2">
				<legend>02 고객님께서 투자하고자 하는 자금의 투자 가능 기간은 얼마나 되십니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="2번 문항" id="optionsRadios1"
						value="1" checked=""> 6개월 미만
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="2번 문항" id="optionsRadios2"
						value="2"> 6개월 이상~1년 미만
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="2번 문항" id="optionsRadios2"
						value="3"> 1년 이상~2년 미만
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="2번 문항" id="optionsRadios2"
						value="4"> 2년 이상~3년 미만
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="2번 문항" id="optionsRadios2"
						value="5"> 3년 이상
					</label>
				</div>
			</fieldset>
			<br> <br>
			<fieldset class="form-group3">
				<legend>03 다음 중 고객님의 투자 경험과 가장 가까운 금융 상품은 어느 것입니까?(복수 응답
					가능)</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" name="3번 문항" id="optionsRadios1"
						value="1" checked=""> 초저위험 상품(은행 예·적금, 국채, 지방채, 보증채, MMF,
						CMA 등)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" name="3번 문항" id="optionsRadios2"
						value="2"> 저위험 상품(금융채, 신용도가 높은 회사채, 채권형 펀드, 원금보장형 ELS 등)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" name="3번 문항" id="optionsRadios2"
						value="3"> 중위험 상품(신용도 중간 등급의 회사채, 원금의 일부만 보장되는 ELS, 혼합형 펀드
						등)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" name="3번 문항" id="optionsRadios2"
						value="4"> 고위험 상품(신용도가 낮은 회사채, 주식, 원금이 보장되지 않는 ELS, 시장 수익률
						수준의 수익을 추구하는 주식형 펀드 등)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" name="3번 문항" id="optionsRadios2"
						value="5"> 초고위험 상품(ELW, 선물옵션, 시장 수익률 이상의 수익을 추구하는 주식형 펀드,
						파생상품 펀드, 주식 신용거래 등)
					</label>
				</div>
			</fieldset>
			<br> <br>
			<fieldset class="form-group4">
				<legend>04 고객님께서는 금융 상품 투자에 대한 본인의 지식수준이 어느 정도라고 생각하십니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="4번 문항" id="optionsRadios1"
						value="1" checked=""> 매우 낮은 수준(투자 의사결정을 스스로 내려 본 경험이 없음)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="4번 문항" id="optionsRadios2"
						value="2"> 낮은 수준(주식과 채권의 차이를 구별할 수 있는 정도)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="4번 문항" id="optionsRadios2"
						value="3"> 높은 수준(투자할 수 있는 대부분의 금융 상품의 차이를 구별할 수 있는 정도)
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="4번 문항" id="optionsRadios2"
						value="4"> 매우 높은 수준(금융 상품을 비롯하여 모든 투자 대상 상품의 차이를 이해할 수 있는
						정도)
					</label>
				</div>

			</fieldset>
			<br> <br>
			<fieldset class="form-group2">
				<legend>05 고객님께서 투자하고자 하는 자금은 고객님의 전체 금융자산(부동산 등을 제외) 중 어느
					정도의 비중을 차지합니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="5번 문항" id="optionsRadios1"
						value="5" checked=""> 10% 이하
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="5번 문항" id="optionsRadios2"
						value="4"> 10% 초과~20% 이하
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="5번 문항" id="optionsRadios2"
						value="3"> 20% 초과~30% 이하
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="5번 문항" id="optionsRadios2"
						value="2"> 30% 초과~40% 이하
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="5번 문항" id="optionsRadios2"
						value="1"> 40% 초과
					</label>
				</div>
			</fieldset>
			<br> <br>
			<fieldset class="form-group6">
				<legend>06 다음 중 고객님의 수입원을 가장 잘 나타내는 것은 어느 것입니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="6번 문항" id="optionsRadios1"
						value="3" checked=""> 현재 일정한 수입이 발생하고 있으며, 향후 현재 수준을 유지하거나
						증가할 것으로 예상
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="6번 문항" id="optionsRadios2"
						value="2"> 현재 일정한 수입이 발생하고 있으나, 향후 감소하거나 불안정할 것으로 예상
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="6번 문항" id="optionsRadios2"
						value="1"> 현재 일정한 수입이 없으며, 연금이 주 수입원임
					</label>
				</div>
			</fieldset>
			<br> <br>
			<fieldset class="form-group7">
				<legend>07 고객님의 투자 원금에 손실이 발생할 경우 다음 중 고객님이 감내할 수 있는 손실 수준은
					어느 수준입니까?</legend>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="7번 문항" id="optionsRadios1"
						value="-2" checked=""> 무슨 일이 있어도 투자 원금은 보전되어야 한다.
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="7번 문항" id="optionsRadios2"
						value="2"> 투자 원금에서 최소한의 손실만을 감수할 수 있다.
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="7번 문항" id="optionsRadios2"
						value="4"> 투자 원금 중 일부의 손실을 감수할 수 있다.
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="7번 문항" id="optionsRadios2"
						value="6"> 기대수익이 높다면 위험이 높아도 상관하지 않겠다.
					</label>
				</div>
			</fieldset>
			<br> <br>
			<p class="lead">
				<input class="btn btn-primary btn-lg" type="button" id="submit"
					value="투자성향 확인" />
				<!-- onClick="this.style.visibility='hidden'" -->
			</p>
		</form>
	</div>

	<hr>
	<div class="jumbotron">
		<div id="result"></div>
		<div id="result2"></div>
		<div id="result3"></div>
		<div id="result4"></div>
	 	<center> <span id="result5_1"></span> </center>
		<div id="result5"></div>
		<div id="result6"></div>
	</div>

</body>
</html>