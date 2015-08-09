<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<style>
#header h1 {
	width: 250px;
	height: 200px;
}

body {
	/* background: url("../resource/images/cars/carsBackground.png") no-repeat center center ; */
	background: url("${ctxName}/resource/images/cars/carsBackground.png") no-repeat center center ;
	/* background: url("/resource/images/cars/carsBackground.png") no-repeat center center ; */
	background-position: top left;
	background-size: 100% 100%;
	background-attachment: fixed;
}

#hidden {
	display: none;
}

aside li {
	list-style: none;
}

#carsStart {
	position: absolute;
	top: 50px;
	left: 1350px;
	
}
#carsStart img {
	width: 220px;
	height: 250px;  
}


#carMatchPlanChk {
	position: absolute;
	top: 380px;
	left: 1370px;
}
#carMatchPlanChk img {
	width: 170px; 
	height: 170px; 
}

#carsReg {
	position: absolute;
	top: 630px;
	left: 1370px;
}
#carsReg img {
	width: 160px; 
	height: 160px; 
}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>카스시작</title>
</head>
<body>

	<header id="header">
		<h1>
		<!-- 	<a href=""><img src="../resource/images/cars/whistleLogo.png" alt="뉴렉처" /></a> -->
			<a href="${ctxName}/cars/carsReg"><img src="${ctxName}/resource/images/cars/whistleLogo.png" alt="뉴렉처" /></a>
		</h1>
	</header>

	<!-- 	<div id="body">
		<h1>메인화면</h1>

	</div> -->

	<aside>
		<h1 id="hidden">카스기능</h1>
		<ul>
		
			<li id="carsStart">
				<a href="carsStart">
					<img src="${ctxName}/resource/images/cars/fanZone.png" alt="fanZone" />
				</a>
			</li>
			
			<li id="carMatchPlanChk">
				<a href="carsMatchPlanChk">
					<img src="${ctxName}/resource/images/cars/carMatchPlanChk.png" alt=carsMatchPlanChk />
				</a>
			</li>
			
			<li id="carsReg">
				<a href="carsReg">
					<img src="${ctxName}/resource/images/cars/carReg.png" alt="carsReg" />
				</a>
			</li>
			
		</ul>
	</aside>

</body>
</html>