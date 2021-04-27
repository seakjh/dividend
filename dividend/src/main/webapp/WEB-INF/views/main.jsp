<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배당탑닷컴</title>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=2.0, minimum-scale=1.0, user-scalable=yes" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/main.css" />
<script type="text/javascript" src="./resources/js/jquery.waypoints.min.js"></script>
<style type="text/css">
a {
	text-decoration: none;
}
a:hover {
}
footer {
	clear: both;
}
</style>
<%@ include file="./include/head.jsp"%>
</head>
<body>
<!--
<center>
</center>
-->
<%@ include file="./include/header.jsp" %>
<div class="p-top__hero">
    <div class="p-top__hero-inner"><img class="p-top__hero-mark" src="./resources/images/logo.jpg" alt="">
        <h2 class="p-top__hero-lead">배당에 대한 모든 것!<br />배당탑닷컴에서 만나보세요! </h2>
    </div>
    <div class="p-top__hero-scroll">SCROLL DOWN</div>
</div>
<section class="p-top__points" id="service">
    <ol class="p-top__points-list">
        <li class="p-top__points-item">
            <figure class="p-top__points-figure"><img class="p-top__points-image" src="./resources/images/image_point_01.png" alt="배당탑 소개"></figure>
            <div class="p-top__points-body">
                <p class="p-top__points-number"><span class="p-top__points-number--sm">POINT</span>01</p>
                <h4 class="p-top__points-title"><span><span><span>배당탑 소개</span></span></span></h4>
                <p class="p-top__points-text">배당탑닷컴은 국내외 주식의 배당 수익율 TOP 100을 소개합니다.<br />BaeDangTop.com introduces the top 100 dividend yields of domestic and foreign stocks.</p>
            </div>
        </li>
        <li class="p-top__points-item">
            <figure class="p-top__points-figure"><img class="p-top__points-image" src="./resources/images/image_point_02.png" alt="진화하는 분석"></figure>
            <div class="p-top__points-body">
                <p class="p-top__points-number"><span class="p-top__points-number--sm">POINT</span>02</p>
                <h4 class="p-top__points-title"><span><span><span>진화하는 분석</span></span></span></h4>
                <p class="p-top__points-text">연간, 분기별로 구체적인 주식 배당 수익율을 일목요연하게 표현합니다.<br />Our Website clearly shows the specific dividend yield per year and quarter.</p>
            </div>
        </li>
        <li class="p-top__points-item">
            <figure class="p-top__points-figure"><img class="p-top__points-image" src="./resources/images/image_point_03.png" alt="손쉬운 사용"></figure>
            <div class="p-top__points-body">
                <p class="p-top__points-number"><span class="p-top__points-number--sm">POINT</span>03</p>
                <h4 class="p-top__points-title"><span><span><span>손쉬운 사용</span></span></span></h4>
                <p class="p-top__points-text">모바일 지원모드로 사용자 친화 UI 구성, 웹에 최적화 되어 있습니다.<br />User-friendly UI configuration in mobile support mode, optimized for the web.</p>
            </div>
        </li>
    </ol>
</section>

<section class="p-top__section p-top__contact" id="contact">
    <div class="p-top__contact-bg"></div>
    <div class="p-top__section-column">
        <h3 class="p-top__headline p-top__headline--sm"><span><span><span>CONTACT INFO</span></span></span></h3>
        <div class="p-top__form-wrap" id="topForm">
            <ul class="p-top__contact-text">
                <li>서울시 종로구 삼일대로17길 51 스타골드빌딩 3층, 4층, 5층</li>
                <li>배당의민족 방문상담센터</li>
                <li>51, Samil-daero 17-gil, Jongno-gu, Seoul, Republic of Korea</li>
                <li>김천국 상담실장 |  submit.sukje@gmail.com</li>
            </ul>
        </div>
    </div>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25299.21544651594!2d126.96837615179702!3d37.56915216334431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2e8cf2ef38d%3A0x5a0649f4a68f5bd5!2z7Iqk7YOA6rOo65Oc!5e0!3m2!1sko!2skr!4v1618397966830!5m2!1sko!2skr" allowfullscreen="" loading="lazy" class="p-top__contact-map"></iframe>
</section>

<script>
    $(function() {
        $('.p-top__points-item, .p-top__headline, .p-top__form-wrap').waypoint(function(direction) {
            $(this.element)[(direction === 'down') ? 'addClass' : 'removeClass']('active');
        }, {
            offset : '60%'
        });
    });
</script>
<%@ include file="./include/footer.jsp"%>
</body>
</html>