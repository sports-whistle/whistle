<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- JSTL 활용방법 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 등록 정보 세부사항</title>
</head>
<body>
	<header>
	<h1>Whistle</h1>
	<nav>
	<h1>FanZone</h1>
	<a href="carsStart">FanZone</a> </nav> </header>

	<main> 
	<section>
	<h1>카스 등록 정보 세부사항</h1>
		<dl>
			<li>No1(로고)</li>
			<li>인천 vs 전북</li>
			<li>같이 보러 가자요</li>
			<li>2015년 4월 15일 3시</li>
			<li>최대 인원 4명</li>
			<li>인천 부평역 5시 맥도날드..</li>
		</dl>
		<p>
		<input type="submit" value="참여" />
		</p>
	</section> 
	</main>

	<aside>
	<h1>다른 카스 페이지 이동</h1>
	<ul>
		<li><a href="carsMatchPlanChk">경기 일정 확인</a></li>
		<li><a href="carsRegChk">카스등록 실시간 현황</a></li>
		<li><a href="carsParticipate">카스 참여</a></li>
	</ul>
	</aside>

</body>
</html>