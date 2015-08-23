<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZoneMain</title>
</head>
<body>
	<header>
		<h1>Whistle</h1>
		
	</header>
	<main>
	<section>
	<h1>지역감정싸움</h1>
	<img src="${ctxName}/resource/images/zone/ZoneMainbg.png">
	<div>
		<dl>
			<dt>서울</dt>
			<%-- <dd><a href="${ctxName}/zone/selectedZone/teamsInZone?seoul=seoul"><img src="${ctxName}/resource/images/zone/SeoulMascot.png"/></a></dd> --%>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=seoul"><img src="${ctxName}/resource/images/zone/SeoulMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>인천</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=incheon"><img src="${ctxName}/resource/images/zone/InchonMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>수원</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=suwon"><img src="${ctxName}/resource/images/zone/SuwonMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>경기도</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=gyunggido"><img src="${ctxName}/resource/images/zone/GyeonggidoMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>대전</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=daejeon"><img src="${ctxName}/resource/images/zone/DaejeonMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>전주</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=jeonju"><img src="${ctxName}/resource/images/zone/JeanjuMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>광주</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=gwangju"><img src="${ctxName}/resource/images/zone/GwangjuMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>제주</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=jeju"><img src="${ctxName}/resource/images/zone/JejuMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>강원도</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=gangwondo"><img src="${ctxName}/resource/images/zone/kangwondoMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>경상북도</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=gyungbuk"><img src="${ctxName}/resource/images/zone/GyeongsangbukdoMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>대구</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=daegu"><img src="${ctxName}/resource/images/zone/DaeguMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>울산</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=ulsan"><img src="${ctxName}/resource/images/zone/UlsanMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>부산</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=busan"><img src="${ctxName}/resource/images/zone/BusanMascot.png"/></a></dd>
		</dl>
		<dl>
			<dt>경상남도</dt>
			<dd><a href="${ctxName}/zone/selectedZone/teamsInZone?region=gyungnam"><img src="${ctxName}/resource/images/zone/GyeongsangnamdoMascot.png"/></a></dd>
		</dl>
		
	<p>Zone</p>
	<img src="../images/지문.png">
		
	</div>
	</section>
	</main>
</body>
</html>